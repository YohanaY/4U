<template>
  <div class="register">
    <!-- 标题开始 -->
    <div class="breadcrumb-area">
      <div class="container">
        <div class="breadcrumb-inner text-center">
          <h1>注册</h1>
        </div>
      </div>
    </div>
    <!-- 标题结束 -->

    <!-- 注册信息开始 -->
    <div class="container">
      <div class="row custom-gutter">
        <!-- 注册信息表单 -->
        <div class="col">
          <div class="sign-up-inner">
            <!-- 信息标题 -->
            <div class="section-title-area">
              <div class="section-title section-title-2">
                <div class="icon">
                  <img src="../assets/img/icon/title.svg" alt="" />
                </div>
                <div class="title-text">
                  <h1>注册</h1>
                </div>
              </div>
            </div>
            <!-- 表单 -->
            <label>用户名*</label>
            <input
              type="text"
              placeholder="请输入用户名"
              v-model="username"
              @blur="checkusername"
            />
            <label>密码*</label>
            <input
              type="password"
              placeholder="请输入密码"
              v-model="pwd"
              @blur="checkpwd"
            />

            <label>确认密码*</label>
            <input
              type="password"
              placeholder="请确认两次密码保持一致"
              v-model="cpwd"
              @blur="checkcpwd"
            />
            <label>邮箱*</label>
            <input
              type="email"
              placeholder="请输入注册邮箱"
              v-model="email"
              @blur="checkemail"
            />
            <label>手机号码*</label>
            <input
              type="text"
              placeholder="请输入手机号码"
              v-model="phone"
              @blur="checkphone"
            />
            <label>真实姓名*</label>
            <input type="text" placeholder="请输入真实姓名" v-model="r_name" />
            <div class="btn-wrapper mt-5">
              <button
                class="boxed-btn btn-rounded"
                type="submit"
                @click="handle"
              >
                注册
              </button>
            </div>
          </div>
        </div>
        <!-- 注册信息图片 -->
        <div class="col ml-5 mt-5">
          <div class="text-right">
            <div class="img-shape">
              <img src="../assets/img/others/sign-up-1.png" alt="" />
            </div>
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
  font-size: 16px !important;
}
input[type="text"] {
  margin-bottom: 30px !important;
}
</style>

<script>
export default {
  data() {
    return {
      username: "",
      pwd: "",
      cpwd: "",
      email: "",
      phone: "",
      r_name: "",
    };
  },
  methods: {
    // 注册表单验证
    handle() {
      if (
        this.checkusername() &&
        this.checkpwd() &&
        this.checkcpwd() &&
        this.checkemail() &&
        this.checkphone()
      ) {
        // 发送用户名和密码到web服务器
        let object = {
          username: this.username,
          pwd: this.pwd,
          email:this.email,
          phone:this.phone,
          r_name:this.r_name
        };
        this.axios.post("/register", this.qs.stringify(object)).then((res) => {
          if (res.data.code == 1) {
            this.$message({
              message: "注册成功",
              type: "success",
            });
            this.$router.push("/");
          } else {
            this.$message.error("注册失败");
          }
        });
      }
    },
    // 正则验证
    // 用户名验证
    checkusername() {
      // 获取用户名
      let username = this.username;
      // 6-12位字母或数字和下划线的用户名
      let usernameReg = /^\w{6,12}$/;
      if (usernameReg.test(username)) {
        return true;
      } else {
        this.$message.error("用户名格式错误");
      }
      // 正则不通过则终止执行
      return false;
    },
    // 密码验证
    checkpwd() {
      let pwd = this.pwd;
      let pwdReg = /^[0-9A-Za-z\.\-_]{8,15}$/;
      if (pwdReg.test(pwd)) {
        return true;
      } else {
        this.$message.error("密码格式不正确");
      }
      return false;
    },
    // 确认密码验证
    checkcpwd() {
      let pwd = this.pwd;
      let cpwd = this.cpwd;
      if (pwd == cpwd) {
        return true;
      } else {
        this.$message.error("两次密码不一致");
      }
      return false;
    },
    // 邮箱验证
    checkemail() {
      let email = this.email;
      let emailReg = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
      if (emailReg.test(email)) {
        return true;
      } else {
        this.$message.error("请输入正确的电子邮箱");
      }
      return false;
    },
    // 手机号码验证
    checkphone() {
      let phone = this.phone;
      let phoneReg = /^1[3|4|5|7|8]\d{9}$/;
      if (phoneReg.test(phone)) {
        return true;
      } else {
        this.$message.error("请输入正确的手机号码");
      }
      return false;
    },
  },
};
</script>