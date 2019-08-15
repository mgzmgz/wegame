<template>
  <div :style="bgImg">
    <my-header></my-header>
    <div class="pic" @mouseenter="iShow()" @mouseleave="iHidden()">
      <router-link to>
        <img v-show="show" src="../assets/picture/game_title/sanguosha_s.jpg" />
        <img v-show="!show" src="../assets/picture/game_title/sanguosha_b.jpg" />
      </router-link>
      <i :class="active==true?'el-icon-arrow-down':'el-icon-arrow-up'" v-show="show2" @click="down"></i>
    </div>
    <my-nav></my-nav>
    <my-carousel></my-carousel>
    <div class="body_top">
      <h1>热点预告</h1>
      <ul>
        <div class="button">
          <img src="../assets/picture/title/left.png" alt />
        </div>
        <li>
          <a href="#">
            <img src="../assets/picture/y/miaosikuaipao.jpg" alt />
          </a>
          <p>喵斯快跑</p>
        </li>
        <li>
          <a href="#">
            <img src="../assets/picture/y/miaosikuaipao.jpg" alt />
          </a>
          <p>喵斯快跑</p>
        </li>
        <li>
          <a href="#">
            <img src="../assets/picture/y/miaosikuaipao.jpg" alt />
          </a>
          <p>喵斯快跑</p>
        </li>
        <li>
          <a href="#">
            <img src="../assets/picture/y/miaosikuaipao.jpg" alt />
          </a>
          <p>喵斯快跑</p>
        </li>
        <li>
          <a href="#">
            <img src="../assets/picture/y/miaosikuaipao.jpg" alt />
          </a>
          <p>喵斯快跑</p>
        </li>
        <div class="button">
          <img src="../assets/picture/title/right.png" alt />
        </div>
      </ul>
    </div>

    <div class="body_middle">
      <!-- ***********************************************
        ************************f1.1**************************
      ****************************************************-->
      <div class="body_middle_top">
        <h1>火爆新品</h1>
        <a href="#">
          <img src="../assets/picture/game/sanguosha.jpg" alt />
        </a>
        <ul>
          <li>
            <a href="#">
              <img src="../assets/picture/game/baoleizhiye.jpg" alt />
              <div>
                <strong>堡垒之夜</strong>
                <p>免费</p>
              </div>
              <p>2019-7</p>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="../assets/picture/game/baoleizhiye.jpg" alt />
              <div>
                <strong>堡垒之夜</strong>
                <p>免费</p>
              </div>
              <p>2019-7</p>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="../assets/picture/game/baoleizhiye.jpg" alt />
              <div>
                <strong>堡垒之夜</strong>
                <p>免费</p>
              </div>
              <p>2019-7</p>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="../assets/picture/game/baoleizhiye.jpg" alt />
              <div>
                <strong>堡垒之夜</strong>
                <p>免费</p>
              </div>
              <p>2019-7</p>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="../assets/picture/game/baoleizhiye.jpg" alt />
              <div>
                <strong>堡垒之夜</strong>
                <p>免费</p>
              </div>
              <p>2019-7</p>
            </a>
          </li>
        </ul>
      </div>
      <!-- ***********************************************
        ************************f1.2**************************
      ****************************************************-->
      <div class="body_middle_top">
        <h1>本周热销</h1>
        <a href="#">
          <img src="../assets/picture/game/sanguosha.jpg" alt />
        </a>
        <ul>
          <li>
            <a href="#">
              <img src="../assets/picture/game/baoleizhiye.jpg" alt />
              <div>
                <strong>堡垒之夜</strong>
                <p>￥24</p>
              </div>
              <i></i>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="../assets/picture/game/baoleizhiye.jpg" alt />
              <div>
                <strong>堡垒之夜</strong>
                <p>免费</p>
              </div>
              <i></i>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="../assets/picture/game/baoleizhiye.jpg" alt />
              <div>
                <strong>堡垒之夜</strong>
                <p>免费</p>
              </div>
              <i></i>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="../assets/picture/game/baoleizhiye.jpg" alt />
              <div>
                <strong>堡垒之夜</strong>
                <p>免费</p>
              </div>
              <i></i>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="../assets/picture/game/baoleizhiye.jpg" alt />
              <div>
                <strong>堡垒之夜</strong>
                <p>免费</p>
              </div>
              <i></i>
            </a>
          </li>
        </ul>
      </div>
      <!-- ***********************************************
        ************************f1.3**************************
      ****************************************************-->
      <div class="body_middle_top_right">
        <h1>口碑佳作</h1>
        <ul>
          <li>
            <a href="#">
              <img src="../assets/picture/game/baoleizhiye.jpg" alt />
              <div>
                <strong>堡垒之夜</strong>
                <p>免费</p>
              </div>
              <div class="tj">
                <p>99%</p>
                <p>周推荐率</p>
              </div>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="../assets/picture/game/baoleizhiye.jpg" alt />
              <div>
                <strong>堡垒之夜</strong>
                <p>免费</p>
              </div>
              <div class="tj">
                <p>99%</p>
                <p>周推荐率</p>
              </div>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="../assets/picture/game/baoleizhiye.jpg" alt />
              <div>
                <strong>堡垒之夜</strong>
                <p>免费</p>
              </div>
              <div class="tj">
                <p>99%</p>
                <p>周推荐率</p>
              </div>
            </a>
          </li>
        </ul>
        <h1>最新上架</h1>
        <ul>
          <li>
            <a href="#">
              <img src="../assets/picture/game/baoleizhiye.jpg" alt />
              <div>
                <strong>堡垒之夜</strong>
                <p>免费</p>
              </div>
              <div class="tj">
                <p>99%</p>
                <p>周推荐率</p>
              </div>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="../assets/picture/game/baoleizhiye.jpg" alt />
              <div>
                <strong>堡垒之夜</strong>
                <p>免费</p>
              </div>
              <div class="tj">
                <p>99%</p>
                <p>周推荐率</p>
              </div>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="../assets/picture/game/baoleizhiye.jpg" alt />
              <div>
                <strong>堡垒之夜</strong>
                <p>免费</p>
              </div>
              <div class="tj">
                <p>99%</p>
                <p>周推荐率</p>
              </div>
            </a>
          </li>
        </ul>
      </div>
    </div>

    <div class="body_update">
      <h1>最近更新</h1>
      <ul>
        <li>
          <a href="#">
            <img src="../assets/picture/update/miaosikuaipao.jpg" alt />
            <h3>第二阶段鸽王挑战赛正式开始！</h3>
            <p>喵斯快跑</p>
            <div class="text">第二阶段开始，肝起来少年少女们！</div>
          </a>
        </li>
        <li>
          <a href="#">
            <img src="../assets/picture/update/miaosikuaipao.jpg" alt />
            <h3>第二阶段鸽王挑战赛正式开始！</h3>
            <p>喵斯快跑</p>
            <div class="text">第二阶段开始，肝起来少年少女们！</div>
          </a>
        </li>
        <li>
          <a href="#">
            <img src="../assets/picture/update/miaosikuaipao.jpg" alt />
            <h3>第二阶段鸽王挑战赛正式开始！</h3>
            <p>喵斯快跑</p>
            <div class="text">第二阶段开始，肝起来少年少女们！</div>
          </a>
        </li>
      </ul>
    </div>

    <div class="body_footer">
      <h1>精选专区</h1>
      <div class="bottom">
        <div class="d1">
          <div class="d11">
            <img src="../assets/picture/x/jianwang3.jpeg" alt />
          </div>
          <div class="d2">
            <img src="../assets/picture/y/gujianqitan.jpeg" alt />
          </div>
        </div>
        <span class="d12">
          <img src="../assets/picture/game/boxiyashiguang.jpeg" alt />
        </span>
        <span class="d13">
          <img src="../assets/picture/game/tiejiaxiongbing.jpg" alt />
        </span>
        <div class="d3">
          <div class="d33">
            <img src="../assets/picture/game/zhongguoshijiazhang.jpg" alt />
          </div>
          <div class="d33">
            <img src="../assets/picture/game/shiluochengbao.jpeg" alt />
          </div>
          <div class="d33">
            <img src="../assets/picture/game/jihuang.jpeg" alt />
          </div>
        </div>
      </div>
    </div>

    <div class="side">
      <a href="#">
        <img src="../assets/picture/title/shopping.png" alt />
      </a>
      <a href="#">
        <img src="../assets/picture/title/up.png" alt />
      </a>
    </div>
    <my-footer></my-footer>
  </div>
