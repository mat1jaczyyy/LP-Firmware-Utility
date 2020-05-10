import { ThunkAction } from ".";

declare var Module: any;

const wasmUnavaible = { type: "WASM_UNAVAILABLE" };

export const initWasm: ThunkAction = () => async (dispatch) => {
  let action: any = await new Promise((resolve) => {
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
            let patch = Module.cwrap("patch_firmware", null, [
              "number",
              "array",
            ]);
            let verify = Module.cwrap("verify_firmware", "number");
            let action = {
              type: "SET_WASM",
              payload: {
                patch,
                verify,
                available: true,
              },
            };
            resolve(action);
          };
          document.body.appendChild(fwgen);
        } else resolve(wasmUnavaible);
      } else resolve(wasmUnavaible);
    } catch (e) {}
  });

  dispatch(action);
};
