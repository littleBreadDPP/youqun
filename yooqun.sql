#设置客户端连接服务器端编码
SET NAMES UTF8;
#丢弃数据库yooqun，如果存在的话
DROP DATABASE IF EXISTS yooqun;
#创建数据库yooqun，设置存储的编码
CREATE DATABASE yooqun CHARSET=UTF8;
#进入数据库
USE yooqun;
CREATE TABLE yooqun_user(
  lid TINYINT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(10) UNIQUE,
  upwd VARCHAR(30),
  email VARCHAR(20),
  phone VARCHAR(11)
);
#插入数据
INSERT INTO yooqun_user VALUES(NULL,'dangdang','123456','123456@qq.com','13115487899');

CREATE TABLE yooqun_activeI (
  uid TINYINT  PRIMARY KEY AUTO_INCREMENT,
  state varchar(3),
  photo varchar(100),
  aname varchar(30),
  time varchar(50),
  address varchar(50),
  anumber varchar(3),
  money varchar(10)
);
INSERT INTO yooqun_activeI VALUES(NULL,'报名中', './img/1527601286.png', '蒋方舟教你阅读', '2018-04-17 20:00:00 ~ 2024-04-17 11:56:00', '线上', '43', '免费');
INSERT INTO yooqun_activeI VALUES(NULL,'报名中', './img/1527601289.png', '情感咨询', '2018-04-25 11:20:00 ~ 2019-06-25 18:00:00', '龙首原地铁站C东南口 2号线', '83', '￥100.00');
INSERT INTO yooqun_activeI VALUES(NULL,'报名中', './img/1527601335 (1).png', '女性情感交流群', '2018-05-09 08:00:00 ~ 2020-05-09 23:00:00', '线上直播课程', '61', '免费');
INSERT INTO yooqun_activeI VALUES(NULL,'报名中', './img/20180711171457 (1).png', '大惊小怪英语角', '2018-07-12 19:00:00 ~ 2019-07-12 22:00:00', '正府街172号证大正府1311室', '7', '￥9.90');
INSERT INTO yooqun_activeI VALUES(NULL,'报名中', './img/20180822115915.png', '《腾讯课堂》使用方法', '2018-11-01 12:00:00 ~ 2019-10-01 12:00:00', '线上直播课程', '7', '￥9.90');
INSERT INTO yooqun_activeI VALUES(NULL,'报名中', './img/20180821150911.png', '如何在边运动的同时边赚钱？', '2018-11-11 12:00:00 ~ 2019-03-31 12:00:00', '陕西西安雁塔区华旗国际大厦', '14', '免费');
INSERT INTO yooqun_activeI VALUES(NULL,'报名中', './img/2018-09-04-14-57-28.png', '0基础教你月入3万的抖音号', '2018-11-10 17:00:00 ~ 2019-08-21 00:00:00', '陕西西安莲湖区莲亭瑜伽', '5', '免费');
INSERT INTO yooqun_activeI VALUES(NULL,'报名中', './img/2018-09-04-15-43-08.png', '快速提升你的高效学习力', '2018-08-08 17:03:48 ~ 2020-08-08 12:00:00', '西安健康路58号', '16', '￥0.10');
INSERT INTO yooqun_activeI VALUES(NULL,'报名中', './img/20181109163058.png', '瑜伽和下午茶免费啦', '2018-08-04 08:30:00 ~ 2019-05-11 11:30:00', '西安丈八四路缤纷南郡小区', '12', '￥1200.00');
INSERT INTO yooqun_activeI VALUES(NULL,'报名中', './img/20181110153852.png', '古城社交圈缺个“你”，快来加入我们', '2018-07-12 14:00:00 ~ 2019-07-12 22:00:00', '正府街172号证大正府1311室', '38', '￥25.00');
INSERT INTO yooqun_activeI VALUES(NULL,'报名中', './img/2018-11-23-15-09-26.png', '国粹:传统弓箭兴趣体验，亲子及兴趣课', '2018-07-06 19:00:00 ~ 2020-12-31 22:00:00', '成都天府三街', '48', '￥58.00');
INSERT INTO yooqun_activeI VALUES(NULL,'报名中', './img/20181206135023.png', '西安一周一书店共读活动', '2018-06-27 14:10:00 ~ 2020-06-27 13:10:00', '线上', '32', '￥99.00');
INSERT INTO yooqun_activeI VALUES(NULL,'报名中', './img/20181211150954.png', '咖啡换故事', '2018-04-15 11:45:00 ~ 2025-04-15 11:45:00', '西安各地', '133', '￥199.00');
INSERT INTO yooqun_activeI VALUES(NULL,'报名中', './img/20190111162057.png', '有趣的运动新体验，不枯燥、不重复，不无聊的运动', '2018-04-17 00:06:00 ~ 2027-04-17 00:06:00', '线上课程', '101', '免费');
INSERT INTO yooqun_activeI VALUES(NULL,'报名中', './img/1527601233.png', '大唐煮茶研习课', '2018-04-09 20:11:00 ~ 2021-06-09 20:11:00', '线上付费课程', '27', '免费');
INSERT INTO yooqun_activeI VALUES(NULL,'报名中', './img/20190305211809.png', '吃喝玩乐门票周边游全国招募兼职分销代理（旅划算/联联周边游）', '2018-04-09 19:56:00 至 2020-09-09 19:56:00', '线上课程', '28', '免费');
INSERT INTO yooqun_activeI VALUES(NULL,'已结束', './img/1527601053.jpg', '首届校园创客季大赛', '2018-02-25 13:30 至 2019-02-25 13:30', '西安南院门芦荡巷北（靠近粉巷）', '205', '￥4500.00');
INSERT INTO yooqun_activeI VALUES(NULL,'报名中', './img/1527601067.jpg', '亲手打磨一枚木质书签，与你的阅读时光长久相伴', '2019-04-09 09:00 至 2019-04-10 17:00', '西安曲江国际会展中心', '26', '￥1800.00');
INSERT INTO yooqun_activeI VALUES(NULL,'报名中', './img/1527601147.jpeg', '【深呼吸户外】1月20日小坝沟赏冰瀑玩雪品山野火锅', '2018-04-09 19:40 至 2020-08-10 19:40', '线上', '23', '免费');
INSERT INTO yooqun_activeI VALUES(NULL,'报名中', './img/1527601068.jpg', '《精益创业》交流分享：你的公司需要一条新的故事线', '2018-03-20 15:00 至 2019-03-21 11:50', '西安各地', '18', '免费');
INSERT INTO yooqun_activeI VALUES(NULL,'报名中', './img/20181031121422.png', '有效根治3-9岁闹脾气《拥抱未来24期在线家庭教育》', '2018-11-01 12:00:00 ~ 2019-10-01 12:00:00', '线上直播课程', '7', '￥9.90');
INSERT INTO yooqun_activeI VALUES(NULL,'报名中', './img/20181110161644.png', '新加坡NAFA表演体系，给孩子更多的可能性', '2018-11-11 12:00:00 ~ 2019-03-31 12:00:00', '陕西西安雁塔区华旗国际大厦', '14', '免费');
INSERT INTO yooqun_activeI VALUES(NULL,'报名中', './img/20181110135011.png', '【少儿瑜伽公益课堂】修正身姿势，呵护孩子身心健康成长', '2018-11-10 17:00:00 ~ 2019-08-21 00:00:00', '陕西西安莲湖区莲亭瑜伽', '5', '免费');
INSERT INTO yooqun_activeI VALUES(NULL,'报名中', './img/20180808170028.png', '零基础济源培训高级工程师软件开发', '2018-08-08 17:03:48 ~ 2020-08-08 12:00:00', '西安健康路58号', '16', '￥0.10');
INSERT INTO yooqun_activeI VALUES(NULL,'报名中', './img/20180730112528.png', '小学奥数五年级课程——昕馨教育', '2018-08-04 08:30:00 ~ 2019-05-11 11:30:00', '西安丈八四路缤纷南郡小区', '12', '￥1200.00');
INSERT INTO yooqun_activeI VALUES(NULL,'报名中', './img/20180711180729.png', 'Lonely Gamer双语桌游——桌游实验室', '2018-07-12 14:00:00 ~ 2019-07-12 22:00:00', '正府街172号证大正府1311室', '38', '￥25.00');
INSERT INTO yooqun_activeI VALUES(NULL,'报名中', './img/20180629165433.png', '成都天府新区零基础包教包会桌游课', '2018-07-06 19:00:00 ~ 2020-12-31 22:00:00', '成都天府三街', '48', '￥58.00');
INSERT INTO yooqun_activeI VALUES(NULL,'报名中', './img/2018-06-27-13-10-47.png', '乐嘉亲授：这个时代性格色彩亲子宝典41讲', '2018-06-27 14:10:00 ~ 2020-06-27 13:10:00', '线上', '32', '￥99.00');
INSERT INTO yooqun_activeI VALUES(NULL,'报名中', './img/1527601281.png', '个人形象提升-线下诊断服务限时199', '2018-04-15 11:45:00 ~ 2025-04-15 11:45:00', '西安各地', '133', '￥199.00');
INSERT INTO yooqun_activeI VALUES(NULL,'报名中', './img/1527601281 (1).png', '个人形象设计服务--国际专业科学诊断方法', '2018-04-17 00:06:00 ~ 2027-04-17 00:06:00', '线上课程', '101', '免费');
INSERT INTO yooqun_activeI VALUES(NULL,'报名中', './img/1527601250.png', '【超级记忆训练营】一学就会的超级记忆法', '2018-04-09 20:11:00 ~ 2021-06-09 20:11:00', '线上付费课程', '27', '免费');
INSERT INTO yooqun_activeI VALUES(NULL,'报名中', './img/1527601249.png', '【视频课】小S林志玲瑜伽教练：18节瑜伽', '2018-04-09 19:56:00 至 2020-09-09 19:56:00', '线上课程', '28', '免费');
INSERT INTO yooqun_activeI VALUES(NULL,'已结束', './img/1527601165.jpeg', '精品咖啡生物学理论+零基础咖啡课程', '2018-02-25 13:30 至 2019-02-25 13:30', '西安南院门芦荡巷北（靠近粉巷）', '205', '￥4500.00');
INSERT INTO yooqun_activeI VALUES(NULL,'报名中', './img/20190110154732.png', '2019互联网+全球智能交通新趋势大会', '2019-04-09 09:00 至 2019-04-10 17:00', '西安曲江国际会展中心', '26', '￥1800.00');
INSERT INTO yooqun_activeI VALUES(NULL,'报名中', './img/1527601248.png', '揭秘清华北大10位状元学霸学习方法', '2018-04-09 19:40 至 2020-08-10 19:40', '线上', '23', '免费');
INSERT INTO yooqun_activeI VALUES(NULL,'报名中', './img/1527601192.jpeg', '定制户外运动 城市就是健身房体验', '2018-03-20 15:00 至 2019-03-21 11:50', '西安各地', '18', '免费');

