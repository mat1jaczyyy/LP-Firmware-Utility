<template lang="pug">
.lpxfwt
  .header
    h1 LPX FWT
  .inner(:class="{ hidden: displayNotice }")
    .launchpads
      select(v-model="selectedLp")
        option(v-for="lp in lpModels" :value="lp") {{ lp }}

    .options
      .option(v-for="option in lpOptions[selectedLp]")
        input(type="checkbox" v-model="options[option]")
        span {{ option }}

    .finish
      button(:disabled="!midiAvailable" @click="finish('flash')" v-tooltip.bottom="'Please use a browser with WebMIDI support.'") flash
      button(@click="finish('download')") download

    .smol(:style="{ visibility: (isWindows? 'visible' : 'hidden') }")
      span Don't forget to install
      a(href="https://github.com/mat1jaczyyy/apollo-studio/raw/master/Publish/nvnusbaudio-2.15.5.exe" target="_blank") Novation's USB driver
      span !

  .notice(:class="{ hidden: !displayNotice }")
    div
      span {{ noticeText }}
      i.material-icons.close(@click="clearNotice()" v-show="noticeDismissable") close
    .progressDiv
      progress

  .feet
    span built by Brendonovich, mat1jaczyyy, vaaski &copy;
    a(href="https://github.com/mat1jaczyyy/LPX-FirmwareTool" target="_blank") github
</template>

<script>
import WebMidi from "webmidi"
import { errorCodes, lpModels, lpOptions } from "./constants"
import logic from "./logic"

export default {
  name: "lpx-fwt",
  data: () => ({
    lpModels,
    lpOptions,
    selectedLp: lpModels[0],
    options: {},
    midiAvailable: false,
    displayNotice: false,
    noticeDismissable: true,
    noticeText: "",
    noticeCallback: null,
    isWindows: false
  }),
  created() {
    const self = this
    self.options = {}
    lpOptions[self.selectedLp].forEach(op => {
      self.options[op] = false
    })
    logic.initializeMidi()
    window.notice = this.notice

    const webAss = (() => {
      try {
        if (
          typeof WebAssembly === "object" &&
          typeof WebAssembly.instantiate === "function"
        ) {
          const module = new WebAssembly.Module(
            Uint8Array.of(0x0, 0x61, 0x73, 0x6d, 0x01, 0x00, 0x00, 0x00)
          )
          if (module instanceof WebAssembly.Module)
            return (
              new WebAssembly.Instance(module) instanceof WebAssembly.Instance
            )
        }
      } catch (e) {}
      return false
    })()
    if (!webAss)
      self.showNotice("Please use a browser with WebAssembly support.", false)
      
    WebMidi.enable(err => {
      if (self.midiAvailable = !!!err)
        for (const i of document.styleSheets)
          try {
            for (const j of i.rules)
              if (j.selectorText === ".tooltip") {
                i.insertRule(".tooltip { visibility: hidden !important; }")
                return;
              }
          } catch {}
    }, true)

    self.isWindows = window.navigator.appVersion.indexOf('Win') !== -1;
  },
  watch: {
    selectedLp(n, o) {
      const self = this
      self.options = {}
      lpOptions[self.selectedLp].forEach(op => {
        self.options[op] = false
      })
    },
  },
  mounted() {
    // for debugging
    window.vue = this
  },
  methods: {
    finish(type) {
      const { options, selectedLp } = this

      if (type === "flash")
        logic.flashFirmware({
          type,
          selectedLp,
          options,
          showNotice: this.showNotice,
          clearNotice: this.clearNotice
        })
      else if (type === "download")
        logic.downloadFirmware({
          type,
          selectedLp,
          options,
        })
    },
    clearNotice(){
      this.displayNotice = false;
      this.noticeText = null;
      
      if (this.noticeCallback !== null) this.noticeCallback()
      this.noticeCallback = null;
    },
    showNotice(notice, dismissable = false, callback = null) {
      if (this.displayNotice) this.clearNotice();
      this.noticeText = notice;
      this.noticeDismissable = dismissable;
      this.displayNotice = true;
      this.noticeCallback = callback;
    }
  },
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
  flex-direction: column

  .inner
    flex-direction: column
    display: flex
    justify-content: center
    align-items: center
    height: 220px
    opacity: 1
    transition: 0.8s cubic-bezier(0.77, 0, 0.175, 1)
    overflow: hidden

    &.hidden
      height: 0
      margin: 0
      opacity: 0

    select
      background: #212121
      color: #FFF
      padding: 8px
      border: none
      font-size: 1.3em

  .options
    width: 100%
    margin: 16px 0

    .option
      display: flex
      align-items: center
      margin: 4px 0

  .finish button
    margin: 0 4px
    background: #212121
    border: none
    color: #FFF
    padding: 8px 16px
    cursor: pointer
    font-size: 1.3em
    text-transform: uppercase
    font-weight: bold

    &:disabled
      opacity: 0.5

  .notice
    padding: 16px 0
    height: 32px
    display: flex
    flex-direction: column
    justify-content: center
    align-items: center
    transition: 1s cubic-bezier(0.77, 0, 0.175, 1)
    opacity: 1
    overflow: hidden

    span
      font-size: 1.6em

    i.close
      margin-left: 0.5em
      opacity: 0.75
      cursor: pointer

    &.hidden
      height: 0
      margin: 0
      opacity: 0
      
  .progressDiv
    margin-top: 10px    

  .smol
    margin-top: 15px
    font-size: 0.6em

    span
      opacity: 0.25

    a
      margin-left: 8px
      color: #FFF
      opacity: 0.4865126587

  .feet
    position: absolute
    bottom: 8px

    span
      opacity: 0.25

    a
      margin-left: 8px
      color: #FFF
      opacity: 0.4865126587
  
.tooltip
  display: block !important;
  z-index: 10000;

  .tooltip-inner
    background: #0E0E0E;
    color: white;
    border-radius: 16px;
    padding: 5px 10px 4px;

  .tooltip-arrow
    width: 0;
    height: 0;
    border-style: solid;
    position: absolute;
    margin: 5px;
    border-color: #0E0E0E;
    z-index: 1;

.tooltip[x-placement^="bottom"]
  margin-top: 5px;

  .tooltip-arrow
    border-width: 0 5px 5px 5px;
    border-left-color: transparent !important;
    border-right-color: transparent !important;
    border-top-color: transparent !important;
    top: -5px;
    left: calc(50% - 5px);
    margin-top: 0;
    margin-bottom: 0;

.tooltip[aria-hidden='true']
  visibility: hidden;
  opacity: 0;
  transition: opacity .15s, visibility .15s;

.tooltip[aria-hidden='false']
  visibility: visible;
  opacity: 1;
  transition: opacity .15s;
</style>