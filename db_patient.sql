/*
Navicat MySQL Data Transfer

Source Server         : mysql5
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : db_patient

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2017-01-09 17:01:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_ghinfo
-- ----------------------------
DROP TABLE IF EXISTS `t_ghinfo`;
CREATE TABLE `t_ghinfo` (
  `ghId` int(11) NOT NULL AUTO_INCREMENT,
  `patientId` int(11) DEFAULT NULL,
  `ghNo` varchar(20) NOT NULL,
  `date` date DEFAULT NULL,
  `officeName` varchar(20) DEFAULT NULL,
  `ghDesc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ghId`,`ghNo`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_ghinfo
-- ----------------------------
INSERT INTO `t_ghinfo` VALUES ('61', '4', '20170107142144', '2017-01-07', '外科', '');
INSERT INTO `t_ghinfo` VALUES ('62', '45', '20170107144734', '2017-01-07', '外科', '');
INSERT INTO `t_ghinfo` VALUES ('63', '2', '20170107145358', '2017-01-07', '儿科', '');
INSERT INTO `t_ghinfo` VALUES ('64', '1', '20170107150201', '2017-01-07', '精神科', '');
INSERT INTO `t_ghinfo` VALUES ('66', '48', '20170107161733', '2017-01-08', '外科', '');
INSERT INTO `t_ghinfo` VALUES ('67', '3', '20170108134136', '2017-01-08', '五官科', '');
INSERT INTO `t_ghinfo` VALUES ('68', '2', '20170108134211', '2017-01-08', '儿科', '');
INSERT INTO `t_ghinfo` VALUES ('69', '49', '20170108145653', '2017-01-08', '外科', '');

-- ----------------------------
-- Table structure for t_patient
-- ----------------------------
DROP TABLE IF EXISTS `t_patient`;
CREATE TABLE `t_patient` (
  `patientId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `patientName` varchar(20) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `idNumber` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `patientDesc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`patientId`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_patient
-- ----------------------------
INSERT INTO `t_patient` VALUES ('1', '4', '那英', '女', '1960-02-19', '9872948599349839', '11212', '北京天安门');
INSERT INTO `t_patient` VALUES ('2', '4', '哈林', '女', '1993-03-04', '343548729379534958', '13120394950', '西直门2号');
INSERT INTO `t_patient` VALUES ('3', '5', '刘欢稳', '男', '2013-08-07', '93028465859475748', '10086', '书房斋');
INSERT INTO `t_patient` VALUES ('4', '5', '王五', '男', '2015-01-13', '2312323223124324', '24234424332432', '桃花岛');
INSERT INTO `t_patient` VALUES ('5', '5', '赵丽', '女', '1967-03-09', '421127123423458954', '12364732849', '中山大道');
INSERT INTO `t_patient` VALUES ('45', '2', '小猫咪', '女', '1980-07-17', '3245673452344565', '12323454368', '武汉珞喻路');
INSERT INTO `t_patient` VALUES ('46', '1', '那英', '女', '1961-07-19', '98729485993498391', '12123234', '是橙色多彩');
INSERT INTO `t_patient` VALUES ('47', '1', '阿飞', '男', '2016-09-06', '421235145321423432', '32412342314', '示范点v');
INSERT INTO `t_patient` VALUES ('48', '2', '擦拭dvd', '男', '2011-01-20', '3253453143242314', '321423434', '大风车v');
INSERT INTO `t_patient` VALUES ('49', '4', '阿萨德', '男', '1985-05-14', '25435435343232223', '23435234', '南京西路');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', '123', '0');
INSERT INTO `t_user` VALUES ('2', 'N王', '123nw', '1');
INSERT INTO `t_user` VALUES ('3', 'N李', '123nl', '1');
INSERT INTO `t_user` VALUES ('4', 'D王', '123dw', '1');
INSERT INTO `t_user` VALUES ('5', 'D张', '123dz', '1');
INSERT INTO `t_user` VALUES ('6', 'D李', '123dl', '1');
