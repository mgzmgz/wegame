<template>
<body>
  <div class="top">
    <img src="../assets/picture/game/miaosikuaipao.jpg" alt />
    <h1>喵斯快跑</h1>
  </div>
  <div class="middle">
    <video
      src="../assets/sanguosha.mp4"
      autoplay="autoplay"
      controls="controls"
    ></video>
    <div class="nav">
      <ul>
        <li>发行日期</li>
        <li>2019-06-20</li>
      </ul>
      <ul>
        <li>开发商</li>
        <li>广州呸喽呸喽科技有限公司</li>
      </ul>
      <ul>
        <li>运营商</li>
        <li>心动网络股份有限公司</li>
      </ul>
      <ul>
        <li>发行平台</li>
        <li>WeGame</li>
      </ul>
      <p>￥14</p>
      <button>立即购买</button>
      <button class="cart">加入购物车</button>
      <label for="checkbox">
        <input type="checkbox" />
        <span>以了解</span>
        <a href="#">WeGame用户协议</a>
        <button class="dl">下载</button>
      </label>
    </div>
  </div>
  <div class="main">
    <div class="body">
      <h2>游戏详情</h2>
      <h4></h4>
    </div>
    <div class="body_nav">
      <h3>最低配置要求</h3>
      <table>
        <tr>
          <td class="tit">
            <span>内存</span>
          </td>
          <td>
            <span>2 GB</span>
          </td>
        </tr>
        <tr>
          <td class="tit">
            <span>显卡</span>
          </td>
          <td>
            <span>NVIDIA GeForce 6600 GT</span>
          </td>
        </tr>
        <tr>
          <td class="tit">
            <span>硬盘</span>
          </td>
          <td>
            <span>2 GB</span>
          </td>
        </tr>
        <tr>
          <td class="tit">
            <span>CPU</span>
          </td>
          <td>
            <span>Intel(R) Pentium(R) M processor 2.00GHz</span>
          </td>
        </tr>
        <tr>
          <td class="tit">
            <span>系统</span>
          </td>
          <td>
            <span>Windows 7+</span>
          </td>
        </tr>
      </table>
    </div>
  </div>
</body>
</template>
<script>
export default {
  data() {
    return {};
  }
};
</script>
<style scoped>
body {
  background: url(../assets/picture/title/bg.jpg) no-repeat;
  margin: 0;
  padding: 0;
}
.top {
  display: flex;
  background: url(../assets/picture/bj/miaosikuaipao.jpg) no-repeat top center;
  padding-top: 100px;
  padding-left: 100px;
}
.top h1 {
  display: block;
  margin-top: 30px;
  margin-left: 40px;
  color: #fff;
}
.top img {
  width: 270px;
  height: 150px;
}
video {
  background-color: rgb(0, 0, 0);
  width: 50%;
  height: 50%;
  display: inline-block;
  margin-left: 10%;
  margin-top: 2%;
}
.middle {
  display: flex;
}
li {
  display: inline-block;
  width: 180px;
  height: 40px;
  font-size: 14px;
  color: #3c3c3c;
  text-align: center;
  background: #fefefe;
  line-height: 40px;
  margin-bottom: 1%;
  border-radius: 5px;
  margin-left: 5px;
}
ul {
  display: block;
  margin-left: 50px;
}
.nav {
  margin-top: 4%;
}
p {
  display: block;
  margin-left: 6rem;
  margin-top: 1.5rem;
}
p + button {
  display: inline-block;
  width: 10rem;
  height: 2.5rem;
  margin-left: 6rem;
  margin-top: 0.5rem;
  background: #ff8d13;
  border: none;
  outline: none;
  border-radius: 5rem;
  color: #fff;
  cursor: pointer;
}
.nav button.cart {
  display: inline-block;
  width: 10rem;
  height: 2.5rem;
  margin-left: 2.5rem;
  background: #ff8d13;
  border: none;
  outline: none;
  border-radius: 5rem;
  color: #fff;
  cursor: pointer;
}
button.dl {
  display: inline-block;
  width: 5rem;
  height: 2.5rem;
  margin-left: 5rem;
  border: 1px solid #e2e2e2;
  outline: none;
  border-radius: 1.5rem;
  background: #fff7e4;
  color: #3c3c3c;
  cursor: pointer;
}
label {
  display: block;
  margin-left: 6rem;
  margin-top: 1.5rem;
  font-size: 5px;
  color: #757575;
}
label a {
  color: #757575;
}
h2 {
  display: block;
  margin-left: 10%;
  margin-top: 2%;
}
.body {
  margin-left: 5%;
  width: 60%;
}
.main {
  display: flex;
  background: #eee;
}
h3 {
  display: block;
  margin-left: 10%;
  margin-top: 30%;
  margin-bottom: 5%;
}
tr {
  line-height: 40px;
  color: #3c3c3c;
  text-align: center;
  background: #fefefe;
}
td {
  border-radius: 4px;
}
.tit {
  width: 4rem;
}
</style>
