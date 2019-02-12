/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50627
Source Host           : localhost:3306
Source Database       : shiyanshi

Target Server Type    : MYSQL
Target Server Version : 50627
File Encoding         : 65001

Date: 2019-01-15 10:10:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `forder`
-- ----------------------------
DROP TABLE IF EXISTS `forder`;
CREATE TABLE `forder` (
  `kid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `fid` int(11) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `pj` varchar(255) DEFAULT NULL,
  `stime` varchar(50) DEFAULT NULL,
  `etime` varchar(50) DEFAULT NULL,
  `fwid` int(11) DEFAULT NULL,
  `isdel` varchar(50) DEFAULT NULL,
  `pubtime` varchar(50) DEFAULT NULL,
  `snum` int(11) DEFAULT NULL,
  PRIMARY KEY (`kid`),
  KEY `FK_keep` (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of forder
-- ----------------------------
INSERT INTO `forder` VALUES ('1', '2', '1', '审核通过', null, null, '实验室', null, '0', '2018-03-06 15:43:31', null);
INSERT INTO `forder` VALUES ('2', '2', '7', '审核成功', null, null, '设备', null, '1', '2018-03-06 15:45:12', '2');
INSERT INTO `forder` VALUES ('3', '2', '11', '审核成功', null, null, '耗材', null, '1', '2018-03-06 15:53:10', '1');
INSERT INTO `forder` VALUES ('4', '2', '2', '审核通过', null, null, '实验室', null, '1', '2018-03-06 16:14:49', null);
INSERT INTO `forder` VALUES ('5', '2', '7', '审核成功', null, null, '设备', null, '1', '2018-03-06 16:15:04', '2');
INSERT INTO `forder` VALUES ('6', '2', '11', '待审核', null, null, '耗材', null, '1', '2018-03-06 16:15:21', '1');
INSERT INTO `forder` VALUES ('7', '2', '7', '待审核', null, null, '设备', null, '1', '2018-03-06 19:48:41', '1');
INSERT INTO `forder` VALUES ('8', '2', '11', '待审核', null, null, '耗材', null, '1', '2018-03-06 19:50:56', '2');
INSERT INTO `forder` VALUES ('9', '5', '1', '待审核', null, null, '实验室', null, '1', '2018-03-06 19:52:16', null);
INSERT INTO `forder` VALUES ('10', '5', '7', '审核失败', null, null, '设备', null, '1', '2018-03-06 19:52:40', '1');
INSERT INTO `forder` VALUES ('11', '5', '14', '审核失败', null, null, '耗材', null, '1', '2018-03-06 19:52:50', '2');
INSERT INTO `forder` VALUES ('12', '5', '1', '审核失败', null, null, '实验室', null, '1', '2018-03-06 19:52:16', null);
INSERT INTO `forder` VALUES ('13', '5', '1', '审核失败', null, null, '实验室', null, '1', '2018-03-06 19:52:16', null);
INSERT INTO `forder` VALUES ('14', '2', '3', '审核通过', null, null, '实验室', null, '0', '2018-11-20 00:08:28', null);
INSERT INTO `forder` VALUES ('15', '2', '7', '审核成功', null, null, '设备', null, '1', '2018-11-20 00:09:42', '2');
INSERT INTO `forder` VALUES ('16', '2', '7', '审核失败', null, null, '设备', null, '1', '2018-11-20 00:10:19', '2');
INSERT INTO `forder` VALUES ('17', '2', '7', '待审核', null, null, '设备', null, '1', '2018-11-20 00:19:03', '2');
INSERT INTO `forder` VALUES ('18', '2', '7', '审核成功', null, null, '设备', null, '1', '2018-11-20 00:20:45', '2');
INSERT INTO `forder` VALUES ('19', '2', '11', '审核成功', null, null, '耗材', null, '1', '2018-11-20 00:23:04', '2');
INSERT INTO `forder` VALUES ('20', '2', '11', '审核成功', null, null, '耗材', null, '1', '2018-11-20 00:25:48', '2');
INSERT INTO `forder` VALUES ('21', '2', '11', '审核成功', null, null, '耗材', null, '1', '2018-11-20 00:28:22', '2');
INSERT INTO `forder` VALUES ('22', '2', '11', '审核成功', null, null, '耗材', null, '1', '2018-11-20 00:31:22', '2');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `ggid` int(11) NOT NULL AUTO_INCREMENT,
  `ggpic` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `note` text,
  `isdel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ggid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------

-- ----------------------------
-- Table structure for `shiyan`
-- ----------------------------
DROP TABLE IF EXISTS `shiyan`;
CREATE TABLE `shiyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` varchar(50) DEFAULT NULL,
  `img` varchar(30) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `miaoshu` text,
  `address` varchar(50) DEFAULT NULL,
  `pubtime` varchar(100) DEFAULT NULL,
  `isdel` varchar(20) DEFAULT NULL,
  `uid` varchar(20) DEFAULT NULL,
  `stime` varchar(30) DEFAULT NULL,
  `etime` varchar(30) DEFAULT NULL,
  `ftype` varchar(20) DEFAULT NULL,
  `mstatus` varchar(30) DEFAULT NULL,
  `snum` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_flower` (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shiyan
-- ----------------------------
INSERT INTO `shiyan` VALUES ('1', null, null, '实验室1', null, '位置1', '2018-03-05 16:51:12', '1', null, null, null, '实验室', '已预订', null);
INSERT INTO `shiyan` VALUES ('2', null, null, '实验室02', null, '位置02', '2018-03-05 16:54:11', '1', null, null, null, '实验室', '已预订', null);
INSERT INTO `shiyan` VALUES ('3', null, null, '实验室3', null, '位置3', '2018-03-05 16:54:25', '1', null, null, null, '实验室', '空闲中', null);
INSERT INTO `shiyan` VALUES ('4', null, null, '实验室4', null, '位置4', '2018-03-05 16:54:53', '1', null, null, null, '实验室', '空闲中', null);
INSERT INTO `shiyan` VALUES ('5', null, null, '实验室5', null, '位置5', '2018-03-05 16:55:03', '1', null, null, null, '实验室', '空闲中', null);
INSERT INTO `shiyan` VALUES ('6', null, null, '实验室6', null, '位置6', '2018-03-05 16:55:15', '1', null, null, null, '实验室', '空闲中', null);
INSERT INTO `shiyan` VALUES ('7', null, null, '设备1', null, null, '2018-03-05 17:14:43', '1', null, null, null, '设备', '充足', '10');
INSERT INTO `shiyan` VALUES ('8', null, null, '设备2', null, null, '2018-03-05 17:16:55', '1', null, null, null, '设备', '充足', '20');
INSERT INTO `shiyan` VALUES ('9', null, null, '设备3', null, null, '2018-03-05 17:18:14', '1', null, null, null, '设备', '充足', '33');
INSERT INTO `shiyan` VALUES ('10', null, null, '设备66', null, null, '2018-03-05 17:19:00', '1', null, null, null, '设备', '充足', '6');
INSERT INTO `shiyan` VALUES ('11', null, null, '耗材2', null, null, '2018-03-05 17:20:05', '1', null, null, null, '耗材', '充足', '3');
INSERT INTO `shiyan` VALUES ('12', null, null, '耗材3', null, null, '2018-03-05 17:21:15', '1', null, null, null, '耗材', '充足', '20');
INSERT INTO `shiyan` VALUES ('13', null, null, '实验55', null, '位置55', '2018-03-06 19:43:07', '1', null, null, null, '实验室', '空闲中', null);
INSERT INTO `shiyan` VALUES ('14', null, null, '耗材021', null, null, '2018-03-06 19:47:24', '1', null, null, null, '耗材', '缺乏', '18');
INSERT INTO `shiyan` VALUES ('15', null, null, 'xx是2', null, '2', '2018-11-19 22:16:56', '1', null, null, null, '实验室', '空闲中', null);
INSERT INTO `shiyan` VALUES ('20', null, null, 's 是', null, '32', '2018-11-19 23:53:23', '1', null, null, null, '实验室', '空闲中', null);

-- ----------------------------
-- Table structure for `sysuser`
-- ----------------------------
DROP TABLE IF EXISTS `sysuser`;
CREATE TABLE `sysuser` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `utype` varchar(30) DEFAULT '会员' COMMENT '1 为正常使用， 0为删除',
  `tel` varchar(20) DEFAULT NULL,
  `age` varchar(10) DEFAULT NULL,
  `mbanswer` varchar(30) DEFAULT NULL,
  `question` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `pubtime` varchar(30) DEFAULT NULL,
  `tname` varchar(50) DEFAULT NULL,
  `isdel` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysuser
-- ----------------------------
INSERT INTO `sysuser` VALUES ('1', 'admin', null, null, '123', '管理员', '15671234789', null, '', '', null, '2018-03-04 21:39:52.66', null, '1');
INSERT INTO `sysuser` VALUES ('2', 'zhangsan', '男', '武汉', '123', '老师', '15671234789', null, null, null, null, '2018-03-04 21:39:52.66', null, '1');
INSERT INTO `sysuser` VALUES ('3', 'lisi', '男', '北京123号', '123456', '老师', '15671234111', null, null, null, null, '2018-03-04 21:39:52.66', '', '1');
INSERT INTO `sysuser` VALUES ('4', 'wangw', '男', '武汉', '123456', '老师', '15678945213', '23', '我是谁', 'wangw', null, '2018-03-04 21:39:52.66', '王五', '1');
INSERT INTO `sysuser` VALUES ('5', 'lili', '女', '武汉', '123456', '学生', '15678945356', '23', '我是谁', 'lili', null, '2018-03-04 21:39:52.66', '李丽丽', '1');
INSERT INTO `sysuser` VALUES ('6', 'zhangsanf', '女', '武汉', '123456', '学生', '13652345524', '23', '我\n是谁', '张三丰', null, '2018-03-04 21:39:52.66', '张三丰', '1');
INSERT INTO `sysuser` VALUES ('7', 'xsg1', '女', '武汉', '123456', '老师', '15678923765', null, null, null, null, '2018-03-04 21:39:52.66', null, '1');
INSERT INTO `sysuser` VALUES ('8', 'user1', '男', '武汉123号', '123456', '会员', '15671234789', '23', '我是谁', 'user1', null, '2018-03-04 21:39:52.66', '王城', '1');
INSERT INTO `sysuser` VALUES ('9', 'wangc', '男', '武汉128号', '123456', '会员', '13545678954', '22', '我是谁？', 'wangc', null, '2018-03-04 21:39:52.66', '王超', '1');
INSERT INTO `sysuser` VALUES ('10', 'wangwu', '男', '武汉', '123456', '学生', '15678923765', null, null, null, null, '2018-03-05 16:29:46.944', '王五', '1');
INSERT INTO `sysuser` VALUES ('11', 'lisi2', '男', '武汉', '123456', '老师', '15678945213', null, null, null, null, '2018-03-06 19:41:49.582', '李四', '1');
INSERT INTO `sysuser` VALUES ('12', 'cccc', '女', '23sd', '123456', '学生', '3232', null, null, null, null, '2018-11-19 22:16:09.408', '牛哥', '1');
