import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'
import router from '../router'
import { MessageBox } from 'element-ui';

Vue.use(Vuex)

export default new Vuex.Store({
    // 各个页面的共享状态
    state: {
        // 用户登录状态:1——已登录，0——未登录
        // islogin: localStorage.getItem('islogin') || 0,
        //存储登录用户的相关信息
        userInfo: JSON.parse(localStorage.getItem('userInfo')) || {},
        // 购物车商品
        // productlist: []
    },
    // 修改state中共享状态的操作方法
    mutations: {
        // 登录状态
        login_mutations(state, payload) {
            // 修改登录的状态为1
            // state.islogin == 1;
            state.userInfo = payload;
        },
        // 注销状态
        logout_mutations(state) {
            // 修改登录状态为0
            // state.islogin == 0;
            // 修改登录用户的相关信息为空对象
            state.userInfo = {};
            // 退出登录后跳转到首页
            // router.push('/');
        },
        // 添加商品
        // payload称为载荷,实际上就是需要传递的额外的参数,可以为任意数据类型
        // addproduct_mutations(state, payload) {
        //     state.productlist.push(payload);
        // }
    },
    actions: {
        // 用户登录异步请求
        //context参数代表当前store内的所有state、getters、mutations及actions
        login_actions(context, payload) {
            //向服务器发送异步请求
            axios.post('/login', payload).then(res => {
                if (res.data.code == 1) {
                    // 提交mutations
                    context.commit('login_mutations', res.data.userInfo);
                    //将用户的登录状态保存到webstorage中
                    // localStorage.setItem('islogin', 1);
                    localStorage.setItem('userInfo', JSON.stringify(res.data.userInfo));
                    // 登录成功后页面跳转到首页
                    router.push('/');
                } else {
                    this.$message.error("登录失败");
                }
            });
        },

        // 添加商品异步请求
        // addproduct_action(context, payload) {
        //     // 向服务器发送异步请求
        //     // 将数据添加到数据库
        //     axios.get('/addproduct', payload).then(res => {
        //         if (res.data.code == 1) {
        //             // 提交mutations
        //             context.commit('addproduct_mutations', res.data.results);
        //             // 将商品数据保存到localstorage中
        //             // webstorage键值只能是字符串
        //             localStorage.setItem('productlist', JSON.stringify(res.data.results));
        //             // 提示添加商品状态
        //             MessageBox('添加成功')
        //         }
        //     })
        // }
    },
    modules: {
    }
})
