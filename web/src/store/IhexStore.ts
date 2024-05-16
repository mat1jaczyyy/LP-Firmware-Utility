import BaseStore from "./BaseStore";
import { observable, action, runInAction } from "mobx";
import { RootStore } from ".";
import { downloadCFW, paletteToArray } from "../utils";
import { FlashableFirmware, PatchTypes, Patches } from "../constants";
import { PatchOptions } from "./UIStore";

declare let Module: any;
declare let FS: any;

export default class IhexStore extends BaseStore {
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
    selectedLp: FlashableFirmware,
    options: PatchOptions,
    palette: { [index: number]: number[] }
  ) => {
    let optionsArray = Object.keys(Patches).map(() => false);

    (Object.entries(options) as [PatchTypes, boolean][]).forEach(
      ([option, value]) => value && (optionsArray[Patches[option]] = true)
    );
    try {
      if (selectedLp === "CFY") return await downloadCFW();
      this._patch!(
        firmwareTypes.indexOf(selectedLp),
        optionsArray,
        paletteToArray(palette)
      );
    } catch (e: any) {
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
  verify = (firmware: Uint8Array): FlashableFirmware => {
    let selected = null;

    try {
      FS.writeFile("firmware/input.syx", firmware);
      selected = this._verify!();
    } catch (e: any) {
      console.log(
        "Firmware verification failed with status code " +
          e.status +
          " " +
          e.message
      );
      throw new Error("The firmware file is invalid. Please try again.");
    }

    return firmwareTypes[selected];
  };
}

const firmwareTypes: FlashableFirmware[] = [
  "LPX",
  "LPMINIMK3",
  "LPPROMK3",
  "LPMK2",
  "LPPRO",
  "CFY",
];
