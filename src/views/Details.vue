<template>
  <div class="details">
    <!-- 标题 -->
    <div class="breadcrumb-area breadcrumb-style-1">
      <div class="container">
        <div class="row custom-gutter">
          <div class="col">
            <div class="breadcrumb-inner text-center">
              <h1 class="page-title">商品详情</h1>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- 商品详情图缩略图轮播 -->
    <!-- <el-carousel width="100px" direction="vertical" :autoplay="true">
      <el-carousel-item v-for="item in detail" :key="item">
        <img :src="detail.img1">
        <img :src="detail.img2">
        <img :src="detail.img3">
        <img :src="detail.img4">
        <img :src="detail.img5">
      </el-carousel-item>
    </el-carousel> -->
    <div class="container d-flex">
      <!-- 单一商品详情图 -->
      <div class="thumbnail">
        <div class="smallimg">
          <img :src="detail.img1" id="d1" @click="handle1" />
          <img :src="detail.img2" id="d2" @click="handle2" />
          <img :src="detail.img3" id="d3" @click="handle3" />
        </div>
        <div class="largeimg">
          <img :src="detail.img1" id="d4" />
        </div>
      </div>
      <!-- 单一商品详情信息 -->
      <div class="product-content">
        <!-- 商品名 -->
        <div class="product-title">
          <h3>{{ detail.pname }}</h3>
        </div>
        <!-- 商品价格 -->
        <h4>
          <span>￥{{ detail.price }}</span>
        </h4>
        <!-- 商品细节描述 -->
        <p class="product-details">{{ detail.details }}</p>
        <!-- 商品数量 -->
        <div class="product-count">
          <el-input-number
            v-model="num"
            :min="1"
            :max="99"
            label="描述文字"
          ></el-input-number>
        </div>
        <!-- 添加按钮 -->
        <div class="btn-wrapper">
          <button class="boxed-btn btn-rounded" @click="addproduct">添加购物车</button>
        </div>
        <!-- 继续购物按钮 -->
        <div class="btn-wrapper mr-5">
          <router-link to="/shop" class="boxed-btn btn-rounded"> 继续购物 </router-link>
        </div>
      </div>
    </div>
  </div>
</template>

<style>
.breadcrumb-area {
  margin-bottom: 20px !important;
}
.thumbnail {
  width: 1000px;
  height: 750px;
  display: flex;
}
.smallimg img {
  width: 194px;
  margin: 10px;
  display: flex;
}
.largeimg img {
  margin: 10px;
  width: 600px;
}
.product-content {
  width: 650px;
}
.product-title {
  margin: 24px 0;
}
.product-details {
  margin: 24px 0;
}
</style>

<script>
export default {
  data() {
    return {
      // 商品详细信息
      detail: [],
      // 商品数量初始值
      num: 1,
    };
  },
  methods: {
    // 详情页放大图(替换、可优化)
    handle1() {
      let d1 = document.getElementById("d1");
      let d4 = document.getElementById("d4");
      d4.src = d1.src;
    },
    handle2() {
      let d2 = document.getElementById("d2");
      let d4 = document.getElementById("d4");
      d4.src = d2.src;
    },
    handle3() {
      let d3 = document.getElementById("d3");
      let d4 = document.getElementById("d4");
      d4.src = d3.src;
    },
  // 添加商品
    addproduct() {
      let obj = this.detail;
      let productlist =this.qs.stringify( {
        pname: obj.pname,
        price: obj.price,
        count: this.num,
      });
      this.axios.post("/addproduct",productlist).then(res=>{
        if(res.data.code=1){
          this.$message.success("添加成功")
        }
      });
      // this.$store.dispatch('addproduct_action', obj);
    },
  },
  mounted() {
    let pid = this.$route.params.pid;
    this.axios.get("/details?pid=" + pid).then((res) => {
      this.detail = res.data.results;
    });
  },
};
</script>
