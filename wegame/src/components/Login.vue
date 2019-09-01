<template>
  <div class="login" v-show="show">
    <i @click="close" class="el-icon-circle-close"></i>
    <div class="line">
      <input type="text" v-model="uname" class="uname" placeholder="用户名" />
    </div>
    <div class="line">
      <input type="password" v-model="upwd" class="upwd" placeholder="密码" />
    </div>
    <div class="line">
      <button @click="login">登录</button>
    </div>
    <div class="line line4">
      <input class="checkbox" id type="checkbox" />记住密码
      <div class="null"></div>
      <a href="#">忘记密码</a>
    </div>
  </div>
</template>
<script>
import qs from "qs";
export default {
  data() {
    return {
      uname: "",
      upwd: "",
      show: true
    };
  },
  methods: {
    login() {
      var uname = this.uname;
      var upwd = this.upwd;
      if (uname == "" || upwd == "") {
        this.$message({
          message: "用户或密码为空",
          type: "warning"
        });
        return;
      }
      var obj = { uname, upwd };
      var data = qs.stringify(obj);
      this.axios.post("/login", data).then(res => {
        console.log(res);
        if (res.data.code == -1) {
          this.$message({
            message: "用户或密码错误",
            type: "warning"
          });
        } else {
          this.$message({
            message: "登录成功",
            type: "warning"
          });
          this.show = !this.show;
        }
      });
    },
    close() {
      this.show = !this.show;
    }
  }
};
</script>
<style scoped>
div.login {
  position: fixed;
  top: 50%;
  left: 50%;
  margin-left: -175.5px;
  margin-top: -180px;
  width: 315px;
  border: 1px solid rgba(246, 156, 0, 0.5);
  border-radius: 5px;
  background: #fff9e4;
  z-index: 999;
}
div {
  box-sizing: border-box;
  font-size: 14px;
}
div .line {
  margin: 30px;
}
.login_img {
  width: 250px;
  position: relative;
  display: flex;
  justify-content: space-around;
}
input.uname,
input.upwd {
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
i {
  float: right;
  font-size: 20px;
  cursor: pointer;
}
</style>
