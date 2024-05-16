import BaseStore from "./BaseStore";
import { action, computed, observable, reaction } from "mobx";
import { novationPalette, CFY_MODE_WRITE_HEADER, Firmware } from "../constants";
import { RootStore } from ".";
import { InputEventSysex } from "webmidi";

export class ModeStore extends BaseStore {
  @observable modeBinary?: Uint8Array = undefined;
  @observable allowLEDFeedback = false;

  constructor(root: RootStore) {
    super(root);

    reaction(
      () => root.launchpads.launchpad,
      (lp) => {
        if (lp?.type === "CFY")
          lp.input.addListener("sysex", "all", this.handleModeUpload);
      }
    );

    reaction(
      () => this.allowLEDFeedback,
      (allow) => {
        if (this.modeBinary !== undefined) {
          let i = 0;
          while (true) {
            i++;
            if (i === this.modeBinary.length) {
              break;
            } else if (this.modeBinary[i] === 0x7f) {
              this.modeBinary[i + 2] = allow ? 1 : 0;
              break;
            }
          }
        }
      }
    );
  }

  @action
  loadMode(bin: Uint8Array) {
    let dataLength = 0;
    let status = "START";
    let ledFeedbackByteIndex = 0;
    for (let i = 9; i < bin.length; i++) {
      switch (status) {
        case "START": {
          if (bin[i] === 0x7f) {
            ledFeedbackByteIndex = i + 2;
            status = "DATA";
            i += 3;
          }
          break;
        }
        case "DATA": {
          if (bin[i] === 0xf7) {
            status = "END";
            if (dataLength % 8 === 0) {
              status = "VALID";
            } else throw new Error("DATA");
          }
          dataLength++;
          break;
        }
        case "END":
        case "VALID":
          break;
      }
    }

    if (status !== "VALID") {
      throw new Error("VALID " + status);
    }

    this.allowLEDFeedback = bin[ledFeedbackByteIndex] === 1;
    this.modeBinary = bin.slice(9, -1);
  }

  @action
  setBinary(bin: Uint8Array) {
    this.modeBinary = bin;
  }

  downloadedMode: { data: Uint8Array; size: number } | undefined;

  @action.bound
  handleModeUpload({ data }: InputEventSysex) {
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
      if (bin[i] === 0 && bin[i + 1] === 0) {
        readingName = false;
      } else name += String.fromCharCode(bin[i++]);
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
        if (!this.allowLEDFeedback) {
          // Regular pad
          let x = (l[0] % 10) - 1;
          let y = Math.floor(l[0] / 10) - 1;
          colors[x + y * 8] = novationPalette[l[7]];
        }
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
