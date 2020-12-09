import Vue from 'vue';
import App from './App.vue';
import router from './router';
import store from './store';
import axios from "axios";
import qs from 'qs';
import moment from 'moment';
import 'jquery';

// 引入elementUI组件
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
Vue.use(ElementUI);

// 引入bootstrap
import 'bootstrap/dist/css/bootstrap.min.css'
import 'bootstrap/dist/js/bootstrap.min.js'
import 'jquery/dist/jquery.min.js'

// 引入插件
import 'font-awesome/css/font-awesome.min.css'
import './assets/css/style.css'
import './assets/css/animate.css'
import './assets/css/themify-icons.css'
import './assets/css/responsive.css'

// new Vue()前引入页头组件，变成全局组件
import Myheader from "./components/Myheader.vue"
Vue.component("my-header",Myheader)
// new vue()后引入页面底部公共文件，变成全局组件
import Myfooter from "./components/Myfooter.vue"
Vue.component("my-footer",Myfooter)

// 发送请求端口
axios.defaults.baseURL="http://127.0.0.1:3000"
// 引入moment组件
Vue.prototype.moment=moment;
Vue.prototype.axios=axios;
Vue.prototype.qs=qs;
Vue.config.productionTip = false;

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
