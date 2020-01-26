<template lang="pug">
.lpxfwt
  .inner
    .launchpads
      select(v-model="selectedLp")
        option(v-for="lp in launchpad.launchpads") {{ lp }}
    .options
      .option(v-for="option in launchpad.options")
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
    selectedLp: launchpad.launchpads[0],
    options: {},
  }),
  created() {
    const self = this
    launchpad.options.forEach(o => (self.options[o] = false))
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

  .launchpads
    margin: 8px 0

  .options
    width: 100%

    .option
      display: flex
      align-items: center
      margin: 4px 0

  .finish
    button
      margin: 0 4px
</style>