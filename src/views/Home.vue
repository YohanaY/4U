<template>
  <div class="home">
    <!-- 首页轮播图 -->
    <el-carousel
      height="900px"
      indicator-position="none"
      arrow="always"
      :autoplay="false"
      class="margin-bottom-120"
    >
      <el-carousel-item v-for="(item, index) in imgList" :key="index">
        <img :src="item.url" />
      </el-carousel-item>
    </el-carousel>
    <div class="container">
    <!-- 关于花语 -->
      <div class="row custom-gutter">
        <div class="col">
          <div class="section-title-area">
            <div class="section-title section-title-2">
              <div class="icon">
                <img src="../assets/img/icon/title.svg" alt="" />
              </div>
              <div class="title-text">
                <h2 class="title">关于花语</h2>
              </div>
            </div>
          </div>
          <div class="pr-50">
            <b>玫瑰花语：爱情、爱与美、容光焕发</b>
            <p>
              在古希腊神话中，玫瑰集爱与美于一身，既是美神的化身，又溶进了爱神的血液。在世界范围内，玫瑰是用来表达爱情的通用语言。
            </p>
            <b
              >康乃馨花语：谢谢你的爱、真情、温馨的祝福、不求代价的母爱、亲情思念、伟大，温馨的母亲</b
            >
            <p>
              康乃馨是优异的切花品种，花色娇艳，有芳香，花期长，适用于各种插花需求，常与唐菖蒲、文竹、天门冬、蕨类组成优美的花束。花朵还可提香精。
            </p>
            <b>向日葵花语：信念、光辉、高傲、忠诚、爱慕、沉默的爱</b>
            <p>
              向日葵不仅可以送给追求梦想的人，也可以送给你爱慕的对象。向日葵的花语是沉默的爱，不仅可以送给女性，还可以送给男性。是一种可以带给人们信心和希望的鲜花。
            </p>
            <b
              >风信子花语：胜利、竞技、喜悦、爱意、幸福、浓情、倾慕、顽固、生命。</b
            >
            <p>代表着重生的爱。忘记过去的悲伤，开始崭新的爱。</p>
          </div>
          <div class="btn-wrapper margin-top-30">
            <a class="boxed-btn btn-rounded" href="#">了解更多</a>
          </div>
        </div>
        <div class="col margin-bottom-120">
          <div class="custom-content-image text-right">
            <div class="img-shape">
              <img src="../assets/img/others/4.jpg" alt="" />
            </div>
          </div>
        </div>
      </div>
      <!-- 服务介绍 -->
      <div class="col margin-bottom-70">
        <div class="text-center">
          <div class="section-title section-title-2">
            <div class="icon">
              <img src="../assets/img/icon/title.svg" alt="" />
            </div>
            <div class="title-text">
              <h2 class="title">关于服务</h2>
            </div>
          </div>
        </div>
      </div>
      <div class="row custom-gutter">
        <div class="col">
          <div class="service-item text-center">
            <div class="service-icon">
              <img src="../assets/img/icon/service-1.svg" alt="" />
            </div>
            <div class="service-brief">
              <h4>包邮</h4>
              <p>
                花艺师将为你倾心设计本周花束,花田最时令的鲜花，全程保鲜至你手上
              </p>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="service-item text-center">
            <div class="service-icon">
              <img src="../assets/img/icon/service-2.svg" alt="" />
            </div>
            <div class="service-brief">
              <h4>冷链保鲜运输</h4>
              <p>全国包邮 0℃冷链极致鲜花保鲜</p>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="service-item text-center">
            <div class="service-icon">
              <img src="../assets/img/icon/service-3.svg" alt="" />
            </div>
            <div class="service-brief">
              <h4>安全支付</h4>
              <p>我们为你准备了丰富的选择与服务 在手机上轻松选购下单</p>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="service-item text-center">
            <div class="service-icon">
              <img src="../assets/img/icon/service-4.svg" alt="" />
            </div>
            <div class="service-brief">
              <h4>24小时服务</h4>
              <p>收到鲜花，将有详尽实用的插花指南 全天小管家为你排忧解难</p>
            </div>
          </div>
        </div>
      </div>
    </div> 
    <!-- 返回顶端 -->
    <div class="back-to-top">
      <span class=""><i class="fa fa-long-arrow-up"></i></span>
    </div>
  </div>
</template>
<style scoped>
</style>
<script>
export default {
  data() {
    return {
      imgList: [
        { url: require("../assets/img/slider/home-2/1.jpg") },
        { url: require("../assets/img/slider/home-2/2.jpg") },
        { url: require("../assets/img/slider/home-2/3.jpg") },
        { url: require("../assets/img/slider/home-2/4.jpg") },
      ],
    };
  },
  methods: {},
};
</script>