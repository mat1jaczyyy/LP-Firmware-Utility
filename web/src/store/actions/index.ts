import { Dispatch } from "redux";

import { AppState } from "..";

export type ThunkAction = () => (
  dispatch: Dispatch,
  getState: () => AppState
) => Promise<void>;

export default null;
