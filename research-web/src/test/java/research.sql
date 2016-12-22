/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : research

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2016-12-22 15:43:44
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
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES ('1', '男', '2', '1');
INSERT INTO `answer` VALUES ('2', '女', '2', '1');
INSERT INTO `answer` VALUES ('3', '非常满意', '5', '2');
INSERT INTO `answer` VALUES ('4', '满意', '3', '2');
INSERT INTO `answer` VALUES ('5', '不满意', '2', '2');
INSERT INTO `answer` VALUES ('6', '偏多', '3', '3');
INSERT INTO `answer` VALUES ('7', '刚好', '5', '3');
INSERT INTO `answer` VALUES ('8', '偏少', '2', '3');
INSERT INTO `answer` VALUES ('9', '偏多', '3', '4');
INSERT INTO `answer` VALUES ('10', '刚好', '5', '4');
INSERT INTO `answer` VALUES ('11', '偏少', '2', '4');
INSERT INTO `answer` VALUES ('12', '非常满意', '5', '5');
INSERT INTO `answer` VALUES ('13', '满意', '3', '5');
INSERT INTO `answer` VALUES ('14', '不满意', '2', '5');
INSERT INTO `answer` VALUES ('15', '麻辣', '3', '6');
INSERT INTO `answer` VALUES ('16', '中辣', '3', '6');
INSERT INTO `answer` VALUES ('17', '微辣', '3', '6');
INSERT INTO `answer` VALUES ('18', '不辣', '3', '6');
INSERT INTO `answer` VALUES ('19', '一直能做到', '5', '8');
INSERT INTO `answer` VALUES ('20', '偶尔没做到', '3', '8');
INSERT INTO `answer` VALUES ('21', '偶尔能做到', '1', '8');
INSERT INTO `answer` VALUES ('22', '一直没做到', '0', '8');
INSERT INTO `answer` VALUES ('23', '一直能准时下课', '5', '9');
INSERT INTO `answer` VALUES ('24', '偶尔提前或延后', '3', '9');
INSERT INTO `answer` VALUES ('25', '经常提前或延后', '1', '9');
INSERT INTO `answer` VALUES ('26', '一直是提前下课', '0', '9');
INSERT INTO `answer` VALUES ('27', '案例和授课用具充分', '5', '10');
INSERT INTO `answer` VALUES ('28', '案例和授课用具一般', '3', '10');
INSERT INTO `answer` VALUES ('29', '案例不够详细', '1', '10');
INSERT INTO `answer` VALUES ('30', '备课不充分', '0', '10');
INSERT INTO `answer` VALUES ('31', '每天的课程都有回顾和小结 ', '5', '11');
INSERT INTO `answer` VALUES ('32', '几天一次回顾和小结', '3', '11');
INSERT INTO `answer` VALUES ('33', '偶尔会回顾和小结一次', '1', '11');
INSERT INTO `answer` VALUES ('34', '没有回顾和小结 ', '0', '11');
INSERT INTO `answer` VALUES ('35', '每周实施上台回顾次数4次', '3', '12');
INSERT INTO `answer` VALUES ('36', '每周实施上台回顾次数3次', '2', '12');
INSERT INTO `answer` VALUES ('37', '每周实施上台回顾次数2次', '1', '12');
INSERT INTO `answer` VALUES ('38', '每周实施上台回顾次数0到1次', '0', '12');
INSERT INTO `answer` VALUES ('39', '完全达到，非常喜欢这位老师', '5', '13');
INSERT INTO `answer` VALUES ('40', '达到，但讲课方法希望提升', '4', '13');
INSERT INTO `answer` VALUES ('41', '达到, 但是我听不懂 ', '3', '13');
INSERT INTO `answer` VALUES ('42', '不是所有技能点都能达到，教学方法有待提升', '2', '13');
INSERT INTO `answer` VALUES ('43', '没有达到', '0', '13');
INSERT INTO `answer` VALUES ('44', '思路清晰，重点突出，点赞！', '7', '14');
INSERT INTO `answer` VALUES ('45', '思路清晰，重点不突出', '5', '14');
INSERT INTO `answer` VALUES ('46', '思路不清晰，重现突出', '3', '14');
INSERT INTO `answer` VALUES ('47', '思路不清晰，重点不突出', '0', '14');
INSERT INTO `answer` VALUES ('48', '经常互动，提问学员', '5', '15');
INSERT INTO `answer` VALUES ('49', '经常互动，但缺乏提问', '3', '15');
INSERT INTO `answer` VALUES ('50', '不经常互动，偶尔提问', '1', '15');
INSERT INTO `answer` VALUES ('51', '不经常互动，从不提问', '0', '15');
INSERT INTO `answer` VALUES ('52', '关注课堂纪律并能及时纠正违纪行为', '5', '16');
INSERT INTO `answer` VALUES ('53', '关注课堂纪律但不能纠正违纪行为', '3', '16');
INSERT INTO `answer` VALUES ('54', '偶尔关注课堂纪律和纠正违纪行为', '1', '16');
INSERT INTO `answer` VALUES ('55', '不关注课堂纪律也不纠正课堂行为', '0', '16');
INSERT INTO `answer` VALUES ('56', '一直都是，很有责任心，而且是技术大牛', '10', '17');
INSERT INTO `answer` VALUES ('57', '一直都是，但偶尔因为问题多而忽略了', '8', '17');
INSERT INTO `answer` VALUES ('58', '能正确的解答问题，但一般不是很及时', '6', '17');
INSERT INTO `answer` VALUES ('59', '我不敢提问老师问题。', '4', '17');
INSERT INTO `answer` VALUES ('60', '不能及时，正确的回答问题', '0', '17');
INSERT INTO `answer` VALUES ('61', '适当布置，并且认真批改', '3', '18');
INSERT INTO `answer` VALUES ('62', '作业布置了，但没有批改', '2', '18');
INSERT INTO `answer` VALUES ('63', '没有布置过作业', '0', '18');
INSERT INTO `answer` VALUES ('64', '经常用极域机房控制软件,查看全场学员的屏幕，并及时给予指导', '5', '19');
INSERT INTO `answer` VALUES ('65', '经常用极域机房控制软件,查看全场学员的屏幕，偶尔给予指导', '4', '19');
INSERT INTO `answer` VALUES ('66', '很少用机房控制软件查看学员电脑，我们一般也不主动提问问题', '3', '19');
INSERT INTO `answer` VALUES ('67', '很少用机房控制软件查看学员电脑，很少主动指导学员', '2', '19');
INSERT INTO `answer` VALUES ('68', '一般不用查看学员机器。也不主动给予指导', '0', '19');
INSERT INTO `answer` VALUES ('69', '上课老师能及时关注上机进度，并且引导和解决学员问题', '10', '20');
INSERT INTO `answer` VALUES ('70', '上课老师能及时关注上机进度，但解决问题的能力需要加强', '8', '20');
INSERT INTO `answer` VALUES ('71', '上课老师不能及时关注上机进度，但可以解决问题', '6', '20');
INSERT INTO `answer` VALUES ('72', '我能够自己解决问题。不需要老师指导 ', '4', '20');
INSERT INTO `answer` VALUES ('73', '上课老师不能及时关注上机进度，也不能解决学员问题', '0', '20');
INSERT INTO `answer` VALUES ('74', '有耐心，有责任心', '10', '21');
INSERT INTO `answer` VALUES ('75', '有责任心，但需要加强耐心', '8', '21');
INSERT INTO `answer` VALUES ('76', '有耐心，但缺乏责任心', '6', '21');
INSERT INTO `answer` VALUES ('77', '我一般不和老师沟通。所以不清楚', '4', '21');
INSERT INTO `answer` VALUES ('78', '没有耐心，也没有责任心。', '0', '21');
INSERT INTO `answer` VALUES ('79', '很喜欢这个老师，对课程也很有有兴趣', '5', '22');
INSERT INTO `answer` VALUES ('80', '很喜欢这个老师，对可课程有一点兴趣', '3', '22');
INSERT INTO `answer` VALUES ('81', '很喜欢这个老师，对课程没有兴趣 ', '1', '22');
INSERT INTO `answer` VALUES ('82', '不喜欢这个老师，对课程也没有兴趣 ', '0', '22');
INSERT INTO `answer` VALUES ('83', '能跟上老师的授课进度，并能完成作业', '5', '23');
INSERT INTO `answer` VALUES ('84', '能跟上老师的授课进度，但不能及时完成老师作业', '3', '23');
INSERT INTO `answer` VALUES ('85', '不能跟上老师的授课进度，也不能完成老师作业', '0', '23');
INSERT INTO `answer` VALUES ('86', '有明确的学习目标和上机任务', '5', '24');
INSERT INTO `answer` VALUES ('87', '有明确的学习目标，但是没有上机任务', '3', '24');
INSERT INTO `answer` VALUES ('88', '目标不是很明确，能跟着老师做', '1', '24');
INSERT INTO `answer` VALUES ('89', '没有明确的学习目标', '0', '24');
INSERT INTO `answer` VALUES ('90', null, null, '7');
INSERT INTO `answer` VALUES ('91', '', null, '35');
INSERT INTO `answer` VALUES ('92', '差', '2', '220');
INSERT INTO `answer` VALUES ('93', '很差', '1', '220');
INSERT INTO `answer` VALUES ('94', '非常满意', '5', '230');
INSERT INTO `answer` VALUES ('95', '满意', '4', '230');
INSERT INTO `answer` VALUES ('96', '一般', '3', '230');
INSERT INTO `answer` VALUES ('97', '差', '2', '230');
INSERT INTO `answer` VALUES ('98', '很差', '1', '230');
INSERT INTO `answer` VALUES ('99', '非常清楚', '10', '25');
INSERT INTO `answer` VALUES ('100', '了解', '7', '25');
INSERT INTO `answer` VALUES ('101', '不太清楚', '4', '25');
INSERT INTO `answer` VALUES ('102', '完全不清楚', '0', '25');
INSERT INTO `answer` VALUES ('103', '非常喜欢 ', '10', '26');
INSERT INTO `answer` VALUES ('104', '比较喜欢', '7', '26');
INSERT INTO `answer` VALUES ('105', '不太喜欢', '4', '26');
INSERT INTO `answer` VALUES ('106', '很不喜欢', '0', '26');
INSERT INTO `answer` VALUES ('107', '非常关心 ', '10', '27');
INSERT INTO `answer` VALUES ('108', '关心', '7', '27');
INSERT INTO `answer` VALUES ('109', '不太关心', '4', '27');
INSERT INTO `answer` VALUES ('110', '完全不关心', '0', '27');
INSERT INTO `answer` VALUES ('111', '非常明确 ', '10', '28');
INSERT INTO `answer` VALUES ('112', '比较明确 ', '7', '28');
INSERT INTO `answer` VALUES ('113', '一般', '4', '28');
INSERT INTO `answer` VALUES ('114', '不明确', '0', '28');
INSERT INTO `answer` VALUES ('115', '经常', '10', '29');
INSERT INTO `answer` VALUES ('116', '一般', '7', '29');
INSERT INTO `answer` VALUES ('117', '偶尔', '4', '29');
INSERT INTO `answer` VALUES ('118', '没有', '0', '29');
INSERT INTO `answer` VALUES ('119', '很乐意', '10', '30');
INSERT INTO `answer` VALUES ('120', '比较乐意', '7', '30');
INSERT INTO `answer` VALUES ('121', '不太乐意', '4', '30');
INSERT INTO `answer` VALUES ('122', '不乐意', '0', '30');
INSERT INTO `answer` VALUES ('123', '很好', '10', '31');
INSERT INTO `answer` VALUES ('124', '比较好', '7', '31');
INSERT INTO `answer` VALUES ('125', '一般', '4', '31');
INSERT INTO `answer` VALUES ('126', '很差', '0', '31');
INSERT INTO `answer` VALUES ('127', '总是', '10', '32');
INSERT INTO `answer` VALUES ('128', '经常', '7', '32');
INSERT INTO `answer` VALUES ('129', '偶尔', '4', '32');
INSERT INTO `answer` VALUES ('130', '很少', '0', '32');
INSERT INTO `answer` VALUES ('131', '非常有帮助', '10', '33');
INSERT INTO `answer` VALUES ('132', '有帮助', '7', '33');
INSERT INTO `answer` VALUES ('133', '一般', '4', '33');
INSERT INTO `answer` VALUES ('134', '没有帮助', '0', '33');
INSERT INTO `answer` VALUES ('135', '很好', '10', '34');
INSERT INTO `answer` VALUES ('136', '比较好', '7', '34');
INSERT INTO `answer` VALUES ('137', '一般', '4', '34');
INSERT INTO `answer` VALUES ('138', '很差', '0', '34');

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
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', 'd3b3ee19-13cb-4e38-ad68-9152aa768346', '2016-12-19 00:00:00', '192.168.0.111', '1', '餐饮', null, null);
INSERT INTO `comment` VALUES ('2', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '2016-12-19 00:00:00', '127.0.0.1', '1', '餐饮', null, null);
INSERT INTO `comment` VALUES ('3', 'a877bfcc-d640-4a5c-af69-e2b97a7439c8', '2016-12-19 00:00:00', '127.0.0.1', '1', '餐饮', null, null);
INSERT INTO `comment` VALUES ('4', '26537888-24f9-4598-8bef-624163697ab3', '2016-12-19 00:00:00', '127.0.0.1', '1', '餐饮', null, null);
INSERT INTO `comment` VALUES ('5', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '2016-12-19 00:00:00', '127.0.0.1', '1', '餐饮', null, null);
INSERT INTO `comment` VALUES ('6', '985005d3-2afc-4278-96b8-e8212e9f6eba', '2016-12-19 00:00:00', '127.0.0.1', '1', '餐饮', null, null);
INSERT INTO `comment` VALUES ('7', '6a7e6934-5a06-4a77-aec5-8e5ec55525f9', '2016-12-19 00:00:00', '127.0.0.1', '1', '餐饮', null, null);
INSERT INTO `comment` VALUES ('8', '2c7b293c-53b7-4436-91bd-f5000d7c495f', '2016-12-19 00:00:00', '127.0.0.1', '1', '餐饮', null, null);
INSERT INTO `comment` VALUES ('9', '8921642f-3dcf-41ae-800a-1591761f315c', '2016-12-19 00:00:00', '127.0.0.1', '1', '餐饮', '13', null);
INSERT INTO `comment` VALUES ('10', '13d45526-1a5b-4f54-ac5e-3c9444916062', '2016-12-19 00:00:00', '127.0.0.1', '1', '餐饮', '25', null);
INSERT INTO `comment` VALUES ('11', '6c62575b-2d99-4636-8ab8-f2051d991e99', '2016-12-20 14:22:37', '127.0.0.1', '1', '餐饮', '25', null);
INSERT INTO `comment` VALUES ('12', '7b907e29-fe5e-49dc-bf05-19febe520929', '2016-12-20 16:16:09', '127.0.0.1', '1', '讲师', '48', '吴佳峰');
INSERT INTO `comment` VALUES ('13', '7b8b5bcf-fd63-4ae3-80c9-2aacbb6ed459', '2016-12-20 16:27:42', '127.0.0.1', '1', '讲师', '48', '吴佳峰');
INSERT INTO `comment` VALUES ('14', '8e73f9e0-5a36-43b6-8f0b-3bff5db432ac', '2016-12-20 16:48:31', '127.0.0.1', '1', '教务', '40', '焦尚姝');
INSERT INTO `comment` VALUES ('15', '70015e20-0a3b-4593-b4b6-c30fd6f5a697', '2016-12-20 20:09:05', '127.0.0.1', '1', '讲师', '80', '吴文杰');
INSERT INTO `comment` VALUES ('16', '8628bc40-58ee-402c-9b2a-d9acf7ea2b9d', '2016-12-20 20:09:36', '127.0.0.1', '1', '教务', '73', '焦尚姝');
INSERT INTO `comment` VALUES ('17', '9669afd0-b7f2-4b5a-a265-e7dcd97a419c', '2016-12-20 20:09:55', '127.0.0.1', '1', '餐饮', '25', null);
INSERT INTO `comment` VALUES ('18', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '2016-12-20 20:11:20', '192.168.0.123', '1', '餐饮', '25', null);
INSERT INTO `comment` VALUES ('19', '376848da-bdc9-454b-b988-0cec831cf13b', '2016-12-20 20:13:26', '127.0.0.1', '1', '餐饮', '23', null);
INSERT INTO `comment` VALUES ('20', '78ce9ed0-f5f9-41ab-8d32-a90cc0c5abc7', '2016-12-20 22:59:19', '0:0:0:0:0:0:0:1', '1', '讲师', '78', '冼耀基');
INSERT INTO `comment` VALUES ('21', 'b46d83fb-00f3-4875-9f6b-0e802ca9c83b', '2016-12-20 22:59:58', '0:0:0:0:0:0:0:1', '1', '讲师', '64', '吴佳峰');
INSERT INTO `comment` VALUES ('22', '7996661f-89be-4688-96b4-03716f518083', '2016-12-20 23:02:36', '0:0:0:0:0:0:0:1', '1', '教务', '40', '焦尚姝');
INSERT INTO `comment` VALUES ('23', 'b0936784-1306-41cc-b32e-e65fcb81f74e', '2016-12-20 23:42:38', '0:0:0:0:0:0:0:1', '1', '讲师', '80', '吴文杰');
INSERT INTO `comment` VALUES ('24', 'f5eeee16-941c-4cc7-b685-f7b18d3a5b20', '2016-12-20 23:43:12', '0:0:0:0:0:0:0:1', '1', '教务', '100', '黄晓燕');
INSERT INTO `comment` VALUES ('25', '9e570b80-d436-4477-8e48-879f95298f19', '2016-12-20 23:43:33', '0:0:0:0:0:0:0:1', '1', '教务', '70', '焦尚姝');
INSERT INTO `comment` VALUES ('26', 'b5741717-63d4-4865-90e1-0bf365955021', '2016-12-20 23:43:51', '0:0:0:0:0:0:0:1', '1', '教务', '0', '焦尚姝');
INSERT INTO `comment` VALUES ('27', 'eb2295cd-9093-4445-8512-e6327ed588de', '2016-12-22 01:50:23', '0:0:0:0:0:0:0:1', '1', '餐饮', '23', null);
INSERT INTO `comment` VALUES ('28', '573e6c46-76bc-4ff0-81af-92cd5b951c30', '2016-12-22 14:36:26', '0:0:0:0:0:0:0:1', '1', '餐饮', '25', null);
INSERT INTO `comment` VALUES ('29', 'e7807b04-60c0-45de-8a48-5a075cb67d62', '2016-12-22 14:42:34', '0:0:0:0:0:0:0:1', '1', '餐饮', '13', null);
INSERT INTO `comment` VALUES ('30', '9829478e-4adf-481e-88b0-f46f3faa2f5c', '2016-12-22 14:46:40', '0:0:0:0:0:0:0:1', '1', '讲师', '68', '吴文杰');
INSERT INTO `comment` VALUES ('31', '4cf42a7d-e98c-4de1-9673-842640b46ab8', '2016-12-22 14:53:27', '0:0:0:0:0:0:0:1', '1', '教务', '0', '焦尚姝');
INSERT INTO `comment` VALUES ('32', '1aae2809-b895-4a3b-89ec-6f86a238f4d6', '2016-12-22 14:54:22', '0:0:0:0:0:0:0:1', '1', '讲师', '68', '唐龙昌');

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
-- Records of discuss
-- ----------------------------
INSERT INTO `discuss` VALUES ('1', 'd3b3ee19-13cb-4e38-ad68-9152aa768346', null, '1', '男', null);
INSERT INTO `discuss` VALUES ('2', 'd3b3ee19-13cb-4e38-ad68-9152aa768346', null, '2', '满意', null);
INSERT INTO `discuss` VALUES ('3', 'd3b3ee19-13cb-4e38-ad68-9152aa768346', null, '3', '刚好', null);
INSERT INTO `discuss` VALUES ('4', 'd3b3ee19-13cb-4e38-ad68-9152aa768346', null, '4', '刚好', null);
INSERT INTO `discuss` VALUES ('5', 'd3b3ee19-13cb-4e38-ad68-9152aa768346', null, '5', '满意', null);
INSERT INTO `discuss` VALUES ('6', 'd3b3ee19-13cb-4e38-ad68-9152aa768346', null, '6', '麻辣', null);
INSERT INTO `discuss` VALUES ('7', 'd3b3ee19-13cb-4e38-ad68-9152aa768346', null, '7', '做的很好，暂无意见！', null);
INSERT INTO `discuss` VALUES ('8', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '3', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('9', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '4', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('10', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '5', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('11', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '6', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('12', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '7', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('13', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '8', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('14', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '9', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('15', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '10', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('16', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '11', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('17', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '13', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('18', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '14', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('19', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '15', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('20', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '16', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('21', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '17', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('22', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '18', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('23', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '19', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('24', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '20', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('25', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '21', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('26', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '24', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('27', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '25', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('28', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '26', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('29', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '27', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('30', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '28', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('31', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '29', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('32', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '30', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('33', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '31', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('34', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '32', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('35', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '33', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('36', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '35', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('37', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '36', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('38', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '37', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('39', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '38', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('40', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '39', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('41', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '40', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('42', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '41', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('43', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '42', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('44', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '43', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('45', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '44', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('46', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', '45', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('47', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', null, '1', '女', null);
INSERT INTO `discuss` VALUES ('48', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', null, '2', '满意', null);
INSERT INTO `discuss` VALUES ('49', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', null, '3', '刚好', null);
INSERT INTO `discuss` VALUES ('50', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', null, '4', '刚好', null);
INSERT INTO `discuss` VALUES ('51', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', null, '5', '满意', null);
INSERT INTO `discuss` VALUES ('52', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', null, '6', '中辣', null);
INSERT INTO `discuss` VALUES ('53', '7f274e97-a9a5-4b29-99a4-3808837f9c1d', null, '7', '做的很好，暂无意见！', null);
INSERT INTO `discuss` VALUES ('54', 'a877bfcc-d640-4a5c-af69-e2b97a7439c8', null, '1', '男', null);
INSERT INTO `discuss` VALUES ('55', 'a877bfcc-d640-4a5c-af69-e2b97a7439c8', null, '2', '满意', null);
INSERT INTO `discuss` VALUES ('56', 'a877bfcc-d640-4a5c-af69-e2b97a7439c8', null, '3', '刚好', null);
INSERT INTO `discuss` VALUES ('57', 'a877bfcc-d640-4a5c-af69-e2b97a7439c8', null, '4', '刚好', null);
INSERT INTO `discuss` VALUES ('58', 'a877bfcc-d640-4a5c-af69-e2b97a7439c8', null, '5', '满意', null);
INSERT INTO `discuss` VALUES ('59', 'a877bfcc-d640-4a5c-af69-e2b97a7439c8', null, '6', '中辣', null);
INSERT INTO `discuss` VALUES ('60', 'a877bfcc-d640-4a5c-af69-e2b97a7439c8', null, '7', '做的很好，暂无意见！', null);
INSERT INTO `discuss` VALUES ('61', '26537888-24f9-4598-8bef-624163697ab3', '3', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('62', '26537888-24f9-4598-8bef-624163697ab3', '4', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('63', '26537888-24f9-4598-8bef-624163697ab3', '5', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('64', '26537888-24f9-4598-8bef-624163697ab3', '6', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('65', '26537888-24f9-4598-8bef-624163697ab3', '7', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('66', '26537888-24f9-4598-8bef-624163697ab3', '8', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('67', '26537888-24f9-4598-8bef-624163697ab3', '9', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('68', '26537888-24f9-4598-8bef-624163697ab3', '10', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('69', '26537888-24f9-4598-8bef-624163697ab3', '11', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('70', '26537888-24f9-4598-8bef-624163697ab3', '13', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('71', '26537888-24f9-4598-8bef-624163697ab3', '14', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('72', '26537888-24f9-4598-8bef-624163697ab3', '15', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('73', '26537888-24f9-4598-8bef-624163697ab3', '16', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('74', '26537888-24f9-4598-8bef-624163697ab3', '17', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('75', '26537888-24f9-4598-8bef-624163697ab3', '18', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('76', '26537888-24f9-4598-8bef-624163697ab3', '19', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('77', '26537888-24f9-4598-8bef-624163697ab3', '20', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('78', '26537888-24f9-4598-8bef-624163697ab3', '21', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('79', '26537888-24f9-4598-8bef-624163697ab3', '24', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('80', '26537888-24f9-4598-8bef-624163697ab3', '25', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('81', '26537888-24f9-4598-8bef-624163697ab3', '26', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('82', '26537888-24f9-4598-8bef-624163697ab3', '27', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('83', '26537888-24f9-4598-8bef-624163697ab3', '28', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('84', '26537888-24f9-4598-8bef-624163697ab3', '29', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('85', '26537888-24f9-4598-8bef-624163697ab3', '30', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('86', '26537888-24f9-4598-8bef-624163697ab3', '31', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('87', '26537888-24f9-4598-8bef-624163697ab3', '32', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('88', '26537888-24f9-4598-8bef-624163697ab3', '33', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('89', '26537888-24f9-4598-8bef-624163697ab3', '35', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('90', '26537888-24f9-4598-8bef-624163697ab3', '36', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('91', '26537888-24f9-4598-8bef-624163697ab3', '37', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('92', '26537888-24f9-4598-8bef-624163697ab3', '38', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('93', '26537888-24f9-4598-8bef-624163697ab3', '39', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('94', '26537888-24f9-4598-8bef-624163697ab3', '40', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('95', '26537888-24f9-4598-8bef-624163697ab3', '41', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('96', '26537888-24f9-4598-8bef-624163697ab3', '42', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('97', '26537888-24f9-4598-8bef-624163697ab3', '43', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('98', '26537888-24f9-4598-8bef-624163697ab3', '44', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('99', '26537888-24f9-4598-8bef-624163697ab3', '45', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('100', '26537888-24f9-4598-8bef-624163697ab3', null, '1', '男', null);
INSERT INTO `discuss` VALUES ('101', '26537888-24f9-4598-8bef-624163697ab3', null, '2', '满意', null);
INSERT INTO `discuss` VALUES ('102', '26537888-24f9-4598-8bef-624163697ab3', null, '3', '刚好', null);
INSERT INTO `discuss` VALUES ('103', '26537888-24f9-4598-8bef-624163697ab3', null, '4', '刚好', null);
INSERT INTO `discuss` VALUES ('104', '26537888-24f9-4598-8bef-624163697ab3', null, '5', '满意', null);
INSERT INTO `discuss` VALUES ('105', '26537888-24f9-4598-8bef-624163697ab3', null, '6', '中辣', null);
INSERT INTO `discuss` VALUES ('106', '26537888-24f9-4598-8bef-624163697ab3', null, '7', '做的很好，暂无意见！', null);
INSERT INTO `discuss` VALUES ('107', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '3', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('108', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '4', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('109', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '5', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('110', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '6', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('111', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '7', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('112', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '8', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('113', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '9', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('114', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '10', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('115', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '11', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('116', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '13', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('117', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '14', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('118', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '15', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('119', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '16', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('120', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '17', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('121', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '18', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('122', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '19', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('123', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '20', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('124', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '21', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('125', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '24', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('126', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '25', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('127', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '26', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('128', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '27', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('129', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '28', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('130', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '29', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('131', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '30', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('132', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '31', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('133', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '32', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('134', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '33', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('135', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '35', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('136', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '36', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('137', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '37', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('138', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '38', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('139', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '39', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('140', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '40', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('141', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '41', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('142', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '42', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('143', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '43', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('144', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '44', null, '喜欢吃', null);
INSERT INTO `discuss` VALUES ('145', '368b0eef-5fcc-42cc-8949-cf96807b2b35', '45', null, '不喜欢吃', null);
INSERT INTO `discuss` VALUES ('146', '368b0eef-5fcc-42cc-8949-cf96807b2b35', null, '1', '男', null);
INSERT INTO `discuss` VALUES ('147', '368b0eef-5fcc-42cc-8949-cf96807b2b35', null, '2', '满意', null);
INSERT INTO `discuss` VALUES ('148', '368b0eef-5fcc-42cc-8949-cf96807b2b35', null, '3', '刚好', null);
INSERT INTO `discuss` VALUES ('149', '368b0eef-5fcc-42cc-8949-cf96807b2b35', null, '4', '偏少', null);
INSERT INTO `discuss` VALUES ('150', '368b0eef-5fcc-42cc-8949-cf96807b2b35', null, '5', '满意', null);
INSERT INTO `discuss` VALUES ('151', '368b0eef-5fcc-42cc-8949-cf96807b2b35', null, '6', '不辣', null);
INSERT INTO `discuss` VALUES ('152', '368b0eef-5fcc-42cc-8949-cf96807b2b35', null, '7', '做的很好，暂无意见！', null);
INSERT INTO `discuss` VALUES ('153', '985005d3-2afc-4278-96b8-e8212e9f6eba', null, '1', '女', null);
INSERT INTO `discuss` VALUES ('154', '985005d3-2afc-4278-96b8-e8212e9f6eba', null, '2', '满意', null);
INSERT INTO `discuss` VALUES ('155', '985005d3-2afc-4278-96b8-e8212e9f6eba', null, '3', '刚好', null);
INSERT INTO `discuss` VALUES ('156', '985005d3-2afc-4278-96b8-e8212e9f6eba', null, '4', '刚好', null);
INSERT INTO `discuss` VALUES ('157', '985005d3-2afc-4278-96b8-e8212e9f6eba', null, '5', '满意', null);
INSERT INTO `discuss` VALUES ('158', '985005d3-2afc-4278-96b8-e8212e9f6eba', null, '6', '中辣', null);
INSERT INTO `discuss` VALUES ('159', '985005d3-2afc-4278-96b8-e8212e9f6eba', null, '7', '做的很好，暂无意见！', null);
INSERT INTO `discuss` VALUES ('160', '6a7e6934-5a06-4a77-aec5-8e5ec55525f9', null, '1', '男', null);
INSERT INTO `discuss` VALUES ('161', '6a7e6934-5a06-4a77-aec5-8e5ec55525f9', null, '2', '满意', null);
INSERT INTO `discuss` VALUES ('162', '6a7e6934-5a06-4a77-aec5-8e5ec55525f9', null, '3', '刚好', null);
INSERT INTO `discuss` VALUES ('163', '6a7e6934-5a06-4a77-aec5-8e5ec55525f9', null, '4', '刚好', null);
INSERT INTO `discuss` VALUES ('164', '6a7e6934-5a06-4a77-aec5-8e5ec55525f9', null, '5', '不满意', null);
INSERT INTO `discuss` VALUES ('165', '6a7e6934-5a06-4a77-aec5-8e5ec55525f9', null, '6', '中辣', null);
INSERT INTO `discuss` VALUES ('166', '6a7e6934-5a06-4a77-aec5-8e5ec55525f9', null, '7', '做的很好，暂无意见！', null);
INSERT INTO `discuss` VALUES ('167', '2c7b293c-53b7-4436-91bd-f5000d7c495f', null, '1', '男', null);
INSERT INTO `discuss` VALUES ('168', '2c7b293c-53b7-4436-91bd-f5000d7c495f', null, '2', '非常满意', null);
INSERT INTO `discuss` VALUES ('169', '2c7b293c-53b7-4436-91bd-f5000d7c495f', null, '3', '刚好', null);
INSERT INTO `discuss` VALUES ('170', '2c7b293c-53b7-4436-91bd-f5000d7c495f', null, '4', '刚好', null);
INSERT INTO `discuss` VALUES ('171', '2c7b293c-53b7-4436-91bd-f5000d7c495f', null, '5', '非常满意', null);
INSERT INTO `discuss` VALUES ('172', '2c7b293c-53b7-4436-91bd-f5000d7c495f', null, '6', '中辣', null);
INSERT INTO `discuss` VALUES ('173', '2c7b293c-53b7-4436-91bd-f5000d7c495f', null, '7', '做的很好，暂无意见！', null);
INSERT INTO `discuss` VALUES ('174', '8921642f-3dcf-41ae-800a-1591761f315c', null, '1', '女', '2');
INSERT INTO `discuss` VALUES ('175', '8921642f-3dcf-41ae-800a-1591761f315c', null, '2', '不满意', '2');
INSERT INTO `discuss` VALUES ('176', '8921642f-3dcf-41ae-800a-1591761f315c', null, '3', '偏少', '2');
INSERT INTO `discuss` VALUES ('177', '8921642f-3dcf-41ae-800a-1591761f315c', null, '4', '偏少', '2');
INSERT INTO `discuss` VALUES ('178', '8921642f-3dcf-41ae-800a-1591761f315c', null, '5', '不满意', '2');
INSERT INTO `discuss` VALUES ('179', '8921642f-3dcf-41ae-800a-1591761f315c', null, '6', '不辣', '3');
INSERT INTO `discuss` VALUES ('180', '8921642f-3dcf-41ae-800a-1591761f315c', null, '7', '做的很好，暂无意见！', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('181', '13d45526-1a5b-4f54-ac5e-3c9444916062', null, '1', '男', '2');
INSERT INTO `discuss` VALUES ('182', '13d45526-1a5b-4f54-ac5e-3c9444916062', null, '2', '非常满意', '5');
INSERT INTO `discuss` VALUES ('183', '13d45526-1a5b-4f54-ac5e-3c9444916062', null, '3', '刚好', '5');
INSERT INTO `discuss` VALUES ('184', '13d45526-1a5b-4f54-ac5e-3c9444916062', null, '4', '刚好', '5');
INSERT INTO `discuss` VALUES ('185', '13d45526-1a5b-4f54-ac5e-3c9444916062', null, '5', '非常满意', '5');
INSERT INTO `discuss` VALUES ('186', '13d45526-1a5b-4f54-ac5e-3c9444916062', null, '6', '微辣', '3');
INSERT INTO `discuss` VALUES ('187', '13d45526-1a5b-4f54-ac5e-3c9444916062', null, '7', '做的很好，暂无意见！', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('188', '6c62575b-2d99-4636-8ab8-f2051d991e99', '3', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('189', '6c62575b-2d99-4636-8ab8-f2051d991e99', '4', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('190', '6c62575b-2d99-4636-8ab8-f2051d991e99', '5', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('191', '6c62575b-2d99-4636-8ab8-f2051d991e99', '6', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('192', '6c62575b-2d99-4636-8ab8-f2051d991e99', '7', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('193', '6c62575b-2d99-4636-8ab8-f2051d991e99', '8', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('194', '6c62575b-2d99-4636-8ab8-f2051d991e99', '9', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('195', '6c62575b-2d99-4636-8ab8-f2051d991e99', '10', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('196', '6c62575b-2d99-4636-8ab8-f2051d991e99', '11', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('197', '6c62575b-2d99-4636-8ab8-f2051d991e99', '13', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('198', '6c62575b-2d99-4636-8ab8-f2051d991e99', '14', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('199', '6c62575b-2d99-4636-8ab8-f2051d991e99', '15', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('200', '6c62575b-2d99-4636-8ab8-f2051d991e99', '16', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('201', '6c62575b-2d99-4636-8ab8-f2051d991e99', '17', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('202', '6c62575b-2d99-4636-8ab8-f2051d991e99', '18', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('203', '6c62575b-2d99-4636-8ab8-f2051d991e99', '19', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('204', '6c62575b-2d99-4636-8ab8-f2051d991e99', '20', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('205', '6c62575b-2d99-4636-8ab8-f2051d991e99', '21', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('206', '6c62575b-2d99-4636-8ab8-f2051d991e99', '24', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('207', '6c62575b-2d99-4636-8ab8-f2051d991e99', '25', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('208', '6c62575b-2d99-4636-8ab8-f2051d991e99', '26', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('209', '6c62575b-2d99-4636-8ab8-f2051d991e99', '27', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('210', '6c62575b-2d99-4636-8ab8-f2051d991e99', '28', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('211', '6c62575b-2d99-4636-8ab8-f2051d991e99', '29', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('212', '6c62575b-2d99-4636-8ab8-f2051d991e99', '30', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('213', '6c62575b-2d99-4636-8ab8-f2051d991e99', '31', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('214', '6c62575b-2d99-4636-8ab8-f2051d991e99', '32', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('215', '6c62575b-2d99-4636-8ab8-f2051d991e99', '33', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('216', '6c62575b-2d99-4636-8ab8-f2051d991e99', '35', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('217', '6c62575b-2d99-4636-8ab8-f2051d991e99', '36', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('218', '6c62575b-2d99-4636-8ab8-f2051d991e99', '37', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('219', '6c62575b-2d99-4636-8ab8-f2051d991e99', '38', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('220', '6c62575b-2d99-4636-8ab8-f2051d991e99', '39', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('221', '6c62575b-2d99-4636-8ab8-f2051d991e99', '40', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('222', '6c62575b-2d99-4636-8ab8-f2051d991e99', '41', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('223', '6c62575b-2d99-4636-8ab8-f2051d991e99', '42', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('224', '6c62575b-2d99-4636-8ab8-f2051d991e99', '43', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('225', '6c62575b-2d99-4636-8ab8-f2051d991e99', '44', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('226', '6c62575b-2d99-4636-8ab8-f2051d991e99', '45', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('227', '6c62575b-2d99-4636-8ab8-f2051d991e99', null, '1', '男', '2');
INSERT INTO `discuss` VALUES ('228', '6c62575b-2d99-4636-8ab8-f2051d991e99', null, '2', '非常满意', '5');
INSERT INTO `discuss` VALUES ('229', '6c62575b-2d99-4636-8ab8-f2051d991e99', null, '3', '刚好', '5');
INSERT INTO `discuss` VALUES ('230', '6c62575b-2d99-4636-8ab8-f2051d991e99', null, '4', '刚好', '5');
INSERT INTO `discuss` VALUES ('231', '6c62575b-2d99-4636-8ab8-f2051d991e99', null, '5', '非常满意', '5');
INSERT INTO `discuss` VALUES ('232', '6c62575b-2d99-4636-8ab8-f2051d991e99', null, '6', '中辣', '3');
INSERT INTO `discuss` VALUES ('233', '6c62575b-2d99-4636-8ab8-f2051d991e99', null, '7', '做的很好，暂无意见！', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('234', '7b907e29-fe5e-49dc-bf05-19febe520929', null, '8', '一般', '3');
INSERT INTO `discuss` VALUES ('235', '7b907e29-fe5e-49dc-bf05-19febe520929', null, '9', '一般', '3');
INSERT INTO `discuss` VALUES ('236', '7b907e29-fe5e-49dc-bf05-19febe520929', null, '10', '一般', '3');
INSERT INTO `discuss` VALUES ('237', '7b907e29-fe5e-49dc-bf05-19febe520929', null, '11', '一般', '3');
INSERT INTO `discuss` VALUES ('238', '7b907e29-fe5e-49dc-bf05-19febe520929', null, '12', '一般', '3');
INSERT INTO `discuss` VALUES ('239', '7b907e29-fe5e-49dc-bf05-19febe520929', null, '13', '一般', '3');
INSERT INTO `discuss` VALUES ('240', '7b907e29-fe5e-49dc-bf05-19febe520929', null, '14', '一般', '3');
INSERT INTO `discuss` VALUES ('241', '7b907e29-fe5e-49dc-bf05-19febe520929', null, '15', '一般', '3');
INSERT INTO `discuss` VALUES ('242', '7b907e29-fe5e-49dc-bf05-19febe520929', null, '16', '一般', '3');
INSERT INTO `discuss` VALUES ('243', '7b907e29-fe5e-49dc-bf05-19febe520929', null, '17', '一般', '3');
INSERT INTO `discuss` VALUES ('244', '7b907e29-fe5e-49dc-bf05-19febe520929', null, '18', '一般', '3');
INSERT INTO `discuss` VALUES ('245', '7b907e29-fe5e-49dc-bf05-19febe520929', null, '19', '一般', '3');
INSERT INTO `discuss` VALUES ('246', '7b907e29-fe5e-49dc-bf05-19febe520929', null, '20', '一般', '3');
INSERT INTO `discuss` VALUES ('247', '7b907e29-fe5e-49dc-bf05-19febe520929', null, '21', '一般', '3');
INSERT INTO `discuss` VALUES ('248', '7b907e29-fe5e-49dc-bf05-19febe520929', null, '22', '一般', '3');
INSERT INTO `discuss` VALUES ('249', '7b907e29-fe5e-49dc-bf05-19febe520929', null, '23', '一般', '3');
INSERT INTO `discuss` VALUES ('250', '7b907e29-fe5e-49dc-bf05-19febe520929', null, '24', '做的很好，暂无意见！', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('251', '7b8b5bcf-fd63-4ae3-80c9-2aacbb6ed459', null, '8', '一般', '3');
INSERT INTO `discuss` VALUES ('252', '7b8b5bcf-fd63-4ae3-80c9-2aacbb6ed459', null, '9', '一般', '3');
INSERT INTO `discuss` VALUES ('253', '7b8b5bcf-fd63-4ae3-80c9-2aacbb6ed459', null, '10', '一般', '3');
INSERT INTO `discuss` VALUES ('254', '7b8b5bcf-fd63-4ae3-80c9-2aacbb6ed459', null, '11', '一般', '3');
INSERT INTO `discuss` VALUES ('255', '7b8b5bcf-fd63-4ae3-80c9-2aacbb6ed459', null, '12', '一般', '3');
INSERT INTO `discuss` VALUES ('256', '7b8b5bcf-fd63-4ae3-80c9-2aacbb6ed459', null, '13', '一般', '3');
INSERT INTO `discuss` VALUES ('257', '7b8b5bcf-fd63-4ae3-80c9-2aacbb6ed459', null, '14', '一般', '3');
INSERT INTO `discuss` VALUES ('258', '7b8b5bcf-fd63-4ae3-80c9-2aacbb6ed459', null, '15', '一般', '3');
INSERT INTO `discuss` VALUES ('259', '7b8b5bcf-fd63-4ae3-80c9-2aacbb6ed459', null, '16', '一般', '3');
INSERT INTO `discuss` VALUES ('260', '7b8b5bcf-fd63-4ae3-80c9-2aacbb6ed459', null, '17', '一般', '3');
INSERT INTO `discuss` VALUES ('261', '7b8b5bcf-fd63-4ae3-80c9-2aacbb6ed459', null, '18', '一般', '3');
INSERT INTO `discuss` VALUES ('262', '7b8b5bcf-fd63-4ae3-80c9-2aacbb6ed459', null, '19', '一般', '3');
INSERT INTO `discuss` VALUES ('263', '7b8b5bcf-fd63-4ae3-80c9-2aacbb6ed459', null, '20', '一般', '3');
INSERT INTO `discuss` VALUES ('264', '7b8b5bcf-fd63-4ae3-80c9-2aacbb6ed459', null, '21', '一般', '3');
INSERT INTO `discuss` VALUES ('265', '7b8b5bcf-fd63-4ae3-80c9-2aacbb6ed459', null, '22', '一般', '3');
INSERT INTO `discuss` VALUES ('266', '7b8b5bcf-fd63-4ae3-80c9-2aacbb6ed459', null, '23', '一般', '3');
INSERT INTO `discuss` VALUES ('267', '7b8b5bcf-fd63-4ae3-80c9-2aacbb6ed459', null, '24', '做的很好，暂无意见！', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('268', '8e73f9e0-5a36-43b6-8f0b-3bff5db432ac', null, '25', '不太清楚', '4');
INSERT INTO `discuss` VALUES ('269', '8e73f9e0-5a36-43b6-8f0b-3bff5db432ac', null, '26', '不太喜欢', '4');
INSERT INTO `discuss` VALUES ('270', '8e73f9e0-5a36-43b6-8f0b-3bff5db432ac', null, '27', '不太关心', '4');
INSERT INTO `discuss` VALUES ('271', '8e73f9e0-5a36-43b6-8f0b-3bff5db432ac', null, '28', '一般', '4');
INSERT INTO `discuss` VALUES ('272', '8e73f9e0-5a36-43b6-8f0b-3bff5db432ac', null, '29', '偶尔', '4');
INSERT INTO `discuss` VALUES ('273', '8e73f9e0-5a36-43b6-8f0b-3bff5db432ac', null, '30', '不太乐意', '4');
INSERT INTO `discuss` VALUES ('274', '8e73f9e0-5a36-43b6-8f0b-3bff5db432ac', null, '31', '一般', '4');
INSERT INTO `discuss` VALUES ('275', '8e73f9e0-5a36-43b6-8f0b-3bff5db432ac', null, '32', '偶尔', '4');
INSERT INTO `discuss` VALUES ('276', '8e73f9e0-5a36-43b6-8f0b-3bff5db432ac', null, '33', '一般', '4');
INSERT INTO `discuss` VALUES ('277', '8e73f9e0-5a36-43b6-8f0b-3bff5db432ac', null, '34', '一般', '4');
INSERT INTO `discuss` VALUES ('278', '70015e20-0a3b-4593-b4b6-c30fd6f5a697', null, '8', '非常满意', '5');
INSERT INTO `discuss` VALUES ('279', '70015e20-0a3b-4593-b4b6-c30fd6f5a697', null, '9', '非常满意', '5');
INSERT INTO `discuss` VALUES ('280', '70015e20-0a3b-4593-b4b6-c30fd6f5a697', null, '10', '非常满意', '5');
INSERT INTO `discuss` VALUES ('281', '70015e20-0a3b-4593-b4b6-c30fd6f5a697', null, '11', '非常满意', '5');
INSERT INTO `discuss` VALUES ('282', '70015e20-0a3b-4593-b4b6-c30fd6f5a697', null, '12', '非常满意', '5');
INSERT INTO `discuss` VALUES ('283', '70015e20-0a3b-4593-b4b6-c30fd6f5a697', null, '13', '非常满意', '5');
INSERT INTO `discuss` VALUES ('284', '70015e20-0a3b-4593-b4b6-c30fd6f5a697', null, '14', '非常满意', '5');
INSERT INTO `discuss` VALUES ('285', '70015e20-0a3b-4593-b4b6-c30fd6f5a697', null, '15', '非常满意', '5');
INSERT INTO `discuss` VALUES ('286', '70015e20-0a3b-4593-b4b6-c30fd6f5a697', null, '16', '非常满意', '5');
INSERT INTO `discuss` VALUES ('287', '70015e20-0a3b-4593-b4b6-c30fd6f5a697', null, '17', '非常满意', '5');
INSERT INTO `discuss` VALUES ('288', '70015e20-0a3b-4593-b4b6-c30fd6f5a697', null, '18', '非常满意', '5');
INSERT INTO `discuss` VALUES ('289', '70015e20-0a3b-4593-b4b6-c30fd6f5a697', null, '19', '非常满意', '5');
INSERT INTO `discuss` VALUES ('290', '70015e20-0a3b-4593-b4b6-c30fd6f5a697', null, '20', '非常满意', '5');
INSERT INTO `discuss` VALUES ('291', '70015e20-0a3b-4593-b4b6-c30fd6f5a697', null, '21', '非常满意', '5');
INSERT INTO `discuss` VALUES ('292', '70015e20-0a3b-4593-b4b6-c30fd6f5a697', null, '22', '非常满意', '5');
INSERT INTO `discuss` VALUES ('293', '70015e20-0a3b-4593-b4b6-c30fd6f5a697', null, '23', '非常满意', '5');
INSERT INTO `discuss` VALUES ('294', '70015e20-0a3b-4593-b4b6-c30fd6f5a697', null, '24', '做的很好，暂无意见！', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('295', '8628bc40-58ee-402c-9b2a-d9acf7ea2b9d', null, '25', '非常清楚', '10');
INSERT INTO `discuss` VALUES ('296', '8628bc40-58ee-402c-9b2a-d9acf7ea2b9d', null, '26', '比较喜欢', '7');
INSERT INTO `discuss` VALUES ('297', '8628bc40-58ee-402c-9b2a-d9acf7ea2b9d', null, '27', '关心', '7');
INSERT INTO `discuss` VALUES ('298', '8628bc40-58ee-402c-9b2a-d9acf7ea2b9d', null, '28', '比较明确 ', '7');
INSERT INTO `discuss` VALUES ('299', '8628bc40-58ee-402c-9b2a-d9acf7ea2b9d', null, '29', '一般', '7');
INSERT INTO `discuss` VALUES ('300', '8628bc40-58ee-402c-9b2a-d9acf7ea2b9d', null, '30', '比较乐意', '7');
INSERT INTO `discuss` VALUES ('301', '8628bc40-58ee-402c-9b2a-d9acf7ea2b9d', null, '31', '比较好', '7');
INSERT INTO `discuss` VALUES ('302', '8628bc40-58ee-402c-9b2a-d9acf7ea2b9d', null, '32', '经常', '7');
INSERT INTO `discuss` VALUES ('303', '8628bc40-58ee-402c-9b2a-d9acf7ea2b9d', null, '33', '有帮助', '7');
INSERT INTO `discuss` VALUES ('304', '8628bc40-58ee-402c-9b2a-d9acf7ea2b9d', null, '34', '比较好', '7');
INSERT INTO `discuss` VALUES ('305', '9669afd0-b7f2-4b5a-a265-e7dcd97a419c', null, '1', '女', '2');
INSERT INTO `discuss` VALUES ('306', '9669afd0-b7f2-4b5a-a265-e7dcd97a419c', null, '2', '非常满意', '5');
INSERT INTO `discuss` VALUES ('307', '9669afd0-b7f2-4b5a-a265-e7dcd97a419c', null, '3', '刚好', '5');
INSERT INTO `discuss` VALUES ('308', '9669afd0-b7f2-4b5a-a265-e7dcd97a419c', null, '4', '刚好', '5');
INSERT INTO `discuss` VALUES ('309', '9669afd0-b7f2-4b5a-a265-e7dcd97a419c', null, '5', '非常满意', '5');
INSERT INTO `discuss` VALUES ('310', '9669afd0-b7f2-4b5a-a265-e7dcd97a419c', null, '6', '中辣', '3');
INSERT INTO `discuss` VALUES ('311', '9669afd0-b7f2-4b5a-a265-e7dcd97a419c', null, '7', '做的很好，暂无意见！', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('312', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '3', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('313', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '4', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('314', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '5', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('315', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '6', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('316', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '7', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('317', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '8', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('318', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '9', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('319', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '10', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('320', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '11', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('321', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '13', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('322', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '14', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('323', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '15', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('324', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '16', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('325', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '17', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('326', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '18', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('327', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '19', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('328', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '20', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('329', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '21', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('330', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '24', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('331', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '25', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('332', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '26', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('333', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '27', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('334', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '28', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('335', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '29', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('336', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '30', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('337', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '31', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('338', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '32', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('339', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '33', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('340', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '35', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('341', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '36', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('342', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '37', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('343', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '38', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('344', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '39', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('345', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '40', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('346', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '41', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('347', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '42', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('348', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '43', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('349', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '44', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('350', '43999a1f-2021-4e4d-aec2-87150f9e2b03', '45', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('351', '43999a1f-2021-4e4d-aec2-87150f9e2b03', null, '1', '男', '2');
INSERT INTO `discuss` VALUES ('352', '43999a1f-2021-4e4d-aec2-87150f9e2b03', null, '2', '非常满意', '5');
INSERT INTO `discuss` VALUES ('353', '43999a1f-2021-4e4d-aec2-87150f9e2b03', null, '3', '刚好', '5');
INSERT INTO `discuss` VALUES ('354', '43999a1f-2021-4e4d-aec2-87150f9e2b03', null, '4', '刚好', '5');
INSERT INTO `discuss` VALUES ('355', '43999a1f-2021-4e4d-aec2-87150f9e2b03', null, '5', '非常满意', '5');
INSERT INTO `discuss` VALUES ('356', '43999a1f-2021-4e4d-aec2-87150f9e2b03', null, '6', '中辣', '3');
INSERT INTO `discuss` VALUES ('357', '43999a1f-2021-4e4d-aec2-87150f9e2b03', null, '7', '做的很好，暂无意见！', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('358', '376848da-bdc9-454b-b988-0cec831cf13b', '3', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('359', '376848da-bdc9-454b-b988-0cec831cf13b', '4', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('360', '376848da-bdc9-454b-b988-0cec831cf13b', '5', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('361', '376848da-bdc9-454b-b988-0cec831cf13b', '6', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('362', '376848da-bdc9-454b-b988-0cec831cf13b', '7', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('363', '376848da-bdc9-454b-b988-0cec831cf13b', '8', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('364', '376848da-bdc9-454b-b988-0cec831cf13b', '9', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('365', '376848da-bdc9-454b-b988-0cec831cf13b', '10', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('366', '376848da-bdc9-454b-b988-0cec831cf13b', '11', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('367', '376848da-bdc9-454b-b988-0cec831cf13b', '13', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('368', '376848da-bdc9-454b-b988-0cec831cf13b', '14', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('369', '376848da-bdc9-454b-b988-0cec831cf13b', '15', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('370', '376848da-bdc9-454b-b988-0cec831cf13b', '16', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('371', '376848da-bdc9-454b-b988-0cec831cf13b', '17', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('372', '376848da-bdc9-454b-b988-0cec831cf13b', '18', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('373', '376848da-bdc9-454b-b988-0cec831cf13b', '19', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('374', '376848da-bdc9-454b-b988-0cec831cf13b', '20', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('375', '376848da-bdc9-454b-b988-0cec831cf13b', '21', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('376', '376848da-bdc9-454b-b988-0cec831cf13b', '24', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('377', '376848da-bdc9-454b-b988-0cec831cf13b', '25', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('378', '376848da-bdc9-454b-b988-0cec831cf13b', '26', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('379', '376848da-bdc9-454b-b988-0cec831cf13b', '27', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('380', '376848da-bdc9-454b-b988-0cec831cf13b', '28', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('381', '376848da-bdc9-454b-b988-0cec831cf13b', '29', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('382', '376848da-bdc9-454b-b988-0cec831cf13b', '30', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('383', '376848da-bdc9-454b-b988-0cec831cf13b', '31', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('384', '376848da-bdc9-454b-b988-0cec831cf13b', '32', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('385', '376848da-bdc9-454b-b988-0cec831cf13b', '33', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('386', '376848da-bdc9-454b-b988-0cec831cf13b', '35', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('387', '376848da-bdc9-454b-b988-0cec831cf13b', '36', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('388', '376848da-bdc9-454b-b988-0cec831cf13b', '37', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('389', '376848da-bdc9-454b-b988-0cec831cf13b', '38', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('390', '376848da-bdc9-454b-b988-0cec831cf13b', '39', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('391', '376848da-bdc9-454b-b988-0cec831cf13b', '40', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('392', '376848da-bdc9-454b-b988-0cec831cf13b', '41', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('393', '376848da-bdc9-454b-b988-0cec831cf13b', '42', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('394', '376848da-bdc9-454b-b988-0cec831cf13b', '43', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('395', '376848da-bdc9-454b-b988-0cec831cf13b', '44', null, '喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('396', '376848da-bdc9-454b-b988-0cec831cf13b', '45', null, '不喜欢吃', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('397', '376848da-bdc9-454b-b988-0cec831cf13b', null, '1', '男', '2');
INSERT INTO `discuss` VALUES ('398', '376848da-bdc9-454b-b988-0cec831cf13b', null, '2', '满意', '3');
INSERT INTO `discuss` VALUES ('399', '376848da-bdc9-454b-b988-0cec831cf13b', null, '3', '刚好', '5');
INSERT INTO `discuss` VALUES ('400', '376848da-bdc9-454b-b988-0cec831cf13b', null, '4', '刚好', '5');
INSERT INTO `discuss` VALUES ('401', '376848da-bdc9-454b-b988-0cec831cf13b', null, '5', '非常满意', '5');
INSERT INTO `discuss` VALUES ('402', '376848da-bdc9-454b-b988-0cec831cf13b', null, '6', '中辣', '3');
INSERT INTO `discuss` VALUES ('403', '376848da-bdc9-454b-b988-0cec831cf13b', null, '7', '做的很好，暂无意见！', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('404', '78ce9ed0-f5f9-41ab-8d32-a90cc0c5abc7', null, '8', '非常满意', '5');
INSERT INTO `discuss` VALUES ('405', '78ce9ed0-f5f9-41ab-8d32-a90cc0c5abc7', null, '9', '非常满意', '5');
INSERT INTO `discuss` VALUES ('406', '78ce9ed0-f5f9-41ab-8d32-a90cc0c5abc7', null, '10', '非常满意', '5');
INSERT INTO `discuss` VALUES ('407', '78ce9ed0-f5f9-41ab-8d32-a90cc0c5abc7', null, '11', '非常满意', '5');
INSERT INTO `discuss` VALUES ('408', '78ce9ed0-f5f9-41ab-8d32-a90cc0c5abc7', null, '12', '非常满意', '5');
INSERT INTO `discuss` VALUES ('409', '78ce9ed0-f5f9-41ab-8d32-a90cc0c5abc7', null, '13', '非常满意', '5');
INSERT INTO `discuss` VALUES ('410', '78ce9ed0-f5f9-41ab-8d32-a90cc0c5abc7', null, '14', '非常满意', '5');
INSERT INTO `discuss` VALUES ('411', '78ce9ed0-f5f9-41ab-8d32-a90cc0c5abc7', null, '15', '非常满意', '5');
INSERT INTO `discuss` VALUES ('412', '78ce9ed0-f5f9-41ab-8d32-a90cc0c5abc7', null, '16', '非常满意', '5');
INSERT INTO `discuss` VALUES ('413', '78ce9ed0-f5f9-41ab-8d32-a90cc0c5abc7', null, '17', '非常满意', '5');
INSERT INTO `discuss` VALUES ('414', '78ce9ed0-f5f9-41ab-8d32-a90cc0c5abc7', null, '18', '非常满意', '5');
INSERT INTO `discuss` VALUES ('415', '78ce9ed0-f5f9-41ab-8d32-a90cc0c5abc7', null, '19', '非常满意', '5');
INSERT INTO `discuss` VALUES ('416', '78ce9ed0-f5f9-41ab-8d32-a90cc0c5abc7', null, '20', '满意', '4');
INSERT INTO `discuss` VALUES ('417', '78ce9ed0-f5f9-41ab-8d32-a90cc0c5abc7', null, '21', '非常满意', '5');
INSERT INTO `discuss` VALUES ('418', '78ce9ed0-f5f9-41ab-8d32-a90cc0c5abc7', null, '22', '满意', '4');
INSERT INTO `discuss` VALUES ('419', '78ce9ed0-f5f9-41ab-8d32-a90cc0c5abc7', null, '23', '非常满意', '5');
INSERT INTO `discuss` VALUES ('420', '78ce9ed0-f5f9-41ab-8d32-a90cc0c5abc7', null, '24', '做的很好，暂无意见！', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('421', 'b46d83fb-00f3-4875-9f6b-0e802ca9c83b', null, '8', '满意', '4');
INSERT INTO `discuss` VALUES ('422', 'b46d83fb-00f3-4875-9f6b-0e802ca9c83b', null, '9', '满意', '4');
INSERT INTO `discuss` VALUES ('423', 'b46d83fb-00f3-4875-9f6b-0e802ca9c83b', null, '10', '满意', '4');
INSERT INTO `discuss` VALUES ('424', 'b46d83fb-00f3-4875-9f6b-0e802ca9c83b', null, '11', '满意', '4');
INSERT INTO `discuss` VALUES ('425', 'b46d83fb-00f3-4875-9f6b-0e802ca9c83b', null, '12', '满意', '4');
INSERT INTO `discuss` VALUES ('426', 'b46d83fb-00f3-4875-9f6b-0e802ca9c83b', null, '13', '满意', '4');
INSERT INTO `discuss` VALUES ('427', 'b46d83fb-00f3-4875-9f6b-0e802ca9c83b', null, '14', '满意', '4');
INSERT INTO `discuss` VALUES ('428', 'b46d83fb-00f3-4875-9f6b-0e802ca9c83b', null, '15', '满意', '4');
INSERT INTO `discuss` VALUES ('429', 'b46d83fb-00f3-4875-9f6b-0e802ca9c83b', null, '16', '满意', '4');
INSERT INTO `discuss` VALUES ('430', 'b46d83fb-00f3-4875-9f6b-0e802ca9c83b', null, '17', '满意', '4');
INSERT INTO `discuss` VALUES ('431', 'b46d83fb-00f3-4875-9f6b-0e802ca9c83b', null, '18', '满意', '4');
INSERT INTO `discuss` VALUES ('432', 'b46d83fb-00f3-4875-9f6b-0e802ca9c83b', null, '19', '满意', '4');
INSERT INTO `discuss` VALUES ('433', 'b46d83fb-00f3-4875-9f6b-0e802ca9c83b', null, '20', '满意', '4');
INSERT INTO `discuss` VALUES ('434', 'b46d83fb-00f3-4875-9f6b-0e802ca9c83b', null, '21', '满意', '4');
INSERT INTO `discuss` VALUES ('435', 'b46d83fb-00f3-4875-9f6b-0e802ca9c83b', null, '22', '满意', '4');
INSERT INTO `discuss` VALUES ('436', 'b46d83fb-00f3-4875-9f6b-0e802ca9c83b', null, '23', '满意', '4');
INSERT INTO `discuss` VALUES ('437', 'b46d83fb-00f3-4875-9f6b-0e802ca9c83b', null, '24', '做的很好，暂无意见！', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('438', '7996661f-89be-4688-96b4-03716f518083', null, '25', '不太清楚', '4');
INSERT INTO `discuss` VALUES ('439', '7996661f-89be-4688-96b4-03716f518083', null, '26', '不太喜欢', '4');
INSERT INTO `discuss` VALUES ('440', '7996661f-89be-4688-96b4-03716f518083', null, '27', '不太关心', '4');
INSERT INTO `discuss` VALUES ('441', '7996661f-89be-4688-96b4-03716f518083', null, '28', '一般', '4');
INSERT INTO `discuss` VALUES ('442', '7996661f-89be-4688-96b4-03716f518083', null, '29', '偶尔', '4');
INSERT INTO `discuss` VALUES ('443', '7996661f-89be-4688-96b4-03716f518083', null, '30', '不太乐意', '4');
INSERT INTO `discuss` VALUES ('444', '7996661f-89be-4688-96b4-03716f518083', null, '31', '一般', '4');
INSERT INTO `discuss` VALUES ('445', '7996661f-89be-4688-96b4-03716f518083', null, '32', '偶尔', '4');
INSERT INTO `discuss` VALUES ('446', '7996661f-89be-4688-96b4-03716f518083', null, '33', '一般', '4');
INSERT INTO `discuss` VALUES ('447', '7996661f-89be-4688-96b4-03716f518083', null, '34', '一般', '4');
INSERT INTO `discuss` VALUES ('448', 'b0936784-1306-41cc-b32e-e65fcb81f74e', null, '8', '非常满意', '5');
INSERT INTO `discuss` VALUES ('449', 'b0936784-1306-41cc-b32e-e65fcb81f74e', null, '9', '非常满意', '5');
INSERT INTO `discuss` VALUES ('450', 'b0936784-1306-41cc-b32e-e65fcb81f74e', null, '10', '非常满意', '5');
INSERT INTO `discuss` VALUES ('451', 'b0936784-1306-41cc-b32e-e65fcb81f74e', null, '11', '非常满意', '5');
INSERT INTO `discuss` VALUES ('452', 'b0936784-1306-41cc-b32e-e65fcb81f74e', null, '12', '非常满意', '5');
INSERT INTO `discuss` VALUES ('453', 'b0936784-1306-41cc-b32e-e65fcb81f74e', null, '13', '非常满意', '5');
INSERT INTO `discuss` VALUES ('454', 'b0936784-1306-41cc-b32e-e65fcb81f74e', null, '14', '非常满意', '5');
INSERT INTO `discuss` VALUES ('455', 'b0936784-1306-41cc-b32e-e65fcb81f74e', null, '15', '非常满意', '5');
INSERT INTO `discuss` VALUES ('456', 'b0936784-1306-41cc-b32e-e65fcb81f74e', null, '16', '非常满意', '5');
INSERT INTO `discuss` VALUES ('457', 'b0936784-1306-41cc-b32e-e65fcb81f74e', null, '17', '非常满意', '5');
INSERT INTO `discuss` VALUES ('458', 'b0936784-1306-41cc-b32e-e65fcb81f74e', null, '18', '非常满意', '5');
INSERT INTO `discuss` VALUES ('459', 'b0936784-1306-41cc-b32e-e65fcb81f74e', null, '19', '非常满意', '5');
INSERT INTO `discuss` VALUES ('460', 'b0936784-1306-41cc-b32e-e65fcb81f74e', null, '20', '非常满意', '5');
INSERT INTO `discuss` VALUES ('461', 'b0936784-1306-41cc-b32e-e65fcb81f74e', null, '21', '非常满意', '5');
INSERT INTO `discuss` VALUES ('462', 'b0936784-1306-41cc-b32e-e65fcb81f74e', null, '22', '非常满意', '5');
INSERT INTO `discuss` VALUES ('463', 'b0936784-1306-41cc-b32e-e65fcb81f74e', null, '23', '非常满意', '5');
INSERT INTO `discuss` VALUES ('464', 'b0936784-1306-41cc-b32e-e65fcb81f74e', null, '24', '做的很好，暂无意见！', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('465', 'f5eeee16-941c-4cc7-b685-f7b18d3a5b20', null, '25', '非常清楚', '10');
INSERT INTO `discuss` VALUES ('466', 'f5eeee16-941c-4cc7-b685-f7b18d3a5b20', null, '26', '非常喜欢 ', '10');
INSERT INTO `discuss` VALUES ('467', 'f5eeee16-941c-4cc7-b685-f7b18d3a5b20', null, '27', '非常关心 ', '10');
INSERT INTO `discuss` VALUES ('468', 'f5eeee16-941c-4cc7-b685-f7b18d3a5b20', null, '28', '非常明确 ', '10');
INSERT INTO `discuss` VALUES ('469', 'f5eeee16-941c-4cc7-b685-f7b18d3a5b20', null, '29', '经常', '10');
INSERT INTO `discuss` VALUES ('470', 'f5eeee16-941c-4cc7-b685-f7b18d3a5b20', null, '30', '很乐意', '10');
INSERT INTO `discuss` VALUES ('471', 'f5eeee16-941c-4cc7-b685-f7b18d3a5b20', null, '31', '很好', '10');
INSERT INTO `discuss` VALUES ('472', 'f5eeee16-941c-4cc7-b685-f7b18d3a5b20', null, '32', '总是', '10');
INSERT INTO `discuss` VALUES ('473', 'f5eeee16-941c-4cc7-b685-f7b18d3a5b20', null, '33', '非常有帮助', '10');
INSERT INTO `discuss` VALUES ('474', 'f5eeee16-941c-4cc7-b685-f7b18d3a5b20', null, '34', '很好', '10');
INSERT INTO `discuss` VALUES ('475', '9e570b80-d436-4477-8e48-879f95298f19', null, '25', '了解', '7');
INSERT INTO `discuss` VALUES ('476', '9e570b80-d436-4477-8e48-879f95298f19', null, '26', '比较喜欢', '7');
INSERT INTO `discuss` VALUES ('477', '9e570b80-d436-4477-8e48-879f95298f19', null, '27', '关心', '7');
INSERT INTO `discuss` VALUES ('478', '9e570b80-d436-4477-8e48-879f95298f19', null, '28', '比较明确 ', '7');
INSERT INTO `discuss` VALUES ('479', '9e570b80-d436-4477-8e48-879f95298f19', null, '29', '一般', '7');
INSERT INTO `discuss` VALUES ('480', '9e570b80-d436-4477-8e48-879f95298f19', null, '30', '比较乐意', '7');
INSERT INTO `discuss` VALUES ('481', '9e570b80-d436-4477-8e48-879f95298f19', null, '31', '比较好', '7');
INSERT INTO `discuss` VALUES ('482', '9e570b80-d436-4477-8e48-879f95298f19', null, '32', '经常', '7');
INSERT INTO `discuss` VALUES ('483', '9e570b80-d436-4477-8e48-879f95298f19', null, '33', '有帮助', '7');
INSERT INTO `discuss` VALUES ('484', '9e570b80-d436-4477-8e48-879f95298f19', null, '34', '比较好', '7');
INSERT INTO `discuss` VALUES ('485', 'b5741717-63d4-4865-90e1-0bf365955021', null, '25', '完全不清楚', '0');
INSERT INTO `discuss` VALUES ('486', 'b5741717-63d4-4865-90e1-0bf365955021', null, '26', '很不喜欢', '0');
INSERT INTO `discuss` VALUES ('487', 'b5741717-63d4-4865-90e1-0bf365955021', null, '27', '完全不关心', '0');
INSERT INTO `discuss` VALUES ('488', 'b5741717-63d4-4865-90e1-0bf365955021', null, '28', '不明确', '0');
INSERT INTO `discuss` VALUES ('489', 'b5741717-63d4-4865-90e1-0bf365955021', null, '29', '没有', '0');
INSERT INTO `discuss` VALUES ('490', 'b5741717-63d4-4865-90e1-0bf365955021', null, '30', '不乐意', '0');
INSERT INTO `discuss` VALUES ('491', 'b5741717-63d4-4865-90e1-0bf365955021', null, '31', '很差', '0');
INSERT INTO `discuss` VALUES ('492', 'b5741717-63d4-4865-90e1-0bf365955021', null, '32', '很少', '0');
INSERT INTO `discuss` VALUES ('493', 'b5741717-63d4-4865-90e1-0bf365955021', null, '33', '没有帮助', '0');
INSERT INTO `discuss` VALUES ('494', 'b5741717-63d4-4865-90e1-0bf365955021', null, '34', '很差', '0');
INSERT INTO `discuss` VALUES ('495', 'eb2295cd-9093-4445-8512-e6327ed588de', null, '1', '男', '2');
INSERT INTO `discuss` VALUES ('496', 'eb2295cd-9093-4445-8512-e6327ed588de', null, '2', '非常满意', '5');
INSERT INTO `discuss` VALUES ('497', 'eb2295cd-9093-4445-8512-e6327ed588de', null, '3', '刚好', '5');
INSERT INTO `discuss` VALUES ('498', 'eb2295cd-9093-4445-8512-e6327ed588de', null, '4', '刚好', '5');
INSERT INTO `discuss` VALUES ('499', 'eb2295cd-9093-4445-8512-e6327ed588de', null, '5', '满意', '3');
INSERT INTO `discuss` VALUES ('500', 'eb2295cd-9093-4445-8512-e6327ed588de', null, '6', '中辣', '3');
INSERT INTO `discuss` VALUES ('501', 'eb2295cd-9093-4445-8512-e6327ed588de', null, '7', '很好', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('502', '573e6c46-76bc-4ff0-81af-92cd5b951c30', null, '3', '刚好', '5');
INSERT INTO `discuss` VALUES ('503', '573e6c46-76bc-4ff0-81af-92cd5b951c30', null, '4', '刚好', '5');
INSERT INTO `discuss` VALUES ('504', '573e6c46-76bc-4ff0-81af-92cd5b951c30', null, '1', '男', '2');
INSERT INTO `discuss` VALUES ('505', '573e6c46-76bc-4ff0-81af-92cd5b951c30', null, '2', '非常满意', '5');
INSERT INTO `discuss` VALUES ('506', '573e6c46-76bc-4ff0-81af-92cd5b951c30', null, '5', '非常满意', '5');
INSERT INTO `discuss` VALUES ('507', '573e6c46-76bc-4ff0-81af-92cd5b951c30', null, '6', '微辣', '3');
INSERT INTO `discuss` VALUES ('508', '573e6c46-76bc-4ff0-81af-92cd5b951c30', null, '7', '哈哈哈', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('509', 'e7807b04-60c0-45de-8a48-5a075cb67d62', null, '8', '偶尔没做到', '3');
INSERT INTO `discuss` VALUES ('510', 'e7807b04-60c0-45de-8a48-5a075cb67d62', null, '9', '一直能准时下课', '5');
INSERT INTO `discuss` VALUES ('511', 'e7807b04-60c0-45de-8a48-5a075cb67d62', null, '18', '作业布置了，但没有批改', '2');
INSERT INTO `discuss` VALUES ('512', 'e7807b04-60c0-45de-8a48-5a075cb67d62', null, '24', '有明确的学习目标，但是没有上机任务', '3');
INSERT INTO `discuss` VALUES ('513', 'e7807b04-60c0-45de-8a48-5a075cb67d62', null, '35', '呵呵', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('514', '9829478e-4adf-481e-88b0-f46f3faa2f5c', null, '8', '偶尔没做到', '3');
INSERT INTO `discuss` VALUES ('515', '9829478e-4adf-481e-88b0-f46f3faa2f5c', null, '9', '偶尔提前或延后', '3');
INSERT INTO `discuss` VALUES ('516', '9829478e-4adf-481e-88b0-f46f3faa2f5c', null, '10', '案例和授课用具一般', '3');
INSERT INTO `discuss` VALUES ('517', '9829478e-4adf-481e-88b0-f46f3faa2f5c', null, '11', '几天一次回顾和小结', '3');
INSERT INTO `discuss` VALUES ('518', '9829478e-4adf-481e-88b0-f46f3faa2f5c', null, '12', '每周实施上台回顾次数3次', '2');
INSERT INTO `discuss` VALUES ('519', '9829478e-4adf-481e-88b0-f46f3faa2f5c', null, '13', '达到，但讲课方法希望提升', '4');
INSERT INTO `discuss` VALUES ('520', '9829478e-4adf-481e-88b0-f46f3faa2f5c', null, '14', '思路清晰，重点不突出', '5');
INSERT INTO `discuss` VALUES ('521', '9829478e-4adf-481e-88b0-f46f3faa2f5c', null, '15', '经常互动，但缺乏提问', '3');
INSERT INTO `discuss` VALUES ('522', '9829478e-4adf-481e-88b0-f46f3faa2f5c', null, '16', '关注课堂纪律但不能纠正违纪行为', '3');
INSERT INTO `discuss` VALUES ('523', '9829478e-4adf-481e-88b0-f46f3faa2f5c', null, '17', '一直都是，但偶尔因为问题多而忽略了', '8');
INSERT INTO `discuss` VALUES ('524', '9829478e-4adf-481e-88b0-f46f3faa2f5c', null, '18', '作业布置了，但没有批改', '2');
INSERT INTO `discuss` VALUES ('525', '9829478e-4adf-481e-88b0-f46f3faa2f5c', null, '19', '经常用极域机房控制软件,查看全场学员的屏幕，偶尔给予指导', '4');
INSERT INTO `discuss` VALUES ('526', '9829478e-4adf-481e-88b0-f46f3faa2f5c', null, '20', '上课老师能及时关注上机进度，但解决问题的能力需要加强', '8');
INSERT INTO `discuss` VALUES ('527', '9829478e-4adf-481e-88b0-f46f3faa2f5c', null, '21', '有责任心，但需要加强耐心', '8');
INSERT INTO `discuss` VALUES ('528', '9829478e-4adf-481e-88b0-f46f3faa2f5c', null, '22', '很喜欢这个老师，对可课程有一点兴趣', '3');
INSERT INTO `discuss` VALUES ('529', '9829478e-4adf-481e-88b0-f46f3faa2f5c', null, '23', '能跟上老师的授课进度，但不能及时完成老师作业', '3');
INSERT INTO `discuss` VALUES ('530', '9829478e-4adf-481e-88b0-f46f3faa2f5c', null, '24', '有明确的学习目标，但是没有上机任务', '3');
INSERT INTO `discuss` VALUES ('531', '9829478e-4adf-481e-88b0-f46f3faa2f5c', null, '35', '没问题', '意见反馈题，请根据实际反馈评分');
INSERT INTO `discuss` VALUES ('532', '4cf42a7d-e98c-4de1-9673-842640b46ab8', null, '25', '完全不清楚', '0');
INSERT INTO `discuss` VALUES ('533', '4cf42a7d-e98c-4de1-9673-842640b46ab8', null, '26', '很不喜欢', '0');
INSERT INTO `discuss` VALUES ('534', '4cf42a7d-e98c-4de1-9673-842640b46ab8', null, '27', '完全不关心', '0');
INSERT INTO `discuss` VALUES ('535', '4cf42a7d-e98c-4de1-9673-842640b46ab8', null, '30', '不乐意', '0');
INSERT INTO `discuss` VALUES ('536', '4cf42a7d-e98c-4de1-9673-842640b46ab8', null, '29', '没有', '0');
INSERT INTO `discuss` VALUES ('537', '4cf42a7d-e98c-4de1-9673-842640b46ab8', null, '28', '不明确', '0');
INSERT INTO `discuss` VALUES ('538', '4cf42a7d-e98c-4de1-9673-842640b46ab8', null, '31', '很差', '0');
INSERT INTO `discuss` VALUES ('539', '4cf42a7d-e98c-4de1-9673-842640b46ab8', null, '32', '很少', '0');
INSERT INTO `discuss` VALUES ('540', '4cf42a7d-e98c-4de1-9673-842640b46ab8', null, '33', '没有帮助', '0');
INSERT INTO `discuss` VALUES ('541', '4cf42a7d-e98c-4de1-9673-842640b46ab8', null, '34', '很差', '0');
INSERT INTO `discuss` VALUES ('542', '1aae2809-b895-4a3b-89ec-6f86a238f4d6', null, '8', '偶尔没做到', '3');
INSERT INTO `discuss` VALUES ('543', '1aae2809-b895-4a3b-89ec-6f86a238f4d6', null, '9', '偶尔提前或延后', '3');
INSERT INTO `discuss` VALUES ('544', '1aae2809-b895-4a3b-89ec-6f86a238f4d6', null, '10', '案例和授课用具一般', '3');
INSERT INTO `discuss` VALUES ('545', '1aae2809-b895-4a3b-89ec-6f86a238f4d6', null, '11', '几天一次回顾和小结', '3');
INSERT INTO `discuss` VALUES ('546', '1aae2809-b895-4a3b-89ec-6f86a238f4d6', null, '12', '每周实施上台回顾次数3次', '2');
INSERT INTO `discuss` VALUES ('547', '1aae2809-b895-4a3b-89ec-6f86a238f4d6', null, '13', '达到，但讲课方法希望提升', '4');
INSERT INTO `discuss` VALUES ('548', '1aae2809-b895-4a3b-89ec-6f86a238f4d6', null, '14', '思路清晰，重点不突出', '5');
INSERT INTO `discuss` VALUES ('549', '1aae2809-b895-4a3b-89ec-6f86a238f4d6', null, '15', '经常互动，但缺乏提问', '3');
INSERT INTO `discuss` VALUES ('550', '1aae2809-b895-4a3b-89ec-6f86a238f4d6', null, '16', '关注课堂纪律但不能纠正违纪行为', '3');
INSERT INTO `discuss` VALUES ('551', '1aae2809-b895-4a3b-89ec-6f86a238f4d6', null, '17', '一直都是，但偶尔因为问题多而忽略了', '8');
INSERT INTO `discuss` VALUES ('552', '1aae2809-b895-4a3b-89ec-6f86a238f4d6', null, '18', '作业布置了，但没有批改', '2');
INSERT INTO `discuss` VALUES ('553', '1aae2809-b895-4a3b-89ec-6f86a238f4d6', null, '19', '经常用极域机房控制软件,查看全场学员的屏幕，偶尔给予指导', '4');
INSERT INTO `discuss` VALUES ('554', '1aae2809-b895-4a3b-89ec-6f86a238f4d6', null, '20', '上课老师能及时关注上机进度，但解决问题的能力需要加强', '8');
INSERT INTO `discuss` VALUES ('555', '1aae2809-b895-4a3b-89ec-6f86a238f4d6', null, '21', '有责任心，但需要加强耐心', '8');
INSERT INTO `discuss` VALUES ('556', '1aae2809-b895-4a3b-89ec-6f86a238f4d6', null, '22', '很喜欢这个老师，对可课程有一点兴趣', '3');
INSERT INTO `discuss` VALUES ('557', '1aae2809-b895-4a3b-89ec-6f86a238f4d6', null, '23', '能跟上老师的授课进度，但不能及时完成老师作业', '3');
INSERT INTO `discuss` VALUES ('558', '1aae2809-b895-4a3b-89ec-6f86a238f4d6', null, '24', '有明确的学习目标，但是没有上机任务', '3');
INSERT INTO `discuss` VALUES ('559', '1aae2809-b895-4a3b-89ec-6f86a238f4d6', null, '35', '的啊', '意见反馈题，请根据实际反馈评分');

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
-- Records of problem
-- ----------------------------
INSERT INTO `problem` VALUES ('1', '1、您的性别?', '0');
INSERT INTO `problem` VALUES ('2', '2、食品的味道?', '0');
INSERT INTO `problem` VALUES ('3', '3、菜的分量?', '0');
INSERT INTO `problem` VALUES ('4', '4、饭的分量?', '0');
INSERT INTO `problem` VALUES ('5', '5、食品的样式?', '0');
INSERT INTO `problem` VALUES ('6', '6、您对食品味道的期望?', '0');
INSERT INTO `problem` VALUES ('7', '7、您的其他建议或意见?', '0');
INSERT INTO `problem` VALUES ('8', '一、	老师早上(8:25)和中午(13:25)是否能做提前来到教室提醒学员准备上课 (5)', '1');
INSERT INTO `problem` VALUES ('9', '二、老师中午(12:00)和晚上(17:30)是否能做到准时下课？(5)', '1');
INSERT INTO `problem` VALUES ('10', '三、老师上课时的上课案例，备课是否充分？', '1');
INSERT INTO `problem` VALUES ('11', '四、老师在课堂上是否针对性进行小结和回顾？(5分)', '1');
INSERT INTO `problem` VALUES ('12', '五、每天的授课前30分钟是否有学员上讲台回顾授课知识点。(5分)', '1');
INSERT INTO `problem` VALUES ('13', '六、老师的技术能力是否满足该课程的教学要求？', '1');
INSERT INTO `problem` VALUES ('14', '七、老师上课时候理论知识，是否能做到思路清晰、重点突出？', '1');
INSERT INTO `problem` VALUES ('15', '八、老师上课时，是否经常和学员互动，提问题？(5)', '1');
INSERT INTO `problem` VALUES ('16', '九、老师是否关注课堂纪律，及时纠正学生违纪行为？(5)', '1');
INSERT INTO `problem` VALUES ('17', '十、老师是否很能及时，正确的解答问题？(10分)', '1');
INSERT INTO `problem` VALUES ('18', '十一、老师是否适当布置作业，认真批改作业？', '1');
INSERT INTO `problem` VALUES ('19', '十二、	机房上课老师是否做到通过机房控制软件查看全场机器，并给予学员指导？ (5)', '1');
INSERT INTO `problem` VALUES ('20', '十三、上课老师是否关注你的上机进度，引导和解决问题？(10)', '1');
INSERT INTO `problem` VALUES ('21', '十四、你感觉老师是否对班级很有耐心和责任心？(10)', '1');
INSERT INTO `problem` VALUES ('22', '十五、通过学习，你对所学的这门课程是否感兴趣？(5)', '1');
INSERT INTO `problem` VALUES ('23', '十六、你是否能跟上老师授课进度，并及时完成作业？', '1');
INSERT INTO `problem` VALUES ('24', '十七、每天的学习是否有明确学习目标，和上机任务   (5分)', '1');
INSERT INTO `problem` VALUES ('25', '1、你对班级行为规范是否清楚？', '2');
INSERT INTO `problem` VALUES ('26', '2、你对班主任的印象如何？', '2');
INSERT INTO `problem` VALUES ('27', '3、你的班主任是否关心班级同学的思想、学习等方面？', '2');
INSERT INTO `problem` VALUES ('28', '4、你认为班主任每次开班会的目的是否明确？', '2');
INSERT INTO `problem` VALUES ('29', '5、你的班主任是否会经常找班级同学进行沟通交流？', '2');
INSERT INTO `problem` VALUES ('30', '6、在你遇到困难的时候你的班主任是否乐意提供帮助和指导？', '2');
INSERT INTO `problem` VALUES ('31', '7、你的班主任在教育学生的过程中，是否严以律己，以身作则？', '2');
INSERT INTO `problem` VALUES ('32', '8、你需要帮助是能给及时找到班主任老师吗？', '2');
INSERT INTO `problem` VALUES ('33', '9、你的班主任上的《班级行为规范课》、《职业素养课》等对你是否有帮助？', '2');
INSERT INTO `problem` VALUES ('34', '10、你的班主任是否尊重学生人格，公正平等的对待每一个学生？', '2');
INSERT INTO `problem` VALUES ('35', '十八、你对老师授课方式有什么意见，建议或疑惑？', '1');

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
-- Records of teacherinfo
-- ----------------------------
INSERT INTO `teacherinfo` VALUES ('1', '吴文杰', '1');
INSERT INTO `teacherinfo` VALUES ('2', '冼耀基', '1');
INSERT INTO `teacherinfo` VALUES ('3', '唐龙昌', '1');
INSERT INTO `teacherinfo` VALUES ('4', '吴剑', '1');
INSERT INTO `teacherinfo` VALUES ('5', '周锐', '1');
INSERT INTO `teacherinfo` VALUES ('6', '焦尚姝', '2');
INSERT INTO `teacherinfo` VALUES ('7', '黄晓燕', '2');
INSERT INTO `teacherinfo` VALUES ('8', '王田', '1');
INSERT INTO `teacherinfo` VALUES ('9', '吴佳峰', '1');
INSERT INTO `teacherinfo` VALUES ('10', '林柯南', '1');
INSERT INTO `teacherinfo` VALUES ('11', '张卫芳', '1');
INSERT INTO `teacherinfo` VALUES ('12', '陈凯', '1');
INSERT INTO `teacherinfo` VALUES ('13', '吴华', '1');
INSERT INTO `teacherinfo` VALUES ('14', '叶青', '1');
INSERT INTO `teacherinfo` VALUES ('15', '向远贵', '1');
INSERT INTO `teacherinfo` VALUES ('16', '张伟强', '1');
INSERT INTO `teacherinfo` VALUES ('17', '刘亮', '1');

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

-- ----------------------------
-- Records of vegetable
-- ----------------------------
INSERT INTO `vegetable` VALUES ('1', '荤菜类', '', '0', '1');
INSERT INTO `vegetable` VALUES ('2', '猪肉类', '肉', '1', '2');
INSERT INTO `vegetable` VALUES ('3', '肉', '香菇肉片', '2', '3');
INSERT INTO `vegetable` VALUES ('4', '肉', '粉蒸肉', '2', '3');
INSERT INTO `vegetable` VALUES ('5', '肉', '红烧肉', '2', '3');
INSERT INTO `vegetable` VALUES ('6', '肉', '小炒肉', '2', '3');
INSERT INTO `vegetable` VALUES ('7', '肉', '京酱肉丝', '2', '3');
INSERT INTO `vegetable` VALUES ('8', '肉', '木耳肉片', '2', '3');
INSERT INTO `vegetable` VALUES ('9', '肉', '青椒肉丝', '2', '3');
INSERT INTO `vegetable` VALUES ('10', '肉', '肉沫豆角', '2', '3');
INSERT INTO `vegetable` VALUES ('11', '肉', '豆角肉沫', '2', '3');
INSERT INTO `vegetable` VALUES ('12', '鸡鸭鱼类', '鸡鸭鱼', '1', '2');
INSERT INTO `vegetable` VALUES ('13', '鸡鸭鱼', '香芋焖鸡', '12', '3');
INSERT INTO `vegetable` VALUES ('14', '鸡鸭鱼', '卤水鸭', '12', '3');
INSERT INTO `vegetable` VALUES ('15', '鸡鸭鱼', '香菇鸡块', '12', '3');
INSERT INTO `vegetable` VALUES ('16', '鸡鸭鱼', '红烧鸡', '12', '3');
INSERT INTO `vegetable` VALUES ('17', '鸡鸭鱼', '香酥鸡', '12', '3');
INSERT INTO `vegetable` VALUES ('18', '鸡鸭鱼', '辣子鸡', '12', '3');
INSERT INTO `vegetable` VALUES ('19', '鸡鸭鱼', '粉蒸鱼', '12', '3');
INSERT INTO `vegetable` VALUES ('20', '鸡鸭鱼', '卤水鸭', '12', '3');
INSERT INTO `vegetable` VALUES ('21', '鸡鸭鱼', '卤鸭腿', '12', '3');
INSERT INTO `vegetable` VALUES ('22', '素菜类', '素菜', '0', '1');
INSERT INTO `vegetable` VALUES ('23', '青瓜及其他', '青瓜', '22', '2');
INSERT INTO `vegetable` VALUES ('24', '青瓜', '青瓜肉丝', '23', '3');
INSERT INTO `vegetable` VALUES ('25', '青瓜', '青瓜炒肉', '23', '3');
INSERT INTO `vegetable` VALUES ('26', '青瓜', '青瓜炒蛋', '23', '3');
INSERT INTO `vegetable` VALUES ('27', '青瓜', '麻婆豆腐', '23', '3');
INSERT INTO `vegetable` VALUES ('28', '青瓜', '剁椒鱼头', '23', '3');
INSERT INTO `vegetable` VALUES ('29', '青瓜', '蚂蚁上树', '23', '3');
INSERT INTO `vegetable` VALUES ('30', '青瓜', '虎皮尖椒', '23', '3');
INSERT INTO `vegetable` VALUES ('31', '青瓜', '香辣青瓜', '23', '3');
INSERT INTO `vegetable` VALUES ('32', '青瓜', '醋溜白菜', '23', '3');
INSERT INTO `vegetable` VALUES ('33', '青瓜', '西芹云耳', '23', '3');
INSERT INTO `vegetable` VALUES ('34', '土豆及其他', '土豆', '22', '2');
INSERT INTO `vegetable` VALUES ('35', '土豆', '青椒土豆丝', '34', '3');
INSERT INTO `vegetable` VALUES ('36', '土豆', '蒜蓉生菜', '34', '3');
INSERT INTO `vegetable` VALUES ('37', '土豆', '香辣土豆丝', '34', '3');
INSERT INTO `vegetable` VALUES ('38', '土豆', '青菜', '34', '3');
INSERT INTO `vegetable` VALUES ('39', '土豆', '酸辣土豆丝', '34', '3');
INSERT INTO `vegetable` VALUES ('40', '土豆', '苦瓜炒蛋', '34', '3');
INSERT INTO `vegetable` VALUES ('41', '土豆', '茄汁土豆条', '34', '3');
INSERT INTO `vegetable` VALUES ('42', '土豆', '番茄炒蛋', '34', '3');
INSERT INTO `vegetable` VALUES ('43', '土豆', '木耳油豆腐', '34', '3');
INSERT INTO `vegetable` VALUES ('44', '土豆', '炝炒绿豆芽', '34', '3');
INSERT INTO `vegetable` VALUES ('45', '土豆', '凉拌海带丝', '34', '3');
