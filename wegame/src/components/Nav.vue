<template>
  <nav>
    <div class="body_nav">
      <img src="../assets/picture/title/oss.png" alt />
      <strong>下载掌上WeGame</strong>
      <strong class="app-keywords">享受更多福利活动</strong>
    </div>
    <div class="footer_nav">
      <h3>热 门 标 签</h3>
      <ul>
        <li>
          <a href="javascript:;" :data-title="jsby" @click="search">角色扮演</a>
        </li>
        <li>
          <a href="javascript:;" :data-title="dzmx" @click="search">动作冒险</a>
        </li>
        <li>
          <a href="javascript:;" :data-title="MOBA" @click="search">MOBA</a>
        </li>
        <li>
          <a href="javascript:;" :data-title="FPS" @click="search">FPS</a>
        </li>
        <li>
          <a href="javascript:;" :data-title="tyjj" @click="search">体育竞技</a>
        </li>
        <li>
          <a href="javascript:;" :data-title="xxyl" @click="search">休闲娱乐</a>
        </li>
      </ul>
    </div>
  </nav>
</template>
<script>
export default {
  data() {
    return {
      jsby: "角色扮演",
      dzmx: "动作冒险",
      MOBA: "MOBA",
      FPS: "FPS",
      tyjj: "体育竞技",
      xxyl: "休闲娱乐",
      list: []
    };
  },
  methods: {
    search(e) {
      var title = e.target.dataset.title;
      var obj = { title };
      this.axios.get("/search", { params: obj }).then(res => {
        this.list = res.data.data;
        console.log(this.list);
        this.$emit("bysearch", this.list);
        this.$router.push("/List");
      });
    }
  }
};
</script>
<style scoped>
nav {
  float: left;
}
.body_nav {
  border: 1px solid #e2e3e5;
  width: 160px;
  height: 160px;
  margin-left: 50px;
  margin-top: 50px;
}

.body_nav img {
  display: block;
  width: 130px;
  margin: 15px 15px;
}

.body_nav strong {
  display: block;
  margin: 0 auto;
  text-align: center;
}

.body_nav .app-keywords {
  color: #f69c00;
}

.footer_nav {
  border: 1px solid #e2e3e5;
  border-radius: 5px;
  width: 160px;
  margin-left: 50px;
  margin-top: 100px;
  background: #fff;
}

.footer_nav h3 {
  display: block;
  width: 160px;
  text-align: center;
  padding: 0 0 18px 0;
  color: #757575;
  font-weight: bold;
  border-bottom: 1px solid #e2e3e5;
}

.footer_nav li {
  display: block;
  width: 160px;
  margin-top: 25px;
  color: #757575;
  list-style: none;
}

.footer_nav a {
  color: #757575;
  text-decoration: none;
}
</style>
