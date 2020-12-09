<template>
  <div class="place">
    <!-- 标题 -->
    <div class="breadcrumb-area breadcrumb-style-1">
      <div class="container">
        <div class="row custom-gutter">
          <div class="col">
            <div class="breadcrumb-inner text-center">
              <h1 class="page-title">产地介绍</h1>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- 产地介绍 -->
    <div class="accordion-style-one">
      <div class="container">
        <div class="row custom-gutter">
          <div class="col-lg-12">
            <div class="section-title-area">
              <div class="section-title section-title-2">
                <div class="icon">
                  <img src="../assets/img/icon/title.svg" alt="" />
                </div>
                <div class="title-text">
                  <h2 class="title">关于产地</h2>
                </div>
              </div>
            </div>
          </div>
          <div class="col">
            <el-collapse accordion>
              <el-collapse-item title="产地1" name="1">
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Nostrum cum porro consequatur, quisquam repellat omnis incidunt natus aspernatur mollitia harum?</p>
              </el-collapse-item>
              <el-collapse-item title="产地2" name="2">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum excepturi eaque illo blanditiis consequatur dignissimos.</p>
              </el-collapse-item>
              <el-collapse-item title="产地3" name="3">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Qui consequuntur esse delectus obcaecati, unde architecto?</p>
              </el-collapse-item>
              <el-collapse-item title="产地4" name="4">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Adipisci maiores, corrupti quos nostrum tempora nesciunt?</p>
              </el-collapse-item>
            </el-collapse>
          </div>
          <div class="col-lg-6">
            <div class="text-center">
              <img src="../assets/img/others/faq-1.png" alt="" />
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<style>
.el-collapse {
  border: none !important;
}
.el-collapse-item__header {
  height: 70px !important;
  line-height: 50px !important;
  background-color: #f9efed !important;
  color: #444444 !important;
  font-size: 18px !important;
  border: none !important;
  margin: 30px;
  padding: 20px 40px 20px 20px;
  font-family: 'themify'
}
.el-collapse-item__header.is-active {
    background-color: #c18d7a !important;
    color: #fff !important;
}
.el-collapse-item__wrap{
    padding: 20px 40px 20px 40px;
    border: none !important;
}
.el-collapse-item__content p{
    font-size: 16px;
    color: #444444;
    margin: 0 0 15px;
}
</style>