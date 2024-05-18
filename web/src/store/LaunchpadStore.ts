import { observable, action, reaction } from "mobx";
import WebMidi from "webmidi";

import BaseStore from "./BaseStore";
import Launchpad from "../classes/Launchpad";
import { RootStore } from ".";
import { FlashableFirmware } from "../constants";
import { portsMatch, portNeutralize, deviceIsBLForFW } from "../utils";

export default class LaunchpadStore extends BaseStore {
  @observable launchpad?: Launchpad = undefined;

  @observable available?: boolean = undefined;

  private lastScan?: Date = undefined;

  constructor(rootStore: RootStore) {
    super(rootStore);
    WebMidi.enable(this.midiInit, true);

    reaction(
      () => this.launchpad,
      (lp) => {
        if (lp?.type === "CFW")
          setTimeout(
            () =>
              this.rootStore.notice.show({
                text: "The Launchpad Pro currently connected is running an old version of the Custom Firmware. It is highly recommended that you update it.",
                dismissable: true,
              }),
            500
          );
      }
    );
  }

  @action.bound
  midiInit(e?: Error) {
    if (e) {
      this.available = false;
      return;
    }
    this.available = true;

    let listener = () => this.scan().then((lp) => this.setLaunchpad(lp));

    listener();

    WebMidi.addListener("connected", listener);
    WebMidi.addListener("disconnected", listener);
  }

  @action.bound
  setLaunchpad(lp?: Launchpad) {
    console.log("removing");
    this.launchpad?.input.removeListener();
    this.launchpad = lp;
  }

  @action.bound
  async scan() {
    let currentTimestamp = new Date();

    if (this.lastScan === undefined || this.lastScan < currentTimestamp)
      this.lastScan = currentTimestamp;

    for (let input of WebMidi.inputs) {
      for (let output of WebMidi.outputs) {
        if (portsMatch(input.name, output.name)) {
          if (this.lastScan > currentTimestamp) return;

          const launchpad = new Launchpad(
            portNeutralize(input.name),
            input,
            output
          );

          // When new launchpads are connected, give them some time to boot before sending version query
          await new Promise<void>((res) => setTimeout(() => res(), 50));

          if ((await launchpad.getType()) !== null) {
            this.setLaunchpad(launchpad);
            return launchpad;
          }
        }
      }
    }
    if (this.lastScan > currentTimestamp) return;
  }

  @action
  queueFirmwareFlash = (buffer: Uint8Array, targetLp: FlashableFirmware) => {
    let cancelFlash: (_: any) => void;
    let dispose: Function;

    let flashPromise = () =>
      new Promise(async (resolve) => {
        cancelFlash = resolve;

        dispose = reaction(
          () => this.launchpad,
          () =>
            this.launchpad?.type &&
            deviceIsBLForFW(this.launchpad.type, targetLp) &&
            resolve(async () => {
              await this.launchpad!.flashFirmware(buffer);
              dispose();
            }),
          { fireImmediately: true }
        );
      });

    return { cancelFlash: cancelFlash!, flashPromise };
  };
}
