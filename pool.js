const mysql=require('mysql');
var pool=mysql.createPool({
  host:'127.0.0.2',
  post:'3306',
  user:'root',
  password:'',
  database:'yooqun',
  connectionLimit:20

})
module.exports=pool;