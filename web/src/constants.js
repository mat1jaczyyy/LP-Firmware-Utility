const LPX = "Launchpad X";
const LPMINIMK3 = "Launchpad Mini MK3";
const LPPROMK3 = "Launchpad Pro MK3";
const LPPROCFW = "Launchpad Pro (CFW)";

export const lpModels = [LPX, LPMINIMK3, LPPROMK3, LPPROCFW]

export const lpOptions = {
	"Launchpad X": ["Patch Programmer Mode", "Rename Live mode to Gay mode"],
	"Launchpad Mini MK3": [],
	"Launchpad Pro MK3": [],
	"Launchpad Pro (CFW)": []
}

export const lpPorts = {
	"Launchpad X Bootloader": LPX,
	"LPX Bootloader": LPX,
	"Launchpad Mini Bootloader": LPMINIMK3,
	"Launchpad Pro Bootloader": LPPROMK3,    // this is an assumption. don't have access to Pro MK3 yet
	"Launchpad Pro": LPPROCFW
}

export const errorCodes = {
	MIDI_UNSUPPORTED: 0,
	NO_DEVICE: 1,
	MULTIPLE_DEVICES: 2,
	SELECTION_NOT_FOUND: 3,
}

export default {lpOptions, lpPorts, errorCodes, lpModels}