import Vue from 'vue'
import Router from 'vue-router'
import Index from './components/Index.vue'
import Footer from './components/Footer.vue'
import Header from './components/Header.vue'
import Nav from './components/Nav.vue'
import List from './components/List.vue'
import Detail from './components/Detail.vue'
import Login from './components/Login.vue'
import Reg from './components/Reg.vue'
import Carousel from './components/Carousel.vue'
Vue.use(Router)

export default new Router({
  routes: [
    { path: '/', name:"Index", component: Index },
    { path: '/Footer', component: Footer },
    { path: '/Header', component: Header },
    { path: '/Nav', component: Nav },
    { path: '/List', component: List },
    { path: '/Detail', component: Detail },
    { path: '/Login', component: Login },
    { path: '/Reg', component: Reg },
    { path: '/Carousel', component: Carousel },
  ]
})
