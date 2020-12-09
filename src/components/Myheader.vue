<template>
  <div class="myheader">
    <!-- 顶部导航开始 -->
    <div class="">
      <nav class="navbar navbar-area navbar-expand-lg">
        <div class="container-fluid nav-container">
          <div class="">
            <div class="logo-wrapper">
              <a href="#" class="logo">
                <img src="../assets/img/logo.png" alt="logo" />
              </a>
            </div>
          </div>
          <div class="collapse navbar-collapse">
            <ul class="navbar-nav">
              <li>
                <router-link to="/">首页</router-link>
              </li>
              <li>
                <router-link to="/shop">鲜花</router-link>
              </li>
              <li>
                <router-link to="#">永生花</router-link>
              </li>
              <li><router-link to="/about">关于我们</router-link></li>
              <li><router-link to="/place">产地介绍</router-link></li>
              <li>
                <router-link to="/cart"
                  ><i class="ti-shopping-cart"></i
                ></router-link>
              </li>
              <li>
                <router-link to="#"><i class="ti-search"></i></router-link>
              </li>
            </ul>
          </div>
          <!-- 登录后 -->
          <div class="nav-right-content" v-if="this.$store.state.userInfo.username">
            <ul>
              <li>
                <span class="mr-3">{{ this.$store.state.userInfo.username }}</span>
                <span @click="logout">注销</span>
              </li>
             
            </ul>
          </div>
          <!-- 登录前 -->
          <div class="nav-right-content" v-else>
            <ul>
              <li><router-link to="/login">登录</router-link></li>
              <li><router-link to="/register">注册</router-link></li>
            </ul>
          </div>
        </div>
      </nav>
    </div>
    <!-- 顶部导航结束 -->
  </div>
</template> 

<script>
export default {
  data() {
    return {
      
    };
  },
  methods: {
    // 用户注销
    logout() {
      this.$store.commit("logout_mutations");
      localStorage.clear();
    },
  },
};
</script>
