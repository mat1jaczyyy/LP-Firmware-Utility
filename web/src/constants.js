const LPX = "Launchpad X"
const LPMINIMK3 = "Launchpad Mini MK3"
const LPPROMK3 = "Launchpad Pro MK3"
const LPMK2 = "Launchpad MK2"
const LPPRO = "Launchpad Pro"
const LPPROCFW = "Launchpad Pro (CFW)"

export const lpModels = [LPX, LPMINIMK3, LPPROMK3, LPMK2, LPPRO, LPPROCFW]

export const lpOptions = {
  "Launchpad X": {"Patch Programmer Mode": ["Use Pro-like top row mapping"], "Rename Live mode to Gay mode": []},
  "Launchpad Mini MK3": {"Patch Programmer Mode": ["Use Pro-like top row mapping"], "Rename Live mode to Gay mode": []},
  "Launchpad Pro MK3": {},
  "Launchpad MK2": {},
  "Launchpad Pro": {},
  "Launchpad Pro (CFW)": {},
}

export const svgs = {
  "Launchpad X": "x",
  "Launchpad Mini MK3": "x",
  "Launchpad Pro MK3": "promk3",
  "Launchpad MK2": "mk2",
  "Launchpad Pro": "pro",
  "Launchpad Pro (CFW)": "pro",
}

export const bltext = {
  "Launchpad X": "the Capture MIDI button",
  "Launchpad Mini MK3": "the Capture MIDI button",
  "Launchpad Pro MK3": "the Setup button",
  "Launchpad MK2": "Session, User 1, User 2 and Mixer",
  "Launchpad Pro": "the Setup button",
  "Launchpad Pro (CFW)": "the Setup button",
}

export const errorCodes = {
  MIDI_UNSUPPORTED: 0,
  NO_DEVICE: 1,
  MULTIPLE_DEVICES: 2,
  SELECTION_NOT_FOUND: 3,
}

export const konamiSequence = [38, 38, 40, 40, 37, 39, 37, 39]

export default { lpOptions, errorCodes, lpModels }
