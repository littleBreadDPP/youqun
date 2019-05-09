const express=require('express');
const pool=require('../pool.js');
var router=express.Router();
//登录模块
router.post("/login",(req,res)=>{
  var $uname=req.body.uname;
  var $upwd=req.body.upwd;
  if (!$uname)
  {
	  res.send("用户名不存在");
	  return;
  }
 if (!$upwd)
  {
	  res.send("密码不存在");
	  return;
  }
  var sql="select * from yooqun_user where uname=? and upwd=?";
  pool.query(sql,[$uname,$upwd],(err,result)=>{
    if (err) {throw err};
	if (result.length>0)
	{
		res.send("登录成功");
	}else{
		res.send("登录失败,用户名或密码错误");
	}
  })
});

//注册模块
router.get("/reg1",(req,res)=>{
  var $uname=req.query.uname;
  console.log($uname)
  if (!$uname)
  {
	  res.send("用户不存在");
	  return;
  }
  pool.query("select * from yooqun_user where uname=?",[$uname],(err,result)=>{
    if (err)
    {
		throw err;
    }
	if(result.length>0){
	   res.send("1");
	}else{
	  res.send("0");
	}
  })

})
router.post("/reg2",(req,res)=>{
  var $uname=req.body.uname;
  var $upwd=req.body.upwd;
  var $email=req.body.email;
  var $phone=req.body.phone;
  if (!$uname)
  {
	  res.send("用户名不存在");
	  return;
  }
 if (!$upwd)
  {
	  res.send("密码不存在");
	  return;
  }
  if (!$email)
  {
	  res.send("邮箱不存在");
	  return;
  }
 if (!$phone)
  {
	  res.send("手机号不存在");
	  return;
  }
  var sql="insert into yooqun_user SET uname=?,upwd=?,email=?,phone=?"
  pool.query(sql,[$uname,$upwd,$email,$phone],(err,result)=>{
    if (err)
    {
		throw err;
    }
	if (result.affectedRows>0)
	{
		res.send("1");
	}else{
		res.send("0")
	}
  })
})   



//活动页面
router.get("/active1",(req,res)=>{
    var output={
        pageSize:req.query.pageSize,
        record:[]
    };
  var sql="select * from yooqun_activeI order by uid desc limit ?,16";
  pool.query(sql,[(output.pageSize-1)*16],(err,result)=>{
    if(err) throw err;
      output.record=result;
	if (result.length>0)
	{
		res.send(output);
	}else{
		res.send("404 found")
	}
  })
})


//分页
router.get("/pagesize",(req,res)=>{
    var sql="select * from yooqun_activeI";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
})
})
router.get("/active",(req,res)=>{
    var output={
        count:0,
        pageSize:16,
        pageCount:0,
        data:[]
    }
    var kw=req.query.kwords;
    var kws=kw.split(" ");
    kws.forEach((elem,i,arr)=>{
        arr[i]=`aname like '%${elem}%'`;
    });
    var where=kws.join(" and ");
    var sql=`select * from yooqun_activeI where ${where}`;

    pool.query(sql,(err,result)=>{
        if(err) throw err;
        output.count=result.length;
        output.pageCount=Math.ceil(output.count/output.pageSize);
        sql+=` limit ?,?`;
        pool.query(sql,[output.pageSize*(output.pageCount-1),output.pageSize]);
        output.data=result;
        res.send(output);

    })
})
//分类、时间查询
router.get("/ClassSearch",(req,res)=>{
    var classify=req.query.classify;
    var data=req.query.data;
    if(classify=="全部"||classify==undefined){classify=""}
    if(data=="不限"||data==undefined){data=""}
    if(data=="今天"){
        var a=new Date();
        var y=a.getFullYear();
        var m=a.getMonth()+1;
        var d=a.getDate();
        if(m<10){m="0"+m};
        if(d<10){d="0"+d};
       data=y+'-'+m+'-'+d;
    }
    if(data=="本月"){
        var b=new Date();
        var year=b.getFullYear();
        var month=b.getMonth()+1;
        if(month<10){month="0"+month}
        data=year+'-'+month;
    }
    if(data=="本年"){
        var c=new Date();
        data=c.getFullYear();
    }
    var sql="select * from yooqun_activeI";
    if(!data&&classify!=="") {
        sql+=` where aname like '%${classify}%'`
    }else if(!classify&&data!==""){
        sql+=` where time like '%${data}%'`
    }else if(!data&&!classify){
        sql+=""
    } else{
        sql+=` where aname like '%${classify}%' and time like '%${data}%'`
    }
    sql+=" order by uid desc"
    pool.query(sql,[],(err,result)=>{
        console.log(sql)
        if(err) throw err;
        if (result.length>0)
        {
            res.send(result);
        }else{
            res.send("404 found")
        }
    })
})

//首页活动页面
router.get("/active2",(req,res)=>{
  var sql="select * from yooqun_activeII";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
	if (result.length>0)
	{
		res.send(result);
	}else{
		res.send("404 found")
	}
  })
})

