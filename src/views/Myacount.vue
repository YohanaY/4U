<template>
  <div class="myacount">
    <!-- 标题背景 -->
    <div class="breadcrumb-area breadcrumb-style-2">
      <div class="container">
        <div class="row custom-gutter">
          <div class="col">
            <div class="breadcrumb-inner text-left">
              <h1 class="page-title">我的账户</h1>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- 账户表单 -->
    <div class="container">
      <div class="tabBox">
        <el-tabs tabPosition="left">
          <el-tab-pane label="我的账户">
            <!-- 标签 -->
            <div class="col my-account-tab-info">
              <div class="text-left mb-5">
                <div class="section-title section-title-2">
                  <div class="icon">
                    <img src="../assets/img/icon/title.svg" alt="" />
                  </div>
                  <div class="title-text">
                    <h2 class="title">我的账户</h2>
                  </div>
                </div>
              </div>
              <!-- 用户基本信息 -->
              <div class="col">
                <label>用户名*</label>
                <input type="text" />
                <label>邮箱*</label>
                <input type="text" />
                <label>手机号码*</label>
                <input type="text" />
                <label>真实姓名*</label>
                <input type="text" />
              </div>
            </div>
          </el-tab-pane>
          <el-tab-pane label="地址簿">
            <div class="col my-account-tab-info">
              <div class="text-left mb-5">
                <div class="section-title section-title-2">
                  <div class="icon">
                    <img src="../assets/img/icon/title.svg" alt="Bloom" />
                  </div>
                  <div class="title-text">
                    <h2 class="title">地址簿</h2>
                  </div>
                </div>
              </div>
              <!-- 用户收货地址信息 -->
              <div class="col">
                <label>收货地址1*</label>
                <input type="text" />
                <label>收货地址2*</label>
                <input type="text" />
                <label>收货地址3*</label>
                <input type="text" />
                <label>收货地址4*</label>
                <input type="text" />
              </div>
            </div>
          </el-tab-pane>
          <el-tab-pane label="账户设置">
            <div class="col my-account-tab-info">
              <div class="text-left mb-5">
                <div class="section-title section-title-2">
                  <div class="icon">
                    <img src="../assets/img/icon/title.svg" alt="" />
                  </div>
                  <div class="title-text">
                    <h2 class="title">账户设置</h2>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col">
                  <div class="my-account-details-info-text">
                    <h4>重置密码</h4>
                  </div>
                  <form action="#" class="">
                    <label>原密码*</label>
                    <input type="text" />
                    <label>密码*</label>
                    <input type="text" />
                    <div class="btn-wrapper mt-5">
                      <button class="boxed-btn btn-rounded" type="submit">
                        确认重置
                      </button>
                    </div>
                  </form>
                </div>
                <div class="col">
                  <div class="my-account-details-info-text">
                    <h4>修改基本信息</h4>
                  </div>
                  <form action="#" class="">
                    <label>用户名*</label>
                    <input type="text" />
                    <label>性别*</label>
                    <input type="text" />
                    <label>邮箱*</label>
                    <input type="text" />
                    <label>手机号码*</label>
                    <input type="text" />
                    <div class="btn-wrapper mt-5">
                      <button class="boxed-btn btn-rounded" type="submit">
                        确认修改
                      </button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </el-tab-pane>
          <el-tab-pane label="我的订单">
            <div class="col my-account-tab-info">
              <div class="text-left">
                <div class="section-title section-title-2">
                  <div class="icon">
                    <img src="../assets/img/icon/title.svg" alt="Bloom" />
                  </div>
                  <div class="title-text">
                    <h2 class="title">我的订单</h2>
                  </div>
                </div>
              </div>
            </div>
          </el-tab-pane>
        </el-tabs>
      </div>
    </div>
  </div>
</template>
<style>
.my-account-tab-info {
  padding: 40px 30px 60px 30px;
}
.el-tabs__item {
  height: 50px;
  line-height: 40px;
  font-size: 18px !important;
  color: #444444;
  margin: 15px 0;
}
.el-tabs__item.is-active {
  color: #bd6f51 !important;
}
.el-tabs__item:hover {
  color: #bd6f51 !important;
}
.el-tabs__active-bar {
  background-color: transparent !important;
}
</style>

<script>
export default {
  data() {
    return {};
  },
};
</script>