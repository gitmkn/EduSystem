/*
Navicat MySQL Data Transfer

Source Server         : 554645
Source Server Version : 50547
Source Host           : 127.0.0.1:3306
Source Database       : expectationedusystem

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2019-05-24 00:10:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for achievements
-- ----------------------------
DROP TABLE IF EXISTS `achievements`;
CREATE TABLE `achievements` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `sresult` double(5,2) DEFAULT NULL,
  `eresult` double(5,2) DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of achievements
-- ----------------------------
INSERT INTO `achievements` VALUES ('1', '33', '99.00', '96.00', '哈哈', '1');
INSERT INTO `achievements` VALUES ('2', '1', '1.00', '100.00', '', '2');
INSERT INTO `achievements` VALUES ('3', '34', null, null, null, '2');
INSERT INTO `achievements` VALUES ('4', '32', null, null, null, '3');

-- ----------------------------
-- Table structure for classroom
-- ----------------------------
DROP TABLE IF EXISTS `classroom`;
CREATE TABLE `classroom` (
  `rid` int(11) NOT NULL,
  `rname` varchar(30) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classroom
-- ----------------------------
INSERT INTO `classroom` VALUES ('204', 'B1501自习室', '45', '1');
INSERT INTO `classroom` VALUES ('301', 'B1501自习室', '30', '1');
INSERT INTO `classroom` VALUES ('302', 'B1502自习室,', '1', '1');
INSERT INTO `classroom` VALUES ('303', 'B1501自习室,', '2', '1');
INSERT INTO `classroom` VALUES ('304', 'B1504自习室', '32', '1');
INSERT INTO `classroom` VALUES ('305', 'B1501自习室,', '2', '1');
INSERT INTO `classroom` VALUES ('306', 'B1501自习室,', '2', '1');

-- ----------------------------
-- Table structure for cost
-- ----------------------------
DROP TABLE IF EXISTS `cost`;
CREATE TABLE `cost` (
  `coid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `money` decimal(10,2) DEFAULT NULL,
  `state` int(2) DEFAULT NULL,
  PRIMARY KEY (`coid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cost
-- ----------------------------
INSERT INTO `cost` VALUES ('14', '2', '1', '2019-05-22 16:31:54', '11.00', '0');
INSERT INTO `cost` VALUES ('15', '2', '34', '2019-05-22 16:32:24', '50.00', '0');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(50) DEFAULT NULL,
  `chours` int(11) DEFAULT NULL,
  `cmoney` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '英语', '28', '1.00');
INSERT INTO `course` VALUES ('32', '数学', '33', '2.00');
INSERT INTO `course` VALUES ('33', '化学', '55', '3.00');
INSERT INTO `course` VALUES ('34', '数学1对1', '10', '5.00');
INSERT INTO `course` VALUES ('35', '生物,', '22', '3.00');
INSERT INTO `course` VALUES ('36', '数学1对2,', '5', null);

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file` (
  `fid` char(30) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of file
-- ----------------------------
INSERT INTO `file` VALUES ('20190523212441', '1', '1', '20190523212441马康宁+身份证.jpg');

-- ----------------------------
-- Table structure for schedule
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule` (
  `scid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `week` int(11) DEFAULT NULL,
  `coursetime` int(11) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`scid`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of schedule
-- ----------------------------
INSERT INTO `schedule` VALUES ('1', '1', '2', '1', '204', '14');
INSERT INTO `schedule` VALUES ('3', '32', '3', '6', '204', '16');
INSERT INTO `schedule` VALUES ('5', '34', '7', '5', '204', '13');
INSERT INTO `schedule` VALUES ('6', '32', '7', '3', '204', '13');
INSERT INTO `schedule` VALUES ('7', '32', '4', '3', '204', '15');
INSERT INTO `schedule` VALUES ('9', '33', '2', '2', '204', '14');
INSERT INTO `schedule` VALUES ('23', '32', '1', '7', '204', '13');
INSERT INTO `schedule` VALUES ('27', '32', '2', '1', '301', '13');
INSERT INTO `schedule` VALUES ('28', '32', '2', '1', '302', '15');
INSERT INTO `schedule` VALUES ('33', '32', '1', '1', '204', '13');
INSERT INTO `schedule` VALUES ('34', '32', '1', '1', '204', '13');
INSERT INTO `schedule` VALUES ('35', '1', '1', '2', '204', '13');
INSERT INTO `schedule` VALUES ('36', '34', '7', '8', '204', '16');

-- ----------------------------
-- Table structure for study
-- ----------------------------
DROP TABLE IF EXISTS `study`;
CREATE TABLE `study` (
  `seid` int(11) NOT NULL AUTO_INCREMENT,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`seid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of study
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(50) DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `sex` char(2) DEFAULT NULL,
  `phone` bigint(11) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `img` char(100) DEFAULT NULL,
  `school` varchar(100) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1055482519@qq.com', 'Admin', 'e10adc3949ba59abbe56e057f20f883e', '男', '13470016983', '辽宁丹东', 'assets/image/1.jpeg', '辽东学院', '2', '0');
INSERT INTO `user` VALUES ('2', '', '郭建', 'e10adc3949ba59abbe56e057f20f883e', '男', '13470017665', '辽宁丹东', 'assets/image/1.jpeg', '辽东学院', '0', '0');
INSERT INTO `user` VALUES ('3', '1055482519@qq.com', '哈哈', 'e10adc3949ba59abbe56e057f20f883e', '女', '13470016228', '辽宁丹东', 'assets/image/0.jpeg', '辽东学院', '0', '0');
INSERT INTO `user` VALUES ('4', 'wangjiao123@163.com', '周寰宇', 'e10adc3949ba59abbe56e057f20f883e', '男', '13470016219', '辽宁丹东', 'assets/image/1.jpeg', '辽东学院', '0', '1');
INSERT INTO `user` VALUES ('5', '1055482519@qq.com', '大象', 'e10adc3949ba59abbe56e057f20f883e', '男', '13470016986', '辽宁丹东', 'assets/image/1.jpeg', '辽东学院', '0', '1');
INSERT INTO `user` VALUES ('6', '', '组建7', 'e10adc3949ba59abbe56e057f20f883e', '女', '13470016213', '阿斯蒂芬', 'assets/image/1.jpeg', '辽东学院', '0', '1');
INSERT INTO `user` VALUES ('11', 'wangjiao123@163.com', '大象,', 'e10adc3949ba59abbe56e057f20f883e', '男', '13470016985', '阿道夫,元宝区辽东学院', 'assets/image/1.jpeg', '辽东学院', '0', '1');
INSERT INTO `user` VALUES ('8', '', '789789789', 'e10adc3949ba59abbe56e057f20f883e', '男', '13470011111', '东', 'assets/image/0.jpeg', '辽东学院', '0', '1');
INSERT INTO `user` VALUES ('9', '', '测试测试测', 'e10adc3949ba59abbe56e057f20f883e', '女', '13470000000', '甘肃武威', 'assets/image/1.jpeg', '辽东学院', '0', '1');
INSERT INTO `user` VALUES ('10', null, '我们', 'e10adc3949ba59abbe56e057f20f883e', '女', '13470001111', '武威', 'assets/image/0.jpeg', '快点', '0', '1');
INSERT INTO `user` VALUES ('12', '', '张三', 'e10adc3949ba59abbe56e057f20f883e', '男', '13470010000', '辽宁省丹东市元宝区辽东学院北校区,元宝区辽东学院', 'assets/image/1.jpeg', '辽东学院,', '0', '1');
INSERT INTO `user` VALUES ('13', '5559@qq.com', '张宏健', 'e10adc3949ba59abbe56e057f20f883e', '男', '13470017662', '辽宁丹东,元宝区辽东学院', 'assets/image/1.jpeg', '辽东学院,', '1', '1');
INSERT INTO `user` VALUES ('14', '', '哈哈', 'e10adc3949ba59abbe56e057f20f883e', '男', '13470010001', '阿斯蒂芬,元宝区辽东学院', 'assets/image/1.jpeg', '辽东学院', '1', '1');
INSERT INTO `user` VALUES ('15', '', '组建7', 'e10adc3949ba59abbe56e057f20f883e', '男', '13470010011', '辽宁丹东,元宝区辽东学院', 'assets/image/1.jpeg', '辽东学院,', '1', '1');
INSERT INTO `user` VALUES ('16', '', '大象,', 'e10adc3949ba59abbe56e057f20f883e', '男', '13470010022', '阿斯蒂芬,元宝区辽东学院', 'assets/image/1.jpeg', '辽东学院,', '1', '1');
INSERT INTO `user` VALUES ('17', '', 'lalala', 'e10adc3949ba59abbe56e057f20f883e', '男', '13470019999', '阿斯蒂芬,元宝区辽东学院', 'assets/image/1.jpeg', '辽东学院。,', '0', '1');
