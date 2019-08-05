<template>
    <div class="body">
        <div class="body_game">
        <ul>
            <li>
                <div>
                    <a href="#">
                        <img src="../assets/picture/game/LOL.jpg" alt="">
                    </a>
                </div>
                <div class="d2">
                    <a href="#">
                        <h3>英雄联盟</h3>
                    </a>
                    <p>2011-09-22 上线</p>
                    <a href="#" class="title">
                        <p>MOBA</p>
                    </a>
                </div>
                <div class="d3">
                    <p>免费</p>
                </div>
            </li>
            <li>
                <div>
                    <a href="#">
                        <img src="../assets/picture/game/DNF.jpg" alt="">
                    </a>
                </div>
                <div class="d2">
                    <a href="#">
                        <h3>地下城与勇士</h3>
                    </a>
                    <p>2008-06-19 上线</p>
                    <a href="#" class="title">
                        <p>动作冒险</p>
                    </a>
                </div>
                <div class="d3">
                    <p>免费</p>
                </div>
            </li>
            <li>
                <div>
                    <a href="#">
                        <img src="../assets/picture/game/CF.jpg" alt="">
                    </a>
                </div>
                <div class="d2">
                    <a href="#">
                        <h3>穿越火线</h3>
                    </a>
                    <p>2008-07-25 上线</p>
                    <a href="#" class="title">
                        <p>FPS</p>
                    </a>
                </div>
                <div class="d3">
                    <p>免费</p>
                </div>
            </li>
            <li>
                <div>
                    <a href="#">
                        <img src="../assets/picture/game/qqfeiche.jpg" alt="">
                    </a>
                </div>
                <div class="d2">
                    <a href="#">
                        <h3>QQ飞车</h3>
                    </a>
                    <p>2008-01-23 上线</p>
                    <a href="#" class="title">
                        <p>休闲娱乐</p>
                    </a>
                </div>
                <div class="d3">
                    <p>免费</p>
                </div>
            </li>
            <li>
                <div>
                    <a href="#">
                        <img src="../assets/picture/game/NBA2K.jpg" alt="">
                    </a>
                </div>
                <div class="d2">
                    <a href="#">
                        <h3>NBA2KOL2</h3>
                    </a>
                    <p>2018-08-02 上线</p>
                    <a href="#" class="title">
                        <p>体育竞技</p>
                    </a>
                </div>
                <div class="d3">
                    <p>免费</p>
                </div>
            </li>
            <li>
                <div>
                    <a href="#">
                        <img src="../assets/picture/game/sanguosha.jpg" alt="">
                    </a>
                </div>
                <div class="d2">
                    <a href="#">
                        <h3>三国杀</h3>
                    </a>
                    <p>2011-09-22 上线</p>
                    <a href="#" class="title">
                        <p>休闲娱乐</p>
                    </a>
                </div>
                <div class="d3">
                    <p>免费</p>
                </div>
            </li>
            <li>
                <div>
                    <a href="#">
                        <img src="../assets/picture/game/miaosikuaipao.jpg" alt="">
                    </a>
                </div>
                <div class="d2">
                    <a href="#">
                        <h3>喵斯快跑</h3>
                    </a>
                    <p>2019-06-20 上线</p>
                    <a href="#" class="title">
                        <p>休闲娱乐</p>
                    </a>
                </div>
                <div class="d3">
                    <p>￥14</p>
                </div>
            </li>
            <li>
                <div>
                    <a href="#">
                        <img src="../assets/picture/game/zhongguoshijiazhang.jpg" alt="">
                    </a>
                </div>
                <div class="d2">
                    <a href="#">
                        <h3>中国式家长</h3>
                    </a>
                    <p>2018-09-29 上线</p>
                    <a href="#" class="title">
                        <p>休闲娱乐</p>
                    </a>
                </div>
                <div class="d3">
                    <p>￥36</p>
                </div>
            </li>
            <li>
                <div>
                    <a href="#">
                        <img src="../assets/picture/game/jianwang3.jpg" alt="">
                    </a>
                </div>
                <div class="d2">
                    <a href="#">
                        <h3>剑网3</h3>
                    </a>
                    <p>2019-06-20 上线</p>
                    <a href="#" class="title">
                        <p>角色扮演</p>
                    </a>
                </div>
                <div class="d3">
                    <p>免费</p>
                </div>
            </li>
        </ul>
    </div>
    <div class="change">
        <ul class="go">
            <li>
                <a href="#" class="btn"></a>
            </li>
            <li>
                <a href="#" class="btn1">1</a>
            </li>
            <li>
                <a href="#" class="btn1">2</a>
            </li>
            <li>
                <a href="#" class="btn1">3</a>
            </li>
            <li>
                <a href="#" class="btn1">4</a>
            </li>
            <li>
                <a href="#" class="btn1">5</a>
            </li>
            <li>
                <a href="#" class="btn2"></a>
            </li>
        </ul>
        <span>到第
            <input type="text"> 页
        </span>
        <button>确定</button>
    </div>
    </div>
</template>
<script>
export default {
    data(){
        return{}
    }
}
</script>
<style scoped>
.body_game ul{
    background: #fff;
}
a{
    text-decoration: none
}
li{
    display: inline-block;
    width: 700px;
    display: flex;
}
ul{
    margin:0;
    padding: 20px 0 0 20px
}
ul img{
    width: 180px;
    display: block;
}
.d2{
   width: 300px;
   height: 100px;
   display: flex;
   flex-direction:column;
   justify-content: space-around;
   margin-left:30px;
}
.d2 h3{
    font-size:18px;
    color:#3c3c3c;
    margin:0
}
.d2 p{
    font-size:15px;
    color: #3c3c3c;
    margin:0
}
.title p{
    display: inline-block;
    border: 1px solid rgba(100,100,100,0.5);
    font-size: 12px;
    color: #3c3c3c; 
    padding:1px 5px;
    border-radius: 3px
}
.d3{
    margin:50px auto;
    color:#333;
}
.d3 p{
    margin:0
}

.body_game{
    margin-left: 30%;
    width:700px
}
.btn{
    display:block;
    width: 20px;
    height: 20px;
    background: url(../assets/picture/title/left.png) no-repeat 5px 5px;
}
.btn1{
    display:block;
    width: 20px;
    height: 20px;
    text-align: center;
    border: 1px solid #aaa;
    border-radius: 2px;
    color: #666;
}
.btn2{
    display:block;
    width: 20px;
    height: 20px;
    background: url(../assets/picture/title/right.png) no-repeat 5px 5px;
    
}
.btn1:hover{
    background:rgba(255,200,0,.5);
}
ul.go{
    display: flex;
    width: 25%;
}
.change{
    display: flex;
    margin-top: 20px;
    margin-bottom: 20px;
    margin-left: 30%;
}
span{
    display: block;
    color:#666;
    margin-left: 3%;
    margin-top:19px
}
span input{
    width: 30px;
    height: 20px;
    border-radius: 2px;
    outline: 0;
    border: 1px solid #aaa;
    padding-left: 10px
}
.change button{
    width: 50px;
    height:25px;
    margin-top:19px;
    color: #666;
    border: 1px solid #aaa;
    border-radius: 5px;
    outline: 0;
    padding: 3px;
    background: #eee;
    margin-left: 5%
}
div.body{
    background: url(../assets/picture/title/bg.jpg)
}
</style>
