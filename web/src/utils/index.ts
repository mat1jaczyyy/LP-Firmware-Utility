import axios from "axios";
import { saveAs } from "file-saver";

import { LaunchpadTypes, FlashableFirmwares, LPX_MODE_HEADER } from "../constants";

const paletteRegex = /([0-9]|[1-8][0-9]|9[0-9]|1[01][0-9]|12[0-7]),( ([0-9]|[1-5][0-9]|6[0-3])){3};/gm;

export const flattenObject = (options: any, recursion = 0) => {
  let flattened: any = {};
  Object.entries(options).forEach(([name, value]) => {
    let children: any = {};
    if (value !== true) {
      children = flattenObject({ [name]: value }, recursion + 1);
    } else {
      children[name] = value;
    }
    flattened = { ...flattened, ...children };
  });
  return flattened;
};

export const portNeutralize = (x: string) =>
  x.toUpperCase().split("IN").join("").split("OUT").join("");
export const portsMatch = (input: string, output: string) =>
  portNeutralize(input) === portNeutralize(output);

export const downloadCFW = async () => {
  try {
    const response = await axios.get(
      "https://api.github.com/repos/mat1jaczyyy/lpp-performance-cfw/contents/build/cfw.syx"
    );

    return new Uint8Array(
      atob(response.data.content)
        .split("")
        .map((c) => c.charCodeAt(0))
    );
  } catch (e) {
    throw new Error(
      "An error occured while downloading the CFY. Please try again."
    );
  }
};

export const paletteColorString = (color: number[]) =>
  `${((color[0] + 1) * 4 - 1).toString(16).padStart(2, "0")}${(
    (color[1] + 1) * 4 -
    1
  )
    .toString(16)
    .padStart(2, "0")}${((color[2] + 1) * 4 - 1)
    .toString(16)
    .padStart(2, "0")}`;

export const hsvToHex = ([h, s, v]: number[], fullRange = false): string => {
  let r: number,
    g: number,
    b: number,
    i = Math.floor(h * 6),
    f = h * 6 - i,
    p = v * (1 - s),
    q = v * (1 - f * s),
    t = v * (1 - (1 - f) * s);

  switch (i % 6) {
    case 0:
      r = v;
      g = t;
      b = p;
      break;
    case 1:
      r = q;
      g = v;
      b = p;
      break;
    case 2:
      r = p;
      g = v;
      b = t;
      break;
    case 3:
      r = p;
      g = q;
      b = v;
      break;
    case 4:
      r = t;
      g = p;
      b = v;
      break;
    case 5:
      r = v;
      g = p;
      b = q;
      break;
  }

  r = Math.round(r! * (fullRange ? 255 : 63));
  g = Math.round(g! * (fullRange ? 255 : 63));
  b = Math.round(b! * (fullRange ? 255 : 63));

  return `${r.toString(16).padStart(2, "0")}${g
    .toString(16)
    .padStart(2, "0")}${b.toString(16).padStart(2, "0")}`;
};

export const fullTo18bit = (full: string) => {
  let r = full.slice(0, 2),
    g = full.slice(2, 4),
    b = full.slice(4, 6);

  let newR = Math.floor(parseInt(r, 16) / 4),
    newG = Math.floor(parseInt(g, 16) / 4),
    newB = Math.floor(parseInt(b, 16) / 4);

  return `${newR.toString(16).padStart(2, "0")}${newG
    .toString(16)
    .padStart(2, "0")}${newB.toString(16).padStart(2, "0")}`;
};

export const squashFullHex = (full: string) => {
  full = fullTo18bit(full);

  let r = full.slice(0, 2),
    g = full.slice(2, 4),
    b = full.slice(4, 6);

  let newR = Math.round(parseInt(r, 16) * 4),
    newG = Math.round(parseInt(g, 16) * 4),
    newB = Math.round(parseInt(b, 16) * 4);

  return `${newR.toString(16).padStart(2, "0")}${newG
    .toString(16)
    .padStart(2, "0")}${newB.toString(16).padStart(2, "0")}`;
};