//活动详情界面
router.get("/query",(req,res)=>{
        var $photo=req.query.photo;
        if (!$photo)
        {
            res.send("图片不存在");
            return;
        }
    pool.query("SELECT * FROM yooqun_active_details WHERE photo=?",[$photo],(err,result)=>{
        if (result.length>0){
            res.send(result[0]);
        }else{
            res.send("查无信息")
        }
    });
});
//浏览量
router.post("/inset",(req,res)=>{
    var $anumber=req.body.anumber;
    var $photo=req.body.photo;
    pool.query("update yooqun_activeI set  anumber=? where photo=?",[$anumber,$photo],(err,result)=> {
        if(err) throw err;
        if(result.affectedRows>0)
            res.send("1")
    })
});


//引入express-session组件
const session=require("express-session");
router.use(session({
    secret:"128位字符串",    //配置密钥
    resave:true,           //每次请求是否更新数据
    saveUninitialized:true  //保存初始化数据
  }))
//上传图片
//加载模板  multer
const fs =require("fs")
const multer=require("multer")
//创建upload对象并且指定上传临时文件目录
var upload=multer({dest:"/mypro/img/"});
//接收post请求 /uploadFile
router.post("/uploadFile",upload.single("mypic"),(req,res)=>{
  //判断文件大小不能超过2MB
  var size=req.file.size/1024/1024;
  if(size>2){
    res.send({code:-1,msg:"上传文件过大，请重选择"})
    return;
  }
  //判断文件必须图片
  var type=req.file.mimetype;
  var idx=type.indexOf("image");
  if(idx==-1){
    res.send({code:-1,msg:"上传文件类型不正确，请重新上传"})
    return;
  }
  //获取原文件
  var src=req.file.originalname;
  //创建新文件名
  var ft=new Date().getTime();
  var tn=Math.floor(Math.random()*9999);
  var i3=src.lastIndexOf(".")  //查找后缀.下标
  var suff=src.substring(i3)  //从i3位置开始截取
  var des=__dirname.slice(0,-7)+"/mypro/img/"+ft+tn+suff;
  var i4=des.lastIndexOf("/");
  var photo=des.substring(i4);
  req.session.photo="./img"+photo;
  console.log(req.session.photo)
  fs.renameSync(req.file.path,des);
  res.send("上传成功")
})


//活动发布
router.post("/activity",(req,res)=>{
    var $state=req.body.state;
    var $photo=req.session.photo
    var $aname=req.body.aname;
    var $time=req.body.time;
    var $address=req.body.address;
    var $anumber=req.body.anumber;
    var $money=req.body.money;
    if (!$photo)
    {
        res.send("请上传图片");
        return;
    }
    if (!$aname)
    {
        res.send("请输入活动标题");
        return;
    }
    pool.query("insert into yooqun_activeI SET state=?,photo=?,aname=?,time=?,address=?,anumber=?,money=?",[$state,$photo,$aname,$time,$address,$anumber,$money],(err,result)=>{
        if(err) throw  err;
        if (result.affectedRows>0)
        {
            res.send("发布成功");
        }else{
            res.send("发布失败")
        }
    })
})

//活动报名
router.post("/enroll",(req,res)=>{
    var $eactive=req.body.eactive;
    var $ename=req.body.ename;
    var $ephone=req.body.ephone;
    var $e_email=req.body.e_email;
    var $company=req.body.company;
    var $job=req.body.job;
    if (!$ename)
    {
        res.send("请输入您的名字");
        return;
    }
    if (!$ephone)
    {
        res.send("请输入你的手机号");
        return;
    }
    pool.query("insert into yooqun_active_enroll SET eactive=?,ename=?,ephone=?,e_email=?,company=?,job=?",[$eactive,$ename,$ephone,$e_email,$company,$job],(err,result)=>{
        if(err) throw  err;
        if (result.affectedRows>0)
        {
            res.send("报名成功");
        }else{
            res.send("报名失败")
        }
    })
})

//活动详情界面报名人数
router.post("/enrollnum",(req,res)=>{
    var $dnum=req.body.dnum;
    var $dname=req.body.dname;
    pool.query("update yooqun_active_details set dnum=? where dname=?",[$dnum,$dname],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows>0)
            res.send("1")
    })
})

//活动详情页评论功能
router.post("/comment1",(req,res)=>{
    var $contain=req.body.contain;
    var $title=req.body.title;
    var $ctime=req.body.ctime;
    var $cname=req.body.cname;
    var $cphoto="";
    if (!$contain)
    {
        res.send("评论内容不能为空");
        return;
    }
    var sql="insert into yooqun_comment SET title=?,cphoto=?,cname=?,ctime=?,contain=?"
    pool.query(sql,[$title,$cphoto,$cname,$ctime,$contain],(err,result)=>{
        if (err)
        {
            throw err;
        }
        if (result.affectedRows>0)
        {
            res.send("评论成功");
        }else{
            res.send("评论失败")
        }
    })
})

    //评论显示
    router.get("/comment2",(req,res)=>{
    var $title=req.query.title;
    pool.query("SELECT * FROM yooqun_comment WHERE title=?",[$title],(err,result)=>{
        if (result.length>0){
            res.send(result);
        }
    });
    });
module.exports=router;