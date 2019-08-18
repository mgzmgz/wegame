<template>
  <div>
    <MyHeader></MyHeader>
    <div class="box">
      <div class="list">
        <div class="cb">
          <input type="checkbox" />
        </div>
        <img src="../assets/picture/game/miaosikuaipao.jpg" alt />
        <span class="pn">秒死</span>
        <span>￥48</span>
        <div class="icon">
          <i class="el-icon-delete"></i>
        </div>
      </div>
      <div class="btn">
        <button>确认购买</button>
      </div>
    </div>
  </div>
</template>  
<script>
import MyHeader from "../components/Header.vue";
export default {
  data() {
    return {};
  },
  components: {
    MyHeader: MyHeader
  }
};
</script>
<style scoped>
.box {
  position: absolute;
  left: 50%;
  top: 50%;
  width: 1000px;
  height: 400px;
  margin-left: -500px;
  margin-top: -200px;
  border: 1px solid #555;
  border-radius: 5px;
  background: #fff9e4;
}

.box .list {
  margin-top: 10px;
  padding-bottom: 10px;
  display: flex;
  justify-content: space-between;
  border-bottom: 1px solid #ddd;
}
.box img {
  width: 130px;
  height: 75px;
  display: block;
  margin-left: -300px;
}
.box .cb {
  width: 80px;
  height: 75px;
}
.box .cb input {
  margin: 33px;
}

.box span {
  line-height: 75px;
  color: #ff6f00;
}
.box .pn {
  color: #111;
  margin-left: -250px;
}
.box .icon {
  width: 80px;
  height: 75px;
}
.box .icon i {
  line-height: 75px;
  cursor: pointer;
}
button {
  width: 135px;
  height: 36px;
  background-color: #ffca28;
  color: #000;
  border-radius: 5px;
  border-color: #ffca28;
  font-size: 15px;
  outline: none;
  border: none;
  cursor: pointer;
}
.btn {
  position: absolute;
  top: 90%;
  left: 50%;
  margin-left: 365px;
  margin-top: 4px;
}
</style>