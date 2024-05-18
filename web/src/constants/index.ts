export interface FirmwareConfig {
  display: string;
  fastLED?: "builtin" | boolean;
  customPalette?: boolean;
  svg?: string;
  blText?: string;
  customModes?: boolean;
  novationIdSpoof?: boolean;
  downloadOnly?: boolean;
  apolloSupport?: "builtin" | "cfw";
}

export type Firmware =
  | "BL_LPX"
  | "BL_LPMINIMK3"
  | "BL_LPPROMK3"
  | "BL_LPMK2"
  | "BL_LPPRO"
  | "LPX"
  | "LPMINIMK3"
  | "LPPROMK3"
  | "LPMK2"
  | "LPPRO"
  | "CFW"
  | "CFY"
  | "MF64"
  | "CMF64";

export const firmwares: Record<Firmware, FirmwareConfig> = {
  BL_LPX: { display: "Launchpad X (BL)" },
  BL_LPMINIMK3: { display: "Launchpad Mini MK3 (BL)" },
  BL_LPPROMK3: { display: "Launchpad Pro MK3 (BL)" },
  BL_LPMK2: { display: "Launchpad MK2 (BL)" },
  BL_LPPRO: { display: "Launchpad Pro (BL)" },
  LPX: {
    display: "Launchpad X",
    fastLED: true,
    svg: "x",
    blText: "the Capture MIDI button",
    customModes: true,
    customPalette: true,
  },
  LPMINIMK3: {
    display: "Launchpad Mini MK3",
    fastLED: true,
    svg: "x",
    blText: "the User button",
    customModes: true,
    customPalette: true,
  },
  LPPROMK3: {
    display: "Launchpad Pro MK3",
    svg: "promk3",
    blText: "the Setup button",
    customPalette: true,
  },
  LPMK2: {
    display: "Launchpad MK2",
    fastLED: true,
    svg: "mk2",
    blText: "Session, User 1, User 2 and Mixer",
    customPalette: true,
  },
  LPPRO: {
    display: "Launchpad Pro",
    fastLED: "builtin",
    svg: "pro",
    blText: "the Setup button",
    customPalette: true,
  },
  CFW: {
    display: "Launchpad Pro (CFW - OLD)",
    customPalette: true,
  },
  CFY: {
    display: "Launchpad Pro (CFW)",
    fastLED: "builtin",
    svg: "pro",
    blText: "the Setup button",
    customPalette: true,
  },
  MF64: {
    display: "MIDI Fighter 64",
    novationIdSpoof: true,
    apolloSupport: "cfw",
    customPalette: true,
  },
  CMF64: {
    display: "MIDI Fighter 64 (CFW)",
    customPalette: true,
  },
};

export type FlashableFirmware =
  | "LPX"
  | "LPMINIMK3"
  | "LPPROMK3"
  | "LPMK2"
  | "LPPRO"
  | "CFY"
  | "MF64"
  | "CMF64";

export const blFirmwares = new Set<FirmwareConfig>([
  firmwares.BL_LPX,
  firmwares.BL_LPMINIMK3,
  firmwares.BL_LPPROMK3,
  firmwares.BL_LPMK2,
  firmwares.BL_LPPRO,
]);

export const customModeFirmwares = new Set<FirmwareConfig>([
  firmwares.CFY,
  firmwares.LPX,
  firmwares.LPMINIMK3,
  firmwares.LPPROMK3,
]);

export const DownloadableFirmwares = {
  MF64: "MIDI Fighter 64",
} as const;

export const lpModels: Firmware[] = [
  "LPX",
  "LPMINIMK3",
  "LPPROMK3",
  "LPMK2",
  "LPPRO",
  "CFY",
  "MF64",
  "CMF64",
];

export enum PatchTypes {
  Palette = "Custom Palette",
  ApolloFastLED = "Apollo Studio Fast LED Mod",
  NovationIDSpoof = "Novation ID Spoof",
}

export const Patches = {
  [PatchTypes.Palette]: 0,
  [PatchTypes.ApolloFastLED]: 1,
  [PatchTypes.NovationIDSpoof]: 2,
} as const;

export const konamiSequence = [38, 38, 40, 40, 37, 39, 37, 39];

