<template>
  <div class="cart">
    <!-- 标题 -->
    <div class="breadcrumb-area breadcrumb-style-1">
      <div class="container">
        <div class="row custom-gutter">
          <div class="col">
            <div class="breadcrumb-inner text-center">
              <h1 class="page-title">购物车</h1>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- 购物车 -->
    <div class="margin-bottom-120">
      <div class="container">
        <!-- 列表头 -->
        <div class="row custom-gutter">
          <div class="col">
            <div class="nav">
              <li>商品</li>
              <li>单价</li>
              <li>数量</li>
              <li>总价</li>
            </div>
          </div>
        </div>
        <!-- 购物车里商品信息 -->
        <div class="row">
          <div class="col">
            <div class="table-content">
              <table>
                <tbody>
                  <tr v-for="(item, index) of productlist" :key="index">
                    <!-- 删除商品 -->
                    <td class="cart-product-remove">
                      <i class="ti-trash" @click="deleteproduct(index)"></i>
                    </td>
                    <!-- 商品名 -->
                    <td class="cart-product-title">
                      <h6>{{ item.pname }}</h6>
                    </td>
                    <!-- 商品价格 -->
                    <td class="cart-product-price">￥{{ item.price }}</td>
                    <!-- 商品数量 -->
                    <td class="cart-product-quantity">
                      <div class="product-quantity">
                        <!-- 计数器 -->
                        <el-input-number
                          v-model="item.count"
                          :min="1"
                          :max="99"
                          label="描述文字"
                        ></el-input-number>
                      </div>
                    </td>
                    <!-- 单一商品总价 -->
                    <td class="cart-product-subtotal">
                      ￥{{ item.price * item.count }}
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <!-- 商品总价信息 -->
        <div class="desktop-text-right">
          <div class="mb-50">
            <div class="text-right">
              <h2><span>总价：￥</span> {{ total }}</h2>
            </div>
          </div>
        </div>
        <!-- 支付按钮 -->
        <div class="shopping-cart-btn margin-top-60">
          <div class="btn-wrapper">
            <button class="boxed-btn btn-rounded">支付</button>
          </div>
          <div class="btn-wrapper mr-5">
            <router-link to="/shop" class="boxed-btn btn-rounded"
              >继续购物</router-link
            >
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<style>
.nav {
  justify-content: space-between;
  border-bottom: 1px solid #aaa;
}
.ti-trash:hover{
  color: #bd6f51;
  cursor: pointer;
}
.table-content .cart-product-remove {
  width: 82px !important;
}
.table-content .cart-product-title {
  width: 410px;
}
.table-content .cart-product-price {
  width: 470px;
}
.table-content .cart-product-quantity {
  width: 500px;
}
.el-input-number__decrease:hover:not(.is-disabled)
  ~ .el-input
  .el-input__inner:not(.is-disabled),
.el-input-number__increase:hover:not(.is-disabled)
  ~ .el-input
  .el-input__inner:not(.is-disabled) {
  border-color: #d6bebc !important;
}
.el-input__inner:hover {
  border-color: #d6bebc !important;
}
.el-input-number__decrease:hover,
.el-input-number__increase:hover {
  color: #d6bebc !important;
}
.btn-wrapper {
  float: right;
}
</style>

<script>
export default {
  data() {
    return {
      productlist: [],
    };
  },
  computed: {
    total() {
      let sum = 0;
      for (var item of this.productlist) {
        sum += item.price * item.count;
      }
      return sum;
    },
  },
  methods: {
    // 删除商品
    deleteproduct(index){
      let obj=this.productlist[index];
      let productlist=this.qs.stringify({
        pname:obj.pname,
        price:obj.price,
        count:obj.count
      });
      // console.log(obj);
      this.axios.post("delectproduct",productlist).then(res=>{
        if(res.data.code=1){
          this.$message.success("删除成功");
          // 刷新页面
          this.$router.go(0);
        }
      })
      // this.productlist.splice(index,1)
    }
  },
  mounted() {
    // 向服务器发送请求
    // 查找购物车表里的商品
    this.axios.get("/cart").then((res) => {
      this.productlist = res.data.results;
    });
  },
};
</script>