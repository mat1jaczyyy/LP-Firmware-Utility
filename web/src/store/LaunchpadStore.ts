import { observable, action, computed, IObservableArray, reaction } from "mobx";
import WebMidi from "webmidi";

import BaseStore from "./BaseStore";
import Launchpad from "../classes/Launchpad";
import { RootStore } from ".";
import { LaunchpadTypes, FirmwareTypes } from "../constants";
import { portsMatch, portNeutralize, deviceIsBLForFW } from "../utils";

export default class LaunchpadStore extends BaseStore {
  readonly launchpads: IObservableArray<Launchpad> = observable([]);

  @observable available?: boolean = undefined;

  private lastScan?: Date = undefined;

  constructor(rootStore: RootStore) {
    super(rootStore);
    WebMidi.enable(this.midiInit, true);
  }

  @action.bound
  midiInit(e?: Error) {
    if (e) {
      this.available = false;
      return;
    }
    this.available = true;

    let listener = () => {
      this.scan().then((lps) => {
        if (lps !== undefined) this.setLaunchpads(lps);
      });
    };

    listener();

    WebMidi.addListener("connected", listener);
    WebMidi.addListener("disconnected", listener);
  }

  @action.bound
  setLaunchpads(lps: Launchpad[]) {
    this.launchpads.replace(lps);
  }

  @computed
  get cfwPresent() {
    return this.launchpads.some((lp) => lp.type === LaunchpadTypes.CFW);
  }

  @computed
  get current(): Launchpad | undefined {
    return this.launchpads.length > 0 ? this.launchpads[0] : undefined;
  }

  @action.bound
  async scan() {
    const launchpads: Launchpad[] = [];

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
          await new Promise((res) => setTimeout(() => res(), 50));

          if ((await launchpad.getType()) !== LaunchpadTypes.BLANK)
            launchpads.push(launchpad);
        }
      }
    }
    if (this.lastScan > currentTimestamp) return;
    this.setLaunchpads(launchpads);
    return launchpads;
  }

  @action
  queueFirmwareFlash = (buffer: Uint8Array, targetLp: FirmwareTypes) => {
    let cancelFlash: () => void;
    let dispose: Function;

    let flashPromise = () =>
      new Promise(async (resolve) => {
        cancelFlash = resolve;

        dispose = reaction(
          () => this.current,
          () => {
            if (
              this.current?.type &&
              deviceIsBLForFW(this.current.type, targetLp)
            ) {
              resolve(async () => {
                await this.current!.flashFirmware(buffer);
                dispose();
              });
            }
          },
          { fireImmediately: true }
        );
      });

    return { cancelFlash: cancelFlash!, flashPromise };
  };
}
