import BaseStore from "./BaseStore";
import { action, runInAction, computed, observable } from "mobx";

export class ModeStore extends BaseStore {
  @observable modeBinary?: Uint8Array = undefined;

  @action
  async loadMode(file: File) {
    const buffer = await file.arrayBuffer();
    const bin = new Uint8Array(buffer);

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

  @computed
  get modeName(): string | undefined {
    let bin = this.modeBinary;

    if (!bin) return undefined;
    let name = "";
    let i = 0
    let readingName = true;
    while (readingName) {
      if (bin[i] === 0 && bin[i + 1] === 0) readingName = false;
      else name += String.fromCharCode(bin[i++]);
    }
    return name
  }
}
