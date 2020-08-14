import { observable, action, computed, IObservableArray, autorun } from "mobx";
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
    return this.launchpads.some((lp) => lp.type === LaunchpadType.CFW);
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

          if ((await launchpad.getType()) !== LaunchpadType.UNUSED)
            launchpads.push(launchpad);
        }
      }
    }
    if (this.lastScan > currentTimestamp) return;
    this.setLaunchpads(launchpads);
    return launchpads;
  }

  @action
  queueFirmwareFlash = (buffer: Uint8Array, targetLp: string) => {
    let resolveAttempt: (val?: any) => void;

    let flashPromise = new Promise(async (resolve) => {
      const attemptFlash = async () => {
        const target = new Promise((res) => {
          autorun(() => {
            if (this.current !== undefined && this.current.type === targetLp)
              res(this.current);
          });
        });

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
