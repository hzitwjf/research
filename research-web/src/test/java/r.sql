/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : research

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2016-12-21 00:54:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `aw_id` int(11) NOT NULL auto_increment COMMENT '答案ID',
  `aw_content` varchar(100) default NULL COMMENT '答案内容',
  `aw_sc` int(11) default NULL COMMENT '答案分数',
  `pr_id` int(11) default NULL COMMENT '所属题目',
  PRIMARY KEY  (`aw_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `c_id` int(11) NOT NULL auto_increment COMMENT '评论ID',
  `c_uuid` varchar(64) default NULL COMMENT '评论业务ID',
  `c_time` timestamp NULL default NULL COMMENT '评论时间',
  `c_people` varchar(20) default NULL COMMENT '评论人',
  `c_count` int(11) default NULL COMMENT '评论人出现的次数',
  `c_module` varchar(10) default NULL COMMENT '评论的模块',
  `c_score` int(11) default NULL COMMENT '当前模块的总得分',
  `cd_people` varchar(20) default NULL COMMENT '被评论人',
  PRIMARY KEY  (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for discuss
-- ----------------------------
DROP TABLE IF EXISTS `discuss`;
CREATE TABLE `discuss` (
  `d_id` int(11) NOT NULL auto_increment COMMENT '评论详情Id',
  `c_uuid` varchar(64) default NULL COMMENT '评论的业务id',
  `v_id` int(11) default NULL COMMENT '评论的菜品id',
  `p_id` int(11) default NULL COMMENT '评论的题目ID',
  `d_result` text COMMENT '评论结果',
  `d_score` varchar(50) default NULL COMMENT '得分项',
  PRIMARY KEY  (`d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for problem
-- ----------------------------
DROP TABLE IF EXISTS `problem`;
CREATE TABLE `problem` (
  `p_id` int(11) NOT NULL auto_increment COMMENT '题目ID',
  `p_content` varchar(200) default NULL COMMENT '问题内容',
  `p_module` int(11) default NULL COMMENT '所属模块0代表餐饮 1代表讲师 2代表班主任',
  PRIMARY KEY  (`p_id`),
  KEY `p_id` (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for teacherinfo
-- ----------------------------
DROP TABLE IF EXISTS `teacherinfo`;
CREATE TABLE `teacherinfo` (
  `tea_id` int(11) NOT NULL auto_increment COMMENT '教员Id',
  `tea_name` varchar(20) default NULL COMMENT '教师名字',
  `tea_module` int(11) default NULL COMMENT '所属模块 1代表讲师 2代表班主任',
  PRIMARY KEY  (`tea_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for vegetable
-- ----------------------------
DROP TABLE IF EXISTS `vegetable`;
CREATE TABLE `vegetable` (
  `v_id` int(11) NOT NULL auto_increment COMMENT '菜品ID',
  `v_type` varchar(20) default NULL COMMENT '菜品类型',
  `v_name` varchar(50) default NULL COMMENT '菜品名称',
  `v_parent` int(11) default NULL COMMENT '菜品父模块',
  `v_level` int(11) default NULL COMMENT '菜品等级',
  PRIMARY KEY  (`v_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
