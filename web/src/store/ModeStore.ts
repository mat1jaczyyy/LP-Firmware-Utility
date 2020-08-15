import BaseStore from "./BaseStore";
import { action, runInAction, computed, observable } from "mobx";

export class ModeStore extends BaseStore {
  @observable modeBinary?: Uint8Array = undefined;

  @action
  async loadMode(file: File) {
    const buffer = await file.arrayBuffer();
    const bin = new Uint8Array(buffer);
    console.log(bin.join(" "))

    runInAction(() => {
      this.modeBinary = bin;
    });
  }

  @computed
  get modeName(): string | undefined {
    let bin = this.modeBinary;
    
    if (!bin) return undefined;
    let name = "";
    let i = 9;
    let readingName = true;
    while (readingName) {
      if (bin[i] === 0 && bin[i + 1] === 0)
        readingName = false;
      else name += String.fromCharCode(bin[i++]);
    }
    return name.concat(".syx");
  }
}
