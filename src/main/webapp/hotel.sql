/*
Navicat MySQL Data Transfer

Source Server         : a
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : hotel

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2019-03-10 18:51:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for pc
-- ----------------------------
DROP TABLE IF EXISTS `pc`;
CREATE TABLE `pc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pc
-- ----------------------------
INSERT INTO `pc` VALUES ('1', null, '郑州市');
INSERT INTO `pc` VALUES ('2', '1', '金水区');
INSERT INTO `pc` VALUES ('3', '1', '二七区');
INSERT INTO `pc` VALUES ('4', '1', '管城区');
INSERT INTO `pc` VALUES ('5', null, '北京市');
INSERT INTO `pc` VALUES ('6', '5', '朝阳区');
INSERT INTO `pc` VALUES ('7', '5', '东城区');
INSERT INTO `pc` VALUES ('8', '5', '海淀区');
INSERT INTO `pc` VALUES ('9', null, '上海市');
INSERT INTO `pc` VALUES ('10', '9', '静安区');
INSERT INTO `pc` VALUES ('11', '9', '虹口区');
INSERT INTO `pc` VALUES ('12', '9', '徐汇区');
INSERT INTO `pc` VALUES ('13', '9', '黄浦区');
INSERT INTO `pc` VALUES ('14', '9', '杨浦区');
INSERT INTO `pc` VALUES ('15', '9', '宝山区');

-- ----------------------------
-- Table structure for pricetype
-- ----------------------------
DROP TABLE IF EXISTS `pricetype`;
CREATE TABLE `pricetype` (
  `pr_id` int(11) NOT NULL AUTO_INCREMENT,
  `pr_typename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pricetype
-- ----------------------------
INSERT INTO `pricetype` VALUES ('1', '0-200元');
INSERT INTO `pricetype` VALUES ('2', '200-500元');
INSERT INTO `pricetype` VALUES ('3', '500-800元');
INSERT INTO `pricetype` VALUES ('4', '800-1000元');
INSERT INTO `pricetype` VALUES ('5', '1000元以上');

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `pid` int(255) DEFAULT NULL COMMENT '所属区域的id',
  `distance` double DEFAULT NULL,
  `kw_info` varchar(255) DEFAULT NULL,
  `marks` int(255) DEFAULT NULL,
  `price` int(255) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL COMMENT 'roomtypeid',
  `ptid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES ('1', 'img/r1.jpg', '独卫单间', '2', '1560', '一室一厅/80平米/宜住一人/一床', '5', '400', '1', '2');
INSERT INTO `room` VALUES ('2', 'img/r2.jpg', '轻奢大床', '3', '1490', '两室一厅/100平米/宜住两人/两床', '4', '350', '2', '2');
INSERT INTO `room` VALUES ('3', 'img/r3.jpg', '温馨家居', '4', '1200', '三室一厅/120平米/适合三人居住', '6', '720', '3', '3');
INSERT INTO `room` VALUES ('4', 'img/r4.jpg', '清新雅致', '6', '1500', '三室一厅/150平米/适合四人居住', '5', '880', '4', '4');
INSERT INTO `room` VALUES ('5', 'img/r4.jpg', '温馨家居', '2', '1500', '一室一厅/80平米/宜住一人/一床', '4', '280', '1', '2');
INSERT INTO `room` VALUES ('6', 'img/r3.jpg', '温馨家居', '3', '1500', '两室一厅/100平米/宜住两人/两床', '6', '350', '2', '2');
INSERT INTO `room` VALUES ('7', 'img/r2.jpg', '温馨家居', '4', '1500', '三室一厅/120平米/适合三人居住', '5', '700', '3', '3');
INSERT INTO `room` VALUES ('8', 'img/r1.jpg', '温馨家居', '6', '1500', '三室一厅/150平米/适合四人居住', '3', '1200', '4', '5');
INSERT INTO `room` VALUES ('9', 'img/r4.jpg', '温馨家居', '4', '1500', '一室一厅/80平米/宜住一人/一床', '3', '280', '1', '2');
INSERT INTO `room` VALUES ('10', 'img/r3.jpg', '温馨家居', '2', '1500', '两室一厅/100平米/宜住两人/两床', '6', '360', '2', '2');
INSERT INTO `room` VALUES ('11', 'img/r2.jpg', '温馨家居', '3', '1500', '三室一厅/120平米/适合三人居住', '7', '700', '3', '3');
INSERT INTO `room` VALUES ('12', 'img/r1.jpg', '温馨家居', '4', '1500', '三室一厅/150平米/适合四人居住', '3', '880', '4', '4');
INSERT INTO `room` VALUES ('13', 'img/r4.jpg', '温馨家居', '5', '1500', '一室一厅/80平米/宜住一人/一床', '7', '160', '1', '1');
INSERT INTO `room` VALUES ('14', 'img/r3.jpg', '温馨家居', '6', '1500', '两室一厅/100平米/宜住两人/两床', '2', '550', '2', '3');
INSERT INTO `room` VALUES ('15', 'img/r2.jpg', '温馨家居', '10', '1500', '三室一厅/120平米/适合三人居住', '7', '700', '3', '3');
INSERT INTO `room` VALUES ('16', 'img/r1.jpg', '温馨家居', '8', '1500', '三室一厅/120平米/适合四人居住', '7', '1800', '4', '5');
INSERT INTO `room` VALUES ('17', 'img/r4.jpg', '温馨家居', '11', '1500', '	一室一厅/80平米/宜住一人/一床', '3', '280', '1', '2');
INSERT INTO `room` VALUES ('18', 'img/r3.jpg', '温馨家居', '10', '1500', '两室一厅/100平米/宜住两人/两床', '2', '366', '2', '2');
INSERT INTO `room` VALUES ('19', 'img/r2.jpg', '温馨家居', '8', '1500', '三室一厅/120平米/适合三人居住', '5', '700', '3', '3');
INSERT INTO `room` VALUES ('20', 'img/r1.jpg', '温馨家居', '11', '1500', '三室一厅/120平米/适合三人居住', '6', '1200', '4', '5');
INSERT INTO `room` VALUES ('21', 'img/r4.jpg', '温馨家居', '2', '1250', '一室一厅/80平米/宜住一人/一床', '5', '160', '1', '1');
INSERT INTO `room` VALUES ('22', 'img/r4.jpg', '温馨家居', '3', '1250', '两室一厅/100平米/宜住两人/两床', '5', '340', '2', '2');
INSERT INTO `room` VALUES ('23', 'img/r4.jpg', '温馨家居', '4', '1250', '两室一厅/100平米/宜住两人/两床', '5', '210', '2', '2');
INSERT INTO `room` VALUES ('24', 'img/r4.jpg', '温馨家居', '5', '1250', '三室一厅/120平米/适合三人居住', '5', '560', '3', '3');
INSERT INTO `room` VALUES ('25', 'img/r4.jpg', '温馨家居', '6', '1250', '三室一厅/120平米/适合三人居住', '5', '790', '3', '4');
INSERT INTO `room` VALUES ('26', 'img/r4.jpg', '温馨家居', '8', '1250', '三室一厅/120平米/适合三人居住', '5', '980', '4', '4');
INSERT INTO `room` VALUES ('27', 'img/r4.jpg', '温馨家居', '9', '1250', '三室一厅/150平米/适合四人居住', '5', '1200', '4', '5');
INSERT INTO `room` VALUES ('28', 'img/r4.jpg', '温馨家居', '10', '1250', '一室一厅/80平米/宜住一人/一床', '5', '100', '1', '1');
INSERT INTO `room` VALUES ('29', 'img/r4.jpg', '温馨家居', '11', '1250', '一室一厅/80平米/宜住一人/一床', '5', '280', '1', '1');

-- ----------------------------
-- Table structure for roomtype
-- ----------------------------
DROP TABLE IF EXISTS `roomtype`;
CREATE TABLE `roomtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roomtype
-- ----------------------------
INSERT INTO `roomtype` VALUES ('1', '一居室');
INSERT INTO `roomtype` VALUES ('2', '两居室');
INSERT INTO `roomtype` VALUES ('3', '三居室');
INSERT INTO `roomtype` VALUES ('4', '四居室');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3');
INSERT INTO `user` VALUES ('13', 'aa', '202cb962ac59075b964b07152d234b70');
