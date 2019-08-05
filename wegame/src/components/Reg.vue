<template>
<body>
  <div class="reg">
    <div class="line">
      <input type="text" name="uname" id="uname" placeholder="用户名" />
    </div>
    <div class="line">
      <input type="text" name="upwd" id="upwd" placeholder="密码" />
    </div>
    <div class="line">
      <input type="text" name="cpwd" id="cpwd" placeholder="确认密码" />
    </div>
    <div class="line">
      <input type="text" name="phone" id="phone" placeholder="手机号" />
    </div>
    <div class="line">
      <button>注册</button>
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
div.reg {
  width: 315px;
  border: 1px solid rgba(246, 156, 0);
  border-radius: 5px;
  float: right;
  margin-right: 200px;
  margin-top: 150px;
  background: rgba(245, 245, 245, 0.2);
}
div {
  box-sizing: border-box;
  font-size: 14px;
}
div .line {
  margin: 25px;
}
input {
  width: 240px;
  height: 40px;
  line-height: 46px;
  border: 1px solid #3a4056;
  border-radius: 2px;
  padding-left: 20px;
}
button {
  width: 260px;
  height: 40px;
  border-radius: 2px;
  border: none;
  outline: none;
  background: #f69c00;
}
body {
  background: url(../assets/picture/title/bg1.jpg);
  background-size: cover;
}
</style>
