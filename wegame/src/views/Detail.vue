<template>
<body>
  <div class="top" :style="{backgroundImage: 'url(' + baseUrl+ game[num].bg_pic + ')'}">
    <img :src="baseUrl+game[num].pic" alt />
    <h1>{{game[num].gname}}</h1>
  </div>
  <div class="middle">
    <video :src="baseUrl+'sanguosha.mp4'" autoplay="autoplay" controls="controls"></video>
    <div class="nav">
      <ul>
        <li>发行日期</li>
        <li>2019-06-20</li>
      </ul>
      <ul>
        <li>开发商</li>
        <li>{{game[num].developers}}</li>
      </ul>
      <ul>
        <li>运营商</li>
        <li>{{game[num].operator}}</li>
      </ul>
      <ul>
        <li>发行平台</li>
        <li>Game</li>
      </ul>
      <p v-if="game[num].price==0">免费</p>
      <p v-else-if="game[num].price!=0">{{game[num].price}}</p>
      <button>立即购买</button>
      <button class="cart">加入购物车</button>
    </div>
  </div>
  <div class="main">
    <div class="body">
      <h2>游戏详情</h2>
      <div id="dt">{{game[num].details}}</div>
    </div>
    <div class="body_nav">
      <h3>最低配置要求</h3>
      <table>
        <tr>
          <td class="tit">
            <span>内存</span>
          </td>
          <td>
            <span>{{game[num].memory}}</span>
          </td>
        </tr>
        <tr>
          <td class="tit">
            <span>显卡</span>
          </td>
          <td>
            <span>{{game[num].video_card}}</span>
          </td>
        </tr>
        <tr>
          <td class="tit">
            <span>硬盘</span>
          </td>
          <td>
            <span>{{game[num].disk}}</span>
          </td>
        </tr>
        <tr>
          <td class="tit">
            <span>CPU</span>
          </td>
          <td>
            <span>{{game[num].cpu}}</span>
          </td>
        </tr>
        <tr>
          <td class="tit">
            <span>系统</span>
          </td>
          <td>
            <span>{{game[num].os}}</span>
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
    return {
      gid: "",
      gname: "",
      price: "",
      memory: "",
      video_card: "",
      disk: "",
      cpu: "",
      os: "",
      details: "",
      shelf_time: "",
      developers: "",
      operator: "",
      pic: "",
      bg_pic: "",
      game: "",
      num: 0,
      baseUrl: "http://127.0.0.1:3000/"
    };
  },
  created() {
    var gid = this.gid;
    var gname = this.gname;
    var price = this.price;
    var memory = this.memory;
    var video_card = this.video_card;
    var disk = this.disk;
    var cpu = this.cpu;
    var os = this.os;
    var details = this.details;
    var shelf_time = this.shelf_time;
    var developers = this.developers;
    var operator = this.operator;
    var pic = this.pic;
    var bg_pic = this.bg_pic;

    this.axios
      .get("/detail")
      .then(res => {
        console.log(res.data.data);
        this.game = res.data.data;
      })
      .catch(err => {
        console.log(err);
      });
    this.num = this.$route.fullPath.slice(8);
  },
  watch: {
    $route() {
      this.num = this.$route.fullPath.slice(8);
    }
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
  background: no-repeat top center;
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
  white-space: nowrap;
  text-overflow: ellipsis;
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
#dt {
  margin-left: 80px;
  margin-right: 80px;
  line-height: 50px;
  font-size: 20px;
}
.body_nav {
  margin-bottom: 100px;
}
</style>
