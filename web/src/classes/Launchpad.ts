import { Input, Output, InputEventSysex } from "webmidi";
import {
  LaunchpadType,
  CFW_PALETTE_UPLOAD_WRITE,
  CFW_PALETTE_UPLOAD_END,
  CFW_PALETTE_UPLOAD_START,
} from "../constants";

export default class Launchpad {
  name: string;
  input: Input;
  output: Output;
  type?: LaunchpadType;

  constructor(name: string, input: Input, output: Output) {
    this.name = name;
    this.input = input;
    this.output = output;
  }

  async getType() {
    return new Promise(async (resolve) => {
      const listenerTimer = setTimeout(() => {
        this.input.removeListener("sysex", "all");
        this.type = LaunchpadType.UNUSED;
        resolve(LaunchpadType.UNUSED);
      }, 1000);

      this.input.addListener("sysex", "all", (e: InputEventSysex) => {
        clearTimeout(listenerTimer);

        this.input.removeListener("sysex", "all");

        if (e.data.length === 17) {
          const msg = e.data.slice(1, e.data.length - 1);

          if (msg[4] === 0x00 && msg[5] === 0x20 && msg[6] === 0x29) {
            const versionStr = (msg as any)
              .slice(msg.length - 3)
              .reduce((prev: string, current: number) => prev + String.fromCharCode(current), "");

            let type = LaunchpadType.UNUSED;

            if (msg[7] === 0x03 && msg[8] === 17) type = LaunchpadType.BL_LPX;
            else if (msg[7] === 0x13 && msg[8] === 17)
              type = LaunchpadType.BL_LPMINIMK3;
            else if (msg[7] === 0x23 && msg[8] === 17)
              type = LaunchpadType.BL_LPPROMK3;
            else if (msg[7] === 0x69)
              type = LaunchpadType.BL_LPMK2;
            else if (msg[7] === 0x51) {
              if (versionStr === "000") type = LaunchpadType.BL_LPPRO;
              else if (versionStr === "cfw" || versionStr === "cfx")
                type = LaunchpadType.CFW;
            }
            
            this.type = type;
            resolve(type);
          }
        }
      });

      this.output.sendSysex([], [0x7e, 0x7f, 0x06, 0x01]);
    });
  }

  async flashFirmware(fwArray: Uint8Array) {
    const messages: number[][] = [];
    let currentMessage: number[] = [];

    fwArray.forEach((byte) => {
      if (byte === 0xf0) {
      } else if (byte === 0xf7) {
        messages.push(currentMessage);
        currentMessage = [];
      } else currentMessage.push(byte);
    });

    for (let message of messages) {
      await new Promise((resolve) =>
        setTimeout(() => {
          this.output.sendSysex([], message);
          resolve();
        }, 1)
      );
    }
  }

  sendSysex(msg: number[]) {
    this.output.sendSysex([], msg);
  }

  uploadPalette(palette: number[], paletteIndex: number = 0) {
    if (this.type !== LaunchpadType.CFW)
      throw new Error(
        "Uploading palettes requires a Launchpad Pro running the Custom Firmware"
      );

    this.sendSysex(CFW_PALETTE_UPLOAD_START);
    this.sendSysex([
      ...CFW_PALETTE_UPLOAD_WRITE,
      paletteIndex,
      ...palette.slice(0, 256),
    ]);
    this.sendSysex([
      ...CFW_PALETTE_UPLOAD_WRITE,
      paletteIndex,
      ...palette.slice(256, 512),
    ]);
    this.sendSysex(CFW_PALETTE_UPLOAD_END);
  }
}
