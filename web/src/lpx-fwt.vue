<template lang="pug">
.lpxfwt
  .inner
    .launchpads
      select(v-model="selectedLp")
        option(v-for="(lp, k) in launchpad.launchpads" :value="k") {{ lp.name }}
    .options
      .option(v-for="option in launchpad.launchpads[selectedLp].options")
        input(type="checkbox" v-model="options[option]")
        span {{ option }}
    .finish
      button(@click="finish('flash')") flash
      button(@click="finish('download')") download
</template>

<script>
import launchpad from "./launchpadStuff"
export default {
  name: "lpx-fwt",
  data: () => ({
    launchpad,
    selectedLp: 0,
    options: {},
  }),
  created() {
    const self = this
    self.options = {}
    launchpad.launchpads[self.selectedLp].options.forEach(op => {
      self.options[op] = false
    })
  },
  watch: {
    selectedLp(n, o) {
      const self = this
      self.options = {}
      launchpad.launchpads[self.selectedLp].options.forEach(op => {
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

      launchpad.callback({
        type,
        selectedLp,
        options,
      })
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

  .finish
    button
      margin: 0 4px
      background: #212121
      border: none
      color: #FFF
      padding: 8px 16px
      cursor: pointer
</style>