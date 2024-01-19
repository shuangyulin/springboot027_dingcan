/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springboott01gx
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboott01gx` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springboott01gx`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springboott01gx/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springboott01gx/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springboott01gx/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `meishidian` */

DROP TABLE IF EXISTS `meishidian`;

CREATE TABLE `meishidian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianpuzhanghao` varchar(200) NOT NULL COMMENT '店铺账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `dianpumingcheng` varchar(200) NOT NULL COMMENT '店铺名称',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianpujieshao` longtext COMMENT '店铺介绍',
  `dianpudizhi` varchar(200) DEFAULT NULL COMMENT '店铺地址',
  `zhaopaimeishi` longtext COMMENT '招牌美食',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dianpuzhanghao` (`dianpuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615534171320 DEFAULT CHARSET=utf8 COMMENT='美食店';

/*Data for the table `meishidian` */

insert  into `meishidian`(`id`,`addtime`,`dianpuzhanghao`,`mima`,`dianpumingcheng`,`zhaopian`,`lianxidianhua`,`dianpujieshao`,`dianpudizhi`,`zhaopaimeishi`,`lianxiren`) values (21,'2021-03-12 15:27:34','美食店1','123456','店铺名称1','http://localhost:8080/springboott01gx/upload/meishidian_zhaopian1.jpg','13823888881','店铺介绍1','店铺地址1','招牌美食1','联系人1'),(22,'2021-03-12 15:27:34','美食店2','123456','店铺名称2','http://localhost:8080/springboott01gx/upload/meishidian_zhaopian2.jpg','13823888882','店铺介绍2','店铺地址2','招牌美食2','联系人2'),(23,'2021-03-12 15:27:34','美食店3','123456','店铺名称3','http://localhost:8080/springboott01gx/upload/meishidian_zhaopian3.jpg','13823888883','店铺介绍3','店铺地址3','招牌美食3','联系人3'),(24,'2021-03-12 15:27:34','美食店4','123456','店铺名称4','http://localhost:8080/springboott01gx/upload/meishidian_zhaopian4.jpg','13823888884','店铺介绍4','店铺地址4','招牌美食4','联系人4'),(25,'2021-03-12 15:27:34','美食店5','123456','店铺名称5','http://localhost:8080/springboott01gx/upload/meishidian_zhaopian5.jpg','13823888885','店铺介绍5','店铺地址5','招牌美食5','联系人5'),(26,'2021-03-12 15:27:34','美食店6','123456','店铺名称6','http://localhost:8080/springboott01gx/upload/meishidian_zhaopian6.jpg','13823888886','店铺介绍6','店铺地址6','招牌美食6','联系人6'),(1615534171319,'2021-03-12 15:29:31','1','1','xxx店铺','http://localhost:8080/springboott01gx/upload/1615534236114.jpg','12345678910','xxxx','xxx地址','xxxx','xxx');

/*Table structure for table `meishidingdan` */

DROP TABLE IF EXISTS `meishidingdan`;

