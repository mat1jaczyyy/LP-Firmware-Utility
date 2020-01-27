import Vue from "vue"
import App from "./lpx-fwt.vue"
// import "./registerServiceWorker"'

Vue.config.productionTip = false

new Vue({
  render: function(h) {
    return h(App)
  },
}).$mount("#app")