export const rgbToHsv = ([r, g, b]: number[]) => {
  r /= 63;
  g /= 63;
  b /= 63;

  var max = Math.max(r, g, b),
    min = Math.min(r, g, b);
  var h = 0,
    s,
    v = max;

  var d = max - min;
  s = max === 0 ? 0 : d / max;

  if (max === min) h = 0;
  // achromatic
  else {
    switch (max) {
      case r:
        h = (g - b) / d + (g < b ? 6 : 0);
        break;
      case g:
        h = (b - r) / d + 2;
        break;
      case b:
        h = (r - g) / d + 4;
        break;
    }

    h! /= 6;
  }

  return [h!, s, v];
};

export const hexToRgb = (hex: string) => [
  parseInt(hex.slice(0, 2), 16),
  parseInt(hex.slice(2, 4), 16),
  parseInt(hex.slice(4, 6), 16),
];

export const parseRetinaPalette = async (paletteFile: File) => {
  const fileText = await paletteFile.text();

  if (!paletteRegex.test(fileText)) throw new Error();

  let colors: string[] = fileText.split(";");

  let newPalette: any = {};

  for (let color of colors) {
    let [index, rgb] = color.split(",");
    let rgbArr = rgb.split(" ").slice(1);
    newPalette[parseInt(index)] = rgbArr.map((v) => parseInt(v));
  }

  return newPalette;
};

export const createRetinaPalette = (palette: { [index: number]: number[] }) => {
  let fileString = "";

  Object.entries(palette).forEach(
    ([index, color]) =>
      (fileString += `${index}, ${color[0]} ${color[1]} ${color[2]};\n`)
  );

  saveAs(new Blob([fileString]), "palette");
};

export const paletteToArray = (palette: any) => {
  const array = new Uint8Array(384);

  Object.entries(palette).forEach(([index, rgb]: any) => {
    array[index * 3] = rgb[0];
    array[index * 3 + 1] = rgb[1];
    array[index * 3 + 2] = rgb[2];
  });

  return array;
};

export const deviceIsBLForFW = (
  device: LaunchpadTypes,
  fw: FlashableFirmwares
): boolean =>
  (([
    FlashableFirmwares.CFY,
    FlashableFirmwares.LPPRO,
  ] as FlashableFirmwares[]).includes(fw) &&
    device === LaunchpadTypes.BL_LPPRO) ||
  (fw === FlashableFirmwares.LPMINIMK3 && device === LaunchpadTypes.BL_LPMINIMK3) ||
  (fw === FlashableFirmwares.LPMK2 && device === LaunchpadTypes.BL_LPMK2) ||
  (fw === FlashableFirmwares.LPPROMK3 && device === LaunchpadTypes.BL_LPPROMK3) ||
  (fw === FlashableFirmwares.LPX && device === LaunchpadTypes.BL_LPX);

export const isBL = (device: LaunchpadTypes): boolean =>
  [
    LaunchpadTypes.BL_LPMINIMK3,
    LaunchpadTypes.BL_LPMK2,
    LaunchpadTypes.BL_LPPRO,
    LaunchpadTypes.BL_LPPROMK3,
    LaunchpadTypes.BL_LPX,
  ].includes(device);

export const isCustomFW = (device: LaunchpadTypes): boolean =>
  [LaunchpadTypes.CFY, LaunchpadTypes.CFW].includes(device);

export const canHaveCustomMode = (type: LaunchpadTypes): boolean =>
  [LaunchpadTypes.CFY, LaunchpadTypes.LPX, LaunchpadTypes.LPPROMK3].includes(
    type
  );

export const saveCustomMode = (mode: Uint8Array, name: string) => {
  let data = [...LPX_MODE_HEADER, ...mode, 0xF7];
  saveAs(new Blob([new Uint8Array(data)]), `${name}.syx`)
}