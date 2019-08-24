<template>
  <div class="login">
    <div class="line">
      <input type="text" name="uname" id="uname" placeholder="用户名" />
    </div>
    <div class="line">
      <input type="text" name="upwd" id="upwd" placeholder="密码" />
    </div>
    <div class="line">
      <button>登录</button>
    </div>
    <div class="line line4">
      <input class="checkbox" id type="checkbox" />记住密码
      <div class="null"></div>
      <a href="#">忘记密码</a>
    </div>
    <div class="login_img line">
      <a href="#" class="qq"></a>
      <a href="#" class="wx"></a>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {};
  }
};
</script>
<style scoped>
div.login {
  position: fixed;
  top:50%;left: 50%;
  margin-left: -175.5px;
  margin-top: -180px;
  width: 315px;
  border: 1px solid rgba(246, 156, 0,0.5);
  border-radius: 5px;
  background: #fff9e4
}
div {
  box-sizing: border-box;
  font-size: 14px;
}
div .line {
  margin: 30px;
}
.login_img .qq {
  display: inline-block;
  width: 30px;
  height: 30px;
  background: url(../assets/picture/title/sprite.png) 96px 95px;
}
.login_img .wx {
  display: inline-block;
  width: 30px;
  height: 30px;
  background: url(../assets/picture/title/sprite.png) 31px 95px;
}
.login_img {
  width: 250px;
  position: relative;
  display: flex;
  justify-content: space-around;
}
input#uname,
input#upwd {
  width: 240px;
  height: 40px;
  line-height: 46px;
  border: 1px solid #3a4056;
  border-radius: 2px;
  padding-left: 10px;
}
button {
  width: 250px;
  height: 40px;
  border-radius: 2px;
  border: none;
  outline: none;
  background: #f69c00;
  cursor: pointer;
}
.null {
  display: inline-block;
  width: 110px;
  height: 10px;
}
.line4 a {
  color: #222;
  text-decoration: none;
}
</style>