CREATE TABLE `meishidingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `meishimingcheng` varchar(200) DEFAULT NULL COMMENT '美食名称',
  `dianpuzhanghao` varchar(200) DEFAULT NULL COMMENT '店铺账号',
  `dianpumingcheng` varchar(200) DEFAULT NULL COMMENT '店铺名称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `goumaishuliang` int(11) NOT NULL COMMENT '购买数量',
  `zongjiage` varchar(200) DEFAULT NULL COMMENT '总价格',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `peisongdizhi` varchar(200) NOT NULL COMMENT '配送地址',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615534362236 DEFAULT CHARSET=utf8 COMMENT='美食订单';

/*Data for the table `meishidingdan` */

insert  into `meishidingdan`(`id`,`addtime`,`dingdanbianhao`,`meishimingcheng`,`dianpuzhanghao`,`dianpumingcheng`,`lianxidianhua`,`jiage`,`goumaishuliang`,`zongjiage`,`yonghuzhanghao`,`yonghuxingming`,`yonghushouji`,`peisongdizhi`,`xiadanshijian`,`sfsh`,`shhf`,`ispay`) values (51,'2021-03-12 15:27:34','订单编号1','美食名称1','店铺账号1','店铺名称1','联系电话1','价格1',1,'总价格1','用户账号1','用户姓名1','用户手机1','配送地址1','2021-03-12 15:27:34','是','','未支付'),(52,'2021-03-12 15:27:34','订单编号2','美食名称2','店铺账号2','店铺名称2','联系电话2','价格2',2,'总价格2','用户账号2','用户姓名2','用户手机2','配送地址2','2021-03-12 15:27:34','是','','未支付'),(53,'2021-03-12 15:27:34','订单编号3','美食名称3','店铺账号3','店铺名称3','联系电话3','价格3',3,'总价格3','用户账号3','用户姓名3','用户手机3','配送地址3','2021-03-12 15:27:34','是','','未支付'),(54,'2021-03-12 15:27:34','订单编号4','美食名称4','店铺账号4','店铺名称4','联系电话4','价格4',4,'总价格4','用户账号4','用户姓名4','用户手机4','配送地址4','2021-03-12 15:27:34','是','','未支付'),(55,'2021-03-12 15:27:34','订单编号5','美食名称5','店铺账号5','店铺名称5','联系电话5','价格5',5,'总价格5','用户账号5','用户姓名5','用户手机5','配送地址5','2021-03-12 15:27:34','是','','未支付'),(56,'2021-03-12 15:27:34','订单编号6','美食名称6','店铺账号6','店铺名称6','联系电话6','价格6',6,'总价格6','用户账号6','用户姓名6','用户手机6','配送地址6','2021-03-12 15:27:34','是','','未支付'),(1615534362235,'2021-03-12 15:32:41','202131215322468069099','xxx美食','1','xxx店铺','12345678910','111',22,'2442','2','xxx用户','12345678910','xxx小区','2021-03-12 15:32:29','是','马上安排人送过去','已支付');

/*Table structure for table `meishifenlei` */

DROP TABLE IF EXISTS `meishifenlei`;

CREATE TABLE `meishifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `meishifenlei` varchar(200) NOT NULL COMMENT '美食分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `meishifenlei` (`meishifenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='美食分类';

/*Data for the table `meishifenlei` */

insert  into `meishifenlei`(`id`,`addtime`,`meishifenlei`) values (31,'2021-03-12 15:27:34','快餐'),(32,'2021-03-12 15:27:34','西餐'),(33,'2021-03-12 15:27:34','美食分类3'),(34,'2021-03-12 15:27:34','美食分类4'),(35,'2021-03-12 15:27:34','美食分类5'),(36,'2021-03-12 15:27:34','美食分类6');

/*Table structure for table `meishipingjia` */

DROP TABLE IF EXISTS `meishipingjia`;

