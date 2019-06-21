-- MySQL dump 10.13  Distrib 8.0.11, for macos10.13 (x86_64)
--
-- Host: 127.0.0.1    Database: easybuy
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `easybuy_cart`
--

DROP TABLE IF EXISTS `easybuy_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `easybuy_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productid` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `productId` (`productid`),
  KEY `userId` (`userid`),
  CONSTRAINT `easybuy_cart_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `easybuy_product` (`id`),
  CONSTRAINT `easybuy_cart_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `easybuy_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easybuy_cart`
--

LOCK TABLES `easybuy_cart` WRITE;
/*!40000 ALTER TABLE `easybuy_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `easybuy_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easybuy_news`
--

DROP TABLE IF EXISTS `easybuy_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `easybuy_news` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(40) NOT NULL COMMENT '标题',
  `content` varchar(1000) NOT NULL COMMENT '内容',
  `createtime` varchar(10) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `PK__EASYBUY___C63B5EE724927208` (`id`),
  UNIQUE KEY `UQ__EASYBUY___C12AD09D276EDEB3` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=708 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easybuy_news`
--

LOCK TABLES `easybuy_news` WRITE;
/*!40000 ALTER TABLE `easybuy_news` DISABLE KEYS */;
INSERT INTO `easybuy_news` VALUES (531,'会员特惠月开始了','会员特惠月开始了,亲们赶快下单啊,不到剁手誓不罢休啊,不到离婚誓不清空购物车啊。更多优惠，尽在易买网。','2010-12-22'),(597,'迎双旦促销大酬宾','迎双旦促销大酬宾','2010-12-24'),(649,'加入会员，赢千万大礼包','加入会员，赢千万大礼包','2010-12-22'),(650,'新年不夜天，通宵也是开张了','新年不夜天，通宵也是开张了','2011-05-22'),(651,'积分兑换开始了','积分兑换开始了','2010-12-22'),(653,'团购阿迪1折起','团购阿迪1折起','2010-12-22'),(664,'最新酷睿笔记本','IBME系列全场促销中，最新酷睿双核处理器，保证CPU更高效的运转。','2013-08-05'),(675,'aa','012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789','2013-08-14'),(676,'ResultR','ResultResultResultResultResu','2016-03-28'),(677,'会员特惠月开始了1','会员特惠月开始了','2010-12-22'),(678,'迎双旦促销大酬宾2','迎双旦促销大酬宾','2010-12-24'),(679,'加入会员，赢千万大礼包3','加入会员，赢千万大礼包','2010-12-22'),(680,'新年不夜天，通宵也是开张了4','新年不夜天，通宵也是开张了','2011-05-22'),(681,'积分兑换开始了5','积分兑换开始了','2010-12-22'),(682,'团购阿迪1折起6','团购阿迪1折起','2010-12-22'),(683,'最新酷睿笔记本7','IBME系列全场促销中，最新酷睿双核处理器，保证CPU更高效的运转。','2013-08-05'),(684,'aa8','012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789','2013-08-14'),(685,'ResultR9','ResultResultResultResultResu','2016-03-28'),(686,'会员特惠月开始了11','会员特惠月开始了','2010-12-22'),(687,'迎双旦促销大酬宾21','迎双旦促销大酬宾','2010-12-24'),(688,'加入会员，赢千万大礼包31','加入会员，赢千万大礼包','2010-12-22'),(689,'新年不夜天，通宵也是开张了41','新年不夜天，通宵也是开张了','2011-05-22'),(690,'积分兑换开始了51','积分兑换开始了','2010-12-22'),(691,'团购阿迪1折起61','团购阿迪1折起','2010-12-22'),(692,'最新酷睿笔记本71','IBME系列全场促销中，最新酷睿双核处理器，保证CPU更高效的运转。','2013-08-05'),(693,'aa81','012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789','2013-08-14'),(694,'ResultR91','ResultResultResultResultResu','2016-03-28'),(695,'会员特惠月开始了111','会员特惠月开始了','2010-12-22'),(696,'迎双旦促销大酬宾211','迎双旦促销大酬宾','2010-12-24'),(697,'加入会员，赢千万大礼包311','加入会员，赢千万大礼包','2010-12-22'),(698,'新年不夜天，通宵也是开张了411','新年不夜天，通宵也是开张了','2011-05-22'),(699,'积分兑换开始了511','积分兑换开始了','2010-12-22'),(700,'团购阿迪1折起611','团购阿迪1折起','2010-12-22'),(701,'最新酷睿笔记本711','IBME系列全场促销中，最新酷睿双核处理器，保证CPU更高效的运转。','2013-08-05'),(702,'aa811','012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789','2013-08-14'),(703,'ResultR911','ResultResultResultResultResu','2016-03-28'),(704,'title','content','2019-05-30'),(707,'title2','content2','2019-05-30');
/*!40000 ALTER TABLE `easybuy_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easybuy_order`
--

DROP TABLE IF EXISTS `easybuy_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `easybuy_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` int(255) DEFAULT NULL COMMENT '用户主键',
  `loginname` varchar(255) DEFAULT NULL,
  `useraddress` varchar(255) DEFAULT NULL COMMENT '用户地址',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `cost` float DEFAULT NULL COMMENT '总消费',
  `serialnumber` varchar(255) DEFAULT NULL COMMENT '订单号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easybuy_order`
--

LOCK TABLES `easybuy_order` WRITE;
/*!40000 ALTER TABLE `easybuy_order` DISABLE KEYS */;
INSERT INTO `easybuy_order` VALUES (56,23,NULL,'小寨西路','2019-05-29 21:25:20',614,'00AFD27A63FAEC3B7BEF87534F2F72E8'),(57,23,NULL,'小寨西路','2019-05-29 21:31:16',614,'4CEE126F52B811C2D3AE60BF26F22513'),(58,10,NULL,'北京市海淀区大有庄','2019-05-29 21:32:56',358,'A1276428F8DD705CB6369B67B4E45053'),(59,10,NULL,'北京市海淀区大有庄','2019-05-29 21:33:51',893,'D0A86C57DFF6648E41D94A9973D4D7B9'),(60,10,NULL,'小寨西路','2019-05-30 20:21:32',6517,'32D45E81C58353071A5041674EB800BE'),(61,10,NULL,'北京市海淀区大有庄','2019-05-30 20:27:43',1850,'786E326C5F55B63C913415660ED95FAC'),(62,10,NULL,'小寨西路','2019-05-31 20:33:45',912,'D76C97ABE100F1E1B3B061ED34124E4B'),(63,10,NULL,'小寨西路','2019-05-31 20:37:22',626,'A442A28263C0F3C9FABB219D004DEEC6'),(64,10,NULL,'软件园','2019-06-02 20:06:41',912,'D13E6AA7C9F892DA15F4F9F182556A48'),(66,23,NULL,'小寨西路','2019-06-20 23:26:46',893,'C325215B80B9FDC1736BE08376216079'),(67,23,NULL,'北京市西直门大桥芬兰国际大厦','2019-06-20 23:30:42',608,'F01A9A9112F91F32D762429048A63DBB'),(70,23,NULL,'小寨西路','2019-06-21 01:49:13',11191,'4DBBE447567DA33865FB1C7ADD2D58DF'),(72,23,NULL,'北京市西直门大桥芬兰国际大厦','2019-06-21 02:14:21',468,'305DA8306694646ACAECAE62890C747E'),(73,23,NULL,'北京市西直门大桥芬兰国际大厦','2019-06-21 02:20:06',1437,'71C43007EC38AF3442569D25F0C758AA'),(74,23,NULL,'北京市西直门大桥芬兰国际大厦','2019-06-21 02:20:22',152,'B0A8C7999211CB51C18E778788A70DBF'),(75,10,NULL,'小寨西路','2019-06-21 02:42:18',13810,'2D70C7320B94EDF082E59775650B9A27'),(76,21,NULL,'软件园','2019-06-21 03:03:37',26712,'40EA81739C0E82B537CF7E656C2FDAAA');
/*!40000 ALTER TABLE `easybuy_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easybuy_order_detail`
--

DROP TABLE IF EXISTS `easybuy_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `easybuy_order_detail` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `orderid` int(10) NOT NULL COMMENT '订单主键',
  `productid` int(10) NOT NULL COMMENT '商品主键',
  `quantity` int(10) NOT NULL COMMENT '数量',
  `cost` float NOT NULL COMMENT '消费',
  PRIMARY KEY (`id`),
  UNIQUE KEY `PK__EASYBUY___66E1BD8E2F10007B` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easybuy_order_detail`
--

LOCK TABLES `easybuy_order_detail` WRITE;
/*!40000 ALTER TABLE `easybuy_order_detail` DISABLE KEYS */;
INSERT INTO `easybuy_order_detail` VALUES (25,56,733,3,456),(26,56,740,1,158),(27,57,733,3,456),(28,57,740,1,158),(29,58,742,1,158),(30,58,766,1,200),(31,59,735,2,304),(32,59,744,1,589),(33,60,733,8,1216),(34,60,745,9,5301),(35,61,733,1,152),(36,61,748,1,520),(37,61,744,1,589),(38,61,745,1,589),(39,62,733,5,760),(40,62,734,1,152),(41,63,740,3,474),(42,63,737,1,152),(43,64,733,6,912),(44,65,733,3,456),(45,66,733,1,152),(46,66,745,1,589),(47,66,734,1,152),(48,67,733,3,456),(49,67,734,1,152),(50,68,748,1,520),(51,69,734,1,152),(52,69,734,1,152),(53,69,748,1,520),(54,69,753,4,3436),(55,70,743,19,11191),(56,71,733,4,608),(57,71,733,10,1520),(58,72,736,1,152),(59,72,742,2,316),(60,73,740,3,474),(61,73,746,1,963),(62,74,737,1,152),(63,75,749,2,11732),(64,75,746,2,1926),(65,75,733,1,152),(66,76,739,3,468),(67,76,733,3,456),(68,76,755,3,25788);
/*!40000 ALTER TABLE `easybuy_order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easybuy_product`
--

DROP TABLE IF EXISTS `easybuy_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `easybuy_product` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `description` varchar(1024) DEFAULT NULL COMMENT '描述',
  `price` float NOT NULL COMMENT '价格',
  `stock` int(10) NOT NULL COMMENT '库存',
  `categoryleveloneid` int(10) DEFAULT NULL COMMENT '分类1',
  `categoryleveltwoid` int(10) DEFAULT NULL COMMENT '分类2',
  `categorylevelthreeid` int(10) DEFAULT NULL COMMENT '分类3',
  `filename` varchar(200) DEFAULT NULL COMMENT '文件名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `PK__EASYBUY___94F6E55132E0915F` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=777 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easybuy_product`
--

LOCK TABLES `easybuy_product` WRITE;
/*!40000 ALTER TABLE `easybuy_product` DISABLE KEYS */;
INSERT INTO `easybuy_product` VALUES (733,'香奈儿','订单',152,10,548,654,655,'baby_1.jpg'),(734,'洗面奶','',152,1,548,654,655,'baby_2.jpg'),(735,'水啫喱水','',152,998,548,654,655,'baby_3.jpg'),(736,'香水','',152,1000,548,654,655,'baby_4.jpg'),(737,'香水','',152,111,548,654,655,'baby_5.jpg'),(738,'润肤露','',45,109,548,654,655,'baby_6.jpg'),(739,'洁面装','',156,99,548,654,655,'bk_2.jpg'),(740,'电饭锅','',158,100,628,656,659,'bk_1.jpg'),(741,'婴儿喂奶装','',569,100,632,637,653,'bk_3.jpg'),(742,'坚果套餐','',158,1000,660,661,662,'bk_4.jpg'),(743,'超甜蜜崭','',589,1000,660,661,663,'bk_5.jpg'),(744,'华为2566','',589,1000,670,671,672,'de1.jpg'),(745,'荣耀3C','',589,100,670,671,672,'de2.jpg'),(746,'小米手环','',963,100,670,674,675,'de3.jpg'),(747,'华为2265','',896,1000,670,671,673,'de4.jpg'),(748,'越南坚果','',520,1,660,661,662,'de5.jpg'),(749,'日本进口马桶','',5866,100,628,657,0,'food_1.jpg'),(750,'联想Y系列','',569,1000,670,690,691,'food_2.jpg'),(751,'脑白金1号','',589,1000,676,677,680,'food_3.jpg'),(752,'莫里斯按','',589,1000,676,678,0,'food_4.jpg'),(753,'三鹿好奶粉','',859,100,676,679,0,'food_5.jpg'),(754,'儿童牛奶','',5896,100,676,679,0,'food_6.jpg'),(755,'软沙发','',8596,99,628,696,0,'food_b1.jpg'),(756,'收纳盒','',5966,100,628,696,0,'food_b2.jpg'),(757,'洗衣液','',58,1000,628,696,0,'food_r.jpg'),(758,'红短沙发','',596,123,628,696,0,'fre_1.jpg'),(759,'新西兰奶粉','',5896,100,676,679,0,'fre_2.jpg'),(760,'婴儿车','',11000,100,681,682,687,'fre_3.jpg'),(761,'夏款婴儿车','',963,100,681,682,688,'fre_4.jpg'),(762,'抗压旅行箱','',569,1000,681,683,685,'fre_5.jpg'),(763,'透明手提箱','',8596,1000,681,683,684,'fre_6.jpg'),(764,'婴儿果粉','',5896,1000,660,661,662,'milk_1.jpg'),(765,'椰子粉','',5963,1000,660,661,662,'milk_2.jpg'),(766,'坚果蛋糕','',200,1,660,661,663,'milk_3.jpg'),(767,'编制手提箱','',5896,1000,681,682,688,'milk_4.jpg'),(768,'纸箱','',5896,3,681,682,687,'milk_5.jpg'),(769,'健胃液','',152,1000,676,679,0,'milk_6.jpg'),(770,'联想NTC','',8596,100,670,671,673,'milk_7.jpg'),(771,'香水1',NULL,100,100,548,654,655,'milk_8.jpg'),(772,'香水2',NULL,100,100,548,654,655,'pro1.jpg'),(773,'香水3',NULL,100,100,548,654,655,'pro2.jpg'),(774,'香水4',NULL,100,100,548,654,655,'pro3.jpg'),(775,'香水5',NULL,100,100,548,654,655,'pro4.jpg'),(776,'香水6',NULL,1,1,548,654,655,'pro5.jpg');
/*!40000 ALTER TABLE `easybuy_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easybuy_product_category`
--

DROP TABLE IF EXISTS `easybuy_product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `easybuy_product_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) NOT NULL COMMENT '名称',
  `parentid` int(10) NOT NULL COMMENT '父级目录id',
  `type` int(11) DEFAULT NULL COMMENT '级别(1:一级 2：二级 3：三级)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `PK__EASYBUY___9EC2A4E236B12243` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=697 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easybuy_product_category`
--

LOCK TABLES `easybuy_product_category` WRITE;
/*!40000 ALTER TABLE `easybuy_product_category` DISABLE KEYS */;
INSERT INTO `easybuy_product_category` VALUES (548,'化妆品',0,1),(628,'家用商品',0,1),(654,'面部护理',548,2),(655,'少女派',654,3),(656,'餐具',628,2),(657,'卫具',628,2),(658,'叉子',656,3),(659,'锅',656,3),(660,'进口食品',0,1),(661,'零食/糖果/巧克力',660,2),(662,'坚果',661,3),(663,'蜜饯',661,3),(669,'孕期教育',546,3),(670,'电子商品',0,1),(671,'手机',670,2),(672,'华为手机',671,3),(673,'联想手机',671,3),(674,'手环',670,2),(675,'小米手环',674,3),(676,'保健食品',0,1),(677,'老年保健品',676,2),(678,'中年营养品',676,2),(679,'儿童保健品',676,2),(680,'脑白金',677,3),(681,'箱包',0,1),(682,'旅行箱',681,2),(683,'手提箱',681,2),(684,'大型',683,3),(685,'小型',683,3),(686,'中型',683,3),(687,'大型',682,3),(688,'中型',682,3),(689,'小型',682,3),(690,'电脑',670,2),(691,'联想电脑',690,3),(692,'刀叉',656,3),(693,'碗筷',656,3),(696,'客厅专用',628,2);
/*!40000 ALTER TABLE `easybuy_product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easybuy_user`
--

DROP TABLE IF EXISTS `easybuy_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `easybuy_user` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `loginname` varchar(255) NOT NULL COMMENT '登录名',
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `sex` int(2) NOT NULL DEFAULT '1' COMMENT '性别(1:男 0：女)',
  `identitycode` varchar(60) DEFAULT NULL COMMENT '身份证号',
  `email` varchar(80) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(11) DEFAULT NULL COMMENT '手机',
  `type` int(2) DEFAULT '0' COMMENT '类型（1：后台 0:前台）',
  `filename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `PK__EASYBUY___C96109CC3A81B327` (`loginname`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easybuy_user`
--

LOCK TABLES `easybuy_user` WRITE;
/*!40000 ALTER TABLE `easybuy_user` DISABLE KEYS */;
INSERT INTO `easybuy_user` VALUES (2,'admin','系统管理员','123123',0,'130406198302141869','hello11@bdqn.com','1583233515',1,'7.jpg'),(10,'cgn','程广宁','123',1,'140225189987854589','1044732267@qq.com','13366055011',0,'2.jpg'),(11,'hyl','韩语良','1231',1,'140225198874584539','1044732267@qq.com','13366055010',0,'3.jpg'),(12,'ck','陈康','123',1,'140225189987854589','1044732267@qq.com','13366055010',0,'4.jpg'),(13,'kys','康有沈','123',1,'1402251985512541525','1044732267@qq.com','13366055010',0,'5.jpg'),(14,'sb','沈白','123',1,'140225158987854589','1044732267@qq.com','13366055010',0,'6.jpg'),(16,'lgw','李高伟','123123',1,'140225189987854589','1011322658@qq.com','1336998554',0,'7.jpg'),(18,'shangzezhong','尚泽忠','123123',1,'140225198810013745','1044888844@qq.com','13366528458',0,'8.jpg'),(19,'liguangliang','李光亮','123123',1,'140225198841547785','1047777@qq.com','13366055048',0,'9.jpg'),(20,'szz','李光亮','123123',1,'140225198810013748','1044732267@qq.com','13366555010',1,'10.jpg'),(21,'zhangsan','张三','123123',0,'610456789098765432','163@163.com','13523456789',0,'5.jpg'),(22,'zhangsan2','张三','123123',0,'610999999999999999','123123123@163.com','123123',0,'5.jpg'),(23,'lili','丽丽','123123',0,'111111111111111111','15029180718@163.com','15029180718',0,'5.jpg');
/*!40000 ALTER TABLE `easybuy_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easybuy_user_address`
--

DROP TABLE IF EXISTS `easybuy_user_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `easybuy_user_address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `userid` int(255) DEFAULT NULL COMMENT '用户主键',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `isdefault` int(2) DEFAULT '0' COMMENT '是否是默认地址（1:是 0否）',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easybuy_user_address`
--

LOCK TABLES `easybuy_user_address` WRITE;
/*!40000 ALTER TABLE `easybuy_user_address` DISABLE KEYS */;
INSERT INTO `easybuy_user_address` VALUES (11,10,'北京市海淀区大有庄','2019-06-03 02:32:39',0,'朋友家'),(12,2,'北京市海淀区大有庄','2019-06-03 02:32:38',0,'女朋友公司'),(13,23,'北京市西直门大桥芬兰国际大厦','2019-06-03 02:32:37',1,'女朋友地址'),(14,23,'北京市花园路小区','2019-06-03 02:32:33',0,'家里'),(34,10,'小寨西路','2019-05-30 20:21:32',1,'学校'),(35,10,'软件园','2019-06-02 20:06:41',0,'公司'),(37,23,'小寨西路','2019-06-20 23:26:46',0,'学校'),(41,21,'软件园','2019-06-21 03:03:37',0,'公司');
/*!40000 ALTER TABLE `easybuy_user_address` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-21 16:09:06
