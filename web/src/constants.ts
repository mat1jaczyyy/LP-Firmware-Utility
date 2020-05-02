const LPX = "Launchpad X";
const LPMINIMK3 = "Launchpad Mini MK3";
const LPPROMK3 = "Launchpad Pro MK3";
const LPMK2 = "Launchpad MK2";
const LPPRO = "Launchpad Pro";
const LPPROCFW = "Launchpad Pro (CFW)";

export enum BootloaderType {
  LPX = "Launchpad X",
  LPMINIMK3 = "Launchpad Mini MK3",
  LPPROMK3 = "Launchpad Pro MK3",
  LPMK2 = "Launchpad MK2",
  LPPRO = "Launchpad Pro",
  NOT_BOOTLOADER = "Not Booloader",
}

interface Map {
  [key: string]: any;
}

export const lpModelsVisible = [LPX, LPMINIMK3, LPMK2, LPPRO, LPPROCFW];
export const lpModelsAll = [LPX, LPMINIMK3, LPPROMK3, LPMK2, LPPRO, LPPROCFW];

export const lpOptions: Map = {
  "Launchpad X": {},
  "Launchpad Mini MK3": {},
  "Launchpad Pro MK3": {},
  "Launchpad MK2": {},
  "Launchpad Pro": {},
  "Launchpad Pro (CFW)": {},
};

export const svgs: Map = {
  "Launchpad X": "x",
  "Launchpad Mini MK3": "x",
  "Launchpad Pro MK3": "promk3",
  "Launchpad MK2": "mk2",
  "Launchpad Pro": "pro",
  "Launchpad Pro (CFW)": "pro",
};

export const bltext: Map = {
  "Launchpad X": "the Capture MIDI button",
  "Launchpad Mini MK3": "the User button",
  "Launchpad Pro MK3": "the Setup button",
  "Launchpad MK2": "Session, User 1, User 2 and Mixer",
  "Launchpad Pro": "the Setup button",
  "Launchpad Pro (CFW)": "the Setup button",
};

export const konamiSequence = [38, 38, 40, 40, 37, 39, 37, 39];

export const CFW_PALETTE_UPLOAD_START = [
  0xf0,
  0x52,
  0x45,
  0x54,
  0x49,
  0x4e,
  0x41,
  0x7b,
  0xf7,
];
export const CFW_PALETTE_UPLOAD_WRITE = [
  0xf0,
  0x52,
  0x45,
  0x54,
  0x49,
  0x4e,
  0x41,
  0x3d,
];
export const CFW_PALETTE_UPLOAD_END = [0xF0, 0x52, 0x45, 0x54, 0x49, 0x4E, 0x41, 0x7D, 0xF7]

export default { lpOptions, lpModelsVisible, lpModelsAll };
