<template>
  <header>
    <div class="header_head">
      <div class="header_hd">
        <img src="../assets/picture/title/wegame.png" alt />
      </div>
      <div class="header_bd">
        <a href="javascript:;" @click="home">游戏</a>
        <a href="javascript:;" @click="home">客户端</a>
        <a href="javascript:;" @click="home">移动端</a>
        <a href="javascript:;" @click="home">客服</a>
      </div>
      <div class="header_ft">
        <a href="javascript:;" @click="login">登录</a>
        <span>|</span>
        <a href="javascript:;" @click="reg">注册</a>
      </div>
    </div>
    <div class="header_nav">
      <ul class="header_nav_hd">
        <router-link to="List">
          <li>精选</li>
        </router-link>
        <router-link to="List">
          <li>所有游戏</li>
        </router-link>
      </ul>
      <ul class="header_nav_bd">
        <router-link to="List">
          <li>大型网游</li>
        </router-link>
        <router-link to="List">
          <li>单机游戏</li>
        </router-link>
      </ul>
      <div class="header_nav_ft">
        <input type="text" />
        <a href="javascript:;">
          <i></i>
        </a>
      </div>
    </div>
    <MyReg v-show="regS"></MyReg>
    <MyLogin v-show="loginS"></MyLogin>
  </header>
</template>
<script>
import MyReg from "../components/Reg.vue";
import MyLogin from "../components/Login.vue";
export default {
  data() {
    return {
      regS: false,
      loginS: false
    };
  },
  methods: {
    reg() {
      this.regS = !this.regS;
    },
    login() {
      this.loginS = !this.loginS;
    },
    home() {
      this.$router.push("/");
    }
  },
  components: {
    MyReg: MyReg,
    MyLogin: MyLogin
  }
};
</script>
<style scoped>
header {
  width: 100%;
}
header > .header_head {
  background-color: #111;
  height: 100px;
  display: flex;
}
header > .header_head > .header_hd > img {
  width: 233px;
  height: 40px;
  margin-top: 25px;
  margin-left: 50px;
  margin-right: 100px;
}
header > .header_head > .header_bd {
  display: flex;
}
header > .header_head > .header_bd > a {
  text-decoration: none;
  display: block;
  height: 100px;
  width: 100px;
  text-align: center;
  line-height: 100px;
  color: rgba(255, 255, 255, 0.5);
  margin: 0 10px 0 10px;
}
header > .header_head > .header_bd > a:hover {
  background: rgba(255, 255, 255, 0.12);
  color: #fff;
}
header > .header_head > .header_ft {
  height: 100px;
  display: flex;
  margin: 0 200px 0 200px;
}
header > .header_head > .header_ft > a {
  text-decoration: none;
  display: block;
  height: 100px;
  width: 100px;
  text-align: center;
  line-height: 100px;
  color: rgba(255, 255, 255, 0.5);
}
header > .header_head > .header_ft > a:hover {
  background: rgba(255, 255, 255, 0.12);
  color: #fff;
}
header > .header_head > .header_ft > span {
  text-decoration: none;
  display: block;
  height: 100px;
  text-align: center;
  line-height: 100px;
  color: rgba(255, 255, 255, 0.5);
}
.header_nav {
  height: 50px;
  display: flex;
  background: #fefefe;
}

.header_nav_hd {
  display: flex;
  justify-content: space-around;
  margin-right: 300px;
  margin-left: 200px;
}

.header_nav_bd {
  display: flex;
  justify-content: space-around;
}
.header_nav_hd {
  position: relative;
}
.header_nav_hd li {
  cursor: pointer;
  list-style: none;
  width: 100px;
  font-size: 13px;
  color: rgba(0, 0, 0, 0.8);
  text-align: center;
}
.header_nav_hd li:hover {
  color: #f69c00;
}
.header_nav_bd li {
  cursor: pointer;
  list-style-type: none;
  width: 100px;
  font-size: 13px;
  color: rgba(0, 0, 0, 0.8);
  text-align: center;
}
.header_nav_bd li:hover {
  color: #f69c00;
}
.header_nav_ft {
  position: relative;
}
.header_nav_ft input {
  margin-top: 10px;
  margin-left: 100px;
  padding: 3px 25px 3px 15px;
  width: 150px;
  height: 24px;
  border-top-left-radius: 30px;
  border-bottom-left-radius: 30px;
  outline: none;
  border: 1px solid #f69c00;
  line-height: 50px;
}
.header_nav_ft a {
  display: inline-block;
  width: 50px;
  height: 30px;
  border: 1px solid #f69c00;
  border-top-right-radius: 30px;
  border-bottom-right-radius: 30px;
  position: absolute;
  right: -51px;
  top: 10px;
  background: #ffe37f;
}
.header_nav_ft a i {
  width: 20px;
  height: 22px;
  background: url(../assets/picture/title/search.png) no-repeat;
  position: absolute;
  top: 3px;
  left: 11px;
}
a {
  text-decoration: none;
}
</style>
