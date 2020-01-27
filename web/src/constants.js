const LPX = "Launchpad X";
const LPMINIMK3 = "Launchpad Mini MK3";
const LPPRO = "Launchpad Pro"

export const lpModels = [LPX, LPMINIMK3, LPPRO]

export const lpOptions = {
	"Launchpad X": ["Patch Programmer Mode", "Rename \"Programmer\" Mode to \"Cover\" Mode"],
	"Launchpad Mini MK3": ["Patch Programmer Mode"],
	"Launchpad Pro": ["Lol"]
}

export const lpPorts = {
	"Launchpad X Bootloader": LPX,
	"Launchpad Mini Bootloader": LPMINIMK3,
	"Launchpad Pro": LPPRO
}

export const errorCodes = {
	MIDI_UNSUPPORTED: 0,
	NO_DEVICE: 1,
	MULTIPLE_DEVICES: 2,
	SELECTION_NOT_FOUND: 3,
}

export default {lpOptions, lpPorts, errorCodes, lpModels}