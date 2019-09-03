<template>
  <div class="body">
    <my-header></my-header>
    <my-nav v-on:bysearch="bysearch"></my-nav>
    <div class="body_game">
      <ul>
        <li v-for="(item,i) of game.slice(n1,n2)" :key="i">
          <div>
            <router-link :to="`Detail?${item.gid-1}`">
              <img :src="baseUrl+item.pic" alt />
            </router-link>
          </div>
          <div class="d2">
            <a href="#">
              <h3>{{item.gname}}</h3>
            </a>
            <p>{{item.shelf_time|time}} 上线</p>
            <a href="#" class="title">
              <p>{{item.title}}</p>
            </a>
          </div>
          <div class="d3">
            <p v-if="item.price==0">免费</p>
            <p v-else-if="item.price!=0">￥{{item.price}}</p>
          </div>
        </li>
      </ul>
    </div>
    <div class="block">
      <el-pagination layout="prev,next" :total="game.length" @next-click="right" @prev-click="left"></el-pagination>
      <div class="pno">{{num}}</div>
      <div class="pto">共 {{pto}} 页</div>
      <br />
      <br />
      <br />
    </div>
  </div>
</template>
<script>
import MyHeader from "../components/Header.vue";
import MyNav from "../components/Nav.vue";
export default {
  data() {
    return {
      baseUrl: "http://127.0.0.1:3000/",
      game: [],
      n1: 0,
      n2: 10,
      num: 1,
      pto: "",
      list: []
    };
  },
  components: {
    MyHeader: MyHeader,
    MyNav: MyNav
  },
  mounted() {
    this.load();
    this.bysearch(list);
  },
  methods: {
    bysearch(list) {
      this.game = list;
      this.pto = Math.ceil(this.game.length / 10);
    },
    load() {
      this.axios
        .get()
        .then(res => {
          console.log(res.data.data);
          this.game = res.data.data;
          this.pto = Math.ceil(this.game.length / 10);
        })
        .catch(err => {
          console.log(err);
        });
    },
    right() {
      this.n1 += 10;
      if (this.n2 > this.game.length) {
        this.n2 = "";
      } else {
        this.n2 += 10;
      }
      this.num++;
    },
    left() {
      if (this.game.length < 0) {
        this.n1 = 0;
      } else {
        this.n1 -= 10;
      }
      this.n2 -= 10;
      this.num--;
    }
  }
};
</script>
<style scoped>
.body_game ul {
  background: #fff;
}
a {
  text-decoration: none;
}
li {
  display: inline-block;
  width: 700px;
  display: flex;
}
ul {
  margin: 0;
  padding: 20px 0 0 20px;
}
ul img {
  width: 180px;
  display: block;
}
.d2 {
  width: 300px;
  height: 100px;
  display: flex;
  flex-direction: column;
  justify-content: space-around;
  margin-left: 30px;
}
.d2 h3 {
  font-size: 18px;
  color: #3c3c3c;
  margin: 0;
}
.d2 p {
  font-size: 15px;
  color: #3c3c3c;
  margin: 0;
}
.title p {
  display: inline-block;
  border: 1px solid rgba(100, 100, 100, 0.5);
  font-size: 12px;
  color: #3c3c3c;
  padding: 1px 5px;
  border-radius: 3px;
}
.d3 {
  margin: 50px auto;
  color: #333;
}
.d3 p {
  margin: 0;
}

.body_game {
  margin-left: 30%;
  width: 700px;
  margin-top: 50px;
}
div.body {
  background: url(../assets/picture/title/bg.jpg);
}
.block {
  margin: 20px 0 0 45%;
  position: relative;
}
.pno {
  position: absolute;
  top: 5px;
  left: 36px;
  color: #303133;
  font-size: 14px;
}
.pto {
  position: absolute;
  top: 4px;
  left: 150px;
  color: #303133;
}
</style>
