import { combineReducers } from "redux";

import launchpads from "./launchpads";
import midi from "./midi";
import notice from "./notice";
import palette from "./palette";
import wasm from "./wasm";
import { AppState } from "..";

export default combineReducers<AppState>({
  launchpads,
  midi,
  notice,
  palette,
  wasm,
});
