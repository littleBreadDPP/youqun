const express=require('express');
//引入路由器
const bodyParser=require('body-parser')
const mysql=require('mysql')
const mypro=require('./router/mypro.js')
var server=express();
server.listen(8080);

//托管静态资源到public下  内置中间件
server.use(express.static('mypro'));
//配置body-parser中间件
server.use(bodyParser.urlencoded({
	extended:false
}))
server.use('/mypro',mypro)