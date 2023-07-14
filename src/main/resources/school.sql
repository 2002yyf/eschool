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

 Date: 14/07/2023 10:55:27
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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, '张三', '123', '2020', '4', '503', 363.8, 1909.0, '10086');
INSERT INTO `student` VALUES (2, '李四', '456', '2021', '5', '602', 345.3, 20.3, '10087');
INSERT INTO `student` VALUES (6, '王五', '123', '2022', '6', '102', 65.0, 35.0, '10088');

SET FOREIGN_KEY_CHECKS = 1;
