import { useState, useRef, useEffect, useCallback } from "react";
import { downloadCFW } from "../utils";
import { lpModelsAll } from "../constants";

declare const Module: any;
declare const FS: any;

export default () => {
  const [wasmAvailable, setWasmAvailable] = useState<boolean | undefined>();
  const [wasmLoading, setWasmLoading] = useState(true);
  const wasmPatch = useRef<((file?: any, options?: any) => any) | null>(null);
  const wasmVerify = useRef<((file?: any) => any) | null>(null);

  useEffect(() => {
    try {
      if (
        typeof WebAssembly === "object" &&
        typeof WebAssembly.instantiate === "function"
      ) {
        const module = new WebAssembly.Module(
          Uint8Array.of(0x0, 0x61, 0x73, 0x6d, 0x01, 0x00, 0x00, 0x00)
        );
        if (module instanceof WebAssembly.Module) {
          // const wasm =
          //   new WebAssembly.Instance(module) instanceof WebAssembly.Instance;
          setWasmAvailable(true);

          const fwgen = document.createElement("script");
          fwgen.src = "wasm/fwgen.js";
          fwgen.onload = () => {
            wasmPatch.current = Module.cwrap("patch_firmware", null, [
              "number",
              "array",
            ]);
            wasmVerify.current = Module.cwrap("verify_firmware", "number");
            setWasmLoading(false);
          };
          document.body.appendChild(fwgen);
          return;
        }
      }
    } catch (e) {}
    setWasmAvailable(false);
  }, []);

  const verifyFirmware = useCallback(
    (firmware: Uint8Array): string => {
      let selected = null;

      try {
        FS.writeFile("firmware/input.syx", firmware);
        selected = wasmVerify.current!();
      } catch (e) {
        console.log(
          "Firmware verification failed with status code " +
            e.status +
            " " +
            e.message
        );
        throw new Error("The firmware file is invalid. Please try again.");
      }

      return lpModelsAll[selected];
    },
    [wasmVerify]
  );

  const patchFirmware = useCallback(
    async (selectedLp: string, options: any): Promise<Uint8Array> => {
      try {
        if (selectedLp.includes("CFW")) return await downloadCFW();
        wasmPatch.current!(
          lpModelsAll.indexOf(selectedLp),
          Object.values(options)
        );
      } catch (e) {
        console.log(
          "Firmware patching failed with status code " +
            e.status +
            " " +
            e.message
        );
        throw new Error(
          "Something went wrong while patching the firmware file."
        );
      }

      return FS.readFile("firmware/output.syx");
    },
    [wasmPatch]
  );

  return {
    wasmAvailable,
    wasmLoading,
    patchFirmware,
    verifyFirmware,
  };
};
