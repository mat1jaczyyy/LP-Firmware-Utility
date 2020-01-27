
<template lang="pug">
.lpxfwt
  .inner
    .launchpads
      select(v-model="selectedLp")
        option(v-for="lp in lpModels" :value="lp") {{ lp }}
    .options
      .option(v-for="option in lpOptions[selectedLp]")
        input(type="checkbox" v-model="options[option]")
        span {{ option }}
    .finish
      button(@click="finish('flash')") flash
      button(@click="finish('download')") download
</template>

<script>
import WebMidi from "webmidi"
import { lpPorts, errorCodes, lpModels, lpOptions } from "./constants"
import axios from "axios";

export default {
  name: "lpx-fwt",
  data: () => ({
    lpModels,
    lpOptions,
    selectedLp: lpModels[0],
    options: {},
    error: null,
    portIndex: null
  }),
  created() {
    const self = this
    self.options = {}
    lpOptions[self.selectedLp].forEach(op => {
      self.options[op] = false
    })
    self.initializeMidi(() => self.updateDevices());
  },
  watch: {
    selectedLp(n, o) {
      const self = this
      self.options = {}
      lpOptions[self.selectedLp].forEach(op => {
        self.options[op] = false
      })
      
      self.error = self.typeChanged(self.selectedLp)
    }
  },
  mounted() {
    // for debugging
    window.vue = this
  },
  methods: {
    finish(type) {
      const { options, selectedLp } = this

      if(type === "flash")
        this.flashFirmware({
          type,
          selectedLp,
          options,
        })
      else if(type === "download")      
        this.downloadFirmware({
          type, 
          selectedLp, 
          options
        })
    },
    initializeMidi: (callback) => WebMidi.enable(err => {
        if(err){ 
          return errorCodes.MIDI_UNSUPPORTED
        } else {
          WebMidi.addListener("connected", callback)
          WebMidi.addListener("disconnected", callback)
        }
      }, true),
    updateDevices: () => {
      var outputIndex = null;
      WebMidi.outputs.forEach((output, index) => {
        var didFindPort = false;
        Object.keys(lpPorts).forEach(portName => {
          if(output.name.includes(portName)){
            didFindPort = true;
            
            if(didFindPort && !!outputIndex){
              return errorCodes.MULTIPLE_DEVICES
            }
            else {
              outputIndex = index
            }
          }
        })
        
        if(outputIndex === null) return errorCodes.NO_DEVICE
        else self.portIndex = outputIndex
      })
    },
    typeChanged: (type) => {
      if(!self.portIndex) return errorCodes.NO_DEVICE;
      
      const keys = Object.keys(lpPorts);
      for(var i = 0; i < keys.length; i++){
        if(!WebMidi.outputs[portIndex].name.includes(keys[i]) || lpPorts[keys[i]] !== type) 
          return errorCodes.SELECTION_NOT_FOUND
      }
    },
    flashFirmware: args => {
      // try{
      //   window.Module._patch_firmware()
      // } catch (e){
      //   console.log("Firmware patching failed with status code " + e.status)
      //   return;
      // }
      
      // var fwBuffer;
      // try {
      //   fwBuffer = FS.readFile("firmware/output.syx")
      // } catch (e){
      //   console.log("Firmware file not found!")
      //   return;
      // }
      
      switch(args.selectedLp){
        case "Launchpad Pro":
          axios.get(
            "https://api.github.com/repos/mat1jaczyyy/lpp-performance-cfw/contents/build/cfw.syx"
          ).then(response => {
            const str = atob(response.data.content)
            var len = str.length;
            
            var fwBuffer = new Uint8Array(len)
            
            for(var i = 0; i < len; i++){
              fwBuffer[i] = str.charCodeAt(i);
            }
        
            var messages = []
            var currentMessage = []
            
            fwBuffer.forEach(byte => {
              if(byte === 0xF0){}
              else if(byte === 0xF7){
                messages.push(currentMessage)
                currentMessage = []
              } else currentMessage.push(byte)
            })
            
            messages.forEach(message => {
              WebMidi.outputs[portIndex].sendSysex([], message);
            })
          }
        )
      }
    }
  }
}
</script>

<style lang="stylus">
body, html
  margin: 0
  background: #191919
  color: #fff
  font-family: "Roboto Mono"
  user-select: none

@font-face
  font-family: "Roboto Mono"
  src: url("./assets/RobotoMono-Regular.ttf")

.lpxfwt
  height: 100vh
  width: 100vw
  display: flex
  justify-content: center
  align-items: center

  .inner
    flex-direction: column
    display: flex
    justify-content: center
    align-items: center

    select
      background: #212121
      color: #FFF
      padding: 8px
      border: none

  .options
    width: 100%
    margin: 8px 0

    .option
      display: flex
      align-items: center
      margin: 4px 0

      span
        font-size: 0.8em

  .finish
    button
      margin: 0 4px
      background: #212121
      border: none
      color: #FFF
      padding: 8px 16px
      cursor: pointer
</style>