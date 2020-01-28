import WebMidi from "webmidi"
import { lpModels, errorCodes } from "./constants"
import { saveAs } from 'file-saver'
import axios from "axios";

const downloadCFW = async() => {
  var response = await axios.get("https://api.github.com/repos/mat1jaczyyy/lpp-performance-cfw/contents/build/cfw.syx");

  return new Uint8Array(atob(response.data.content).split('').map(c => c.charCodeAt(0)));;
}

const wasmPatch = Module.cwrap("patch_firmware", null, ["number", "array"])

const patchFirmware = async(args) => {
  try {
    if (args.selectedLp.includes("CFW")) return await downloadCFW();

    wasmPatch(
      lpModels.indexOf(args.selectedLp),
      Object.values(args.options)
    );

  } catch (e) {
    console.log("Firmware deploy failed with status code " + e.status + " " + e.message)
    return null
  }

  return FS.readFile("firmware/output.syx")
}

const portsMatch = (input, output) => input.toUpperCase().replace("IN", "").replace("OUT", "") === output.toUpperCase().replace("IN", "").replace("OUT", "");

export default {
  initializeMidi: () => {
    WebMidi.enable(err => {
      if(err) return errorCodes.MIDI_UNSUPPORTED
    }, true)
  },

  flashFirmware: async args => {
    var fw = await patchFirmware(args)
    if (fw === null) return;

    var messages = []
    var currentMessage = []
    
    fw.forEach(byte => {
      if(byte === 0xF0){}
      else if(byte === 0xF7){
        messages.push(currentMessage)
        currentMessage = []
      } else currentMessage.push(byte)
    })

    const flash = outputPort => {
      messages.forEach(message => {
        outputPort.sendSysex([], message);
      })
    }

    const identify = (input, output) => {
      input.addListener("sysex", "all", e => {
        input.removeListener("sysex", "all");

        if(e.data.length != 17) return;
        
        var msg = e.data.slice(1, e.data.length - 1);
        
        if(msg[4] === 0x00 && msg[5] === 0x20 && msg[6] === 0x29) {
          const versionStr = msg.slice(msg.length - 3).reduce((prev, current) => ("" + prev) + current)
      
          if (msg[7] === 0x03 && msg[8] === 17 || // LPX Bootloader
              msg[7] === 0x13 && msg[8] === 17 || // LPMiniMK3 Bootloader
              msg[7] === 0x23 && msg[8] === 17 || // LPProMK3 Bootloader
              msg[7] === 0x51 && versionStr === "000" // LPPro Bootloader
          ) {
            flash(output);
          }
        }
      });

      output.sendSysex([], [0x7E, 0x7F, 0x06, 0x01])
    }

    for (var iI = 0; iI < WebMidi.inputs.length; iI++)
      for (var oI = 0; oI < WebMidi.outputs.length; oI++)
        if (portsMatch(WebMidi.inputs[iI].name, WebMidi.outputs[oI].name))
          identify(WebMidi.inputs[iI], WebMidi.outputs[oI]);
  },
  
  downloadFirmware: async args => {
    var fw = await patchFirmware(args)
    
    if (fw === null) return;
    
    saveAs(new Blob([fw.buffer]), "output.syx");
  }
}