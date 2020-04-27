const LPX = "Launchpad X"
const LPMINIMK3 = "Launchpad Mini MK3"
const LPPROMK3 = "Launchpad Pro MK3"
const LPMK2 = "Launchpad MK2"
const LPPRO = "Launchpad Pro"
const LPPROCFW = "Launchpad Pro (CFW)"

export const lpModelsVisible = [LPX, LPMINIMK3, LPMK2, LPPRO, LPPROCFW]
export const lpModelsAll = [LPX, LPMINIMK3, LPPROMK3, LPMK2, LPPRO, LPPROCFW]

export const lpOptions = {
  "Launchpad X": {
    "Patch name": []
  },
  "Launchpad Mini MK3": {},
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
  "Launchpad Mini MK3": "the User button",
  "Launchpad Pro MK3": "the Setup button",
  "Launchpad MK2": "Session, User 1, User 2 and Mixer",
  "Launchpad Pro": "the Setup button",
  "Launchpad Pro (CFW)": "the Setup button",
}

export const konamiSequence = [38, 38, 40, 40, 37, 39, 37, 39]

export default { lpOptions, lpModelsVisible, lpModelsAll }
