/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : school

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 15/07/2023 10:08:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for business
-- ----------------------------
DROP TABLE IF EXISTS `business`;
CREATE TABLE `business`  (
  `bid` int(0) NOT NULL COMMENT 'id',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名称',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类型',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`bid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of business
-- ----------------------------
INSERT INTO `business` VALUES (3, '123', NULL, NULL, NULL);
INSERT INTO `business` VALUES (4, '123', NULL, NULL, NULL);
INSERT INTO `business` VALUES (6, '123', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for dorm
-- ----------------------------
DROP TABLE IF EXISTS `dorm`;
CREATE TABLE `dorm`  (
  `dormid` int(0) NOT NULL COMMENT '主键',
  `building` int(0) NULL DEFAULT NULL COMMENT '楼号',
  `room` int(0) NULL DEFAULT NULL COMMENT '宿舍号',
  `water` double(255, 1) NULL DEFAULT NULL COMMENT '水费',
  `electricity` double(255, 1) NULL DEFAULT NULL COMMENT '电费',
  PRIMARY KEY (`dormid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dorm
-- ----------------------------
INSERT INTO `dorm` VALUES (1, 1, 101, 173.8, 49.5);

-- ----------------------------
-- Table structure for dorm_recharge
-- ----------------------------
DROP TABLE IF EXISTS `dorm_recharge`;
CREATE TABLE `dorm_recharge`  (
  `rid` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `building` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '楼号',
  `room` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '宿舍号',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类型',
  `amount` double(10, 1) NULL DEFAULT NULL COMMENT '充值金额',
  `buyer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '充值的人',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '充值时间',
  PRIMARY KEY (`rid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dorm_recharge
-- ----------------------------
INSERT INTO `dorm_recharge` VALUES (1, '3', '202', '水', 50.0, '张三', '2023-07-14 10:40:37');
INSERT INTO `dorm_recharge` VALUES (2, '3', '202', '电', 62.3, '李四', '2023-07-12 10:40:57');
INSERT INTO `dorm_recharge` VALUES (3, '2', '202', '水', 60.3, '王五', '2023-07-06 10:41:18');
INSERT INTO `dorm_recharge` VALUES (4, '3', '202', '水', 60.3, '李四', '2023-07-03 10:41:32');
INSERT INTO `dorm_recharge` VALUES (5, '3', '202', '水', 35.2, NULL, '2023-07-14 10:52:03');
INSERT INTO `dorm_recharge` VALUES (6, '3', '202', '水', 35.2, '张三', '2023-07-14 10:52:17');
INSERT INTO `dorm_recharge` VALUES (7, '3', '202', '水', 35.2, '张三', '2023-07-14 10:52:47');
INSERT INTO `dorm_recharge` VALUES (8, '3', '202', '水', 35.2, '张三', '2023-07-15 09:11:49');

-- ----------------------------
-- Table structure for order_water_record
-- ----------------------------
DROP TABLE IF EXISTS `order_water_record`;
CREATE TABLE `order_water_record`  (
  `rid` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `buyer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '购买人',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `building` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '楼号',
  `room` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '宿舍号',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '订水类型',
  `number` int(0) NULL DEFAULT NULL COMMENT '购买数量',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '购买时间',
  PRIMARY KEY (`rid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_water_record
-- ----------------------------
INSERT INTO `order_water_record` VALUES (1, '张三', '10086', '3', '202', '农夫山泉', 1, '2023-07-15 09:05:47');
INSERT INTO `order_water_record` VALUES (2, '张三', '10088', '1', '101', '农夫山泉', 1, '2023-02-24 10:15:52');
INSERT INTO `order_water_record` VALUES (3, '李四', '10087', '2', '101', '百岁山', 3, '2023-06-18 03:32:50');
INSERT INTO `order_water_record` VALUES (4, '张三', '10086', '1', '101', '百岁山', 1, '2023-05-06 15:48:47');
INSERT INTO `order_water_record` VALUES (5, '张三', '10086', '3', '101', '农夫山泉', 2, '2023-02-11 22:57:13');
INSERT INTO `order_water_record` VALUES (6, '王五', '10088', '2', '202', '农夫山泉', 1, '2023-01-28 16:22:26');
INSERT INTO `order_water_record` VALUES (7, '李四', '10088', '1', '202', '百岁山', 3, '2023-01-31 22:57:41');
INSERT INTO `order_water_record` VALUES (8, '张三', '10088', '2', '202', '农夫山泉', 3, '2023-01-15 22:53:44');
INSERT INTO `order_water_record` VALUES (9, '王五', '10088', '1', '303', '百岁山', 2, '2023-06-13 17:54:18');
INSERT INTO `order_water_record` VALUES (10, '王五', '10086', '2', '303', '农夫山泉', 3, '2023-07-01 23:16:55');
INSERT INTO `order_water_record` VALUES (11, '张三', '10087', '2', '303', '农夫山泉', 2, '2023-05-31 20:43:45');
INSERT INTO `order_water_record` VALUES (12, '王五', '10086', '2', '202', '百岁山', 3, '2023-01-11 07:26:23');
INSERT INTO `order_water_record` VALUES (13, '张三', '10088', '2', '202', '农夫山泉', 1, '2023-03-12 22:00:05');
INSERT INTO `order_water_record` VALUES (14, '王五', '10086', '1', '303', '农夫山泉', 2, '2023-03-17 05:19:20');
INSERT INTO `order_water_record` VALUES (15, '李四', '10088', '1', '101', '百岁山', 2, '2023-04-21 18:29:02');
INSERT INTO `order_water_record` VALUES (16, '李四', '10086', '3', '303', '农夫山泉', 1, '2023-02-20 03:28:27');
INSERT INTO `order_water_record` VALUES (17, '王五', '10087', '1', '202', '农夫山泉', 3, '2023-03-26 10:31:34');
INSERT INTO `order_water_record` VALUES (18, '王五', '10088', '3', '202', '农夫山泉', 2, '2023-04-01 21:59:13');
INSERT INTO `order_water_record` VALUES (19, '李四', '10086', '2', '202', '农夫山泉', 2, '2023-05-18 01:13:11');
INSERT INTO `order_water_record` VALUES (20, '李四', '10086', '3', '202', '百岁山', 3, '2023-06-18 16:55:49');
INSERT INTO `order_water_record` VALUES (21, '李四', '10086', '3', '202', '农夫山泉', 1, '2023-01-23 12:30:09');
INSERT INTO `order_water_record` VALUES (22, '王五', '10087', '2', '101', '农夫山泉', 2, '2023-04-10 03:19:55');
INSERT INTO `order_water_record` VALUES (23, '李四', '10086', '1', '303', '农夫山泉', 3, '2023-05-27 16:19:23');
INSERT INTO `order_water_record` VALUES (24, '王五', '10086', '3', '202', '农夫山泉', 1, '2023-04-11 20:05:32');
INSERT INTO `order_water_record` VALUES (25, '张三', '10087', '2', '303', '百岁山', 2, '2023-04-22 13:12:17');
INSERT INTO `order_water_record` VALUES (26, '王五', '10087', '2', '101', '农夫山泉', 1, '2023-02-21 16:04:50');
INSERT INTO `order_water_record` VALUES (27, '王五', '10087', '3', '202', '百岁山', 1, '2023-01-06 19:14:03');
INSERT INTO `order_water_record` VALUES (28, '李四', '10087', '1', '101', '百岁山', 1, '2023-01-29 23:10:10');
INSERT INTO `order_water_record` VALUES (29, '李四', '10088', '1', '303', '百岁山', 3, '2023-06-17 13:50:12');
INSERT INTO `order_water_record` VALUES (30, '王五', '10086', '3', '101', '百岁山', 2, '2023-05-08 08:22:02');
INSERT INTO `order_water_record` VALUES (31, '李四', '10086', '1', '303', '农夫山泉', 1, '2023-06-12 04:50:06');
INSERT INTO `order_water_record` VALUES (32, '张三', '10086', '1', '101', '农夫山泉', 1, '2023-07-15 09:33:05');

-- ----------------------------
-- Table structure for person_maintenance
-- ----------------------------
DROP TABLE IF EXISTS `person_maintenance`;
CREATE TABLE `person_maintenance`  (
  `mid` int(0) NOT NULL COMMENT '主键',
  `sname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `sid` int(0) NULL DEFAULT NULL COMMENT '学号',
  `item` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '维修物品',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '描述',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`mid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of person_maintenance
-- ----------------------------

-- ----------------------------
-- Table structure for person_recharge
-- ----------------------------
DROP TABLE IF EXISTS `person_recharge`;
CREATE TABLE `person_recharge`  (
  `rid` int(0) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `sid` int(0) NOT NULL COMMENT '学生id',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类型',
  `amount` double(10, 1) NULL DEFAULT NULL COMMENT '充值金额',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '充值时间',
  PRIMARY KEY (`rid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of person_recharge
-- ----------------------------
INSERT INTO `person_recharge` VALUES (1, 1, '热水', 50.0, '2023-07-13 09:01:13');
INSERT INTO `person_recharge` VALUES (2, 1, '一卡通', 30.0, NULL);
INSERT INTO `person_recharge` VALUES (3, 2, '热水', 50.0, NULL);
INSERT INTO `person_recharge` VALUES (4, 1, '热水', 4.3, NULL);
INSERT INTO `person_recharge` VALUES (5, 1, '热水', 50.0, '2023-07-14 09:59:27');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `sid` int(0) NOT NULL COMMENT '学号',
  `sname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `grade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '年级',
  `building` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '宿舍楼号',
  `room` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '寝室号',
  `card_amount` double(255, 1) NULL DEFAULT NULL COMMENT '一卡通余额',
  `hot_water` double(255, 1) NULL DEFAULT NULL COMMENT '热水余额',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, '张三', '123', '2020', '4', '503', 363.8, 1909.0, '10086');
INSERT INTO `student` VALUES (2, '李四', '456', '2021', '5', '602', 345.3, 20.3, '10087');
INSERT INTO `student` VALUES (6, '王五', '123', '2022', '6', '102', 65.0, 35.0, '10088');

SET FOREIGN_KEY_CHECKS = 1;
