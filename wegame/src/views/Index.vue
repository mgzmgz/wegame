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
      <h1 class="body_top">热点预告</h1>
      <div class="button left">
        <img src="../assets/picture/title/left.png" alt />
      </div>
      <div class="button right">
        <img src="../assets/picture/title/right.png" alt />
      </div>
      <div class="list">
        <ul>
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
        </ul>
      </div>
    </div>

    <div class="body_middle">
      <!-- ***********************************************
        ************************f1.1**************************
      ****************************************************-->
      <div class="body_middle_top">
        <h1>火爆新品</h1>
        <router-link to="Detail?14">
          <img :src="baseUrl+'picture/game/sanguosha.jpg'" alt />
        </router-link>
        <ul>
          <li v-for="(item,i) of game.slice(0,5)" :key="i">
            <router-link :to="`Detail?${item.gid-1}`">
              <img :src="baseUrl+item.pic" alt />
              <div>
                <strong>{{item.gname}}</strong>
                <p v-if="item.price==0">免费</p>
                <p v-else-if="item.price!==0">￥{{item.price}}</p>
              </div>
              <p>2019-7</p>
            </router-link>
          </li>
        </ul>
      </div>
      <!-- ***********************************************
        ************************f1.2**************************
      ****************************************************-->
      <div class="body_middle_top">
        <h1>本周热销</h1>
        <router-link to="Detail?20">
          <img :src="baseUrl+'picture/game/jianwang3.jpg'" alt />
        </router-link>
        <ul>
          <li v-for="(item,i) of game.slice(20,25)" :key="i">
            <router-link :to="`Detail?${item.gid-1}`">
              <img :src="baseUrl+item.pic" alt />
              <div>
                <strong>{{item.gname}}</strong>
                <p v-if="item.price==0">免费</p>
                <p v-else-if="item.price!==0">￥{{item.price}}</p>
              </div>
              <i></i>
            </router-link>
          </li>
        </ul>
      </div>
      <!-- ***********************************************
        ************************f1.3**************************
      ****************************************************-->
      <div class="body_middle_top_right">
        <h1>口碑佳作</h1>
        <ul>
          <li v-for="(item,i) of game.slice(15,18)" :key="i">
           <router-link :to="`Detail?${item.gid-1}`">
              <img :src="baseUrl+item.pic" alt />
              <div>
                <strong>{{item.gname}}</strong>
                <p v-if="item.price==0">免费</p>
                <p v-else-if="item.price!==0">￥{{item.price}}</p>
              </div>
              <div class="tj">
                <p>99%</p>
                <p>周推荐率</p>
              </div>
            </router-link>
          </li>
        </ul>
        <h1>最新上架</h1>
        <ul>
          <li v-for="(item,i) of game.slice(10,13)" :key="i">
             <router-link :to="`Detail?${item.gid-1}`">
              <img :src="baseUrl+item.pic" alt />
              <div>
                <strong>{{item.gname}}</strong>
                <p v-if="item.price==0">免费</p>
                <p v-else-if="item.price!==0">￥{{item.price}}</p>
              </div>
              <div class="tj">
                <p>99%</p>
                <p>周推荐率</p>
              </div>
            </router-link>
          </li>
        </ul>
      </div>
    </div>

    <div class="body_update">
      <h1>最近更新</h1>
      <ul>
        <li>
          <router-link to="Detail?21">
            <img :src="baseUrl+'picture/update/miaosikuaipao.jpg'" alt />
            <h3>第二阶段鸽王挑战赛正式开始！</h3>
            <p>喵斯快跑</p>
            <div class="text">第二阶段开始，肝起来少年少女们！</div>
          </router-link>
        </li>
        <li>
          <router-link to="Detail?20">
            <img :src="baseUrl+'picture/update/jianwang3.jpg'" alt />
            <h3>最新活动上线了！</h3>
            <p>剑网3</p>
            <div class="text">豪华仙鹿坐骑免费送</div>
          </router-link>
        </li>
        <li>
          <router-link to="Detail?19">
            <img :src="baseUrl+'picture/update/zhongguoshijiazhang.png'" alt />
            <h3>2.0版本上线</h3>
            <p>中国式家长</p>
            <div class="text">修复了充值异常bug</div>
          </router-link>
        </li>
      </ul>
    </div>

    <div class="body_footer">
      <h1>精选专区</h1>
      <div class="bottom">
        <div class="d1">
          <div class="d11">
            <img :src="baseUrl+'picture/x/jianwang3.jpeg'" alt />
          </div>
          <div class="d2">
            <img :src="baseUrl+'picture/y/gujianqitan.jpeg'" alt />
          </div>
        </div>
        <span class="d12">
          <img :src="baseUrl+'picture/game/boxiyashiguang.jpeg'" alt />
        </span>
        <span class="d13">
          <img :src="baseUrl+'picture/game/tiejiaxiongbing.jpg'" alt />
        </span>
        <div class="d3">
          <div class="d33">
            <img :src="baseUrl+'picture/game/zhongguoshijiazhang.jpg'" alt />
          </div>
          <div class="d33">
            <img :src="baseUrl+'picture/game/shiluochengbao.jpeg'" alt />
          </div>
          <div class="d33">
            <img :src="baseUrl+'picture/game/jihuang.jpeg'" alt />
          </div>
        </div>
      </div>
    </div>

    <div class="side">
      <a href="javascript:;">
        <img src="../assets/picture/title/shopping.png" alt />
      </a>
      <a href="javascript:;">
        <img v-show="backFlag" @click="backTop" src="../assets/picture/title/up.png" alt />
      </a>
    </div>
  </div>
