const express =require("express")
const mysql =require("mysql")
const cors = require("cors")
const session = require("express-session");
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
server.listen(3000);
