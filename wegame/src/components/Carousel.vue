<template>
  <div class="block">
    <el-carousel height="450px">
      <el-carousel-item>
        <router-link to="Detail?9">
          <img src="../assets/picture/carousel/jianling.jpeg" alt />
        </router-link>
      </el-carousel-item>
      <el-carousel-item>
        <router-link to="Detail?4">
          <img src="../assets/picture/carousel/baoleizhiye.jpeg" alt />
        </router-link>
      </el-carousel-item>
      <el-carousel-item>
        <router-link to="Detail?6">
          <img src="../assets/picture/carousel/DNF.jpeg" alt />
        </router-link>
      </el-carousel-item>
      <el-carousel-item>
        <router-link to="Detail?20">
          <img src="../assets/picture/carousel/jianwang3.jpeg" alt />
        </router-link>
      </el-carousel-item>
      <el-carousel-item>
        <router-link to="Detail?21">
          <img src="../assets/picture/carousel/miaosikuaipao.jpeg" alt />
        </router-link>
      </el-carousel-item>
    </el-carousel>
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
.block {
  width: 1000px;
  margin-left: 21%;
}
</style>