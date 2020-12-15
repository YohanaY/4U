<template>
  <div class="myfooter">
    <!-- Instagram area 开始 -->
    <div class="instagram-area">
      <div class="container mt-5">
        <div class="row custom-gutter">
          <div class="col">
            <div class="section-title-area text-center">
              <div class="section-title section-title-2">
                <div class="icon">
                  <img src="../assets/img/icon/title.svg" alt="" />
                </div>
                <div class="title-text">
                  <h1 class="title">关注我们</h1>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="instafeed instagram-inner" data-limit="5">
        <ul id="instagram_feed"></ul>
      </div>
    </div>
    <!-- 底部信息 -->
    <div class="myfoo">
      <!-- footer -->
      <footer class="footer-area">
        <div class="footer-top">
          <div class="container">
            <div class="row">
              <!-- footer-1 logo-->
              <div class="col-md-3">
                <div class="footer-widget widget">
                  <div class="about_us_widget">
                    <a href="#" class="footer-logo">
                      <img src="../assets/img/footer-logo.png" alt="" />
                    </a>
                    <p>鲜花总是让人更好、更快乐，它们是心灵的阳光和良药。</p>
                    <div class="social_share">
                      <ul>
                        <li><a href="#" class="fa fa-instagram"></a></li>
                        <li><a href="#" class="fa fa-twitter"></a></li>
                        <li><a href="#" class="fa fa-facebook"></a></li>
                        <li><a href="#" class="fa fa-linkedin"></a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <!-- footer-2 工作时间-->
              <div class="col-md-2">
                <div class="footer-widget widget">
                  <h4 class="widget-title">工作时间</h4>
                  <p>
                    周一~周五: 9:00-16:00 <br />
                    周六:9:00-15:00 <br />
                    周天:休息
                  </p>
                </div>
              </div>
              <!-- footer-3 支持 -->
              <div class="col-md-2">
                <div class="footer-widget widget">
                  <h4 class="widget-title">支持</h4>
                  <ul>
                    <li><a href="#">团队订购</a></li>
                    <li><a href="#">付款设备</a></li>
                    <li><a href="#">政策</a></li>
                    <li><a href="#">退款</a></li>
                  </ul>
                </div>
              </div>
              <!-- footer-4 关于我们 -->
              <div class="col-md-2">
                <div class="footer-widget widget">
                  <h4 class="widget-title">关于我们</h4>
                  <ul>
                    <li><a href="#">品牌故事</a></li>
                    <li><a href="#">花廊</a></li>
                    <li><a href="#">价格</a></li>
                    <li><a href="#">关于我们</a></li>
                  </ul>
                </div>
              </div>
              <!-- footer-5 联系我们 -->
              <div class="col-md-3">
                <div class="footer-widget widget">
                  <div class="newsletter-widget">
                    <h4 class="widget-title">联系我们</h4>
                    <p>成为第一个享受我们服务的包容性销售的顾客。</p>
                    <form action="#" class="form-input-box">
                      <input type="text" placeholder="输入你的电子邮箱" />
                      <button type="submit">
                        <img
                          src="../assets/img/icon/arrow-right-white-2.svg"
                          alt=""
                        />
                      </button>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- 版权所有 -->
        <div class="copyright-area">
          <div class="container">
            <div class="row">
              <div class="col">
                <div class="copyright-area-inner">
                  &copy; Copyright
                  <span class="current-year"
                    >.版权所有2020。保留所有权利。由XXX撰写.</span
                  >
                </div>
              </div>
            </div>
          </div>
        </div>
      </footer>
      <!-- footer end -->
    </div>
  </div>
</template>
