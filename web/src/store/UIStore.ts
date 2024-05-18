import { observable, action } from "mobx";
import { konamiSequence, PatchTypes, FlashableFirmware } from "../constants";
import BaseStore from "./BaseStore";
import { RootStore } from ".";

export type PatchOptions = {
  [key in PatchTypes]?: boolean;
};

export default class UIStore extends BaseStore {
  @observable selectedFirmware: FlashableFirmware = "LPX";
  @observable konamiSuccess = false;
  konamiInput: number[] = [];
  @observable options: PatchOptions = {
    "Custom Palette": false,
    "Apollo Studio Fast LED Mod": false,
    "Novation ID Spoof": false,
  };

  constructor(root: RootStore) {
    super(root);

    window.addEventListener("keydown", this.konamiListener);
  }

  @action.bound
  konamiListener(e: KeyboardEvent) {
    if (e.keyCode === konamiSequence[this.konamiInput.length]) {
      this.konamiInput.push(e.keyCode);
      if (this.konamiInput.length === konamiSequence.length) {
        this.konamiSuccess = true;
        window.removeEventListener("keydown", this.konamiListener);
      }
    } else this.konamiInput = [];
  }

  @action
  setSelectedFirmware(fw: FlashableFirmware): void {
    this.selectedFirmware = fw;
  }
}
