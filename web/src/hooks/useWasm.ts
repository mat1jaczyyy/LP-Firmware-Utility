import { useCallback } from "react";
import { downloadCFW } from "../utils";
import { lpModels } from "../constants";
import { useAppState } from ".";

declare const FS: any;

export default () => {
  const { patch, verify, available } = useAppState(({ wasm }) => wasm);

  const verifyFirmware = useCallback(
    (firmware: Uint8Array): string => {
      let selected = null;

      try {
        FS.writeFile("firmware/input.syx", firmware);
        selected = verify!();
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
    },
    [verify]
  );

  const patchFirmware = useCallback(
    async (selectedLp: string, options: any): Promise<Uint8Array> => {
      try {
        if (selectedLp.includes("CFW")) return await downloadCFW();
        patch!(lpModels.indexOf(selectedLp), Object.values(options)); // todo pass palette array
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
    [patch]
  );

  return {
    patchFirmware,
    verifyFirmware,
    wasmAvailable: available,
  };
};
