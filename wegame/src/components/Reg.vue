<template>
<body>
  <div class="reg">
    <div class="line">
      <input type="text" v-model="uname" placeholder="用户名" />
      <p v-show="sUname">用户名格式错误</p>
    </div>
    <div class="line">
      <input type="text" v-model="upwd" placeholder="密码" />
      <p v-show="sUpwd">密码格式错误</p>
    </div>
    <div class="line">
      <input type="text" v-model="cpwd" placeholder="确认密码" />
    </div>
    <div class="line">
      <input type="text" v-model="phone" placeholder="手机号" />
    </div>
    <div class="line">
      <input type="text" v-model="email" placeholder="邮箱" />
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
    return {
      sUname: false,
      sUpwd: false,
      uname: "",
      upwd: "",
      cpwd: "",
      phone: "",
      email: ""
    };
  },
  method:{
    reg(){

    }
  },
  created() {

  },
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
</style>
