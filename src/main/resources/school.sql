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

 Date: 15/07/2023 11:54:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for business
-- ----------------------------
DROP TABLE IF EXISTS `business`;
CREATE TABLE `business`  (
  `bid` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名称',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类型',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`bid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of business
-- ----------------------------
INSERT INTO `business` VALUES (7, '123', '商户1', '奶茶', '商铺101');
INSERT INTO `business` VALUES (8, '123', '商户2', '水果', '商铺102');
INSERT INTO `business` VALUES (9, '123', '商户3', '糕点', '商铺103');
INSERT INTO `business` VALUES (10, '123', '商户4', '糕点', '商铺104');
INSERT INTO `business` VALUES (11, '123', '商户5', '糕点', '商铺105');
INSERT INTO `business` VALUES (12, '123', '商户6', '糕点', '商铺106');
INSERT INTO `business` VALUES (13, '123', '商户7', '奶茶', '商铺107');

-- ----------------------------
-- Table structure for dorm
-- ----------------------------
DROP TABLE IF EXISTS `dorm`;
CREATE TABLE `dorm`  (
  `dormid` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `building` int(0) NULL DEFAULT NULL COMMENT '楼号',
  `room` int(0) NULL DEFAULT NULL COMMENT '宿舍号',
  `water` double(255, 1) NULL DEFAULT NULL COMMENT '水费',
  `electricity` double(255, 1) NULL DEFAULT NULL COMMENT '电费',
  PRIMARY KEY (`dormid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dorm
-- ----------------------------
INSERT INTO `dorm` VALUES (2, 1, 101, 234.3, 262.2);
INSERT INTO `dorm` VALUES (3, 1, 102, 227.2, 270.3);
INSERT INTO `dorm` VALUES (4, 1, 103, 229.1, 212.7);
INSERT INTO `dorm` VALUES (5, 1, 104, 237.4, 211.0);
INSERT INTO `dorm` VALUES (6, 1, 105, 246.2, 220.2);
INSERT INTO `dorm` VALUES (7, 1, 106, 234.5, 220.9);
INSERT INTO `dorm` VALUES (8, 1, 107, 247.0, 281.7);
INSERT INTO `dorm` VALUES (9, 1, 108, 229.1, 273.4);
INSERT INTO `dorm` VALUES (10, 1, 109, 257.5, 222.7);
INSERT INTO `dorm` VALUES (11, 1, 110, 248.0, 249.7);
INSERT INTO `dorm` VALUES (12, 2, 101, 219.9, 286.5);
INSERT INTO `dorm` VALUES (13, 2, 102, 278.9, 297.1);
INSERT INTO `dorm` VALUES (14, 2, 103, 243.6, 295.0);
INSERT INTO `dorm` VALUES (15, 2, 104, 272.3, 212.4);
INSERT INTO `dorm` VALUES (16, 2, 105, 266.8, 221.8);
INSERT INTO `dorm` VALUES (17, 2, 106, 288.4, 287.5);
INSERT INTO `dorm` VALUES (18, 2, 107, 242.5, 250.4);
INSERT INTO `dorm` VALUES (19, 2, 108, 232.0, 279.0);
INSERT INTO `dorm` VALUES (20, 2, 109, 247.3, 203.3);
INSERT INTO `dorm` VALUES (21, 2, 110, 282.1, 201.5);
INSERT INTO `dorm` VALUES (22, 3, 101, 228.0, 269.8);
INSERT INTO `dorm` VALUES (23, 3, 102, 211.4, 216.4);
INSERT INTO `dorm` VALUES (24, 3, 103, 209.3, 288.7);
INSERT INTO `dorm` VALUES (25, 3, 104, 235.4, 237.0);
INSERT INTO `dorm` VALUES (26, 3, 105, 239.2, 230.3);
INSERT INTO `dorm` VALUES (27, 3, 106, 202.7, 289.1);
INSERT INTO `dorm` VALUES (28, 3, 107, 241.3, 245.2);
INSERT INTO `dorm` VALUES (29, 3, 108, 298.2, 224.5);
INSERT INTO `dorm` VALUES (30, 3, 109, 291.3, 274.2);
INSERT INTO `dorm` VALUES (31, 3, 110, 266.7, 281.8);

-- ----------------------------
-- Table structure for dorm_maintenance
-- ----------------------------
DROP TABLE IF EXISTS `dorm_maintenance`;
CREATE TABLE `dorm_maintenance`  (
  `mid` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `building` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '楼号',
  `room` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '寝室号',
  `item` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '保修物品',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '保修时间',
  PRIMARY KEY (`mid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dorm_maintenance
-- ----------------------------
INSERT INTO `dorm_maintenance` VALUES (1, '2', '303', '门', NULL, '15193186931', '2023-07-05 09:25:29');
INSERT INTO `dorm_maintenance` VALUES (2, '2', '303', '窗户', NULL, '15162898607', '2023-07-18 14:54:17');
INSERT INTO `dorm_maintenance` VALUES (3, '2', '303', '洗衣机', NULL, '15174001884', '2023-04-10 16:32:27');
INSERT INTO `dorm_maintenance` VALUES (4, '2', '101', '衣柜', NULL, '15186376426', '2023-04-26 18:41:07');
INSERT INTO `dorm_maintenance` VALUES (5, '2', '202', '洗衣机', NULL, '15184644930', '2023-05-13 18:12:02');
INSERT INTO `dorm_maintenance` VALUES (6, '2', '202', '洗衣机', NULL, '15182006154', '2023-03-04 03:23:20');
INSERT INTO `dorm_maintenance` VALUES (7, '2', '303', '洗衣机', NULL, '15177550725', '2023-07-12 23:17:09');
INSERT INTO `dorm_maintenance` VALUES (8, '1', '303', '衣柜', NULL, '15204007751', '2023-07-27 15:29:13');
INSERT INTO `dorm_maintenance` VALUES (9, '2', '101', '洗衣机', NULL, '15168521418', '2023-03-15 18:11:58');
INSERT INTO `dorm_maintenance` VALUES (10, '1', '101', '衣柜', NULL, '15198421951', '2023-04-04 20:50:38');
INSERT INTO `dorm_maintenance` VALUES (11, '1', '303', '衣柜', NULL, '15183074800', '2023-03-22 02:54:49');
INSERT INTO `dorm_maintenance` VALUES (12, '1', '303', '门', NULL, '15206087491', '2023-05-12 05:43:33');
INSERT INTO `dorm_maintenance` VALUES (13, '2', '202', '窗户', NULL, '15180171178', '2023-03-04 17:52:45');
INSERT INTO `dorm_maintenance` VALUES (14, '1', '202', '洗衣机', NULL, '15212744220', '2023-07-09 23:16:17');
INSERT INTO `dorm_maintenance` VALUES (15, '1', '303', '窗户', NULL, '15189464215', '2023-02-05 03:21:36');
INSERT INTO `dorm_maintenance` VALUES (16, '1', '303', '门', NULL, '15185072222', '2023-06-16 01:27:28');
INSERT INTO `dorm_maintenance` VALUES (17, '1', '101', '洗衣机', NULL, '15181323413', '2023-02-14 04:10:43');
INSERT INTO `dorm_maintenance` VALUES (18, '2', '202', '衣柜', NULL, '15205505083', '2023-04-03 14:14:02');
INSERT INTO `dorm_maintenance` VALUES (19, '2', '101', '窗户', NULL, '15206225894', '2023-04-19 09:33:54');
INSERT INTO `dorm_maintenance` VALUES (20, '2', '101', '洗衣机', NULL, '15197057206', '2023-07-23 13:36:40');
INSERT INTO `dorm_maintenance` VALUES (21, '2', '202', '洗衣机', NULL, '15202754435', '2023-01-08 21:54:11');
INSERT INTO `dorm_maintenance` VALUES (22, '2', '101', '窗户', NULL, '15214927725', '2023-06-28 19:42:29');
INSERT INTO `dorm_maintenance` VALUES (23, '1', '303', '洗衣机', NULL, '15173627109', '2023-01-28 15:29:07');
INSERT INTO `dorm_maintenance` VALUES (24, '2', '101', '门', NULL, '15175892430', '2023-02-04 20:25:29');
INSERT INTO `dorm_maintenance` VALUES (25, '1', '101', '门', NULL, '15176905863', '2023-02-09 13:49:37');
INSERT INTO `dorm_maintenance` VALUES (26, '1', '101', '窗户', NULL, '15177080670', '2023-06-14 13:02:48');
INSERT INTO `dorm_maintenance` VALUES (27, '2', '202', '窗户', NULL, '15203679618', '2023-01-06 06:37:51');
INSERT INTO `dorm_maintenance` VALUES (28, '2', '303', '衣柜', NULL, '15174370528', '2023-05-26 23:13:08');
INSERT INTO `dorm_maintenance` VALUES (29, '1', '202', '窗户', NULL, '15213446939', '2023-04-21 06:31:02');
INSERT INTO `dorm_maintenance` VALUES (30, '1', '101', '窗户', NULL, '15206453135', '2023-06-08 11:37:19');
INSERT INTO `dorm_maintenance` VALUES (31, '1', '303', '门', NULL, '15211316884', '2023-06-17 16:54:19');
INSERT INTO `dorm_maintenance` VALUES (32, '1', '202', '窗户', NULL, '15187039145', '2023-03-26 20:21:05');
INSERT INTO `dorm_maintenance` VALUES (33, '2', '101', '门', NULL, '15199357247', '2023-05-08 01:28:23');
INSERT INTO `dorm_maintenance` VALUES (34, '2', '303', '衣柜', NULL, '15175052956', '2023-04-03 06:21:48');
INSERT INTO `dorm_maintenance` VALUES (35, '1', '202', '窗户', NULL, '15186116749', '2023-05-11 13:18:02');
INSERT INTO `dorm_maintenance` VALUES (36, '1', '202', '窗户', NULL, '15187794238', '2023-07-11 05:34:00');
INSERT INTO `dorm_maintenance` VALUES (37, '2', '202', '门', NULL, '15203220781', '2023-02-25 00:26:42');
INSERT INTO `dorm_maintenance` VALUES (38, '1', '303', '窗户', NULL, '15166877247', '2023-03-05 21:11:13');
INSERT INTO `dorm_maintenance` VALUES (39, '1', '303', '门', NULL, '15214024887', '2023-07-21 15:33:53');
INSERT INTO `dorm_maintenance` VALUES (40, '2', '202', '衣柜', NULL, '15191599245', '2023-05-13 18:52:12');
INSERT INTO `dorm_maintenance` VALUES (41, '1', '101', '衣柜', NULL, '15202760465', '2023-05-24 01:09:37');
INSERT INTO `dorm_maintenance` VALUES (42, '1', '202', '窗户', NULL, '15181133021', '2023-06-02 00:57:20');
INSERT INTO `dorm_maintenance` VALUES (43, '1', '202', '门', NULL, '15201095000', '2023-06-21 15:05:26');
INSERT INTO `dorm_maintenance` VALUES (44, '1', '303', '窗户', NULL, '15194683315', '2023-04-03 03:01:34');
INSERT INTO `dorm_maintenance` VALUES (45, '1', '303', '门', NULL, '15192669461', '2023-01-17 09:13:40');
INSERT INTO `dorm_maintenance` VALUES (46, '1', '101', '洗衣机', NULL, '15199571989', '2023-05-31 07:22:32');
INSERT INTO `dorm_maintenance` VALUES (47, '1', '202', '洗衣机', NULL, '15180628986', '2023-05-18 14:36:33');
INSERT INTO `dorm_maintenance` VALUES (48, '1', '101', '窗户', NULL, '15201839350', '2023-05-05 15:32:17');
INSERT INTO `dorm_maintenance` VALUES (49, '2', '202', '窗户', NULL, '15213795561', '2023-07-20 23:29:36');
INSERT INTO `dorm_maintenance` VALUES (50, '1', '202', '洗衣机', NULL, '15210237694', '2023-03-25 16:59:20');
INSERT INTO `dorm_maintenance` VALUES (51, '1', '303', '窗户', NULL, '15166162854', '2023-03-24 07:03:06');
INSERT INTO `dorm_maintenance` VALUES (52, '2', '202', '门', NULL, '15187736885', '2023-05-09 23:01:51');
INSERT INTO `dorm_maintenance` VALUES (53, '1', '303', '窗户', NULL, '15197738345', '2023-03-14 10:32:26');
INSERT INTO `dorm_maintenance` VALUES (54, '2', '101', '衣柜', NULL, '15192423120', '2023-05-05 09:26:50');
INSERT INTO `dorm_maintenance` VALUES (55, '1', '303', '洗衣机', NULL, '15194974806', '2023-04-25 10:40:52');
INSERT INTO `dorm_maintenance` VALUES (56, '1', '202', '门', NULL, '15202022588', '2023-07-06 02:43:18');
INSERT INTO `dorm_maintenance` VALUES (57, '2', '202', '洗衣机', NULL, '15166561849', '2023-06-18 10:42:54');
INSERT INTO `dorm_maintenance` VALUES (58, '1', '303', '洗衣机', NULL, '15206683219', '2023-06-30 19:07:47');
INSERT INTO `dorm_maintenance` VALUES (59, '1', '303', '衣柜', NULL, '15198536870', '2023-03-04 19:28:43');
INSERT INTO `dorm_maintenance` VALUES (60, '1', '202', '洗衣机', NULL, '15168558291', '2023-02-03 11:01:26');
INSERT INTO `dorm_maintenance` VALUES (61, '1', '101', '窗户', '窗户裂开了，漏风', '15177080670', '2023-07-15 11:08:20');

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
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
  `mid` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
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
INSERT INTO `person_maintenance` VALUES (1, '张三', 3, '鞋', NULL, '15302427339', '2023-01-14 08:31:31');
INSERT INTO `person_maintenance` VALUES (2, '李四', 3, '平板', NULL, '16133333078', '2023-02-27 12:33:40');
INSERT INTO `person_maintenance` VALUES (3, '李四', 3, '手机', NULL, '16166088798', '2023-06-28 16:52:46');
INSERT INTO `person_maintenance` VALUES (4, '李四', 1, '鞋', NULL, '16103103616', '2023-07-05 11:45:31');
INSERT INTO `person_maintenance` VALUES (5, '李四', 2, '电脑', NULL, '15718171552', '2023-02-07 21:37:57');
INSERT INTO `person_maintenance` VALUES (6, '李四', 2, '电脑', NULL, '15776512696', '2023-05-31 04:36:44');
INSERT INTO `person_maintenance` VALUES (7, '李四', 2, '电脑', NULL, '15339840632', '2023-05-31 03:02:01');
INSERT INTO `person_maintenance` VALUES (8, '张三', 1, '手机', NULL, '15741982417', '2023-01-23 03:36:59');
INSERT INTO `person_maintenance` VALUES (9, '张三', 2, '自行车', NULL, '15849155819', '2023-05-18 02:35:10');
INSERT INTO `person_maintenance` VALUES (10, '张三', 3, '电动车', NULL, '15188480468', '2023-06-09 23:45:08');
INSERT INTO `person_maintenance` VALUES (11, '张三', 2, '自行车', NULL, '15580901607', '2023-02-05 15:13:45');
INSERT INTO `person_maintenance` VALUES (12, '张三', 2, '手机', NULL, '16007280312', '2023-01-21 22:16:23');
INSERT INTO `person_maintenance` VALUES (13, '张三', 1, '电脑', NULL, '16073893092', '2023-04-08 12:09:51');
INSERT INTO `person_maintenance` VALUES (14, '张三', 2, '手机', NULL, '15932456850', '2023-03-27 06:16:37');
INSERT INTO `person_maintenance` VALUES (15, '李四', 1, '自行车', NULL, '15448183811', '2023-06-14 00:55:29');
INSERT INTO `person_maintenance` VALUES (16, '李四', 3, '手机', NULL, '15431390982', '2023-07-22 00:01:50');
INSERT INTO `person_maintenance` VALUES (17, '李四', 1, '鞋', NULL, '15372552383', '2023-06-12 06:22:29');
INSERT INTO `person_maintenance` VALUES (18, '李四', 1, '自行车', NULL, '15805696879', '2023-03-25 22:42:29');
INSERT INTO `person_maintenance` VALUES (19, '李四', 1, '自行车', NULL, '15870994474', '2023-07-01 19:26:29');
INSERT INTO `person_maintenance` VALUES (20, '张三', 2, '平板', NULL, '15595512031', '2023-06-20 23:48:26');
INSERT INTO `person_maintenance` VALUES (21, '张三', 1, '鞋', NULL, '15987087996', '2023-05-08 02:52:43');
INSERT INTO `person_maintenance` VALUES (22, '张三', 1, '电脑', NULL, '15187670867', '2023-01-08 11:24:47');
INSERT INTO `person_maintenance` VALUES (23, '李四', 1, '平板', NULL, '15565724266', '2023-04-26 17:27:15');
INSERT INTO `person_maintenance` VALUES (24, '张三', 2, '电动车', NULL, '15668527943', '2023-06-04 02:33:54');
INSERT INTO `person_maintenance` VALUES (25, '李四', 3, '鞋', NULL, '15432578605', '2023-05-01 08:41:53');
INSERT INTO `person_maintenance` VALUES (26, '李四', 1, '平板', NULL, '15184588128', '2023-01-10 16:18:43');
INSERT INTO `person_maintenance` VALUES (27, '张三', 3, '自行车', NULL, '16114728830', '2023-02-05 04:26:56');
INSERT INTO `person_maintenance` VALUES (28, '张三', 2, '电动车', NULL, '16159810651', '2023-01-24 17:14:37');
INSERT INTO `person_maintenance` VALUES (29, '张三', 1, '平板', NULL, '15651811150', '2023-05-13 22:55:46');
INSERT INTO `person_maintenance` VALUES (30, '李四', 3, '电动车', NULL, '15759561306', '2023-07-11 19:49:18');
INSERT INTO `person_maintenance` VALUES (31, '李四', 1, '衣架', '衣架裂开了', '16103103616', '2023-07-15 10:38:14');

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
INSERT INTO `person_recharge` VALUES (15, 19, '热水', 53.4, '2022-06-21 08:02:11');
INSERT INTO `person_recharge` VALUES (16, 18, '一卡通', 63.3, '2023-01-16 22:14:43');
INSERT INTO `person_recharge` VALUES (17, 8, '一卡通', 67.7, '2022-01-24 00:25:35');
INSERT INTO `person_recharge` VALUES (18, 15, '一卡通', 65.0, '2023-01-19 20:01:28');
INSERT INTO `person_recharge` VALUES (19, 20, '一卡通', 52.2, '2022-11-05 05:52:38');
INSERT INTO `person_recharge` VALUES (20, 9, '热水', 65.0, '2022-07-06 11:24:49');
INSERT INTO `person_recharge` VALUES (21, 16, '热水', 56.1, '2023-04-13 06:01:02');
INSERT INTO `person_recharge` VALUES (22, 13, '一卡通', 56.1, '2022-07-26 11:43:18');
INSERT INTO `person_recharge` VALUES (23, 14, '一卡通', 55.1, '2022-11-21 18:46:55');
INSERT INTO `person_recharge` VALUES (24, 18, '热水', 56.5, '2023-07-17 07:57:10');
INSERT INTO `person_recharge` VALUES (25, 13, '热水', 57.2, '2022-01-20 13:22:37');
INSERT INTO `person_recharge` VALUES (26, 14, '热水', 60.6, '2022-05-21 21:22:52');
INSERT INTO `person_recharge` VALUES (27, 12, '热水', 66.0, '2023-02-04 00:43:41');
INSERT INTO `person_recharge` VALUES (28, 10, '热水', 55.0, '2023-06-02 01:16:21');
INSERT INTO `person_recharge` VALUES (29, 3, '热水', 54.0, '2022-07-08 17:05:18');
INSERT INTO `person_recharge` VALUES (30, 10, '热水', 54.6, '2023-06-29 06:56:50');
INSERT INTO `person_recharge` VALUES (31, 11, '热水', 56.6, '2022-10-18 15:11:41');
INSERT INTO `person_recharge` VALUES (32, 15, '一卡通', 51.2, '2022-02-05 14:31:16');
INSERT INTO `person_recharge` VALUES (33, 9, '热水', 65.6, '2022-04-01 23:21:00');
INSERT INTO `person_recharge` VALUES (34, 6, '热水', 67.4, '2022-04-08 08:38:05');
INSERT INTO `person_recharge` VALUES (35, 19, '一卡通', 55.4, '2022-08-01 05:48:12');
INSERT INTO `person_recharge` VALUES (36, 10, '一卡通', 56.0, '2022-05-02 16:39:11');
INSERT INTO `person_recharge` VALUES (37, 20, '一卡通', 68.0, '2023-07-20 20:33:11');
INSERT INTO `person_recharge` VALUES (38, 8, '一卡通', 57.7, '2022-09-04 15:01:50');
INSERT INTO `person_recharge` VALUES (39, 11, '一卡通', 54.2, '2023-05-19 06:53:56');
INSERT INTO `person_recharge` VALUES (40, 11, '一卡通', 52.4, '2022-07-28 09:06:02');
INSERT INTO `person_recharge` VALUES (41, 14, '一卡通', 57.5, '2022-10-19 06:25:58');
INSERT INTO `person_recharge` VALUES (42, 5, '一卡通', 50.8, '2023-07-13 23:04:35');
INSERT INTO `person_recharge` VALUES (43, 11, '一卡通', 51.0, '2023-05-12 02:33:30');
INSERT INTO `person_recharge` VALUES (44, 2, '热水', 55.4, '2022-10-24 23:57:12');

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
INSERT INTO `student` VALUES (20052317, '学生2', 'password', '2020', '5', '103', 197.1, 28.8, '15249291795');
INSERT INTO `student` VALUES (20052390, '学生12', 'password', '2020', '3', '101', 234.0, 11.6, '15867354230');
INSERT INTO `student` VALUES (20052430, '学生6', 'password', '2023', '1', '203', 205.3, 14.3, '15464746837');
INSERT INTO `student` VALUES (20052461, '学生9', 'password', '2020', '1', '505', 288.3, 24.8, '15671513606');
INSERT INTO `student` VALUES (20052475, '学生3', 'password', '2021', '5', '102', 105.7, 13.5, '15642477570');
INSERT INTO `student` VALUES (20052481, '学生4', 'password', '2020', '6', '703', 217.3, 23.9, '15898019342');
INSERT INTO `student` VALUES (20052493, '学生5', 'password', '2022', '1', '406', 145.9, 20.9, '15858369812');
INSERT INTO `student` VALUES (20052500, '学生8', 'password', '2021', '5', '703', 265.9, 13.7, '16040200620');
INSERT INTO `student` VALUES (20052536, '学生7', 'password', '2021', '6', '203', 242.6, 11.2, '15325810229');
INSERT INTO `student` VALUES (20052575, '学生10', 'password', '2022', '3', '103', 168.0, 16.3, '15941683708');
INSERT INTO `student` VALUES (20052602, '学生13', 'password', '2022', '6', '703', 242.1, 15.3, '15950423654');
INSERT INTO `student` VALUES (20052611, '学生11', 'password', '2023', '4', '203', 222.2, 19.6, '15940325423');
INSERT INTO `student` VALUES (20052704, '学生1', 'password', '2022', '7', '103', 262.1, 16.5, '15197392983');

SET FOREIGN_KEY_CHECKS = 1;
