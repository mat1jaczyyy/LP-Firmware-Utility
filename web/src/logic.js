import WebMidi from "webmidi"
import { lpPorts, errorCodes } from "./constants"
import { saveAs } from 'file-saver'

var outputPort = null

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

function patchFirmware(args) {
  try {
    window.Module._patch_firmware()
    console.log(FS.readFile("firmware/output.syx"))
  } catch (e) {
    console.log("Firmware patching failed with status code " + e.status)
    return null
  }
  return FS.readFile("firmware/output.syx")
}