CREATE TABLE yooqun_activeII (
  state varchar(3),
  photo varchar(100),
  aname varchar(30),
  time varchar(50),
  address varchar(50),
  anumber varchar(3),
  money varchar(10)
);

INSERT INTO yooqun_activeII VALUES('报名中', './img/20181031121422.png', '有效根治3-9岁闹脾气《拥抱未来24期在线家庭教育》', '2018-11-01 12:00:00 ~ 2019-10-01 12:00:00', '线上直播课程', '7', '￥9.90');
INSERT INTO yooqun_activeII VALUES('报名中', './img/20180711180729.png', 'Lonely Gamer双语桌游——桌游实验室', '2018-07-12 14:00:00 ~ 2019-07-12 22:00:00', '正府街172号证大正府1311室', '38', '￥25.00');
INSERT INTO yooqun_activeII VALUES('报名中', './img/2018-06-27-13-10-47.png', '乐嘉亲授：这个时代性格色彩亲子宝典41讲', '2018-06-27 14:10:00 ~ 2020-06-27 13:10:00', '线上', '32', '￥99.00');
INSERT INTO yooqun_activeII VALUES('报名中', './img/1527601192.jpeg', '定制户外运动 城市就是健身房体验', '2018-03-20 15:00 至 2019-03-21 11:50', '西安各地', '18', '免费');
INSERT INTO yooqun_activeII VALUES('报名中', './img/20181110135011.png', '【少儿瑜伽公益课堂】修正身姿势，呵护孩子身心健康成长', '2018-11-10 17:00:00 ~ 2019-08-21 00:00:00', '陕西西安莲湖区莲亭瑜伽', '5', '免费');
INSERT INTO yooqun_activeII VALUES('报名中', './img/20190110154732.png', '2019互联网+全球智能交通新趋势大会', '2019-04-09 09:00 至 2019-04-10 17:00', '西安曲江国际会展中心', '26', '￥1800.00');
INSERT INTO yooqun_activeII VALUES('报名中', './img/20180808170028.png', '零基础济源培训高级工程师软件开发', '2018-08-08 17:03:48 ~ 2020-08-08 12:00:00', '西安健康路58号', '16', '￥0.10');
INSERT INTO yooqun_activeII VALUES('报名中', './img/1527601250.png', '【超级记忆训练营】一学就会的超级记忆法', '2018-04-09 20:11:00 ~ 2021-06-09 20:11:00', '线上付费课程', '27', '免费');
INSERT INTO yooqun_activeII VALUES('报名中', './img/1527601281.png', '个人形象提升-线下诊断服务限时199', '2018-04-15 11:45:00 ~ 2025-04-15 11:45:00', '西安各地', '133', '￥199.00');
INSERT INTO yooqun_activeII VALUES('报名中', './img/20180629165433.png', '成都天府新区零基础包教包会桌游课', '2018-07-06 19:00:00 ~ 2020-12-31 22:00:00', '成都天府三街', '48', '￥58.00');
INSERT INTO yooqun_activeII VALUES('报名中', './img/20181110161644.png', '新加坡NAFA表演体系，给孩子更多的可能性', '2018-11-11 12:00:00 ~ 2019-03-31 12:00:00', '陕西西安雁塔区华旗国际大厦', '14', '免费');
INSERT INTO yooqun_activeII VALUES('报名中', './img/20180730112528.png', '小学奥数五年级课程——昕馨教育', '2018-08-04 08:30:00 ~ 2019-05-11 11:30:00', '西安丈八四路缤纷南郡小区', '12', '￥1200.00');


