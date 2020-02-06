<template lang="pug">
.lp-firmware-utility
  .inner(:class="{ hidden: displayNotice }")
    .header
      p Launchpad Firmware Utility

    .launchpads
      select(v-model="selectedLp")
        option(v-for="lp in lpModels" :value="lp") {{ lp }}

    .options
      .option(v-for="(subOptions, option, optionIndex) in lpOptions[selectedLp]")
        .mainOption(:class="{ hidden: selectedLp === 'Launchpad X' && konamiSuccess === false && option === 'Rename Live mode to Gay mode'}")
          input(type="checkbox" v-model="options[option]")
          span {{ option }}
        .subOption(v-for="(subOption, subIndex) in subOptions" :style="{paddingLeft: '20px'}")
          input(type="checkbox" v-model="options[subOption]" :disabled="(options[option] === false)")
          span {{ subOption }}

    .finish
      button(:disabled="!midiAvailable" @click="finish('flash')" v-tooltip.bottom="'Please use a browser with WebMIDI support.'") update
      a(@click="finish('download')" :style="{cursor: 'pointer', fontSize: '15px', opacity: '0.25', textDecoration: 'underline'}") download
    input(type="file" accept=".syx" ref="file" :style="{display: 'none'}" @change="uploadFirmware($event.target.files[0])")    

    .smol(:style="{ visibility: (isWindows? 'visible' : 'hidden') }")
      span Don't forget to install
      a(href="https://github.com/mat1jaczyyy/apollo-studio/raw/master/Publish/nvnusbaudio-2.15.5.exe" target="_blank") Novation's USB driver
      span !

  .notice(:class="{ hidden: !displayNotice }")
    div
      span {{ noticeText }}
      i.material-icons.close(@click="clearNotice()" v-show="noticeDismissable" :style="{ visibility: (displayNotice? 'visible' : 'hidden') }") close

    img(:src="noticeSvg" :style="{margin: (noticeSvg !== null? '50px 0' : '0'), visibility: (noticeSvg !== null? 'visible' : 'hidden')}")

    span(:style="{visibility: (noticeSvg !== null? 'visible' : 'hidden')}") {{ noticeBL }}

    .progressDiv(:style="{visibility: (showNoticeProgress? 'visible' : 'hidden')}")
      progress(:style="{ visibility: ((displayNotice && showNoticeProgress)? 'visible' : 'hidden') }")

  .feet
    span built by Brendonovich, mat1jaczyyy, vaaski &copy;
    a(href="https://github.com/mat1jaczyyy/LP-Firmware-Utility" target="_blank") github
</template>

<script>
import WebMidi from "webmidi"
import { errorCodes, lpModels, lpOptions, konamiSequence } from "./constants"
import logic from "./logic"

