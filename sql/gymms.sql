/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : gymms

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 10/05/2020 22:43:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'admin', '菜菜菜', '17726019596');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `begintime` datetime(0) NULL DEFAULT NULL,
  `endtime` datetime(0) NULL DEFAULT NULL,
  `remainday` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '1139545277', 'ccppgg', '孙悟空', '男', '18892209545', 500, '2020-05-06 00:00:00', '2020-07-25 00:00:00', 80);
INSERT INTO `user` VALUES (2, 'chao123', 'user', '超级玛丽', '男', '15690634689', 22, '2020-05-06 00:00:00', '2020-10-20 00:00:00', 167);
INSERT INTO `user` VALUES (3, 'zhao123', 'user', '赵信', '男', '15690634456', 30, '2020-05-07 00:00:00', '2021-05-02 00:00:00', 360);
INSERT INTO `user` VALUES (4, 'hui123', 'user', '灰太狼', '男', '16923544345', 30, '2020-05-06 00:00:00', '2020-11-22 00:00:00', 200);
INSERT INTO `user` VALUES (6, 'hong123', 'user', '红太狼', '女', '18335679546', 30, '2020-05-07 00:00:00', '2021-04-18 00:00:00', 346);
INSERT INTO `user` VALUES (7, 'gaung', 'user', '光头强', '男', '12723544659', 45, '2020-05-08 00:00:00', '2020-11-04 00:00:00', 180);
INSERT INTO `user` VALUES (8, 'liu123', 'user', '刘德华', '男', '13692209546', 70, '2020-05-15 00:00:00', '2021-05-15 00:00:00', 365);
INSERT INTO `user` VALUES (9, 'di123', 'user', '荻野千寻', '女', '17726019893', 15, '2020-05-07 00:00:00', '2021-03-03 00:00:00', 300);
INSERT INTO `user` VALUES (10, 'song123', 'user', '宋江', '男', '18357209546', 47, '2020-05-07 00:00:00', '2021-08-18 00:00:00', 468);
INSERT INTO `user` VALUES (11, 'ou123', 'user', '欧阳娜娜', '女', '18893642746', 20, '2020-05-07 00:00:00', '2020-07-03 00:00:00', 57);
INSERT INTO `user` VALUES (12, 'ku123', 'user', '酷安小编', '男', '18394039546', 26, '2020-05-29 00:00:00', '2021-01-19 00:00:00', 235);
INSERT INTO `user` VALUES (13, 'tiejia', 'user', '铁甲小宝', '男', '', 15, '2020-04-16 00:00:00', '2021-07-23 00:00:00', 463);
INSERT INTO `user` VALUES (14, 'wangfeng', 'user', '汪峰', '男', '18892200936', 63, '2020-04-10 00:00:00', '2020-12-11 00:00:00', 245);
INSERT INTO `user` VALUES (15, 'longmao', 'user', '龙猫', '女', '13592889746', 11, '2020-05-20 00:00:00', '2020-06-24 00:00:00', 35);
INSERT INTO `user` VALUES (16, 'luozhixiang', 'user222', '时间管理大师', '男', '13435679546', 45, '2020-05-20 00:00:00', '2022-09-06 00:00:00', 839);
INSERT INTO `user` VALUES (18, 'jierui', 'user', '杰瑞', '男', '18242889746', 12, '2020-05-22 00:00:00', '2021-07-31 00:00:00', 435);
INSERT INTO `user` VALUES (19, 'tom', 'user', '汤姆猫', '男', '13423544689', 12, '2020-05-20 00:00:00', '2020-10-23 00:00:00', 156);
INSERT INTO `user` VALUES (20, 'tang', 'user', '唐僧', '男', '14533544689', 44, '2020-05-21 00:00:00', '2021-04-28 00:00:00', 342);
INSERT INTO `user` VALUES (21, 'chegn', 'user', '成德善', '女', '14573544689', 19, '2020-06-18 00:00:00', '2022-12-08 00:00:00', 903);
INSERT INTO `user` VALUES (22, 'chuyuxun', 'user', '楚雨荨', '女', '15690634456', 21, '2020-05-06 00:00:00', '2020-06-20 00:00:00', 45);
INSERT INTO `user` VALUES (23, 'ma123', 'user', '马大帅', '男', '18335679546', 45, '2020-05-13 00:00:00', '2021-03-03 00:00:00', 294);
INSERT INTO `user` VALUES (29, 'admin', 'admin', '蔡大帅哥', '男', '15578934689', 21, '2020-01-09 00:00:00', '2020-08-31 00:00:00', 235);
INSERT INTO `user` VALUES (30, 'haoba', 'user', 'bug好多', '男', '15690634456', 30, '2020-05-12 00:00:00', '2021-05-12 00:00:00', 365);
INSERT INTO `user` VALUES (31, 'zhang123', '43535', '张艺谋', '男', '18346589546', 60, '2020-05-20 00:00:00', '2021-05-20 00:00:00', 365);
INSERT INTO `user` VALUES (32, 'ali', 'ali123', '阿狸', '男', '15690634456', 18, '2020-05-20 00:00:00', '2021-04-09 00:00:00', 324);
INSERT INTO `user` VALUES (33, 'anjl', 'user', '安琪拉', '女', '18892209546', 12, '2020-04-09 00:00:00', '2020-05-25 00:00:00', 46);
INSERT INTO `user` VALUES (34, 'garen', 'user', '盖伦', '男', '15690634456', 70, '2020-05-19 00:00:00', '2020-10-01 00:00:00', 135);
INSERT INTO `user` VALUES (35, 'lalala', 'user', '开心', '女', '18335679546', 45, '2020-05-19 00:00:00', '2021-04-26 00:00:00', 342);
INSERT INTO `user` VALUES (36, 'liuxing', 'user', '刘星', '男', '18335679546', 12, '2020-05-26 00:00:00', '2021-05-26 00:00:00', 365);
INSERT INTO `user` VALUES (37, 'xiayu', 'qw232', '夏雨', '男', '16923544689', 12, '2020-05-27 00:00:00', '2020-10-09 00:00:00', 135);
INSERT INTO `user` VALUES (38, 'kuke', 'apple', '库克', '男', '16923544689', 50, '2020-05-19 00:00:00', '2020-10-25 00:00:00', 159);
INSERT INTO `user` VALUES (39, 'bajie', '25234', '八戒', '男', '13523848392', 37, '2020-05-27 00:00:00', '2021-01-17 00:00:00', 235);
INSERT INTO `user` VALUES (40, 'hutu', '3253452', '胡图图', '男', '13459439404', 8, '2020-05-19 00:00:00', '2021-05-01 00:00:00', 347);
INSERT INTO `user` VALUES (41, 'mayun', '18384', '杰克马', '男', '14594032304', 60, '2020-05-31 00:00:00', '2023-02-24 00:00:00', 999);
INSERT INTO `user` VALUES (42, 'hui', 'user', '测试', '男', '15690634456', 70, '2020-05-20 00:00:00', '2021-05-20 00:00:00', 365);
INSERT INTO `user` VALUES (43, 'yueliang', 'user', '月亮', '女', '16923544689', 18, '2020-05-19 00:00:00', '2020-06-24 00:00:00', 36);
INSERT INTO `user` VALUES (44, 'feng32', 'user', '王峰', '男', '15690634456', 12, '2020-05-09 07:59:16', '2020-05-09 07:59:16', 0);
INSERT INTO `user` VALUES (45, 'spring', 'user', '春', '女', '18892889746', 19, '2020-05-09 08:04:48', '2020-05-09 08:04:48', 0);
INSERT INTO `user` VALUES (46, 'caiwenji', '1234232', '蔡文姬', '女', '18892209546', 19, '2020-05-21 00:00:00', '2021-01-11 00:00:00', 235);
INSERT INTO `user` VALUES (47, 'loveLearn', 'user', '我爱学习', '男', '18892889746', 26, '2020-05-09 11:02:27', '2020-05-09 11:02:27', 0);
INSERT INTO `user` VALUES (48, 'zhangsan', 'user', '法外狂徒', '女', '14249432442', 30, '2020-05-10 09:50:36', '2020-05-20 09:50:36', 10);

SET FOREIGN_KEY_CHECKS = 1;