CREATE TABLE yooqun_active_details (
  photo varchar(100),
  bigPhoto varchar(100),
  dnum varchar(100),
  dname varchar(30),
  dstate varchar(3),
  dtime varchar(50),
  daddress varchar(50),
  dintr varchar(100),
  p1 varchar(100),
  p2 varchar(100),
  p3 varchar(100),
  p4 varchar(100),
  p5 varchar(100),
  p6 varchar(100),
  p7 varchar(100),
  p8 varchar(100),
  ptitle varchar(100),
  x1 varchar(200),
  x2 varchar(200),
  x3 varchar(200),
  x4 varchar(200),
  y1 varchar(200),
  y2 varchar(200),
  y3 varchar(200),
  y4 varchar(200)

);

INSERT INTO yooqun_active_details VALUES('./img/1527601192.jpeg','./img/big1.jpeg',0,'定制户外运动 城市就是健身房体验','报名中','时间：2018-03-20 15:00 至 2019-03-21 11:50', '地点：西安各地', '简介:2019互联网+智能交通新趋势大会 将于2019年4月9-10日在古都西安盛大召开。本次峰会是一场洞悉全球智慧交通产业未来发', '生活节奏过快，压力过大，心理负担过重会明显的体现在生理的变化上。脊柱侧弯，高低肩，XO型腿，拇外翻，腰颈椎僵硬疼痛，是很直观的表现方式。自然训练法则通过与身体的沟通了解和对话，松懈紧绷的肌肉和心态，改善自身的生活质量和生理状态。解放亚健康人群，通过自身训练和调整把自己挡在医院的门口。','徒手室外运动跑酷健身。非常适合平时想锻炼，却没有运动基础的人群、身体有各种体态问题正寻求方法恢复的人群、平时没时间锻炼想学习在家也可以练的运动体系的人群。','每周日一次，户外健身运动，教你最实用的运动技巧，在家也能轻松练!','跑酷的本质：（自然训练法）','跑酷的自然训练法则要求人们以自身的各项能力在可能遇到的一切环境中训练。所以跑酷技巧动作练习与提高的过程是一个综合体适能提高的过程。区别于传统的体能训练更加强调整体性和协调性。体适能是Physical Fitness的中文翻译，是指人体所具备的有充足的精力从事日常工作（学习）而不感疲劳，同时有余力享受休闲活动的乐趣，能够适应突发状况的能力。','加入我们的线上社群，不要错过每个线下活动！','添加微信，备注柚群。','','跑酷的优势','兴趣爱好','自我提升','运动健身','青春活力',110,70,100,80);
INSERT INTO yooqun_active_details VALUES('./img/1527601248.png','./img/big2.png',0,'揭秘清华北大10位状元学霸学习方法','报名中','时间：2018-04-09 19:40:00 ~ 2020-08-10 19:40:00', '地点：线上', '简介:线上付费课程，扫码学习购买课程', '先给大家说明：由于是合作的收费课程，所有报名不设置报名费，需要扫码购买或者加微信咨询：nideguwen','','','','','','','','学习方法','理解记忆法','快速诵读法','提纲挈领法','求同存异法',110,100,40,70);


