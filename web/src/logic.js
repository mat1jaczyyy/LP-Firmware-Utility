/* eslint-disable no-inline-comments */
import WebMidi from "webmidi"
import { lpModels, errorCodes, svgs, bltext } from "./constants"
import { saveAs } from "file-saver"
import axios from "axios"

const downloadCFW = async () => {
  const response = await axios.get(
    "https://api.github.com/repos/mat1jaczyyy/lpp-performance-cfw/contents/build/cfw.syx"
  )

  return new Uint8Array(
    atob(response.data.content)
      .split("")
      .map(c => c.charCodeAt(0))
  )
}

const wasmPatch = Module.cwrap("patch_firmware", null, ["number", "array"])
const wasmVerify = Module.cwrap("verify_firmware", "number")

const patchFirmware = async args => {
  try {
    if (args.selectedLp.includes("CFW")) return await downloadCFW()

    wasmPatch(lpModels.indexOf(args.selectedLp), Object.values(args.options))
  } catch (e) {
    console.log(
      "Firmware patching failed with status code " + e.status + " " + e.message
    )
    args.showNotice(
      "Something went wrong while patching the firmware file.",
      true,
      undefined,
      undefined,
      undefined,
      false
    )
    return null
  }

  return FS.readFile("firmware/output.syx")
}

const verifyFirmware = args => {
  let selected = null

  try {
    FS.writeFile("firmware/input.syx", args.rawFW)
    selected = wasmVerify()
  } catch (e) {
    console.log(
      "Firmware verification failed with status code " +
        e.status +
        " " +
        e.message
    )
    args.showNotice(
      "The firmware file is invalid. Please try again.",
      true,
      undefined,
      undefined,
      undefined,
      false
    )
    return null
  }

  return selected
}

const portNeutralize = x =>
  x
    .toUpperCase()
    .split("IN")
    .join("")
    .split("OUT")
    .join("")
const portsMatch = (input, output) =>
  portNeutralize(input) === portNeutralize(output)

export default {
  initializeMidi: () => {
    WebMidi.enable(err => {
      if (err) return errorCodes.MIDI_UNSUPPORTED
    }, true)
  },

  flashFirmware: async args => {
    let fw
    let selectedLp

    if (args.rawFW) {
      let result = verifyFirmware(args)
      if (result === null) return false

      fw = args.rawFW
      selectedLp = lpModels[result]
    } else {
      fw = await patchFirmware(args)
      if (fw === null) return false

      selectedLp = args.selectedLp
    }

    const messages = []
    let currentMessage = []

    fw.forEach(byte => {
      if (byte === 0xf0) {
      } else if (byte === 0xf7) {
        messages.push(currentMessage)
        currentMessage = []
      } else currentMessage.push(byte)
    })

    const flash = outputPort => {
      messages.forEach(message => {
        outputPort.sendSysex([], message)
      })
    }

    let MIDIresponded = 0
    let MIDIfound = []
    let MIDItotal = 0

    const identify = (input, output) => {
      const listenerTimer = setTimeout(() => {
        input.removeListener("sysex", "all")
        response()
      }, 1000)

      input.addListener("sysex", "all", e => {
        clearTimeout(listenerTimer)

        input.removeListener("sysex", "all")

        if (e.data.length === 17) {
          const msg = e.data.slice(1, e.data.length - 1)

          if (msg[4] === 0x00 && msg[5] === 0x20 && msg[6] === 0x29) {
            const versionStr = msg
              .slice(msg.length - 3)
              .reduce((prev, current) => "" + prev + current)

            const selectedIndex = lpModels.indexOf(selectedLp)

            if (
              !MIDIfound.includes(output) &&
              ((selectedIndex === 0 && msg[7] === 0x03 && msg[8] === 17) || // LPX Bootloader
              (selectedIndex === 1 && msg[7] === 0x13 && msg[8] === 17) || // LPMiniMK3 Bootloader
              (selectedIndex === 2 && msg[7] === 0x23 && msg[8] === 17) || // LPProMK3 Bootloader
              (selectedIndex === 3 && msg[7] === 0x69 && versionStr < 171) || // LPMK2 Bootloader
                ((selectedIndex === 4 || selectedIndex === 5) &&
                  msg[7] === 0x51 &&
                  versionStr === "000")) // LPPro Bootloader
            ) {
              MIDIfound.push(output)

              if (MIDIfound.length === 1)
                WebMidi.addListener("disconnected", removeUpdating)

              args.showNotice("Updating...")

              flash(output)
            }
          }
        }

        response()
      })

      output.sendSysex([], [0x7e, 0x7f, 0x06, 0x01])
    }

    const response = () => {
      if (++MIDIresponded === MIDItotal && MIDIfound.length === 0) {
        let lp =
          lpModels.indexOf(selectedLp) === lpModels.length - 1
            ? lpModels[lpModels.length - 2]
            : selectedLp

        args.showNotice(
          "Please connect a " +
            lp +
            " in bootloader mode to continue flashing.",
          true,
          removeScan,
          svgs[lp],
          bltext[lp]
        )

        WebMidi.addListener("connected", scan)
        WebMidi.addListener("disconnected", scan)
      }
    }

    const scan = () => {
      MIDIresponded = 0
      MIDIfound = []
      MIDItotal = 0

      for (let iI = 0; iI < WebMidi.inputs.length; iI++)
        for (let oI = 0; oI < WebMidi.outputs.length; oI++)
          if (portsMatch(WebMidi.inputs[iI].name, WebMidi.outputs[oI].name)) {
            MIDItotal++
            identify(WebMidi.inputs[iI], WebMidi.outputs[oI])
          }

      if (MIDItotal === 0) {
        MIDIresponded = -1
        response()
      }
    }

    const removeScan = () => {
      WebMidi.removeListener("connected", scan)
      WebMidi.removeListener("disconnected", scan)
    }

    const removeUpdating = e => {
      for (let i = 0; i < MIDIfound.length; i++)
        if (MIDIfound[i].id === e.port.id) {
          MIDIfound.splice(i, 1)

          if (MIDIfound.length === 0) args.clearNotice()

          return
        }
    }

    scan()

    return true
  },
  downloadFirmware: async args => {
    const fw = await patchFirmware(args)
    if (fw === null) return false

    saveAs(new Blob([fw.buffer]), "output.syx")

    return true
  },
}