CREATE TABLE `meishipingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianpuzhanghao` varchar(200) DEFAULT NULL COMMENT '店铺账号',
  `dianpumingcheng` varchar(200) DEFAULT NULL COMMENT '店铺名称',
  `meishimingcheng` varchar(200) DEFAULT NULL COMMENT '美食名称',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `pingfen` varchar(200) DEFAULT NULL COMMENT '评分',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiashijian` datetime DEFAULT NULL COMMENT '评价时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615534431687 DEFAULT CHARSET=utf8 COMMENT='美食评价';

/*Data for the table `meishipingjia` */

insert  into `meishipingjia`(`id`,`addtime`,`dianpuzhanghao`,`dianpumingcheng`,`meishimingcheng`,`yonghuzhanghao`,`yonghuxingming`,`tupian`,`pingfen`,`pingjianeirong`,`pingjiashijian`) values (61,'2021-03-12 15:27:34','店铺账号1','店铺名称1','美食名称1','用户账号1','用户姓名1','http://localhost:8080/springboott01gx/upload/meishipingjia_tupian1.jpg','★★★★★','评价内容1','2021-03-12 15:27:34'),(62,'2021-03-12 15:27:34','店铺账号2','店铺名称2','美食名称2','用户账号2','用户姓名2','http://localhost:8080/springboott01gx/upload/meishipingjia_tupian2.jpg','★★★★★','评价内容2','2021-03-12 15:27:34'),(63,'2021-03-12 15:27:34','店铺账号3','店铺名称3','美食名称3','用户账号3','用户姓名3','http://localhost:8080/springboott01gx/upload/meishipingjia_tupian3.jpg','★★★★★','评价内容3','2021-03-12 15:27:34'),(64,'2021-03-12 15:27:34','店铺账号4','店铺名称4','美食名称4','用户账号4','用户姓名4','http://localhost:8080/springboott01gx/upload/meishipingjia_tupian4.jpg','★★★★★','评价内容4','2021-03-12 15:27:34'),(65,'2021-03-12 15:27:34','店铺账号5','店铺名称5','美食名称5','用户账号5','用户姓名5','http://localhost:8080/springboott01gx/upload/meishipingjia_tupian5.jpg','★★★★★','评价内容5','2021-03-12 15:27:34'),(66,'2021-03-12 15:27:34','店铺账号6','店铺名称6','美食名称6','用户账号6','用户姓名6','http://localhost:8080/springboott01gx/upload/meishipingjia_tupian6.jpg','★★★★★','评价内容6','2021-03-12 15:27:34'),(1615534431686,'2021-03-12 15:33:50','1','xxx店铺','xxx美食','2','xxx用户','http://localhost:8080/springboott01gx/upload/1615534424623.jpg','★★★★','asdsadasdasda','2021-03-25 00:00:00');

/*Table structure for table `meishixinxi` */

DROP TABLE IF EXISTS `meishixinxi`;

CREATE TABLE `meishixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `meishimingcheng` varchar(200) NOT NULL COMMENT '美食名称',
  `meishifenlei` varchar(200) NOT NULL COMMENT '美食分类',
  `dianpuzhanghao` varchar(200) DEFAULT NULL COMMENT '店铺账号',
  `dianpumingcheng` varchar(200) DEFAULT NULL COMMENT '店铺名称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `kouwei` varchar(200) DEFAULT NULL COMMENT '口味',
  `tese` varchar(200) DEFAULT NULL COMMENT '特色',
  `jiage` int(11) NOT NULL COMMENT '价格',
  `xiangqing` longtext COMMENT '详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615534275727 DEFAULT CHARSET=utf8 COMMENT='美食信息';

/*Data for the table `meishixinxi` */

