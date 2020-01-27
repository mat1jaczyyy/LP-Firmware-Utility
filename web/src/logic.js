import WebMidi from "webmidi"
import { lpModels, lpPorts, errorCodes } from "./constants"
import { saveAs } from 'file-saver'

var outputPort = null

var wasmPatch = Module.cwrap("patch_firmware", null, ["number", "number", "array"])

function patchFirmware(args) {
  try {
    var patches = Object.values(args.options)
    
    wasmPatch(lpModels.indexOf(args.selectedLp), patches.length, patches);

    console.log(FS.readFile("firmware/output.syx"))

  } catch (e) {
    console.log("Firmware patching failed with status code " + e.status + e.message)
    return null
  }

  return FS.readFile("firmware/output.syx")
}

export default {
  initializeMidi: callback => {
    WebMidi.enable(err => {
      if(err){ 
        return errorCodes.MIDI_UNSUPPORTED
      } else {
        WebMidi.addListener("connected", callback)
        WebMidi.addListener("disconnected", callback)
      }
    }, true)
  },
  updateDevices: () => {
    WebMidi.outputs.forEach(output => {
      var didFindPort = false;
      Object.keys(lpPorts).forEach(portName => {
        if(output.name.includes(portName)){
          didFindPort = true;
          
          if(didFindPort && !!outputPort){
            return errorCodes.MULTIPLE_DEVICES
          }
          else outputPort = output
        }
      })
      
      if(outputPort = null) return errorCodes.NO_DEVICE
      else return null;
    })
  },
  typeChanged: type => {
    if(!outputPort) return errorCodes.NO_DEVICE;
    
    const keys = Object.keys(lpPorts);
    if(!outputPort.name.includes(keys[i]) || lpPorts[keys[i]] !== type) 
      return errorCodes.SELECTION_NOT_FOUND
  },
  flashFirmware: args => {
    var fw = patchFirmware(args)
  },
  downloadFirmware: args => {
    var fw = patchFirmware(args)
    
    if (fw != null) {
      saveAs(new Blob([fw.buffer]), "output.syx");
    }
  }
}