import { NoticeState } from "../reducers/notice";

export const showNotice = (options: Omit<NoticeState, "visible">) => ({
  type: "SHOW",
  payload: options,
});

export const hideNotice = { type: "HIDE" };