</template>
<script>
import MyHeader from "../components/Header.vue";
import MyNav from "../components/Nav.vue";
import MyCarousel from "../components/Carousel.vue";
export default {
  data() {
    return {
      bgImg: {
        backgroundImage:
          "url(" + require("../assets/picture/title/bg.jpg") + ")"
      },
      show: true,
      show2: false,
      active: true,
      backFlag: false,
      baseUrl: "http://127.0.0.1:3000/",
      game: [],
      gid: ""
    };
  },
  components: {
    MyHeader: MyHeader,
    MyNav: MyNav,
    MyCarousel: MyCarousel
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
    },
    backTop() {
      const that = this;
      let timer = setInterval(() => {
        let ispeed = Math.floor(-that.scrollTop / 5);
        document.documentElement.scrollTop = document.body.scrollTop =
          that.scrollTop + ispeed;
        if (that.scrollTop === 0) {
          clearInterval(timer);
        }
      }, 16);
    },
    scrollToTop() {
      const that = this;
      let scrollTop =
        window.pageYOffset ||
        document.documentElement.scrollTop ||
        document.body.scrollTop;
      that.scrollTop = scrollTop;
      if (that.scrollTop > 60) {
        that.backFlag = true;
      } else {
        that.backFlag = false;
      }
    }
  },
  mounted() {
    window.addEventListener("scroll", this.scrollToTop);
  },
  destroyed() {
    window.removeEventListener("scroll", this.scrollToTop);
  },
  created() {
    this.axios
      .get()
      .then(res => {
        console.log(res.data.data);
        this.game = res.data.data;
      })
      .catch(err => {
        console.log(err);
      });
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
  position: relative;
}
.body_top h1 {
  display: block;
  margin-left: 4%;
}
.body_top .list {
  position: relative;
  left: 38px;
  overflow: hidden;
  height: 300px;
  width: 990px;
}
.body_top ul {
  display: inline-block;
  position: absolute;
  height: 300px;
  overflow: hidden;
  padding: 0;
}
.body_top ul li {
  display: inline-block;
  width: 184px;
  height: 300px;
  margin: 0 7px 0 7px;
  overflow: hidden;
}

.body_top .button {
  display: block;
  width: 30px;
  height: 68px;
  margin: 0 0 140px 0;
  background: rgba(0, 0, 0, 0.15);
  border-radius: 2px;
  cursor: pointer;
  position: absolute;
  top: 185px;
}
.body_top .right {
  left: 1035px;
}
.body_top .button img {
  display: block;
  margin: 28px auto 28px;
}
.body_top ul li a img {
  width: 184px;
  height: 242px;
  text-align: center;
}
.body_top ul li p {
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
  margin: 5px 20px 5px 20px;
}
.body_middle > div > ul > li > a > div > p {
  font-size: 14px;
  color: #3c3c3c;
  margin: 5px 50px 5px 20px;
  float: left;
}
.body_middle > div > ul > li > a > p {
  display: block;
  margin: 6px 0 0 -5px;
  font-size: 13px;
  color: #3c3c3c;
  width: 100px;
}
.body_middle > div > ul > li > a > i {
  display: inline-block;
  width: 20px;
  height: 15px;
  margin: 20px 20px 0 52px;
  background: url(../assets/picture/title/sprite2.png) 15px -16px;
}
.body_middle > div > ul > li > a > div.tj > p {
  display: block;
  margin: 5px 10px;
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
  right: 30px;
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