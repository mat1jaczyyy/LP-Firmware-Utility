import { observable, action } from "mobx";
import { konamiSequence, FlashableFirmwares } from "../constants";
import BaseStore from "./BaseStore";
import { RootStore } from ".";

export default class UIStore extends BaseStore {
  @observable selectedFirmware: FlashableFirmwares = FlashableFirmwares.LPX;
  @observable konamiSuccess = false;
  konamiInput: number[] = [];

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
  setSelectedFirmware(fw: FlashableFirmwares): void {
    this.selectedFirmware = fw;
  }
}