</template>
<script>
import MyHeader from "./Header.vue";
import MyNav from "./Nav.vue";
import MyCarousel from "./Carousel.vue";
import MyFooter from "./Footer.vue";
export default {
  data() {
    return {
      bgImg: {
        backgroundImage:
          "url(" + require("../assets/picture/title/bg.jpg") + ")"
      },
      show: true,
      show2: false,
      active: true
    };
  },
  components: {
    MyHeader: MyHeader,
    MyNav: MyNav,
    MyCarousel: MyCarousel,
    MyFooter: MyFooter
  },
  methods: {
    down() {
      this.show = !this.show;
      this.active = !this.active;
    },
    iShow() {
      this.show2 = !this.show2;
    },
    iHidden() {
      this.show2 = !this.show2;
    }
  }
};
</script>
<style scoped>
a {
  text-decoration: none;
}
li {
  list-style: none;
}
div.pic {
  overflow: hidden;
  position: relative;
}
.pic i {
  display: block;
  position: absolute;
  left: 50%;
  bottom: 1%;
  background: #fff;
  margin-left: -20px;
  padding: 2px 20px;
  border-radius: 5px;
  cursor: pointer;
}
.pic img {
  width: 100%;
}
.body_top {
  margin-left: 18%;
}
.body_top h1 {
  display: block;
  margin-left: 4%;
}
.body_top > ul {
  display: flex;
  justify-content: space-between;
  width: 1100px;
  overflow: hidden;
  padding: 0;
}
.body_top > ul > li {
  display: block;
  width: 184px;
  height: 300px;
}
.body_top > ul > .button {
  width: 30px;
  height: 68px;
  margin: 91px 0 91px 0;
  background: rgba(0, 0, 0, 0.15);
  border-radius: 2px;
  cursor: pointer;
}
.body_top > ul > .button > img {
  display: block;
  margin: 28px auto 28px;
}
.body_top > ul > li > a > img {
  width: 184px;
  height: 242px;
  text-align: center;
}
.body_top > ul > li > p {
  display: block;
  text-align: center;
  background: #fff;
  margin: 0;
  padding: 15px 0 20px 0;
}
.body_middle {
  display: flex;
  margin-left: 20%;
}
.body_middle > div.body_middle_top {
  margin-right: 20px;
}
.body_middle > div > ul {
  display: flex;
  flex-direction: column;
}
.body_middle > div > a {
  display: block;
  width: 320px;
  height: 179px;
}
.body_middle > div > a > img {
  display: block;
  width: 320px;
  height: 179px;
}
.body_middle > div > ul > li > a {
  display: flex;
  margin-bottom: 10px;
  width: 320px;
  background: #fff;
}
.body_middle > div > ul > li > a > img {
  width: 102px;
  height: 58px;
}
.body_middle > div > ul {
  padding: 0;
}
.body_middle > div > ul > li > a > div {
  height: 20px;
}
.body_middle > div > ul > li > a > div > strong {
  display: inline-block;
  font: 15px;
  color: #3c3c3c;
  margin: 5px 50px 5px 20px;
}
.body_middle > div > ul > li > a > div > p {
  font-size: 14px;
  color: #3c3c3c;
  margin: 5px 50px 5px 20px;
}
.body_middle > div > ul > li > a > p {
  display: block;
  margin: 6px 0 0 28px;
  font-size: 13px;
  color: #3c3c3c;
}
.body_middle > div > ul > li > a > i {
  display: block;
  width: 15px;
  height: 15px;
  margin: 19px 0 0 52px;
  background: url(../assets/picture/title/sprite2.png) 15px -16px;
}
.body_middle > div > ul > li > a > div.tj > p {
  display: block;
  margin: 8px 10px;
  text-align: center;
}
.body_middle > div.body_middle_top_right > ul > li > a {
  display: flex;
  margin-bottom: 18px;
  width: 320px;
}
.body_update {
  margin-left: 20%;
}
.body_update > ul {
  display: flex;
  padding: 0;
}
.body_update > ul > li {
  margin-right: 20px;
}
.body_update > ul > li > a > img {
  width: 321px;
  height: 180px;
}
.body_update > ul > li > a > h3 {
  color: #000;
}
.body_update > ul > li > a > p {
  color: #757575;
  font: 14px;
}
.body_update > ul > li > a > div {
  color: #757575;
  font: 14px;
  text-overflow: ellipsis;
  height: 80px;
}
.body_footer {
  margin-left: 20%;
}
.d1 {
  display: flex;
}
.d11 img {
  width: 660px;
}
.d12 img {
  width: 320px;
}
.d13 img {
  width: 320px;
}
.d2 img {
  width: 320px;
}
.d3 {
  display: flex;
}
.d33 img {
  width: 320px;
}
.bottom {
  margin: 0 auto;
}
.d11 {
  margin-right: 1.5rem;
}
.bottom {
  position: relative;
}
.bottom > span.d12 {
  display: inline-block;
  position: absolute;
  top: 413px;
  left: 0px;
}
.bottom > span.d13 {
  display: inline-block;
  position: absolute;
  top: 413px;
  left: 340px;
}
.d2 {
  margin-bottom: 1.5rem;
}
.d33 {
  margin-right: 22px;
}
.side img {
  border: 1px solid #ffe37f;
  background: #f69c00;
  border-radius: 50%;
  display: block;
  padding: 0.25rem;
  margin-bottom: 1rem;
}
.side {
  position: fixed;
  right: 5px;
  top: 600px;
}
div.main {
  width: 1400px;
  margin: 0 auto;
}
div.main img {
  width: 1000px;
  overflow: hidden;
}
div.main > .banner > ul {
  width: 6000px;
}
</style>