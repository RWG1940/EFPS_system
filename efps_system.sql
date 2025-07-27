/*
Navicat MySQL Data Transfer

Source Server         : d
Source Server Version : 80200
Source Host           : localhost:3306
Source Database       : efps_system

Target Server Type    : MYSQL
Target Server Version : 80200
File Encoding         : 65001

Date: 2025-07-27 15:41:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for aircrafts_trends
-- ----------------------------
DROP TABLE IF EXISTS `aircrafts_trends`;
CREATE TABLE `aircrafts_trends` (
  `id` int NOT NULL AUTO_INCREMENT,
  `header` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `author` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `theme` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of aircrafts_trends
-- ----------------------------
INSERT INTO `aircrafts_trends` VALUES ('66', 'EFPS-SYSTEM测试航班动态', '一切准备就绪，功能正常', '2025-02-11 10:54:48', '2025-02-11 10:54:48', 'RENWG', 'success', '1');
INSERT INTO `aircrafts_trends` VALUES ('67', '航班：A001顺利升空', '区域管制席已确认航班升空正常', '2025-05-03 22:00:28', '2025-05-03 22:00:28', '区域席', 'success', '0');
INSERT INTO `aircrafts_trends` VALUES ('68', '航班：YYDS顺利降落', '区域管制席已确认航班升空正常', '2025-05-03 22:12:30', '2025-05-03 22:12:30', '地面席', 'success', '2');
INSERT INTO `aircrafts_trends` VALUES ('69', '航班：KK11顺利升空', '区域管制席已确认航班升空正常', '2025-05-15 13:13:50', '2025-05-15 13:13:50', '区域席', 'success', '1');
INSERT INTO `aircrafts_trends` VALUES ('70', '航班：klk25412延误', '航班延误', '2025-05-15 13:20:26', '2025-05-15 13:20:26', '塔台席', 'warning', '1');
INSERT INTO `aircrafts_trends` VALUES ('71', '航班：SD879顺利升空', '区域管制席已确认航班升空正常', '2025-05-16 22:58:08', '2025-05-16 22:58:08', '区域席', 'success', '1');
INSERT INTO `aircrafts_trends` VALUES ('72', '航班：ty152顺利升空', '区域管制席已确认航班升空正常', '2025-05-16 23:03:44', '2025-05-16 23:03:44', '区域席', 'success', '1');
INSERT INTO `aircrafts_trends` VALUES ('73', '航班：th152顺利升空', '区域管制席已确认航班升空正常', '2025-05-16 23:08:21', '2025-05-16 23:08:21', '区域席', 'success', '1');
INSERT INTO `aircrafts_trends` VALUES ('74', '航班：cbj45顺利降落', '地面管制席已确认航班降落正常', '2025-05-16 23:09:52', '2025-05-16 23:09:52', '地面席', 'success', '1');

-- ----------------------------
-- Table structure for airspace_event
-- ----------------------------
DROP TABLE IF EXISTS `airspace_event`;
CREATE TABLE `airspace_event` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `theme` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `type` int DEFAULT NULL,
  `status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `level` int DEFAULT NULL,
  `title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `starttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `detail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of airspace_event
-- ----------------------------
INSERT INTO `airspace_event` VALUES ('31', '东高空', 'primary', '1', '进行中', '2', 'close', '2025-05-15 00:00:01', '2025-05-17 00:00:02', '2025-05-15 14:23:22', '2025-05-15 14:23:22', '请各个管制席、航班机长做好准备，该空域目前正在实施管制');

-- ----------------------------
-- Table structure for alert_msg
-- ----------------------------
DROP TABLE IF EXISTS `alert_msg`;
CREATE TABLE `alert_msg` (
  `id` int NOT NULL AUTO_INCREMENT,
  `header` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `author` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of alert_msg
-- ----------------------------
INSERT INTO `alert_msg` VALUES ('1', '没有可用的跑道，请等待', '塔台席获取不到可用的跑道', '2025-02-12 15:45:23', '2025-02-12 15:45:23', 'sys', '0');
INSERT INTO `alert_msg` VALUES ('2', '没有可用的停机位，请等待', '塔台席获取不到可用的停机位', '2025-02-12 15:45:23', '2025-02-12 15:45:23', 'sys', '0');
INSERT INTO `alert_msg` VALUES ('3', '没有可用的停机位，请等待', '塔台席获取不到可用的停机位', '2025-02-12 15:46:28', '2025-02-12 15:46:28', 'sys', '0');
INSERT INTO `alert_msg` VALUES ('4', '没有可用的跑道，请等待', '塔台席获取不到可用的跑道', '2025-02-12 15:46:28', '2025-02-12 15:46:28', 'sys', '0');
INSERT INTO `alert_msg` VALUES ('5', '没有可用的停机位，请等待', '塔台席获取不到可用的停机位', '2025-02-12 15:51:57', '2025-02-12 15:51:57', 'sys', '0');
INSERT INTO `alert_msg` VALUES ('6', '没有可用的跑道，请等待', '塔台席获取不到可用的跑道', '2025-02-12 15:51:57', '2025-02-12 15:51:57', 'sys', '0');
INSERT INTO `alert_msg` VALUES ('7', '没有可用的停机位，请等待', '塔台席获取不到可用的停机位', '2025-02-12 15:55:59', '2025-02-12 15:55:59', 'sys', '0');
INSERT INTO `alert_msg` VALUES ('8', '没有可用的停机位，请等待', '塔台席获取不到可用的停机位', '2025-02-12 15:56:48', '2025-02-12 15:56:48', 'sys', '0');
INSERT INTO `alert_msg` VALUES ('9', '没有可用的停机位，请等待', '塔台席获取不到可用的停机位', '2025-02-12 15:58:31', '2025-02-12 15:58:31', 'sys', '0');
INSERT INTO `alert_msg` VALUES ('10', '没有可用的停机位，请等待', '塔台席获取不到可用的停机位', '2025-02-12 16:00:32', '2025-02-12 16:00:32', 'sys', '0');
INSERT INTO `alert_msg` VALUES ('11', '没有可用的停机位，请等待', '塔台席获取不到可用的停机位', '2025-02-12 16:03:52', '2025-02-12 16:03:52', 'sys', '0');
INSERT INTO `alert_msg` VALUES ('12', '没有可用的停机位，请等待', '塔台席获取不到可用的停机位', '2025-02-12 16:04:15', '2025-02-12 16:04:15', 'sys', '0');
INSERT INTO `alert_msg` VALUES ('13', '没有可用的停机位，请等待', '塔台席获取不到可用的停机位', '2025-02-12 16:04:17', '2025-02-12 16:04:17', 'sys', '0');
INSERT INTO `alert_msg` VALUES ('14', '没有可用的停机位，请等待', '塔台席获取不到可用的停机位', '2025-02-14 20:50:17', '2025-02-14 20:50:17', 'sys', '0');
INSERT INTO `alert_msg` VALUES ('15', '没有可用的停机位，请等待', '塔台席获取不到可用的停机位', '2025-02-14 21:09:24', '2025-02-14 21:09:24', 'sys', '0');
INSERT INTO `alert_msg` VALUES ('16', '没有可用的停机位，请等待', '塔台席获取不到可用的停机位', '2025-05-03 22:11:38', '2025-05-03 22:11:38', 'sys', '0');

-- ----------------------------
-- Table structure for area_efps
-- ----------------------------
DROP TABLE IF EXISTS `area_efps`;
CREATE TABLE `area_efps` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '进程单编号',
  `status` int NOT NULL COMMENT '进程单状态',
  `type` int NOT NULL COMMENT '进程单类型',
  `a1` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '航空器呼号',
  `b1` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '航空器机型',
  `c1` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '尾流标志',
  `d1` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '二次雷达应答机模式及编码',
  `e1` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '起飞机场',
  `fg1` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预计起飞/降落时刻',
  `h1` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '目的地机场',
  `a2` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '申请的巡航高度层',
  `b21` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '高度变化1',
  `b22` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '高度变化2',
  `b23` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '高度变化3',
  `c2` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '其他指令',
  `a31` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '位置报告点名称',
  `a32` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '位置报告点名称',
  `a33` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '位置报告点名称',
  `a34` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '位置报告点名称',
  `a35` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '位置报告点名称',
  `a36` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '位置报告点名称',
  `b31` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '位置报',
  `b32` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '位置报',
  `b33` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '位置报',
  `b34` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '位置报',
  `b35` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '位置报',
  `b36` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '位置报',
  `a4` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '扇区号',
  `b4` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '进程单生成日期和时刻',
  `c4` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '其他信息',
  `m` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '航空器收到本场ATIS信息',
  `e` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '对过境航班，拍发EST报',
  `a` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '与空军协调完毕',
  `i` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '航空器被雷达识别',
  `createTime` datetime(6) DEFAULT NULL COMMENT '进程单创建日期',
  `updateTime` datetime(6) DEFAULT NULL COMMENT '进程单更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `唯一` (`id`,`a1`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of area_efps
-- ----------------------------
INSERT INTO `area_efps` VALUES ('82', '3', '0', 'A001', 'CH001', null, null, 'JDZU', '0000', 'NCU', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2025-05-03 22:00:13.569000', '2025-05-03 22:00:27.508000');
INSERT INTO `area_efps` VALUES ('83', '3', '1', 'YYDS', 'YY22', null, '1', 'KJDI', '0000', 'JDZU', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '备降', null, null, null, null, '2025-05-03 22:11:10.053000', '2025-05-03 22:11:38.811000');
INSERT INTO `area_efps` VALUES ('84', '3', '0', 'KK11', 'J201', null, null, 'JDZU', '0000', 'MMNN', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '返航', null, null, null, null, '2025-05-15 13:13:31.333000', '2025-05-15 13:13:49.683000');
INSERT INTO `area_efps` VALUES ('85', '3', '1', 'klk25412', 'thfj41', 'M', 'D24', 'csnk', '1212', 'gthf', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2025-05-15 13:14:33.323000', '2025-05-15 13:14:58.031000');
INSERT INTO `area_efps` VALUES ('86', '3', '1', 'CD36', '1235', null, null, 'VNDS', '0000', 'JDZU', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '备降', null, null, null, null, '2025-05-15 14:49:19.000000', '2025-05-15 15:08:45.722000');
INSERT INTO `area_efps` VALUES ('87', '3', '1', 'po77', 'NK563', null, null, 'DSTU', '0002', 'JDZU', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'VIP', null, null, null, null, '2025-05-15 14:56:29.704000', '2025-05-15 15:06:22.036000');
INSERT INTO `area_efps` VALUES ('88', '3', '0', 'SD879', 'BY747', null, null, 'JDZU', '0001', 'HGJD', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2025-05-16 22:57:40.543000', '2025-05-16 22:58:07.738000');
INSERT INTO `area_efps` VALUES ('89', '3', '0', 'ty152', 'hgj51', null, null, 'JDZU', '0000', 'KMFK', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2025-05-16 23:03:29.702000', '2025-05-16 23:03:43.631000');
INSERT INTO `area_efps` VALUES ('90', '3', '0', 'th152', 'By77', null, null, 'JDZU', '0000', 'VNGK', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2025-05-16 23:08:18.000000', '2025-05-16 23:08:21.212000');
INSERT INTO `area_efps` VALUES ('91', '3', '1', 'cbj45', 'BY800', null, null, 'DKAS', '0001', 'JDZU', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2025-05-16 23:09:21.960000', '2025-05-16 23:09:32.427000');
INSERT INTO `area_efps` VALUES ('92', '3', '1', 'gtd254', 'htf245', null, null, 'cakm', '0000', 'JDZU', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2025-05-16 23:41:00.255000', '2025-05-16 23:41:12.695000');

-- ----------------------------
-- Table structure for coopera_msg
-- ----------------------------
DROP TABLE IF EXISTS `coopera_msg`;
CREATE TABLE `coopera_msg` (
  `id` int NOT NULL AUTO_INCREMENT,
  `header` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `author` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `theme` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of coopera_msg
-- ----------------------------
INSERT INTO `coopera_msg` VALUES ('2', '航班：RWG01移交成功', '放行地面合并席已移交航班给塔台席', null, null, null, 'success', '0');
INSERT INTO `coopera_msg` VALUES ('3', '航班：RWG100顺利升空', '区域管制席已确认航班升空正常', '2025-02-11 17:44:44', '2025-02-11 17:44:44', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('4', '航班：RWG100顺利升空', '区域管制席已确认航班升空正常', '2025-02-11 17:45:04', '2025-02-11 17:45:04', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('5', '航班：RWG100顺利升空', '区域管制席已确认航班升空正常', '2025-02-11 17:45:56', '2025-02-11 17:45:56', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('6', '航班：RWG100顺利升空', '区域管制席已确认航班升空正常', '2025-02-11 17:49:03', '2025-02-11 17:49:03', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('7', '航班：RWG100顺利升空', '区域管制席已确认航班升空正常', '2025-02-11 17:50:21', '2025-02-11 17:50:21', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('8', '航班：RWG100顺利升空', '区域管制席已确认航班升空正常', '2025-02-11 17:51:19', '2025-02-11 17:51:19', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('9', '航班：RWG100顺利升空', '区域管制席已确认航班升空正常', '2025-02-11 17:51:29', '2025-02-11 17:51:29', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('10', '航班：RWG100顺利升空', '区域管制席已确认航班升空正常', '2025-02-11 17:55:06', '2025-02-11 17:55:06', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('11', '航班：RWG100顺利升空', '区域管制席已确认航班升空正常', '2025-02-11 17:55:32', '2025-02-11 17:55:32', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('12', '航班：RWG100顺利升空', '区域管制席已确认航班升空正常', '2025-02-11 17:56:00', '2025-02-11 17:56:00', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('13', '航班：RE205移交完成', '区域管制席已移交航班给塔台席', '2025-02-11 17:58:14', '2025-02-11 17:58:14', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('14', '航班：RE205移交成功', '塔台管制席已移交航班给放行地面合并席', '2025-02-11 17:58:28', '2025-02-11 17:58:28', '塔台席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('15', '航班：RE205已入库', '放行地面合并席已确认飞行器入库', '2025-02-11 18:01:58', '2025-02-11 18:01:58', '放行地面合并席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('16', '航班：EE101移交成功', '放行地面合并席已移交航班给塔台席', '2025-02-12 15:31:17', '2025-02-12 15:31:17', '放行地面合并席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('17', '航班：EE101移交成功', '塔台管制席已移交航班给区域管制席', '2025-02-12 15:32:02', '2025-02-12 15:32:02', '塔台席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('18', '航班：EE101顺利升空', '区域管制席已确认航班升空正常', '2025-02-12 15:33:35', '2025-02-12 15:33:35', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('19', '航班：EE101移交成功', '放行地面合并席已移交航班给塔台席', '2025-02-12 15:34:17', '2025-02-12 15:34:17', '放行地面合并席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('20', '航班：EE101移交成功', '塔台管制席已移交航班给区域管制席', '2025-02-12 15:35:14', '2025-02-12 15:35:14', '塔台席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('21', '航班：EE101移交成功', '塔台管制席已移交航班给区域管制席', '2025-02-12 15:35:26', '2025-02-12 15:35:26', '塔台席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('22', '航班：D15323移交完成', '区域管制席已移交航班给塔台席', '2025-02-12 15:38:32', '2025-02-12 15:38:32', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('23', '航班：D15323移交成功', '塔台管制席已移交航班给放行地面合并席', '2025-02-12 15:39:35', '2025-02-12 15:39:35', '塔台席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('24', '航班：D15323已入库', '放行地面合并席已确认飞行器入库', '2025-02-12 15:40:00', '2025-02-12 15:40:00', '放行地面合并席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('25', '航班：D15323移交完成', '区域管制席已移交航班给塔台席', '2025-02-12 15:45:23', '2025-02-12 15:45:23', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('26', '航班：D15323移交完成', '区域管制席已移交航班给塔台席', '2025-02-12 15:46:28', '2025-02-12 15:46:28', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('27', '航班：D15323移交完成', '区域管制席已移交航班给塔台席', '2025-02-12 15:51:57', '2025-02-12 15:51:57', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('28', '航班：D15323移交完成', '区域管制席已移交航班给塔台席', '2025-02-12 15:55:59', '2025-02-12 15:55:59', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('29', '航班：D15323移交完成', '区域管制席已移交航班给塔台席', '2025-02-12 15:56:48', '2025-02-12 15:56:48', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('30', '航班：D15323移交完成', '区域管制席已移交航班给塔台席', '2025-02-12 15:58:31', '2025-02-12 15:58:31', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('31', '航班：D15323移交完成', '区域管制席已移交航班给塔台席', '2025-02-12 16:00:32', '2025-02-12 16:00:32', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('32', '航班：D15323移交完成', '区域管制席已移交航班给塔台席', '2025-02-12 16:03:52', '2025-02-12 16:03:52', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('33', '航班：D15323移交完成', '区域管制席已移交航班给塔台席', '2025-02-12 16:04:15', '2025-02-12 16:04:15', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('34', '航班：D15323移交完成', '区域管制席已移交航班给塔台席', '2025-02-12 16:04:17', '2025-02-12 16:04:17', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('35', '航班：D15323移交成功', '塔台管制席已移交航班给放行地面合并席', '2025-02-12 16:07:03', '2025-02-12 16:07:03', '塔台席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('36', '航班：D15323已入库', '放行地面合并席已确认飞行器入库', '2025-02-12 16:07:17', '2025-02-12 16:07:17', '放行地面合并席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('37', '航班：RWG100移交成功', '放行地面合并席已移交航班给塔台席', '2025-02-14 19:41:01', '2025-02-14 19:41:01', '放行地面合并席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('38', '航班：RWG100移交成功', '放行地面合并席已移交航班给塔台席', '2025-02-14 19:46:29', '2025-02-14 19:46:29', '放行地面合并席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('39', '航班：RWG100移交成功', '放行地面合并席已移交航班给塔台席', '2025-02-14 20:42:24', '2025-02-14 20:42:24', '放行地面合并席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('40', '航班：RWG100移交成功', '塔台管制席已移交航班给区域管制席', '2025-02-14 20:43:27', '2025-02-14 20:43:27', '塔台席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('41', '航班：RWG100顺利升空', '区域管制席已确认航班升空正常', '2025-02-14 20:47:53', '2025-02-14 20:47:53', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('42', '航班：RE205移交完成', '区域管制席已移交航班给塔台席', '2025-02-14 20:50:17', '2025-02-14 20:50:17', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('43', '航班：RE205移交成功', '塔台管制席已移交航班给放行地面合并席', '2025-02-14 20:50:36', '2025-02-14 20:50:36', '塔台席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('44', '航班：RE205已入库', '放行地面合并席已确认飞行器入库', '2025-02-14 20:51:06', '2025-02-14 20:51:06', '放行地面合并席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('45', '航班：EE101移交成功', '放行地面合并席已移交航班给塔台席', '2025-02-14 20:54:09', '2025-02-14 20:54:09', '放行地面合并席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('46', '航班：EE101移交成功', '塔台管制席已移交航班给区域管制席', '2025-02-14 20:54:56', '2025-02-14 20:54:56', '塔台席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('47', '航班：RWG100移交成功', '放行地面合并席已移交航班给塔台席', '2025-02-14 20:59:32', '2025-02-14 20:59:32', '放行地面合并席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('48', '航班：RWG100移交成功', '放行地面合并席已移交航班给塔台席', '2025-02-14 21:02:56', '2025-02-14 21:02:56', '放行地面合并席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('49', '航班：RWG100移交成功', '放行地面合并席已移交航班给塔台席', '2025-02-14 21:07:45', '2025-02-14 21:07:45', '放行地面合并席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('50', '航班：RWG100移交成功', '塔台管制席已移交航班给区域管制席', '2025-02-14 21:08:23', '2025-02-14 21:08:23', '塔台席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('51', '航班：RWG100顺利升空', '区域管制席已确认航班升空正常', '2025-02-14 21:08:52', '2025-02-14 21:08:52', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('52', '航班：RE205移交完成', '区域管制席已移交航班给塔台席', '2025-02-14 21:09:24', '2025-02-14 21:09:24', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('53', '航班：RE205移交成功', '塔台管制席已移交航班给放行地面合并席', '2025-02-14 21:09:46', '2025-02-14 21:09:46', '塔台席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('54', '航班：RE205已入库', '放行地面合并席已确认飞行器入库', '2025-02-14 21:10:06', '2025-02-14 21:10:06', '放行地面合并席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('55', '航班：KI145移交成功', '放行地面合并席已移交航班给塔台席', '2025-02-19 11:41:54', '2025-02-19 11:41:54', '放行地面合并席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('56', '航班：JUS55移交成功', '放行地面合并席已移交航班给塔台席', '2025-02-19 16:52:20', '2025-02-19 16:52:20', '放行地面合并席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('57', '航班：RE564移交成功', '放行地面合并席已移交航班给塔台席', '2025-02-19 17:08:13', '2025-02-19 17:08:13', '放行地面合并席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('58', '航班：AAA111移交成功', '放行地面合并席已移交航班给塔台席', '2025-02-19 17:13:30', '2025-02-19 17:13:30', '放行地面合并席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('59', '航班：Q121移交成功', '放行地面合并席已移交航班给塔台席', '2025-02-19 17:26:53', '2025-02-19 17:26:53', '放行地面合并席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('60', '航班：Q121移交成功', '塔台管制席已移交航班给区域管制席', '2025-02-19 17:28:44', '2025-02-19 17:28:44', '塔台席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('61', '航班：Q121顺利升空', '区域管制席已确认航班升空正常', '2025-02-19 17:29:20', '2025-02-19 17:29:20', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('62', '航班：VV120移交完成', '区域管制席已移交航班给塔台席', '2025-03-20 11:05:44', '2025-03-20 11:05:44', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('63', '航班：VV120移交成功', '塔台管制席已移交航班给放行地面合并席', '2025-03-20 11:07:45', '2025-03-20 11:07:45', '塔台席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('64', '航班：RE205移交完成', '区域管制席已移交航班给塔台席', '2025-03-20 11:38:35', '2025-03-20 11:38:35', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('65', '航班：RR111移交成功', '放行地面合并席已移交航班给塔台席', '2025-05-03 21:29:15', '2025-05-03 21:29:15', '放行地面合并席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('66', '航班：KI145移交成功', '塔台管制席已移交航班给区域管制席', '2025-05-03 21:30:13', '2025-05-03 21:30:13', '塔台席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('67', '航班：RR111移交成功', '塔台管制席已移交航班给区域管制席', '2025-05-03 21:30:26', '2025-05-03 21:30:26', '塔台席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('68', '航班：RR111顺利升空', '区域管制席已确认航班升空正常', '2025-05-03 21:30:53', '2025-05-03 21:30:53', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('69', '航班：A001移交成功', '放行地面合并席已移交航班给塔台席', '2025-05-03 21:46:13', '2025-05-03 21:46:13', '放行地面合并席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('70', '航班：A001移交成功', '塔台管制席已移交航班给区域管制席', '2025-05-03 21:47:14', '2025-05-03 21:47:14', '塔台席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('71', '航班：A001顺利升空', '区域管制席已确认航班升空正常', '2025-05-03 21:47:28', '2025-05-03 21:47:28', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('72', '航班：A001移交成功', '放行地面合并席已移交航班给塔台席', '2025-05-03 21:56:18', '2025-05-03 21:56:18', '放行地面合并席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('73', '航班：A001移交成功', '塔台管制席已移交航班给区域管制席', '2025-05-03 21:56:59', '2025-05-03 21:56:59', '塔台席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('74', '航班：A001顺利升空', '区域管制席已确认航班升空正常', '2025-05-03 21:58:19', '2025-05-03 21:58:19', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('75', '航班：A001移交成功', '放行地面合并席已移交航班给塔台席', '2025-05-03 22:00:00', '2025-05-03 22:00:00', '放行地面合并席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('76', '航班：A001移交成功', '塔台管制席已移交航班给区域管制席', '2025-05-03 22:00:13', '2025-05-03 22:00:13', '塔台席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('77', '航班：A001顺利升空', '区域管制席已确认航班升空正常', '2025-05-03 22:00:27', '2025-05-03 22:00:27', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('78', '航班：YYDS移交完成', '区域管制席已移交航班给塔台席', '2025-05-03 22:11:38', '2025-05-03 22:11:38', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('79', '航班：YYDS移交成功', '塔台管制席已移交航班给放行地面合并席', '2025-05-03 22:12:13', '2025-05-03 22:12:13', '塔台席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('80', '航班：YYDS已入库', '放行地面合并席已确认飞行器入库', '2025-05-03 22:12:30', '2025-05-03 22:12:30', '放行地面合并席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('81', '航班：A001移交成功', '放行地面合并席已移交航班给塔台席', '2025-05-03 22:24:57', '2025-05-03 22:24:57', '放行地面合并席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('82', '航班：au234移交成功', '放行地面合并席已移交航班给塔台席', '2025-05-15 13:09:25', '2025-05-15 13:09:25', '放行地面合并席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('83', '航班：KK11移交成功', '放行地面合并席已移交航班给塔台席', '2025-05-15 13:12:54', '2025-05-15 13:12:54', '放行地面合并席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('84', '航班：KK11移交成功', '塔台管制席已移交航班给区域管制席', '2025-05-15 13:13:31', '2025-05-15 13:13:31', '塔台席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('85', '航班：KK11顺利升空', '区域管制席已确认航班升空正常', '2025-05-15 13:13:49', '2025-05-15 13:13:49', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('86', '航班：klk25412移交完成', '区域管制席已移交航班给塔台席', '2025-05-15 13:14:58', '2025-05-15 13:14:58', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('87', '航班：po77移交完成', '区域管制席已移交航班给塔台席', '2025-05-15 15:06:22', '2025-05-15 15:06:22', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('88', '航班：CD36移交完成', '区域管制席已移交航班给塔台席', '2025-05-15 15:08:45', '2025-05-15 15:08:45', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('89', '航班：A001移交成功', '塔台管制席已移交航班给区域管制席', '2025-05-16 09:16:38', '2025-05-16 09:16:38', '塔台席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('90', '航班：po77移交成功', '塔台管制席已移交航班给放行地面合并席', '2025-05-16 09:31:42', '2025-05-16 09:31:42', '塔台席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('91', '航班：1254i移交成功', '塔台管制席已移交航班给放行地面合并席', '2025-05-16 09:34:27', '2025-05-16 09:34:27', '塔台席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('92', '航班：25jk移交成功', '塔台管制席已移交航班给放行地面合并席', '2025-05-16 09:37:36', '2025-05-16 09:37:36', '塔台席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('93', '航班：SD879移交成功', '放行地面合并席已移交航班给塔台席', '2025-05-16 22:56:25', '2025-05-16 22:56:25', '放行地面合并席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('94', '航班：SD879移交成功', '塔台管制席已移交航班给区域管制席', '2025-05-16 22:57:40', '2025-05-16 22:57:40', '塔台席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('95', '航班：SD879顺利升空', '区域管制席已确认航班升空正常', '2025-05-16 22:58:07', '2025-05-16 22:58:07', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('96', '航班：ty152移交成功', '放行地面合并席已移交航班给塔台席', '2025-05-16 23:03:18', '2025-05-16 23:03:18', '放行地面合并席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('97', '航班：ty152移交成功', '塔台管制席已移交航班给区域管制席', '2025-05-16 23:03:29', '2025-05-16 23:03:29', '塔台席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('98', '航班：ty152顺利升空', '区域管制席已确认航班升空正常', '2025-05-16 23:03:43', '2025-05-16 23:03:43', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('99', '航班：ty152移交成功', '放行地面合并席已移交航班给塔台席', '2025-05-16 23:06:06', '2025-05-16 23:06:06', '放行地面合并席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('100', '航班：ty152移交成功', '塔台管制席已移交航班给区域管制席', '2025-05-16 23:06:14', '2025-05-16 23:06:14', '塔台席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('101', '航班：th152移交成功', '放行地面合并席已移交航班给塔台席', '2025-05-16 23:07:54', '2025-05-16 23:07:54', '放行地面合并席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('102', '航班：th152移交成功', '塔台管制席已移交航班给区域管制席', '2025-05-16 23:08:07', '2025-05-16 23:08:07', '塔台席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('103', '航班：th152顺利升空', '区域管制席已确认航班升空正常', '2025-05-16 23:08:21', '2025-05-16 23:08:21', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('104', '航班：cbj45移交完成', '区域管制席已移交航班给塔台席', '2025-05-16 23:09:32', '2025-05-16 23:09:32', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('105', '航班：cbj45移交成功', '塔台管制席已移交航班给放行地面合并席', '2025-05-16 23:09:41', '2025-05-16 23:09:41', '塔台席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('106', '航班：cbj45已入库', '放行地面合并席已确认飞行器入库', '2025-05-16 23:09:51', '2025-05-16 23:09:51', '放行地面合并席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('107', '航班：gtd254移交完成', '区域管制席已移交航班给塔台席', '2025-05-16 23:41:12', '2025-05-16 23:41:12', '区域席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('108', '航班：gtd254移交成功', '塔台管制席已移交航班给放行地面合并席', '2025-05-16 23:41:20', '2025-05-16 23:41:20', '塔台席', 'success', '0');
INSERT INTO `coopera_msg` VALUES ('109', '航班：gtd254已入库', '放行地面合并席已确认飞行器入库', '2025-05-16 23:41:32', '2025-05-16 23:41:32', '放行地面合并席', 'success', '0');

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `id` int NOT NULL AUTO_INCREMENT,
  `d_total` int NOT NULL,
  `d_name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `d_avatarpath` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `d_createtime` date DEFAULT NULL,
  `d_updatetime` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `d_name` (`d_name`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('46', '2', '管理部', 'https://efps-sys.oss-cn-hangzhou.aliyuncs.com/c0ed6671-0234-4610-b975-3f5241fce8be.jpg', '2024-08-12', '2025-05-16');
INSERT INTO `dept` VALUES ('47', '1', '区域部', 'https://efps-sys.oss-cn-hangzhou.aliyuncs.com/6102f14d-4050-42c0-81ec-724c06f8ffd0.jpg', null, '2025-05-16');
INSERT INTO `dept` VALUES ('48', '1', '塔台部', 'https://efps-sys.oss-cn-hangzhou.aliyuncs.com/49160997-9dae-43a8-880a-b56c15deb7ae.jpg', null, '2025-05-16');
INSERT INTO `dept` VALUES ('49', '5', '临时部', 'https://efps-sys.oss-cn-hangzhou.aliyuncs.com/7f40cf95-7b92-4890-8f14-71c6ffdad8c2.jpeg', null, '2025-02-10');
INSERT INTO `dept` VALUES ('53', '1', '地面部', 'https://efps-sys.oss-cn-hangzhou.aliyuncs.com/85762c81-e45b-4a7d-9d9a-d495f765f215.jpg', '2024-10-22', '2025-05-16');

-- ----------------------------
-- Table structure for dynamic_routes
-- ----------------------------
DROP TABLE IF EXISTS `dynamic_routes`;
CREATE TABLE `dynamic_routes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parentRouteId` int DEFAULT NULL COMMENT '父路由id',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '组件名',
  `icon` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '图标',
  `alias` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '别名',
  `state` int DEFAULT NULL COMMENT '“1”启用，“0”禁用',
  `sort` int DEFAULT NULL COMMENT '排序顺序，数字越小越靠前',
  `value` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '地址值',
  `redirect` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '类型',
  `discription` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '描述',
  `createUserId` int DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of dynamic_routes
-- ----------------------------
INSERT INTO `dynamic_routes` VALUES ('1', '0', 'homePage', 'home', '首页', '1', '0', '/home', '', 'LINK', '', null);
INSERT INTO `dynamic_routes` VALUES ('2', '1', 'flightPlanPage', 'assignment', '飞行计划', '1', '2', 'flight-plan', '', 'LINK', '', null);
INSERT INTO `dynamic_routes` VALUES ('3', '1', '', 'tower-3', '指挥控制', '1', '3', 'command-control', '', 'MENU', '', null);
INSERT INTO `dynamic_routes` VALUES ('4', '3', 'authPage', '', '区域管制', '1', '1', 'areaControl', '', 'LINK', '', null);
INSERT INTO `dynamic_routes` VALUES ('5', '3', 'authPage', '', '塔台管制', '1', '2', 'towerControl', '', 'LINK', '', null);
INSERT INTO `dynamic_routes` VALUES ('6', '3', 'authPage', '', '放行地面合并管制', '1', '3', 'releaseGroundControl', '', 'LINK', '', null);
INSERT INTO `dynamic_routes` VALUES ('7', '1', 'airSpaceTrendsPage', 'cloud', '空域动态', '1', '4', 'airspace-status', '', 'LINK', '', null);
INSERT INTO `dynamic_routes` VALUES ('8', '1', 'aircraftsTrendsPage', 'earth', '航班动态', '1', '5', 'flight-status', '', 'LINK', '', null);
INSERT INTO `dynamic_routes` VALUES ('9', '1', 'noticesPage', 'chat', '公告通知', '1', '6', 'notices', '', 'LINK', '', null);
INSERT INTO `dynamic_routes` VALUES ('10', '1', '', 'control-platform', '系统管理', '1', '7', 'system-manage', '', 'MENU', '', null);
INSERT INTO `dynamic_routes` VALUES ('11', '10', 'userManage', '', '用户管理', '1', '1', 'user-manage', '', 'LINK', '', null);
INSERT INTO `dynamic_routes` VALUES ('12', '10', 'deptManage', '', '部门管理', '1', '2', 'dept-manage', '', 'LINK', '', null);
INSERT INTO `dynamic_routes` VALUES ('13', '10', 'settingsPage', 'setting-1', '系统设置', '1', '3', 'system-settings', '', 'LINK', '', null);
INSERT INTO `dynamic_routes` VALUES ('14', '1', 'dashboard', 'dashboard', '仪表盘', '1', '1', 'dashboard', '', 'LINK', '', null);
INSERT INTO `dynamic_routes` VALUES ('15', '0', 'areaControlPage', '', '区域管制页', '1', '1', '/command-control/areaControl', '', 'LINK', '', null);
INSERT INTO `dynamic_routes` VALUES ('16', '0', 'towerControlPage', '', '塔台管制页', '1', '1', '/command-control/towerControl', '', 'LINK', '', null);
INSERT INTO `dynamic_routes` VALUES ('234', '0', 'releaseGroundControlPage', '', '放行地面合并管制页', '1', '1', '/command-control/releaseGroundControl', '', 'LINK', '', null);
INSERT INTO `dynamic_routes` VALUES ('235', '1', 'airInfoPage', 'system-interface', '航班信息', '1', '1', 'aircrafts-info', '', 'LINK', '', '330');
INSERT INTO `dynamic_routes` VALUES ('236', '0', 'airScreenPage', '', '航班大屏', '1', '999', '/airScreen', '', 'LINK', '', '330');

-- ----------------------------
-- Table structure for emp
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `e_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `e_username` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `e_password` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `e_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `e_gender` int DEFAULT NULL,
  `e_age` int DEFAULT NULL,
  `e_phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `e_avatarpath` varchar(255) DEFAULT NULL,
  `e_createtime` datetime(6) DEFAULT NULL,
  `e_updatetime` datetime(6) DEFAULT NULL,
  `e_isEnabled` int DEFAULT '0',
  `e_Deptid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE,
  UNIQUE KEY `e_username` (`e_username`),
  UNIQUE KEY `e_id` (`e_id`),
  KEY `e_name` (`e_name`) USING BTREE,
  KEY `e_Deptid` (`e_Deptid`),
  CONSTRAINT `emp_ibfk_1` FOREIGN KEY (`e_Deptid`) REFERENCES `dept` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=335 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of emp
-- ----------------------------
INSERT INTO `emp` VALUES ('330', '5201314', '222', '$2a$10$hur4Q0640ZBb3fDmcnULge1hF3n2xDLovI.sOjn9cFfaQN9cUFI5W', '任卫国', '1', '22', '1888888888', 'https://efps-sys.oss-cn-hangzhou.aliyuncs.com/e64d5874-18ea-49b5-8c02-e882b334b9d1.jpg', '2025-01-10 17:08:44.000000', '2025-02-10 21:00:59.279000', '1', '46');
INSERT INTO `emp` VALUES ('331', '999521', '123', '$2a$10$JfQnBtJ.AwdDisKhg8gUUuvJTc4rSG.f03xaD7QHJif354tJUR5XW', '小美', '0', '21', '100000000', 'https://efps-sys.oss-cn-hangzhou.aliyuncs.com/d9408693-8e2a-4bd1-8374-e6a4f09f6503.png', '2025-02-10 21:02:15.000000', '2025-02-10 21:08:16.994000', '1', '46');
INSERT INTO `emp` VALUES ('332', '9898989', '456', '$2a$10$omqoAAS02hXRzgyrBCPXTeJ300I5m1CxWOTO8JMoN7Z7Z3VjyeWOy', '小鹏', '1', '23', '6666666', 'https://efps-sys.oss-cn-hangzhou.aliyuncs.com/4fefc170-edd6-4558-aa69-98c5a76aded5.jpeg', '2025-02-10 21:06:04.000000', '2025-05-16 09:14:12.901000', '1', '47');
INSERT INTO `emp` VALUES ('333', '55665566', '789', '$2a$10$/ybHqOeY.q8398NzAU/tyeY6fP9ZChWp2epDQMG0e8q9aOteN5MOS', '小升', '1', '23', '111222333', 'https://efps-sys.oss-cn-hangzhou.aliyuncs.com/e7913b12-1a9e-44bd-b2fb-4a7140d47130.jpg', '2025-02-10 21:06:47.000000', '2025-05-16 09:14:20.819000', '1', '48');
INSERT INTO `emp` VALUES ('334', '147258369', '000', '$2a$10$l6BdZ6bXW3ayvZuNmuJ98OMOuJIkc1FnxA6YaKhxLEK1jedLT8T5C', '小旗', '1', '23', '77778888', 'https://efps-sys.oss-cn-hangzhou.aliyuncs.com/a9604a17-98b0-4e7e-a119-c5dbe50e71e4.jpg', '2025-02-10 21:07:33.000000', '2025-02-10 21:08:33.069000', '1', '53');

-- ----------------------------
-- Table structure for emp_area_efps
-- ----------------------------
DROP TABLE IF EXISTS `emp_area_efps`;
CREATE TABLE `emp_area_efps` (
  `id` int NOT NULL,
  `area_efps_id` int DEFAULT NULL,
  `e_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of emp_area_efps
-- ----------------------------

-- ----------------------------
-- Table structure for emp_menu
-- ----------------------------
DROP TABLE IF EXISTS `emp_menu`;
CREATE TABLE `emp_menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `e_id` int NOT NULL,
  `m_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of emp_menu
-- ----------------------------
INSERT INTO `emp_menu` VALUES ('1', '282', '1');
INSERT INTO `emp_menu` VALUES ('2', '282', '5');
INSERT INTO `emp_menu` VALUES ('3', '326', '1');
INSERT INTO `emp_menu` VALUES ('4', '327', '1');
INSERT INTO `emp_menu` VALUES ('5', '328', '1');
INSERT INTO `emp_menu` VALUES ('6', '298', '1');
INSERT INTO `emp_menu` VALUES ('7', '298', '5');
INSERT INTO `emp_menu` VALUES ('8', '329', '1');
INSERT INTO `emp_menu` VALUES ('9', '329', '5');
INSERT INTO `emp_menu` VALUES ('10', '330', '1');
INSERT INTO `emp_menu` VALUES ('11', '330', '5');
INSERT INTO `emp_menu` VALUES ('12', '331', '1');
INSERT INTO `emp_menu` VALUES ('13', '332', '1');
INSERT INTO `emp_menu` VALUES ('14', '333', '1');
INSERT INTO `emp_menu` VALUES ('15', '334', '1');
INSERT INTO `emp_menu` VALUES ('16', '331', '5');

-- ----------------------------
-- Table structure for emp_role
-- ----------------------------
DROP TABLE IF EXISTS `emp_role`;
CREATE TABLE `emp_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `e_id` int DEFAULT NULL,
  `r_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `r_id` (`r_id`),
  KEY `e_id` (`e_id`),
  CONSTRAINT `e_id` FOREIGN KEY (`e_id`) REFERENCES `emp` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_id` FOREIGN KEY (`r_id`) REFERENCES `role` (`r_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of emp_role
-- ----------------------------
INSERT INTO `emp_role` VALUES ('43', '330', '1');
INSERT INTO `emp_role` VALUES ('44', '331', '2');
INSERT INTO `emp_role` VALUES ('45', '332', '3');
INSERT INTO `emp_role` VALUES ('46', '333', '4');
INSERT INTO `emp_role` VALUES ('47', '334', '5');

-- ----------------------------
-- Table structure for emp_sys
-- ----------------------------
DROP TABLE IF EXISTS `emp_sys`;
CREATE TABLE `emp_sys` (
  `id` int NOT NULL AUTO_INCREMENT,
  `e_id` int DEFAULT NULL,
  `sys_msg_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2139115523 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of emp_sys
-- ----------------------------
INSERT INTO `emp_sys` VALUES ('-2147463167', '330', '922');
INSERT INTO `emp_sys` VALUES ('-2147459070', '330', '733');
INSERT INTO `emp_sys` VALUES ('-2143268863', '330', '980');
INSERT INTO `emp_sys` VALUES ('-2143264766', '330', '398');
INSERT INTO `emp_sys` VALUES ('-2143227903', '330', '9');
INSERT INTO `emp_sys` VALUES ('-2139078655', '330', '1673');
INSERT INTO `emp_sys` VALUES ('-2139070462', '330', '356');
INSERT INTO `emp_sys` VALUES ('-2139054079', '334', '1791');
INSERT INTO `emp_sys` VALUES ('-2134876158', '330', '762');
INSERT INTO `emp_sys` VALUES ('-2134822911', '330', '1456');
INSERT INTO `emp_sys` VALUES ('-2134138879', '330', '2062');
INSERT INTO `emp_sys` VALUES ('-2130628607', '330', '1506');
INSERT INTO `emp_sys` VALUES ('-2126491646', '330', '1060');
INSERT INTO `emp_sys` VALUES ('-2126487550', '330', '752');
INSERT INTO `emp_sys` VALUES ('-2126450687', '330', '1192');
INSERT INTO `emp_sys` VALUES ('-2126413823', '330', '701');
INSERT INTO `emp_sys` VALUES ('-2122297342', '330', '829');
INSERT INTO `emp_sys` VALUES ('-2121555967', '330', '2069');
INSERT INTO `emp_sys` VALUES ('-2118123519', '330', '1413');
INSERT INTO `emp_sys` VALUES ('-2118029311', '330', '1347');
INSERT INTO `emp_sys` VALUES ('-2118000639', '330', '1566');
INSERT INTO `emp_sys` VALUES ('-2112303103', '330', '1895');
INSERT INTO `emp_sys` VALUES ('-2109673470', '330', '1164');
INSERT INTO `emp_sys` VALUES ('-2109632511', '330', '2010');
INSERT INTO `emp_sys` VALUES ('-2105516030', '330', '419');
INSERT INTO `emp_sys` VALUES ('-2101321727', '330', '759');
INSERT INTO `emp_sys` VALUES ('-2101305343', '334', '1781');
INSERT INTO `emp_sys` VALUES ('-2097057791', '330', '1326');
INSERT INTO `emp_sys` VALUES ('-2092957695', '330', '1374');
INSERT INTO `emp_sys` VALUES ('-2092896255', '330', '17');
INSERT INTO `emp_sys` VALUES ('-2089250815', '330', '53');
INSERT INTO `emp_sys` VALUES ('-2089246719', '330', '474');
INSERT INTO `emp_sys` VALUES ('-2088722430', '330', '712');
INSERT INTO `emp_sys` VALUES ('-2080858110', '330', '453');
INSERT INTO `emp_sys` VALUES ('-2080374783', '330', '1407');
INSERT INTO `emp_sys` VALUES ('-2080354302', '330', '1054');
INSERT INTO `emp_sys` VALUES ('-2080333822', '334', '1758');
INSERT INTO `emp_sys` VALUES ('-2080296958', '330', '1427');
INSERT INTO `emp_sys` VALUES ('-2078748670', '330', '1930');
INSERT INTO `emp_sys` VALUES ('-2076159999', '330', '1051');
INSERT INTO `emp_sys` VALUES ('-2076155902', '330', '380');
INSERT INTO `emp_sys` VALUES ('-2076086271', '330', '1305');
INSERT INTO `emp_sys` VALUES ('-2074554366', '330', '1902');
INSERT INTO `emp_sys` VALUES ('-2072473598', '330', '197');
INSERT INTO `emp_sys` VALUES ('-2071924735', '330', '1206');
INSERT INTO `emp_sys` VALUES ('-2070360062', '330', '1903');
INSERT INTO `emp_sys` VALUES ('-2067697662', '330', '1246');
INSERT INTO `emp_sys` VALUES ('-2063577087', '330', '847');
INSERT INTO `emp_sys` VALUES ('-2058641406', '330', '2059');
INSERT INTO `emp_sys` VALUES ('-2055131134', '330', '1545');
INSERT INTO `emp_sys` VALUES ('-2051014654', '330', '822');
INSERT INTO `emp_sys` VALUES ('-2050936831', '330', '1552');
INSERT INTO `emp_sys` VALUES ('-2050920446', '330', '1360');
INSERT INTO `emp_sys` VALUES ('-2046799871', '330', '901');
INSERT INTO `emp_sys` VALUES ('-2046795774', '330', '298');
INSERT INTO `emp_sys` VALUES ('-2046742526', '330', '2122');
INSERT INTO `emp_sys` VALUES ('-2042605566', '330', '1843');
INSERT INTO `emp_sys` VALUES ('-2038337535', '330', '1236');
INSERT INTO `emp_sys` VALUES ('-2034724863', '330', '213');
INSERT INTO `emp_sys` VALUES ('-2034143230', '330', '1295');
INSERT INTO `emp_sys` VALUES ('-2030526462', '330', '630');
INSERT INTO `emp_sys` VALUES ('-2030026751', '330', '1726');
INSERT INTO `emp_sys` VALUES ('-2029948926', '330', '1233');
INSERT INTO `emp_sys` VALUES ('-2025832447', '330', '1713');
INSERT INTO `emp_sys` VALUES ('-2025807871', '330', '717');
INSERT INTO `emp_sys` VALUES ('-2022141950', '330', '183');
INSERT INTO `emp_sys` VALUES ('-2021560318', '330', '1298');
INSERT INTO `emp_sys` VALUES ('-2021531647', '330', '1568');
INSERT INTO `emp_sys` VALUES ('-2016698367', '334', '2063');
INSERT INTO `emp_sys` VALUES ('-2012504063', '330', '2066');
INSERT INTO `emp_sys` VALUES ('-2009071614', '330', '1403');
INSERT INTO `emp_sys` VALUES ('-2009047039', '330', '731');
INSERT INTO `emp_sys` VALUES ('-2005364735', '330', '122');
INSERT INTO `emp_sys` VALUES ('-2005364734', '330', '131');
INSERT INTO `emp_sys` VALUES ('-2004852734', '330', '272');
INSERT INTO `emp_sys` VALUES ('-2004836350', '330', '1745');
INSERT INTO `emp_sys` VALUES ('-2003251199', '330', '1884');
INSERT INTO `emp_sys` VALUES ('-2001170430', '330', '225');
INSERT INTO `emp_sys` VALUES ('-2001166334', '330', '635');
INSERT INTO `emp_sys` VALUES ('-2000662526', '330', '993');
INSERT INTO `emp_sys` VALUES ('-2000642046', '330', '1784');
INSERT INTO `emp_sys` VALUES ('-2000588798', '330', '1329');
INSERT INTO `emp_sys` VALUES ('-1996455935', '330', '2032');
INSERT INTO `emp_sys` VALUES ('-1996447743', '330', '720');
INSERT INTO `emp_sys` VALUES ('-1996365823', '330', '1576');
INSERT INTO `emp_sys` VALUES ('-1992269822', '330', '309');
INSERT INTO `emp_sys` VALUES ('-1992232958', '330', '1197');
INSERT INTO `emp_sys` VALUES ('-1992200190', '330', '1240');
INSERT INTO `emp_sys` VALUES ('-1983885311', '330', '929');
INSERT INTO `emp_sys` VALUES ('-1983881215', '330', '296');
INSERT INTO `emp_sys` VALUES ('-1983827966', '330', '1429');
INSERT INTO `emp_sys` VALUES ('-1979703294', '330', '699');
INSERT INTO `emp_sys` VALUES ('-1979670526', '330', '705');
INSERT INTO `emp_sys` VALUES ('-1979617278', '330', '1279');
INSERT INTO `emp_sys` VALUES ('-1976004606', '330', '143');
INSERT INTO `emp_sys` VALUES ('-1976000510', '330', '511');
INSERT INTO `emp_sys` VALUES ('-1975439359', '330', '1496');
INSERT INTO `emp_sys` VALUES ('-1975422974', '330', '1253');
INSERT INTO `emp_sys` VALUES ('-1971318783', '334', '1855');
INSERT INTO `emp_sys` VALUES ('-1971261438', '330', '18');
INSERT INTO `emp_sys` VALUES ('-1971228670', '330', '1260');
INSERT INTO `emp_sys` VALUES ('-1967615999', '330', '34');
INSERT INTO `emp_sys` VALUES ('-1967108095', '330', '867');
INSERT INTO `emp_sys` VALUES ('-1967017983', '330', '1606');
INSERT INTO `emp_sys` VALUES ('-1958723583', '330', '1703');
INSERT INTO `emp_sys` VALUES ('-1957978110', '334', '2060');
INSERT INTO `emp_sys` VALUES ('-1955033086', '330', '201');
INSERT INTO `emp_sys` VALUES ('-1954521087', '330', '402');
INSERT INTO `emp_sys` VALUES ('-1954521086', '330', '301');
INSERT INTO `emp_sys` VALUES ('-1954443262', '330', '1991');
INSERT INTO `emp_sys` VALUES ('-1950289918', '330', '1184');
INSERT INTO `emp_sys` VALUES ('-1950273535', '330', '1473');
INSERT INTO `emp_sys` VALUES ('-1942450174', '330', '54');
INSERT INTO `emp_sys` VALUES ('-1942446079', '330', '496');
INSERT INTO `emp_sys` VALUES ('-1941843967', '330', '1966');
INSERT INTO `emp_sys` VALUES ('-1938255870', '330', '99');
INSERT INTO `emp_sys` VALUES ('-1937707006', '330', '1736');
INSERT INTO `emp_sys` VALUES ('-1936142334', '330', '1916');
INSERT INTO `emp_sys` VALUES ('-1933533183', '330', '1776');
INSERT INTO `emp_sys` VALUES ('-1933533182', '330', '719');
INSERT INTO `emp_sys` VALUES ('-1929867262', '330', '135');
INSERT INTO `emp_sys` VALUES ('-1929355262', '330', '342');
INSERT INTO `emp_sys` VALUES ('-1929302015', '330', '1480');
INSERT INTO `emp_sys` VALUES ('-1921478654', '330', '212');
INSERT INTO `emp_sys` VALUES ('-1920897023', '330', '1327');
INSERT INTO `emp_sys` VALUES ('-1917284350', '330', '187');
INSERT INTO `emp_sys` VALUES ('-1908891646', '330', '698');
INSERT INTO `emp_sys` VALUES ('-1908383743', '330', '321');
INSERT INTO `emp_sys` VALUES ('-1908330494', '330', '1559');
INSERT INTO `emp_sys` VALUES ('-1899892735', '330', '1114');
INSERT INTO `emp_sys` VALUES ('-1899257855', '330', '2101');
INSERT INTO `emp_sys` VALUES ('-1896308734', '330', '693');
INSERT INTO `emp_sys` VALUES ('-1895804926', '330', '848');
INSERT INTO `emp_sys` VALUES ('-1891610622', '330', '1016');
INSERT INTO `emp_sys` VALUES ('-1891606527', '330', '266');
INSERT INTO `emp_sys` VALUES ('-1887404031', '330', '1870');
INSERT INTO `emp_sys` VALUES ('-1887342591', '330', '1315');
INSERT INTO `emp_sys` VALUES ('-1883222015', '330', '923');
INSERT INTO `emp_sys` VALUES ('-1883201535', '330', '1828');
INSERT INTO `emp_sys` VALUES ('-1878970366', '330', '1485');
INSERT INTO `emp_sys` VALUES ('-1878945791', '330', '1989');
INSERT INTO `emp_sys` VALUES ('-1874776063', '330', '1515');
INSERT INTO `emp_sys` VALUES ('-1870643199', '330', '1717');
INSERT INTO `emp_sys` VALUES ('-1866948606', '330', '694');
INSERT INTO `emp_sys` VALUES ('-1866416127', '330', '1623');
INSERT INTO `emp_sys` VALUES ('-1862758399', '330', '84');
INSERT INTO `emp_sys` VALUES ('-1862209535', '330', '1219');
INSERT INTO `emp_sys` VALUES ('-1862176767', '330', '1365');
INSERT INTO `emp_sys` VALUES ('-1858076671', '330', '1416');
INSERT INTO `emp_sys` VALUES ('-1853882366', '330', '1387');
INSERT INTO `emp_sys` VALUES ('-1852239870', '330', '1940');
INSERT INTO `emp_sys` VALUES ('-1849663487', '330', '251');
INSERT INTO `emp_sys` VALUES ('-1849647103', '330', '1759');
INSERT INTO `emp_sys` VALUES ('-1849561086', '334', '1092');
INSERT INTO `emp_sys` VALUES ('-1845977087', '330', '452');
INSERT INTO `emp_sys` VALUES ('-1845469182', '330', '395');
INSERT INTO `emp_sys` VALUES ('-1845399550', '330', '1287');
INSERT INTO `emp_sys` VALUES ('-1841786878', '330', '39');
INSERT INTO `emp_sys` VALUES ('-1841278974', '330', '880');
INSERT INTO `emp_sys` VALUES ('-1837084671', '330', '1057');
INSERT INTO `emp_sys` VALUES ('-1837080575', '330', '306');
INSERT INTO `emp_sys` VALUES ('-1832894462', '330', '1702');
INSERT INTO `emp_sys` VALUES ('-1828716543', '330', '1371');
INSERT INTO `emp_sys` VALUES ('-1828696062', '330', '892');
INSERT INTO `emp_sys` VALUES ('-1825009663', '330', '140');
INSERT INTO `emp_sys` VALUES ('-1824522238', '330', '1372');
INSERT INTO `emp_sys` VALUES ('-1824501759', '330', '924');
INSERT INTO `emp_sys` VALUES ('-1824428030', '330', '1349');
INSERT INTO `emp_sys` VALUES ('-1820811262', '330', '612');
INSERT INTO `emp_sys` VALUES ('-1820266494', '330', '1199');
INSERT INTO `emp_sys` VALUES ('-1820233726', '330', '1241');
INSERT INTO `emp_sys` VALUES ('-1816109055', '330', '723');
INSERT INTO `emp_sys` VALUES ('-1816055807', '330', '1436');
INSERT INTO `emp_sys` VALUES ('-1816055806', '330', '1466');
INSERT INTO `emp_sys` VALUES ('-1812426751', '330', '227');
INSERT INTO `emp_sys` VALUES ('-1812422655', '330', '665');
INSERT INTO `emp_sys` VALUES ('-1811922942', '330', '1709');
INSERT INTO `emp_sys` VALUES ('-1811914750', '330', '297');
INSERT INTO `emp_sys` VALUES ('-1811906559', '330', '2043');
INSERT INTO `emp_sys` VALUES ('-1808232446', '330', '152');
INSERT INTO `emp_sys` VALUES ('-1807745023', '330', '1369');
INSERT INTO `emp_sys` VALUES ('-1806118911', '330', '1910');
INSERT INTO `emp_sys` VALUES ('-1803530239', '330', '828');
INSERT INTO `emp_sys` VALUES ('-1803530238', '330', '905');
INSERT INTO `emp_sys` VALUES ('-1803501567', '330', '1644');
INSERT INTO `emp_sys` VALUES ('-1799839743', '330', '650');
INSERT INTO `emp_sys` VALUES ('-1799335935', '330', '1007');
INSERT INTO `emp_sys` VALUES ('-1795141630', '330', '845');
INSERT INTO `emp_sys` VALUES ('-1790967806', '330', '818');
INSERT INTO `emp_sys` VALUES ('-1786748926', '330', '256');
INSERT INTO `emp_sys` VALUES ('-1786695678', '330', '1514');
INSERT INTO `emp_sys` VALUES ('-1782558719', '330', '852');
INSERT INTO `emp_sys` VALUES ('-1782484990', '330', '1341');
INSERT INTO `emp_sys` VALUES ('-1778360319', '330', '742');
INSERT INTO `emp_sys` VALUES ('-1778360318', '330', '1657');
INSERT INTO `emp_sys` VALUES ('-1778352127', '330', '2016');
INSERT INTO `emp_sys` VALUES ('-1778290686', '330', '1264');
INSERT INTO `emp_sys` VALUES ('-1774673919', '330', '676');
INSERT INTO `emp_sys` VALUES ('-1774112766', '330', '1507');
INSERT INTO `emp_sys` VALUES ('-1770483711', '330', '151');
INSERT INTO `emp_sys` VALUES ('-1769975806', '330', '915');
INSERT INTO `emp_sys` VALUES ('-1769918462', '330', '1469');
INSERT INTO `emp_sys` VALUES ('-1766285311', '330', '483');
INSERT INTO `emp_sys` VALUES ('-1766285310', '330', '484');
INSERT INTO `emp_sys` VALUES ('-1757388799', '330', '744');
INSERT INTO `emp_sys` VALUES ('-1757319166', '330', '1338');
INSERT INTO `emp_sys` VALUES ('-1753202686', '330', '1685');
INSERT INTO `emp_sys` VALUES ('-1753194494', '330', '375');
INSERT INTO `emp_sys` VALUES ('-1753124863', '330', '1311');
INSERT INTO `emp_sys` VALUES ('-1753096191', '330', '1573');
INSERT INTO `emp_sys` VALUES ('-1753096190', '334', '1592');
INSERT INTO `emp_sys` VALUES ('-1749508094', '330', '632');
INSERT INTO `emp_sys` VALUES ('-1748983807', '330', '1741');
INSERT INTO `emp_sys` VALUES ('-1748983806', '330', '1836');
INSERT INTO `emp_sys` VALUES ('-1748262911', '330', '2087');
INSERT INTO `emp_sys` VALUES ('-1736380415', '330', '1133');
INSERT INTO `emp_sys` VALUES ('-1736364031', '330', '1550');
INSERT INTO `emp_sys` VALUES ('-1723838463', '330', '1000');
INSERT INTO `emp_sys` VALUES ('-1723760639', '330', '1612');
INSERT INTO `emp_sys` VALUES ('-1720152062', '330', '182');
INSERT INTO `emp_sys` VALUES ('-1719664638', '330', '1370');
INSERT INTO `emp_sys` VALUES ('-1719603198', '330', '1232');
INSERT INTO `emp_sys` VALUES ('-1715445758', '330', '322');
INSERT INTO `emp_sys` VALUES ('-1711255551', '330', '1029');
INSERT INTO `emp_sys` VALUES ('-1711247359', '330', '703');
INSERT INTO `emp_sys` VALUES ('-1711198206', '330', '1510');
INSERT INTO `emp_sys` VALUES ('-1707565055', '330', '613');
INSERT INTO `emp_sys` VALUES ('-1707057151', '330', '361');
INSERT INTO `emp_sys` VALUES ('-1707040767', '334', '1746');
INSERT INTO `emp_sys` VALUES ('-1702887422', '330', '1375');
INSERT INTO `emp_sys` VALUES ('-1702862847', '330', '273');
INSERT INTO `emp_sys` VALUES ('-1702760447', '334', '1093');
INSERT INTO `emp_sys` VALUES ('-1699180543', '330', '158');
INSERT INTO `emp_sys` VALUES ('-1699176446', '330', '485');
INSERT INTO `emp_sys` VALUES ('-1698668543', '330', '255');
INSERT INTO `emp_sys` VALUES ('-1694474238', '330', '385');
INSERT INTO `emp_sys` VALUES ('-1694420990', '330', '1487');
INSERT INTO `emp_sys` VALUES ('-1690284030', '330', '1062');
INSERT INTO `emp_sys` VALUES ('-1690243070', '330', '1221');
INSERT INTO `emp_sys` VALUES ('-1686597631', '330', '55');
INSERT INTO `emp_sys` VALUES ('-1681838079', '330', '2133');
INSERT INTO `emp_sys` VALUES ('-1681797118', '330', '1963');
INSERT INTO `emp_sys` VALUES ('-1678204927', '330', '473');
INSERT INTO `emp_sys` VALUES ('-1677701119', '330', '1071');
INSERT INTO `emp_sys` VALUES ('-1673506815', '330', '1077');
INSERT INTO `emp_sys` VALUES ('-1673502719', '330', '313');
INSERT INTO `emp_sys` VALUES ('-1665626111', '330', '117');
INSERT INTO `emp_sys` VALUES ('-1665114111', '330', '776');
INSERT INTO `emp_sys` VALUES ('-1661431807', '330', '62');
INSERT INTO `emp_sys` VALUES ('-1660919807', '330', '751');
INSERT INTO `emp_sys` VALUES ('-1660866559', '330', '1500');
INSERT INTO `emp_sys` VALUES ('-1657683966', '330', '1942');
INSERT INTO `emp_sys` VALUES ('-1657233406', '330', '664');
INSERT INTO `emp_sys` VALUES ('-1655123966', '330', '1938');
INSERT INTO `emp_sys` VALUES ('-1652535295', '330', '858');
INSERT INTO `emp_sys` VALUES ('-1648340991', '330', '1026');
INSERT INTO `emp_sys` VALUES ('-1646735358', '330', '1894');
INSERT INTO `emp_sys` VALUES ('-1631559678', '330', '400');
INSERT INTO `emp_sys` VALUES ('-1627877374', '330', '97');
INSERT INTO `emp_sys` VALUES ('-1627373566', '330', '1723');
INSERT INTO `emp_sys` VALUES ('-1623171071', '330', '728');
INSERT INTO `emp_sys` VALUES ('-1623146495', '334', '1624');
INSERT INTO `emp_sys` VALUES ('-1623134207', '330', '1187');
INSERT INTO `emp_sys` VALUES ('-1623134206', '330', '1150');
INSERT INTO `emp_sys` VALUES ('-1623101438', '330', '1297');
INSERT INTO `emp_sys` VALUES ('-1618984958', '330', '1693');
INSERT INTO `emp_sys` VALUES ('-1618878463', '330', '1590');
INSERT INTO `emp_sys` VALUES ('-1614807038', '330', '1384');
INSERT INTO `emp_sys` VALUES ('-1614729215', '330', '2116');
INSERT INTO `emp_sys` VALUES ('-1614708735', '330', '1608');
INSERT INTO `emp_sys` VALUES ('-1610592255', '330', '1009');
INSERT INTO `emp_sys` VALUES ('-1610588158', '330', '348');
INSERT INTO `emp_sys` VALUES ('-1610534910', '330', '1479');
INSERT INTO `emp_sys` VALUES ('-1606369279', '330', '1652');
INSERT INTO `emp_sys` VALUES ('-1606340607', '330', '1536');
INSERT INTO `emp_sys` VALUES ('-1606299647', '330', '1978');
INSERT INTO `emp_sys` VALUES ('-1602162687', '330', '1161');
INSERT INTO `emp_sys` VALUES ('-1602162686', '330', '1217');
INSERT INTO `emp_sys` VALUES ('-1598517246', '330', '111');
INSERT INTO `emp_sys` VALUES ('-1598021630', '330', '2144');
INSERT INTO `emp_sys` VALUES ('-1598009343', '330', '928');
INSERT INTO `emp_sys` VALUES ('-1597902847', '330', '1116');
INSERT INTO `emp_sys` VALUES ('-1593794558', '330', '1811');
INSERT INTO `emp_sys` VALUES ('-1593593854', '330', '24');
INSERT INTO `emp_sys` VALUES ('-1585369087', '330', '1425');
INSERT INTO `emp_sys` VALUES ('-1581740031', '330', '128');
INSERT INTO `emp_sys` VALUES ('-1581735934', '330', '521');
INSERT INTO `emp_sys` VALUES ('-1581735933', '330', '522');
INSERT INTO `emp_sys` VALUES ('-1581232127', '330', '1033');
INSERT INTO `emp_sys` VALUES ('-1577037822', '330', '969');
INSERT INTO `emp_sys` VALUES ('-1577033726', '330', '334');
INSERT INTO `emp_sys` VALUES ('-1572847614', '330', '1712');
INSERT INTO `emp_sys` VALUES ('-1568649214', '330', '1048');
INSERT INTO `emp_sys` VALUES ('-1568550911', '330', '1972');
INSERT INTO `emp_sys` VALUES ('-1560260607', '330', '887');
INSERT INTO `emp_sys` VALUES ('-1560223742', '330', '1849');
INSERT INTO `emp_sys` VALUES ('-1560219647', '330', '1169');
INSERT INTO `emp_sys` VALUES ('-1556574206', '330', '92');
INSERT INTO `emp_sys` VALUES ('-1556570110', '330', '490');
INSERT INTO `emp_sys` VALUES ('-1551851519', '330', '1798');
INSERT INTO `emp_sys` VALUES ('-1551773694', '330', '1965');
INSERT INTO `emp_sys` VALUES ('-1548185598', '330', '96');
INSERT INTO `emp_sys` VALUES ('-1547677694', '330', '939');
INSERT INTO `emp_sys` VALUES ('-1543479295', '330', '801');
INSERT INTO `emp_sys` VALUES ('-1543409662', '330', '1277');
INSERT INTO `emp_sys` VALUES ('-1539796990', '330', '28');
INSERT INTO `emp_sys` VALUES ('-1539284991', '330', '358');
INSERT INTO `emp_sys` VALUES ('-1539231743', '330', '1542');
INSERT INTO `emp_sys` VALUES ('-1538572286', '333', '2113');
INSERT INTO `emp_sys` VALUES ('-1535115262', '330', '1408');
INSERT INTO `emp_sys` VALUES ('-1530888190', '330', '2037');
INSERT INTO `emp_sys` VALUES ('-1530826751', '330', '1336');
INSERT INTO `emp_sys` VALUES ('-1526706175', '330', '945');
INSERT INTO `emp_sys` VALUES ('-1526648831', '330', '1490');
INSERT INTO `emp_sys` VALUES ('-1525964799', '330', '2073');
INSERT INTO `emp_sys` VALUES ('-1522507774', '330', '417');
INSERT INTO `emp_sys` VALUES ('-1522454526', '330', '1450');
INSERT INTO `emp_sys` VALUES ('-1514627071', '330', '523');
INSERT INTO `emp_sys` VALUES ('-1514627070', '330', '621');
INSERT INTO `emp_sys` VALUES ('-1514123263', '330', '1013');
INSERT INTO `emp_sys` VALUES ('-1509928959', '330', '927');
INSERT INTO `emp_sys` VALUES ('-1509871615', '330', '2118');
INSERT INTO `emp_sys` VALUES ('-1506238462', '330', '672');
INSERT INTO `emp_sys` VALUES ('-1505734654', '330', '918');
INSERT INTO `emp_sys` VALUES ('-1505730559', '330', '416');
INSERT INTO `emp_sys` VALUES ('-1505705983', '330', '1638');
INSERT INTO `emp_sys` VALUES ('-1501540350', '330', '1061');
INSERT INTO `emp_sys` VALUES ('-1501483006', '330', '1549');
INSERT INTO `emp_sys` VALUES ('-1497849855', '330', '455');
INSERT INTO `emp_sys` VALUES ('-1497366527', '330', '1406');
INSERT INTO `emp_sys` VALUES ('-1497341951', '330', '368');
INSERT INTO `emp_sys` VALUES ('-1497305087', '330', '1157');
INSERT INTO `emp_sys` VALUES ('-1493078014', '330', '1310');
INSERT INTO `emp_sys` VALUES ('-1488953342', '330', '753');
INSERT INTO `emp_sys` VALUES ('-1484742654', '330', '1752');
INSERT INTO `emp_sys` VALUES ('-1480568831', '330', '889');
INSERT INTO `emp_sys` VALUES ('-1480511486', '330', '1563');
INSERT INTO `emp_sys` VALUES ('-1480495102', '330', '1317');
INSERT INTO `emp_sys` VALUES ('-1476378623', '330', '1666');
INSERT INTO `emp_sys` VALUES ('-1476354047', '330', '1805');
INSERT INTO `emp_sys` VALUES ('-1472688126', '330', '26');
INSERT INTO `emp_sys` VALUES ('-1472176127', '330', '800');
INSERT INTO `emp_sys` VALUES ('-1472098302', '330', '1981');
INSERT INTO `emp_sys` VALUES ('-1471463422', '333', '2111');
INSERT INTO `emp_sys` VALUES ('-1467985918', '330', '908');
INSERT INTO `emp_sys` VALUES ('-1467981823', '330', '778');
INSERT INTO `emp_sys` VALUES ('-1463787519', '330', '784');
INSERT INTO `emp_sys` VALUES ('-1463779326', '330', '2014');
INSERT INTO `emp_sys` VALUES ('-1459593215', '330', '302');
INSERT INTO `emp_sys` VALUES ('-1459568639', '330', '1634');
INSERT INTO `emp_sys` VALUES ('-1455398910', '330', '305');
INSERT INTO `emp_sys` VALUES ('-1455300607', '330', '1571');
INSERT INTO `emp_sys` VALUES ('-1451712511', '330', '524');
INSERT INTO `emp_sys` VALUES ('-1451229183', '330', '1391');
INSERT INTO `emp_sys` VALUES ('-1451204606', '330', '387');
INSERT INTO `emp_sys` VALUES ('-1451134974', '330', '1312');
INSERT INTO `emp_sys` VALUES ('-1447014399', '330', '1035');
INSERT INTO `emp_sys` VALUES ('-1447014398', '330', '844');
INSERT INTO `emp_sys` VALUES ('-1446940671', '330', '1335');
INSERT INTO `emp_sys` VALUES ('-1446297599', '333', '2105');
INSERT INTO `emp_sys` VALUES ('-1443327999', '330', '35');
INSERT INTO `emp_sys` VALUES ('-1442779135', '330', '1165');
INSERT INTO `emp_sys` VALUES ('-1442717695', '330', '1577');
INSERT INTO `emp_sys` VALUES ('-1439133694', '330', '189');
INSERT INTO `emp_sys` VALUES ('-1438625791', '330', '916');
INSERT INTO `emp_sys` VALUES ('-1438621695', '330', '748');
INSERT INTO `emp_sys` VALUES ('-1438605310', '330', '1747');
INSERT INTO `emp_sys` VALUES ('-1438584831', '330', '1191');
INSERT INTO `emp_sys` VALUES ('-1438552063', '330', '1333');
INSERT INTO `emp_sys` VALUES ('-1434427391', '330', '237');
INSERT INTO `emp_sys` VALUES ('-1430740991', '330', '673');
INSERT INTO `emp_sys` VALUES ('-1430163454', '330', '1272');
INSERT INTO `emp_sys` VALUES ('-1426042878', '330', '1072');
INSERT INTO `emp_sys` VALUES ('-1425969150', '330', '1359');
INSERT INTO `emp_sys` VALUES ('-1421750270', '330', '1974');
INSERT INTO `emp_sys` VALUES ('-1421107198', '334', '2072');
INSERT INTO `emp_sys` VALUES ('-1418162174', '330', '191');
INSERT INTO `emp_sys` VALUES ('-1413386238', '330', '1328');
INSERT INTO `emp_sys` VALUES ('-1413353471', '330', '1087');
INSERT INTO `emp_sys` VALUES ('-1409261566', '330', '771');
INSERT INTO `emp_sys` VALUES ('-1409253374', '330', '2029');
INSERT INTO `emp_sys` VALUES ('-1405042687', '330', '1640');
INSERT INTO `emp_sys` VALUES ('-1401384958', '330', '85');
INSERT INTO `emp_sys` VALUES ('-1400819711', '330', '1494');
INSERT INTO `emp_sys` VALUES ('-1397190654', '330', '81');
INSERT INTO `emp_sys` VALUES ('-1396678654', '330', '329');
INSERT INTO `emp_sys` VALUES ('-1392996351', '330', '156');
INSERT INTO `emp_sys` VALUES ('-1388290046', '330', '785');
INSERT INTO `emp_sys` VALUES ('-1388265470', '334', '1642');
INSERT INTO `emp_sys` VALUES ('-1384603647', '330', '525');
INSERT INTO `emp_sys` VALUES ('-1384603646', '330', '526');
INSERT INTO `emp_sys` VALUES ('-1384095743', '330', '370');
INSERT INTO `emp_sys` VALUES ('-1384042494', '330', '1528');
INSERT INTO `emp_sys` VALUES ('-1384026111', '330', '1278');
INSERT INTO `emp_sys` VALUES ('-1379901438', '330', '330');
INSERT INTO `emp_sys` VALUES ('-1375711230', '330', '841');
INSERT INTO `emp_sys` VALUES ('-1375653887', '330', '1538');
INSERT INTO `emp_sys` VALUES ('-1374994430', '334', '2102');
INSERT INTO `emp_sys` VALUES ('-1371537407', '330', '1393');
INSERT INTO `emp_sys` VALUES ('-1371475966', '330', '1212');
INSERT INTO `emp_sys` VALUES ('-1367830526', '330', '46');
INSERT INTO `emp_sys` VALUES ('-1367826431', '330', '478');
INSERT INTO `emp_sys` VALUES ('-1367318526', '330', '1661');
INSERT INTO `emp_sys` VALUES ('-1367281663', '330', '1224');
INSERT INTO `emp_sys` VALUES ('-1367216127', '330', '1104');
INSERT INTO `emp_sys` VALUES ('-1363636223', '330', '49');
INSERT INTO `emp_sys` VALUES ('-1359441918', '330', '141');
INSERT INTO `emp_sys` VALUES ('-1359437822', '330', '688');
INSERT INTO `emp_sys` VALUES ('-1351053310', '330', '154');
INSERT INTO `emp_sys` VALUES ('-1350545406', '330', '1044');
INSERT INTO `emp_sys` VALUES ('-1350524927', '330', '1793');
INSERT INTO `emp_sys` VALUES ('-1346859007', '330', '70');
INSERT INTO `emp_sys` VALUES ('-1346854910', '330', '634');
INSERT INTO `emp_sys` VALUES ('-1342660607', '330', '542');
INSERT INTO `emp_sys` VALUES ('-1342152703', '330', '303');
INSERT INTO `emp_sys` VALUES ('-1342144511', '330', '1872');
INSERT INTO `emp_sys` VALUES ('-1342136318', '330', '1809');
INSERT INTO `emp_sys` VALUES ('-1338470398', '330', '48');
INSERT INTO `emp_sys` VALUES ('-1338466302', '330', '680');
INSERT INTO `emp_sys` VALUES ('-1337942015', '330', '1824');
INSERT INTO `emp_sys` VALUES ('-1337933822', '334', '1650');
INSERT INTO `emp_sys` VALUES ('-1333755903', '330', '2033');
INSERT INTO `emp_sys` VALUES ('-1326333950', '330', '1954');
INSERT INTO `emp_sys` VALUES ('-1325883390', '330', '656');
INSERT INTO `emp_sys` VALUES ('-1325400063', '330', '1394');
INSERT INTO `emp_sys` VALUES ('-1325383679', '330', '1692');
INSERT INTO `emp_sys` VALUES ('-1321689086', '330', '527');
INSERT INTO `emp_sys` VALUES ('-1321181182', '330', '341');
INSERT INTO `emp_sys` VALUES ('-1316950015', '330', '1183');
INSERT INTO `emp_sys` VALUES ('-1312800766', '330', '1675');
INSERT INTO `emp_sys` VALUES ('-1312792575', '330', '391');
INSERT INTO `emp_sys` VALUES ('-1312792574', '330', '781');
INSERT INTO `emp_sys` VALUES ('-1312722943', '330', '1293');
INSERT INTO `emp_sys` VALUES ('-1308598271', '330', '234');
INSERT INTO `emp_sys` VALUES ('-1308561406', '330', '11');
INSERT INTO `emp_sys` VALUES ('-1308545023', '330', '1498');
INSERT INTO `emp_sys` VALUES ('-1304428543', '330', '1390');
INSERT INTO `emp_sys` VALUES ('-1300185086', '334', '1616');
INSERT INTO `emp_sys` VALUES ('-1291804671', '330', '1788');
INSERT INTO `emp_sys` VALUES ('-1291784190', '330', '1135');
INSERT INTO `emp_sys` VALUES ('-1288138750', '330', '110');
INSERT INTO `emp_sys` VALUES ('-1287630847', '330', '840');
INSERT INTO `emp_sys` VALUES ('-1287557118', '330', '1292');
INSERT INTO `emp_sys` VALUES ('-1283944446', '330', '129');
INSERT INTO `emp_sys` VALUES ('-1279201279', '330', '1198');
INSERT INTO `emp_sys` VALUES ('-1275551743', '330', '543');
INSERT INTO `emp_sys` VALUES ('-1275551742', '330', '544');
INSERT INTO `emp_sys` VALUES ('-1275043838', '330', '369');
INSERT INTO `emp_sys` VALUES ('-1266663422', '330', '1679');
INSERT INTO `emp_sys` VALUES ('-1266647038', '330', '2034');
INSERT INTO `emp_sys` VALUES ('-1262972926', '330', '215');
INSERT INTO `emp_sys` VALUES ('-1258778623', '330', '166');
INSERT INTO `emp_sys` VALUES ('-1258778622', '330', '102');
INSERT INTO `emp_sys` VALUES ('-1258266623', '330', '772');
INSERT INTO `emp_sys` VALUES ('-1258266622', '330', '446');
INSERT INTO `emp_sys` VALUES ('-1258176511', '330', '1421');
INSERT INTO `emp_sys` VALUES ('-1254580222', '330', '528');
INSERT INTO `emp_sys` VALUES ('-1254076415', '330', '963');
INSERT INTO `emp_sys` VALUES ('-1254072319', '330', '258');
INSERT INTO `emp_sys` VALUES ('-1254055934', '334', '1750');
INSERT INTO `emp_sys` VALUES ('-1253974015', '330', '1731');
INSERT INTO `emp_sys` VALUES ('-1249869822', '330', '2044');
INSERT INTO `emp_sys` VALUES ('-1249861630', '330', '716');
INSERT INTO `emp_sys` VALUES ('-1249841150', '330', '1181');
INSERT INTO `emp_sys` VALUES ('-1249808383', '330', '1299');
INSERT INTO `emp_sys` VALUES ('-1246191614', '330', '654');
INSERT INTO `emp_sys` VALUES ('-1245675519', '330', '2012');
INSERT INTO `emp_sys` VALUES ('-1245675518', '330', '1871');
INSERT INTO `emp_sys` VALUES ('-1245589503', '330', '1967');
INSERT INTO `emp_sys` VALUES ('-1241493503', '330', '964');
INSERT INTO `emp_sys` VALUES ('-1241473022', '330', '1796');
INSERT INTO `emp_sys` VALUES ('-1237807102', '330', '44');
INSERT INTO `emp_sys` VALUES ('-1237303294', '330', '1683');
INSERT INTO `emp_sys` VALUES ('-1237295103', '330', '394');
INSERT INTO `emp_sys` VALUES ('-1237241854', '330', '2124');
INSERT INTO `emp_sys` VALUES ('-1233104895', '330', '911');
INSERT INTO `emp_sys` VALUES ('-1233063935', '330', '1162');
INSERT INTO `emp_sys` VALUES ('-1229418495', '330', '47');
INSERT INTO `emp_sys` VALUES ('-1228906495', '330', '789');
INSERT INTO `emp_sys` VALUES ('-1228890110', '330', '1819');
INSERT INTO `emp_sys` VALUES ('-1228869630', '330', '1207');
INSERT INTO `emp_sys` VALUES ('-1227304959', '330', '1928');
INSERT INTO `emp_sys` VALUES ('-1225220095', '330', '465');
INSERT INTO `emp_sys` VALUES ('-1224716287', '330', '930');
INSERT INTO `emp_sys` VALUES ('-1224712190', '330', '367');
INSERT INTO `emp_sys` VALUES ('-1224695807', '330', '1772');
INSERT INTO `emp_sys` VALUES ('-1220464639', '330', '1504');
INSERT INTO `emp_sys` VALUES ('-1220419582', '330', '1588');
INSERT INTO `emp_sys` VALUES ('-1216835583', '330', '164');
INSERT INTO `emp_sys` VALUES ('-1216307198', '330', '1800');
INSERT INTO `emp_sys` VALUES ('-1216270335', '330', '1437');
INSERT INTO `emp_sys` VALUES ('-1212137470', '334', '1700');
INSERT INTO `emp_sys` VALUES ('-1212133375', '330', '1056');
INSERT INTO `emp_sys` VALUES ('-1212112894', '330', '1748');
INSERT INTO `emp_sys` VALUES ('-1211391998', '330', '2061');
INSERT INTO `emp_sys` VALUES ('-1208446975', '330', '112');
INSERT INTO `emp_sys` VALUES ('-1208442879', '330', '545');
INSERT INTO `emp_sys` VALUES ('-1208442878', '330', '617');
INSERT INTO `emp_sys` VALUES ('-1203765246', '330', '1380');
INSERT INTO `emp_sys` VALUES ('-1203724287', '334', '1768');
INSERT INTO `emp_sys` VALUES ('-1199570943', '330', '1386');
INSERT INTO `emp_sys` VALUES ('-1199550462', '330', '921');
INSERT INTO `emp_sys` VALUES ('-1199546366', '330', '433');
INSERT INTO `emp_sys` VALUES ('-1195864063', '330', '155');
INSERT INTO `emp_sys` VALUES ('-1195859967', '330', '663');
INSERT INTO `emp_sys` VALUES ('-1193750527', '330', '1917');
INSERT INTO `emp_sys` VALUES ('-1191669759', '330', '108');
INSERT INTO `emp_sys` VALUES ('-1191157759', '330', '345');
INSERT INTO `emp_sys` VALUES ('-1191104511', '330', '1471');
INSERT INTO `emp_sys` VALUES ('-1187471358', '330', '529');
INSERT INTO `emp_sys` VALUES ('-1186983934', '330', '1862');
INSERT INTO `emp_sys` VALUES ('-1186963455', '330', '815');
INSERT INTO `emp_sys` VALUES ('-1186910207', '330', '1428');
INSERT INTO `emp_sys` VALUES ('-1186910206', '330', '1543');
INSERT INTO `emp_sys` VALUES ('-1178558463', '330', '1806');
INSERT INTO `emp_sys` VALUES ('-1177931774', '330', '2052');
INSERT INTO `emp_sys` VALUES ('-1174364159', '334', '1808');
INSERT INTO `emp_sys` VALUES ('-1170694143', '330', '682');
INSERT INTO `emp_sys` VALUES ('-1169448958', '334', '2085');
INSERT INTO `emp_sys` VALUES ('-1165996031', '330', '970');
INSERT INTO `emp_sys` VALUES ('-1165975550', '330', '1775');
INSERT INTO `emp_sys` VALUES ('-1165914110', '330', '1983');
INSERT INTO `emp_sys` VALUES ('-1165279231', '330', '2106');
INSERT INTO `emp_sys` VALUES ('-1161789439', '330', '2011');
INSERT INTO `emp_sys` VALUES ('-1161760767', '330', '16');
INSERT INTO `emp_sys` VALUES ('-1157603327', '330', '281');
INSERT INTO `emp_sys` VALUES ('-1149218815', '330', '1021');
INSERT INTO `emp_sys` VALUES ('-1145528319', '330', '546');
INSERT INTO `emp_sys` VALUES ('-1140830207', '330', '978');
INSERT INTO `emp_sys` VALUES ('-1140830206', '330', '1842');
INSERT INTO `emp_sys` VALUES ('-1136562175', '330', '1234');
INSERT INTO `emp_sys` VALUES ('-1136533503', '330', '1570');
INSERT INTO `emp_sys` VALUES ('-1132437503', '330', '770');
INSERT INTO `emp_sys` VALUES ('-1128751103', '330', '554');
INSERT INTO `emp_sys` VALUES ('-1128751102', '330', '555');
INSERT INTO `emp_sys` VALUES ('-1128259583', '330', '2142');
INSERT INTO `emp_sys` VALUES ('-1128173566', '330', '1346');
INSERT INTO `emp_sys` VALUES ('-1119879167', '330', '2147');
INSERT INTO `emp_sys` VALUES ('-1119858687', '330', '884');
INSERT INTO `emp_sys` VALUES ('-1119784958', '330', '1362');
INSERT INTO `emp_sys` VALUES ('-1111973887', '330', '666');
INSERT INTO `emp_sys` VALUES ('-1111973886', '330', '623');
INSERT INTO `emp_sys` VALUES ('-1107275774', '330', '871');
INSERT INTO `emp_sys` VALUES ('-1107218430', '330', '1435');
INSERT INTO `emp_sys` VALUES ('-1107173375', '334', '1593');
INSERT INTO `emp_sys` VALUES ('-1105670143', '330', '1888');
INSERT INTO `emp_sys` VALUES ('-1103097854', '330', '1865');
INSERT INTO `emp_sys` VALUES ('-1098883071', '330', '327');
INSERT INTO `emp_sys` VALUES ('-1095200767', '330', '229');
INSERT INTO `emp_sys` VALUES ('-1094692863', '330', '859');
INSERT INTO `emp_sys` VALUES ('-1094672382', '330', '1812');
INSERT INTO `emp_sys` VALUES ('-1091006463', '330', '79');
INSERT INTO `emp_sys` VALUES ('-1090396158', '330', '1567');
INSERT INTO `emp_sys` VALUES ('-1089757182', '334', '2068');
INSERT INTO `emp_sys` VALUES ('-1086304254', '330', '1058');
INSERT INTO `emp_sys` VALUES ('-1082613758', '330', '547');
INSERT INTO `emp_sys` VALUES ('-1082613757', '330', '548');
INSERT INTO `emp_sys` VALUES ('-1082081278', '330', '1636');
INSERT INTO `emp_sys` VALUES ('-1082073087', '334', '1852');
INSERT INTO `emp_sys` VALUES ('-1077858302', '330', '1516');
INSERT INTO `emp_sys` VALUES ('-1077841918', '330', '1269');
INSERT INTO `emp_sys` VALUES ('-1077174271', '334', '2093');
INSERT INTO `emp_sys` VALUES ('-1074225150', '330', '625');
INSERT INTO `emp_sys` VALUES ('-1073721342', '330', '830');
INSERT INTO `emp_sys` VALUES ('-1073663999', '330', '2136');
INSERT INTO `emp_sys` VALUES ('-1069527039', '330', '1046');
INSERT INTO `emp_sys` VALUES ('-1069453311', '330', '1270');
INSERT INTO `emp_sys` VALUES ('-1069445118', '330', '2001');
INSERT INTO `emp_sys` VALUES ('-1061646335', '330', '64');
INSERT INTO `emp_sys` VALUES ('-1061642239', '330', '556');
INSERT INTO `emp_sys` VALUES ('-1061158911', '330', '1412');
INSERT INTO `emp_sys` VALUES ('-1061101566', '334', '1851');
INSERT INTO `emp_sys` VALUES ('-1057452030', '330', '198');
INSERT INTO `emp_sys` VALUES ('-1057447934', '330', '614');
INSERT INTO `emp_sys` VALUES ('-1056948223', '330', '1708');
INSERT INTO `emp_sys` VALUES ('-1053257726', '330', '168');
INSERT INTO `emp_sys` VALUES ('-1052753918', '330', '1695');
INSERT INTO `emp_sys` VALUES ('-1052749823', '330', '961');
INSERT INTO `emp_sys` VALUES ('-1049059327', '330', '596');
INSERT INTO `emp_sys` VALUES ('-1049059326', '330', '646');
INSERT INTO `emp_sys` VALUES ('-1048575999', '330', '824');
INSERT INTO `emp_sys` VALUES ('-1048559615', '330', '1719');
INSERT INTO `emp_sys` VALUES ('-1044865022', '330', '512');
INSERT INTO `emp_sys` VALUES ('-1044865021', '330', '513');
INSERT INTO `emp_sys` VALUES ('-1044365310', '330', '1672');
INSERT INTO `emp_sys` VALUES ('-1044361214', '330', '891');
INSERT INTO `emp_sys` VALUES ('-1044340734', '330', '711');
INSERT INTO `emp_sys` VALUES ('-1044258815', '330', '1083');
INSERT INTO `emp_sys` VALUES ('-1043619838', '330', '2057');
INSERT INTO `emp_sys` VALUES ('-1040166911', '330', '1043');
INSERT INTO `emp_sys` VALUES ('-1040162814', '330', '379');
INSERT INTO `emp_sys` VALUES ('-1035952126', '330', '1779');
INSERT INTO `emp_sys` VALUES ('-1027502079', '330', '1984');
INSERT INTO `emp_sys` VALUES ('-1023369215', '330', '1820');
INSERT INTO `emp_sys` VALUES ('-1023283199', '330', '1111');
INSERT INTO `emp_sys` VALUES ('-1019699198', '330', '549');
INSERT INTO `emp_sys` VALUES ('-1010065407', '330', '2076');
INSERT INTO `emp_sys` VALUES ('-1010065406', '334', '2070');
INSERT INTO `emp_sys` VALUES ('-1006608383', '330', '725');
INSERT INTO `emp_sys` VALUES ('-1006530559', '330', '1995');
INSERT INTO `emp_sys` VALUES ('-1002418175', '330', '838');
INSERT INTO `emp_sys` VALUES ('-1002418174', '330', '966');
INSERT INTO `emp_sys` VALUES ('-1002405886', '330', '2015');
INSERT INTO `emp_sys` VALUES ('-1002397694', '330', '1769');
INSERT INTO `emp_sys` VALUES ('-1002381310', '330', '1846');
INSERT INTO `emp_sys` VALUES ('-998727679', '330', '582');
INSERT INTO `emp_sys` VALUES ('-998227966', '330', '1669');
INSERT INTO `emp_sys` VALUES ('-998223870', '330', '1008');
INSERT INTO `emp_sys` VALUES ('-998150143', '330', '1237');
INSERT INTO `emp_sys` VALUES ('-997482494', '330', '2084');
INSERT INTO `emp_sys` VALUES ('-994533374', '330', '557');
INSERT INTO `emp_sys` VALUES ('-994533373', '330', '558');
INSERT INTO `emp_sys` VALUES ('-994025471', '330', '810');
INSERT INTO `emp_sys` VALUES ('-989814783', '330', '1792');
INSERT INTO `emp_sys` VALUES ('-989093887', '334', '2078');
INSERT INTO `emp_sys` VALUES ('-981442558', '330', '422');
INSERT INTO `emp_sys` VALUES ('-981405694', '330', '1139');
INSERT INTO `emp_sys` VALUES ('-980705279', '334', '2056');
INSERT INTO `emp_sys` VALUES ('-977178623', '330', '1314');
INSERT INTO `emp_sys` VALUES ('-973058046', '330', '992');
INSERT INTO `emp_sys` VALUES ('-973053950', '330', '1659');
INSERT INTO `emp_sys` VALUES ('-969367550', '330', '514');
INSERT INTO `emp_sys` VALUES ('-968863742', '330', '1078');
INSERT INTO `emp_sys` VALUES ('-964669438', '330', '831');
INSERT INTO `emp_sys` VALUES ('-964628478', '330', '1143');
INSERT INTO `emp_sys` VALUES ('-964595710', '330', '1258');
INSERT INTO `emp_sys` VALUES ('-960983039', '330', '50');
INSERT INTO `emp_sys` VALUES ('-960462847', '330', '2040');
INSERT INTO `emp_sys` VALUES ('-960401406', '330', '1363');
INSERT INTO `emp_sys` VALUES ('-956784638', '330', '550');
INSERT INTO `emp_sys` VALUES ('-956784637', '330', '551');
INSERT INTO `emp_sys` VALUES ('-952045567', '330', '1174');
INSERT INTO `emp_sys` VALUES ('-947892223', '330', '973');
INSERT INTO `emp_sys` VALUES ('-947855358', '330', '1850');
INSERT INTO `emp_sys` VALUES ('-944205822', '330', '104');
INSERT INTO `emp_sys` VALUES ('-943718399', '330', '1381');
INSERT INTO `emp_sys` VALUES ('-943714303', '330', '1860');
INSERT INTO `emp_sys` VALUES ('-943615998', '330', '1997');
INSERT INTO `emp_sys` VALUES ('-940011518', '330', '82');
INSERT INTO `emp_sys` VALUES ('-935305215', '330', '797');
INSERT INTO `emp_sys` VALUES ('-931618814', '330', '583');
INSERT INTO `emp_sys` VALUES ('-931115006', '330', '1074');
INSERT INTO `emp_sys` VALUES ('-927428607', '330', '60');
INSERT INTO `emp_sys` VALUES ('-927424510', '330', '559');
INSERT INTO `emp_sys` VALUES ('-926916606', '330', '773');
INSERT INTO `emp_sys` VALUES ('-922722302', '330', '286');
INSERT INTO `emp_sys` VALUES ('-918458366', '330', '1273');
INSERT INTO `emp_sys` VALUES ('-914841598', '330', '515');
INSERT INTO `emp_sys` VALUES ('-914841597', '330', '516');
INSERT INTO `emp_sys` VALUES ('-914358271', '330', '1376');
INSERT INTO `emp_sys` VALUES ('-914333695', '330', '418');
INSERT INTO `emp_sys` VALUES ('-914264063', '330', '1274');
INSERT INTO `emp_sys` VALUES ('-910139390', '330', '401');
INSERT INTO `emp_sys` VALUES ('-905949182', '330', '834');
INSERT INTO `emp_sys` VALUES ('-905945087', '330', '347');
INSERT INTO `emp_sys` VALUES ('-905936895', '330', '2038');
INSERT INTO `emp_sys` VALUES ('-905908222', '330', '1175');
INSERT INTO `emp_sys` VALUES ('-905842686', '330', '1122');
INSERT INTO `emp_sys` VALUES ('-901750783', '330', '293');
INSERT INTO `emp_sys` VALUES ('-901726207', '334', '1648');
INSERT INTO `emp_sys` VALUES ('-901726206', '334', '1622');
INSERT INTO `emp_sys` VALUES ('-901697534', '330', '2130');
INSERT INTO `emp_sys` VALUES ('-893874174', '330', '136');
INSERT INTO `emp_sys` VALUES ('-893870078', '330', '552');
INSERT INTO `emp_sys` VALUES ('-889167871', '330', '783');
INSERT INTO `emp_sys` VALUES ('-889069567', '330', '1600');
INSERT INTO `emp_sys` VALUES ('-889065471', '330', '1099');
INSERT INTO `emp_sys` VALUES ('-884973566', '330', '441');
INSERT INTO `emp_sys` VALUES ('-881287166', '330', '470');
INSERT INTO `emp_sys` VALUES ('-872337406', '330', '1524');
INSERT INTO `emp_sys` VALUES ('-871747582', '330', '2054');
INSERT INTO `emp_sys` VALUES ('-868200447', '330', '951');
INSERT INTO `emp_sys` VALUES ('-864509951', '330', '560');
INSERT INTO `emp_sys` VALUES ('-864509950', '330', '561');
INSERT INTO `emp_sys` VALUES ('-864509949', '330', '585');
INSERT INTO `emp_sys` VALUES ('-864002047', '330', '802');
INSERT INTO `emp_sys` VALUES ('-859807742', '330', '318');
INSERT INTO `emp_sys` VALUES ('-859774975', '330', '1847');
INSERT INTO `emp_sys` VALUES ('-855617534', '330', '935');
INSERT INTO `emp_sys` VALUES ('-855613439', '330', '284');
INSERT INTO `emp_sys` VALUES ('-855597055', '334', '1785');
INSERT INTO `emp_sys` VALUES ('-855560190', '330', '1431');
INSERT INTO `emp_sys` VALUES ('-855511039', '330', '1100');
INSERT INTO `emp_sys` VALUES ('-851927038', '330', '517');
INSERT INTO `emp_sys` VALUES ('-851394559', '334', '1629');
INSERT INTO `emp_sys` VALUES ('-847732734', '330', '467');
INSERT INTO `emp_sys` VALUES ('-847249407', '330', '1415');
INSERT INTO `emp_sys` VALUES ('-847233023', '334', '1689');
INSERT INTO `emp_sys` VALUES ('-847138814', '330', '1957');
INSERT INTO `emp_sys` VALUES ('-838819839', '334', '1764');
INSERT INTO `emp_sys` VALUES ('-834646015', '330', '975');
INSERT INTO `emp_sys` VALUES ('-830955518', '330', '580');
INSERT INTO `emp_sys` VALUES ('-830451711', '330', '937');
INSERT INTO `emp_sys` VALUES ('-826765310', '330', '66');
INSERT INTO `emp_sys` VALUES ('-826183679', '330', '1351');
INSERT INTO `emp_sys` VALUES ('-826150910', '330', '1112');
INSERT INTO `emp_sys` VALUES ('-822083582', '330', '1396');
INSERT INTO `emp_sys` VALUES ('-822063103', '330', '909');
INSERT INTO `emp_sys` VALUES ('-817827839', '330', '1229');
INSERT INTO `emp_sys` VALUES ('-817811454', '330', '1482');
INSERT INTO `emp_sys` VALUES ('-816263167', '330', '1883');
INSERT INTO `emp_sys` VALUES ('-814182398', '330', '153');
INSERT INTO `emp_sys` VALUES ('-813674495', '330', '931');
INSERT INTO `emp_sys` VALUES ('-809459710', '330', '706');
INSERT INTO `emp_sys` VALUES ('-805281790', '330', '254');
INSERT INTO `emp_sys` VALUES ('-801599486', '330', '190');
INSERT INTO `emp_sys` VALUES ('-801595390', '330', '562');
INSERT INTO `emp_sys` VALUES ('-801087487', '330', '411');
INSERT INTO `emp_sys` VALUES ('-801034238', '330', '1511');
INSERT INTO `emp_sys` VALUES ('-797401087', '330', '586');
INSERT INTO `emp_sys` VALUES ('-792719358', '330', '1863');
INSERT INTO `emp_sys` VALUES ('-792698879', '330', '294');
INSERT INTO `emp_sys` VALUES ('-792698878', '330', '344');
INSERT INTO `emp_sys` VALUES ('-792645631', '330', '1502');
INSERT INTO `emp_sys` VALUES ('-789012479', '330', '553');
INSERT INTO `emp_sys` VALUES ('-788451326', '330', '1517');
INSERT INTO `emp_sys` VALUES ('-784818174', '330', '518');
INSERT INTO `emp_sys` VALUES ('-778514430', '330', '1886');
INSERT INTO `emp_sys` VALUES ('-775921663', '330', '320');
INSERT INTO `emp_sys` VALUES ('-775905278', '334', '1753');
INSERT INTO `emp_sys` VALUES ('-771731455', '330', '934');
INSERT INTO `emp_sys` VALUES ('-771731454', '330', '868');
INSERT INTO `emp_sys` VALUES ('-767533055', '330', '749');
INSERT INTO `emp_sys` VALUES ('-767496190', '330', '1227');
INSERT INTO `emp_sys` VALUES ('-767463423', '330', '1313');
INSERT INTO `emp_sys` VALUES ('-767463422', '330', '1243');
INSERT INTO `emp_sys` VALUES ('-763260926', '330', '2004');
INSERT INTO `emp_sys` VALUES ('-754954239', '330', '842');
INSERT INTO `emp_sys` VALUES ('-754950142', '330', '793');
INSERT INTO `emp_sys` VALUES ('-754237439', '334', '2103');
INSERT INTO `emp_sys` VALUES ('-750764031', '334', '1704');
INSERT INTO `emp_sys` VALUES ('-750739454', '334', '1749');
INSERT INTO `emp_sys` VALUES ('-750657535', '330', '1574');
INSERT INTO `emp_sys` VALUES ('-750043135', '333', '2108');
INSERT INTO `emp_sys` VALUES ('-740765695', '330', '1924');
INSERT INTO `emp_sys` VALUES ('-738684927', '330', '184');
INSERT INTO `emp_sys` VALUES ('-738156542', '330', '1773');
INSERT INTO `emp_sys` VALUES ('-734486526', '330', '587');
INSERT INTO `emp_sys` VALUES ('-734486525', '330', '588');
INSERT INTO `emp_sys` VALUES ('-733982719', '330', '985');
INSERT INTO `emp_sys` VALUES ('-733978623', '330', '239');
INSERT INTO `emp_sys` VALUES ('-733978622', '330', '353');
INSERT INTO `emp_sys` VALUES ('-725520383', '330', '1296');
INSERT INTO `emp_sys` VALUES ('-721358846', '330', '1130');
INSERT INTO `emp_sys` VALUES ('-717713406', '330', '89');
INSERT INTO `emp_sys` VALUES ('-717709311', '330', '519');
INSERT INTO `emp_sys` VALUES ('-713007103', '330', '768');
INSERT INTO `emp_sys` VALUES ('-712912895', '330', '1962');
INSERT INTO `emp_sys` VALUES ('-705126398', '330', '619');
INSERT INTO `emp_sys` VALUES ('-696741886', '330', '74');
INSERT INTO `emp_sys` VALUES ('-696238078', '330', '1699');
INSERT INTO `emp_sys` VALUES ('-687742975', '330', '1732');
INSERT INTO `emp_sys` VALUES ('-679452670', '330', '741');
INSERT INTO `emp_sys` VALUES ('-675221502', '330', '1222');
INSERT INTO `emp_sys` VALUES ('-675155966', '330', '1102');
INSERT INTO `emp_sys` VALUES ('-671571967', '330', '563');
INSERT INTO `emp_sys` VALUES ('-667377663', '330', '687');
INSERT INTO `emp_sys` VALUES ('-667377662', '330', '589');
INSERT INTO `emp_sys` VALUES ('-667377661', '330', '590');
INSERT INTO `emp_sys` VALUES ('-666873855', '330', '948');
INSERT INTO `emp_sys` VALUES ('-666869758', '330', '794');
INSERT INTO `emp_sys` VALUES ('-666832894', '330', '1201');
INSERT INTO `emp_sys` VALUES ('-663183358', '330', '668');
INSERT INTO `emp_sys` VALUES ('-662679551', '330', '1069');
INSERT INTO `emp_sys` VALUES ('-662675455', '330', '268');
INSERT INTO `emp_sys` VALUES ('-658505727', '330', '819');
INSERT INTO `emp_sys` VALUES ('-654286847', '330', '808');
INSERT INTO `emp_sys` VALUES ('-654270462', '334', '1770');
INSERT INTO `emp_sys` VALUES ('-650055679', '330', '1215');
INSERT INTO `emp_sys` VALUES ('-650055678', '330', '1126');
INSERT INTO `emp_sys` VALUES ('-645898238', '330', '769');
INSERT INTO `emp_sys` VALUES ('-645844991', '330', '1454');
INSERT INTO `emp_sys` VALUES ('-641724414', '330', '1854');
INSERT INTO `emp_sys` VALUES ('-638021631', '330', '56');
INSERT INTO `emp_sys` VALUES ('-624930815', '330', '955');
INSERT INTO `emp_sys` VALUES ('-620736511', '330', '943');
INSERT INTO `emp_sys` VALUES ('-617050110', '330', '199');
INSERT INTO `emp_sys` VALUES ('-617046015', '330', '541');
INSERT INTO `emp_sys` VALUES ('-616542206', '330', '899');
INSERT INTO `emp_sys` VALUES ('-616538111', '330', '747');
INSERT INTO `emp_sys` VALUES ('-615825407', '333', '2107');
INSERT INTO `emp_sys` VALUES ('-608153598', '330', '19');
INSERT INTO `emp_sys` VALUES ('-608149502', '330', '1658');
INSERT INTO `emp_sys` VALUES ('-608096255', '330', '1532');
INSERT INTO `emp_sys` VALUES ('-608079870', '330', '1235');
INSERT INTO `emp_sys` VALUES ('-604467198', '330', '106');
INSERT INTO `emp_sys` VALUES ('-604463103', '330', '591');
INSERT INTO `emp_sys` VALUES ('-604463102', '330', '592');
INSERT INTO `emp_sys` VALUES ('-603955198', '330', '1656');
INSERT INTO `emp_sys` VALUES ('-600268799', '330', '564');
INSERT INTO `emp_sys` VALUES ('-599662590', '330', '1572');
INSERT INTO `emp_sys` VALUES ('-595480574', '330', '1605');
INSERT INTO `emp_sys` VALUES ('-591880190', '330', '648');
INSERT INTO `emp_sys` VALUES ('-591372286', '330', '738');
INSERT INTO `emp_sys` VALUES ('-591273983', '330', '1581');
INSERT INTO `emp_sys` VALUES ('-583495679', '330', '186');
INSERT INTO `emp_sys` VALUES ('-583495678', '330', '73');
INSERT INTO `emp_sys` VALUES ('-579301375', '330', '58');
INSERT INTO `emp_sys` VALUES ('-579297279', '330', '660');
INSERT INTO `emp_sys` VALUES ('-578736127', '330', '1481');
INSERT INTO `emp_sys` VALUES ('-574595071', '330', '278');
INSERT INTO `emp_sys` VALUES ('-574525439', '330', '1323');
INSERT INTO `emp_sys` VALUES ('-570908670', '330', '459');
INSERT INTO `emp_sys` VALUES ('-570400766', '330', '423');
INSERT INTO `emp_sys` VALUES ('-566206462', '330', '233');
INSERT INTO `emp_sys` VALUES ('-562020351', '330', '1678');
INSERT INTO `emp_sys` VALUES ('-554135551', '330', '220');
INSERT INTO `emp_sys` VALUES ('-553553919', '330', '1263');
INSERT INTO `emp_sys` VALUES ('-549429247', '330', '371');
INSERT INTO `emp_sys` VALUES ('-549429246', '330', '388');
INSERT INTO `emp_sys` VALUES ('-545239038', '330', '920');
INSERT INTO `emp_sys` VALUES ('-545181694', '330', '1491');
INSERT INTO `emp_sys` VALUES ('-545165310', '330', '1304');
INSERT INTO `emp_sys` VALUES ('-545157119', '330', '2009');
INSERT INTO `emp_sys` VALUES ('-541548542', '330', '565');
INSERT INTO `emp_sys` VALUES ('-536846335', '330', '737');
INSERT INTO `emp_sys` VALUES ('-532553727', '330', '1579');
INSERT INTO `emp_sys` VALUES ('-528965631', '330', '456');
INSERT INTO `emp_sys` VALUES ('-522661886', '330', '1918');
INSERT INTO `emp_sys` VALUES ('-520577022', '330', '593');
INSERT INTO `emp_sys` VALUES ('-520052735', '330', '1765');
INSERT INTO `emp_sys` VALUES ('-519991294', '330', '1980');
INSERT INTO `emp_sys` VALUES ('-518467583', '330', '1937');
INSERT INTO `emp_sys` VALUES ('-516386815', '330', '31');
INSERT INTO `emp_sys` VALUES ('-516382719', '330', '504');
INSERT INTO `emp_sys` VALUES ('-515878910', '330', '855');
INSERT INTO `emp_sys` VALUES ('-515858431', '330', '1818');
INSERT INTO `emp_sys` VALUES ('-515837950', '330', '1148');
INSERT INTO `emp_sys` VALUES ('-510943230', '333', '2099');
INSERT INTO `emp_sys` VALUES ('-507416574', '330', '1276');
INSERT INTO `emp_sys` VALUES ('-507383807', '330', '1103');
INSERT INTO `emp_sys` VALUES ('-503295998', '330', '886');
INSERT INTO `emp_sys` VALUES ('-503275518', '330', '707');
INSERT INTO `emp_sys` VALUES ('-499113983', '330', '2140');
INSERT INTO `emp_sys` VALUES ('-499101694', '330', '873');
INSERT INTO `emp_sys` VALUES ('-499060734', '330', '1218');
INSERT INTO `emp_sys` VALUES ('-499027967', '330', '1282');
INSERT INTO `emp_sys` VALUES ('-494907390', '330', '965');
INSERT INTO `emp_sys` VALUES ('-482324479', '330', '853');
INSERT INTO `emp_sys` VALUES ('-478126078', '330', '745');
INSERT INTO `emp_sys` VALUES ('-477388799', '330', '2075');
INSERT INTO `emp_sys` VALUES ('-474439678', '330', '678');
INSERT INTO `emp_sys` VALUES ('-470245375', '330', '594');
INSERT INTO `emp_sys` VALUES ('-470245374', '330', '595');
INSERT INTO `emp_sys` VALUES ('-469737470', '330', '264');
INSERT INTO `emp_sys` VALUES ('-469639167', '330', '1603');
INSERT INTO `emp_sys` VALUES ('-465547262', '330', '940');
INSERT INTO `emp_sys` VALUES ('-465543167', '330', '780');
INSERT INTO `emp_sys` VALUES ('-457666558', '330', '78');
INSERT INTO `emp_sys` VALUES ('-457084927', '330', '1249');
INSERT INTO `emp_sys` VALUES ('-452960255', '330', '408');
INSERT INTO `emp_sys` VALUES ('-449277951', '330', '223');
INSERT INTO `emp_sys` VALUES ('-449273855', '330', '581');
INSERT INTO `emp_sys` VALUES ('-448749567', '330', '1742');
INSERT INTO `emp_sys` VALUES ('-448712703', '330', '1445');
INSERT INTO `emp_sys` VALUES ('-448696319', '330', '1364');
INSERT INTO `emp_sys` VALUES ('-444571646', '330', '263');
INSERT INTO `emp_sys` VALUES ('-440885246', '330', '684');
INSERT INTO `emp_sys` VALUES ('-440369150', '330', '2051');
INSERT INTO `emp_sys` VALUES ('-440340479', '330', '1127');
INSERT INTO `emp_sys` VALUES ('-440324094', '330', '1432');
INSERT INTO `emp_sys` VALUES ('-438775806', '330', '1923');
INSERT INTO `emp_sys` VALUES ('-436690943', '330', '505');
INSERT INTO `emp_sys` VALUES ('-436187134', '330', '1022');
INSERT INTO `emp_sys` VALUES ('-436174847', '330', '2049');
INSERT INTO `emp_sys` VALUES ('-436129791', '330', '1447');
INSERT INTO `emp_sys` VALUES ('-436129790', '330', '2127');
INSERT INTO `emp_sys` VALUES ('-432500734', '330', '40');
INSERT INTO `emp_sys` VALUES ('-431886335', '330', '1420');
INSERT INTO `emp_sys` VALUES ('-427802623', '330', '1677');
INSERT INTO `emp_sys` VALUES ('-427724798', '330', '1357');
INSERT INTO `emp_sys` VALUES ('-415723519', '330', '159');
INSERT INTO `emp_sys` VALUES ('-415219711', '330', '1720');
INSERT INTO `emp_sys` VALUES ('-414498814', '330', '2115');
INSERT INTO `emp_sys` VALUES ('-413609983', '330', '1906');
INSERT INTO `emp_sys` VALUES ('-411037694', '330', '1868');
INSERT INTO `emp_sys` VALUES ('-410947582', '330', '1261');
INSERT INTO `emp_sys` VALUES ('-406843390', '330', '1856');
INSERT INTO `emp_sys` VALUES ('-406806527', '334', '1822');
INSERT INTO `emp_sys` VALUES ('-402632703', '330', '878');
INSERT INTO `emp_sys` VALUES ('-402591742', '330', '1155');
INSERT INTO `emp_sys` VALUES ('-398397438', '330', '1138');
INSERT INTO `emp_sys` VALUES ('-394244095', '330', '1036');
INSERT INTO `emp_sys` VALUES ('-389976063', '330', '1340');
INSERT INTO `emp_sys` VALUES ('-389976062', '330', '1318');
INSERT INTO `emp_sys` VALUES ('-388444158', '330', '1913');
INSERT INTO `emp_sys` VALUES ('-386359295', '330', '506');
INSERT INTO `emp_sys` VALUES ('-386359294', '330', '507');
INSERT INTO `emp_sys` VALUES ('-385855487', '330', '869');
INSERT INTO `emp_sys` VALUES ('-385851390', '330', '373');
INSERT INTO `emp_sys` VALUES ('-385814527', '330', '1129');
INSERT INTO `emp_sys` VALUES ('-385781759', '330', '1306');
INSERT INTO `emp_sys` VALUES ('-382164990', '330', '471');
INSERT INTO `emp_sys` VALUES ('-377466879', '330', '1050');
INSERT INTO `emp_sys` VALUES ('-377466878', '330', '997');
INSERT INTO `emp_sys` VALUES ('-373252095', '334', '1831');
INSERT INTO `emp_sys` VALUES ('-369586174', '330', '119');
INSERT INTO `emp_sys` VALUES ('-369065982', '330', '1873');
INSERT INTO `emp_sys` VALUES ('-369049598', '334', '1647');
INSERT INTO `emp_sys` VALUES ('-364855294', '330', '1631');
INSERT INTO `emp_sys` VALUES ('-364142591', '330', '2092');
INSERT INTO `emp_sys` VALUES ('-361197567', '330', '148');
INSERT INTO `emp_sys` VALUES ('-360685566', '330', '426');
INSERT INTO `emp_sys` VALUES ('-360632319', '330', '1522');
INSERT INTO `emp_sys` VALUES ('-352804862', '330', '626');
INSERT INTO `emp_sys` VALUES ('-348102655', '330', '755');
INSERT INTO `emp_sys` VALUES ('-348102654', '330', '724');
INSERT INTO `emp_sys` VALUES ('-344420351', '330', '116');
INSERT INTO `emp_sys` VALUES ('-343924735', '330', '2139');
INSERT INTO `emp_sys` VALUES ('-335519742', '330', '764');
INSERT INTO `emp_sys` VALUES ('-331329535', '330', '919');
INSERT INTO `emp_sys` VALUES ('-331309054', '330', '1814');
INSERT INTO `emp_sys` VALUES ('-331272190', '330', '1460');
INSERT INTO `emp_sys` VALUES ('-327077887', '330', '1465');
INSERT INTO `emp_sys` VALUES ('-323444734', '330', '468');
INSERT INTO `emp_sys` VALUES ('-322883583', '330', '1478');
INSERT INTO `emp_sys` VALUES ('-319250430', '330', '508');
INSERT INTO `emp_sys` VALUES ('-318763006', '334', '1857');
INSERT INTO `emp_sys` VALUES ('-318750719', '330', '1714');
INSERT INTO `emp_sys` VALUES ('-318746623', '330', '914');
INSERT INTO `emp_sys` VALUES ('-318742526', '330', '727');
INSERT INTO `emp_sys` VALUES ('-318726143', '334', '1743');
INSERT INTO `emp_sys` VALUES ('-314548222', '330', '244');
INSERT INTO `emp_sys` VALUES ('-314523647', '334', '1615');
INSERT INTO `emp_sys` VALUES ('-310358015', '330', '833');
INSERT INTO `emp_sys` VALUES ('-310317054', '330', '1179');
INSERT INTO `emp_sys` VALUES ('-306667518', '330', '681');
INSERT INTO `emp_sys` VALUES ('-301912062', '330', '1457');
INSERT INTO `emp_sys` VALUES ('-301879295', '330', '1960');
INSERT INTO `emp_sys` VALUES ('-294535166', '330', '1944');
INSERT INTO `emp_sys` VALUES ('-293576703', '330', '438');
INSERT INTO `emp_sys` VALUES ('-293474302', '330', '1118');
INSERT INTO `emp_sys` VALUES ('-285114367', '330', '1610');
INSERT INTO `emp_sys` VALUES ('-285085694', '330', '1115');
INSERT INTO `emp_sys` VALUES ('-277311486', '330', '157');
INSERT INTO `emp_sys` VALUES ('-276803583', '330', '1066');
INSERT INTO `emp_sys` VALUES ('-276783103', '330', '1825');
INSERT INTO `emp_sys` VALUES ('-276774910', '334', '1619');
INSERT INTO `emp_sys` VALUES ('-276746238', '330', '1442');
INSERT INTO `emp_sys` VALUES ('-268357631', '330', '2131');
INSERT INTO `emp_sys` VALUES ('-268341247', '330', '1345');
INSERT INTO `emp_sys` VALUES ('-264724479', '330', '649');
INSERT INTO `emp_sys` VALUES ('-264216575', '330', '340');
INSERT INTO `emp_sys` VALUES ('-264216574', '330', '1662');
INSERT INTO `emp_sys` VALUES ('-264208382', '330', '2039');
INSERT INTO `emp_sys` VALUES ('-264163327', '330', '1440');
INSERT INTO `emp_sys` VALUES ('-259952639', '330', '1280');
INSERT INTO `emp_sys` VALUES ('-256335870', '330', '509');
INSERT INTO `emp_sys` VALUES ('-256335869', '330', '510');
INSERT INTO `emp_sys` VALUES ('-254226431', '330', '1931');
INSERT INTO `emp_sys` VALUES ('-251650047', '330', '2143');
INSERT INTO `emp_sys` VALUES ('-247443455', '330', '904');
INSERT INTO `emp_sys` VALUES ('-243752958', '330', '482');
INSERT INTO `emp_sys` VALUES ('-243249150', '330', '957');
INSERT INTO `emp_sys` VALUES ('-243146750', '330', '1730');
INSERT INTO `emp_sys` VALUES ('-239075326', '330', '1397');
INSERT INTO `emp_sys` VALUES ('-239050750', '330', '271');
INSERT INTO `emp_sys` VALUES ('-238981118', '330', '1255');
INSERT INTO `emp_sys` VALUES ('-235368447', '330', '42');
INSERT INTO `emp_sys` VALUES ('-234881023', '330', '1417');
INSERT INTO `emp_sys` VALUES ('-234860542', '330', '959');
INSERT INTO `emp_sys` VALUES ('-234856446', '330', '450');
INSERT INTO `emp_sys` VALUES ('-230662143', '330', '428');
INSERT INTO `emp_sys` VALUES ('-226471934', '330', '995');
INSERT INTO `emp_sys` VALUES ('-226467839', '330', '265');
INSERT INTO `emp_sys` VALUES ('-226390015', '330', '2007');
INSERT INTO `emp_sys` VALUES ('-222203903', '330', '1239');
INSERT INTO `emp_sys` VALUES ('-218103806', '330', '1402');
INSERT INTO `emp_sys` VALUES ('-214843390', '330', '1949');
INSERT INTO `emp_sys` VALUES ('-213884927', '330', '333');
INSERT INTO `emp_sys` VALUES ('-209694719', '330', '946');
INSERT INTO `emp_sys` VALUES ('-209690622', '330', '324');
INSERT INTO `emp_sys` VALUES ('-209666047', '330', '1653');
INSERT INTO `emp_sys` VALUES ('-209612799', '330', '2008');
INSERT INTO `emp_sys` VALUES ('-205496318', '330', '740');
INSERT INTO `emp_sys` VALUES ('-201809919', '330', '690');
INSERT INTO `emp_sys` VALUES ('-197132286', '330', '1411');
INSERT INTO `emp_sys` VALUES ('-192917502', '330', '881');
INSERT INTO `emp_sys` VALUES ('-192913406', '330', '807');
INSERT INTO `emp_sys` VALUES ('-192888831', '334', '1614');
INSERT INTO `emp_sys` VALUES ('-192876542', '330', '1147');
INSERT INTO `emp_sys` VALUES ('-188649471', '330', '1238');
INSERT INTO `emp_sys` VALUES ('-188645374', '330', '1609');
INSERT INTO `emp_sys` VALUES ('-185036798', '330', '71');
INSERT INTO `emp_sys` VALUES ('-185032702', '330', '679');
INSERT INTO `emp_sys` VALUES ('-184455167', '330', '1288');
INSERT INTO `emp_sys` VALUES ('-182923262', '330', '1893');
INSERT INTO `emp_sys` VALUES ('-180838399', '330', '603');
INSERT INTO `emp_sys` VALUES ('-180355071', '330', '2148');
INSERT INTO `emp_sys` VALUES ('-180334590', '330', '1079');
INSERT INTO `emp_sys` VALUES ('-180252671', '330', '1998');
INSERT INTO `emp_sys` VALUES ('-172449791', '330', '599');
INSERT INTO `emp_sys` VALUES ('-168255486', '330', '520');
INSERT INTO `emp_sys` VALUES ('-167694334', '330', '2121');
INSERT INTO `emp_sys` VALUES ('-159363071', '330', '947');
INSERT INTO `emp_sys` VALUES ('-159350782', '330', '2021');
INSERT INTO `emp_sys` VALUES ('-155189246', '330', '1410');
INSERT INTO `emp_sys` VALUES ('-155111422', '330', '1553');
INSERT INTO `emp_sys` VALUES ('-151482366', '330', '72');
INSERT INTO `emp_sys` VALUES ('-150974462', '330', '1080');
INSERT INTO `emp_sys` VALUES ('-150962175', '330', '2045');
INSERT INTO `emp_sys` VALUES ('-150933502', '330', '1230');
INSERT INTO `emp_sys` VALUES ('-146800639', '330', '1382');
INSERT INTO `emp_sys` VALUES ('-146776063', '330', '360');
INSERT INTO `emp_sys` VALUES ('-146706431', '330', '1244');
INSERT INTO `emp_sys` VALUES ('-142589950', '330', '1724');
INSERT INTO `emp_sys` VALUES ('-139345919', '330', '1948');
INSERT INTO `emp_sys` VALUES ('-138371071', '334', '1802');
INSERT INTO `emp_sys` VALUES ('-138371070', '330', '1829');
INSERT INTO `emp_sys` VALUES ('-138334206', '330', '1512');
INSERT INTO `emp_sys` VALUES ('-138285055', '330', '1096');
INSERT INTO `emp_sys` VALUES ('-134156287', '330', '1738');
INSERT INTO `emp_sys` VALUES ('-134107134', '330', '1604');
INSERT INTO `emp_sys` VALUES ('-134090751', '330', '1113');
INSERT INTO `emp_sys` VALUES ('-130510847', '330', '208');
INSERT INTO `emp_sys` VALUES ('-130002942', '330', '1005');
INSERT INTO `emp_sys` VALUES ('-129900543', '334', '1602');
INSERT INTO `emp_sys` VALUES ('-125804542', '330', '299');
INSERT INTO `emp_sys` VALUES ('-121573375', '330', '1196');
INSERT INTO `emp_sys` VALUES ('-121556991', '330', '1476');
INSERT INTO `emp_sys` VALUES ('-113221630', '330', '335');
INSERT INTO `emp_sys` VALUES ('-109539326', '330', '163');
INSERT INTO `emp_sys` VALUES ('-109035519', '330', '1705');
INSERT INTO `emp_sys` VALUES ('-109027326', '330', '253');
INSERT INTO `emp_sys` VALUES ('-105791486', '330', '1941');
INSERT INTO `emp_sys` VALUES ('-92254207', '330', '1037');
INSERT INTO `emp_sys` VALUES ('-92250111', '330', '274');
INSERT INTO `emp_sys` VALUES ('-88059903', '330', '21');
INSERT INTO `emp_sys` VALUES ('-88002558', '330', '2126');
INSERT INTO `emp_sys` VALUES ('-87953406', '330', '1107');
INSERT INTO `emp_sys` VALUES ('-83845119', '334', '1760');
INSERT INTO `emp_sys` VALUES ('-83783678', '330', '1979');
INSERT INTO `emp_sys` VALUES ('-80175103', '330', '677');
INSERT INTO `emp_sys` VALUES ('-79675391', '334', '1725');
INSERT INTO `emp_sys` VALUES ('-79671294', '330', '1017');
INSERT INTO `emp_sys` VALUES ('-79613950', '330', '1441');
INSERT INTO `emp_sys` VALUES ('-75472894', '330', '389');
INSERT INTO `emp_sys` VALUES ('-75456510', '334', '1803');
INSERT INTO `emp_sys` VALUES ('-75419646', '330', '1557');
INSERT INTO `emp_sys` VALUES ('-67596287', '330', '219');
INSERT INTO `emp_sys` VALUES ('-67092479', '334', '1701');
INSERT INTO `emp_sys` VALUES ('-67088382', '330', '1006');
INSERT INTO `emp_sys` VALUES ('-62894079', '330', '862');
INSERT INTO `emp_sys` VALUES ('-62894078', '330', '854');
INSERT INTO `emp_sys` VALUES ('-58720255', '330', '1389');
INSERT INTO `emp_sys` VALUES ('-54505471', '330', '1068');
INSERT INTO `emp_sys` VALUES ('-54484990', '334', '1835');
INSERT INTO `emp_sys` VALUES ('-50819071', '330', '51');
INSERT INTO `emp_sys` VALUES ('-50327551', '334', '1867');
INSERT INTO `emp_sys` VALUES ('-46624767', '330', '100');
INSERT INTO `emp_sys` VALUES ('-42430463', '330', '216');
INSERT INTO `emp_sys` VALUES ('-42430462', '330', '228');
INSERT INTO `emp_sys` VALUES ('-33476607', '330', '1535');
INSERT INTO `emp_sys` VALUES ('-29847551', '330', '103');
INSERT INTO `emp_sys` VALUES ('-29343743', '330', '1711');
INSERT INTO `emp_sys` VALUES ('-29335550', '330', '775');
INSERT INTO `emp_sys` VALUES ('-29282303', '330', '2123');
INSERT INTO `emp_sys` VALUES ('-25653247', '330', '161');
INSERT INTO `emp_sys` VALUES ('-25145343', '330', '987');
INSERT INTO `emp_sys` VALUES ('-25145342', '330', '837');
INSERT INTO `emp_sys` VALUES ('-20971518', '330', '1368');
INSERT INTO `emp_sys` VALUES ('-20946943', '330', '443');
INSERT INTO `emp_sys` VALUES ('-20930558', '330', '715');
INSERT INTO `emp_sys` VALUES ('-16756735', '330', '832');
INSERT INTO `emp_sys` VALUES ('-16015359', '334', '2074');
INSERT INTO `emp_sys` VALUES ('-12505087', '330', '1565');
INSERT INTO `emp_sys` VALUES ('-12488703', '330', '1324');
INSERT INTO `emp_sys` VALUES ('-8876030', '330', '69');
INSERT INTO `emp_sys` VALUES ('-8368126', '330', '976');
INSERT INTO `emp_sys` VALUES ('-8355838', '330', '2025');
INSERT INTO `emp_sys` VALUES ('-4677631', '330', '476');
INSERT INTO `emp_sys` VALUES ('-4169726', '330', '377');
INSERT INTO `emp_sys` VALUES ('1', '330', '1');
INSERT INTO `emp_sys` VALUES ('4218882', '330', '754');
INSERT INTO `emp_sys` VALUES ('8409089', '330', '885');
INSERT INTO `emp_sys` VALUES ('12603393', '330', '960');
INSERT INTO `emp_sys` VALUES ('12660737', '330', '1539');
INSERT INTO `emp_sys` VALUES ('16797697', '330', '933');
INSERT INTO `emp_sys` VALUES ('20996098', '330', '427');
INSERT INTO `emp_sys` VALUES ('21049346', '330', '1509');
INSERT INTO `emp_sys` VALUES ('21073922', '330', '2000');
INSERT INTO `emp_sys` VALUES ('21733378', '330', '2094');
INSERT INTO `emp_sys` VALUES ('25227265', '330', '1128');
INSERT INTO `emp_sys` VALUES ('28872705', '330', '105');
INSERT INTO `emp_sys` VALUES ('28876802', '330', '605');
INSERT INTO `emp_sys` VALUES ('29421569', '330', '1735');
INSERT INTO `emp_sys` VALUES ('29483010', '330', '1584');
INSERT INTO `emp_sys` VALUES ('33067010', '330', '125');
INSERT INTO `emp_sys` VALUES ('33677313', '330', '1084');
INSERT INTO `emp_sys` VALUES ('37769217', '330', '953');
INSERT INTO `emp_sys` VALUES ('37773314', '330', '407');
INSERT INTO `emp_sys` VALUES ('37826561', '330', '1499');
INSERT INTO `emp_sys` VALUES ('38510594', '330', '2080');
INSERT INTO `emp_sys` VALUES ('41963522', '330', '1015');
INSERT INTO `emp_sys` VALUES ('50331650', '330', '1373');
INSERT INTO `emp_sys` VALUES ('50409473', '330', '1474');
INSERT INTO `emp_sys` VALUES ('54042625', '330', '633');
INSERT INTO `emp_sys` VALUES ('54550529', '330', '291');
INSERT INTO `emp_sys` VALUES ('58232833', '330', '147');
INSERT INTO `emp_sys` VALUES ('58781697', '330', '1186');
INSERT INTO `emp_sys` VALUES ('62431233', '330', '642');
INSERT INTO `emp_sys` VALUES ('62935042', '330', '1031');
INSERT INTO `emp_sys` VALUES ('62976001', '330', '1194');
INSERT INTO `emp_sys` VALUES ('70815745', '330', '124');
INSERT INTO `emp_sys` VALUES ('71323650', '330', '1028');
INSERT INTO `emp_sys` VALUES ('79208449', '330', '624');
INSERT INTO `emp_sys` VALUES ('79208450', '330', '462');
INSERT INTO `emp_sys` VALUES ('79818753', '330', '1110');
INSERT INTO `emp_sys` VALUES ('83927042', '330', '1797');
INSERT INTO `emp_sys` VALUES ('83935233', '330', '1641');
INSERT INTO `emp_sys` VALUES ('87592962', '330', '138');
INSERT INTO `emp_sys` VALUES ('88096770', '330', '1728');
INSERT INTO `emp_sys` VALUES ('88100865', '330', '870');
INSERT INTO `emp_sys` VALUES ('88174593', '330', '1309');
INSERT INTO `emp_sys` VALUES ('92299265', '330', '765');
INSERT INTO `emp_sys` VALUES ('92299266', '330', '259');
INSERT INTO `emp_sys` VALUES ('92352513', '330', '1561');
INSERT INTO `emp_sys` VALUES ('95985666', '330', '601');
INSERT INTO `emp_sys` VALUES ('96493570', '330', '308');
INSERT INTO `emp_sys` VALUES ('96530433', '330', '1180');
INSERT INTO `emp_sys` VALUES ('104370178', '330', '88');
INSERT INTO `emp_sys` VALUES ('109092865', '330', '1761');
INSERT INTO `emp_sys` VALUES ('109162498', '330', '1959');
INSERT INTO `emp_sys` VALUES ('113287170', '330', '1804');
INSERT INTO `emp_sys` VALUES ('113307649', '330', '1193');
INSERT INTO `emp_sys` VALUES ('113324034', '330', '1495');
INSERT INTO `emp_sys` VALUES ('125341697', '330', '130');
INSERT INTO `emp_sys` VALUES ('127455233', '330', '1935');
INSERT INTO `emp_sys` VALUES ('129540097', '330', '670');
INSERT INTO `emp_sys` VALUES ('130056194', '330', '2019');
INSERT INTO `emp_sys` VALUES ('130084865', '330', '10');
INSERT INTO `emp_sys` VALUES ('134250497', '330', '1878');
INSERT INTO `emp_sys` VALUES ('139173889', '330', '2097');
INSERT INTO `emp_sys` VALUES ('142667777', '330', '1208');
INSERT INTO `emp_sys` VALUES ('146821121', '330', '856');
INSERT INTO `emp_sys` VALUES ('151056386', '330', '1152');
INSERT INTO `emp_sys` VALUES ('151072770', '330', '1461');
INSERT INTO `emp_sys` VALUES ('155213825', '330', '420');
INSERT INTO `emp_sys` VALUES ('159432706', '330', '1637');
INSERT INTO `emp_sys` VALUES ('167796737', '330', '796');
INSERT INTO `emp_sys` VALUES ('167796738', '330', '350');
INSERT INTO `emp_sys` VALUES ('167813122', '334', '1794');
INSERT INTO `emp_sys` VALUES ('176185346', '330', '372');
INSERT INTO `emp_sys` VALUES ('180375554', '330', '1018');
INSERT INTO `emp_sys` VALUES ('184061953', '330', '165');
INSERT INTO `emp_sys` VALUES ('184573953', '330', '236');
INSERT INTO `emp_sys` VALUES ('184590338', '330', '1774');
INSERT INTO `emp_sys` VALUES ('184610817', '330', '1153');
INSERT INTO `emp_sys` VALUES ('188784642', '330', '1823');
INSERT INTO `emp_sys` VALUES ('192450562', '330', '169');
INSERT INTO `emp_sys` VALUES ('193015809', '330', '1564');
INSERT INTO `emp_sys` VALUES ('197165058', '330', '2047');
INSERT INTO `emp_sys` VALUES ('197210114', '330', '1530');
INSERT INTO `emp_sys` VALUES ('201351169', '330', '399');
INSERT INTO `emp_sys` VALUES ('202088450', '330', '2083');
INSERT INTO `emp_sys` VALUES ('202952705', '330', '1921');
INSERT INTO `emp_sys` VALUES ('202952706', '330', '1897');
INSERT INTO `emp_sys` VALUES ('205545474', '330', '260');
INSERT INTO `emp_sys` VALUES ('209227777', '330', '218');
INSERT INTO `emp_sys` VALUES ('209764353', '330', '1626');
INSERT INTO `emp_sys` VALUES ('213426177', '330', '472');
INSERT INTO `emp_sys` VALUES ('213970946', '330', '1203');
INSERT INTO `emp_sys` VALUES ('218124290', '330', '857');
INSERT INTO `emp_sys` VALUES ('218144769', '330', '1755');
INSERT INTO `emp_sys` VALUES ('222322690', '330', '437');
INSERT INTO `emp_sys` VALUES ('226009089', '330', '686');
INSERT INTO `emp_sys` VALUES ('229752834', '330', '1951');
INSERT INTO `emp_sys` VALUES ('230686722', '330', '821');
INSERT INTO `emp_sys` VALUES ('234393602', '330', '226');
INSERT INTO `emp_sys` VALUES ('234901506', '330', '836');
INSERT INTO `emp_sys` VALUES ('234905602', '330', '430');
INSERT INTO `emp_sys` VALUES ('238592002', '330', '695');
INSERT INTO `emp_sys` VALUES ('239177730', '330', '1996');
INSERT INTO `emp_sys` VALUES ('242782210', '330', '68');
INSERT INTO `emp_sys` VALUES ('243310593', '334', '1830');
INSERT INTO `emp_sys` VALUES ('247484418', '330', '1027');
INSERT INTO `emp_sys` VALUES ('247525378', '330', '1134');
INSERT INTO `emp_sys` VALUES ('251678722', '330', '866');
INSERT INTO `emp_sys` VALUES ('251719682', '330', '1202');
INSERT INTO `emp_sys` VALUES ('252420097', '330', '2090');
INSERT INTO `emp_sys` VALUES ('255369218', '330', '659');
INSERT INTO `emp_sys` VALUES ('255868930', '330', '1694');
INSERT INTO `emp_sys` VALUES ('255885313', '330', '2020');
INSERT INTO `emp_sys` VALUES ('259559425', '330', '101');
INSERT INTO `emp_sys` VALUES ('260071425', '330', '444');
INSERT INTO `emp_sys` VALUES ('260071426', '330', '280');
INSERT INTO `emp_sys` VALUES ('260169730', '330', '1599');
INSERT INTO `emp_sys` VALUES ('267952129', '330', '615');
INSERT INTO `emp_sys` VALUES ('272723969', '330', '1307');
INSERT INTO `emp_sys` VALUES ('277585921', '330', '2098');
INSERT INTO `emp_sys` VALUES ('280535042', '330', '691');
INSERT INTO `emp_sys` VALUES ('281038849', '330', '851');
INSERT INTO `emp_sys` VALUES ('281096194', '330', '1434');
INSERT INTO `emp_sys` VALUES ('284729346', '330', '454');
INSERT INTO `emp_sys` VALUES ('285233154', '330', '1840');
INSERT INTO `emp_sys` VALUES ('289431554', '330', '336');
INSERT INTO `emp_sys` VALUES ('293625858', '330', '803');
INSERT INTO `emp_sys` VALUES ('297816066', '330', '1001');
INSERT INTO `emp_sys` VALUES ('301502466', '330', '67');
INSERT INTO `emp_sys` VALUES ('302030850', '330', '1826');
INSERT INTO `emp_sys` VALUES ('306204674', '330', '900');
INSERT INTO `emp_sys` VALUES ('307810305', '330', '1887');
INSERT INTO `emp_sys` VALUES ('310419458', '334', '1762');
INSERT INTO `emp_sys` VALUES ('314085377', '330', '93');
INSERT INTO `emp_sys` VALUES ('314089474', '330', '475');
INSERT INTO `emp_sys` VALUES ('314667010', '330', '1344');
INSERT INTO `emp_sys` VALUES ('318791682', '330', '362');
INSERT INTO `emp_sys` VALUES ('318861313', '330', '1334');
INSERT INTO `emp_sys` VALUES ('327249922', '330', '1321');
INSERT INTO `emp_sys` VALUES ('331370497', '330', '988');
INSERT INTO `emp_sys` VALUES ('339759106', '330', '846');
INSERT INTO `emp_sys` VALUES ('339800066', '330', '1156');
INSERT INTO `emp_sys` VALUES ('344027138', '330', '1355');
INSERT INTO `emp_sys` VALUES ('348151809', '330', '323');
INSERT INTO `emp_sys` VALUES ('348188674', '330', '8');
INSERT INTO `emp_sys` VALUES ('348205058', '330', '1518');
INSERT INTO `emp_sys` VALUES ('352342017', '330', '974');
INSERT INTO `emp_sys` VALUES ('352440321', '330', '1969');
INSERT INTO `emp_sys` VALUES ('352448514', '330', '1097');
INSERT INTO `emp_sys` VALUES ('356638722', '330', '1580');
INSERT INTO `emp_sys` VALUES ('360787969', '330', '1467');
INSERT INTO `emp_sys` VALUES ('364417025', '330', '149');
INSERT INTO `emp_sys` VALUES ('364961794', '330', '3');
INSERT INTO `emp_sys` VALUES ('373334017', '334', '1739');
INSERT INTO `emp_sys` VALUES ('373370882', '330', '1458');
INSERT INTO `emp_sys` VALUES ('377004034', '330', '653');
INSERT INTO `emp_sys` VALUES ('377548801', '330', '1177');
INSERT INTO `emp_sys` VALUES ('381198338', '330', '657');
INSERT INTO `emp_sys` VALUES ('381714434', '330', '2027');
INSERT INTO `emp_sys` VALUES ('385388545', '330', '86');
INSERT INTO `emp_sys` VALUES ('385392642', '330', '640');
INSERT INTO `emp_sys` VALUES ('385900546', '330', '814');
INSERT INTO `emp_sys` VALUES ('393781249', '330', '667');
INSERT INTO `emp_sys` VALUES ('394285057', '330', '1014');
INSERT INTO `emp_sys` VALUES ('394358786', '330', '1291');
INSERT INTO `emp_sys` VALUES ('398483457', '330', '359');
INSERT INTO `emp_sys` VALUES ('402677762', '330', '248');
INSERT INTO `emp_sys` VALUES ('406863873', '330', '1682');
INSERT INTO `emp_sys` VALUES ('406872066', '330', '339');
INSERT INTO `emp_sys` VALUES ('406925313', '330', '1554');
INSERT INTO `emp_sys` VALUES ('415252481', '330', '1686');
INSERT INTO `emp_sys` VALUES ('415268866', '330', '1879');
INSERT INTO `emp_sys` VALUES ('419450882', '330', '1038');
INSERT INTO `emp_sys` VALUES ('419454978', '330', '440');
INSERT INTO `emp_sys` VALUES ('423137281', '330', '185');
INSERT INTO `emp_sys` VALUES ('431529986', '330', '643');
INSERT INTO `emp_sys` VALUES ('432013314', '330', '2149');
INSERT INTO `emp_sys` VALUES ('435720193', '330', '180');
INSERT INTO `emp_sys` VALUES ('439918593', '330', '622');
INSERT INTO `emp_sys` VALUES ('440410113', '330', '2145');
INSERT INTO `emp_sys` VALUES ('440426498', '330', '442');
INSERT INTO `emp_sys` VALUES ('440442881', '334', '1799');
INSERT INTO `emp_sys` VALUES ('440496130', '330', '1316');
INSERT INTO `emp_sys` VALUES ('444620802', '330', '432');
INSERT INTO `emp_sys` VALUES ('448806913', '330', '1722');
INSERT INTO `emp_sys` VALUES ('448815105', '330', '261');
INSERT INTO `emp_sys` VALUES ('453062657', '330', '1438');
INSERT INTO `emp_sys` VALUES ('461398017', '330', '332');
INSERT INTO `emp_sys` VALUES ('465084417', '330', '662');
INSERT INTO `emp_sys` VALUES ('467193857', '330', '1900');
INSERT INTO `emp_sys` VALUES ('469786626', '330', '366');
INSERT INTO `emp_sys` VALUES ('469839874', '330', '1443');
INSERT INTO `emp_sys` VALUES ('474005506', '334', '1618');
INSERT INTO `emp_sys` VALUES ('478175234', '330', '337');
INSERT INTO `emp_sys` VALUES ('478244865', '330', '1257');
INSERT INTO `emp_sys` VALUES ('481857538', '330', '160');
INSERT INTO `emp_sys` VALUES ('482365442', '330', '864');
INSERT INTO `emp_sys` VALUES ('482394114', '330', '1639');
INSERT INTO `emp_sys` VALUES ('482439170', '330', '1348');
INSERT INTO `emp_sys` VALUES ('486563842', '334', '1663');
INSERT INTO `emp_sys` VALUES ('486600706', '330', '1144');
INSERT INTO `emp_sys` VALUES ('486658049', '330', '1975');
INSERT INTO `emp_sys` VALUES ('490246146', '330', '162');
INSERT INTO `emp_sys` VALUES ('490754050', '330', '1045');
INSERT INTO `emp_sys` VALUES ('494440450', '330', '133');
INSERT INTO `emp_sys` VALUES ('494989314', '330', '1170');
INSERT INTO `emp_sys` VALUES ('499146754', '330', '790');
INSERT INTO `emp_sys` VALUES ('499171329', '334', '1651');
INSERT INTO `emp_sys` VALUES ('499363841', '330', '23');
INSERT INTO `emp_sys` VALUES ('503341057', '330', '787');
INSERT INTO `emp_sys` VALUES ('503341058', '330', '798');
INSERT INTO `emp_sys` VALUES ('503357441', '330', '1763');
INSERT INTO `emp_sys` VALUES ('507023361', '330', '113');
INSERT INTO `emp_sys` VALUES ('507572225', '330', '1136');
INSERT INTO `emp_sys` VALUES ('509136898', '330', '1901');
INSERT INTO `emp_sys` VALUES ('511729666', '330', '448');
INSERT INTO `emp_sys` VALUES ('511832065', '330', '1085');
INSERT INTO `emp_sys` VALUES ('515411970', '330', '206');
INSERT INTO `emp_sys` VALUES ('515416066', '330', '683');
INSERT INTO `emp_sys` VALUES ('520134658', '334', '1787');
INSERT INTO `emp_sys` VALUES ('523800578', '330', '52');
INSERT INTO `emp_sys` VALUES ('524312578', '330', '726');
INSERT INTO `emp_sys` VALUES ('528515073', '330', '2024');
INSERT INTO `emp_sys` VALUES ('528523266', '330', '1821');
INSERT INTO `emp_sys` VALUES ('532697089', '330', '1025');
INSERT INTO `emp_sys` VALUES ('536891394', '330', '971');
INSERT INTO `emp_sys` VALUES ('536993794', '330', '1582');
INSERT INTO `emp_sys` VALUES ('541192193', '330', '1098');
INSERT INTO `emp_sys` VALUES ('545337345', '330', '1463');
INSERT INTO `emp_sys` VALUES ('545386498', '334', '1090');
INSERT INTO `emp_sys` VALUES ('548970498', '330', '639');
INSERT INTO `emp_sys` VALUES ('549502978', '334', '1632');
INSERT INTO `emp_sys` VALUES ('553160705', '330', '134');
INSERT INTO `emp_sys` VALUES ('555274241', '330', '1912');
INSERT INTO `emp_sys` VALUES ('555274242', '330', '1907');
INSERT INTO `emp_sys` VALUES ('557891586', '330', '1643');
INSERT INTO `emp_sys` VALUES ('562061313', '330', '267');
INSERT INTO `emp_sys` VALUES ('562061314', '330', '799');
INSERT INTO `emp_sys` VALUES ('562098177', '330', '1172');
INSERT INTO `emp_sys` VALUES ('566255618', '330', '314');
INSERT INTO `emp_sys` VALUES ('566263809', '330', '2050');
INSERT INTO `emp_sys` VALUES ('566325250', '330', '1266');
INSERT INTO `emp_sys` VALUES ('570445826', '330', '913');
INSERT INTO `emp_sys` VALUES ('574652417', '330', '2017');
INSERT INTO `emp_sys` VALUES ('578834434', '330', '1019');
INSERT INTO `emp_sys` VALUES ('582520833', '330', '80');
INSERT INTO `emp_sys` VALUES ('583135233', '330', '1418');
INSERT INTO `emp_sys` VALUES ('587218946', '330', '1680');
INSERT INTO `emp_sys` VALUES ('587223041', '330', '962');
INSERT INTO `emp_sys` VALUES ('587227138', '330', '779');
INSERT INTO `emp_sys` VALUES ('587243521', '330', '1782');
INSERT INTO `emp_sys` VALUES ('587243522', '330', '710');
INSERT INTO `emp_sys` VALUES ('587296770', '330', '1356');
INSERT INTO `emp_sys` VALUES ('590913538', '330', '602');
INSERT INTO `emp_sys` VALUES ('591429634', '330', '2042');
INSERT INTO `emp_sys` VALUES ('591454210', '330', '1848');
INSERT INTO `emp_sys` VALUES ('591499265', '330', '1992');
INSERT INTO `emp_sys` VALUES ('591519746', '334', '1591');
INSERT INTO `emp_sys` VALUES ('595107841', '330', '689');
INSERT INTO `emp_sys` VALUES ('595652610', '330', '1231');
INSERT INTO `emp_sys` VALUES ('595693569', '330', '1985');
INSERT INTO `emp_sys` VALUES ('599789569', '334', '1861');
INSERT INTO `emp_sys` VALUES ('599863297', '330', '1430');
INSERT INTO `emp_sys` VALUES ('599863298', '330', '1484');
INSERT INTO `emp_sys` VALUES ('603979777', '330', '823');
INSERT INTO `emp_sys` VALUES ('604004354', '330', '383');
INSERT INTO `emp_sys` VALUES ('612392962', '330', '364');
INSERT INTO `emp_sys` VALUES ('616075265', '330', '150');
INSERT INTO `emp_sys` VALUES ('616587265', '330', '760');
INSERT INTO `emp_sys` VALUES ('616656898', '330', '1289');
INSERT INTO `emp_sys` VALUES ('620269569', '330', '121');
INSERT INTO `emp_sys` VALUES ('620818433', '330', '1209');
INSERT INTO `emp_sys` VALUES ('620834818', '330', '1424');
INSERT INTO `emp_sys` VALUES ('624463873', '330', '174');
INSERT INTO `emp_sys` VALUES ('624467969', '330', '609');
INSERT INTO `emp_sys` VALUES ('633417729', '330', '2125');
INSERT INTO `emp_sys` VALUES ('633458690', '330', '1961');
INSERT INTO `emp_sys` VALUES ('637554690', '330', '888');
INSERT INTO `emp_sys` VALUES ('637558785', '330', '736');
INSERT INTO `emp_sys` VALUES ('637595649', '330', '12');
INSERT INTO `emp_sys` VALUES ('637612033', '330', '1558');
INSERT INTO `emp_sys` VALUES ('641748993', '330', '1055');
INSERT INTO `emp_sys` VALUES ('641753089', '330', '257');
INSERT INTO `emp_sys` VALUES ('641789953', '330', '1225');
INSERT INTO `emp_sys` VALUES ('641806337', '330', '2120');
INSERT INTO `emp_sys` VALUES ('641822722', '330', '1245');
INSERT INTO `emp_sys` VALUES ('645947394', '330', '242');
INSERT INTO `emp_sys` VALUES ('650137602', '330', '986');
INSERT INTO `emp_sys` VALUES ('651743233', '330', '1885');
INSERT INTO `emp_sys` VALUES ('654389250', '330', '1548');
INSERT INTO `emp_sys` VALUES ('658526209', '330', '882');
INSERT INTO `emp_sys` VALUES ('658538497', '330', '2036');
INSERT INTO `emp_sys` VALUES ('658538498', '330', '2018');
INSERT INTO `emp_sys` VALUES ('658583553', '330', '2137');
INSERT INTO `emp_sys` VALUES ('662216705', '330', '655');
INSERT INTO `emp_sys` VALUES ('662720514', '330', '989');
INSERT INTO `emp_sys` VALUES ('664326146', '330', '1932');
INSERT INTO `emp_sys` VALUES ('666914817', '330', '906');
INSERT INTO `emp_sys` VALUES ('666972162', '330', '1505');
INSERT INTO `emp_sys` VALUES ('667017218', '330', '1569');
INSERT INTO `emp_sys` VALUES ('670601217', '330', '175');
INSERT INTO `emp_sys` VALUES ('670601218', '330', '145');
INSERT INTO `emp_sys` VALUES ('675315713', '330', '2023');
INSERT INTO `emp_sys` VALUES ('675344386', '330', '1140');
INSERT INTO `emp_sys` VALUES ('675405825', '334', '1586');
INSERT INTO `emp_sys` VALUES ('679477249', '330', '1401');
INSERT INTO `emp_sys` VALUES ('679501825', '330', '235');
INSERT INTO `emp_sys` VALUES ('680239106', '334', '2079');
INSERT INTO `emp_sys` VALUES ('683184129', '330', '204');
INSERT INTO `emp_sys` VALUES ('683671554', '330', '1377');
INSERT INTO `emp_sys` VALUES ('692068353', '330', '2141');
INSERT INTO `emp_sys` VALUES ('692084737', '330', '374');
INSERT INTO `emp_sys` VALUES ('692121601', '330', '1214');
INSERT INTO `emp_sys` VALUES ('692183042', '330', '1595');
INSERT INTO `emp_sys` VALUES ('696348674', '330', '1337');
INSERT INTO `emp_sys` VALUES ('699514882', '330', '1947');
INSERT INTO `emp_sys` VALUES ('699961345', '330', '178');
INSERT INTO `emp_sys` VALUES ('700559361', '330', '1955');
INSERT INTO `emp_sys` VALUES ('708861953', '330', '326');
INSERT INTO `emp_sys` VALUES ('713052161', '330', '1011');
INSERT INTO `emp_sys` VALUES ('713056258', '330', '312');
INSERT INTO `emp_sys` VALUES ('713080833', '330', '1645');
INSERT INTO `emp_sys` VALUES ('713109505', '330', '2134');
INSERT INTO `emp_sys` VALUES ('716742657', '330', '658');
INSERT INTO `emp_sys` VALUES ('717246466', '330', '1034');
INSERT INTO `emp_sys` VALUES ('721547265', '330', '1106');
INSERT INTO `emp_sys` VALUES ('725614593', '330', '1405');
INSERT INTO `emp_sys` VALUES ('729833473', '330', '431');
INSERT INTO `emp_sys` VALUES ('729833474', '330', '247');
INSERT INTO `emp_sys` VALUES ('734003202', '330', '1367');
INSERT INTO `emp_sys` VALUES ('734044161', '330', '1751');
INSERT INTO `emp_sys` VALUES ('734081026', '330', '1433');
INSERT INTO `emp_sys` VALUES ('738246658', '334', '1621');
INSERT INTO `emp_sys` VALUES ('741904385', '330', '231');
INSERT INTO `emp_sys` VALUES ('742486017', '330', '1248');
INSERT INTO `emp_sys` VALUES ('743153665', '334', '2058');
INSERT INTO `emp_sys` VALUES ('746663937', '330', '1525');
INSERT INTO `emp_sys` VALUES ('746680321', '330', '1250');
INSERT INTO `emp_sys` VALUES ('750821377', '330', '1780');
INSERT INTO `emp_sys` VALUES ('750821378', '330', '1834');
INSERT INTO `emp_sys` VALUES ('750907394', '330', '1095');
INSERT INTO `emp_sys` VALUES ('755052546', '330', '1449');
INSERT INTO `emp_sys` VALUES ('755093506', '330', '1971');
INSERT INTO `emp_sys` VALUES ('756600833', '330', '1905');
INSERT INTO `emp_sys` VALUES ('760795137', '330', '1898');
INSERT INTO `emp_sys` VALUES ('767070209', '330', '188');
INSERT INTO `emp_sys` VALUES ('767578113', '330', '1041');
INSERT INTO `emp_sys` VALUES ('767598594', '330', '1833');
INSERT INTO `emp_sys` VALUES ('775962626', '334', '1698');
INSERT INTO `emp_sys` VALUES ('779657218', '330', '606');
INSERT INTO `emp_sys` VALUES ('780161025', '330', '949');
INSERT INTO `emp_sys` VALUES ('780161026', '330', '950');
INSERT INTO `emp_sys` VALUES ('780234753', '330', '1285');
INSERT INTO `emp_sys` VALUES ('784334849', '330', '1400');
INSERT INTO `emp_sys` VALUES ('784412673', '330', '1519');
INSERT INTO `emp_sys` VALUES ('784429058', '330', '1343');
INSERT INTO `emp_sys` VALUES ('788041730', '330', '144');
INSERT INTO `emp_sys` VALUES ('788549633', '330', '1010');
INSERT INTO `emp_sys` VALUES ('792743937', '330', '936');
INSERT INTO `emp_sys` VALUES ('792748034', '330', '791');
INSERT INTO `emp_sys` VALUES ('792784897', '330', '1211');
INSERT INTO `emp_sys` VALUES ('796434434', '330', '464');
INSERT INTO `emp_sys` VALUES ('797040642', '330', '1575');
INSERT INTO `emp_sys` VALUES ('801136641', '330', '307');
INSERT INTO `emp_sys` VALUES ('801136642', '330', '817');
INSERT INTO `emp_sys` VALUES ('804818946', '330', '38');
INSERT INTO `emp_sys` VALUES ('805384194', '330', '1426');
INSERT INTO `emp_sys` VALUES ('813719554', '330', '732');
INSERT INTO `emp_sys` VALUES ('813735937', '330', '708');
INSERT INTO `emp_sys` VALUES ('813756418', '330', '1226');
INSERT INTO `emp_sys` VALUES ('814456834', '330', '2086');
INSERT INTO `emp_sys` VALUES ('826298369', '330', '22');
INSERT INTO `emp_sys` VALUES ('830513153', '334', '1778');
INSERT INTO `emp_sys` VALUES ('830590977', '330', '1964');
INSERT INTO `emp_sys` VALUES ('834686978', '330', '917');
INSERT INTO `emp_sys` VALUES ('834691073', '330', '403');
INSERT INTO `emp_sys` VALUES ('838373378', '330', '230');
INSERT INTO `emp_sys` VALUES ('838885378', '330', '758');
INSERT INTO `emp_sys` VALUES ('843149313', '330', '1302');
INSERT INTO `emp_sys` VALUES ('844697601', '330', '1939');
INSERT INTO `emp_sys` VALUES ('847249409', '330', '827');
INSERT INTO `emp_sys` VALUES ('847269889', '330', '865');
INSERT INTO `emp_sys` VALUES ('847306753', '330', '1845');
INSERT INTO `emp_sys` VALUES ('850960386', '330', '567');
INSERT INTO `emp_sys` VALUES ('855154690', '330', '637');
INSERT INTO `emp_sys` VALUES ('855699458', '330', '1163');
INSERT INTO `emp_sys` VALUES ('855748610', '330', '1958');
INSERT INTO `emp_sys` VALUES ('859348994', '330', '479');
INSERT INTO `emp_sys` VALUES ('859348995', '330', '480');
INSERT INTO `emp_sys` VALUES ('864047105', '330', '1052');
INSERT INTO `emp_sys` VALUES ('864059394', '330', '2048');
INSERT INTO `emp_sys` VALUES ('864083969', '330', '2');
INSERT INTO `emp_sys` VALUES ('868253698', '330', '2013');
INSERT INTO `emp_sys` VALUES ('871927809', '330', '57');
INSERT INTO `emp_sys` VALUES ('871927810', '330', '61');
INSERT INTO `emp_sys` VALUES ('876126210', '330', '463');
INSERT INTO `emp_sys` VALUES ('876625922', '330', '1681');
INSERT INTO `emp_sys` VALUES ('876630018', '330', '1002');
INSERT INTO `emp_sys` VALUES ('880828417', '330', '734');
INSERT INTO `emp_sys` VALUES ('880828418', '330', '238');
INSERT INTO `emp_sys` VALUES ('884514818', '330', '620');
INSERT INTO `emp_sys` VALUES ('885022721', '330', '292');
INSERT INTO `emp_sys` VALUES ('885075970', '330', '1462');
INSERT INTO `emp_sys` VALUES ('889249793', '330', '4');
INSERT INTO `emp_sys` VALUES ('893411329', '330', '287');
INSERT INTO `emp_sys` VALUES ('901287938', '330', '193');
INSERT INTO `emp_sys` VALUES ('901799937', '330', '304');
INSERT INTO `emp_sys` VALUES ('901877762', '330', '1987');
INSERT INTO `emp_sys` VALUES ('906031105', '330', '1205');
INSERT INTO `emp_sys` VALUES ('906047489', '330', '1560');
INSERT INTO `emp_sys` VALUES ('906092545', '334', '1594');
INSERT INTO `emp_sys` VALUES ('910290946', '330', '1105');
INSERT INTO `emp_sys` VALUES ('910925826', '330', '2064');
INSERT INTO `emp_sys` VALUES ('915120129', '330', '2065');
INSERT INTO `emp_sys` VALUES ('918069249', '330', '568');
INSERT INTO `emp_sys` VALUES ('918069250', '330', '569');
INSERT INTO `emp_sys` VALUES ('918646785', '330', '1350');
INSERT INTO `emp_sys` VALUES ('922263553', '330', '458');
INSERT INTO `emp_sys` VALUES ('922763266', '330', '1671');
INSERT INTO `emp_sys` VALUES ('922771458', '330', '245');
INSERT INTO `emp_sys` VALUES ('922808322', '330', '1216');
INSERT INTO `emp_sys` VALUES ('922841089', '330', '1265');
INSERT INTO `emp_sys` VALUES ('926453761', '330', '109');
INSERT INTO `emp_sys` VALUES ('926961666', '330', '967');
INSERT INTO `emp_sys` VALUES ('926965761', '330', '435');
INSERT INTO `emp_sys` VALUES ('931160066', '334', '1665');
INSERT INTO `emp_sys` VALUES ('931196929', '330', '1151');
INSERT INTO `emp_sys` VALUES ('931213314', '330', '2128');
INSERT INTO `emp_sys` VALUES ('934842369', '330', '43');
INSERT INTO `emp_sys` VALUES ('935424001', '330', '1286');
INSERT INTO `emp_sys` VALUES ('935448577', '330', '1968');
INSERT INTO `emp_sys` VALUES ('939601922', '330', '1459');
INSERT INTO `emp_sys` VALUES ('947425282', '330', '75');
INSERT INTO `emp_sys` VALUES ('947933186', '330', '850');
INSERT INTO `emp_sys` VALUES ('952135681', '330', '704');
INSERT INTO `emp_sys` VALUES ('955367426', '330', '1945');
INSERT INTO `emp_sys` VALUES ('955817986', '330', '652');
INSERT INTO `emp_sys` VALUES ('956424194', '330', '1601');
INSERT INTO `emp_sys` VALUES ('960012290', '330', '645');
INSERT INTO `emp_sys` VALUES ('968904705', '330', '896');
INSERT INTO `emp_sys` VALUES ('968962050', '330', '1448');
INSERT INTO `emp_sys` VALUES ('973139969', '330', '1166');
INSERT INTO `emp_sys` VALUES ('976785409', '330', '232');
INSERT INTO `emp_sys` VALUES ('976789506', '330', '570');
INSERT INTO `emp_sys` VALUES ('977297409', '330', '804');
INSERT INTO `emp_sys` VALUES ('981565441', '330', '1613');
INSERT INTO `emp_sys` VALUES ('981569537', '330', '1994');
INSERT INTO `emp_sys` VALUES ('981594114', '330', '1117');
INSERT INTO `emp_sys` VALUES ('985681921', '330', '977');
INSERT INTO `emp_sys` VALUES ('989372418', '330', '697');
INSERT INTO `emp_sys` VALUES ('989880322', '330', '290');
INSERT INTO `emp_sys` VALUES ('989933569', '330', '1470');
INSERT INTO `emp_sys` VALUES ('994074626', '330', '243');
INSERT INTO `emp_sys` VALUES ('998244353', '330', '820');
INSERT INTO `emp_sys` VALUES ('998268930', '330', '390');
INSERT INTO `emp_sys` VALUES ('998346753', '330', '1988');
INSERT INTO `emp_sys` VALUES ('998371330', '330', '1101');
INSERT INTO `emp_sys` VALUES ('1002500097', '330', '1149');
INSERT INTO `emp_sys` VALUES ('1006710786', '330', '2135');
INSERT INTO `emp_sys` VALUES ('1010851842', '330', '250');
INSERT INTO `emp_sys` VALUES ('1010921474', '330', '1300');
INSERT INTO `emp_sys` VALUES ('1015025666', '330', '1864');
INSERT INTO `emp_sys` VALUES ('1015046145', '330', '405');
INSERT INTO `emp_sys` VALUES ('1015083009', '330', '1167');
INSERT INTO `emp_sys` VALUES ('1019318274', '330', '1982');
INSERT INTO `emp_sys` VALUES ('1023471617', '330', '1188');
INSERT INTO `emp_sys` VALUES ('1023504386', '330', '1290');
INSERT INTO `emp_sys` VALUES ('1027629057', '330', '449');
INSERT INTO `emp_sys` VALUES ('1036009474', '330', '1716');
INSERT INTO `emp_sys` VALUES ('1036013569', '330', '1067');
INSERT INTO `emp_sys` VALUES ('1037619201', '330', '1911');
INSERT INTO `emp_sys` VALUES ('1039704065', '330', '571');
INSERT INTO `emp_sys` VALUES ('1039704066', '330', '572');
INSERT INTO `emp_sys` VALUES ('1040236546', '330', '1646');
INSERT INTO `emp_sys` VALUES ('1048092673', '330', '696');
INSERT INTO `emp_sys` VALUES ('1048592386', '330', '1707');
INSERT INTO `emp_sys` VALUES ('1048637441', '330', '1171');
INSERT INTO `emp_sys` VALUES ('1048653825', '330', '1508');
INSERT INTO `emp_sys` VALUES ('1052794882', '330', '788');
INSERT INTO `emp_sys` VALUES ('1056997378', '334', '1876');
INSERT INTO `emp_sys` VALUES ('1057042434', '330', '2132');
INSERT INTO `emp_sys` VALUES ('1057701889', '333', '2112');
INSERT INTO `emp_sys` VALUES ('1060671489', '330', '33');
INSERT INTO `emp_sys` VALUES ('1061183490', '330', '289');
INSERT INTO `emp_sys` VALUES ('1065455617', '330', '2005');
INSERT INTO `emp_sys` VALUES ('1066090498', '333', '2114');
INSERT INTO `emp_sys` VALUES ('1069060097', '330', '107');
INSERT INTO `emp_sys` VALUES ('1069568001', '330', '1020');
INSERT INTO `emp_sys` VALUES ('1069608961', '330', '1178');
INSERT INTO `emp_sys` VALUES ('1073254402', '330', '120');
INSERT INTO `emp_sys` VALUES ('1073258498', '330', '461');
INSERT INTO `emp_sys` VALUES ('1073782785', '330', '1790');
INSERT INTO `emp_sys` VALUES ('1073836034', '330', '1330');
INSERT INTO `emp_sys` VALUES ('1077960706', '330', '357');
INSERT INTO `emp_sys` VALUES ('1078063105', '330', '1121');
INSERT INTO `emp_sys` VALUES ('1082155009', '330', '729');
INSERT INTO `emp_sys` VALUES ('1086345217', '330', '926');
INSERT INTO `emp_sys` VALUES ('1086349314', '330', '413');
INSERT INTO `emp_sys` VALUES ('1086373889', '334', '1630');
INSERT INTO `emp_sys` VALUES ('1086382082', '330', '1844');
INSERT INTO `emp_sys` VALUES ('1087950850', '330', '1899');
INSERT INTO `emp_sys` VALUES ('1090543617', '330', '363');
INSERT INTO `emp_sys` VALUES ('1090543618', '330', '381');
INSERT INTO `emp_sys` VALUES ('1094733825', '330', '843');
INSERT INTO `emp_sys` VALUES ('1094733826', '330', '958');
INSERT INTO `emp_sys` VALUES ('1094737922', '330', '424');
INSERT INTO `emp_sys` VALUES ('1098985473', '330', '1439');
INSERT INTO `emp_sys` VALUES ('1100533762', '330', '1919');
INSERT INTO `emp_sys` VALUES ('1103101954', '330', '1392');
INSERT INTO `emp_sys` VALUES ('1103134722', '330', '1874');
INSERT INTO `emp_sys` VALUES ('1104728065', '330', '1909');
INSERT INTO `emp_sys` VALUES ('1104728066', '330', '1920');
INSERT INTO `emp_sys` VALUES ('1107320834', '330', '406');
INSERT INTO `emp_sys` VALUES ('1107337217', '330', '1837');
INSERT INTO `emp_sys` VALUES ('1107357697', '330', '7');
INSERT INTO `emp_sys` VALUES ('1107357698', '330', '1228');
INSERT INTO `emp_sys` VALUES ('1107423233', '330', '1108');
INSERT INTO `emp_sys` VALUES ('1111007233', '330', '604');
INSERT INTO `emp_sys` VALUES ('1111007234', '330', '573');
INSERT INTO `emp_sys` VALUES ('1115197442', '330', '37');
INSERT INTO `emp_sys` VALUES ('1115709442', '330', '730');
INSERT INTO `emp_sys` VALUES ('1115807746', '330', '1589');
INSERT INTO `emp_sys` VALUES ('1119391746', '330', '214');
INSERT INTO `emp_sys` VALUES ('1119395841', '330', '574');
INSERT INTO `emp_sys` VALUES ('1124089858', '330', '1706');
INSERT INTO `emp_sys` VALUES ('1124134913', '330', '1204');
INSERT INTO `emp_sys` VALUES ('1125699586', '330', '1889');
INSERT INTO `emp_sys` VALUES ('1129893889', '330', '1926');
INSERT INTO `emp_sys` VALUES ('1132523521', '334', '1737');
INSERT INTO `emp_sys` VALUES ('1136734209', '330', '1521');
INSERT INTO `emp_sys` VALUES ('1140899841', '330', '1649');
INSERT INTO `emp_sys` VALUES ('1140928513', '330', '1527');
INSERT INTO `emp_sys` VALUES ('1140977665', '330', '1094');
INSERT INTO `emp_sys` VALUES ('1140977666', '330', '1120');
INSERT INTO `emp_sys` VALUES ('1145061378', '330', '1676');
INSERT INTO `emp_sys` VALUES ('1148751873', '330', '59');
INSERT INTO `emp_sys` VALUES ('1149280257', '334', '1815');
INSERT INTO `emp_sys` VALUES ('1149300738', '330', '1145');
INSERT INTO `emp_sys` VALUES ('1153454082', '330', '1047');
INSERT INTO `emp_sys` VALUES ('1153474561', '330', '1786');
INSERT INTO `emp_sys` VALUES ('1153495042', '330', '1734');
INSERT INTO `emp_sys` VALUES ('1159254017', '330', '1933');
INSERT INTO `emp_sys` VALUES ('1159254018', '330', '1922');
INSERT INTO `emp_sys` VALUES ('1161900034', '330', '1551');
INSERT INTO `emp_sys` VALUES ('1166041090', '330', '415');
INSERT INTO `emp_sys` VALUES ('1169727489', '330', '457');
INSERT INTO `emp_sys` VALUES ('1169727490', '330', '575');
INSERT INTO `emp_sys` VALUES ('1169727491', '330', '576');
INSERT INTO `emp_sys` VALUES ('1174528002', '330', '1733');
INSERT INTO `emp_sys` VALUES ('1182834689', '334', '1756');
INSERT INTO `emp_sys` VALUES ('1182855169', '330', '14');
INSERT INTO `emp_sys` VALUES ('1187012610', '330', '328');
INSERT INTO `emp_sys` VALUES ('1191202817', '330', '1070');
INSERT INTO `emp_sys` VALUES ('1195380738', '334', '1859');
INSERT INTO `emp_sys` VALUES ('1195401217', '330', '352');
INSERT INTO `emp_sys` VALUES ('1195438082', '330', '15');
INSERT INTO `emp_sys` VALUES ('1195454465', '330', '1453');
INSERT INTO `emp_sys` VALUES ('1196113921', '330', '2104');
INSERT INTO `emp_sys` VALUES ('1199591425', '330', '1039');
INSERT INTO `emp_sys` VALUES ('1203789826', '330', '285');
INSERT INTO `emp_sys` VALUES ('1203859458', '330', '1271');
INSERT INTO `emp_sys` VALUES ('1205391361', '330', '1915');
INSERT INTO `emp_sys` VALUES ('1215864833', '330', '610');
INSERT INTO `emp_sys` VALUES ('1216348162', '330', '1383');
INSERT INTO `emp_sys` VALUES ('1228972034', '334', '1807');
INSERT INTO `emp_sys` VALUES ('1228980226', '334', '1627');
INSERT INTO `emp_sys` VALUES ('1233203202', '330', '1533');
INSERT INTO `emp_sys` VALUES ('1236836354', '330', '577');
INSERT INTO `emp_sys` VALUES ('1237340162', '330', '20');
INSERT INTO `emp_sys` VALUES ('1237397506', '330', '1540');
INSERT INTO `emp_sys` VALUES ('1241530370', '330', '1718');
INSERT INTO `emp_sys` VALUES ('1241534466', '330', '1065');
INSERT INTO `emp_sys` VALUES ('1241640962', '330', '1086');
INSERT INTO `emp_sys` VALUES ('1243140097', '330', '1892');
INSERT INTO `emp_sys` VALUES ('1245732865', '330', '721');
INSERT INTO `emp_sys` VALUES ('1249419265', '330', '671');
INSERT INTO `emp_sys` VALUES ('1249923073', '330', '1841');
INSERT INTO `emp_sys` VALUES ('1249927170', '330', '279');
INSERT INTO `emp_sys` VALUES ('1250025473', '334', '1597');
INSERT INTO `emp_sys` VALUES ('1253613570', '330', '628');
INSERT INTO `emp_sys` VALUES ('1266704386', '330', '282');
INSERT INTO `emp_sys` VALUES ('1266712578', '330', '2041');
INSERT INTO `emp_sys` VALUES ('1270390786', '330', '566');
INSERT INTO `emp_sys` VALUES ('1270996994', '330', '1082');
INSERT INTO `emp_sys` VALUES ('1275092993', '330', '735');
INSERT INTO `emp_sys` VALUES ('1279262721', '330', '1414');
INSERT INTO `emp_sys` VALUES ('1279287297', '330', '378');
INSERT INTO `emp_sys` VALUES ('1282973697', '330', '616');
INSERT INTO `emp_sys` VALUES ('1287692289', '330', '718');
INSERT INTO `emp_sys` VALUES ('1287700482', '334', '1628');
INSERT INTO `emp_sys` VALUES ('1287745538', '330', '1354');
INSERT INTO `emp_sys` VALUES ('1291358209', '330', '217');
INSERT INTO `emp_sys` VALUES ('1291362305', '330', '669');
INSERT INTO `emp_sys` VALUES ('1291866114', '330', '1042');
INSERT INTO `emp_sys` VALUES ('1293471746', '330', '1934');
INSERT INTO `emp_sys` VALUES ('1300234241', '330', '1395');
INSERT INTO `emp_sys` VALUES ('1300328450', '330', '1352');
INSERT INTO `emp_sys` VALUES ('1303945217', '330', '578');
INSERT INTO `emp_sys` VALUES ('1303945218', '330', '579');
INSERT INTO `emp_sys` VALUES ('1308135426', '330', '146');
INSERT INTO `emp_sys` VALUES ('1308643330', '330', '863');
INSERT INTO `emp_sys` VALUES ('1308700674', '330', '1531');
INSERT INTO `emp_sys` VALUES ('1312329729', '330', '176');
INSERT INTO `emp_sys` VALUES ('1312333825', '330', '638');
INSERT INTO `emp_sys` VALUES ('1312333826', '330', '631');
INSERT INTO `emp_sys` VALUES ('1312841730', '334', '1655');
INSERT INTO `emp_sys` VALUES ('1316524034', '330', '132');
INSERT INTO `emp_sys` VALUES ('1321205761', '330', '825');
INSERT INTO `emp_sys` VALUES ('1321222145', '330', '1688');
INSERT INTO `emp_sys` VALUES ('1321226241', '330', '861');
INSERT INTO `emp_sys` VALUES ('1321328642', '330', '1578');
INSERT INTO `emp_sys` VALUES ('1324916738', '330', '651');
INSERT INTO `emp_sys` VALUES ('1325420546', '330', '894');
INSERT INTO `emp_sys` VALUES ('1325461505', '330', '1124');
INSERT INTO `emp_sys` VALUES ('1329106945', '330', '170');
INSERT INTO `emp_sys` VALUES ('1329614849', '330', '912');
INSERT INTO `emp_sys` VALUES ('1329688578', '330', '1332');
INSERT INTO `emp_sys` VALUES ('1331220482', '330', '1927');
INSERT INTO `emp_sys` VALUES ('1333305345', '330', '685');
INSERT INTO `emp_sys` VALUES ('1333805057', '330', '1697');
INSERT INTO `emp_sys` VALUES ('1334550529', '330', '2091');
INSERT INTO `emp_sys` VALUES ('1337495554', '330', '65');
INSERT INTO `emp_sys` VALUES ('1337499650', '330', '466');
INSERT INTO `emp_sys` VALUES ('1342181378', '330', '1853');
INSERT INTO `emp_sys` VALUES ('1342255105', '330', '1513');
INSERT INTO `emp_sys` VALUES ('1346396162', '330', '393');
INSERT INTO `emp_sys` VALUES ('1350582274', '330', '1691');
INSERT INTO `emp_sys` VALUES ('1354784770', '330', '766');
INSERT INTO `emp_sys` VALUES ('1354887170', '330', '1123');
INSERT INTO `emp_sys` VALUES ('1355522050', '330', '2089');
INSERT INTO `emp_sys` VALUES ('1356386306', '330', '1882');
INSERT INTO `emp_sys` VALUES ('1358954498', '330', '1366');
INSERT INTO `emp_sys` VALUES ('1359032321', '330', '1520');
INSERT INTO `emp_sys` VALUES ('1359056897', '330', '2006');
INSERT INTO `emp_sys` VALUES ('1363169281', '330', '1053');
INSERT INTO `emp_sys` VALUES ('1363181570', '330', '2035');
INSERT INTO `emp_sys` VALUES ('1363210242', '330', '1200');
INSERT INTO `emp_sys` VALUES ('1364774914', '330', '1929');
INSERT INTO `emp_sys` VALUES ('1367343105', '330', '1399');
INSERT INTO `emp_sys` VALUES ('1367437313', '330', '1251');
INSERT INTO `emp_sys` VALUES ('1371054081', '330', '497');
INSERT INTO `emp_sys` VALUES ('1375244289', '330', '98');
INSERT INTO `emp_sys` VALUES ('1375850498', '330', '1973');
INSERT INTO `emp_sys` VALUES ('1375854593', '334', '1587');
INSERT INTO `emp_sys` VALUES ('1379950593', '330', '343');
INSERT INTO `emp_sys` VALUES ('1384144897', '330', '386');
INSERT INTO `emp_sys` VALUES ('1384157185', '330', '1422');
INSERT INTO `emp_sys` VALUES ('1388392449', '330', '1472');
INSERT INTO `emp_sys` VALUES ('1388408834', '330', '1259');
INSERT INTO `emp_sys` VALUES ('1392021505', '330', '36');
INSERT INTO `emp_sys` VALUES ('1392533505', '330', '354');
INSERT INTO `emp_sys` VALUES ('1392570370', '330', '1189');
INSERT INTO `emp_sys` VALUES ('1396805633', '330', '1993');
INSERT INTO `emp_sys` VALUES ('1400918017', '330', '972');
INSERT INTO `emp_sys` VALUES ('1405116418', '330', '316');
INSERT INTO `emp_sys` VALUES ('1408802818', '330', '607');
INSERT INTO `emp_sys` VALUES ('1409409025', '330', '1583');
INSERT INTO `emp_sys` VALUES ('1413500929', '330', '944');
INSERT INTO `emp_sys` VALUES ('1413521410', '330', '709');
INSERT INTO `emp_sys` VALUES ('1415106562', '330', '1936');
INSERT INTO `emp_sys` VALUES ('1417715714', '334', '1810');
INSERT INTO `emp_sys` VALUES ('1421930498', '330', '1146');
INSERT INTO `emp_sys` VALUES ('1421946881', '330', '1497');
INSERT INTO `emp_sys` VALUES ('1426087938', '330', '761');
INSERT INTO `emp_sys` VALUES ('1426104322', '330', '714');
INSERT INTO `emp_sys` VALUES ('1429770241', '330', '224');
INSERT INTO `emp_sys` VALUES ('1430282241', '330', '404');
INSERT INTO `emp_sys` VALUES ('1433518082', '330', '1952');
INSERT INTO `emp_sys` VALUES ('1434501121', '330', '1633');
INSERT INTO `emp_sys` VALUES ('1438162945', '330', '498');
INSERT INTO `emp_sys` VALUES ('1438162946', '330', '499');
INSERT INTO `emp_sys` VALUES ('1438670849', '330', '813');
INSERT INTO `emp_sys` VALUES ('1438670850', '330', '421');
INSERT INTO `emp_sys` VALUES ('1438674946', '330', '702');
INSERT INTO `emp_sys` VALUES ('1442353154', '330', '142');
INSERT INTO `emp_sys` VALUES ('1442865154', '330', '288');
INSERT INTO `emp_sys` VALUES ('1442934785', '330', '1325');
INSERT INTO `emp_sys` VALUES ('1448660993', '330', '1890');
INSERT INTO `emp_sys` VALUES ('1450741761', '330', '83');
INSERT INTO `emp_sys` VALUES ('1451229185', '330', '1385');
INSERT INTO `emp_sys` VALUES ('1451253761', '330', '241');
INSERT INTO `emp_sys` VALUES ('1451290626', '330', '1125');
INSERT INTO `emp_sys` VALUES ('1455448066', '330', '355');
INSERT INTO `emp_sys` VALUES ('1455501314', '330', '1547');
INSERT INTO `emp_sys` VALUES ('1459130369', '330', '63');
INSERT INTO `emp_sys` VALUES ('1459617793', '330', '1379');
INSERT INTO `emp_sys` VALUES ('1459695618', '330', '1464');
INSERT INTO `emp_sys` VALUES ('1463832578', '330', '991');
INSERT INTO `emp_sys` VALUES ('1468006401', '330', '826');
INSERT INTO `emp_sys` VALUES ('1468743682', '330', '2109');
INSERT INTO `emp_sys` VALUES ('1472225282', '330', '262');
INSERT INTO `emp_sys` VALUES ('1472262145', '330', '1173');
INSERT INTO `emp_sys` VALUES ('1480609793', '330', '839');
INSERT INTO `emp_sys` VALUES ('1484804098', '330', '982');
INSERT INTO `emp_sys` VALUES ('1489002497', '330', '434');
INSERT INTO `emp_sys` VALUES ('1489055746', '330', '1444');
INSERT INTO `emp_sys` VALUES ('1492238338', '330', '1953');
INSERT INTO `emp_sys` VALUES ('1493934082', '330', '2077');
INSERT INTO `emp_sys` VALUES ('1501569025', '330', '2146');
INSERT INTO `emp_sys` VALUES ('1501638658', '330', '2129');
INSERT INTO `emp_sys` VALUES ('1505271810', '330', '608');
INSERT INTO `emp_sys` VALUES ('1505849345', '330', '1254');
INSERT INTO `emp_sys` VALUES ('1506492417', '333', '2110');
INSERT INTO `emp_sys` VALUES ('1509965826', '330', '1690');
INSERT INTO `emp_sys` VALUES ('1509998594', '330', '1617');
INSERT INTO `emp_sys` VALUES ('1513656321', '330', '87');
INSERT INTO `emp_sys` VALUES ('1514246145', '330', '1986');
INSERT INTO `emp_sys` VALUES ('1518387201', '330', '1625');
INSERT INTO `emp_sys` VALUES ('1518415874', '330', '1489');
INSERT INTO `emp_sys` VALUES ('1518448641', '330', '1956');
INSERT INTO `emp_sys` VALUES ('1522049026', '330', '500');
INSERT INTO `emp_sys` VALUES ('1522593794', '330', '1182');
INSERT INTO `emp_sys` VALUES ('1526747137', '330', '938');
INSERT INTO `emp_sys` VALUES ('1543020546', '330', '629');
INSERT INTO `emp_sys` VALUES ('1543598081', '330', '1256');
INSERT INTO `emp_sys` VALUES ('1547722753', '330', '319');
INSERT INTO `emp_sys` VALUES ('1547776002', '330', '1546');
INSERT INTO `emp_sys` VALUES ('1552134146', '330', '25');
INSERT INTO `emp_sys` VALUES ('1555599362', '330', '194');
INSERT INTO `emp_sys` VALUES ('1556111361', '330', '275');
INSERT INTO `emp_sys` VALUES ('1559793666', '330', '192');
INSERT INTO `emp_sys` VALUES ('1563992065', '330', '674');
INSERT INTO `emp_sys` VALUES ('1564483585', '330', '700');
INSERT INTO `emp_sys` VALUES ('1564499970', '330', '777');
INSERT INTO `emp_sys` VALUES ('1564553218', '330', '1452');
INSERT INTO `emp_sys` VALUES ('1568186369', '330', '501');
INSERT INTO `emp_sys` VALUES ('1568186370', '330', '502');
INSERT INTO `emp_sys` VALUES ('1568731138', '330', '1213');
INSERT INTO `emp_sys` VALUES ('1568796674', '334', '1091');
INSERT INTO `emp_sys` VALUES ('1576570882', '330', '195');
INSERT INTO `emp_sys` VALUES ('1577119745', '330', '1131');
INSERT INTO `emp_sys` VALUES ('1581273089', '330', '1059');
INSERT INTO `emp_sys` VALUES ('1581273090', '330', '954');
INSERT INTO `emp_sys` VALUES ('1581379585', '330', '1088');
INSERT INTO `emp_sys` VALUES ('1585471489', '330', '365');
INSERT INTO `emp_sys` VALUES ('1585508353', '330', '1210');
INSERT INTO `emp_sys` VALUES ('1589153794', '330', '27');
INSERT INTO `emp_sys` VALUES ('1589661698', '330', '1075');
INSERT INTO `emp_sys` VALUES ('1593856002', '330', '1012');
INSERT INTO `emp_sys` VALUES ('1598046210', '330', '1687');
INSERT INTO `emp_sys` VALUES ('1598107649', '330', '1534');
INSERT INTO `emp_sys` VALUES ('1601740801', '330', '641');
INSERT INTO `emp_sys` VALUES ('1610706945', '330', '1342');
INSERT INTO `emp_sys` VALUES ('1614831617', '330', '240');
INSERT INTO `emp_sys` VALUES ('1614831618', '330', '809');
INSERT INTO `emp_sys` VALUES ('1614884865', '330', '1451');
INSERT INTO `emp_sys` VALUES ('1618518017', '330', '486');
INSERT INTO `emp_sys` VALUES ('1619025921', '330', '277');
INSERT INTO `emp_sys` VALUES ('1619042305', '330', '1832');
INSERT INTO `emp_sys` VALUES ('1619079169', '330', '1537');
INSERT INTO `emp_sys` VALUES ('1619111937', '334', '1607');
INSERT INTO `emp_sys` VALUES ('1627406337', '330', '1721');
INSERT INTO `emp_sys` VALUES ('1627439105', '330', '1635');
INSERT INTO `emp_sys` VALUES ('1627484162', '330', '1242');
INSERT INTO `emp_sys` VALUES ('1631686658', '330', '1423');
INSERT INTO `emp_sys` VALUES ('1635291137', '330', '114');
INSERT INTO `emp_sys` VALUES ('1635295233', '330', '531');
INSERT INTO `emp_sys` VALUES ('1635799042', '330', '956');
INSERT INTO `emp_sys` VALUES ('1635803138', '330', '392');
INSERT INTO `emp_sys` VALUES ('1639997442', '330', '757');
INSERT INTO `emp_sys` VALUES ('1644261378', '330', '1252');
INSERT INTO `emp_sys` VALUES ('1648381954', '330', '1032');
INSERT INTO `emp_sys` VALUES ('1648386049', '330', '763');
INSERT INTO `emp_sys` VALUES ('1652068354', '330', '45');
INSERT INTO `emp_sys` VALUES ('1656266754', '330', '460');
INSERT INTO `emp_sys` VALUES ('1656770561', '330', '1003');
INSERT INTO `emp_sys` VALUES ('1660964865', '330', '874');
INSERT INTO `emp_sys` VALUES ('1661005825', '330', '1141');
INSERT INTO `emp_sys` VALUES ('1664651266', '330', '91');
INSERT INTO `emp_sys` VALUES ('1673560066', '330', '2028');
INSERT INTO `emp_sys` VALUES ('1673588737', '330', '1185');
INSERT INTO `emp_sys` VALUES ('1677234178', '330', '203');
INSERT INTO `emp_sys` VALUES ('1677238274', '330', '481');
INSERT INTO `emp_sys` VALUES ('1677762562', '334', '1827');
INSERT INTO `emp_sys` VALUES ('1681428481', '330', '221');
INSERT INTO `emp_sys` VALUES ('1681432577', '330', '487');
INSERT INTO `emp_sys` VALUES ('1686126594', '330', '1684');
INSERT INTO `emp_sys` VALUES ('1690382338', '330', '1556');
INSERT INTO `emp_sys` VALUES ('1694519298', '330', '979');
INSERT INTO `emp_sys` VALUES ('1694531586', '330', '2046');
INSERT INTO `emp_sys` VALUES ('1698205698', '330', '32');
INSERT INTO `emp_sys` VALUES ('1698770946', '330', '1486');
INSERT INTO `emp_sys` VALUES ('1701953537', '330', '1946');
INSERT INTO `emp_sys` VALUES ('1702404098', '330', '532');
INSERT INTO `emp_sys` VALUES ('1702404099', '330', '533');
INSERT INTO `emp_sys` VALUES ('1702907906', '330', '1049');
INSERT INTO `emp_sys` VALUES ('1706594305', '330', '115');
INSERT INTO `emp_sys` VALUES ('1706594306', '330', '126');
INSERT INTO `emp_sys` VALUES ('1711316993', '334', '1754');
INSERT INTO `emp_sys` VALUES ('1715494913', '330', '384');
INSERT INTO `emp_sys` VALUES ('1715494914', '330', '774');
INSERT INTO `emp_sys` VALUES ('1715511297', '334', '1813');
INSERT INTO `emp_sys` VALUES ('1715511298', '334', '1744');
INSERT INTO `emp_sys` VALUES ('1715597313', '330', '1419');
INSERT INTO `emp_sys` VALUES ('1719181314', '330', '492');
INSERT INTO `emp_sys` VALUES ('1719181315', '330', '493');
INSERT INTO `emp_sys` VALUES ('1728151553', '330', '1611');
INSERT INTO `emp_sys` VALUES ('1732272130', '330', '376');
INSERT INTO `emp_sys` VALUES ('1735954433', '330', '29');
INSERT INTO `emp_sys` VALUES ('1736441858', '330', '1378');
INSERT INTO `emp_sys` VALUES ('1736458242', '330', '1670');
INSERT INTO `emp_sys` VALUES ('1740652545', '330', '1715');
INSERT INTO `emp_sys` VALUES ('1740660738', '330', '315');
INSERT INTO `emp_sys` VALUES ('1740668930', '334', '1875');
INSERT INTO `emp_sys` VALUES ('1744347137', '330', '488');
INSERT INTO `emp_sys` VALUES ('1749045249', '330', '941');
INSERT INTO `emp_sys` VALUES ('1749151745', '330', '1119');
INSERT INTO `emp_sys` VALUES ('1757437954', '330', '382');
INSERT INTO `emp_sys` VALUES ('1757507586', '330', '1284');
INSERT INTO `emp_sys` VALUES ('1761120257', '330', '95');
INSERT INTO `emp_sys` VALUES ('1761628162', '330', '1040');
INSERT INTO `emp_sys` VALUES ('1761640449', '330', '2030');
INSERT INTO `emp_sys` VALUES ('1761701890', '330', '1268');
INSERT INTO `emp_sys` VALUES ('1761726465', '330', '1977');
INSERT INTO `emp_sys` VALUES ('1764868097', '330', '1943');
INSERT INTO `emp_sys` VALUES ('1765822465', '330', '999');
INSERT INTO `emp_sys` VALUES ('1765834753', '330', '1869');
INSERT INTO `emp_sys` VALUES ('1765863425', '330', '1190');
INSERT INTO `emp_sys` VALUES ('1765863426', '330', '1142');
INSERT INTO `emp_sys` VALUES ('1765896193', '330', '1358');
INSERT INTO `emp_sys` VALUES ('1765924865', '330', '1585');
INSERT INTO `emp_sys` VALUES ('1769512961', '330', '534');
INSERT INTO `emp_sys` VALUES ('1774215169', '330', '396');
INSERT INTO `emp_sys` VALUES ('1777897473', '330', '181');
INSERT INTO `emp_sys` VALUES ('1782095873', '330', '494');
INSERT INTO `emp_sys` VALUES ('1782603778', '330', '425');
INSERT INTO `emp_sys` VALUES ('1782640642', '330', '1159');
INSERT INTO `emp_sys` VALUES ('1786851330', '330', '1455');
INSERT INTO `emp_sys` VALUES ('1786896386', '330', '1598');
INSERT INTO `emp_sys` VALUES ('1790984194', '330', '1667');
INSERT INTO `emp_sys` VALUES ('1792622593', '334', '1881');
INSERT INTO `emp_sys` VALUES ('1795182594', '330', '872');
INSERT INTO `emp_sys` VALUES ('1795186689', '330', '349');
INSERT INTO `emp_sys` VALUES ('1795264513', '330', '2002');
INSERT INTO `emp_sys` VALUES ('1798873090', '330', '611');
INSERT INTO `emp_sys` VALUES ('1799360514', '334', '1858');
INSERT INTO `emp_sys` VALUES ('1799372802', '330', '1710');
INSERT INTO `emp_sys` VALUES ('1799380994', '330', '325');
INSERT INTO `emp_sys` VALUES ('1807261697', '330', '489');
INSERT INTO `emp_sys` VALUES ('1807769602', '330', '310');
INSERT INTO `emp_sys` VALUES ('1811959810', '330', '983');
INSERT INTO `emp_sys` VALUES ('1811980289', '334', '1789');
INSERT INTO `emp_sys` VALUES ('1816133633', '330', '1409');
INSERT INTO `emp_sys` VALUES ('1819840513', '330', '222');
INSERT INTO `emp_sys` VALUES ('1819840514', '330', '76');
INSERT INTO `emp_sys` VALUES ('1820352514', '330', '805');
INSERT INTO `emp_sys` VALUES ('1820389377', '330', '1176');
INSERT INTO `emp_sys` VALUES ('1820405762', '330', '1493');
INSERT INTO `emp_sys` VALUES ('1828233218', '330', '644');
INSERT INTO `emp_sys` VALUES ('1828757505', '330', '1777');
INSERT INTO `emp_sys` VALUES ('1832423425', '330', '167');
INSERT INTO `emp_sys` VALUES ('1832427522', '330', '535');
INSERT INTO `emp_sys` VALUES ('1832427523', '330', '536');
INSERT INTO `emp_sys` VALUES ('1832914945', '330', '1866');
INSERT INTO `emp_sys` VALUES ('1832943617', '334', '1877');
INSERT INTO `emp_sys` VALUES ('1837129730', '330', '722');
INSERT INTO `emp_sys` VALUES ('1837182978', '330', '1523');
INSERT INTO `emp_sys` VALUES ('1841319938', '330', '897');
INSERT INTO `emp_sys` VALUES ('1845010434', '330', '495');
INSERT INTO `emp_sys` VALUES ('1845514241', '330', '1004');
INSERT INTO `emp_sys` VALUES ('1857589249', '330', '127');
INSERT INTO `emp_sys` VALUES ('1857589250', '330', '94');
INSERT INTO `emp_sys` VALUES ('1858097153', '330', '942');
INSERT INTO `emp_sys` VALUES ('1858101250', '330', '269');
INSERT INTO `emp_sys` VALUES ('1859702785', '330', '1925');
INSERT INTO `emp_sys` VALUES ('1862291457', '330', '910');
INSERT INTO `emp_sys` VALUES ('1866489858', '330', '811');
INSERT INTO `emp_sys` VALUES ('1866559490', '330', '1320');
INSERT INTO `emp_sys` VALUES ('1870684162', '330', '311');
INSERT INTO `emp_sys` VALUES ('1870700546', '334', '1783');
INSERT INTO `emp_sys` VALUES ('1879068673', '330', '849');
INSERT INTO `emp_sys` VALUES ('1879166978', '330', '1970');
INSERT INTO `emp_sys` VALUES ('1880674305', '330', '1904');
INSERT INTO `emp_sys` VALUES ('1883262977', '330', '1064');
INSERT INTO `emp_sys` VALUES ('1883283458', '334', '1766');
INSERT INTO `emp_sys` VALUES ('1883303938', '330', '1137');
INSERT INTO `emp_sys` VALUES ('1883320321', '330', '2119');
INSERT INTO `emp_sys` VALUES ('1884004353', '330', '2071');
INSERT INTO `emp_sys` VALUES ('1891647490', '330', '1727');
INSERT INTO `emp_sys` VALUES ('1895337986', '330', '90');
INSERT INTO `emp_sys` VALUES ('1895342082', '330', '537');
INSERT INTO `emp_sys` VALUES ('1895845889', '330', '1076');
INSERT INTO `emp_sys` VALUES ('1895903234', '330', '1562');
INSERT INTO `emp_sys` VALUES ('1900044289', '330', '782');
INSERT INTO `emp_sys` VALUES ('1900097537', '330', '1503');
INSERT INTO `emp_sys` VALUES ('1900113922', '330', '1322');
INSERT INTO `emp_sys` VALUES ('1900142594', '330', '1596');
INSERT INTO `emp_sys` VALUES ('1900781570', '330', '2082');
INSERT INTO `emp_sys` VALUES ('1908432897', '330', '743');
INSERT INTO `emp_sys` VALUES ('1908441090', '330', '2026');
INSERT INTO `emp_sys` VALUES ('1909075969', '330', '2053');
INSERT INTO `emp_sys` VALUES ('1912115201', '330', '172');
INSERT INTO `emp_sys` VALUES ('1912696834', '330', '1267');
INSERT INTO `emp_sys` VALUES ('1916837890', '330', '713');
INSERT INTO `emp_sys` VALUES ('1916858369', '330', '1220');
INSERT INTO `emp_sys` VALUES ('1916874754', '330', '1529');
INSERT INTO `emp_sys` VALUES ('1916891138', '330', '1247');
INSERT INTO `emp_sys` VALUES ('1916923906', '330', '1109');
INSERT INTO `emp_sys` VALUES ('1921032194', '334', '1795');
INSERT INTO `emp_sys` VALUES ('1925210114', '330', '410');
INSERT INTO `emp_sys` VALUES ('1933635586', '330', '13');
INSERT INTO `emp_sys` VALUES ('1933651969', '330', '1541');
INSERT INTO `emp_sys` VALUES ('1937281026', '330', '137');
INSERT INTO `emp_sys` VALUES ('1937788930', '330', '877');
INSERT INTO `emp_sys` VALUES ('1937829890', '330', '1168');
INSERT INTO `emp_sys` VALUES ('1941983234', '330', '6');
INSERT INTO `emp_sys` VALUES ('1942024193', '330', '1158');
INSERT INTO `emp_sys` VALUES ('1943588866', '330', '1896');
INSERT INTO `emp_sys` VALUES ('1946177538', '330', '876');
INSERT INTO `emp_sys` VALUES ('1946181634', '330', '409');
INSERT INTO `emp_sys` VALUES ('1946218497', '330', '1160');
INSERT INTO `emp_sys` VALUES ('1949868033', '330', '477');
INSERT INTO `emp_sys` VALUES ('1950429186', '330', '1477');
INSERT INTO `emp_sys` VALUES ('1953611777', '330', '1950');
INSERT INTO `emp_sys` VALUES ('1954566146', '330', '998');
INSERT INTO `emp_sys` VALUES ('1954623489', '330', '1446');
INSERT INTO `emp_sys` VALUES ('1958256642', '330', '636');
INSERT INTO `emp_sys` VALUES ('1958760449', '330', '898');
INSERT INTO `emp_sys` VALUES ('1958780929', '330', '1757');
INSERT INTO `emp_sys` VALUES ('1962450946', '330', '538');
INSERT INTO `emp_sys` VALUES ('1962450947', '330', '539');
INSERT INTO `emp_sys` VALUES ('1962950657', '330', '1668');
INSERT INTO `emp_sys` VALUES ('1970839554', '330', '530');
INSERT INTO `emp_sys` VALUES ('1971347457', '330', '276');
INSERT INTO `emp_sys` VALUES ('1971347458', '330', '739');
INSERT INTO `emp_sys` VALUES ('1977143298', '330', '1908');
INSERT INTO `emp_sys` VALUES ('1979224066', '330', '30');
INSERT INTO `emp_sys` VALUES ('1979736065', '330', '436');
INSERT INTO `emp_sys` VALUES ('1979838466', '330', '1089');
INSERT INTO `emp_sys` VALUES ('1983926273', '330', '981');
INSERT INTO `emp_sys` VALUES ('1987616770', '330', '600');
INSERT INTO `emp_sys` VALUES ('2000195585', '330', '123');
INSERT INTO `emp_sys` VALUES ('2004926466', '330', '1620');
INSERT INTO `emp_sys` VALUES ('2004955138', '330', '1492');
INSERT INTO `emp_sys` VALUES ('2005639170', '334', '2095');
INSERT INTO `emp_sys` VALUES ('2009112577', '330', '1767');
INSERT INTO `emp_sys` VALUES ('2013290498', '330', '249');
INSERT INTO `emp_sys` VALUES ('2013343745', '330', '1475');
INSERT INTO `emp_sys` VALUES ('2013360130', '330', '1275');
INSERT INTO `emp_sys` VALUES ('2016972801', '330', '202');
INSERT INTO `emp_sys` VALUES ('2017562626', '330', '1999');
INSERT INTO `emp_sys` VALUES ('2021167106', '330', '196');
INSERT INTO `emp_sys` VALUES ('2021654530', '330', '1404');
INSERT INTO `emp_sys` VALUES ('2021675009', '330', '893');
INSERT INTO `emp_sys` VALUES ('2021732354', '330', '1488');
INSERT INTO `emp_sys` VALUES ('2021748737', '330', '1303');
INSERT INTO `emp_sys` VALUES ('2029559809', '330', '540');
INSERT INTO `emp_sys` VALUES ('2030137345', '330', '1339');
INSERT INTO `emp_sys` VALUES ('2033754114', '330', '675');
INSERT INTO `emp_sys` VALUES ('2034262017', '330', '283');
INSERT INTO `emp_sys` VALUES ('2038452226', '330', '990');
INSERT INTO `emp_sys` VALUES ('2042650625', '330', '295');
INSERT INTO `emp_sys` VALUES ('2042658817', '330', '2031');
INSERT INTO `emp_sys` VALUES ('2042720258', '330', '1361');
INSERT INTO `emp_sys` VALUES ('2046840833', '330', '875');
INSERT INTO `emp_sys` VALUES ('2046844930', '330', '270');
INSERT INTO `emp_sys` VALUES ('2051108865', '330', '1294');
INSERT INTO `emp_sys` VALUES ('2052669442', '330', '1880');
INSERT INTO `emp_sys` VALUES ('2056835073', '330', '1891');
INSERT INTO `emp_sys` VALUES ('2059497473', '330', '1283');
INSERT INTO `emp_sys` VALUES ('2072027138', '330', '1801');
INSERT INTO `emp_sys` VALUES ('2073612290', '330', '1914');
INSERT INTO `emp_sys` VALUES ('2076205058', '330', '252');
INSERT INTO `emp_sys` VALUES ('2076274690', '330', '1308');
INSERT INTO `emp_sys` VALUES ('2080395266', '330', '1063');
INSERT INTO `emp_sys` VALUES ('2084081666', '330', '205');
INSERT INTO `emp_sys` VALUES ('2084593666', '330', '816');
INSERT INTO `emp_sys` VALUES ('2084671490', '330', '1990');
INSERT INTO `emp_sys` VALUES ('2088882178', '330', '1976');
INSERT INTO `emp_sys` VALUES ('2092978178', '330', '883');
INSERT INTO `emp_sys` VALUES ('2092982273', '330', '317');
INSERT INTO `emp_sys` VALUES ('2096664578', '330', '173');
INSERT INTO `emp_sys` VALUES ('2097172482', '330', '996');
INSERT INTO `emp_sys` VALUES ('2097192962', '330', '1817');
INSERT INTO `emp_sys` VALUES ('2097229825', '330', '2138');
INSERT INTO `emp_sys` VALUES ('2097913858', '330', '2055');
INSERT INTO `emp_sys` VALUES ('2100862978', '330', '469');
INSERT INTO `emp_sys` VALUES ('2101366786', '330', '994');
INSERT INTO `emp_sys` VALUES ('2101370881', '330', '351');
INSERT INTO `emp_sys` VALUES ('2101370882', '330', '397');
INSERT INTO `emp_sys` VALUES ('2105565185', '330', '246');
INSERT INTO `emp_sys` VALUES ('2110496770', '330', '2067');
INSERT INTO `emp_sys` VALUES ('2114023425', '330', '1262');
INSERT INTO `emp_sys` VALUES ('2118139906', '330', '1696');
INSERT INTO `emp_sys` VALUES ('2118217730', '330', '1353');
INSERT INTO `emp_sys` VALUES ('2122334210', '330', '1674');
INSERT INTO `emp_sys` VALUES ('2122342401', '330', '331');
INSERT INTO `emp_sys` VALUES ('2122375169', '330', '5');
INSERT INTO `emp_sys` VALUES ('2122379265', '330', '1154');
INSERT INTO `emp_sys` VALUES ('2126512130', '330', '1388');
INSERT INTO `emp_sys` VALUES ('2126532609', '330', '860');
INSERT INTO `emp_sys` VALUES ('2126536705', '330', '806');
INSERT INTO `emp_sys` VALUES ('2126614529', '330', '2003');
INSERT INTO `emp_sys` VALUES ('2130747394', '330', '1740');
INSERT INTO `emp_sys` VALUES ('2130767874', '330', '1132');
INSERT INTO `emp_sys` VALUES ('2130784258', '330', '1483');
INSERT INTO `emp_sys` VALUES ('2134921217', '330', '907');
INSERT INTO `emp_sys` VALUES ('2134978562', '330', '1544');
INSERT INTO `emp_sys` VALUES ('2139115522', '330', '1073');

-- ----------------------------
-- Table structure for flight_info
-- ----------------------------
DROP TABLE IF EXISTS `flight_info`;
CREATE TABLE `flight_info` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `flight_number` varchar(20) NOT NULL COMMENT '航班号',
  `airline` varchar(50) NOT NULL COMMENT '航空公司名称',
  `aircraft_type` varchar(10) DEFAULT NULL COMMENT '机型',
  `departure_airport` varchar(10) NOT NULL COMMENT '起飞机场三字码',
  `arrival_airport` varchar(10) NOT NULL COMMENT '降落机场三字码',
  `scheduled_departure_time` datetime DEFAULT NULL COMMENT '计划起飞时间',
  `scheduled_arrival_time` datetime DEFAULT NULL COMMENT '计划到达时间',
  `actual_departure_time` datetime DEFAULT NULL COMMENT '实际起飞时间',
  `actual_arrival_time` datetime DEFAULT NULL COMMENT '实际到达时间',
  `route` varchar(255) DEFAULT NULL COMMENT '航路信息',
  `flight_status` tinyint NOT NULL DEFAULT '0' COMMENT '航班状态：0-计划中，1-起飞，2-降落，3-延误，4-取消',
  `delay_reason` varchar(255) DEFAULT NULL COMMENT '延误原因',
  `altitude` int DEFAULT NULL COMMENT '当前高度（单位：米）',
  `speed` int DEFAULT NULL COMMENT '当前速度（单位：公里/小时）',
  `position` varchar(255) DEFAULT NULL COMMENT '当前经纬度坐标',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='航班信息表';

-- ----------------------------
-- Records of flight_info
-- ----------------------------
INSERT INTO `flight_info` VALUES ('86', 'A001', 'da', 'CH001', 'JDZU', 'NCU', '2025-05-03 00:00:02', '2025-05-11 00:00:00', null, null, null, '1', null, null, null, null, '2025-05-03 21:59:53', '2025-05-03 22:00:27', null);
INSERT INTO `flight_info` VALUES ('87', 'YYDS', '1525', 'YY22', 'KJDI', 'JDZU', '2025-05-29 00:00:00', '2025-05-31 00:00:00', null, null, null, '1', null, null, null, null, '2025-05-03 22:11:10', '2025-05-03 22:12:30', null);
INSERT INTO `flight_info` VALUES ('88', 'A001', '242', 'CH001', 'JDZU', 'NCU', '2025-05-03 00:00:02', '2025-05-11 00:00:00', null, null, null, '0', null, null, null, null, '2025-05-03 22:15:03', '2025-05-03 22:15:03', null);
INSERT INTO `flight_info` VALUES ('89', 'au234', 'jjdd', 'BY747', 'JDZU', 'TFGT', '2025-05-15 01:00:00', '2025-05-16 00:00:02', null, null, null, '0', null, null, null, null, '2025-05-15 13:08:28', '2025-05-15 13:08:28', null);
INSERT INTO `flight_info` VALUES ('90', 'KK11', 'jjdd', 'J201', 'JDZU', 'MMNN', '2025-05-23 00:00:00', '2025-05-24 00:00:00', null, null, null, '1', null, null, null, null, '2025-05-15 13:11:28', '2025-05-15 13:13:49', null);
INSERT INTO `flight_info` VALUES ('91', 'po77', 'GH', 'NK563', 'DSTU', 'JDZU', '2025-05-15 00:02:00', '2025-05-17 00:02:00', null, null, null, '0', null, null, null, null, '2025-05-15 14:56:29', '2025-05-15 14:56:29', null);
INSERT INTO `flight_info` VALUES ('92', 'SD879', 'FJgl', 'BY747', 'JDZU', 'HGJD', '2025-05-16 00:01:00', '2025-05-17 00:00:02', null, null, null, '1', null, null, null, null, '2025-05-16 22:56:01', '2025-05-16 22:58:07', null);
INSERT INTO `flight_info` VALUES ('93', 'ty152', 'fesf', 'hgj51', 'JDZU', 'KMFK', '2025-05-17 00:00:01', '2025-05-18 00:02:00', null, null, null, '1', null, null, null, null, '2025-05-16 23:02:49', '2025-05-16 23:03:43', null);
INSERT INTO `flight_info` VALUES ('94', 'ty152', 'fsgh', 'hgj51', 'JDZU', 'KMFK', '2025-05-17 00:00:01', '2025-05-18 00:02:00', null, null, null, '0', null, null, null, null, '2025-05-16 23:05:42', '2025-05-16 23:05:42', null);
INSERT INTO `flight_info` VALUES ('95', 'th152', 'BVJF', 'By77', 'JDZU', 'VNGK', '2025-05-16 00:00:01', '2025-05-17 00:00:00', null, null, null, '1', null, null, null, null, '2025-05-16 23:07:36', '2025-05-16 23:08:21', null);
INSERT INTO `flight_info` VALUES ('96', 'cbj45', 'BVJF', 'BY800', 'DKAS', 'JDZU', '2025-05-16 00:01:00', '2025-05-16 00:00:02', null, null, null, '2', null, null, null, null, '2025-05-16 23:09:21', '2025-05-16 23:09:51', null);
INSERT INTO `flight_info` VALUES ('97', 'gtd254', 'dawd', 'htf245', 'cakm', 'JDZU', '2025-05-16 00:00:01', '2025-05-17 00:02:00', null, null, null, '2', null, null, null, null, '2025-05-16 23:41:00', '2025-05-16 23:41:33', null);

-- ----------------------------
-- Table structure for flight_parking_stand
-- ----------------------------
DROP TABLE IF EXISTS `flight_parking_stand`;
CREATE TABLE `flight_parking_stand` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `flight_id` bigint NOT NULL COMMENT '航班ID',
  `parking_stand_id` bigint NOT NULL COMMENT '停机位ID',
  `assigned_time` datetime DEFAULT NULL COMMENT '分配时间',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`),
  KEY `a` (`flight_id`),
  KEY `b` (`parking_stand_id`),
  CONSTRAINT `a` FOREIGN KEY (`flight_id`) REFERENCES `flight_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `b` FOREIGN KEY (`parking_stand_id`) REFERENCES `parking_stand` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='航班停机位关联表';

-- ----------------------------
-- Records of flight_parking_stand
-- ----------------------------
INSERT INTO `flight_parking_stand` VALUES ('137', '87', '2', null, '2025-05-03 22:12:03', '2025-05-03 22:12:03', null);
INSERT INTO `flight_parking_stand` VALUES ('154', '86', '1', null, '2025-05-16 09:16:24', '2025-05-16 09:16:24', null);

-- ----------------------------
-- Table structure for flight_plan
-- ----------------------------
DROP TABLE IF EXISTS `flight_plan`;
CREATE TABLE `flight_plan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `flight_number` varchar(20) NOT NULL COMMENT '航班号',
  `aircraft_type` varchar(10) DEFAULT NULL COMMENT '机型',
  `departure_airport` varchar(10) NOT NULL COMMENT '起飞机场代码',
  `arrival_airport` varchar(10) NOT NULL COMMENT '降落机场代码',
  `scheduled_departure_time` datetime NOT NULL COMMENT '计划起飞时间',
  `scheduled_arrival_time` datetime NOT NULL COMMENT '计划到达时间',
  `actual_departure_time` datetime DEFAULT NULL COMMENT '实际起飞时间',
  `actual_arrival_time` datetime DEFAULT NULL COMMENT '实际到达时间',
  `gate` varchar(10) DEFAULT NULL COMMENT '登机口',
  `stand` varchar(10) DEFAULT NULL COMMENT '停机位',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '航班状态：0-计划中，1-已转单，2-延误，3-取消',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='航班计划表';

-- ----------------------------
-- Records of flight_plan
-- ----------------------------
INSERT INTO `flight_plan` VALUES ('36', 'A001', 'CH001', 'JDZU', 'NCU', '2025-05-03 00:00:02', '2025-05-11 00:00:00', null, null, null, null, '1', '2025-05-03 21:44:51', '2025-05-03 21:45:06', null);
INSERT INTO `flight_plan` VALUES ('37', 'YYDS', 'YY22', 'KJDI', 'JDZU', '2025-05-29 00:00:00', '2025-05-31 00:00:00', null, null, null, null, '1', '2025-05-03 22:05:21', '2025-05-03 22:11:10', null);
INSERT INTO `flight_plan` VALUES ('38', 'au234', 'BY747', 'JDZU', 'TFGT', '2025-05-15 01:00:00', '2025-05-16 00:00:02', null, null, null, null, '1', '2025-05-15 13:08:19', '2025-05-15 13:08:28', null);
INSERT INTO `flight_plan` VALUES ('39', 'KK11', 'J201', 'JDZU', 'MMNN', '2025-05-23 00:00:00', '2025-05-24 00:00:00', null, null, null, null, '1', '2025-05-15 13:11:24', '2025-05-15 13:11:28', null);
INSERT INTO `flight_plan` VALUES ('40', 'CD36', '1235', 'VNDS', 'JDZU', '2025-05-18 00:00:02', '2025-05-25 00:02:00', null, null, null, null, '1', '2025-05-15 14:41:31', '2025-05-15 14:41:43', null);
INSERT INTO `flight_plan` VALUES ('41', 'po77', 'NK563', 'DSTU', 'JDZU', '2025-05-15 00:02:00', '2025-05-17 00:02:00', null, null, null, null, '1', '2025-05-15 14:56:21', '2025-05-15 14:56:29', null);
INSERT INTO `flight_plan` VALUES ('42', 'SD879', 'BY747', 'JDZU', 'HGJD', '2025-05-16 00:01:00', '2025-05-17 00:00:02', null, null, null, null, '1', '2025-05-16 22:55:50', '2025-05-16 22:56:01', null);
INSERT INTO `flight_plan` VALUES ('43', 'ty152', 'hgj51', 'JDZU', 'KMFK', '2025-05-17 00:00:01', '2025-05-18 00:02:00', null, null, null, null, '1', '2025-05-16 23:02:44', '2025-05-16 23:02:49', null);
INSERT INTO `flight_plan` VALUES ('44', 'th152', 'By77', 'JDZU', 'VNGK', '2025-05-16 00:00:01', '2025-05-17 00:00:00', null, null, null, null, '1', '2025-05-16 23:07:22', '2025-05-16 23:07:36', null);
INSERT INTO `flight_plan` VALUES ('45', 'cbj45', 'BY800', 'DKAS', 'JDZU', '2025-05-16 00:01:00', '2025-05-16 00:00:02', null, null, null, null, '1', '2025-05-16 23:09:12', '2025-05-16 23:09:21', null);
INSERT INTO `flight_plan` VALUES ('46', 'gtd254', 'htf245', 'cakm', 'JDZU', '2025-05-16 00:00:01', '2025-05-17 00:02:00', null, null, null, null, '1', '2025-05-16 23:40:52', '2025-05-16 23:41:00', null);

-- ----------------------------
-- Table structure for flight_runway
-- ----------------------------
DROP TABLE IF EXISTS `flight_runway`;
CREATE TABLE `flight_runway` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `flight_id` bigint NOT NULL COMMENT '航班ID',
  `runway_id` bigint NOT NULL COMMENT '跑道ID',
  `assigned_time` datetime DEFAULT NULL COMMENT '分配时间',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`),
  KEY `c` (`flight_id`),
  KEY `d` (`runway_id`),
  CONSTRAINT `c` FOREIGN KEY (`flight_id`) REFERENCES `flight_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `d` FOREIGN KEY (`runway_id`) REFERENCES `runway` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='航班跑道关联表';

-- ----------------------------
-- Records of flight_runway
-- ----------------------------
INSERT INTO `flight_runway` VALUES ('144', '86', '2', null, '2025-05-15 14:54:00', '2025-05-15 14:54:00', null);
INSERT INTO `flight_runway` VALUES ('149', '91', '1', null, '2025-05-16 09:21:34', '2025-05-16 09:21:34', null);

-- ----------------------------
-- Table structure for ground_efps
-- ----------------------------
DROP TABLE IF EXISTS `ground_efps`;
CREATE TABLE `ground_efps` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL,
  `type` int NOT NULL,
  `a1` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '航空器呼号',
  `b1` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '航空器机型',
  `c1` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '尾流标志',
  `d1` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '二次雷达应答机模式及编码',
  `e1` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '起飞机场',
  `fg1` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预计起飞/降落时刻',
  `h1` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '目的地机场',
  `b2` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '高度变化',
  `c2` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '其他指令',
  `b4` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `c3` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '程序号',
  `de31` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '航空器地面控制指令',
  `de32` varchar(255) DEFAULT NULL,
  `de33` varchar(255) DEFAULT NULL,
  `de34` varchar(255) DEFAULT NULL,
  `c4` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '其他信息',
  `e4` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '停机位',
  `m` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '航空器收到本场ATIS信息',
  `e` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '对过境航班，拍发EST报',
  `a` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '与空军协调完毕',
  `i` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '航空器被雷达识别',
  `createTime` datetime(6) DEFAULT NULL,
  `updateTime` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `唯一` (`id`,`a1`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of ground_efps
-- ----------------------------
INSERT INTO `ground_efps` VALUES ('83', '3', '1', 'YYDS', 'YY22', null, '1', 'KJDI', '0000', 'JDZU', null, null, null, null, null, null, null, '84152', '备降', '1002', null, null, null, null, '2025-05-03 22:11:38.000000', '2025-05-03 22:12:04.000000');
INSERT INTO `ground_efps` VALUES ('87', '1', '1', 'po77', 'NK563', null, null, 'DSTU', '0002', 'JDZU', null, null, null, null, null, null, null, '52213', 'VIP', null, null, null, null, null, '2025-05-15 15:06:22.000000', '2025-05-16 09:21:34.000000');
INSERT INTO `ground_efps` VALUES ('91', '3', '1', 'cbj45', 'BY800', null, null, 'DKAS', '0001', 'JDZU', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2025-05-16 23:09:32.000000', '2025-05-16 23:09:39.000000');
INSERT INTO `ground_efps` VALUES ('92', '3', '1', 'gtd254', 'htf245', null, null, 'cakm', '0000', 'JDZU', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2025-05-16 23:41:12.000000', '2025-05-16 23:41:18.000000');
INSERT INTO `ground_efps` VALUES ('130', '3', '0', 'A001', 'CH001', null, null, 'JDZU', '0000', 'NCU', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ground_efps` VALUES ('131', '3', '0', 'A001', 'CH001', null, null, 'JDZU', '0000', 'NCU', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ground_efps` VALUES ('132', '3', '0', 'au234', 'BY747', null, null, 'JDZU', '0100', 'TFGT', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ground_efps` VALUES ('133', '3', '0', 'KK11', 'J201', null, null, 'JDZU', '0000', 'MMNN', null, null, null, null, null, null, null, '63434', null, '1001', null, null, null, null, null, null);
INSERT INTO `ground_efps` VALUES ('134', '1', '1', '1254i', 'ukiu', 'H', 'I254', 'jmhn', '1111', 'JDZU', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2025-05-16 09:34:01.000000', '2025-05-16 09:34:09.000000');
INSERT INTO `ground_efps` VALUES ('135', '1', '1', '25jk', '35kl', 'H', 'I254', 'fsdc', '1212', 'JDZU', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2025-05-16 09:37:17.000000', '2025-05-16 09:37:25.000000');
INSERT INTO `ground_efps` VALUES ('136', '3', '0', 'SD879', 'BY747', null, null, 'JDZU', '0001', 'HGJD', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ground_efps` VALUES ('137', '3', '0', 'ty152', 'hgj51', null, null, 'JDZU', '0000', 'KMFK', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ground_efps` VALUES ('138', '3', '0', 'ty152', 'hgj51', null, null, 'JDZU', '0000', 'KMFK', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ground_efps` VALUES ('139', '3', '0', 'th152', 'By77', null, null, 'JDZU', '0000', 'VNGK', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for important_msg
-- ----------------------------
DROP TABLE IF EXISTS `important_msg`;
CREATE TABLE `important_msg` (
  `id` int NOT NULL AUTO_INCREMENT,
  `header` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `author` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of important_msg
-- ----------------------------
INSERT INTO `important_msg` VALUES ('16', 'EFPS-SYSTEM使用概要', '指挥控制中的页面受限于用户的角色', '2025-02-11 10:51:42', '2025-02-11 10:51:42', 'RWG', '1');
INSERT INTO `important_msg` VALUES ('17', '添加用户说明', '当创建新用户时管理员或者超级管理员需赋予用户可访问的路由页面', '2025-02-11 10:53:37', '2025-02-11 10:53:37', 'RENWEIGUO', '1');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `m_id` int NOT NULL AUTO_INCREMENT,
  `m_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `m_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `m_sign` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '', '用户个人的基本操作', 'emp');
INSERT INTO `menu` VALUES ('5', '', '超级管理员的基本操作', 'admin');

-- ----------------------------
-- Table structure for parking_stand
-- ----------------------------
DROP TABLE IF EXISTS `parking_stand`;
CREATE TABLE `parking_stand` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '停机位ID',
  `code` varchar(10) NOT NULL COMMENT '停机位编号',
  `size` varchar(10) DEFAULT NULL COMMENT '停机位大小（如小型、中型、大型）',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '停机位状态：1-可用，0-不可用',
  `location` varchar(50) DEFAULT NULL COMMENT '停机位位置（如北区A1）',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='停机位表';

-- ----------------------------
-- Records of parking_stand
-- ----------------------------
INSERT INTO `parking_stand` VALUES ('1', '1001', '1', '1', '1', '2024-12-06 20:01:23', '2025-05-16 09:16:24', '1');
INSERT INTO `parking_stand` VALUES ('2', '1002', '1', '1', '1', '2024-12-09 19:05:16', '2025-05-03 22:12:03', null);
INSERT INTO `parking_stand` VALUES ('3', '1003', '1', '0', '1', '2024-12-09 19:05:24', '2025-05-16 09:16:24', null);
INSERT INTO `parking_stand` VALUES ('4', '1004', '1', '0', '1', '2024-12-09 19:05:31', '2025-05-15 14:55:30', null);
INSERT INTO `parking_stand` VALUES ('5', '1005', '2', '0', '1', '2024-12-09 19:05:41', '2025-05-15 14:54:40', null);
INSERT INTO `parking_stand` VALUES ('6', '1006', '2', '0', '1', '2024-12-09 19:05:48', '2025-05-15 14:39:20', null);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `r_id` int NOT NULL AUTO_INCREMENT,
  `r_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `r_info` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'super_admin', '超级管理员');
INSERT INTO `role` VALUES ('2', 'admin', '管理员');
INSERT INTO `role` VALUES ('3', 'area', '区域管制席');
INSERT INTO `role` VALUES ('4', 'tower', '塔台管制席');
INSERT INTO `role` VALUES ('5', 'release', '放行地面管制席');

-- ----------------------------
-- Table structure for role_routes
-- ----------------------------
DROP TABLE IF EXISTS `role_routes`;
CREATE TABLE `role_routes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `r_id` int NOT NULL,
  `ro_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ro_id` (`ro_id`),
  KEY `r_id` (`r_id`),
  CONSTRAINT `role_routes_ibfk_1` FOREIGN KEY (`ro_id`) REFERENCES `dynamic_routes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_routes_ibfk_2` FOREIGN KEY (`r_id`) REFERENCES `role` (`r_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of role_routes
-- ----------------------------
INSERT INTO `role_routes` VALUES ('1', '1', '1');
INSERT INTO `role_routes` VALUES ('2', '1', '2');
INSERT INTO `role_routes` VALUES ('3', '1', '3');
INSERT INTO `role_routes` VALUES ('4', '1', '4');
INSERT INTO `role_routes` VALUES ('5', '1', '5');
INSERT INTO `role_routes` VALUES ('6', '1', '6');
INSERT INTO `role_routes` VALUES ('7', '1', '7');
INSERT INTO `role_routes` VALUES ('8', '1', '8');
INSERT INTO `role_routes` VALUES ('9', '1', '9');
INSERT INTO `role_routes` VALUES ('10', '1', '10');
INSERT INTO `role_routes` VALUES ('11', '1', '11');
INSERT INTO `role_routes` VALUES ('12', '1', '12');
INSERT INTO `role_routes` VALUES ('13', '1', '13');
INSERT INTO `role_routes` VALUES ('14', '1', '14');
INSERT INTO `role_routes` VALUES ('15', '1', '15');
INSERT INTO `role_routes` VALUES ('16', '2', '1');
INSERT INTO `role_routes` VALUES ('17', '2', '2');
INSERT INTO `role_routes` VALUES ('18', '2', '3');
INSERT INTO `role_routes` VALUES ('19', '2', '4');
INSERT INTO `role_routes` VALUES ('20', '2', '5');
INSERT INTO `role_routes` VALUES ('21', '2', '6');
INSERT INTO `role_routes` VALUES ('22', '2', '7');
INSERT INTO `role_routes` VALUES ('23', '2', '8');
INSERT INTO `role_routes` VALUES ('24', '2', '9');
INSERT INTO `role_routes` VALUES ('25', '2', '10');
INSERT INTO `role_routes` VALUES ('26', '2', '11');
INSERT INTO `role_routes` VALUES ('27', '2', '12');
INSERT INTO `role_routes` VALUES ('28', '2', '13');
INSERT INTO `role_routes` VALUES ('29', '2', '14');
INSERT INTO `role_routes` VALUES ('30', '2', '15');
INSERT INTO `role_routes` VALUES ('31', '3', '1');
INSERT INTO `role_routes` VALUES ('33', '3', '3');
INSERT INTO `role_routes` VALUES ('34', '3', '4');
INSERT INTO `role_routes` VALUES ('44', '3', '14');
INSERT INTO `role_routes` VALUES ('45', '3', '15');
INSERT INTO `role_routes` VALUES ('63', '4', '1');
INSERT INTO `role_routes` VALUES ('65', '4', '3');
INSERT INTO `role_routes` VALUES ('67', '4', '5');
INSERT INTO `role_routes` VALUES ('78', '2', '16');
INSERT INTO `role_routes` VALUES ('80', '2', '234');
INSERT INTO `role_routes` VALUES ('82', '1', '16');
INSERT INTO `role_routes` VALUES ('83', '1', '234');
INSERT INTO `role_routes` VALUES ('84', '5', '1');
INSERT INTO `role_routes` VALUES ('86', '5', '3');
INSERT INTO `role_routes` VALUES ('89', '5', '6');
INSERT INTO `role_routes` VALUES ('97', '5', '14');
INSERT INTO `role_routes` VALUES ('98', '5', '234');
INSERT INTO `role_routes` VALUES ('99', '1', '235');
INSERT INTO `role_routes` VALUES ('100', '1', '236');
INSERT INTO `role_routes` VALUES ('101', '4', '16');
INSERT INTO `role_routes` VALUES ('102', '4', '14');

-- ----------------------------
-- Table structure for runway
-- ----------------------------
DROP TABLE IF EXISTS `runway`;
CREATE TABLE `runway` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '跑道ID',
  `code` varchar(10) NOT NULL COMMENT '跑道编号',
  `length` int NOT NULL COMMENT '跑道长度（米）',
  `width` int NOT NULL COMMENT '跑道宽度（米）',
  `surface_type` varchar(50) DEFAULT NULL COMMENT '跑道表面类型（如沥青、混凝土）',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '跑道状态：1-可用，0-不可用',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='跑道表';

-- ----------------------------
-- Records of runway
-- ----------------------------
INSERT INTO `runway` VALUES ('1', '52213', '2000', '200', '沥青', '1', '2024-12-06 21:03:01', '2025-05-16 09:21:34', '1');
INSERT INTO `runway` VALUES ('2', '63434', '1000', '150', '沥青', '1', '2024-12-09 14:45:58', '2025-05-15 14:54:00', null);
INSERT INTO `runway` VALUES ('3', '41233', '1500', '160', '混凝土', '0', '2024-12-09 14:46:18', '2025-05-16 22:58:07', null);
INSERT INTO `runway` VALUES ('4', '84152', '2000', '160', '沥青', '0', '2024-12-09 14:46:35', '2025-05-16 09:21:34', null);

-- ----------------------------
-- Table structure for sys_msg
-- ----------------------------
DROP TABLE IF EXISTS `sys_msg`;
CREATE TABLE `sys_msg` (
  `id` int NOT NULL AUTO_INCREMENT,
  `header` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `author` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `theme` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_msg
-- ----------------------------
INSERT INTO `sys_msg` VALUES ('2149', '欢迎~任卫国~登陆成功', 'Sat May 17 2025 10:13:10 GMT+0800 (中国标准时间)', null, null, '系统提示', 'success', '1');

-- ----------------------------
-- Table structure for tower_efps
-- ----------------------------
DROP TABLE IF EXISTS `tower_efps`;
CREATE TABLE `tower_efps` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL,
  `type` int NOT NULL,
  `a1` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '航空器呼号',
  `b1` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '航空器机型',
  `c1` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '尾流标志',
  `d1` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '二次雷达应答机模式及编码',
  `e1` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '起飞机场',
  `fg1` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预计起飞/降落时刻',
  `h1` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '目的地机场',
  `b2` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '高度变化',
  `c2` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '其他指令',
  `b4` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '进程单生成日期和时刻',
  `c3` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '程序号',
  `de31` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '航空器地面控制指令-退出',
  `c4` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '其他信息',
  `e4` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '停机位',
  `m` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '航空器收到本场ATIS信息',
  `e` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '对过境航班，拍发EST报',
  `a` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '与空军协调完毕',
  `i` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '航空器被雷达识别',
  `createTime` datetime(6) DEFAULT NULL,
  `updateTime` datetime(6) DEFAULT NULL,
  `de32` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '航空器地面控制指令-开车',
  `de33` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '航空器地面控制指令-滑行',
  `de34` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '航空器地面控制指令-使用跑道',
  PRIMARY KEY (`id`),
  UNIQUE KEY `唯一` (`id`,`a1`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of tower_efps
-- ----------------------------
INSERT INTO `tower_efps` VALUES ('83', '3', '1', 'YYDS', 'YY22', null, '1', 'KJDI', '0000', 'JDZU', null, null, null, null, null, '备降', '1002', null, null, null, null, '2025-05-03 22:11:38.811000', '2025-05-03 22:12:13.131000', null, null, '84152');
INSERT INTO `tower_efps` VALUES ('85', '2', '1', 'klk25412', 'thfj41', 'M', 'D24', 'csnk', '1212', 'gthf', null, null, null, null, null, null, null, null, null, null, null, '2025-05-15 13:14:58.000000', '2025-05-15 14:34:49.055000', null, null, null);
INSERT INTO `tower_efps` VALUES ('86', '2', '1', 'CD36', '1235', null, null, 'VNDS', '0000', 'JDZU', null, null, null, null, null, '备降', null, null, null, null, null, '2025-05-15 15:08:45.724000', '2025-05-16 09:16:10.168000', null, null, null);
INSERT INTO `tower_efps` VALUES ('87', '3', '1', 'po77', 'NK563', null, null, 'DSTU', '0002', 'JDZU', null, null, null, null, null, 'VIP', null, null, null, null, null, '2025-05-15 15:06:22.038000', '2025-05-16 09:31:42.188000', null, null, '52213');
INSERT INTO `tower_efps` VALUES ('91', '3', '1', 'cbj45', 'BY800', null, null, 'DKAS', '0001', 'JDZU', null, null, null, null, null, null, null, null, null, null, null, '2025-05-16 23:09:32.428000', '2025-05-16 23:09:41.777000', null, null, null);
INSERT INTO `tower_efps` VALUES ('92', '3', '1', 'gtd254', 'htf245', null, null, 'cakm', '0000', 'JDZU', null, null, null, null, null, null, null, null, null, null, null, '2025-05-16 23:41:12.705000', '2025-05-16 23:41:20.720000', null, null, null);
INSERT INTO `tower_efps` VALUES ('130', '3', '0', 'A001', 'CH001', null, null, 'JDZU', '0000', 'NCU', null, null, null, null, null, null, null, null, null, null, null, '2025-05-03 22:00:00.960000', '2025-05-03 22:00:13.571000', null, null, null);
INSERT INTO `tower_efps` VALUES ('131', '3', '0', 'A001', 'CH001', null, null, 'JDZU', '0000', 'NCU', null, null, null, null, null, null, '1001', null, null, null, null, '2025-05-03 22:24:57.000000', '2025-05-16 09:16:38.188000', null, null, '63434');
INSERT INTO `tower_efps` VALUES ('132', '2', '0', 'au234', 'BY747', null, null, 'JDZU', '0100', 'TFGT', null, null, null, null, null, null, null, null, null, null, null, '2025-05-15 13:09:25.900000', '2025-05-15 13:09:37.513000', null, null, null);
INSERT INTO `tower_efps` VALUES ('133', '3', '0', 'KK11', 'J201', null, null, 'JDZU', '0000', 'MMNN', null, null, null, 'D04', null, '返航', '1001', null, null, null, null, '2025-05-15 13:12:54.956000', '2025-05-15 13:13:31.329000', null, null, '63434');
INSERT INTO `tower_efps` VALUES ('134', '3', '1', '1254i', 'ukiu', 'H', 'I254', 'jmhn', '1111', 'JDZU', null, null, null, null, null, null, null, null, null, null, null, '2025-05-16 09:34:01.318000', '2025-05-16 09:34:27.476000', null, null, null);
INSERT INTO `tower_efps` VALUES ('135', '3', '1', '25jk', '35kl', 'H', 'I254', 'fsdc', '1212', 'JDZU', null, null, null, null, null, null, null, null, null, null, null, '2025-05-16 09:37:17.110000', '2025-05-16 09:37:36.139000', null, null, null);
INSERT INTO `tower_efps` VALUES ('136', '3', '0', 'SD879', 'BY747', null, null, 'JDZU', '0001', 'HGJD', null, null, null, null, null, null, null, null, null, null, null, '2025-05-16 22:56:25.991000', '2025-05-16 22:57:40.535000', 'S/T', 'R/W', '41233');
INSERT INTO `tower_efps` VALUES ('137', '3', '0', 'ty152', 'hgj51', null, null, 'JDZU', '0000', 'KMFK', null, null, null, null, null, null, null, null, null, null, null, '2025-05-16 23:03:18.278000', '2025-05-16 23:03:29.702000', null, null, null);
INSERT INTO `tower_efps` VALUES ('138', '3', '0', 'ty152', 'hgj51', null, null, 'JDZU', '0000', 'KMFK', null, null, null, null, null, null, null, null, null, null, null, '2025-05-16 23:06:06.021000', '2025-05-16 23:06:14.246000', null, null, null);
INSERT INTO `tower_efps` VALUES ('139', '3', '0', 'th152', 'By77', null, null, 'JDZU', '0000', 'VNGK', null, null, null, null, null, null, null, null, null, null, null, '2025-05-16 23:07:54.120000', '2025-05-16 23:08:07.860000', null, null, null);
