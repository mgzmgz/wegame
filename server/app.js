const express = require("express")
const mysql = require("mysql")
const cors = require("cors")
const session = require("express-session");
const bodyParser = require('body-parser');
var pool = mysql.createPool({
  host: "127.0.0.1",  //数据库地址
  user: "root",       //数据库用户名
  password: "",       //数据库密码
  port: 3306,         //数据库端口
  database: "wegame",     //数据库名称
  connectionLimit: 15 //连接数量
});

var server = express();
server.use(cors({
  //允许跨域访问程序地址列表
  origin: ["http://127.0.0.1:8080",
    "http://localhost:8080"],
  credentials: true //请求验证
}))

server.use(session({
  secret: "128位字符串",  //安全字符串
  resave: true,           //请求时更新数据
  saveUninitialized: true  //保存初始数据         
}))

server.use(express.static("public"))

server.use(bodyParser.urlencoded({
  extended: false //不使用第三方的qs模块，使用querystring模块
}));

server.listen(3000);

//查询
server.get("/", (req, res) => {
  var sql = `SELECT gid,gname,price,pic,shelf_time FROM game`
  pool.query(sql, [], (err, result) => {
    if (err) {
      res.send(err)
      console.log(err)
    } else {
      res.send({ code: 1, msg: "查询成功", data: result })
    }
  })
})

//注册
server.post("/reg", (req, res) => {
  var uname = req.body.uname
  var upwd = req.body.upwd
  var phone = req.body.phone
  var email = req.body.email

  var sql = `SELECT uid FROM game_user WHERE uname=?`
  pool.query(sql, [uname], (err, result) => {
    if (err) throw err
    if (result.length > 0) {
      res.send({ code: -1, msg: "用户名重复" })
    } else {
      var sql = `INSERT INTO game_user(uid,uname,upwd,email,phone) VALUES(NULL,?,md5(?),'${email}','${phone}')`
      pool.query(sql, [uname, upwd, email, phone], (err, result) => {
        console.log(sql)
        if (err) throw err
        if (result.affectedRows > 0) {
          res.send({ code: 1, msg: "添加成功" })
        } else {
          res.send({ code: -1, msg: "添加失败" })
        }
      })
    }
  })
})

//登录
server.post("/login", (req, res) => {
  var uname = req.body.uname
  var upwd = req.body.upwd
  var sql = `SELECT uid FROM game_user WHERE uname=? AND upwd=md5(?)`
  pool.query(sql, [uname, upwd], (err, result) => {
    if (err) throw err
    if (result.length == 0) {
      console.log(result)
      res.send({ code: -1, msg: "用户名或密码有误" })
    } else {
      req.session.uid = result[0].uid
      res.send({ code: 1, msg: "登录成功" })
      console.log(res)
    }
  })
})

//查询
server.get("/detail", (req, res) => {
  var sql = `SELECT * FROM game`
  pool.query(sql, (err, result) => {
    if (err) throw err
    if (result.length > 0) {
      res.send({ code: 1, msg: "查询成功", data: result })
    } else {
      res.send({ code: -1, msg: "查询失败" })
    }
  })
})