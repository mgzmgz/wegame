<template>
<body v-show="show">
  <div class="reg">
    <i @click="close" class="el-icon-circle-close"></i>
    <div class="line">
      <input type="text" v-model="uname" placeholder="用户名6~18位字母或数字" />
    </div>
    <div class="line">
      <input type="password" v-model="upwd" placeholder="密码6~18位字母或数字" />
    </div>
    <div class="line">
      <input type="password" v-model="cpwd" placeholder="确认密码" />
    </div>
    <div class="line">
      <input type="text" v-model="phone" placeholder="手机号" />
    </div>
    <div class="line">
      <input type="text" v-model="email" placeholder="邮箱" />
    </div>
    <div class="line">
      <button @click="reg">注册</button>
    </div>
  </div>
</body>
</template>
<script>
import qs from "qs";
export default {
  data() {
    return {
      sUname: false,
      sUpwd: false,
      uname: "",
      upwd: "",
      cpwd: "",
      phone: "",
      email: "",
      unameMsg: "",
      upwdMsg: "",
      show: true
    };
  },
  methods: {
    reg() {
      var uname = this.uname;
      var upwd = this.upwd;
      var cpwd = this.cpwd;
      var phone = this.phone;
      var email = this.email;
      if (uname == "" || upwd == "") {
        this.$message({
          message: "用户或密码为空",
          type: "warning"
        });
        return;
      }
      if (upwd !== cpwd) {
        this.$message({
          message: "请再次确认密码",
          type: "warning"
        });
        return;
      }
      if (phone == "") {
        this.$message({
          message: "手机号为空",
          type: "warning"
        });
        return;
      }
      if (email == "") {
        this.$message({
          message: "电子邮箱为空",
          type: "warning"
        });
        return;
      }
      var reg1 = /^[a-z0-9]{6,18}$/i;
      if (!reg1.test(uname)) {
        this.$message({
          message: "用户名格式错误",
          type: "warning"
        });
        return;
      }
      if (!reg1.test(upwd)) {
        this.$message({
          message: "密码格式错误",
          type: "warning"
        });
        return;
      }
      var reg2 = /^1(3|4|5|7|8)\d{9}$/;
      if (!reg2.test(phone)) {
        this.$message({
          message: "手机号格式错误",
          type: "warning"
        });
        return;
      }
      var reg3 = /^[A-Za-z0-9\u4e00-\u9fa5]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
      if (!reg3.test(email)) {
        this.$message({
          message: "电子邮箱格式错误",
          type: "warning"
        });
        return;
      }
      var obj = { uname, upwd, phone, email };
      var data = qs.stringify(obj);
      this.axios.post("/reg", data).then(res => {
        if (res.data.code == -1) {
          this.$message({
            message: "该用户已被注册",
            type: "warning"
          });
        } else if (res.data.code == 1) {
          this.$message({
            message: "注册成功",
            type: "warning"
          });
          this.show = !this.show;
          console.log(res);
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
div.reg {
  position: fixed;
  left: 50%;
  top: 50%;
  margin-left: -175.5px;
  margin-top: -230px;
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
  cursor: pointer;
}
body {
  background: url(../assets/picture/title/bg1.jpg);
  background-size: cover;
}
p {
  margin: 10px 0 -10px 10px;
  font-size: 10px;
}
i {
  float: right;
  font-size: 20px;
  cursor: pointer;
}
</style>