export const novationPalette: { [index: number]: number[] } = (() => {
  let obj: any = {};
  let arr = [
    [0, 0, 0],
    [16, 16, 16],
    [32, 32, 32],
    [63, 63, 63],
    [63, 15, 15],
    [63, 0, 0],
    [32, 0, 0],
    [16, 0, 0],
    [63, 46, 26],
    [63, 15, 0],
    [32, 8, 0],
    [16, 4, 0],
    [63, 43, 11],
    [63, 63, 0],
    [32, 32, 0],
    [16, 16, 0],
    [33, 63, 12],
    [20, 63, 0],
    [10, 32, 0],
    [5, 16, 0],
    [18, 63, 18],
    [0, 63, 0],
    [0, 32, 0],
    [0, 16, 0],
    [18, 63, 23],
    [0, 63, 6],
    [0, 32, 3],
    [0, 16, 1],
    [18, 63, 22],
    [0, 63, 21],
    [0, 32, 11],
    [0, 16, 6],
    [18, 63, 45],
    [0, 63, 37],
    [0, 32, 18],
    [0, 16, 9],
    [18, 48, 63],
    [0, 41, 63],
    [0, 21, 32],
    [0, 11, 16],
    [18, 33, 63],
    [0, 21, 63],
    [0, 11, 32],
    [0, 6, 16],
    [11, 9, 63],
    [0, 0, 63],
    [0, 0, 32],
    [0, 0, 16],
    [26, 13, 62],
    [11, 0, 63],
    [6, 0, 32],
    [3, 0, 16],
    [63, 15, 63],
    [63, 0, 63],
    [32, 0, 32],
    [16, 0, 16],
    [63, 16, 27],
    [63, 0, 20],
    [32, 0, 10],
    [16, 0, 5],
    [63, 3, 0],
    [37, 13, 0],
    [29, 20, 0],
    [8, 13, 1],
    [0, 14, 0],
    [0, 18, 6],
    [0, 5, 27],
    [0, 0, 63],
    [0, 17, 19],
    [4, 0, 50],
    [31, 31, 31],
    [7, 7, 7],
    [63, 0, 0],
    [46, 63, 11],
    [43, 58, 1],
    [24, 63, 2],
    [3, 34, 0],
    [0, 63, 23],
    [0, 41, 63],
    [0, 10, 63],
    [6, 0, 63],
    [22, 0, 63],
    [43, 6, 30],
    [10, 4, 0],
    [63, 12, 0],
    [33, 55, 1],
    [28, 63, 5],
    [0, 63, 0],
    [14, 63, 9],
    [21, 63, 27],
    [13, 63, 50],
    [22, 34, 63],
    [12, 20, 48],
    [26, 20, 57],
    [52, 7, 63],
    [63, 0, 22],
    [63, 17, 0],
    [45, 41, 0],
    [35, 63, 0],
    [32, 22, 1],
    [14, 10, 0],
    [0, 18, 3],
    [3, 19, 8],
    [5, 5, 10],
    [5, 7, 22],
    [25, 14, 6],
    [32, 0, 0],
    [54, 16, 10],
    [53, 18, 4],
    [63, 47, 9],
    [39, 55, 11],
    [25, 44, 3],
    [5, 5, 11],
    [54, 52, 26],
    [31, 58, 34],
    [38, 37, 63],
    [35, 25, 63],
    [15, 15, 15],
    [28, 28, 28],
    [55, 63, 63],
    [39, 0, 0],
    [13, 0, 0],
    [6, 51, 0],
    [1, 16, 0],
    [45, 43, 0],
    [15, 12, 0],
    [44, 20, 0],
    [18, 5, 0],
  ];
  arr.forEach((colors, index) => (obj[index] = colors));
  return obj;
})();

export const CFY_PALETTE_DOWNLOAD_HEADER = [
  0xf0, 0x52, 0x45, 0x54, 0x49, 0x4e, 0x41,
];
export const CFW_PALETTE_UPLOAD_START = [
  0x52, 0x45, 0x54, 0x49, 0x4e, 0x41, 0x7b,
];
export const CFW_PALETTE_UPLOAD_WRITE = [
  0x52, 0x45, 0x54, 0x49, 0x4e, 0x41, 0x3d,
];
export const CFW_PALETTE_UPLOAD_END = [
  0x52, 0x45, 0x54, 0x49, 0x4e, 0x41, 0x7d,
];

export const CFY_MODE_UPLOAD_START = (index: number) => [
  0x43,
  0x55,
  0x53,
  0x54,
  0x4f,
  0x4d,
  0x7b,
  index,
];

export const CFY_MODE_UPLOAD_WRITE = [0x43, 0x55, 0x53, 0x54, 0x4f, 0x4d, 0x3d];
export const CFY_MODE_UPLOAD_END = [0x43, 0x55, 0x53, 0x54, 0x4f, 0x4d, 0x7d];
export const CFY_MODE_WRITE_HEADER = [240, 67, 85, 83, 84, 79, 77];

export const LPX_MODE_HEADER = [0x00, 0x20, 0x29, 0x02, 0x0c, 0x05, 0x01, 0x7f];
export const LPMINIMK3_MODE_HEADER = [
  0x00, 0x20, 0x29, 0x02, 0x0d, 0x05, 0x01, 0x7f,
];
export const LPPROMK3_MODE_HEADER = [
  0x00, 0x20, 0x29, 0x02, 0x0e, 0x05, 0x01, 0x7f,
];

export const LPX_MODE_DOWNLOAD = (index: number) => [
  0x00,
  0x20,
  0x29,
  0x02,
  0x0c,
  0x05,
  0x01,
  index + 4,
];
export const LPMINIMK3_MODE_DOWNLOAD = (index: number) => [
  0x00,
  0x20,
  0x29,
  0x02,
  0x0d,
  0x05,
  0x01,
  index + 4,
];
export default { lpModels };
