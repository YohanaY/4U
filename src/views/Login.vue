<template>
  <div class="login">
    <!-- 登录标题开始 -->
    <div class="breadcrumb-area">
      <div class="container">
        <div class="breadcrumb-inner text-center">
          <h1>登录</h1>
        </div>
      </div>
    </div>
    <!-- 登录标题结束 -->

    <!-- 登录信息开始 -->
    <div class="container">
      <div class="row custom-gutter">
        <!-- 登录信息图片 -->
        <div class="col mr-5">
          <div class="text-right">
            <div class="img-shape">
              <img src="../assets/img/others/sign-up-2.png" alt="" />
            </div>
          </div>
        </div>
        <!-- 登录表单信息 -->
        <div class="col section-area-right">
          <div class="section-title-area">
            <div class="section-title section-title-2">
              <div class="icon">
                <img src="../assets/img/icon/title.svg" alt="Bloom" />
              </div>
              <div class="title-text">
                <h1>登录</h1>
              </div>
            </div>
          </div>
          <label>用户名*</label><br />
          <input
            type="text"
            placeholder="请输入用户名"
            v-model="username"
          /><br /><br />
          <label>密码*</label><br />
          <input type="password" placeholder="请输入密码" v-model="pwd" /><br />
          <div class="btn-wrapper mt-5">
            <button class="boxed-btn btn-rounded" @click="login">登录</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<style scoped>
.breadcrumb-area {
  position: relative;
  padding: 50px 0;
  background-image: url(../assets/img/bg/breadcrumb/1.jpg);
}
.breadcrumb-inner {
  padding: 70px 60px 80px;
  background-color: #bd6f51;
}
.breadcrumb-inner h1 {
  color: #fff;
}
input[type="password"] {
  font-size: 16px;
}
</style>
<script>
export default {
  data() {
    return {
      username: "",
      pwd: "",
    };
  },
  methods: {
    // 单击登录校验登录表单
    login() {
      let username = this.username;
      let pwd = this.pwd;
      let str = "username=" + this.username + "&pwd=" + this.pwd;
      this.$store.dispatch("login_actions", str);
    },
  },
};
</script>
    