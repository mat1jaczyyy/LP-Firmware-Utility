import BaseStore from "./BaseStore";
import { observable, action, runInAction } from "mobx";
import { RootStore } from ".";
import { downloadCFW, paletteToArray } from "../utils";
import { lpModels, FlashableFirmwares } from "../constants";

declare let Module: any;
declare let FS: any;

export default class WasmStore extends BaseStore {
  @observable available?: boolean;
  private _patch: Function | null = null;
  private _verify: Function | null = null;

  constructor(rootStore: RootStore) {
    super(rootStore);

    this.init();
  }

  @action
  init() {
    try {
      if (
        typeof WebAssembly === "object" &&
        typeof WebAssembly.instantiate === "function"
      ) {
        const module = new WebAssembly.Module(
          Uint8Array.of(0x0, 0x61, 0x73, 0x6d, 0x01, 0x00, 0x00, 0x00)
        );
        if (module instanceof WebAssembly.Module) {
          const fwgen = document.createElement("script");
          fwgen.src = "wasm/fwgen.js";
          fwgen.onload = () => {
            this._patch = Module.cwrap("patch_firmware", null, [
              "number",
              "array",
              "array",
            ]);
            this._verify = Module.cwrap("verify_firmware", "number");
            runInAction(() => (this.available = true));
          };
          document.body.appendChild(fwgen);
        } else this.available = false;
      } else this.available = false;
    } catch {
      this.available = false;
    }
  }

  @action
  patch = async (
    selectedLp: FlashableFirmwares,
    options: any,
    palette: { [index: number]: number[] }
  ) => {
    try {
      if (selectedLp === FlashableFirmwares.CFY) return await downloadCFW();
      this._patch!(
        lpModels.indexOf(selectedLp),
        Object.values({ "Custom Palette": false, ...options }),
        paletteToArray(palette)
      );
    } catch (e) {
      console.log(
        "Firmware patching failed with status code " +
          e.status +
          " " +
          e.message
      );
      throw new Error("Something went wrong while patching the firmware file.");
    }

    return FS.readFile("firmware/output.syx");
  };

  @action
  verify = (firmware: Uint8Array): FlashableFirmwares => {
    let selected = null;

    try {
      FS.writeFile("firmware/input.syx", firmware);
      selected = this._verify!();
    } catch (e) {
      console.log(
        "Firmware verification failed with status code " +
          e.status +
          " " +
          e.message
      );
      throw new Error("The firmware file is invalid. Please try again.");
    }

    return lpModels[selected];
  };
}
