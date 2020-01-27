const LPX = "Launchpad X";
const LPMINIMK3 = "Launchpad Mini MK3";

export const lpModels = [LPX, LPMINIMK3]

export const lpOptions = {
	"Launchpad X": ["Patch Programmer Mode", "Rename \"Live\" to \"Gay\""],
	"Launchpad Mini MK3": ["Patch Programmer Mode"]
}

export const lpPorts = {
	"Launchpad X Bootloader": LPX,
	"Launchpad Mini Bootloader": LPMINIMK3
}

export const errorCodes = {
	MIDI_UNSUPPORTED: 0,
	NO_DEVICE: 1,
	MULTIPLE_DEVICES: 2,
	SELECTION_NOT_FOUND: 3,
}

export default {lpOptions, lpPorts, errorCodes, lpModels}