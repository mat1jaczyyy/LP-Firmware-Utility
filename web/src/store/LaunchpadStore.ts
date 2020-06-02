import { observable, action, computed, IObservableArray } from "mobx";
import WebMidi from "webmidi";

import BaseStore from "./BaseStore";
import Launchpad from "../classes/Launchpad";
import { RootStore } from ".";
import { LaunchpadType } from "../constants";
import { portsMatch, portNeutralize } from "../utils";

export default class LaunchpadStore extends BaseStore {
  readonly launchpads: IObservableArray<Launchpad> = observable([]);
  @observable available?: boolean = undefined;

  private lastScan?: Date = undefined;

  constructor(rootStore: RootStore) {
    super(rootStore);
    WebMidi.enable((e) => {
      if (e) this.available = false;
      else this.available = true;

      let listener = () =>
        this.scan().then((lps) => {
          if (lps !== undefined) this.launchpads.replace(lps);
        });
      listener();

      WebMidi.addListener("connected", listener);
      WebMidi.addListener("disconnected", listener);
    }, true);
  }

  @computed
  get cfwPresent() {
    return this.launchpads.some((lp) => lp.type === LaunchpadType.CFW);
  }

  @action
  scan = async () => {
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

          if ((await launchpad.getType()) !== LaunchpadType.UNUSED)
            launchpads.push(launchpad);
        }
      }
    }
    if (this.lastScan > currentTimestamp) return;
    return launchpads;
  };

  @action
  queueFirmwareFlash = (buffer: Uint8Array, targetLp: string) => {
    let resolveAttempt: (val?: any) => void;

    let flashPromise = new Promise(async (resolve) => {
      const attemptFlash = async () => {
        const lps = await this.scan();
        if (!lps || !lps.some((lp) => lp.type === targetLp)) return;

        resolveAttempt(async () =>
          lps[lps.findIndex((lp) => lp.type === targetLp)].flashFirmware(buffer)
        );
      };

      attemptFlash();

      WebMidi.addListener("connected", attemptFlash);

      resolveAttempt = (val) => {
        WebMidi.removeListener("connected", attemptFlash);
        resolve(val);
      };
    });

    return { cancelFlash: resolveAttempt!, flashPromise };
  };
}
