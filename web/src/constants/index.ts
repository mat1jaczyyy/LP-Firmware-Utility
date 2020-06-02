const LPX = "Launchpad X";
const LPMINIMK3 = "Launchpad Mini MK3";
const LPPROMK3 = "Launchpad Pro MK3";
const LPMK2 = "Launchpad MK2";
const LPPRO = "Launchpad Pro";
const LPPROCFW = "Launchpad Pro (CFW)";

export enum LaunchpadType {
  BL_LPX = "Launchpad X",
  BL_LPMINIMK3 = "Launchpad Mini MK3",
  BL_LPPROMK3 = "Launchpad Pro MK3",
  BL_LPMK2 = "Launchpad MK2",
  BL_LPPRO = "Launchpad Pro",
  CFW = "Launchpad Pro (CFW)",
  UNUSED = "UNUSED",
}

interface Map {
  [key: string]: any;
}

export const lpModels = [LPX, LPMINIMK3, LPPROMK3, LPMK2, LPPRO, LPPROCFW];

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

export const novationPalette: { [index: number]: number[] } = (() => {
  let obj: any = {};
  let arr = [
    [0, 0, 0],
    [7, 7, 7],
    [31, 31, 31],
    [63, 63, 63],
    [63, 18, 18],
    [63, 0, 0],
    [21, 0, 0],
    [6, 0, 0],
    [63, 46, 26],
    [63, 20, 0],
    [21, 7, 0],
    [9, 6, 0],
    [63, 63, 18],
    [63, 63, 0],
    [21, 21, 0],
    [6, 6, 0],
    [33, 63, 18],
    [20, 63, 0],
    [7, 21, 0],
    [4, 10, 0],
    [18, 63, 18],
    [0, 63, 0],
    [0, 21, 0],
    [0, 6, 0],
    [18, 63, 23],
    [0, 63, 6],
    [0, 21, 3],
    [0, 6, 0],
    [18, 63, 33],
    [0, 63, 21],
    [0, 21, 7],
    [0, 7, 4],
    [18, 63, 45],
    [0, 63, 37],
    [0, 21, 13],
    [0, 6, 4],
    [18, 48, 63],
    [0, 41, 63],
    [0, 16, 20],
    [0, 3, 6],
    [18, 33, 63],
    [0, 21, 63],
    [0, 7, 21],
    [0, 1, 6],
    [18, 18, 63],
    [0, 0, 63],
    [0, 0, 21],
    [0, 0, 6],
    [33, 18, 63],
    [20, 0, 63],
    [6, 0, 24],
    [3, 0, 11],
    [63, 18, 63],
    [63, 0, 63],
    [21, 0, 21],
    [6, 0, 6],
    [63, 18, 33],
    [63, 0, 20],
    [21, 0, 7],
    [8, 0, 4],
    [63, 5, 0],
    [37, 13, 0],
    [29, 20, 0],
    [16, 24, 0],
    [0, 14, 0],
    [0, 21, 13],
    [0, 20, 31],
    [0, 0, 63],
    [0, 17, 19],
    [9, 0, 50],
    [31, 31, 31],
    [7, 7, 7],
    [63, 0, 0],
    [46, 63, 11],
    [43, 58, 1],
    [24, 63, 2],
    [3, 34, 0],
    [0, 63, 33],
    [0, 41, 63],
    [0, 10, 63],
    [15, 0, 63],
    [30, 0, 63],
    [43, 6, 30],
    [15, 8, 0],
    [63, 18, 0],
    [33, 55, 1],
    [28, 63, 5],
    [0, 63, 0],
    [14, 63, 9],
    [21, 63, 27],
    [13, 63, 50],
    [22, 34, 63],
    [12, 20, 48],
    [33, 31, 57],
    [52, 7, 63],
    [63, 0, 22],
    [63, 31, 0],
    [45, 43, 0],
    [35, 63, 0],
    [32, 22, 1],
    [14, 10, 0],
    [4, 18, 3],
    [3, 19, 13],
    [5, 5, 10],
    [5, 7, 22],
    [25, 14, 6],
    [41, 0, 2],
    [54, 20, 15],
    [53, 26, 6],
    [63, 55, 9],
    [39, 55, 11],
    [25, 44, 3],
    [7, 7, 11],
    [54, 63, 26],
    [31, 63, 46],
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
    [44, 23, 0],
    [18, 5, 0],
  ];
  arr.forEach((colors, index) => (obj[index] = colors));
  return obj;
})();

export const CFW_PALETTE_UPLOAD_START = [
  0x52,
  0x45,
  0x54,
  0x49,
  0x4e,
  0x41,
  0x7b,
];
export const CFW_PALETTE_UPLOAD_WRITE = [
  0x52,
  0x45,
  0x54,
  0x49,
  0x4e,
  0x41,
  0x3d,
];
export const CFW_PALETTE_UPLOAD_END = [
  0x52,
  0x45,
  0x54,
  0x49,
  0x4e,
  0x41,
  0x7d,
];

export default { lpOptions, lpModels };
