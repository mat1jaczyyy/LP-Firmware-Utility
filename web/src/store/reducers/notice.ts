export interface NoticeState {
  visible: boolean;
  text: string;
  svg?: string;
  callback?: () => void;
  bl?: string;
  showProgress?: boolean;
  dismissable?: boolean;
}

export const noticeDefaults: NoticeState = {
  visible: true,
  text: "",
  bl: "",
  showProgress: false,
  dismissable: false,
};

export default (state = noticeDefaults, { type, payload }: any) => {
  switch (type) {
    case "SHOW":
      return { ...noticeDefaults, ...payload, visible: true };
    case "HIDE":
      if (state.callback) state.callback();
      return { ...noticeDefaults, visible: false };
    default:
      return state;
  }
};
