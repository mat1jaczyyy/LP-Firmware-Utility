import { PatchOptions } from "./UIStore";

const BaseFirmwareSources = {
  MF64: () => import("../assets/mf64-base.hex?raw"),
  CMF64: () =>
    fetch(
      "https://raw.githubusercontent.com/mat1jaczyyy/mf64-performance-cfw/master/midi_fighter_64/midifighter64.hex",
    ),
};

export async function patchMF64(
  selectedLp: "MF64" | "CMF64",
  options: PatchOptions,
  palette: { [index: number]: number[] },
) {
  const hex = await BaseFirmwareSources[selectedLp]();

  if (options["Custom Palette"]) {
    // TODO
  }

  if (options["Novation ID Spoof"]) {
    // TODO
  }

  return hex;
}
