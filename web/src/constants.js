const LPX = "Launchpad X"
const LPMINIMK3 = "Launchpad Mini MK3"
const LPPROMK3 = "Launchpad Pro MK3"
const LPMK2 = "Launchpad MK2"
const LPPRO = "Launchpad Pro"
const LPPROCFW = "Launchpad Pro (CFW)"

export const lpModels = [LPX, LPMINIMK3, LPPROMK3, LPMK2, LPPRO, LPPROCFW]

export const lpOptions = {
  "Launchpad X": ["Patch Programmer Mode", "Rename Live mode to Gay mode"],
  "Launchpad Mini MK3": [],
  "Launchpad Pro MK3": [],
  "Launchpad MK2": [],
  "Launchpad Pro": [],
  "Launchpad Pro (CFW)": [],
}

export const errorCodes = {
  MIDI_UNSUPPORTED: 0,
  NO_DEVICE: 1,
  MULTIPLE_DEVICES: 2,
  SELECTION_NOT_FOUND: 3,
}

export default { lpOptions, errorCodes, lpModels }
