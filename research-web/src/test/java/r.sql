/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.0.22-community-nt : Database - research
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`research` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `research`;

/*Table structure for table `comment` */

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `c_id` int(11) NOT NULL auto_increment COMMENT '评论ID',
  `c_uuid` varchar(64) default NULL COMMENT '评论业务ID',
  `c_time` date default NULL COMMENT '评论时间',
  `c_people` varchar(20) default NULL COMMENT '评论人',
  PRIMARY KEY  (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `comment` */

/*Table structure for table `discuss` */

DROP TABLE IF EXISTS `discuss`;

CREATE TABLE `discuss` (
  `d_id` int(11) NOT NULL auto_increment COMMENT '评论详情Id',
  `c_uuid` varchar(64) default NULL COMMENT '评论的业务id',
  `v_id` int(11) default NULL COMMENT '评论的菜品id',
  `p_id` int(11) default NULL COMMENT '评论的题目ID',
  `d_result` text COMMENT '评论结果',
  PRIMARY KEY  (`d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `discuss` */

/*Table structure for table `problem` */

DROP TABLE IF EXISTS `problem`;

CREATE TABLE `problem` (
  `p_id` int(11) NOT NULL auto_increment COMMENT '题目ID',
  `p_content` varchar(200) default NULL COMMENT '问题内容',
  `p_module` int(11) default NULL COMMENT '所属模块0代表餐饮 1代表讲师 2代表班主任',
  PRIMARY KEY  (`p_id`),
  KEY `p_id` (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `problem` */

insert  into `problem`(`p_id`,`p_content`,`p_module`) values (1,'您的性别?',0),(2,'食品的味道?',0),(3,'菜的分量?',0),(4,'饭的分量?',0),(5,'食品的样式?',0),(6,'您对食品味道的期望?',0),(7,'您的其他建议或意见?',0);

/*Table structure for table `vegetable` */

DROP TABLE IF EXISTS `vegetable`;

CREATE TABLE `vegetable` (
  `v_id` int(11) NOT NULL auto_increment COMMENT '菜品ID',
  `v_type` varchar(20) default NULL COMMENT '菜品类型',
  `v_name` varchar(50) default NULL COMMENT '菜品名称',
  `v_parent` int(11) default NULL COMMENT '菜品父模块',
  `v_level` int(11) default NULL COMMENT '菜品等级',
  PRIMARY KEY  (`v_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vegetable` */

insert  into `vegetable`(`v_id`,`v_type`,`v_name`,`v_parent`,`v_level`) values (1,'荤菜类','荤菜',0,1),(2,'猪肉类','肉',1,2),(3,'肉','香菇肉片',2,3),(4,'肉','粉蒸肉',2,3),(5,'肉','红烧肉',2,3),(6,'肉','小炒肉',2,3),(7,'肉','京酱肉丝',2,3),(8,'肉','木耳肉片',2,3),(9,'肉','青椒肉丝',2,3),(10,'肉','肉沫豆角',2,3),(11,'肉','豆角肉沫',2,3),(12,'鸡鸭鱼类','鸡鸭鱼',1,2),(13,'鸡鸭鱼','香芋焖鸡',12,3),(14,'鸡鸭鱼','卤水鸭',12,3),(15,'鸡鸭鱼','香菇鸡块',12,3),(16,'鸡鸭鱼','红烧鸡',12,3),(17,'鸡鸭鱼','香酥鸡',12,3),(18,'鸡鸭鱼','辣子鸡',12,3),(19,'鸡鸭鱼','粉蒸鱼',12,3),(20,'鸡鸭鱼','卤水鸭',12,3),(21,'鸡鸭鱼','卤鸭腿',12,3),(22,'素菜类','素菜',0,1),(23,'青瓜及其他','青瓜',22,2),(24,'青瓜','青瓜肉丝',23,3),(25,'青瓜','青瓜炒肉',23,3),(26,'青瓜','青瓜炒蛋',23,3),(27,'青瓜','麻婆豆腐',23,3),(28,'青瓜','剁椒鱼头',23,3),(29,'青瓜','蚂蚁上树',23,3),(30,'青瓜','虎皮尖椒',23,3),(31,'青瓜','香辣青瓜',23,3),(32,'青瓜','醋溜白菜',23,3),(33,'青瓜','西芹云耳',23,3),(34,'土豆及其他','土豆',22,2),(35,'土豆','青椒土豆丝',34,3),(36,'土豆','蒜蓉生菜',34,3),(37,'土豆','香辣土豆丝',34,3),(38,'土豆','青菜',34,3),(39,'土豆','酸辣土豆丝',34,3),(40,'土豆','苦瓜炒蛋',34,3),(41,'土豆','茄汁土豆条',34,3),(42,'土豆','番茄炒蛋',34,3),(43,'土豆','木耳油豆腐',34,3),(44,'土豆','炝炒绿豆芽',34,3),(45,'土豆','凉拌海带丝',34,3);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
