import BaseStore from "./BaseStore";
import { observable, action, reaction } from "mobx";
import { novationPalette } from "../constants";
import { RootStore } from ".";

export default class PaletteStore extends BaseStore {
  @observable palette = novationPalette;
  @observable dirty = false;

  constructor(root: RootStore) {
    super(root);

    reaction(
      () => root.launchpads.launchpad,
      (lp) => {
        console.log('adding')
        lp?.input.addListener("sysex", "all", (d) => console.log(d));
      }
    );
  }

  @action
  reset() {
    this.palette = novationPalette;
    this.dirty = false;
  }
}
