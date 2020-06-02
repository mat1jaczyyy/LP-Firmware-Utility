import Store from "./BaseStore";
import { observable } from "mobx";
import { novationPalette } from "../constants";

export default class PaletteStore extends Store {
  @observable palette = novationPalette;
  @observable dirty = false;
}
