import WebMidi from "webmidi"
import { lpModels, errorCodes } from "./constants"
import { saveAs } from 'file-saver'
import axios from "axios";

var outputPort = null
var outputType = null;

const deviceInquiry = [0x7E, 0x7F, 0x06, 0x01]

const downloadCFW = async() => {
  var response = await axios.get("https://api.github.com/repos/mat1jaczyyy/lpp-performance-cfw/contents/build/cfw.syx");

  return new Uint8Array(atob(response.data.content).split('').map(c => c.charCodeAt(0)));;
}

var wasmPatch = Module.cwrap("patch_firmware", null, ["number", "array"])

const patchFirmware = async(args) => {
  try {
    if (args.selectedLp.includes("CFW")) return await downloadCFW();

    wasmPatch(
      lpModels.indexOf(args.selectedLp),
      Object.values(args.options)
    );

    console.log(FS.readFile("firmware/output.syx"))

  } catch (e) {
    console.log("Firmware deploy failed with status code " + e.status + " " + e.message)
    return null
  }

  return FS.readFile("firmware/output.syx")
}

const portsMatch = (input, output)
            => input.ToUpperCase().Replace("IN", "").Replace("OUT", "") === output.ToUpperCase().Replace("IN", "").Replace("OUT", "");


const waitForIdentification = (e, setError) => {
  if(e.data.length != 17) return;
  
  var msg = e.data.slice(1, e.data.length - 1);
  
  if(msg[4] === 0x00 && msg[5] === 0x20 && msg[6] === 0x29){
    const versionStr = msg.slice(msg.length - 3).reduce((prev, current) => ("" + prev) + current)
    
    switch(msg[7]){
      case 0x51:
        if(versionStr === "000") // LP Pro Bootlaoder
          setError(setOutput(e.target.name))
          outputType = lpModels[3]
        break;
      case 0x03:
        if(msg[8] === 17) // LPX Bootloader
          setError(setOutput(e.target.name))
          outputType = lpModels[0]
        break;
      case 0x13:
        if(msg[8] === 17) // LP Mini Bootloader
          setError(setOutput(e.target.name))
          outputType = lpModels[1]
        break;
    }
  }
}

const setOutput = (name) => {
  if(!outputPort){
    outputPort = WebMidi.outputs.find((output) => output.name === name)
    return null
  }
  else return errorCodes.MULTIPLE_DEVICES
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
  updateDevices: setError => {
    for(var iI = 0; iI < WebMidi.inputs.length; iI++){
      for(var oI = 0; oI < WebMidi.outputs.length; oI++){
        if(portsMatch(WebMidi.inputs[iI].name, WebMidi.outputs[oI].name)){
          WebMidi.inputs[iI].addListener("sysex", "all", (e) => waitForIdentification(e, setError))
          WebMidi.outputs[oI].sendSysex([], deviceInquiry);
        }
      }
    }
  },
  typeChanged: type => {
    if(!outputPort) return errorCodes.NO_DEVICE;
    
    if(outputType === type) return;
		
		return errorCodes.SELECTION_NOT_FOUND
  },
  flashFirmware: async args => {
    var fw = await patchFirmware(args)
    
    if (fw === null) return;
    if (outputPort === null) return;

    var messages = []
    var currentMessage = []
    
    fw.forEach(byte => {
      if(byte === 0xF0){}
      else if(byte === 0xF7){
        messages.push(currentMessage)
        currentMessage = []
      } else currentMessage.push(byte)
    })
    
    messages.forEach(message => {
      outputPort.sendSysex([], message);
    })
  },
  downloadFirmware: async args => {
    var fw = await patchFirmware(args)
    
    if (fw === null) return;
    
    saveAs(new Blob([fw.buffer]), "output.syx");
  }
}