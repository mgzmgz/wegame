<template>
  <div>
    <MyHeader></MyHeader>
    <div class="box">
      <div class="list" v-for="(item,i) of this.list" :key="i">
        <div class="cb">
          <input type="checkbox" />
        </div>
        <img :src="baseUrl+item.pic" alt />
        <span class="pn">{{item.gname}}</span>
        <span>￥{{item.price}}</span>
        <div class="icon">
          <i class="el-icon-delete" @click="del" :data-cid="item.cid"></i>
        </div>
      </div>
      <div class="btn">
        <button @click="buy">确认购买</button>
      </div>
    </div>
  </div>
</template>  
<script>
import MyHeader from "../components/Header.vue";
export default {
  data() {
    return {
      list: [],
      baseUrl: "http://127.0.0.1:3000/"
    };
  },
  components: {
    MyHeader: MyHeader
  },
  methods: {
    buy(){
       this.$message({
            message: "购买成功",
            type: "success"
          });
    },
    del(e) {
      var cid = e.target.dataset.cid;
      var obj = { cid };
      this.axios.get("/del", { params: obj }).then(res => {
        if (res.data.code > 0) {
          this.$message({
            message: "删除成功",
            type: "success"
          });
          this.cart();
        }
      });
    },
    cart() {
      this.axios.get("/cart").then(res => {
        if (res.data.code == -1) {
          this.$message({
            message: "请先登录",
            type: "warning"
          });
          this.$router.push("/");
        } else {
          this.list = res.data.data;
        }
      });
    }
  },
  created() {
    this.cart();
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
  overflow: scroll;
  overflow-x: hidden;
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
  float: right;
  margin: 30px 0;
}
</style>