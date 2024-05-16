import { createContext } from "react";

import LaunchpadStore from "./LaunchpadStore";
import UIStore from "./UIStore";
import PaletteStore from "./PaletteStore";
import { ModeStore } from "./ModeStore";
import WasmStore from "./WasmStore";
import IhexStore from "./IhexStore";
import NoticeStore from "./NoticeStore";

export class RootStore {
  ui = new UIStore(this);
  launchpads = new LaunchpadStore(this);
  palette = new PaletteStore(this);
  modes = new ModeStore(this);
  wasm = new WasmStore(this);
  ihex = new IhexStore(this);
  notice = new NoticeStore(this);
}

export const store = new RootStore();

export const StoreContext = createContext<RootStore>(store);
