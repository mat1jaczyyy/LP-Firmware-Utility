import Store from "./BaseStore";
import { observable, action } from "mobx";
import { novationPalette } from "../constants";

export default class PaletteStore extends Store {
  @observable palette = novationPalette;
  @observable dirty = false;

  @action
  reset() {
    this.palette = novationPalette;
    this.dirty = false;
  }
}
