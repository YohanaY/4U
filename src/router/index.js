import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'

// 引入登录界面
import Login from '../views/Login.vue'
// 注册页面
import Register from '../views/Register.vue'
// 我的账户页面
import Myacount from '../views/Myacount.vue'
// 所有鲜花页面
import Shop from '../views/Shop.vue'
// 详情页
import Details from '../views/Details.vue'
// 购物车
import Cart from '../views/Cart.vue'
// 产地介绍
import Place from '../views/Place.vue'
// 404页面
import Notfind from '../views/Notfind.vue'

Vue.use(VueRouter)

const routes = [
  // 产地介绍路由
  {
    path: '/place',
    component: Place
  },
  // 购物车路由
  {
    path: '/cart',
    component: Cart
  },
  // 商品详情页
  {
    path: '/details/:pid',
    component: Details
  },
  // 鲜花路由
  {
    path: '/shop',
    component: Shop
  },
  // 我的账户路由
  {
    path: '/myacount',
    component: Myacount
  },
  // 注册路由
  {
    path: '/register',
    component: Register
  },
  // 登录路由
  {
    path: '/login',
    component: Login
  },
  // 首页路由
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  // 关于路由
  {
    path: '/about',
    name: 'About',
    component: () => import('../views/About.vue')
  },
  // 404路由
  {
    path: '/*',
    component: Notfind
  }
]

const router = new VueRouter({
  mode: 'history',
  // base: process.env.BASE_URL,
  routes
})

export default router
