import BaseStore from "./BaseStore";
import {
  action,
  runInAction,
  computed,
  observable,
  reaction,
} from "mobx";
import {
  novationPalette,
  LaunchpadTypes,
  CFY_MODE_WRITE_HEADER,
} from "../constants";
import { RootStore } from ".";
import { InputEventSysex } from "webmidi";

export class ModeStore extends BaseStore {
  @observable modeBinary?: Uint8Array = undefined;

  constructor(root: RootStore) {
    super(root);

    reaction(
      () => root.launchpads.launchpad,
      (lp) => {
        if (lp?.type === LaunchpadTypes.CFY)
          lp.input.addListener("sysex", "all", this.handleModeUpload);
      }
    );
  }

  @action
  async loadMode(bin: Uint8Array) {

    let webLength = 0;
    let dataLength = 0;
    let status = "START";
    for (let i = 0; i < bin.length - 1; i++) {
      switch (status) {
        case "START": {
          if (bin[i] === 0 && bin[i + 1] === 0) {
            status = "WEB";
            i++;
          }
          break;
        }
        case "WEB": {
          if (bin[i] === 0x7f) {
            if (webLength % 3 === 0) {
              status = "DATA";
              i += 3;
            } else throw new Error("WEB");
          } else {
            webLength++;
          }
          break;
        }
        case "DATA": {
          if (bin[i + 1] === 0xf7) {
            dataLength++;
            status = "END";
            if (dataLength % 8 === 0) {
              status = "VALID";
            } else throw new Error("DATA");
          } else {
            dataLength++;
          }
          break;
        }
        case "END":
        case "VALID":
          break;
      }
    }

    if (status !== "VALID") throw new Error("VALID");

    let i = bin.findIndex((j) => j === 0x7f)!;

    runInAction(() => {
      this.modeBinary = bin.slice(i + 1, -1);
    });
  }

  @action
  setBinary(bin: Uint8Array) {
    this.modeBinary = bin;
  }

  downloadedMode: { data: Uint8Array; size: number } | undefined;

  @action.bound
  handleModeUpload({ data }: InputEventSysex) {
    console.log(data);
    if (!data.slice(0, 7).every((e, i) => e === CFY_MODE_WRITE_HEADER[i]))
      return;
    if (this.downloadedMode === undefined) {
      let size = data[7] * 128 + data[8];
      let chunk = data.slice(9, -1);
      this.downloadedMode = {
        size,
        data: chunk,
      };
    } else {
      let chunk = data.slice(8, -1);
      if (
        chunk.length + this.downloadedMode.data.length <=
        this.downloadedMode.size
      ) {
        this.downloadedMode.data = new Uint8Array([
          ...this.downloadedMode.data,
          ...chunk,
        ]);
      }
    }

    if (this.downloadedMode.size === this.downloadedMode.data.length) {
      this.modeBinary = this.downloadedMode.data;
      this.downloadedMode = undefined;
    }
  }

  @computed
  get modeName(): string | undefined {
    let bin = this.modeBinary;

    if (!bin) return undefined;
    let name = "";
    let i = 0;
    let readingName = true;
    while (readingName) {
      if (bin[i] === 0 && bin[i + 1] === 0) readingName = false;
      else name += String.fromCharCode(bin[i++]);
    }
    return name;
  }

  @computed
  get modeColors(): number[][] {
    let colors = Array.from({ length: 64 }, () => [0, 0, 0]);
    if (!this.modeBinary) return colors;
    let bin = this.modeBinary;

    let k = bin.findIndex((n) => n === 127) + 4;
    bin = bin.slice(k);

    let mappings: number[][] = [];
    for (let i = 0; i < bin.length; i++) {
      if (i % 8 === 0) mappings.push([]);
      mappings[Math.floor(i / 8)].push(bin[i]);
    }
    for (let l of mappings) {
      if (l[2]) {
        // Regular pad
        let x = (l[0] % 10) - 1;
        let y = Math.floor(l[0] / 10) - 1;
        colors[x + y * 8] = novationPalette[l[7]];
      } else if (l[0] < 8) {
        let pos = l[0];
        let color = novationPalette[l[7]];

        if (l[4] < 2) {
          // Is vertical fader
          for (let i = 0; i < 8; i++) {
            colors[pos + 8 * i] = color;
          }
        } else {
          pos = 7 - pos;
          for (let i = 0; i < 8; i++) {
            colors[i + pos * 8] = color;
          }
        }
      }
    }
    return colors;
  }
}
