import Vue from "vue"
import VTooltip from 'v-tooltip'

Vue.use(VTooltip);

import App from "./lpx-fwt.vue"
// import "./registerServiceWorker"'

Vue.config.productionTip = false

new Vue({
  render: function(h) {
    return h(App)
  },
}).$mount("#app")
