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
      button(:disabled="!launchpadConnected" @click="finish('flash')") flash
      button(@click="finish('download')") download

  .notice(:class="{ hidden: !displayNotice }")
    span {{ noticeText }}
    i.material-icons.close(@click="displayNotice = false" v-show="noticeDismissable") close
    progress(v-if="progress")
  .feet
    span &copy; mat & vaaski & more people ok
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
    launchpadConnected: false,
    displayNotice: false,
    noticeDismissable: true,
    noticeText: "Download Chrome you dumb bitch",
    error: null,
    portIndex: null,
    progress: false,
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
      self.notice("Please use a browser with WebAssembly support.", false)
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
    notice(t = "mat stinky", dismissable = true) {
      this.noticeText = t
      this.displayNotice = true
      this.noticeDismissable = dismissable
      return b => (this.displayNotice = b)
    },
    finish(type) {
      console.log("stinky")
      const { options, selectedLp } = this

      if (type === "flash")
        logic.flashFirmware({
          type,
          selectedLp,
          options,
        })
      else if (type === "download")
        logic.downloadFirmware({
          type,
          selectedLp,
          options,
        })
    },
    setError(val) {
      this.error = val
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
    height: 200px
    opacity: 1
    transition: 1s cubic-bezier(0.77, 0, 0.175, 1)
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
      font-size: 1.2em

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
    font-size: 1.2em
    text-transform: uppercase
    font-weight: bold

    &:disabled
      opacity: 0.5

  .notice
    margin: 16px 0
    height: 32px
    display: flex
    justify-content: center
    align-items: center
    transition: 1s cubic-bezier(0.77, 0, 0.175, 1)
    opacity: 1
    overflow: hidden

    span
      font-size: 1.5em

    i.close
      margin-left: 0.5em
      opacity: 0.75
      cursor: pointer

    &.hidden
      height: 0
      margin: 0
      opacity: 0

  .feet
    position: absolute
    bottom: 8px

    span
      opacity: 0.25

    a
      margin-left: 8px
      color: #FFF
      opacity: 0.4865126587
</style>