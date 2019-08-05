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
          <a href="#">角色扮演</a>
        </li>
        <li>
          <a href="#">动作冒险</a>
        </li>
        <li>
          <a href="#">MOBA</a>
        </li>
        <li>
          <a href="#">FPS</a>
        </li>
        <li>
          <a href="#">体育竞技</a>
        </li>
        <li>
          <a href="#">休闲娱乐</a>
        </li>
      </ul>
    </div>
  </nav>
</template>
<script>
export default {
  data() {
    return {};
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
