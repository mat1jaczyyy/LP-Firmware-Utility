import { createStore, applyMiddleware } from "redux";
import thunk from "redux-thunk";
import { composeWithDevTools } from "redux-devtools-extension";

import rootReducer from "./reducers";

import { LaunchpadsState } from "./reducers/launchpads";
import { MidiState } from "./reducers/midi";
import { WasmState } from "./reducers/wasm";
import { NoticeState } from "./reducers/notice";
import { PaletteState } from "./reducers/palette";

export interface AppState {
  launchpads: LaunchpadsState;
  midi: MidiState;
  wasm: WasmState;
  notice: NoticeState;
  palette: PaletteState;
}

export default createStore(
  rootReducer,
  composeWithDevTools(applyMiddleware(thunk))
);
