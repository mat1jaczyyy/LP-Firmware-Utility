import { observable, action, autorun } from "mobx";
import {
  konamiSequence,
  FlashableFirmwares,
  lpOptions,
  PatchTypes,
} from "../constants";
import BaseStore from "./BaseStore";
import { RootStore } from ".";

export type PatchOptions = {
  [key in PatchTypes]?: boolean;
};

export default class UIStore extends BaseStore {
  @observable selectedFirmware: FlashableFirmwares = FlashableFirmwares.LPX;
  @observable konamiSuccess = false;
  konamiInput: number[] = [];
  @observable options: PatchOptions = {};

  constructor(root: RootStore) {
    super(root);

    window.addEventListener("keydown", this.konamiListener);

    autorun(() => {
      this.options = lpOptions[this.selectedFirmware].reduce(
        (o, type) => ({
          ...o,
          [type]: false,
        }),
        {}
      );
    });
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
