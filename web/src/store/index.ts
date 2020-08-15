import { createContext } from "react";

import UIStore from "./UIStore";
import PaletteStore from "./PaletteStore";
import WasmStore from "./WasmStore";
import LaunchpadStore from "./LaunchpadStore";
import NoticeStore from "./NoticeStore";
import { ModeStore } from "./ModeStore";

export class RootStore {
  ui = new UIStore(this);
  palette = new PaletteStore(this);
  wasm = new WasmStore(this);
  launchpads = new LaunchpadStore(this);
  notice = new NoticeStore(this);
  modes = new ModeStore(this);
}

export const store = new RootStore();

export const StoreContext = createContext<RootStore>(store);
