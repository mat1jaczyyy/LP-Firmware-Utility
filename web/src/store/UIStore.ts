import { observable } from "mobx";
import { LaunchpadType } from "../constants";
import BaseStore from "./BaseStore";

export default class UIStore extends BaseStore {
  @observable selectedLp = LaunchpadType.BL_LPX;
}
