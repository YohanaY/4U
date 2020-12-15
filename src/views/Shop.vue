<template>
  <div class="shop">
    <div class="container">
      <!-- 商品分类下拉菜单 -->
      <el-dropdown @command="handleCommand" class="mt-5">
        <span class="el-dropdown-link">
          分类菜单<i class="el-icon-arrow-down el-icon--right"></i>
        </span>
        <el-dropdown-menu slot="dropdown">
          <el-dropdown-item command="1">初见系列</el-dropdown-item>
          <el-dropdown-item command="2">倾心系列</el-dropdown-item>
          <el-dropdown-item command="3">经典系列</el-dropdown-item>
        </el-dropdown-menu>
      </el-dropdown>
      <!-- 商品列表 -->
      <div class="row">
        <div class="text-center product-item">
          <!-- 单个商品 -->
          <div
            class="product-image m-5"
            v-for="(item, index) of listInfo"
            :key="index"
          >
            <img :src="item.laptop_img" />
            <!-- 没有hover时隐藏的tip -->
            <div class="product-action">
              <ul>
                <li>
                  <button @click="addproduct(index)">加入购物车</button>
                </li>
                <li class="details-link">
                  <router-link :to="`/details/${item.pid}`">细节</router-link>
                </li>
              </ul>
            </div>
            <div class="product-item-brief">
              <h2 class="product-title">{{ item.pname }}</h2>
              <div class="product-price">
                <span>￥{{ item.price }}</span>
              </div>
            </div>
          </div>
          <!-- 商品信息标签 -->
        </div>
      </div>
    </div>
    <!-- 分页 -->
    <div class="text-center">
      <el-pagination
        background
        layout="prev, pager, next"
        :total="listInfo.length"
      >
      </el-pagination>
    </div>
  </div>
</template>

<style>
/* 下拉菜单 */
.el-dropdown-menu__item:not(.is-disabled):hover {
  color: #bd6f51 !important;
}
/* 分页 */
.el-pagination.is-background .btn-next,
.el-pagination.is-background .btn-prev,
.el-pagination.is-background .el-pager li {
  background-color: transparent !important;
}
.el-pagination.is-background .el-pager li:not(.disabled).active {
  background-color: #bd6f51 !important;
}
.el-pagination.is-background .el-pager li:not(.disabled).active:hover {
  color: #fff !important;
}
.el-pagination.is-background .el-pager li:not(.disabled):hover {
  color: #bd6f51 !important;
}
/* 加入购物车 */
li button {
  height: 35px;
  background-color: #2a2a2a;
  color: #fff;
  font-weight: 400;
  padding: 0px 20px;
  line-height: 35px;
  transition: all 0.3s ease-in;
}
button:hover,
button:focus,
button:active {
  text-decoration: none;
  outline: none;
  background-color: #bd6f51;
}
</style>

<script>
export default {
  data() {
    return {
      // 商品列表信息
      listInfo: [],
      // 每页显示条目数量
      // pagesize: 10,
      // 当前页码
      // currentpage: 1,
    };
  },
  methods: {
    // 分类列表
    handleCommand(command) {
      this.axios.get("/category?lid=" + command).then((res) => {
        this.listInfo = res.data.results;
      });
    },
    // 添加商品
    addproduct(index) {
      let obj = this.listInfo[index];
      // 将对象数组转为字符串传递
      let productlist = this.qs.stringify({
        pname: obj.pname,
        price: obj.price,
        count: 1,
      });
      // 调用Vuex中的actions
      // 单一商品加入购物车
      this.axios.post("/addproduct", productlist).then((res) => {
        if ((res.data.code = 1)) {
          this.$message.success("添加成功");
        }
      });
    },
  },
  mounted() {
    // 向服务器发送请求,以获取数据
    //选中鲜花显示全部商品
    this.axios.get("/shop").then((res) => {
      this.listInfo = res.data.results;
    });
  },
};
</script>