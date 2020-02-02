import Vue from "vue"
import VTooltip from "v-tooltip"

Vue.use(VTooltip)

import App from "./lp-firmware-utility.vue"
// import "./registerServiceWorker"'

Vue.config.productionTip = false

new Vue({
  render: function(h) {
    return h(App)
  },
}).$mount("#app")
