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

 Date: 16/07/2023 10:59:27
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
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
-- Table structure for consumer_record
-- ----------------------------
DROP TABLE IF EXISTS `consumer_record`;
CREATE TABLE `consumer_record`  (
  `cid` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sid` int(0) NULL DEFAULT NULL COMMENT '消费者',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '消费类型',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '消费地点',
  `amount` double(10, 1) NULL DEFAULT NULL COMMENT '金额',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of consumer_record
-- ----------------------------
INSERT INTO `consumer_record` VALUES (1, 20052319, '餐饮', '餐厅3', 21.1, '2023-01-08 14:32:52');
INSERT INTO `consumer_record` VALUES (2, 20052318, '水果', '餐厅3', 19.2, '2023-03-03 02:08:42');
INSERT INTO `consumer_record` VALUES (3, 20052318, '餐饮', '餐厅1', 27.7, '2023-06-05 17:38:36');
INSERT INTO `consumer_record` VALUES (4, 20052319, '餐饮', '餐厅1', 20.3, '2023-02-13 20:19:48');
INSERT INTO `consumer_record` VALUES (5, 20052317, '水果', '餐厅2', 26.2, '2023-04-10 09:15:45');
INSERT INTO `consumer_record` VALUES (6, 20052319, '餐饮', '餐厅1', 20.1, '2023-04-08 18:09:36');
INSERT INTO `consumer_record` VALUES (7, 20052319, '水果', '餐厅1', 24.8, '2023-02-10 04:16:28');
INSERT INTO `consumer_record` VALUES (8, 20052319, '餐饮', '餐厅3', 17.3, '2023-06-05 07:38:07');
INSERT INTO `consumer_record` VALUES (9, 20052318, '水果', '餐厅2', 15.3, '2023-03-26 18:49:50');
INSERT INTO `consumer_record` VALUES (10, 20052318, '甜品', '餐厅3', 22.6, '2023-05-29 01:52:23');
INSERT INTO `consumer_record` VALUES (11, 20052319, '水果', '餐厅1', 20.1, '2023-01-24 14:59:11');
INSERT INTO `consumer_record` VALUES (12, 20052317, '水果', '餐厅2', 20.9, '2023-07-07 10:25:59');
INSERT INTO `consumer_record` VALUES (13, 20052320, '水果', '餐厅1', 17.0, '2023-04-29 14:43:49');
INSERT INTO `consumer_record` VALUES (14, 20052317, '甜品', '餐厅3', 14.1, '2023-06-27 19:04:56');
INSERT INTO `consumer_record` VALUES (15, 20052320, '甜品', '餐厅1', 25.5, '2023-03-04 03:11:54');
INSERT INTO `consumer_record` VALUES (16, 20052317, '餐饮', '餐厅3', 21.0, '2023-05-23 18:39:41');
INSERT INTO `consumer_record` VALUES (17, 20052319, '餐饮', '餐厅3', 24.8, '2023-01-22 15:29:01');
INSERT INTO `consumer_record` VALUES (18, 20052320, '甜品', '餐厅1', 17.4, '2023-07-10 11:00:16');
INSERT INTO `consumer_record` VALUES (19, 20052318, '餐饮', '餐厅1', 19.9, '2023-03-12 13:21:13');
INSERT INTO `consumer_record` VALUES (20, 20052317, '水果', '餐厅3', 14.9, '2023-07-30 12:50:07');
INSERT INTO `consumer_record` VALUES (21, 20052320, '水果', '餐厅1', 23.9, '2023-04-28 00:31:24');
INSERT INTO `consumer_record` VALUES (22, 20052320, '甜品', '餐厅2', 29.0, '2023-07-14 12:55:26');
INSERT INTO `consumer_record` VALUES (23, 20052318, '餐饮', '餐厅2', 11.2, '2023-02-24 13:13:35');
INSERT INTO `consumer_record` VALUES (24, 20052318, '甜品', '餐厅1', 25.6, '2023-06-08 20:54:04');
INSERT INTO `consumer_record` VALUES (25, 20052319, '水果', '餐厅3', 21.3, '2023-05-24 23:04:39');
INSERT INTO `consumer_record` VALUES (26, 20052317, '甜品', '餐厅2', 15.7, '2023-06-03 22:37:10');
INSERT INTO `consumer_record` VALUES (27, 20052318, '水果', '餐厅3', 26.7, '2023-02-09 15:05:03');
INSERT INTO `consumer_record` VALUES (28, 20052317, '餐饮', '餐厅2', 18.7, '2023-01-04 00:28:24');
INSERT INTO `consumer_record` VALUES (29, 20052319, '餐饮', '餐厅1', 21.4, '2023-03-08 16:02:18');
INSERT INTO `consumer_record` VALUES (30, 20052318, '甜品', '餐厅1', 29.4, '2023-03-25 09:35:58');
INSERT INTO `consumer_record` VALUES (31, 20052317, '水果', '餐厅2', 27.5, '2023-04-14 23:07:33');
INSERT INTO `consumer_record` VALUES (32, 20052319, '餐饮', '餐厅3', 26.2, '2023-04-07 16:00:49');
INSERT INTO `consumer_record` VALUES (33, 20052319, '甜品', '餐厅2', 11.1, '2023-06-17 05:31:44');
INSERT INTO `consumer_record` VALUES (34, 20052320, '餐饮', '餐厅3', 22.5, '2023-04-03 11:46:46');
INSERT INTO `consumer_record` VALUES (35, 20052319, '甜品', '餐厅3', 27.5, '2023-04-17 16:51:19');
INSERT INTO `consumer_record` VALUES (36, 20052320, '餐饮', '餐厅3', 24.8, '2023-07-01 15:48:11');
INSERT INTO `consumer_record` VALUES (37, 20052318, '餐饮', '餐厅3', 21.1, '2023-05-07 00:50:21');
INSERT INTO `consumer_record` VALUES (38, 20052320, '甜品', '餐厅1', 16.6, '2023-03-22 16:19:13');
INSERT INTO `consumer_record` VALUES (39, 20052318, '餐饮', '餐厅2', 21.4, '2023-07-16 01:04:53');

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
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dorm
-- ----------------------------
INSERT INTO `dorm` VALUES (2, 1, 101, 234.3, 272.2);
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
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `dorm_maintenance` VALUES (62, '4', '103', '电器', '', '10086', '2023-07-16 08:47:14');
INSERT INTO `dorm_maintenance` VALUES (63, '1', '101', '水管', '', '10086', '2023-07-16 08:47:28');

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
INSERT INTO `dorm_recharge` VALUES (1, '1', '101', '水', 50.0, '张三', '2023-07-14 10:40:37');
INSERT INTO `dorm_recharge` VALUES (2, '1', '101', '电', 62.3, '李四', '2023-07-12 10:40:57');
INSERT INTO `dorm_recharge` VALUES (3, '1', '101', '水', 60.3, '王五', '2023-07-06 10:41:18');
INSERT INTO `dorm_recharge` VALUES (4, '1', '101', '水', 60.3, '李四', '2023-07-03 10:41:32');
INSERT INTO `dorm_recharge` VALUES (5, '3', '101', '水', 35.2, NULL, '2023-07-14 10:52:03');
INSERT INTO `dorm_recharge` VALUES (6, '1', '101', '水', 35.2, '张三', '2023-07-14 10:52:17');
INSERT INTO `dorm_recharge` VALUES (7, '1', '202', '水', 35.2, '张三', '2023-07-14 10:52:47');
INSERT INTO `dorm_recharge` VALUES (8, '3', '202', '水', 35.2, '张三', '2023-07-15 09:11:49');
INSERT INTO `dorm_recharge` VALUES (9, '1', '101', '电', 10.0, '张三', '2023-07-16 08:46:22');

-- ----------------------------
-- Table structure for legwork
-- ----------------------------
DROP TABLE IF EXISTS `legwork`;
CREATE TABLE `legwork`  (
  `hid` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类型',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '发布时间',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '状态',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '描述',
  `destination` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '目的地',
  `amount` double(10, 1) NULL DEFAULT NULL COMMENT '金额',
  `publisherid` int(0) NULL DEFAULT NULL COMMENT '发布人',
  `selectorid` int(0) NULL DEFAULT NULL COMMENT '接收人',
  PRIMARY KEY (`hid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of legwork
-- ----------------------------
INSERT INTO `legwork` VALUES (1, '买饭', '2023-07-16 10:41:59', '待帮助', '帮我买一份鱼香肉丝盖饭', '1号楼101', 2.0, 1, 3);
INSERT INTO `legwork` VALUES (2, '买饭', '2023-07-16 10:41:59', '已完成', '帮我买一份鱼香肉丝盖饭', '1号楼101', 2.0, 3, 1);
INSERT INTO `legwork` VALUES (3, '带药', '2023-07-05 21:30:04', '待帮助', '帮忙带一下，谢谢大伙', '1号楼101', 5.3, 4, 14);
INSERT INTO `legwork` VALUES (4, '带水果', '2023-03-04 12:29:33', '已完成', '帮忙带一下，谢谢大伙', '1号楼101', 5.4, 5, 15);
INSERT INTO `legwork` VALUES (5, '带饭', '2023-04-24 16:00:03', '已完成', '帮忙带一下，谢谢大伙', '2号楼101', 3.8, 5, 13);
INSERT INTO `legwork` VALUES (6, '带药', '2023-06-04 03:14:22', '待帮助', '帮忙带一下，谢谢大伙', '1号楼103', 3.3, 3, 11);
INSERT INTO `legwork` VALUES (7, '带药', '2023-01-24 07:48:03', '已完成', '帮忙带一下，谢谢大伙', '1号楼103', 2.2, 4, 10);
INSERT INTO `legwork` VALUES (8, '带饭', '2023-02-07 09:05:09', '待帮助', '帮忙带一下，谢谢大伙', '1号楼103', 5.8, 2, 13);
INSERT INTO `legwork` VALUES (9, '带饭', '2023-04-25 01:26:33', '待帮助', '帮忙带一下，谢谢大伙', '1号楼104', 5.7, 2, 13);
INSERT INTO `legwork` VALUES (10, '带药', '2023-03-04 13:23:44', '待帮助', '帮忙带一下，谢谢大伙', '1号楼102', 3.5, 1, 15);
INSERT INTO `legwork` VALUES (11, '带饭', '2023-03-15 06:26:27', '待帮助', '帮忙带一下，谢谢大伙', '1号楼103', 3.0, 2, 13);
INSERT INTO `legwork` VALUES (12, '带药', '2023-06-04 19:46:41', '已完成', '帮忙带一下，谢谢大伙', '2号楼101', 5.3, 3, 12);
INSERT INTO `legwork` VALUES (13, '带水果', '2023-04-12 10:21:16', '待帮助', '帮忙带一下，谢谢大伙', '2号楼102', 4.0, 2, 13);
INSERT INTO `legwork` VALUES (14, '带药', '2023-05-20 01:20:22', '待帮助', '帮忙带一下，谢谢大伙', '1号楼103', 4.5, 2, 14);
INSERT INTO `legwork` VALUES (15, '带药', '2023-06-06 08:14:21', '待帮助', '帮忙带一下，谢谢大伙', '1号楼101', 5.9, 5, 15);
INSERT INTO `legwork` VALUES (16, '带饭', '2023-04-09 19:40:43', '已完成', '帮忙带一下，谢谢大伙', '1号楼103', 4.2, 4, 14);
INSERT INTO `legwork` VALUES (17, '带饭', '2023-03-28 08:19:03', '待帮助', '帮忙带一下，谢谢大伙', '1号楼105', 3.5, 3, 14);
INSERT INTO `legwork` VALUES (18, '带药', '2023-03-06 20:44:23', '已完成', '帮忙带一下，谢谢大伙', '1号楼105', 3.7, 1, 14);
INSERT INTO `legwork` VALUES (19, '带药', '2023-04-10 21:00:38', '待帮助', '帮忙带一下，谢谢大伙', '1号楼104', 4.9, 5, 15);
INSERT INTO `legwork` VALUES (20, '带饭', '2023-04-12 06:40:59', '已完成', '帮忙带一下，谢谢大伙', '1号楼105', 5.4, 2, 10);
INSERT INTO `legwork` VALUES (21, '带饭', '2023-04-17 04:36:57', '已完成', '帮忙带一下，谢谢大伙', '2号楼101', 2.5, 4, 10);
INSERT INTO `legwork` VALUES (22, '带水果', '2023-03-27 08:26:06', '已完成', '帮忙带一下，谢谢大伙', '1号楼102', 2.6, 1, 10);
INSERT INTO `legwork` VALUES (23, '带药', '2023-06-28 03:36:11', '已完成', '帮忙带一下，谢谢大伙', '1号楼103', 5.3, 3, 13);
INSERT INTO `legwork` VALUES (24, '带饭', '2023-03-27 19:37:17', '已完成', '帮忙带一下，谢谢大伙', '1号楼101', 4.3, 4, 12);
INSERT INTO `legwork` VALUES (25, '带水果', '2023-05-02 20:05:35', '已完成', '帮忙带一下，谢谢大伙', '2号楼102', 4.4, 1, 11);
INSERT INTO `legwork` VALUES (26, '带水果', '2023-02-05 02:00:49', '待帮助', '帮忙带一下，谢谢大伙', '1号楼105', 3.2, 3, 10);
INSERT INTO `legwork` VALUES (27, '带饭', '2023-06-07 04:54:55', '待帮助', '帮忙带一下，谢谢大伙', '1号楼105', 2.4, 3, 14);
INSERT INTO `legwork` VALUES (28, '带水果', '2023-04-05 00:07:41', '待帮助', '帮忙带一下，谢谢大伙', '1号楼105', 3.9, 1, 12);
INSERT INTO `legwork` VALUES (29, '带水果', '2023-07-10 05:11:46', '已完成', '帮忙带一下，谢谢大伙', '2号楼101', 2.5, 1, 14);
INSERT INTO `legwork` VALUES (30, '带药', '2023-01-25 06:54:01', '待帮助', '帮忙带一下，谢谢大伙', '1号楼104', 2.4, 2, 14);
INSERT INTO `legwork` VALUES (31, '带饭', '2023-05-01 17:52:01', '已完成', '帮忙带一下，谢谢大伙', '1号楼103', 2.8, 2, 15);
INSERT INTO `legwork` VALUES (32, '带水果', '2023-01-09 08:13:17', '已完成', '帮忙带一下，谢谢大伙', '2号楼101', 4.7, 3, 13);
INSERT INTO `legwork` VALUES (33, '带水果', '2023-03-17 22:46:07', '待帮助', '帮忙带一下，谢谢大伙', '1号楼105', 4.7, 4, 14);
INSERT INTO `legwork` VALUES (34, '带饭', '2023-02-17 11:18:59', '已完成', '帮忙带一下，谢谢大伙', '1号楼102', 4.9, 1, 14);
INSERT INTO `legwork` VALUES (35, '带药', '2023-01-11 14:11:22', '待帮助', '帮忙带一下，谢谢大伙', '1号楼101', 2.6, 3, 10);
INSERT INTO `legwork` VALUES (36, '带水果', '2023-01-01 08:08:55', '待帮助', '帮忙带一下，谢谢大伙', '1号楼102', 3.1, 3, 12);
INSERT INTO `legwork` VALUES (37, '带水果', '2023-01-01 11:39:26', '待帮助', '帮忙带一下，谢谢大伙', '1号楼102', 3.6, 5, 15);
INSERT INTO `legwork` VALUES (38, '带水果', '2023-04-13 16:35:23', '已完成', '帮忙带一下，谢谢大伙', '1号楼102', 2.3, 4, 14);
INSERT INTO `legwork` VALUES (39, '带水果', '2023-05-12 18:56:02', '待帮助', '帮忙带一下，谢谢大伙', '1号楼105', 2.0, 1, 15);
INSERT INTO `legwork` VALUES (40, '带水果', '2023-04-25 14:35:50', '已完成', '帮忙带一下，谢谢大伙', '1号楼101', 3.5, 3, 15);
INSERT INTO `legwork` VALUES (41, '带水果', '2023-02-17 14:51:06', '已完成', '帮忙带一下，谢谢大伙', '1号楼102', 4.3, 5, 13);
INSERT INTO `legwork` VALUES (42, '带药', '2023-05-04 12:51:27', '已完成', '帮忙带一下，谢谢大伙', '1号楼103', 3.6, 2, 10);
INSERT INTO `legwork` VALUES (43, '带水果', '2023-07-20 04:28:27', '已完成', '帮忙带一下，谢谢大伙', '1号楼102', 2.2, 5, 12);
INSERT INTO `legwork` VALUES (44, '带水果', '2023-03-21 12:49:16', '已完成', '帮忙带一下，谢谢大伙', '1号楼102', 3.1, 2, 15);
INSERT INTO `legwork` VALUES (45, '带饭', '2023-03-19 19:34:15', '已完成', '帮忙带一下，谢谢大伙', '1号楼104', 2.1, 5, 13);
INSERT INTO `legwork` VALUES (46, '带饭', '2023-04-22 21:33:24', '待帮助', '帮忙带一下，谢谢大伙', '1号楼102', 5.4, 2, 14);
INSERT INTO `legwork` VALUES (47, '带药', '2023-01-31 14:29:12', '已完成', '帮忙带一下，谢谢大伙', '1号楼104', 5.2, 2, 13);
INSERT INTO `legwork` VALUES (48, '带饭', '2023-01-12 18:09:32', '待帮助', '帮忙带一下，谢谢大伙', '1号楼102', 5.9, 2, 14);
INSERT INTO `legwork` VALUES (49, '带水果', '2023-03-13 04:18:27', '待帮助', '帮忙带一下，谢谢大伙', '1号楼104', 2.7, 3, 10);
INSERT INTO `legwork` VALUES (50, '带饭', '2023-05-01 16:09:53', '已完成', '帮忙带一下，谢谢大伙', '1号楼101', 3.3, 3, 13);
INSERT INTO `legwork` VALUES (51, '带药', '2023-07-16 15:57:25', '已完成', '帮忙带一下，谢谢大伙', '1号楼105', 6.0, 2, 10);
INSERT INTO `legwork` VALUES (52, '带水果', '2023-04-03 05:51:55', '待帮助', '帮忙带一下，谢谢大伙', '1号楼104', 5.2, 2, 14);
INSERT INTO `legwork` VALUES (53, '带水果', '2023-05-02 14:57:26', '已完成', '帮忙带一下，谢谢大伙', '1号楼103', 3.8, 3, 13);
INSERT INTO `legwork` VALUES (54, '带饭', '2023-01-01 04:14:33', '待帮助', '帮忙带一下，谢谢大伙', '1号楼102', 3.2, 5, 12);
INSERT INTO `legwork` VALUES (55, '带药', '2023-02-09 23:47:48', '已完成', '帮忙带一下，谢谢大伙', '1号楼105', 4.1, 1, 11);
INSERT INTO `legwork` VALUES (56, '带饭', '2023-03-07 14:11:40', '已完成', '帮忙带一下，谢谢大伙', '1号楼104', 4.1, 4, 12);
INSERT INTO `legwork` VALUES (57, '带药', '2023-07-05 13:02:01', '待帮助', '帮忙带一下，谢谢大伙', '1号楼101', 3.9, 4, 11);
INSERT INTO `legwork` VALUES (58, '带水果', '2023-02-05 03:05:42', '已完成', '帮忙带一下，谢谢大伙', '1号楼101', 2.5, 3, 13);
INSERT INTO `legwork` VALUES (59, '带水果', '2023-06-02 23:16:15', '已完成', '帮忙带一下，谢谢大伙', '2号楼101', 2.4, 4, 10);
INSERT INTO `legwork` VALUES (60, '带饭', '2023-03-03 14:26:46', '待帮助', '帮忙带一下，谢谢大伙', '1号楼105', 4.1, 2, 15);
INSERT INTO `legwork` VALUES (61, '带水果', '2023-05-23 04:18:03', '已完成', '帮忙带一下，谢谢大伙', '2号楼101', 2.3, 4, 12);
INSERT INTO `legwork` VALUES (62, '带饭', '2023-01-05 04:51:20', '待帮助', '帮忙带一下，谢谢大伙', '1号楼103', 5.7, 3, 14);
INSERT INTO `legwork` VALUES (63, '带饭', '2023-06-29 11:18:53', '已完成', '帮忙带一下，谢谢大伙', '1号楼105', 3.5, 5, 12);
INSERT INTO `legwork` VALUES (64, '带饭', '2023-06-24 22:14:45', '待帮助', '帮忙带一下，谢谢大伙', '1号楼102', 4.6, 5, 13);
INSERT INTO `legwork` VALUES (65, '带药', '2023-03-30 03:09:37', '已完成', '帮忙带一下，谢谢大伙', '2号楼101', 2.1, 4, 12);
INSERT INTO `legwork` VALUES (66, '带水果', '2023-04-20 14:28:03', '已完成', '帮忙带一下，谢谢大伙', '1号楼102', 3.5, 3, 11);
INSERT INTO `legwork` VALUES (67, '带药', '2023-04-05 00:58:10', '已完成', '帮忙带一下，谢谢大伙', '1号楼101', 2.6, 5, 13);
INSERT INTO `legwork` VALUES (68, '带药', '2023-04-22 08:13:05', '待帮助', '帮忙带一下，谢谢大伙', '1号楼103', 2.7, 5, 14);
INSERT INTO `legwork` VALUES (69, '带饭', '2023-05-19 12:21:34', '待帮助', '帮忙带一下，谢谢大伙', '1号楼101', 5.6, 2, 14);
INSERT INTO `legwork` VALUES (70, '带饭', '2023-03-04 13:34:43', '待帮助', '帮忙带一下，谢谢大伙', '2号楼102', 5.7, 1, 10);
INSERT INTO `legwork` VALUES (71, '带饭', '2023-06-18 05:23:51', '待帮助', '帮忙带一下，谢谢大伙', '1号楼102', 5.5, 1, 15);
INSERT INTO `legwork` VALUES (72, '带饭', '2023-07-24 02:37:09', '待帮助', '帮忙带一下，谢谢大伙', '2号楼102', 5.1, 3, 12);

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
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `person_recharge` VALUES (45, 1, '热水', 250.0, '2023-07-16 08:43:08');
INSERT INTO `person_recharge` VALUES (46, 1, '热水', 100.0, '2023-07-16 08:43:11');
INSERT INTO `person_recharge` VALUES (47, 1, '热水', 150.0, '2023-07-16 08:43:13');
INSERT INTO `person_recharge` VALUES (48, 1, '热水', 200.0, '2023-07-16 08:43:15');
INSERT INTO `person_recharge` VALUES (49, 1, '热水', 10.0, '2023-07-16 08:44:49');
INSERT INTO `person_recharge` VALUES (50, 1, '热水', 10.0, '2023-07-16 08:44:50');
INSERT INTO `person_recharge` VALUES (51, 1, '热水', 10.0, '2023-07-16 08:44:50');
INSERT INTO `person_recharge` VALUES (52, 1, '热水', 10.0, '2023-07-16 08:44:50');
INSERT INTO `person_recharge` VALUES (53, 1, '热水', 10.0, '2023-07-16 08:44:50');
INSERT INTO `person_recharge` VALUES (54, 1, '热水', 10.0, '2023-07-16 08:44:50');
INSERT INTO `person_recharge` VALUES (55, 1, '热水', 10.0, '2023-07-16 08:44:50');
INSERT INTO `person_recharge` VALUES (56, 1, '热水', 100.0, '2023-07-16 08:44:59');
INSERT INTO `person_recharge` VALUES (57, 20052319, '一卡通', 250.0, '2023-07-16 08:46:00');
INSERT INTO `person_recharge` VALUES (58, 20052319, '一卡通', 50.0, '2023-07-16 08:46:05');
INSERT INTO `person_recharge` VALUES (59, 20052319, '一卡通', 150.0, '2023-07-16 08:46:08');
INSERT INTO `person_recharge` VALUES (60, 20052319, '热水', 20.0, '2023-07-16 08:46:36');
INSERT INTO `person_recharge` VALUES (61, 20052319, '热水', 50.0, '2023-07-16 08:46:40');

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
INSERT INTO `student` VALUES (2, '李四', '456', '2021', '5', '602', 345.3, 20.3, '10087');
INSERT INTO `student` VALUES (6, '王五', '123', '2022', '6', '102', 65.0, 35.0, '10088');
INSERT INTO `student` VALUES (20052317, '学生2', 'password', '2020', '5', '103', 197.1, 28.8, '15249291795');
INSERT INTO `student` VALUES (20052319, '张三', '123', '2020', '1', '101', 1513.8, 2149.0, '10086');
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
