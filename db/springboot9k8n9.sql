-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot9k8n9
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `springboot9k8n9`
--

/*!40000 DROP DATABASE IF EXISTS `springboot9k8n9`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springboot9k8n9` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springboot9k8n9`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diannaoxinxi`
--

DROP TABLE IF EXISTS `diannaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diannaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `diannaobianhao` varchar(200) NOT NULL COMMENT '电脑编号',
  `diannaomingcheng` varchar(200) DEFAULT NULL COMMENT '电脑名称',
  `diannaotupian` varchar(200) DEFAULT NULL COMMENT '电脑图片',
  `peizhixinxi` longtext COMMENT '配置信息',
  `xiaoshidanjia` int(11) NOT NULL COMMENT '小时单价',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `xiangqing` longtext COMMENT '详情',
  `zhuangtai` varchar(200) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `diannaobianhao` (`diannaobianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='电脑信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diannaoxinxi`
--

LOCK TABLES `diannaoxinxi` WRITE;
/*!40000 ALTER TABLE `diannaoxinxi` DISABLE KEYS */;
INSERT INTO `diannaoxinxi` VALUES (71,'2022-03-26 09:55:02','1111111111','电脑名称1','upload/diannaoxinxi_diannaotupian1.jpg','配置信息1',1,'位置1','详情1','占用'),(72,'2022-03-26 09:55:02','2222222222','电脑名称2','upload/diannaoxinxi_diannaotupian2.jpg','配置信息2',2,'位置2','详情2','占用'),(73,'2022-03-26 09:55:02','3333333333','电脑名称3','upload/diannaoxinxi_diannaotupian3.jpg','配置信息3',3,'位置3','详情3','占用'),(74,'2022-03-26 09:55:02','4444444444','电脑名称4','upload/diannaoxinxi_diannaotupian4.jpg','配置信息4',4,'位置4','详情4','占用'),(75,'2022-03-26 09:55:02','5555555555','电脑名称5','upload/diannaoxinxi_diannaotupian5.jpg','配置信息5',5,'位置5','详情5','占用'),(76,'2022-03-26 09:55:02','6666666666','电脑名称6','upload/diannaoxinxi_diannaotupian6.jpg','配置信息6',6,'位置6','详情6','占用');
/*!40000 ALTER TABLE `diannaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goumaishangpin`
--

DROP TABLE IF EXISTS `goumaishangpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goumaishangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shengchanriqi` varchar(200) DEFAULT NULL COMMENT '生产日期',
  `chandi` varchar(200) DEFAULT NULL COMMENT '产地',
  `baozhiqi` varchar(200) DEFAULT NULL COMMENT '保质期',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `jine` int(11) DEFAULT NULL COMMENT '金额',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `huiyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '会员账号',
  `huiyuanxingming` varchar(200) DEFAULT NULL COMMENT '会员姓名',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='购买商品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goumaishangpin`
--

LOCK TABLES `goumaishangpin` WRITE;
/*!40000 ALTER TABLE `goumaishangpin` DISABLE KEYS */;
INSERT INTO `goumaishangpin` VALUES (51,'2022-03-26 09:55:02','商品名称1','商品类型1','upload/goumaishangpin_tupian1.jpg','生产日期1','产地1','保质期1',1,1,1,'商品详情1','会员账号1','会员姓名1','2022-03-26 17:55:02','未支付',1),(52,'2022-03-26 09:55:02','商品名称2','商品类型2','upload/goumaishangpin_tupian2.jpg','生产日期2','产地2','保质期2',2,2,2,'商品详情2','会员账号2','会员姓名2','2022-03-26 17:55:02','未支付',2),(53,'2022-03-26 09:55:02','商品名称3','商品类型3','upload/goumaishangpin_tupian3.jpg','生产日期3','产地3','保质期3',3,3,3,'商品详情3','会员账号3','会员姓名3','2022-03-26 17:55:02','未支付',3),(54,'2022-03-26 09:55:02','商品名称4','商品类型4','upload/goumaishangpin_tupian4.jpg','生产日期4','产地4','保质期4',4,4,4,'商品详情4','会员账号4','会员姓名4','2022-03-26 17:55:02','未支付',4),(55,'2022-03-26 09:55:02','商品名称5','商品类型5','upload/goumaishangpin_tupian5.jpg','生产日期5','产地5','保质期5',5,5,5,'商品详情5','会员账号5','会员姓名5','2022-03-26 17:55:02','未支付',5),(56,'2022-03-26 09:55:02','商品名称6','商品类型6','upload/goumaishangpin_tupian6.jpg','生产日期6','产地6','保质期6',6,6,6,'商品详情6','会员账号6','会员姓名6','2022-03-26 17:55:02','未支付',6);
/*!40000 ALTER TABLE `goumaishangpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huiyuan`
--

DROP TABLE IF EXISTS `huiyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huiyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huiyuanzhanghao` varchar(200) NOT NULL COMMENT '会员账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `huiyuanxingming` varchar(200) DEFAULT NULL COMMENT '会员姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huiyuanzhanghao` (`huiyuanzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='会员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huiyuan`
--

LOCK TABLES `huiyuan` WRITE;
/*!40000 ALTER TABLE `huiyuan` DISABLE KEYS */;
INSERT INTO `huiyuan` VALUES (11,'2022-03-26 09:55:02','会员账号1','123456','会员姓名1','男','13823888881','773890001@qq.com'),(12,'2022-03-26 09:55:02','会员账号2','123456','会员姓名2','男','13823888882','773890002@qq.com'),(13,'2022-03-26 09:55:02','会员账号3','123456','会员姓名3','男','13823888883','773890003@qq.com'),(14,'2022-03-26 09:55:02','会员账号4','123456','会员姓名4','男','13823888884','773890004@qq.com'),(15,'2022-03-26 09:55:02','会员账号5','123456','会员姓名5','男','13823888885','773890005@qq.com'),(16,'2022-03-26 09:55:02','会员账号6','123456','会员姓名6','男','13823888886','773890006@qq.com');
/*!40000 ALTER TABLE `huiyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hujiaowangguan`
--

DROP TABLE IF EXISTS `hujiaowangguan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hujiaowangguan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `neirong` longtext NOT NULL COMMENT '内容',
  `huiyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '会员账号',
  `huiyuanxingming` varchar(200) DEFAULT NULL COMMENT '会员姓名',
  `hujiaoshijian` datetime DEFAULT NULL COMMENT '呼叫时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='呼叫网管';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hujiaowangguan`
--

LOCK TABLES `hujiaowangguan` WRITE;
/*!40000 ALTER TABLE `hujiaowangguan` DISABLE KEYS */;
INSERT INTO `hujiaowangguan` VALUES (61,'2022-03-26 09:55:02','标题1','内容1','会员账号1','会员姓名1','2022-03-26 17:55:02'),(62,'2022-03-26 09:55:02','标题2','内容2','会员账号2','会员姓名2','2022-03-26 17:55:02'),(63,'2022-03-26 09:55:02','标题3','内容3','会员账号3','会员姓名3','2022-03-26 17:55:02'),(64,'2022-03-26 09:55:02','标题4','内容4','会员账号4','会员姓名4','2022-03-26 17:55:02'),(65,'2022-03-26 09:55:02','标题5','内容5','会员账号5','会员姓名5','2022-03-26 17:55:02'),(66,'2022-03-26 09:55:02','标题6','内容6','会员账号6','会员姓名6','2022-03-26 17:55:02');
/*!40000 ALTER TABLE `hujiaowangguan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinleixing`
--

DROP TABLE IF EXISTS `shangpinleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinleixing` varchar(200) NOT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinleixing` (`shangpinleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='商品类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinleixing`
--

LOCK TABLES `shangpinleixing` WRITE;
/*!40000 ALTER TABLE `shangpinleixing` DISABLE KEYS */;
INSERT INTO `shangpinleixing` VALUES (31,'2022-03-26 09:55:02','商品类型1'),(32,'2022-03-26 09:55:02','商品类型2'),(33,'2022-03-26 09:55:02','商品类型3'),(34,'2022-03-26 09:55:02','商品类型4'),(35,'2022-03-26 09:55:02','商品类型5'),(36,'2022-03-26 09:55:02','商品类型6');
/*!40000 ALTER TABLE `shangpinleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `jiage` float DEFAULT NULL COMMENT '价格',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `chandi` varchar(200) DEFAULT NULL COMMENT '产地',
  `shengchanriqi` date DEFAULT NULL COMMENT '生产日期',
  `baozhiqi` varchar(200) DEFAULT NULL COMMENT '保质期',
  `shangpinxiangqing` varchar(200) DEFAULT NULL COMMENT '商品详情',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (41,'2022-03-26 09:55:02','1111111111','商品名称1','商品类型1',1,1,'upload/shangpinxinxi_tupian1.jpg','产地1','2022-03-26','保质期1','商品详情1'),(42,'2022-03-26 09:55:02','2222222222','商品名称2','商品类型2',2,2,'upload/shangpinxinxi_tupian2.jpg','产地2','2022-03-26','保质期2','商品详情2'),(43,'2022-03-26 09:55:02','3333333333','商品名称3','商品类型3',3,3,'upload/shangpinxinxi_tupian3.jpg','产地3','2022-03-26','保质期3','商品详情3'),(44,'2022-03-26 09:55:02','4444444444','商品名称4','商品类型4',4,4,'upload/shangpinxinxi_tupian4.jpg','产地4','2022-03-26','保质期4','商品详情4'),(45,'2022-03-26 09:55:02','5555555555','商品名称5','商品类型5',5,5,'upload/shangpinxinxi_tupian5.jpg','产地5','2022-03-26','保质期5','商品详情5'),(46,'2022-03-26 09:55:02','6666666666','商品名称6','商品类型6',6,6,'upload/shangpinxinxi_tupian6.jpg','产地6','2022-03-26','保质期6','商品详情6');
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'会员账号1','huiyuan','会员','zk2j8t4dufpfnfzv7mezm6fvrufze2ky','2022-03-26 09:56:27','2022-03-26 10:56:28');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-26 09:55:02');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wangguan`
--

DROP TABLE IF EXISTS `wangguan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wangguan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wangguanzhanghao` varchar(200) NOT NULL COMMENT '网管账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `wangguanxingming` varchar(200) DEFAULT NULL COMMENT '网管姓名',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `chushengnianyue` date DEFAULT NULL COMMENT '出生年月',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wangguanzhanghao` (`wangguanzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='网管';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wangguan`
--

LOCK TABLES `wangguan` WRITE;
/*!40000 ALTER TABLE `wangguan` DISABLE KEYS */;
INSERT INTO `wangguan` VALUES (21,'2022-03-26 09:55:02','网管账号1','123456','网管姓名1','备注1','13823888881','男','2022-03-26'),(22,'2022-03-26 09:55:02','网管账号2','123456','网管姓名2','备注2','13823888882','男','2022-03-26'),(23,'2022-03-26 09:55:02','网管账号3','123456','网管姓名3','备注3','13823888883','男','2022-03-26'),(24,'2022-03-26 09:55:02','网管账号4','123456','网管姓名4','备注4','13823888884','男','2022-03-26'),(25,'2022-03-26 09:55:02','网管账号5','123456','网管姓名5','备注5','13823888885','男','2022-03-26'),(26,'2022-03-26 09:55:02','网管账号6','123456','网管姓名6','备注6','13823888886','男','2022-03-26');
/*!40000 ALTER TABLE `wangguan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghushangji`
--

DROP TABLE IF EXISTS `yonghushangji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghushangji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `diannaobianhao` varchar(200) DEFAULT NULL COMMENT '电脑编号',
  `diannaomingcheng` varchar(200) DEFAULT NULL COMMENT '电脑名称',
  `xiaoshidanjia` varchar(200) DEFAULT NULL COMMENT '小时单价',
  `huiyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '会员账号',
  `huiyuanxingming` varchar(200) DEFAULT NULL COMMENT '会员姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shangjishijian` datetime DEFAULT NULL COMMENT '上机时间',
  `shangjizhuangtai` varchar(200) DEFAULT NULL COMMENT '上机状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='用户上机';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghushangji`
--

LOCK TABLES `yonghushangji` WRITE;
/*!40000 ALTER TABLE `yonghushangji` DISABLE KEYS */;
INSERT INTO `yonghushangji` VALUES (81,'2022-03-26 09:55:02','电脑编号1','电脑名称1','小时单价1','会员账号1','会员姓名1','手机1','2022-03-26 17:55:02','已下机'),(82,'2022-03-26 09:55:02','电脑编号2','电脑名称2','小时单价2','会员账号2','会员姓名2','手机2','2022-03-26 17:55:02','已下机'),(83,'2022-03-26 09:55:02','电脑编号3','电脑名称3','小时单价3','会员账号3','会员姓名3','手机3','2022-03-26 17:55:02','已下机'),(84,'2022-03-26 09:55:02','电脑编号4','电脑名称4','小时单价4','会员账号4','会员姓名4','手机4','2022-03-26 17:55:02','已下机'),(85,'2022-03-26 09:55:02','电脑编号5','电脑名称5','小时单价5','会员账号5','会员姓名5','手机5','2022-03-26 17:55:02','已下机'),(86,'2022-03-26 09:55:02','电脑编号6','电脑名称6','小时单价6','会员账号6','会员姓名6','手机6','2022-03-26 17:55:02','已下机');
/*!40000 ALTER TABLE `yonghushangji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghuxiaji`
--

DROP TABLE IF EXISTS `yonghuxiaji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghuxiaji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `diannaobianhao` varchar(200) DEFAULT NULL COMMENT '电脑编号',
  `diannaomingcheng` varchar(200) DEFAULT NULL COMMENT '电脑名称',
  `huiyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '会员账号',
  `huiyuanxingming` varchar(200) DEFAULT NULL COMMENT '会员姓名',
  `shangjishijian` varchar(200) DEFAULT NULL COMMENT '上机时间',
  `xiajishijian` datetime DEFAULT NULL COMMENT '下机时间',
  `xiaoshidanjia` float DEFAULT NULL COMMENT '小时单价',
  `yongshi` float NOT NULL COMMENT '用时',
  `shangjifeiyong` float DEFAULT NULL COMMENT '上机费用',
  `beizhu` longtext COMMENT '备注',
  `wangguanzhanghao` varchar(200) DEFAULT NULL COMMENT '网管账号',
  `wangguanxingming` varchar(200) DEFAULT NULL COMMENT '网管姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='用户下机';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghuxiaji`
--

LOCK TABLES `yonghuxiaji` WRITE;
/*!40000 ALTER TABLE `yonghuxiaji` DISABLE KEYS */;
INSERT INTO `yonghuxiaji` VALUES (91,'2022-03-26 09:55:02','电脑编号1','电脑名称1','会员账号1','会员姓名1','上机时间1','2022-03-26 17:55:02',1,1,1,'备注1','网管账号1','网管姓名1','已支付'),(92,'2022-03-26 09:55:02','电脑编号2','电脑名称2','会员账号2','会员姓名2','上机时间2','2022-03-26 17:55:02',2,2,2,'备注2','网管账号2','网管姓名2','未支付'),(93,'2022-03-26 09:55:02','电脑编号3','电脑名称3','会员账号3','会员姓名3','上机时间3','2022-03-26 17:55:02',3,3,3,'备注3','网管账号3','网管姓名3','未支付'),(94,'2022-03-26 09:55:02','电脑编号4','电脑名称4','会员账号4','会员姓名4','上机时间4','2022-03-26 17:55:02',4,4,4,'备注4','网管账号4','网管姓名4','未支付'),(95,'2022-03-26 09:55:02','电脑编号5','电脑名称5','会员账号5','会员姓名5','上机时间5','2022-03-26 17:55:02',5,5,5,'备注5','网管账号5','网管姓名5','未支付'),(96,'2022-03-26 09:55:02','电脑编号6','电脑名称6','会员账号6','会员姓名6','上机时间6','2022-03-26 17:55:02',6,6,6,'备注6','网管账号6','网管姓名6','未支付');
/*!40000 ALTER TABLE `yonghuxiaji` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-30 17:06:08
