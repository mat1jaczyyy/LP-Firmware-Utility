import BaseStore from "./BaseStore";
import { observable, action } from "mobx";
import { RootStore } from ".";
import { downloadCFW, paletteToArray, downloadCFY } from "../utils";
import { lpModels, LaunchpadType } from "../constants";

declare let Module: any;
declare let FS: any;

export default class WasmStore extends BaseStore {
  @observable available?: boolean;
  private _patch: Function | null = null;
  private _verify: Function | null = null;

  constructor(rootStore: RootStore) {
    super(rootStore);

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
            this.available = true;
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
    selectedLp: string,
    options: any,
    palette: { [index: number]: number[] }
  ) => {
    try {
      if (selectedLp.includes("CFW")) return await downloadCFW();
      else if (selectedLp.includes("CFY")) return await downloadCFY();
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
  verify = (firmware: Uint8Array): LaunchpadType => {
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

    return lpModels[selected] as LaunchpadType;
  };
}
