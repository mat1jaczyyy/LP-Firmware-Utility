import { observable } from "mobx";
import { LaunchpadType, konamiSequence } from "../constants";
import BaseStore from "./BaseStore";
import { RootStore } from ".";

export default class UIStore extends BaseStore {
  @observable selectedLp = LaunchpadType.BL_LPX;
  @observable konamiSuccess = false;
  konamiInput: number[] = []
  
  constructor(root: RootStore){
    super(root);
    
    let listener = (e: KeyboardEvent) => {
      if (this.konamiSuccess) return;

      if (e.keyCode === konamiSequence[this.konamiInput.length]) {
        this.konamiInput.push(e.keyCode);
        if (this.konamiInput.length === konamiSequence.length)
          this.konamiSuccess = true;
      } else this.konamiInput = [];
    }
    
    window.addEventListener("keydown", listener);
  }
}