INSERT INTO yooqun_active_details VALUES('./img/20190110154732.png','./img/big3.png',0,'2019互联网+智能交通新趋势大会','报名中',' 时间：2019-04-09 09:00:00 ~ 2019-04-10 17:00:00', '地点：西安曲江国际会展中心', '简介:“2019互联网+智能交通新趋势大会”将于2019年4月9-10日在古都西安盛大召开。本次峰会是一场洞悉全球智慧交通产业未来发展...', '','二、大会背景：','中国，已经成为汽车轮子上的国度，正面临着互联网带来的交通运输效率的提升。互联网+交通出行、互联网+货物运输，正在重建整个交通运输的生态圈。近几年，互联网+交通开始引领智能交通的发展，2017年是智能交通的又一个新的元年，智能交通2.0时代已经到来，智能交通行业会有新的突破和新的变化，其核心就在于智能管控与大数据应用。未来智能交通前沿发展的大思路是万物互联和信息的智能交互，由数据到信息，由信息到知识，由知识到智慧。2017年交通运输部定了个小目标：2017年将加快推进智慧交通和绿色交通发展,提高行业科技创新能力,加快大数据、云计算、物联网和北斗导航、高分遥感等技术应用，推进实现基础设施、载运工具等“可视、可测、可控”。','大会亮点','600+高级决策者莅临参会，行业领军聚首

30+特邀嘉宾的精彩演讲，聚焦行业前沿热点

权威行业解读、技术交流合作一站式平台

权威政府、行业协会联合组织，大咖云集，不容错过

掌握行业发展趋势，打破信息壁垒

相关政策、技术剖析，紧跟前沿科技发展趋势，规避投资风险

行业玩家盛会，享受行业玩家面对面的高层次商务交流盛宴

百余家国内外行业知名媒体鼎力支持，助您的品牌开创更大场面

会展联动，双平台成就行业真章','大会日程','一、2019年4月9日  下午 全体大会

政策解读与市场趋势

大西安交通枢纽建设与城市轨道交通发展

 

二、2019年4月10日  上午 全体大会

智能交通产业热点与投资机遇

科技创新重新定义智能交通

 

三、2019年4月10日  下午 全体大会

人工智能对智能交通产业带来的发展机遇与挑战

大数据在未来智能交通产业的布局与创新应用','','智能交通技术','信息技术','通讯技术','电子传感技术','控制技术',150,100,90,70);

INSERT INTO yooqun_active_details VALUES('./img/1527601165.jpeg','./img/big4.jpg',0,'零基础咖啡课程','已结束','时间：2018-02-25 13:30:00 ~ 2019-02-25 13:30:00', '地点：南院门芦荡巷北（靠近粉巷）', '简介:在节奏越来越快的都市生活里，每个人都面临各种各样的压力，我们需要有一种两种兴趣爱好，把美好留在闲暇时光里','','','','','','','','','咖啡作用','提神','解酒','抗癌','减肥',200,100,40,50);


CREATE TABLE yooqun_active_enroll(
  eid TINYINT PRIMARY KEY AUTO_INCREMENT,
  eactive VARCHAR(30),
  ename VARCHAR(10),
  ephone VARCHAR(11),
  e_email VARCHAR(20),
  company VARCHAR(30),
  job VARCHAR(10)
);

CREATE TABLE yooqun_comment(
  cid TINYINT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(30),
  cphoto VARCHAR(30),
  cname VARCHAR(10),
  ctime VARCHAR(30),
  contain VARCHAR(200)
);
INSERT INTO yooqun_comment VALUES(NULL,'定制户外运动 城市就是健身房体验','','dangdang','2019-04-01 09:10:10','身体倍儿棒！！！')