import BaseStore from "./BaseStore";
import { observable, action } from "mobx";

interface NoticeState {
  visible: boolean;
  text: string;
  svg: string | null;
  callback: (() => void) | null;
  bl: string | null;
  showProgress: boolean | null;
  dismissable: boolean | null;
}

const defaultState = {
  visible: true,
  text: "",
  svg: null,
  callback: null,
  bl: "",
  showProgress: false,
  dismissable: false,
};

export default class NoticeStore extends BaseStore {
  @observable state: NoticeState = defaultState;

  @action
  show = (properties: Partial<NoticeState>) => {
    this.state = { ...defaultState, ...properties, visible: true };
  };

  @action
  hide = () => {
    if (this.state.callback) this.state.callback();
    this.state = { ...defaultState, visible: false };
  };
}