export default {
  name: "lp-firmware-utility",
  data: () => ({
    lpModels,
    lpOptions,
    selectedLp: null,
    options: {},
    midiAvailable: false,
    displayNotice: false,
    noticeDismissable: true,
    noticeText: "",
    noticeSvg: null,
    noticeBL: "",
    noticeCallback: null,
    showNoticeProgress: true,
    isWindows: false,
    konamiCounter: 0,
    konamiSuccess: false,
  }),
  created() {
    this.selectedLp = lpModels[0]
    logic.initializeMidi()
    window.notice = this.notice

    const konamiHandler = e => {
      if (this.konamiSuccess) return

      if (e.keyCode === konamiSequence[this.konamiCounter]) {
        this.konamiCounter++
        if (this.konamiCounter === konamiSequence.length) {
          this.konamiSuccess = true
          lpModels.push("Custom SysEx File")
        }
      } else this.konamiCounter = 0
    }

    window.addEventListener("keydown", konamiHandler)

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
      this.showNotice("Please use a browser with WebAssembly support.", false)

    WebMidi.enable(err => {
      if ((this.midiAvailable = !!!err))
        for (const i of document.styleSheets)
          try {
            for (const j of i.rules)
              if (j.selectorText === ".tooltip") {
                i.insertRule(".tooltip { visibility: hidden !important; }")
                return
              }
          } catch {}
    }, true)

    this.isWindows = window.navigator.platform.indexOf("Win") !== -1
  },
  watch: {
    selectedLp(n, o) {
      const self = this
      self.options = {}
      if (self.selectedLp === "Custom SysEx File") {
        self.selectedLp = o
        self.$refs.file.click()
      } else {
        Object.keys(lpOptions[self.selectedLp]).forEach(op => {
          self.$set(self.options, op, false)
          lpOptions[self.selectedLp][op].forEach(subOp => {
            self.$set(self.options, subOp, false)
          })
        })
      }
    },
  },
  mounted() {
    // for debugging
    window.vue = this
  },
  methods: {
    finish(type) {
      const { options, selectedLp } = this

      if (type === "flash") {
        if (
          !logic.flashFirmware({
            selectedLp,
            options,
            showNotice: this.showNotice,
            clearNotice: this.clearNotice,
          })
        )
          this.showNotice(
            "Firmware flashing failed. Please try again.",
            true,
            false
          )
      } else if (type === "download") {
        if (
          !logic.downloadFirmware({
            selectedLp,
            options,
          })
        )
          this.showNotice(
            "Firmware download failed. Please try again.",
            true,
            false
          )
      }
    },
    clearNotice() {
      this.displayNotice = false
      this.noticeText = null
      this.noticeSvg = null

      if (this.noticeCallback !== null) this.noticeCallback()
      this.noticeCallback = null
    },
    showNotice(
      notice,
      dismissable = false,
      callback = null,
      svg = null,
      bl = null,
      progres = true
    ) {
      if (this.displayNotice) this.clearNotice()
      this.noticeText = notice
      this.noticeSvg = svg === null ? null : "./svg/" + svg + ".svg"
      this.noticeBL =
        bl === null
          ? ""
          : "You can enter the bootloader by holding " +
            bl +
            " while turning your Launchpad on."
      this.noticeDismissable = dismissable
      this.displayNotice = true
      this.noticeCallback = callback
      this.showNoticeProgress = progres
    },
    uploadFirmware(file) {
      const { options, selectedLp } = this

      if (file === undefined || file === null) return

      file
        .arrayBuffer()
        .then(ret => {
          logic.flashFirmware({
            selectedLp,
            options,
            showNotice: this.showNotice,
            clearNotice: this.clearNotice,
            rawFW: new Uint8Array(ret),
          })
        })
        .catch(e => console.log(e))
    },
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

.lp-firmware-utility
  height: 100vh
  width: 100vw
  display: flex
  justify-content: center
  align-items: center
  flex-direction: column

  .header
    font-weight: bold
    font-size: 1.4em

  .inner
    flex-direction: column
    display: flex
    justify-content: center
    align-items: center
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
    width: auto
    margin: 16px 0

    .option
      display: flex
      align-items: left
      margin: 4px 0
      flex-direction: column

    .mainOption
      width: auto

      &.hidden
        height: 0
        margin: 0
        opacity: 0

  .finish
    padding-bottom: 10px
    display: flex
    flex-direction: column
    align-items: center

  button
    margin: 0 4px
    background: #212121
    border: none
    color: #FFF
    padding: 8px 16px
    cursor: pointer
    font-size: 1.3em
    text-transform: uppercase
    font-weight: bold
    margin-bottom: 10px

    &:disabled
      opacity: 0.5

  .notice
    padding: 16px 0
    display: flex
    flex-direction: column
    justify-content: center
    align-items: center
    text-align: center
    max-width: 900px
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
  display: block !important
  z-index: 10000

  .tooltip-inner
    background: #0E0E0E
    color: white
    border-radius: 16px
    padding: 5px 10px 4px

  .tooltip-arrow
    width: 0
    height: 0
    border-style: solid
    position: absolute
    margin: 5px
    border-color: #0E0E0E
    z-index: 1

.tooltip[x-placement^="bottom"]
  margin-top: 5px

  .tooltip-arrow
    border-width: 0 5px 5px 5px
    border-left-color: transparent !important
    border-right-color: transparent !important
    border-top-color: transparent !important
    top: -5px
    left: calc(50% - 5px)
    margin-top: 0
    margin-bottom: 0

.tooltip[aria-hidden="true"]
  visibility: hidden
  opacity: 0
  transition: opacity 0.15s, visibility 0.15s

.tooltip[aria-hidden="false"]
  visibility: visible
  opacity: 1
  transition: opacity 0.15s
</style>
