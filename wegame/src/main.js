import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
import moment from 'moment'

Vue.use(ElementUI);

import axios from "axios"
axios.defaults.baseURL = "http://127.0.0.1:3000/"
axios.defaults.withCredentials = true
Vue.prototype.axios = axios

Vue.config.productionTip = false

Vue.filter('time', function (value, formatString) {
  formatString = formatString || 'YYYY-MM-DD';
  return moment(value).format(formatString);
})

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