insert  into `meishixinxi`(`id`,`addtime`,`meishimingcheng`,`meishifenlei`,`dianpuzhanghao`,`dianpumingcheng`,`lianxidianhua`,`tupian`,`kouwei`,`tese`,`jiage`,`xiangqing`,`clicktime`,`clicknum`) values (41,'2021-03-12 15:27:34','美食名称1','美食分类1','店铺账号1','店铺名称1','联系电话1','http://localhost:8080/springboott01gx/upload/meishixinxi_tupian1.jpg','口味1','特色1',1,'详情1','2021-03-12 15:27:34',1),(42,'2021-03-12 15:27:34','美食名称2','美食分类2','店铺账号2','店铺名称2','联系电话2','http://localhost:8080/springboott01gx/upload/meishixinxi_tupian2.jpg','口味2','特色2',2,'详情2','2021-03-12 15:27:34',2),(43,'2021-03-12 15:27:34','美食名称3','美食分类3','店铺账号3','店铺名称3','联系电话3','http://localhost:8080/springboott01gx/upload/meishixinxi_tupian3.jpg','口味3','特色3',3,'详情3','2021-03-12 15:31:54',4),(44,'2021-03-12 15:27:34','美食名称4','美食分类4','店铺账号4','店铺名称4','联系电话4','http://localhost:8080/springboott01gx/upload/meishixinxi_tupian4.jpg','口味4','特色4',4,'详情4','2021-03-12 15:27:34',4),(45,'2021-03-12 15:27:34','美食名称5','美食分类5','店铺账号5','店铺名称5','联系电话5','http://localhost:8080/springboott01gx/upload/meishixinxi_tupian5.jpg','口味5','特色5',5,'详情5','2021-03-12 15:27:34',5),(46,'2021-03-12 15:27:34','美食名称6','美食分类6','店铺账号6','店铺名称6','联系电话6','http://localhost:8080/springboott01gx/upload/meishixinxi_tupian6.jpg','口味6','特色6',6,'详情6','2021-03-12 15:27:34',6),(1615534275726,'2021-03-12 15:31:15','xxx美食','快餐','1','xxx店铺','12345678910','http://localhost:8080/springboott01gx/upload/1615534255031.jpg','xxxx','xx',111,'<h1>asdsadasd</h1><p>asdasdas</p>','2021-03-12 15:32:44',5);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='美食资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (81,'2021-03-12 15:27:34','标题1','简介1','http://localhost:8080/springboott01gx/upload/news_picture1.jpg','内容1'),(82,'2021-03-12 15:27:34','标题2','简介2','http://localhost:8080/springboott01gx/upload/news_picture2.jpg','内容2'),(83,'2021-03-12 15:27:34','标题3','简介3','http://localhost:8080/springboott01gx/upload/news_picture3.jpg','内容3'),(84,'2021-03-12 15:27:34','标题4','简介4','http://localhost:8080/springboott01gx/upload/news_picture4.jpg','内容4'),(85,'2021-03-12 15:27:34','标题5','简介5','http://localhost:8080/springboott01gx/upload/news_picture5.jpg','内容5'),(86,'2021-03-12 15:27:34','标题6','简介6','http://localhost:8080/springboott01gx/upload/news_picture6.jpg','内容6');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615534355231 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1615534355230,'2021-03-12 15:32:34',1615534336642,1615534275726,'meishixinxi','xxx美食','http://localhost:8080/springboott01gx/upload/1615534255031.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','a2erb7bo4646wydaqpt17qnz5593k2nn','2021-03-12 15:29:44','2021-03-12 16:29:44'),(2,1615534171319,'1','meishidian','美食店','7yd8vewych0crafeslntiusxa66pzc9c','2021-03-12 15:30:31','2021-03-12 16:33:10'),(3,1615534336642,'2','yonghu','用户','554a942wfy9a7ewllglkipsafz3umcmr','2021-03-12 15:32:21','2021-03-12 16:33:33');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-12 15:27:34');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `peisongdizhi` varchar(200) DEFAULT NULL COMMENT '配送地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615534336643 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`mima`,`yonghuxingming`,`xingbie`,`nianling`,`touxiang`,`yonghushouji`,`peisongdizhi`) values (11,'2021-03-12 15:27:34','1','1','用户姓名1','男',1,'http://localhost:8080/springboott01gx/upload/yonghu_touxiang1.jpg','13823888881','配送地址1'),(12,'2021-03-12 15:27:34','用户2','123456','用户姓名2','男',2,'http://localhost:8080/springboott01gx/upload/yonghu_touxiang2.jpg','13823888882','配送地址2'),(13,'2021-03-12 15:27:34','用户3','123456','用户姓名3','男',3,'http://localhost:8080/springboott01gx/upload/yonghu_touxiang3.jpg','13823888883','配送地址3'),(14,'2021-03-12 15:27:34','用户4','123456','用户姓名4','男',4,'http://localhost:8080/springboott01gx/upload/yonghu_touxiang4.jpg','13823888884','配送地址4'),(15,'2021-03-12 15:27:34','用户5','123456','用户姓名5','男',5,'http://localhost:8080/springboott01gx/upload/yonghu_touxiang5.jpg','13823888885','配送地址5'),(16,'2021-03-12 15:27:34','用户6','123456','用户姓名6','男',6,'http://localhost:8080/springboott01gx/upload/yonghu_touxiang6.jpg','13823888886','配送地址6'),(1615534336642,'2021-03-12 15:32:16','2','2','xxx用户','男',22,'http://localhost:8080/springboott01gx/upload/1615534374488.jpg','12345678910','xxx小区');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
