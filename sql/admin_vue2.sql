/*
 Navicat Premium Data Transfer

 Source Server         : localhost-wampMySql
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : admin_vue2

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 24/04/2020 10:21:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `uri` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (22, 0, 1, '首页', 'fa-bar-chart-o', '/', NULL, '2020-04-11 05:59:56', '2020-04-11 05:59:59');
INSERT INTO `admin_menu` VALUES (2, 0, 14, '系统管理', 'fa-tasks', NULL, NULL, NULL, '2020-04-11 05:59:59');
INSERT INTO `admin_menu` VALUES (3, 2, 15, '后台用户管理', 'fa-users', 'auth/users', NULL, NULL, '2020-04-14 15:01:01');
INSERT INTO `admin_menu` VALUES (4, 2, 17, '角色管理', 'fa-user', 'auth/roles', NULL, NULL, '2020-04-14 14:08:07');
INSERT INTO `admin_menu` VALUES (5, 2, 18, '权限管理', 'fa-ban', 'auth/permissions', NULL, NULL, '2020-04-14 14:08:07');
INSERT INTO `admin_menu` VALUES (6, 2, 19, '菜单管理', 'fa-bars', 'auth/menu', NULL, NULL, '2020-04-14 14:08:07');
INSERT INTO `admin_menu` VALUES (7, 2, 20, '操作日志', 'fa-history', 'auth/logs', NULL, NULL, '2020-04-14 14:08:07');
INSERT INTO `admin_menu` VALUES (8, 13, 3, '博文随笔', 'fa-book', '/articles', NULL, '2020-04-02 10:00:29', '2020-04-11 05:59:59');
INSERT INTO `admin_menu` VALUES (11, 14, 6, '专业管理', 'fa-graduation-cap', '/professions', NULL, '2020-04-07 02:15:42', '2020-04-11 05:59:59');
INSERT INTO `admin_menu` VALUES (10, 13, 4, '标签管理', 'fa-bookmark-o', '/labels', NULL, '2020-04-05 15:42:56', '2020-04-11 05:59:59');
INSERT INTO `admin_menu` VALUES (12, 14, 7, '班级管理', 'fa-male', '/squads', NULL, '2020-04-07 02:17:21', '2020-04-11 05:59:59');
INSERT INTO `admin_menu` VALUES (13, 0, 2, '论坛', 'fa-comments', NULL, NULL, '2020-04-07 09:18:59', '2020-04-11 05:59:59');
INSERT INTO `admin_menu` VALUES (14, 0, 5, '课程建设', 'fa-th-large', NULL, NULL, '2020-04-07 09:20:31', '2020-04-11 05:59:59');
INSERT INTO `admin_menu` VALUES (15, 14, 8, '课程管理', 'fa-calendar', '/courses', NULL, '2020-04-07 13:43:23', '2020-04-11 05:59:59');
INSERT INTO `admin_menu` VALUES (16, 0, 11, '常量管理', 'fa-yelp', NULL, NULL, '2020-04-07 13:43:53', '2020-04-11 05:59:59');
INSERT INTO `admin_menu` VALUES (17, 16, 12, '课程类型管理', 'fa-y-combinator', '/course-type-constants', NULL, '2020-04-07 13:45:40', '2020-04-11 05:59:59');
INSERT INTO `admin_menu` VALUES (18, 14, 9, '分数计算公式管理', 'fa-calculator', 'formula-lefts', NULL, '2020-04-10 13:03:19', '2020-04-11 05:59:59');
INSERT INTO `admin_menu` VALUES (19, 14, 10, '分数管理', 'fa-database', '/fractions', NULL, '2020-04-10 13:05:29', '2020-04-11 05:59:59');
INSERT INTO `admin_menu` VALUES (20, 16, 13, '元计算项类型管理', 'fa-yahoo', '/meta-cal-types', NULL, '2020-04-10 13:06:47', '2020-04-11 05:59:59');
INSERT INTO `admin_menu` VALUES (26, 2, 16, '用户管理', 'fa-hand-peace-o', '/users', NULL, '2020-04-14 14:06:22', '2020-04-14 15:01:08');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4318 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES (1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-02 09:57:57', '2020-04-02 09:57:57');
INSERT INTO `admin_operation_log` VALUES (2, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-02 09:58:02', '2020-04-02 09:58:02');
INSERT INTO `admin_operation_log` VALUES (3, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-02 09:58:05', '2020-04-02 09:58:05');
INSERT INTO `admin_operation_log` VALUES (4, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-02 09:58:06', '2020-04-02 09:58:06');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-02 09:58:15', '2020-04-02 09:58:15');
INSERT INTO `admin_operation_log` VALUES (6, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-02 09:58:24', '2020-04-02 09:58:24');
INSERT INTO `admin_operation_log` VALUES (7, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-02 09:58:27', '2020-04-02 09:58:27');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u9996\\u9875\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"b3dierX2j2gd0uKr2U51uB0Vgcgi8T39ouMUxHVr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-02 09:58:35', '2020-04-02 09:58:35');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-02 09:58:35', '2020-04-02 09:58:35');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-02 09:58:37', '2020-04-02 09:58:37');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'admin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"b3dierX2j2gd0uKr2U51uB0Vgcgi8T39ouMUxHVr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-02 09:58:46', '2020-04-02 09:58:46');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-02 09:58:46', '2020-04-02 09:58:46');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-02 09:58:48', '2020-04-02 09:58:48');
INSERT INTO `admin_operation_log` VALUES (14, 1, 'admin/auth/menu/3', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"b3dierX2j2gd0uKr2U51uB0Vgcgi8T39ouMUxHVr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-02 09:58:57', '2020-04-02 09:58:57');
INSERT INTO `admin_operation_log` VALUES (15, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-02 09:58:57', '2020-04-02 09:58:57');
INSERT INTO `admin_operation_log` VALUES (16, 1, 'admin/auth/menu/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-02 09:58:59', '2020-04-02 09:58:59');
INSERT INTO `admin_operation_log` VALUES (17, 1, 'admin/auth/menu/4', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\\u7ba1\\u7406\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"permission\":null,\"_token\":\"b3dierX2j2gd0uKr2U51uB0Vgcgi8T39ouMUxHVr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-02 09:59:07', '2020-04-02 09:59:07');
INSERT INTO `admin_operation_log` VALUES (18, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-02 09:59:07', '2020-04-02 09:59:07');
INSERT INTO `admin_operation_log` VALUES (19, 1, 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-02 09:59:09', '2020-04-02 09:59:09');
INSERT INTO `admin_operation_log` VALUES (20, 1, 'admin/auth/menu/5', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\\u7ba1\\u7406\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":null,\"_token\":\"b3dierX2j2gd0uKr2U51uB0Vgcgi8T39ouMUxHVr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-02 09:59:17', '2020-04-02 09:59:17');
INSERT INTO `admin_operation_log` VALUES (21, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-02 09:59:18', '2020-04-02 09:59:18');
INSERT INTO `admin_operation_log` VALUES (22, 1, 'admin/auth/menu/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-02 09:59:20', '2020-04-02 09:59:20');
INSERT INTO `admin_operation_log` VALUES (23, 1, 'admin/auth/menu/6', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"permission\":null,\"_token\":\"b3dierX2j2gd0uKr2U51uB0Vgcgi8T39ouMUxHVr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-02 09:59:28', '2020-04-02 09:59:28');
INSERT INTO `admin_operation_log` VALUES (24, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-02 09:59:28', '2020-04-02 09:59:28');
INSERT INTO `admin_operation_log` VALUES (25, 1, 'admin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-02 09:59:30', '2020-04-02 09:59:30');
INSERT INTO `admin_operation_log` VALUES (26, 1, 'admin/auth/menu/7', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u64cd\\u4f5c\\u65e5\\u5fd7\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"permission\":null,\"_token\":\"b3dierX2j2gd0uKr2U51uB0Vgcgi8T39ouMUxHVr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-02 09:59:37', '2020-04-02 09:59:37');
INSERT INTO `admin_operation_log` VALUES (27, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-02 09:59:37', '2020-04-02 09:59:37');
INSERT INTO `admin_operation_log` VALUES (28, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u535a\\u6587\\u968f\\u7b14\",\"icon\":\"fa-book\",\"uri\":\"\\/articles\",\"roles\":[null],\"permission\":null,\"_token\":\"b3dierX2j2gd0uKr2U51uB0Vgcgi8T39ouMUxHVr\"}', '2020-04-02 10:00:29', '2020-04-02 10:00:29');
INSERT INTO `admin_operation_log` VALUES (29, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-02 10:00:29', '2020-04-02 10:00:29');
INSERT INTO `admin_operation_log` VALUES (30, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-02 10:00:31', '2020-04-02 10:00:31');
INSERT INTO `admin_operation_log` VALUES (31, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"b3dierX2j2gd0uKr2U51uB0Vgcgi8T39ouMUxHVr\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-04-02 10:00:36', '2020-04-02 10:00:36');
INSERT INTO `admin_operation_log` VALUES (32, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-02 10:00:37', '2020-04-02 10:00:37');
INSERT INTO `admin_operation_log` VALUES (33, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-02 10:00:38', '2020-04-02 10:00:38');
INSERT INTO `admin_operation_log` VALUES (34, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-02 10:00:39', '2020-04-02 10:00:39');
INSERT INTO `admin_operation_log` VALUES (35, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-02 10:00:41', '2020-04-02 10:00:41');
INSERT INTO `admin_operation_log` VALUES (36, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-02 10:00:43', '2020-04-02 10:00:43');
INSERT INTO `admin_operation_log` VALUES (37, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-02 10:00:46', '2020-04-02 10:00:46');
INSERT INTO `admin_operation_log` VALUES (38, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-02 10:00:47', '2020-04-02 10:00:47');
INSERT INTO `admin_operation_log` VALUES (39, 1, 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-02 10:00:49', '2020-04-02 10:00:49');
INSERT INTO `admin_operation_log` VALUES (40, 1, 'admin/articles', 'POST', '127.0.0.1', '{\"user_id\":\"1\",\"title\":\"\\u5b64\\u5c9b\\u60ca\\u9b42\",\"intro\":\"\\u8bb2\\u8ff0\\u4e86\\u4e00\\u4e2a\\u5728\\u5b64\\u5c9b\\u4e0a\\u53d1\\u751f\\u7684\\u60ca\\u9b42\\u6545\\u4e8b\",\"content\":\"# \\u4e00\\u7ea7\\u6807\\u9898\\r\\n## \\u4e8c\\u7ea7\\u6807\\u9898\\r\\n### \\u4e09\\u7ea7\\u6807\\u9898\\r\\n**\\u52a0\\u7c97**\\r\\n| \\u6d4b\\u8bd5  | \\u6d4b\\u8bd5  |\\r\\n| ------------ | ------------ |\\r\\n| \\u6d4b\\u8bd5  | \\u6d4b\\u8bd5  |\\r\\n| \\u6d4b\\u8bd5  |  \\u6d4b\\u8bd5 |\",\"table-align\":\"_default\",\"_token\":\"b3dierX2j2gd0uKr2U51uB0Vgcgi8T39ouMUxHVr\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/articles\"}', '2020-04-02 10:02:01', '2020-04-02 10:02:01');
INSERT INTO `admin_operation_log` VALUES (41, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-02 10:02:02', '2020-04-02 10:02:02');
INSERT INTO `admin_operation_log` VALUES (42, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-02 10:02:06', '2020-04-02 10:02:06');
INSERT INTO `admin_operation_log` VALUES (43, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-02 10:02:12', '2020-04-02 10:02:12');
INSERT INTO `admin_operation_log` VALUES (44, 1, 'admin/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-02 10:02:15', '2020-04-02 10:02:15');
INSERT INTO `admin_operation_log` VALUES (45, 1, 'admin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-02 10:02:20', '2020-04-02 10:02:20');
INSERT INTO `admin_operation_log` VALUES (46, 1, 'admin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-02 10:02:33', '2020-04-02 10:02:33');
INSERT INTO `admin_operation_log` VALUES (47, 1, 'admin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-02 10:02:38', '2020-04-02 10:02:38');
INSERT INTO `admin_operation_log` VALUES (48, 1, 'admin/articles/1', 'PUT', '127.0.0.1', '{\"user_id\":\"1\",\"title\":\"\\u5b64\\u5c9b\\u60ca\\u9b42\",\"intro\":\"\\u8bb2\\u8ff0\\u4e86\\u4e00\\u4e2a\\u5728\\u5b64\\u5c9b\\u4e0a\\u53d1\\u751f\\u7684\\u60ca\\u9b42\\u6545\\u4e8b\",\"content\":\"# \\u4e00\\u7ea7\\u6807\\u9898\\r\\n## \\u4e8c\\u7ea7\\u6807\\u9898\\r\\n### \\u4e09\\u7ea7\\u6807\\u9898\\r\\n**\\u52a0\\u7c97**\\r\\n\\r\\n| \\u6d4b\\u8bd5  | \\u6d4b\\u8bd5  |\\r\\n| ------------ | ------------ |\\r\\n| \\u6d4b\\u8bd5  | \\u6d4b\\u8bd5  |\\r\\n| \\u6d4b\\u8bd5  |  \\u6d4b\\u8bd5 |\",\"_token\":\"b3dierX2j2gd0uKr2U51uB0Vgcgi8T39ouMUxHVr\",\"_method\":\"PUT\"}', '2020-04-02 10:03:00', '2020-04-02 10:03:00');
INSERT INTO `admin_operation_log` VALUES (49, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-02 10:03:00', '2020-04-02 10:03:00');
INSERT INTO `admin_operation_log` VALUES (50, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-02 10:03:06', '2020-04-02 10:03:06');
INSERT INTO `admin_operation_log` VALUES (51, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-03 01:17:18', '2020-04-03 01:17:18');
INSERT INTO `admin_operation_log` VALUES (52, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 01:17:21', '2020-04-03 01:17:21');
INSERT INTO `admin_operation_log` VALUES (53, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 01:17:22', '2020-04-03 01:17:22');
INSERT INTO `admin_operation_log` VALUES (54, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 01:29:46', '2020-04-03 01:29:46');
INSERT INTO `admin_operation_log` VALUES (55, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8bc4\\u8bba\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"\\/comments\",\"roles\":[null],\"permission\":null,\"_token\":\"MZTZchSFENVxQGRlo5SLg4xfqNEganUUQqw0401W\"}', '2020-04-03 01:30:06', '2020-04-03 01:30:06');
INSERT INTO `admin_operation_log` VALUES (56, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-03 01:30:06', '2020-04-03 01:30:06');
INSERT INTO `admin_operation_log` VALUES (57, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"MZTZchSFENVxQGRlo5SLg4xfqNEganUUQqw0401W\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-04-03 01:30:12', '2020-04-03 01:30:12');
INSERT INTO `admin_operation_log` VALUES (58, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 01:30:13', '2020-04-03 01:30:13');
INSERT INTO `admin_operation_log` VALUES (59, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-03 01:30:14', '2020-04-03 01:30:14');
INSERT INTO `admin_operation_log` VALUES (60, 1, 'admin/comments', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 01:30:16', '2020-04-03 01:30:16');
INSERT INTO `admin_operation_log` VALUES (61, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 01:36:42', '2020-04-03 01:36:42');
INSERT INTO `admin_operation_log` VALUES (62, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 01:36:59', '2020-04-03 01:36:59');
INSERT INTO `admin_operation_log` VALUES (63, 1, 'admin/comments', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 01:37:03', '2020-04-03 01:37:03');
INSERT INTO `admin_operation_log` VALUES (64, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 01:37:04', '2020-04-03 01:37:04');
INSERT INTO `admin_operation_log` VALUES (65, 1, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":\"1\",\"user_id\":\"1\",\"reply_user_id\":\"2\",\"pid\":\"0\",\"level\":\"1\",\"content\":\"\\u6d4b\\u8bd5\\u8bc4\\u8bba\",\"_token\":\"MZTZchSFENVxQGRlo5SLg4xfqNEganUUQqw0401W\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/comments\"}', '2020-04-03 01:37:33', '2020-04-03 01:37:33');
INSERT INTO `admin_operation_log` VALUES (66, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-03 01:37:33', '2020-04-03 01:37:33');
INSERT INTO `admin_operation_log` VALUES (67, 1, 'admin/comments/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 01:37:39', '2020-04-03 01:37:39');
INSERT INTO `admin_operation_log` VALUES (68, 1, 'admin/comments', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 01:37:43', '2020-04-03 01:37:43');
INSERT INTO `admin_operation_log` VALUES (69, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-03 02:29:12', '2020-04-03 02:29:12');
INSERT INTO `admin_operation_log` VALUES (70, 1, 'admin/comments/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 02:29:17', '2020-04-03 02:29:17');
INSERT INTO `admin_operation_log` VALUES (71, 1, 'admin/comments', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 02:29:19', '2020-04-03 02:29:19');
INSERT INTO `admin_operation_log` VALUES (72, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-03 03:34:44', '2020-04-03 03:34:44');
INSERT INTO `admin_operation_log` VALUES (73, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 03:37:19', '2020-04-03 03:37:19');
INSERT INTO `admin_operation_log` VALUES (74, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 03:37:23', '2020-04-03 03:37:23');
INSERT INTO `admin_operation_log` VALUES (75, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 03:37:34', '2020-04-03 03:37:34');
INSERT INTO `admin_operation_log` VALUES (76, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 03:37:36', '2020-04-03 03:37:36');
INSERT INTO `admin_operation_log` VALUES (77, 1, 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"teacher\",\"name\":\"\\u6559\\u5e08\",\"permissions\":[\"1\",null],\"_token\":\"MZTZchSFENVxQGRlo5SLg4xfqNEganUUQqw0401W\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-04-03 03:37:51', '2020-04-03 03:37:51');
INSERT INTO `admin_operation_log` VALUES (78, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-03 03:37:52', '2020-04-03 03:37:52');
INSERT INTO `admin_operation_log` VALUES (79, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 03:37:55', '2020-04-03 03:37:55');
INSERT INTO `admin_operation_log` VALUES (80, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 03:37:57', '2020-04-03 03:37:57');
INSERT INTO `admin_operation_log` VALUES (81, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"xiao\",\"name\":\"\\u8096\\u8001\\u5e08\",\"password\":\"123456\",\"password_confirmation\":\"123456\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"MZTZchSFENVxQGRlo5SLg4xfqNEganUUQqw0401W\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/users\"}', '2020-04-03 03:38:37', '2020-04-03 03:38:37');
INSERT INTO `admin_operation_log` VALUES (82, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-03 03:38:37', '2020-04-03 03:38:37');
INSERT INTO `admin_operation_log` VALUES (83, 1, 'admin/auth/users/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 03:38:48', '2020-04-03 03:38:48');
INSERT INTO `admin_operation_log` VALUES (84, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 03:38:51', '2020-04-03 03:38:51');
INSERT INTO `admin_operation_log` VALUES (85, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 03:38:52', '2020-04-03 03:38:52');
INSERT INTO `admin_operation_log` VALUES (86, 1, 'admin/comments', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 03:46:10', '2020-04-03 03:46:10');
INSERT INTO `admin_operation_log` VALUES (87, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-03 03:50:22', '2020-04-03 03:50:22');
INSERT INTO `admin_operation_log` VALUES (88, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-03 03:51:47', '2020-04-03 03:51:47');
INSERT INTO `admin_operation_log` VALUES (89, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-03 03:53:08', '2020-04-03 03:53:08');
INSERT INTO `admin_operation_log` VALUES (90, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 03:53:23', '2020-04-03 03:53:23');
INSERT INTO `admin_operation_log` VALUES (91, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-03 03:57:11', '2020-04-03 03:57:11');
INSERT INTO `admin_operation_log` VALUES (92, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 03:57:12', '2020-04-03 03:57:12');
INSERT INTO `admin_operation_log` VALUES (93, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-03 03:57:37', '2020-04-03 03:57:37');
INSERT INTO `admin_operation_log` VALUES (94, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-03 03:58:05', '2020-04-03 03:58:05');
INSERT INTO `admin_operation_log` VALUES (95, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-03 03:58:25', '2020-04-03 03:58:25');
INSERT INTO `admin_operation_log` VALUES (96, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-03 04:02:45', '2020-04-03 04:02:45');
INSERT INTO `admin_operation_log` VALUES (97, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-03 04:03:04', '2020-04-03 04:03:04');
INSERT INTO `admin_operation_log` VALUES (98, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-03 04:03:36', '2020-04-03 04:03:36');
INSERT INTO `admin_operation_log` VALUES (99, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-03 06:34:01', '2020-04-03 06:34:01');
INSERT INTO `admin_operation_log` VALUES (100, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-03 06:34:20', '2020-04-03 06:34:20');
INSERT INTO `admin_operation_log` VALUES (101, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-03 06:48:05', '2020-04-03 06:48:05');
INSERT INTO `admin_operation_log` VALUES (102, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-03 06:48:20', '2020-04-03 06:48:20');
INSERT INTO `admin_operation_log` VALUES (103, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-03 06:48:51', '2020-04-03 06:48:51');
INSERT INTO `admin_operation_log` VALUES (104, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-03 06:55:46', '2020-04-03 06:55:46');
INSERT INTO `admin_operation_log` VALUES (105, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-03 06:55:55', '2020-04-03 06:55:55');
INSERT INTO `admin_operation_log` VALUES (106, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-03 06:56:15', '2020-04-03 06:56:15');
INSERT INTO `admin_operation_log` VALUES (107, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 06:56:18', '2020-04-03 06:56:18');
INSERT INTO `admin_operation_log` VALUES (108, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-03 06:56:40', '2020-04-03 06:56:40');
INSERT INTO `admin_operation_log` VALUES (109, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-03 06:56:50', '2020-04-03 06:56:50');
INSERT INTO `admin_operation_log` VALUES (110, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-03 06:57:35', '2020-04-03 06:57:35');
INSERT INTO `admin_operation_log` VALUES (111, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-03 06:58:54', '2020-04-03 06:58:54');
INSERT INTO `admin_operation_log` VALUES (112, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-03 06:59:10', '2020-04-03 06:59:10');
INSERT INTO `admin_operation_log` VALUES (113, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-03 06:59:48', '2020-04-03 06:59:48');
INSERT INTO `admin_operation_log` VALUES (114, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-03 07:00:15', '2020-04-03 07:00:15');
INSERT INTO `admin_operation_log` VALUES (115, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-03 07:02:07', '2020-04-03 07:02:07');
INSERT INTO `admin_operation_log` VALUES (116, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-03 07:02:48', '2020-04-03 07:02:48');
INSERT INTO `admin_operation_log` VALUES (117, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-03 07:09:51', '2020-04-03 07:09:51');
INSERT INTO `admin_operation_log` VALUES (118, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-03 07:14:35', '2020-04-03 07:14:35');
INSERT INTO `admin_operation_log` VALUES (119, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-03 07:15:03', '2020-04-03 07:15:03');
INSERT INTO `admin_operation_log` VALUES (120, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-03 07:20:16', '2020-04-03 07:20:16');
INSERT INTO `admin_operation_log` VALUES (121, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-03 07:20:34', '2020-04-03 07:20:34');
INSERT INTO `admin_operation_log` VALUES (122, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-03 07:22:20', '2020-04-03 07:22:20');
INSERT INTO `admin_operation_log` VALUES (123, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-03 07:23:25', '2020-04-03 07:23:25');
INSERT INTO `admin_operation_log` VALUES (124, 1, 'admin/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 07:23:28', '2020-04-03 07:23:28');
INSERT INTO `admin_operation_log` VALUES (125, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 07:23:33', '2020-04-03 07:23:33');
INSERT INTO `admin_operation_log` VALUES (126, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 07:23:35', '2020-04-03 07:23:35');
INSERT INTO `admin_operation_log` VALUES (127, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-03 07:26:39', '2020-04-03 07:26:39');
INSERT INTO `admin_operation_log` VALUES (128, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-03 07:27:07', '2020-04-03 07:27:07');
INSERT INTO `admin_operation_log` VALUES (129, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 07:28:38', '2020-04-03 07:28:38');
INSERT INTO `admin_operation_log` VALUES (130, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 07:28:43', '2020-04-03 07:28:43');
INSERT INTO `admin_operation_log` VALUES (131, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '[]', '2020-04-03 07:28:56', '2020-04-03 07:28:56');
INSERT INTO `admin_operation_log` VALUES (132, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 07:28:59', '2020-04-03 07:28:59');
INSERT INTO `admin_operation_log` VALUES (133, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 07:29:01', '2020-04-03 07:29:01');
INSERT INTO `admin_operation_log` VALUES (134, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-03 07:29:06', '2020-04-03 07:29:06');
INSERT INTO `admin_operation_log` VALUES (135, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 07:29:09', '2020-04-03 07:29:09');
INSERT INTO `admin_operation_log` VALUES (136, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 07:29:20', '2020-04-03 07:29:20');
INSERT INTO `admin_operation_log` VALUES (137, 1, 'admin/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 07:29:21', '2020-04-03 07:29:21');
INSERT INTO `admin_operation_log` VALUES (138, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 07:29:26', '2020-04-03 07:29:26');
INSERT INTO `admin_operation_log` VALUES (139, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 07:29:28', '2020-04-03 07:29:28');
INSERT INTO `admin_operation_log` VALUES (140, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-03 07:29:48', '2020-04-03 07:29:48');
INSERT INTO `admin_operation_log` VALUES (141, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-03 07:30:09', '2020-04-03 07:30:09');
INSERT INTO `admin_operation_log` VALUES (142, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-03 07:31:29', '2020-04-03 07:31:29');
INSERT INTO `admin_operation_log` VALUES (143, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-03 07:32:12', '2020-04-03 07:32:12');
INSERT INTO `admin_operation_log` VALUES (144, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-03 07:33:15', '2020-04-03 07:33:15');
INSERT INTO `admin_operation_log` VALUES (145, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-03 07:33:40', '2020-04-03 07:33:40');
INSERT INTO `admin_operation_log` VALUES (146, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-03 07:34:07', '2020-04-03 07:34:07');
INSERT INTO `admin_operation_log` VALUES (147, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-03 07:34:46', '2020-04-03 07:34:46');
INSERT INTO `admin_operation_log` VALUES (148, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-03 07:35:03', '2020-04-03 07:35:03');
INSERT INTO `admin_operation_log` VALUES (149, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-03 07:35:29', '2020-04-03 07:35:29');
INSERT INTO `admin_operation_log` VALUES (150, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-03 07:35:48', '2020-04-03 07:35:48');
INSERT INTO `admin_operation_log` VALUES (151, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-03 07:36:20', '2020-04-03 07:36:20');
INSERT INTO `admin_operation_log` VALUES (152, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 07:50:54', '2020-04-03 07:50:54');
INSERT INTO `admin_operation_log` VALUES (153, 1, 'admin/auth/menu/9', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"xcjctMr2ynoJ1Rw9ivMlDC1B05jq6V87H3S1BflI\"}', '2020-04-03 07:51:02', '2020-04-03 07:51:02');
INSERT INTO `admin_operation_log` VALUES (154, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 07:51:02', '2020-04-03 07:51:02');
INSERT INTO `admin_operation_log` VALUES (155, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 07:51:05', '2020-04-03 07:51:05');
INSERT INTO `admin_operation_log` VALUES (156, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-03 07:51:06', '2020-04-03 07:51:06');
INSERT INTO `admin_operation_log` VALUES (157, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 07:51:08', '2020-04-03 07:51:08');
INSERT INTO `admin_operation_log` VALUES (158, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 07:51:10', '2020-04-03 07:51:10');
INSERT INTO `admin_operation_log` VALUES (159, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-03 07:51:15', '2020-04-03 07:51:15');
INSERT INTO `admin_operation_log` VALUES (160, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 07:51:24', '2020-04-03 07:51:24');
INSERT INTO `admin_operation_log` VALUES (161, 1, 'admin/comments/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 07:51:56', '2020-04-03 07:51:56');
INSERT INTO `admin_operation_log` VALUES (162, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 07:52:00', '2020-04-03 07:52:00');
INSERT INTO `admin_operation_log` VALUES (163, 1, 'admin/comments/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 07:52:04', '2020-04-03 07:52:04');
INSERT INTO `admin_operation_log` VALUES (164, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 07:52:07', '2020-04-03 07:52:07');
INSERT INTO `admin_operation_log` VALUES (165, 1, 'admin/comments/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 07:52:57', '2020-04-03 07:52:57');
INSERT INTO `admin_operation_log` VALUES (166, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 07:53:00', '2020-04-03 07:53:00');
INSERT INTO `admin_operation_log` VALUES (167, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-03 07:54:22', '2020-04-03 07:54:22');
INSERT INTO `admin_operation_log` VALUES (168, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 07:54:24', '2020-04-03 07:54:24');
INSERT INTO `admin_operation_log` VALUES (169, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-03 07:54:32', '2020-04-03 07:54:32');
INSERT INTO `admin_operation_log` VALUES (170, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-03 07:54:35', '2020-04-03 07:54:35');
INSERT INTO `admin_operation_log` VALUES (171, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-03 08:00:47', '2020-04-03 08:00:47');
INSERT INTO `admin_operation_log` VALUES (172, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-03 08:01:09', '2020-04-03 08:01:09');
INSERT INTO `admin_operation_log` VALUES (173, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-03 08:01:27', '2020-04-03 08:01:27');
INSERT INTO `admin_operation_log` VALUES (174, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-03 08:01:37', '2020-04-03 08:01:37');
INSERT INTO `admin_operation_log` VALUES (175, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-03 08:01:48', '2020-04-03 08:01:48');
INSERT INTO `admin_operation_log` VALUES (176, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-03 08:07:27', '2020-04-03 08:07:27');
INSERT INTO `admin_operation_log` VALUES (177, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 08:07:47', '2020-04-03 08:07:47');
INSERT INTO `admin_operation_log` VALUES (178, 1, 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 08:07:48', '2020-04-03 08:07:48');
INSERT INTO `admin_operation_log` VALUES (179, 1, 'admin/articles', 'POST', '127.0.0.1', '{\"user_id\":\"1\",\"title\":\"\\u5492\\u6028\",\"intro\":\"\\u8bb2\\u8ff0\\u4e86\\u4e00\\u4e2a\\u53d1\\u751f\\u5728\\u65e5\\u672c\\u7684\\u6050\\u6016\\u6545\\u4e8b\",\"content\":\"```java\\r\\nclass test{\\r\\n\\t\\r\\n}\\r\\n```\",\"table-align\":\"_default\",\"_token\":\"xcjctMr2ynoJ1Rw9ivMlDC1B05jq6V87H3S1BflI\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/articles\"}', '2020-04-03 08:08:55', '2020-04-03 08:08:55');
INSERT INTO `admin_operation_log` VALUES (180, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-03 08:08:56', '2020-04-03 08:08:56');
INSERT INTO `admin_operation_log` VALUES (181, 1, 'admin/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 08:09:04', '2020-04-03 08:09:04');
INSERT INTO `admin_operation_log` VALUES (182, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 08:09:07', '2020-04-03 08:09:07');
INSERT INTO `admin_operation_log` VALUES (183, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 08:09:10', '2020-04-03 08:09:10');
INSERT INTO `admin_operation_log` VALUES (184, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-03 08:09:13', '2020-04-03 08:09:13');
INSERT INTO `admin_operation_log` VALUES (185, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-03 08:13:28', '2020-04-03 08:13:28');
INSERT INTO `admin_operation_log` VALUES (186, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-03 08:13:39', '2020-04-03 08:13:39');
INSERT INTO `admin_operation_log` VALUES (187, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 08:13:48', '2020-04-03 08:13:48');
INSERT INTO `admin_operation_log` VALUES (188, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 08:13:53', '2020-04-03 08:13:53');
INSERT INTO `admin_operation_log` VALUES (189, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-03 08:14:46', '2020-04-03 08:14:46');
INSERT INTO `admin_operation_log` VALUES (190, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-03 08:14:54', '2020-04-03 08:14:54');
INSERT INTO `admin_operation_log` VALUES (191, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-03 08:14:54', '2020-04-03 08:14:54');
INSERT INTO `admin_operation_log` VALUES (192, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-03 08:15:14', '2020-04-03 08:15:14');
INSERT INTO `admin_operation_log` VALUES (193, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-03 08:15:22', '2020-04-03 08:15:22');
INSERT INTO `admin_operation_log` VALUES (194, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-03 08:15:39', '2020-04-03 08:15:39');
INSERT INTO `admin_operation_log` VALUES (195, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 08:15:41', '2020-04-03 08:15:41');
INSERT INTO `admin_operation_log` VALUES (196, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 08:15:45', '2020-04-03 08:15:45');
INSERT INTO `admin_operation_log` VALUES (197, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 08:15:46', '2020-04-03 08:15:46');
INSERT INTO `admin_operation_log` VALUES (198, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-03 08:15:48', '2020-04-03 08:15:48');
INSERT INTO `admin_operation_log` VALUES (199, 1, 'admin/articles/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 08:15:51', '2020-04-03 08:15:51');
INSERT INTO `admin_operation_log` VALUES (200, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-04-03 08:16:02', '2020-04-03 08:16:02');
INSERT INTO `admin_operation_log` VALUES (201, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-03 08:17:04', '2020-04-03 08:17:04');
INSERT INTO `admin_operation_log` VALUES (202, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-03 08:17:22', '2020-04-03 08:17:22');
INSERT INTO `admin_operation_log` VALUES (203, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 08:17:31', '2020-04-03 08:17:31');
INSERT INTO `admin_operation_log` VALUES (204, 1, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":\"2\",\"user_id\":\"1\",\"reply_user_id\":\"2\",\"pid\":\"0\",\"level\":\"1\",\"content\":\"\\u6d4b\\u8bd5\\u56de\\u590d2\",\"_token\":\"xcjctMr2ynoJ1Rw9ivMlDC1B05jq6V87H3S1BflI\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/comments\\/\"}', '2020-04-03 08:17:57', '2020-04-03 08:17:57');
INSERT INTO `admin_operation_log` VALUES (205, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-03 08:17:57', '2020-04-03 08:17:57');
INSERT INTO `admin_operation_log` VALUES (206, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 08:18:00', '2020-04-03 08:18:00');
INSERT INTO `admin_operation_log` VALUES (207, 1, 'admin/articles/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 08:18:02', '2020-04-03 08:18:02');
INSERT INTO `admin_operation_log` VALUES (208, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-04-03 08:18:09', '2020-04-03 08:18:09');
INSERT INTO `admin_operation_log` VALUES (209, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-03 08:20:14', '2020-04-03 08:20:14');
INSERT INTO `admin_operation_log` VALUES (210, 1, 'admin/comments/create', 'GET', '127.0.0.1', '[]', '2020-04-03 08:20:19', '2020-04-03 08:20:19');
INSERT INTO `admin_operation_log` VALUES (211, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-03 08:20:27', '2020-04-03 08:20:27');
INSERT INTO `admin_operation_log` VALUES (212, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-03 08:23:28', '2020-04-03 08:23:28');
INSERT INTO `admin_operation_log` VALUES (213, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 08:23:31', '2020-04-03 08:23:31');
INSERT INTO `admin_operation_log` VALUES (214, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-03 08:23:31', '2020-04-03 08:23:31');
INSERT INTO `admin_operation_log` VALUES (215, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 08:23:34', '2020-04-03 08:23:34');
INSERT INTO `admin_operation_log` VALUES (216, 1, 'admin/articles/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 08:23:39', '2020-04-03 08:23:39');
INSERT INTO `admin_operation_log` VALUES (217, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-04-03 08:23:42', '2020-04-03 08:23:42');
INSERT INTO `admin_operation_log` VALUES (218, 1, 'admin/articles/2', 'GET', '127.0.0.1', '[]', '2020-04-03 08:23:42', '2020-04-03 08:23:42');
INSERT INTO `admin_operation_log` VALUES (219, 1, 'admin/articles/2', 'GET', '127.0.0.1', '[]', '2020-04-03 08:24:06', '2020-04-03 08:24:06');
INSERT INTO `admin_operation_log` VALUES (220, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-04-03 08:24:09', '2020-04-03 08:24:09');
INSERT INTO `admin_operation_log` VALUES (221, 1, 'admin/articles/2', 'GET', '127.0.0.1', '[]', '2020-04-03 08:24:09', '2020-04-03 08:24:09');
INSERT INTO `admin_operation_log` VALUES (222, 1, 'admin/articles/2', 'GET', '127.0.0.1', '[]', '2020-04-03 08:24:53', '2020-04-03 08:24:53');
INSERT INTO `admin_operation_log` VALUES (223, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-04-03 08:24:55', '2020-04-03 08:24:55');
INSERT INTO `admin_operation_log` VALUES (224, 1, 'admin/articles/2', 'GET', '127.0.0.1', '[]', '2020-04-03 08:24:55', '2020-04-03 08:24:55');
INSERT INTO `admin_operation_log` VALUES (225, 1, 'admin/articles/2', 'GET', '127.0.0.1', '[]', '2020-04-03 08:25:44', '2020-04-03 08:25:44');
INSERT INTO `admin_operation_log` VALUES (226, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-04-03 08:25:46', '2020-04-03 08:25:46');
INSERT INTO `admin_operation_log` VALUES (227, 1, 'admin/articles/2', 'GET', '127.0.0.1', '[]', '2020-04-03 08:25:46', '2020-04-03 08:25:46');
INSERT INTO `admin_operation_log` VALUES (228, 1, 'admin/articles/2', 'GET', '127.0.0.1', '[]', '2020-04-03 08:26:12', '2020-04-03 08:26:12');
INSERT INTO `admin_operation_log` VALUES (229, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-04-03 08:26:15', '2020-04-03 08:26:15');
INSERT INTO `admin_operation_log` VALUES (230, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-03 08:27:12', '2020-04-03 08:27:12');
INSERT INTO `admin_operation_log` VALUES (231, 1, 'admin/articles/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 08:27:17', '2020-04-03 08:27:17');
INSERT INTO `admin_operation_log` VALUES (232, 1, 'admin/articles/2', 'GET', '127.0.0.1', '[]', '2020-04-03 08:58:05', '2020-04-03 08:58:05');
INSERT INTO `admin_operation_log` VALUES (233, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-03 08:58:09', '2020-04-03 08:58:09');
INSERT INTO `admin_operation_log` VALUES (234, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-03 12:55:52', '2020-04-03 12:55:52');
INSERT INTO `admin_operation_log` VALUES (235, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 12:55:55', '2020-04-03 12:55:55');
INSERT INTO `admin_operation_log` VALUES (236, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 12:55:58', '2020-04-03 12:55:58');
INSERT INTO `admin_operation_log` VALUES (237, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 12:56:00', '2020-04-03 12:56:00');
INSERT INTO `admin_operation_log` VALUES (238, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-03 12:56:03', '2020-04-03 12:56:03');
INSERT INTO `admin_operation_log` VALUES (239, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 12:56:06', '2020-04-03 12:56:06');
INSERT INTO `admin_operation_log` VALUES (240, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 12:56:11', '2020-04-03 12:56:11');
INSERT INTO `admin_operation_log` VALUES (241, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 12:56:14', '2020-04-03 12:56:14');
INSERT INTO `admin_operation_log` VALUES (242, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-03 12:56:16', '2020-04-03 12:56:16');
INSERT INTO `admin_operation_log` VALUES (243, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 12:56:41', '2020-04-03 12:56:41');
INSERT INTO `admin_operation_log` VALUES (244, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-03 13:12:42', '2020-04-03 13:12:42');
INSERT INTO `admin_operation_log` VALUES (245, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-03 14:17:36', '2020-04-03 14:17:36');
INSERT INTO `admin_operation_log` VALUES (246, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 14:17:44', '2020-04-03 14:17:44');
INSERT INTO `admin_operation_log` VALUES (247, 1, 'admin/auth/users/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-03 14:17:51', '2020-04-03 14:17:51');
INSERT INTO `admin_operation_log` VALUES (248, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-04 01:14:43', '2020-04-04 01:14:43');
INSERT INTO `admin_operation_log` VALUES (249, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-04 01:14:46', '2020-04-04 01:14:46');
INSERT INTO `admin_operation_log` VALUES (250, 1, 'admin/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-04 01:14:48', '2020-04-04 01:14:48');
INSERT INTO `admin_operation_log` VALUES (251, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-04 01:15:01', '2020-04-04 01:15:01');
INSERT INTO `admin_operation_log` VALUES (252, 1, 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-04 01:23:46', '2020-04-04 01:23:46');
INSERT INTO `admin_operation_log` VALUES (253, 1, 'admin/articles', 'POST', '127.0.0.1', '{\"user_id\":\"1\",\"title\":\"2020\\u7ee7\\u7eed\\u52a0\\u6cb9\",\"intro\":\"\\u5927\\u5e74\\u4e09\\u5341\\u7ec8\\u4e8e\\u5199\\u5b8c\\u8fd9\\u7bc7\\u603b\\u7ed3\\uff0c\\u7ed9\\u6765\\u5e74\\u5b9a\\u4e2a\\u76ee\\u6807\\uff0c\\u7ed9\\u4eca\\u5e74\\u505a\\u4e2a\\u80af\\u5b9a\\uff0c\\u5e0c\\u671b\\u4ee5\\u540e\\u6bcf\\u5e74\\u90fd\\u6709\\u65b0\\u7684\\u603b\\u7ed3\\u53ef\\u5199\\uff0c\\u90fd\\u6709\\u7f8e\\u597d\\u7684\\u6545\\u4e8b\\u53d1\\u9001\\uff0c\\u52a0\\u6cb9\\uff01\\uff01\",\"content\":\"# \\u65b0\\u5e74\\u603b\\u7ed3\\r\\n## \\u9664\\u5915\\u603b\\u7ed3\\r\\n## \\u521d\\u4e00\\u603b\\u7ed3\\r\\n### \\u521d\\u4e8c\\u603b\\u7ed3\",\"_token\":\"lBNaQVCThPPS3xpPyaTCYrda6fPs8LNXAmWZs3bP\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/articles\"}', '2020-04-04 01:26:28', '2020-04-04 01:26:28');
INSERT INTO `admin_operation_log` VALUES (254, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-04 01:26:29', '2020-04-04 01:26:29');
INSERT INTO `admin_operation_log` VALUES (255, 1, 'admin/articles/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-04 09:43:57', '2020-04-04 09:43:57');
INSERT INTO `admin_operation_log` VALUES (256, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-04 09:44:02', '2020-04-04 09:44:02');
INSERT INTO `admin_operation_log` VALUES (257, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-05 00:28:32', '2020-04-05 00:28:32');
INSERT INTO `admin_operation_log` VALUES (258, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 00:28:37', '2020-04-05 00:28:37');
INSERT INTO `admin_operation_log` VALUES (259, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 00:28:47', '2020-04-05 00:28:47');
INSERT INTO `admin_operation_log` VALUES (260, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-05 00:28:57', '2020-04-05 00:28:57');
INSERT INTO `admin_operation_log` VALUES (261, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 00:31:20', '2020-04-05 00:31:20');
INSERT INTO `admin_operation_log` VALUES (262, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 00:31:45', '2020-04-05 00:31:45');
INSERT INTO `admin_operation_log` VALUES (263, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 00:47:17', '2020-04-05 00:47:17');
INSERT INTO `admin_operation_log` VALUES (264, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 00:47:50', '2020-04-05 00:47:50');
INSERT INTO `admin_operation_log` VALUES (265, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 00:48:10', '2020-04-05 00:48:10');
INSERT INTO `admin_operation_log` VALUES (266, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 00:49:08', '2020-04-05 00:49:08');
INSERT INTO `admin_operation_log` VALUES (267, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 00:54:38', '2020-04-05 00:54:38');
INSERT INTO `admin_operation_log` VALUES (268, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 00:54:47', '2020-04-05 00:54:47');
INSERT INTO `admin_operation_log` VALUES (269, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 00:55:05', '2020-04-05 00:55:05');
INSERT INTO `admin_operation_log` VALUES (270, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 00:55:59', '2020-04-05 00:55:59');
INSERT INTO `admin_operation_log` VALUES (271, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 00:56:08', '2020-04-05 00:56:08');
INSERT INTO `admin_operation_log` VALUES (272, 1, 'admin/comments', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 00:56:20', '2020-04-05 00:56:20');
INSERT INTO `admin_operation_log` VALUES (273, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-05 00:56:24', '2020-04-05 00:56:24');
INSERT INTO `admin_operation_log` VALUES (274, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 00:56:42', '2020-04-05 00:56:42');
INSERT INTO `admin_operation_log` VALUES (275, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 00:56:55', '2020-04-05 00:56:55');
INSERT INTO `admin_operation_log` VALUES (276, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 00:56:56', '2020-04-05 00:56:56');
INSERT INTO `admin_operation_log` VALUES (277, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 00:56:59', '2020-04-05 00:56:59');
INSERT INTO `admin_operation_log` VALUES (278, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 00:57:02', '2020-04-05 00:57:02');
INSERT INTO `admin_operation_log` VALUES (279, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 00:57:04', '2020-04-05 00:57:04');
INSERT INTO `admin_operation_log` VALUES (280, 1, 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"student\",\"name\":\"\\u5b66\\u751f\",\"permissions\":[\"1\",null],\"_token\":\"AmAc5LjVof8Kt3dZ4Qr2iQ16pMpfFJ8hJj47NYii\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-04-05 00:58:06', '2020-04-05 00:58:06');
INSERT INTO `admin_operation_log` VALUES (281, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-05 00:58:07', '2020-04-05 00:58:07');
INSERT INTO `admin_operation_log` VALUES (282, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 00:58:10', '2020-04-05 00:58:10');
INSERT INTO `admin_operation_log` VALUES (283, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 00:58:12', '2020-04-05 00:58:12');
INSERT INTO `admin_operation_log` VALUES (284, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"stu1\",\"name\":\"\\u8001\\u738b\",\"password\":\"123456\",\"password_confirmation\":\"123456\",\"roles\":[null],\"permissions\":[null],\"_token\":\"AmAc5LjVof8Kt3dZ4Qr2iQ16pMpfFJ8hJj47NYii\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/users\"}', '2020-04-05 00:58:50', '2020-04-05 00:58:50');
INSERT INTO `admin_operation_log` VALUES (285, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-05 00:58:50', '2020-04-05 00:58:50');
INSERT INTO `admin_operation_log` VALUES (286, 1, 'admin/auth/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 00:58:57', '2020-04-05 00:58:57');
INSERT INTO `admin_operation_log` VALUES (287, 1, 'admin/auth/users/3', 'PUT', '127.0.0.1', '{\"username\":\"stu1\",\"name\":\"\\u8001\\u738b\",\"password\":\"$2y$10$2rJM0JsghS\\/SWvZ8sOoOau1M5SxeH6kfjkh4OcE3TNYTUEjijgE8y\",\"password_confirmation\":\"$2y$10$2rJM0JsghS\\/SWvZ8sOoOau1M5SxeH6kfjkh4OcE3TNYTUEjijgE8y\",\"roles\":[\"3\",null],\"permissions\":[null],\"_token\":\"AmAc5LjVof8Kt3dZ4Qr2iQ16pMpfFJ8hJj47NYii\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/users\"}', '2020-04-05 00:59:08', '2020-04-05 00:59:08');
INSERT INTO `admin_operation_log` VALUES (288, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-05 00:59:08', '2020-04-05 00:59:08');
INSERT INTO `admin_operation_log` VALUES (289, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 00:59:13', '2020-04-05 00:59:13');
INSERT INTO `admin_operation_log` VALUES (290, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 00:59:15', '2020-04-05 00:59:15');
INSERT INTO `admin_operation_log` VALUES (291, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-05 00:59:17', '2020-04-05 00:59:17');
INSERT INTO `admin_operation_log` VALUES (292, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 00:59:57', '2020-04-05 00:59:57');
INSERT INTO `admin_operation_log` VALUES (293, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 01:00:24', '2020-04-05 01:00:24');
INSERT INTO `admin_operation_log` VALUES (294, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 01:01:17', '2020-04-05 01:01:17');
INSERT INTO `admin_operation_log` VALUES (295, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 01:01:25', '2020-04-05 01:01:25');
INSERT INTO `admin_operation_log` VALUES (296, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 01:01:38', '2020-04-05 01:01:38');
INSERT INTO `admin_operation_log` VALUES (297, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 01:01:45', '2020-04-05 01:01:45');
INSERT INTO `admin_operation_log` VALUES (298, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 01:01:56', '2020-04-05 01:01:56');
INSERT INTO `admin_operation_log` VALUES (299, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 01:02:56', '2020-04-05 01:02:56');
INSERT INTO `admin_operation_log` VALUES (300, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 01:03:05', '2020-04-05 01:03:05');
INSERT INTO `admin_operation_log` VALUES (301, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 01:04:04', '2020-04-05 01:04:04');
INSERT INTO `admin_operation_log` VALUES (302, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 01:04:11', '2020-04-05 01:04:11');
INSERT INTO `admin_operation_log` VALUES (303, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 01:04:20', '2020-04-05 01:04:20');
INSERT INTO `admin_operation_log` VALUES (304, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 01:07:05', '2020-04-05 01:07:05');
INSERT INTO `admin_operation_log` VALUES (305, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 01:09:35', '2020-04-05 01:09:35');
INSERT INTO `admin_operation_log` VALUES (306, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 01:09:48', '2020-04-05 01:09:48');
INSERT INTO `admin_operation_log` VALUES (307, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 01:11:42', '2020-04-05 01:11:42');
INSERT INTO `admin_operation_log` VALUES (308, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 01:46:17', '2020-04-05 01:46:17');
INSERT INTO `admin_operation_log` VALUES (309, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 01:49:09', '2020-04-05 01:49:09');
INSERT INTO `admin_operation_log` VALUES (310, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 01:49:39', '2020-04-05 01:49:39');
INSERT INTO `admin_operation_log` VALUES (311, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 01:52:18', '2020-04-05 01:52:18');
INSERT INTO `admin_operation_log` VALUES (312, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 01:54:33', '2020-04-05 01:54:33');
INSERT INTO `admin_operation_log` VALUES (313, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 01:54:54', '2020-04-05 01:54:54');
INSERT INTO `admin_operation_log` VALUES (314, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 01:54:58', '2020-04-05 01:54:58');
INSERT INTO `admin_operation_log` VALUES (315, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 01:54:59', '2020-04-05 01:54:59');
INSERT INTO `admin_operation_log` VALUES (316, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-05 01:55:52', '2020-04-05 01:55:52');
INSERT INTO `admin_operation_log` VALUES (317, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-05 01:55:55', '2020-04-05 01:55:55');
INSERT INTO `admin_operation_log` VALUES (318, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-05 01:56:51', '2020-04-05 01:56:51');
INSERT INTO `admin_operation_log` VALUES (319, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-05 01:57:02', '2020-04-05 01:57:02');
INSERT INTO `admin_operation_log` VALUES (320, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-05 01:57:56', '2020-04-05 01:57:56');
INSERT INTO `admin_operation_log` VALUES (321, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-05 01:59:31', '2020-04-05 01:59:31');
INSERT INTO `admin_operation_log` VALUES (322, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-05 02:00:13', '2020-04-05 02:00:13');
INSERT INTO `admin_operation_log` VALUES (323, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 02:00:35', '2020-04-05 02:00:35');
INSERT INTO `admin_operation_log` VALUES (324, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 02:00:40', '2020-04-05 02:00:40');
INSERT INTO `admin_operation_log` VALUES (325, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 02:00:43', '2020-04-05 02:00:43');
INSERT INTO `admin_operation_log` VALUES (326, 1, 'admin/articles/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 02:01:01', '2020-04-05 02:01:01');
INSERT INTO `admin_operation_log` VALUES (327, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"3\",\"_pjax\":\"#pjax-container\"}', '2020-04-05 02:01:04', '2020-04-05 02:01:04');
INSERT INTO `admin_operation_log` VALUES (328, 1, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":\"2\",\"user_id\":\"1\",\"reply_user_id\":null,\"pid\":null,\"level\":\"1\",\"content\":\"\\u5492\\u6028\\u662f\\u4e00\\u90e8\\u597d\\u6050\\u6016\\u7684\\u7535\\u5f71\",\"_token\":\"AmAc5LjVof8Kt3dZ4Qr2iQ16pMpfFJ8hJj47NYii\"}', '2020-04-05 02:01:59', '2020-04-05 02:01:59');
INSERT INTO `admin_operation_log` VALUES (329, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"3\"}', '2020-04-05 02:02:00', '2020-04-05 02:02:00');
INSERT INTO `admin_operation_log` VALUES (330, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"3\"}', '2020-04-05 02:04:17', '2020-04-05 02:04:17');
INSERT INTO `admin_operation_log` VALUES (331, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"3\"}', '2020-04-05 02:04:40', '2020-04-05 02:04:40');
INSERT INTO `admin_operation_log` VALUES (332, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-05 02:05:16', '2020-04-05 02:05:16');
INSERT INTO `admin_operation_log` VALUES (333, 1, 'admin/articles/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 02:05:20', '2020-04-05 02:05:20');
INSERT INTO `admin_operation_log` VALUES (334, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-04-05 02:05:26', '2020-04-05 02:05:26');
INSERT INTO `admin_operation_log` VALUES (335, 1, 'admin/articles/2', 'GET', '127.0.0.1', '[]', '2020-04-05 02:05:26', '2020-04-05 02:05:26');
INSERT INTO `admin_operation_log` VALUES (336, 1, 'admin/articles/2', 'GET', '127.0.0.1', '[]', '2020-04-05 02:05:34', '2020-04-05 02:05:34');
INSERT INTO `admin_operation_log` VALUES (337, 1, 'admin/articles/2', 'GET', '127.0.0.1', '[]', '2020-04-05 02:05:47', '2020-04-05 02:05:47');
INSERT INTO `admin_operation_log` VALUES (338, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-04-05 02:05:49', '2020-04-05 02:05:49');
INSERT INTO `admin_operation_log` VALUES (339, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 02:09:32', '2020-04-05 02:09:32');
INSERT INTO `admin_operation_log` VALUES (340, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 02:12:26', '2020-04-05 02:12:26');
INSERT INTO `admin_operation_log` VALUES (341, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 02:12:47', '2020-04-05 02:12:47');
INSERT INTO `admin_operation_log` VALUES (342, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 02:14:44', '2020-04-05 02:14:44');
INSERT INTO `admin_operation_log` VALUES (343, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 02:24:24', '2020-04-05 02:24:24');
INSERT INTO `admin_operation_log` VALUES (344, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 02:24:55', '2020-04-05 02:24:55');
INSERT INTO `admin_operation_log` VALUES (345, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 02:29:24', '2020-04-05 02:29:24');
INSERT INTO `admin_operation_log` VALUES (346, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 02:31:33', '2020-04-05 02:31:33');
INSERT INTO `admin_operation_log` VALUES (347, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 02:31:40', '2020-04-05 02:31:40');
INSERT INTO `admin_operation_log` VALUES (348, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 02:32:23', '2020-04-05 02:32:23');
INSERT INTO `admin_operation_log` VALUES (349, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 02:32:42', '2020-04-05 02:32:42');
INSERT INTO `admin_operation_log` VALUES (350, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 02:36:26', '2020-04-05 02:36:26');
INSERT INTO `admin_operation_log` VALUES (351, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 02:36:45', '2020-04-05 02:36:45');
INSERT INTO `admin_operation_log` VALUES (352, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 02:38:36', '2020-04-05 02:38:36');
INSERT INTO `admin_operation_log` VALUES (353, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 02:40:05', '2020-04-05 02:40:05');
INSERT INTO `admin_operation_log` VALUES (354, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 02:40:46', '2020-04-05 02:40:46');
INSERT INTO `admin_operation_log` VALUES (355, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 02:41:15', '2020-04-05 02:41:15');
INSERT INTO `admin_operation_log` VALUES (356, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 02:41:31', '2020-04-05 02:41:31');
INSERT INTO `admin_operation_log` VALUES (357, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 02:42:21', '2020-04-05 02:42:21');
INSERT INTO `admin_operation_log` VALUES (358, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 02:42:38', '2020-04-05 02:42:38');
INSERT INTO `admin_operation_log` VALUES (359, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 02:43:05', '2020-04-05 02:43:05');
INSERT INTO `admin_operation_log` VALUES (360, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 02:43:16', '2020-04-05 02:43:16');
INSERT INTO `admin_operation_log` VALUES (361, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 02:44:19', '2020-04-05 02:44:19');
INSERT INTO `admin_operation_log` VALUES (362, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 02:44:49', '2020-04-05 02:44:49');
INSERT INTO `admin_operation_log` VALUES (363, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 02:44:57', '2020-04-05 02:44:57');
INSERT INTO `admin_operation_log` VALUES (364, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 02:45:02', '2020-04-05 02:45:02');
INSERT INTO `admin_operation_log` VALUES (365, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 02:45:58', '2020-04-05 02:45:58');
INSERT INTO `admin_operation_log` VALUES (366, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 02:46:06', '2020-04-05 02:46:06');
INSERT INTO `admin_operation_log` VALUES (367, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 02:48:12', '2020-04-05 02:48:12');
INSERT INTO `admin_operation_log` VALUES (368, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 02:49:05', '2020-04-05 02:49:05');
INSERT INTO `admin_operation_log` VALUES (369, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 02:49:47', '2020-04-05 02:49:47');
INSERT INTO `admin_operation_log` VALUES (370, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 02:56:15', '2020-04-05 02:56:15');
INSERT INTO `admin_operation_log` VALUES (371, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 03:00:10', '2020-04-05 03:00:10');
INSERT INTO `admin_operation_log` VALUES (372, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 03:00:45', '2020-04-05 03:00:45');
INSERT INTO `admin_operation_log` VALUES (373, 1, 'admin/articles/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 03:00:48', '2020-04-05 03:00:48');
INSERT INTO `admin_operation_log` VALUES (374, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-04-05 03:00:54', '2020-04-05 03:00:54');
INSERT INTO `admin_operation_log` VALUES (375, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 03:01:12', '2020-04-05 03:01:12');
INSERT INTO `admin_operation_log` VALUES (376, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 03:15:20', '2020-04-05 03:15:20');
INSERT INTO `admin_operation_log` VALUES (377, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 03:16:17', '2020-04-05 03:16:17');
INSERT INTO `admin_operation_log` VALUES (378, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 03:16:39', '2020-04-05 03:16:39');
INSERT INTO `admin_operation_log` VALUES (379, 1, 'admin/articles/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 03:17:16', '2020-04-05 03:17:16');
INSERT INTO `admin_operation_log` VALUES (380, 1, 'admin/articles/2', 'GET', '127.0.0.1', '[]', '2020-04-05 03:17:17', '2020-04-05 03:17:17');
INSERT INTO `admin_operation_log` VALUES (381, 1, 'admin/articles/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 03:17:23', '2020-04-05 03:17:23');
INSERT INTO `admin_operation_log` VALUES (382, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-05 03:17:28', '2020-04-05 03:17:28');
INSERT INTO `admin_operation_log` VALUES (383, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-05 03:17:34', '2020-04-05 03:17:34');
INSERT INTO `admin_operation_log` VALUES (384, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-05 03:17:34', '2020-04-05 03:17:34');
INSERT INTO `admin_operation_log` VALUES (385, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-05 03:17:50', '2020-04-05 03:17:50');
INSERT INTO `admin_operation_log` VALUES (386, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-05 03:18:02', '2020-04-05 03:18:02');
INSERT INTO `admin_operation_log` VALUES (387, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-05 03:18:33', '2020-04-05 03:18:33');
INSERT INTO `admin_operation_log` VALUES (388, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-05 03:18:40', '2020-04-05 03:18:40');
INSERT INTO `admin_operation_log` VALUES (389, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 03:18:42', '2020-04-05 03:18:42');
INSERT INTO `admin_operation_log` VALUES (390, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-05 03:18:43', '2020-04-05 03:18:43');
INSERT INTO `admin_operation_log` VALUES (391, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-05 03:18:47', '2020-04-05 03:18:47');
INSERT INTO `admin_operation_log` VALUES (392, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 03:18:49', '2020-04-05 03:18:49');
INSERT INTO `admin_operation_log` VALUES (393, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 03:18:52', '2020-04-05 03:18:52');
INSERT INTO `admin_operation_log` VALUES (394, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 03:18:53', '2020-04-05 03:18:53');
INSERT INTO `admin_operation_log` VALUES (395, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-05 03:18:54', '2020-04-05 03:18:54');
INSERT INTO `admin_operation_log` VALUES (396, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 03:18:58', '2020-04-05 03:18:58');
INSERT INTO `admin_operation_log` VALUES (397, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-05 03:18:58', '2020-04-05 03:18:58');
INSERT INTO `admin_operation_log` VALUES (398, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 03:19:20', '2020-04-05 03:19:20');
INSERT INTO `admin_operation_log` VALUES (399, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-05 03:19:20', '2020-04-05 03:19:20');
INSERT INTO `admin_operation_log` VALUES (400, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 03:19:22', '2020-04-05 03:19:22');
INSERT INTO `admin_operation_log` VALUES (401, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 03:19:23', '2020-04-05 03:19:23');
INSERT INTO `admin_operation_log` VALUES (402, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 03:19:25', '2020-04-05 03:19:25');
INSERT INTO `admin_operation_log` VALUES (403, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-05 03:19:25', '2020-04-05 03:19:25');
INSERT INTO `admin_operation_log` VALUES (404, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 03:19:45', '2020-04-05 03:19:45');
INSERT INTO `admin_operation_log` VALUES (405, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-05 03:19:45', '2020-04-05 03:19:45');
INSERT INTO `admin_operation_log` VALUES (406, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-05 03:22:04', '2020-04-05 03:22:04');
INSERT INTO `admin_operation_log` VALUES (407, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 03:22:06', '2020-04-05 03:22:06');
INSERT INTO `admin_operation_log` VALUES (408, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-05 03:22:06', '2020-04-05 03:22:06');
INSERT INTO `admin_operation_log` VALUES (409, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-05 03:22:39', '2020-04-05 03:22:39');
INSERT INTO `admin_operation_log` VALUES (410, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 03:22:40', '2020-04-05 03:22:40');
INSERT INTO `admin_operation_log` VALUES (411, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 03:22:51', '2020-04-05 03:22:51');
INSERT INTO `admin_operation_log` VALUES (412, 1, 'admin/articles/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 03:22:53', '2020-04-05 03:22:53');
INSERT INTO `admin_operation_log` VALUES (413, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-04-05 03:22:58', '2020-04-05 03:22:58');
INSERT INTO `admin_operation_log` VALUES (414, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 03:23:28', '2020-04-05 03:23:28');
INSERT INTO `admin_operation_log` VALUES (415, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 03:23:50', '2020-04-05 03:23:50');
INSERT INTO `admin_operation_log` VALUES (416, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 03:23:58', '2020-04-05 03:23:58');
INSERT INTO `admin_operation_log` VALUES (417, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 03:24:08', '2020-04-05 03:24:08');
INSERT INTO `admin_operation_log` VALUES (418, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 03:25:01', '2020-04-05 03:25:01');
INSERT INTO `admin_operation_log` VALUES (419, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 03:25:20', '2020-04-05 03:25:20');
INSERT INTO `admin_operation_log` VALUES (420, 1, 'admin/articles/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 03:25:49', '2020-04-05 03:25:49');
INSERT INTO `admin_operation_log` VALUES (421, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 03:25:50', '2020-04-05 03:25:50');
INSERT INTO `admin_operation_log` VALUES (422, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 03:25:56', '2020-04-05 03:25:56');
INSERT INTO `admin_operation_log` VALUES (423, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 03:26:03', '2020-04-05 03:26:03');
INSERT INTO `admin_operation_log` VALUES (424, 3, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-05 03:26:17', '2020-04-05 03:26:17');
INSERT INTO `admin_operation_log` VALUES (425, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 03:26:20', '2020-04-05 03:26:20');
INSERT INTO `admin_operation_log` VALUES (426, 3, 'admin/articles/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 03:26:22', '2020-04-05 03:26:22');
INSERT INTO `admin_operation_log` VALUES (427, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-04-05 03:26:25', '2020-04-05 03:26:25');
INSERT INTO `admin_operation_log` VALUES (428, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 03:27:36', '2020-04-05 03:27:36');
INSERT INTO `admin_operation_log` VALUES (429, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 03:27:45', '2020-04-05 03:27:45');
INSERT INTO `admin_operation_log` VALUES (430, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 03:28:05', '2020-04-05 03:28:05');
INSERT INTO `admin_operation_log` VALUES (431, 3, 'admin/articles/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 03:28:23', '2020-04-05 03:28:23');
INSERT INTO `admin_operation_log` VALUES (432, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-04-05 03:28:33', '2020-04-05 03:28:33');
INSERT INTO `admin_operation_log` VALUES (433, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 03:29:39', '2020-04-05 03:29:39');
INSERT INTO `admin_operation_log` VALUES (434, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 03:29:49', '2020-04-05 03:29:49');
INSERT INTO `admin_operation_log` VALUES (435, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 03:31:57', '2020-04-05 03:31:57');
INSERT INTO `admin_operation_log` VALUES (436, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 07:15:19', '2020-04-05 07:15:19');
INSERT INTO `admin_operation_log` VALUES (437, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 07:16:44', '2020-04-05 07:16:44');
INSERT INTO `admin_operation_log` VALUES (438, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 07:16:57', '2020-04-05 07:16:57');
INSERT INTO `admin_operation_log` VALUES (439, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-04-05 07:17:22', '2020-04-05 07:17:22');
INSERT INTO `admin_operation_log` VALUES (440, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 07:17:31', '2020-04-05 07:17:31');
INSERT INTO `admin_operation_log` VALUES (441, 3, 'admin/articles/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 07:17:34', '2020-04-05 07:17:34');
INSERT INTO `admin_operation_log` VALUES (442, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-04-05 07:17:37', '2020-04-05 07:17:37');
INSERT INTO `admin_operation_log` VALUES (443, 3, 'admin/articles/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 07:17:41', '2020-04-05 07:17:41');
INSERT INTO `admin_operation_log` VALUES (444, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 07:17:42', '2020-04-05 07:17:42');
INSERT INTO `admin_operation_log` VALUES (445, 3, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 07:17:44', '2020-04-05 07:17:44');
INSERT INTO `admin_operation_log` VALUES (446, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 07:17:48', '2020-04-05 07:17:48');
INSERT INTO `admin_operation_log` VALUES (447, 3, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 07:17:53', '2020-04-05 07:17:53');
INSERT INTO `admin_operation_log` VALUES (448, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-05 07:17:57', '2020-04-05 07:17:57');
INSERT INTO `admin_operation_log` VALUES (449, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 07:21:16', '2020-04-05 07:21:16');
INSERT INTO `admin_operation_log` VALUES (450, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 07:25:08', '2020-04-05 07:25:08');
INSERT INTO `admin_operation_log` VALUES (451, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 07:26:03', '2020-04-05 07:26:03');
INSERT INTO `admin_operation_log` VALUES (452, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 07:28:24', '2020-04-05 07:28:24');
INSERT INTO `admin_operation_log` VALUES (453, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 07:29:02', '2020-04-05 07:29:02');
INSERT INTO `admin_operation_log` VALUES (454, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 07:30:39', '2020-04-05 07:30:39');
INSERT INTO `admin_operation_log` VALUES (455, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 07:30:50', '2020-04-05 07:30:50');
INSERT INTO `admin_operation_log` VALUES (456, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 07:31:57', '2020-04-05 07:31:57');
INSERT INTO `admin_operation_log` VALUES (457, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 07:32:18', '2020-04-05 07:32:18');
INSERT INTO `admin_operation_log` VALUES (458, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 07:33:32', '2020-04-05 07:33:32');
INSERT INTO `admin_operation_log` VALUES (459, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 07:33:45', '2020-04-05 07:33:45');
INSERT INTO `admin_operation_log` VALUES (460, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 07:34:15', '2020-04-05 07:34:15');
INSERT INTO `admin_operation_log` VALUES (461, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 07:34:30', '2020-04-05 07:34:30');
INSERT INTO `admin_operation_log` VALUES (462, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 07:37:42', '2020-04-05 07:37:42');
INSERT INTO `admin_operation_log` VALUES (463, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 07:38:09', '2020-04-05 07:38:09');
INSERT INTO `admin_operation_log` VALUES (464, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-04-05 07:38:20', '2020-04-05 07:38:20');
INSERT INTO `admin_operation_log` VALUES (465, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 07:38:35', '2020-04-05 07:38:35');
INSERT INTO `admin_operation_log` VALUES (466, 3, 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 07:38:37', '2020-04-05 07:38:37');
INSERT INTO `admin_operation_log` VALUES (467, 3, 'admin/articles', 'POST', '127.0.0.1', '{\"user_id\":\"3\",\"title\":\"\\u590f\\u6d1b\\u7279\\u70e6\\u607c\",\"intro\":\"\\u4e00\\u4e2a\\u53eb\\u590f\\u6d1b\\u7684\\u4eba\\uff0c\\u4ed6\\u7279\\u522b\\u5730\\u70e6\\u607c\",\"content\":\"# \\u590f\\u6d1b\\r\\n## \\u5c31\\u7279\\u4e48\\u4f60\\u53eb\\u590f\\u6d1b\\u554a\",\"_token\":\"XskIwV1Zt6Dg7vL85Rr8iQQln9RGGaWGD8YuL5c2\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/articles\"}', '2020-04-05 07:40:05', '2020-04-05 07:40:05');
INSERT INTO `admin_operation_log` VALUES (468, 3, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-05 07:40:05', '2020-04-05 07:40:05');
INSERT INTO `admin_operation_log` VALUES (469, 3, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 07:40:15', '2020-04-05 07:40:15');
INSERT INTO `admin_operation_log` VALUES (470, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"4\",\"_pjax\":\"#pjax-container\"}', '2020-04-05 07:40:17', '2020-04-05 07:40:17');
INSERT INTO `admin_operation_log` VALUES (471, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"4\"}', '2020-04-05 07:40:50', '2020-04-05 07:40:50');
INSERT INTO `admin_operation_log` VALUES (472, 3, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":\"4\",\"user_id\":\"3\",\"reply_user_id\":null,\"pid\":null,\"level\":\"1\",\"content\":\"\\u6d4b\\u8bd5\\u56de\\u590d\\u7528\\u6237\\u662f\\u8c01\",\"_token\":\"XskIwV1Zt6Dg7vL85Rr8iQQln9RGGaWGD8YuL5c2\"}', '2020-04-05 07:42:55', '2020-04-05 07:42:55');
INSERT INTO `admin_operation_log` VALUES (473, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"4\"}', '2020-04-05 07:42:55', '2020-04-05 07:42:55');
INSERT INTO `admin_operation_log` VALUES (474, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"4\"}', '2020-04-05 07:46:52', '2020-04-05 07:46:52');
INSERT INTO `admin_operation_log` VALUES (475, 3, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":\"4\",\"user_id\":\"3\",\"reply_user_id\":null,\"pid\":null,\"level\":\"1\",\"content\":\"\\u590f\\u6d1b\\u7279\\u70e6\\u607c\\u8bc4\\u8bba\",\"_token\":\"XskIwV1Zt6Dg7vL85Rr8iQQln9RGGaWGD8YuL5c2\"}', '2020-04-05 07:47:23', '2020-04-05 07:47:23');
INSERT INTO `admin_operation_log` VALUES (476, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"4\"}', '2020-04-05 07:47:23', '2020-04-05 07:47:23');
INSERT INTO `admin_operation_log` VALUES (477, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"4\"}', '2020-04-05 07:51:15', '2020-04-05 07:51:15');
INSERT INTO `admin_operation_log` VALUES (478, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"4\"}', '2020-04-05 07:52:25', '2020-04-05 07:52:25');
INSERT INTO `admin_operation_log` VALUES (479, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"4\"}', '2020-04-05 07:52:34', '2020-04-05 07:52:34');
INSERT INTO `admin_operation_log` VALUES (480, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"4\"}', '2020-04-05 07:52:52', '2020-04-05 07:52:52');
INSERT INTO `admin_operation_log` VALUES (481, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"4\"}', '2020-04-05 07:53:34', '2020-04-05 07:53:34');
INSERT INTO `admin_operation_log` VALUES (482, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"4\"}', '2020-04-05 07:55:18', '2020-04-05 07:55:18');
INSERT INTO `admin_operation_log` VALUES (483, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"4\"}', '2020-04-05 07:55:32', '2020-04-05 07:55:32');
INSERT INTO `admin_operation_log` VALUES (484, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"id\":\"4\"}', '2020-04-05 07:56:41', '2020-04-05 07:56:41');
INSERT INTO `admin_operation_log` VALUES (485, 3, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":\"4\",\"user_id\":\"3\",\"reply_user_id\":\"0\",\"pid\":\"3\",\"level\":\"1\",\"content\":\"\\u590f\\u6d1b\\u7279\\u70e6\\u607c\\u8bc4\\u8bba\\u56de\\u590d\",\"_token\":\"XskIwV1Zt6Dg7vL85Rr8iQQln9RGGaWGD8YuL5c2\"}', '2020-04-05 07:57:07', '2020-04-05 07:57:07');
INSERT INTO `admin_operation_log` VALUES (486, 3, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-05 07:57:09', '2020-04-05 07:57:09');
INSERT INTO `admin_operation_log` VALUES (487, 3, 'admin/comments/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 07:57:30', '2020-04-05 07:57:30');
INSERT INTO `admin_operation_log` VALUES (488, 3, 'admin/comments', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 07:58:25', '2020-04-05 07:58:25');
INSERT INTO `admin_operation_log` VALUES (489, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 07:58:27', '2020-04-05 07:58:27');
INSERT INTO `admin_operation_log` VALUES (490, 3, 'admin/comments/create', 'GET', '127.0.0.1', '[]', '2020-04-05 07:59:05', '2020-04-05 07:59:05');
INSERT INTO `admin_operation_log` VALUES (491, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 07:59:15', '2020-04-05 07:59:15');
INSERT INTO `admin_operation_log` VALUES (492, 3, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 07:59:18', '2020-04-05 07:59:18');
INSERT INTO `admin_operation_log` VALUES (493, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-05 07:59:22', '2020-04-05 07:59:22');
INSERT INTO `admin_operation_log` VALUES (494, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-05 07:59:40', '2020-04-05 07:59:40');
INSERT INTO `admin_operation_log` VALUES (495, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 07:59:48', '2020-04-05 07:59:48');
INSERT INTO `admin_operation_log` VALUES (496, 3, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 07:59:52', '2020-04-05 07:59:52');
INSERT INTO `admin_operation_log` VALUES (497, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-05 07:59:55', '2020-04-05 07:59:55');
INSERT INTO `admin_operation_log` VALUES (498, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-05 08:01:46', '2020-04-05 08:01:46');
INSERT INTO `admin_operation_log` VALUES (499, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:01:49', '2020-04-05 08:01:49');
INSERT INTO `admin_operation_log` VALUES (500, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-05 08:02:07', '2020-04-05 08:02:07');
INSERT INTO `admin_operation_log` VALUES (501, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:02:11', '2020-04-05 08:02:11');
INSERT INTO `admin_operation_log` VALUES (502, 1, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:02:14', '2020-04-05 08:02:14');
INSERT INTO `admin_operation_log` VALUES (503, 1, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-05 08:10:52', '2020-04-05 08:10:52');
INSERT INTO `admin_operation_log` VALUES (504, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-05 08:11:04', '2020-04-05 08:11:04');
INSERT INTO `admin_operation_log` VALUES (505, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:11:06', '2020-04-05 08:11:06');
INSERT INTO `admin_operation_log` VALUES (506, 1, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:11:09', '2020-04-05 08:11:09');
INSERT INTO `admin_operation_log` VALUES (507, 1, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-05 08:11:45', '2020-04-05 08:11:45');
INSERT INTO `admin_operation_log` VALUES (508, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:11:53', '2020-04-05 08:11:53');
INSERT INTO `admin_operation_log` VALUES (509, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:11:55', '2020-04-05 08:11:55');
INSERT INTO `admin_operation_log` VALUES (510, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:11:59', '2020-04-05 08:11:59');
INSERT INTO `admin_operation_log` VALUES (511, 1, 'admin/articles/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:12:01', '2020-04-05 08:12:01');
INSERT INTO `admin_operation_log` VALUES (512, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:12:06', '2020-04-05 08:12:06');
INSERT INTO `admin_operation_log` VALUES (513, 1, 'admin/articles/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:12:08', '2020-04-05 08:12:08');
INSERT INTO `admin_operation_log` VALUES (514, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:12:22', '2020-04-05 08:12:22');
INSERT INTO `admin_operation_log` VALUES (515, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-05 08:13:58', '2020-04-05 08:13:58');
INSERT INTO `admin_operation_log` VALUES (516, 1, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:14:03', '2020-04-05 08:14:03');
INSERT INTO `admin_operation_log` VALUES (517, 1, 'admin/comments/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:16:17', '2020-04-05 08:16:17');
INSERT INTO `admin_operation_log` VALUES (518, 1, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:16:19', '2020-04-05 08:16:19');
INSERT INTO `admin_operation_log` VALUES (519, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\",\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:16:24', '2020-04-05 08:16:24');
INSERT INTO `admin_operation_log` VALUES (520, 1, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:16:31', '2020-04-05 08:16:31');
INSERT INTO `admin_operation_log` VALUES (521, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\",\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:16:35', '2020-04-05 08:16:35');
INSERT INTO `admin_operation_log` VALUES (522, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 08:17:28', '2020-04-05 08:17:28');
INSERT INTO `admin_operation_log` VALUES (523, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 08:17:42', '2020-04-05 08:17:42');
INSERT INTO `admin_operation_log` VALUES (524, 1, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":\"4\",\"user_id\":\"1\",\"reply_user_id\":\"4\",\"pid\":\"4\",\"level\":\"1\",\"content\":\"\\u6d4b\\u8bd5\\u9ed8\\u8ba4\\u7236\\u8282\\u70b9\",\"_token\":\"UjrU6S5b5O6qzQ4HrMEA3gJgZnSZDqTHfRjtz6LG\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/comments\\/create?article_id=4\"}', '2020-04-05 08:18:05', '2020-04-05 08:18:05');
INSERT INTO `admin_operation_log` VALUES (525, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 08:18:06', '2020-04-05 08:18:06');
INSERT INTO `admin_operation_log` VALUES (526, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:18:14', '2020-04-05 08:18:14');
INSERT INTO `admin_operation_log` VALUES (527, 1, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:18:16', '2020-04-05 08:18:16');
INSERT INTO `admin_operation_log` VALUES (528, 1, 'admin/comments/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:18:22', '2020-04-05 08:18:22');
INSERT INTO `admin_operation_log` VALUES (529, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:20:03', '2020-04-05 08:20:03');
INSERT INTO `admin_operation_log` VALUES (530, 1, 'admin/articles/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:20:05', '2020-04-05 08:20:05');
INSERT INTO `admin_operation_log` VALUES (531, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"3\",\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:20:08', '2020-04-05 08:20:08');
INSERT INTO `admin_operation_log` VALUES (532, 1, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":\"3\",\"user_id\":\"1\",\"reply_user_id\":\"0\",\"pid\":\"5\",\"level\":\"1\",\"content\":\"\\u6d4b\\u8bd5\\u9ed8\\u8ba4\\u56de\\u590d\\u7528\\u6237\\u548c\\u9ed8\\u8ba4\\u7236\\u8282\\u70b9\",\"_token\":\"UjrU6S5b5O6qzQ4HrMEA3gJgZnSZDqTHfRjtz6LG\"}', '2020-04-05 08:20:27', '2020-04-05 08:20:27');
INSERT INTO `admin_operation_log` VALUES (533, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-05 08:20:27', '2020-04-05 08:20:27');
INSERT INTO `admin_operation_log` VALUES (534, 1, 'admin/comments/5', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:20:32', '2020-04-05 08:20:32');
INSERT INTO `admin_operation_log` VALUES (535, 1, 'admin/comments/5', 'GET', '127.0.0.1', '[]', '2020-04-05 08:20:56', '2020-04-05 08:20:56');
INSERT INTO `admin_operation_log` VALUES (536, 1, 'admin/comments', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:20:58', '2020-04-05 08:20:58');
INSERT INTO `admin_operation_log` VALUES (537, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:21:01', '2020-04-05 08:21:01');
INSERT INTO `admin_operation_log` VALUES (538, 1, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:21:03', '2020-04-05 08:21:03');
INSERT INTO `admin_operation_log` VALUES (539, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\",\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:21:05', '2020-04-05 08:21:05');
INSERT INTO `admin_operation_log` VALUES (540, 1, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":\"4\",\"user_id\":\"1\",\"reply_user_id\":\"4\",\"pid\":\"6\",\"level\":\"1\",\"content\":\"\\u518d\\u6b21\\u6d4b\\u8bd5\\u9ed8\\u8ba4\\u56de\\u590d\\u7528\\u6237\\u548c\\u9ed8\\u8ba4\\u7236\\u8282\\u70b9\",\"_token\":\"UjrU6S5b5O6qzQ4HrMEA3gJgZnSZDqTHfRjtz6LG\"}', '2020-04-05 08:21:32', '2020-04-05 08:21:32');
INSERT INTO `admin_operation_log` VALUES (541, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-05 08:21:32', '2020-04-05 08:21:32');
INSERT INTO `admin_operation_log` VALUES (542, 1, 'admin/comments/6', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:21:36', '2020-04-05 08:21:36');
INSERT INTO `admin_operation_log` VALUES (543, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:22:37', '2020-04-05 08:22:37');
INSERT INTO `admin_operation_log` VALUES (544, 1, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:22:41', '2020-04-05 08:22:41');
INSERT INTO `admin_operation_log` VALUES (545, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\",\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:22:44', '2020-04-05 08:22:44');
INSERT INTO `admin_operation_log` VALUES (546, 1, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":\"4\",\"user_id\":\"1\",\"reply_user_id\":\"3\",\"pid\":\"2\",\"level\":\"1\",\"content\":\"\\u770b\\u7535\\u89c6\\u5267\\u75af\\u72c2\\u62c9\\u5347\\u9636\\u6bb5\\u770b\\u6765\\u9644\\u8fd1\\u5f00\\u4e86\\u5927\\u6570\\u636e\",\"_token\":\"UjrU6S5b5O6qzQ4HrMEA3gJgZnSZDqTHfRjtz6LG\"}', '2020-04-05 08:22:55', '2020-04-05 08:22:55');
INSERT INTO `admin_operation_log` VALUES (547, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-05 08:22:55', '2020-04-05 08:22:55');
INSERT INTO `admin_operation_log` VALUES (548, 1, 'admin/comments/7', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:22:59', '2020-04-05 08:22:59');
INSERT INTO `admin_operation_log` VALUES (549, 1, 'admin/comments', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:23:05', '2020-04-05 08:23:05');
INSERT INTO `admin_operation_log` VALUES (550, 1, 'admin/comments/7', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:23:16', '2020-04-05 08:23:16');
INSERT INTO `admin_operation_log` VALUES (551, 1, 'admin/comments', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:23:19', '2020-04-05 08:23:19');
INSERT INTO `admin_operation_log` VALUES (552, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:27:37', '2020-04-05 08:27:37');
INSERT INTO `admin_operation_log` VALUES (553, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:27:39', '2020-04-05 08:27:39');
INSERT INTO `admin_operation_log` VALUES (554, 1, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:27:42', '2020-04-05 08:27:42');
INSERT INTO `admin_operation_log` VALUES (555, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\",\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:27:45', '2020-04-05 08:27:45');
INSERT INTO `admin_operation_log` VALUES (556, 1, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":\"4\",\"user_id\":\"1\",\"reply_user_id\":null,\"pid\":null,\"level\":\"1\",\"content\":\"\\u6d4b\\u8bd5\\u9ed8\\u8ba4\\u6492\\u6253\\u53d1\\u624b\\u52a8\\u9600\\u624b\\u52a8\\u9600\\u58eb\\u5927\\u592b\",\"_token\":\"UjrU6S5b5O6qzQ4HrMEA3gJgZnSZDqTHfRjtz6LG\"}', '2020-04-05 08:28:00', '2020-04-05 08:28:00');
INSERT INTO `admin_operation_log` VALUES (557, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 08:28:06', '2020-04-05 08:28:06');
INSERT INTO `admin_operation_log` VALUES (558, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 08:29:06', '2020-04-05 08:29:06');
INSERT INTO `admin_operation_log` VALUES (559, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 08:29:13', '2020-04-05 08:29:13');
INSERT INTO `admin_operation_log` VALUES (560, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 08:29:20', '2020-04-05 08:29:20');
INSERT INTO `admin_operation_log` VALUES (561, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 08:29:27', '2020-04-05 08:29:27');
INSERT INTO `admin_operation_log` VALUES (562, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 08:29:35', '2020-04-05 08:29:35');
INSERT INTO `admin_operation_log` VALUES (563, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 08:29:42', '2020-04-05 08:29:42');
INSERT INTO `admin_operation_log` VALUES (564, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 08:36:23', '2020-04-05 08:36:23');
INSERT INTO `admin_operation_log` VALUES (565, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 08:37:58', '2020-04-05 08:37:58');
INSERT INTO `admin_operation_log` VALUES (566, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 08:38:06', '2020-04-05 08:38:06');
INSERT INTO `admin_operation_log` VALUES (567, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 08:40:39', '2020-04-05 08:40:39');
INSERT INTO `admin_operation_log` VALUES (568, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 08:40:47', '2020-04-05 08:40:47');
INSERT INTO `admin_operation_log` VALUES (569, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 08:44:30', '2020-04-05 08:44:30');
INSERT INTO `admin_operation_log` VALUES (570, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 08:44:51', '2020-04-05 08:44:51');
INSERT INTO `admin_operation_log` VALUES (571, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 08:45:08', '2020-04-05 08:45:08');
INSERT INTO `admin_operation_log` VALUES (572, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 08:45:14', '2020-04-05 08:45:14');
INSERT INTO `admin_operation_log` VALUES (573, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 08:47:02', '2020-04-05 08:47:02');
INSERT INTO `admin_operation_log` VALUES (574, 1, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":\"4\",\"user_id\":\"1\",\"reply_user_id\":\"0\",\"pid\":\"0\",\"level\":\"1\",\"content\":\"\\u8fd9\\u6b21\\u771f\\u7684\\u53ef\\u4ee5\\u4e86\\u5427\",\"_token\":\"UjrU6S5b5O6qzQ4HrMEA3gJgZnSZDqTHfRjtz6LG\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/comments\\/create?article_id=4\"}', '2020-04-05 08:47:56', '2020-04-05 08:47:56');
INSERT INTO `admin_operation_log` VALUES (575, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 08:47:56', '2020-04-05 08:47:56');
INSERT INTO `admin_operation_log` VALUES (576, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:48:02', '2020-04-05 08:48:02');
INSERT INTO `admin_operation_log` VALUES (577, 1, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:48:04', '2020-04-05 08:48:04');
INSERT INTO `admin_operation_log` VALUES (578, 1, 'admin/comments/8', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:48:09', '2020-04-05 08:48:09');
INSERT INTO `admin_operation_log` VALUES (579, 1, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:48:15', '2020-04-05 08:48:15');
INSERT INTO `admin_operation_log` VALUES (580, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\",\"_pjax\":\"#pjax-container\"}', '2020-04-05 08:48:19', '2020-04-05 08:48:19');
INSERT INTO `admin_operation_log` VALUES (581, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 09:21:42', '2020-04-05 09:21:42');
INSERT INTO `admin_operation_log` VALUES (582, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 09:21:46', '2020-04-05 09:21:46');
INSERT INTO `admin_operation_log` VALUES (583, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-05 09:22:59', '2020-04-05 09:22:59');
INSERT INTO `admin_operation_log` VALUES (584, 1, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 09:23:03', '2020-04-05 09:23:03');
INSERT INTO `admin_operation_log` VALUES (585, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 09:27:48', '2020-04-05 09:27:48');
INSERT INTO `admin_operation_log` VALUES (586, 1, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 09:27:50', '2020-04-05 09:27:50');
INSERT INTO `admin_operation_log` VALUES (587, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\",\"_pjax\":\"#pjax-container\"}', '2020-04-05 09:27:53', '2020-04-05 09:27:53');
INSERT INTO `admin_operation_log` VALUES (588, 1, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":\"4\",\"user_id\":\"1\",\"reply_user_id\":\"0\",\"pid\":\"0\",\"level\":\"1\",\"content\":\"\\u6d4b\\u8bd5\\u8df3\\u8f6c\\u662f\\u5426\\u6b63\\u5e38\",\"_token\":\"UjrU6S5b5O6qzQ4HrMEA3gJgZnSZDqTHfRjtz6LG\"}', '2020-04-05 09:28:07', '2020-04-05 09:28:07');
INSERT INTO `admin_operation_log` VALUES (589, 1, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-05 09:28:07', '2020-04-05 09:28:07');
INSERT INTO `admin_operation_log` VALUES (590, 1, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-05 12:30:08', '2020-04-05 12:30:08');
INSERT INTO `admin_operation_log` VALUES (591, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-05 12:30:11', '2020-04-05 12:30:11');
INSERT INTO `admin_operation_log` VALUES (592, 1, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-05 12:53:59', '2020-04-05 12:53:59');
INSERT INTO `admin_operation_log` VALUES (593, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\",\"_pjax\":\"#pjax-container\"}', '2020-04-05 12:54:01', '2020-04-05 12:54:01');
INSERT INTO `admin_operation_log` VALUES (594, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 12:54:20', '2020-04-05 12:54:20');
INSERT INTO `admin_operation_log` VALUES (595, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 12:54:52', '2020-04-05 12:54:52');
INSERT INTO `admin_operation_log` VALUES (596, 1, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 12:55:02', '2020-04-05 12:55:02');
INSERT INTO `admin_operation_log` VALUES (597, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 12:55:06', '2020-04-05 12:55:06');
INSERT INTO `admin_operation_log` VALUES (598, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 12:55:09', '2020-04-05 12:55:09');
INSERT INTO `admin_operation_log` VALUES (599, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-05 12:55:12', '2020-04-05 12:55:12');
INSERT INTO `admin_operation_log` VALUES (600, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 12:55:21', '2020-04-05 12:55:21');
INSERT INTO `admin_operation_log` VALUES (601, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-05 12:58:13', '2020-04-05 12:58:13');
INSERT INTO `admin_operation_log` VALUES (602, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 12:58:15', '2020-04-05 12:58:15');
INSERT INTO `admin_operation_log` VALUES (603, 1, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 12:58:17', '2020-04-05 12:58:17');
INSERT INTO `admin_operation_log` VALUES (604, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\",\"_pjax\":\"#pjax-container\"}', '2020-04-05 12:58:21', '2020-04-05 12:58:21');
INSERT INTO `admin_operation_log` VALUES (605, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 12:59:02', '2020-04-05 12:59:02');
INSERT INTO `admin_operation_log` VALUES (606, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-05 13:01:44', '2020-04-05 13:01:44');
INSERT INTO `admin_operation_log` VALUES (607, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 13:09:03', '2020-04-05 13:09:03');
INSERT INTO `admin_operation_log` VALUES (608, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 13:10:08', '2020-04-05 13:10:08');
INSERT INTO `admin_operation_log` VALUES (609, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 13:15:07', '2020-04-05 13:15:07');
INSERT INTO `admin_operation_log` VALUES (610, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 13:15:43', '2020-04-05 13:15:43');
INSERT INTO `admin_operation_log` VALUES (611, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 13:16:04', '2020-04-05 13:16:04');
INSERT INTO `admin_operation_log` VALUES (612, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 13:20:07', '2020-04-05 13:20:07');
INSERT INTO `admin_operation_log` VALUES (613, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 13:20:25', '2020-04-05 13:20:25');
INSERT INTO `admin_operation_log` VALUES (614, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 13:23:44', '2020-04-05 13:23:44');
INSERT INTO `admin_operation_log` VALUES (615, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 13:24:36', '2020-04-05 13:24:36');
INSERT INTO `admin_operation_log` VALUES (616, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 13:24:58', '2020-04-05 13:24:58');
INSERT INTO `admin_operation_log` VALUES (617, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 13:25:16', '2020-04-05 13:25:16');
INSERT INTO `admin_operation_log` VALUES (618, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 13:26:29', '2020-04-05 13:26:29');
INSERT INTO `admin_operation_log` VALUES (619, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 13:30:02', '2020-04-05 13:30:02');
INSERT INTO `admin_operation_log` VALUES (620, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 13:32:45', '2020-04-05 13:32:45');
INSERT INTO `admin_operation_log` VALUES (621, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 13:33:04', '2020-04-05 13:33:04');
INSERT INTO `admin_operation_log` VALUES (622, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 13:37:11', '2020-04-05 13:37:11');
INSERT INTO `admin_operation_log` VALUES (623, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 13:37:28', '2020-04-05 13:37:28');
INSERT INTO `admin_operation_log` VALUES (624, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-05 13:42:17', '2020-04-05 13:42:17');
INSERT INTO `admin_operation_log` VALUES (625, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 13:42:41', '2020-04-05 13:42:41');
INSERT INTO `admin_operation_log` VALUES (626, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-05 14:26:24', '2020-04-05 14:26:24');
INSERT INTO `admin_operation_log` VALUES (627, 1, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 14:26:27', '2020-04-05 14:26:27');
INSERT INTO `admin_operation_log` VALUES (628, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 14:26:29', '2020-04-05 14:26:29');
INSERT INTO `admin_operation_log` VALUES (629, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 15:16:43', '2020-04-05 15:16:43');
INSERT INTO `admin_operation_log` VALUES (630, 1, 'admin/auth/users/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 15:16:55', '2020-04-05 15:16:55');
INSERT INTO `admin_operation_log` VALUES (631, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 15:16:59', '2020-04-05 15:16:59');
INSERT INTO `admin_operation_log` VALUES (632, 1, 'admin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"xiao\",\"name\":\"\\u8096\\u8001\\u5e08\",\"password\":\"$2y$10$bCMMizVlBS0HoVxhdfhTTO6M7jYPNuAqdoGCNDhseBPeyToV9JQ2W\",\"password_confirmation\":\"$2y$10$bCMMizVlBS0HoVxhdfhTTO6M7jYPNuAqdoGCNDhseBPeyToV9JQ2W\",\"roles\":[\"1\",\"2\",null],\"permissions\":[null],\"_token\":\"Pgi1MwVlFI7kuhC28jKgEzAgDPNeNnwGdSPokkCt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/users\\/2\"}', '2020-04-05 15:17:04', '2020-04-05 15:17:04');
INSERT INTO `admin_operation_log` VALUES (633, 1, 'admin/auth/users/2', 'GET', '127.0.0.1', '[]', '2020-04-05 15:17:05', '2020-04-05 15:17:05');
INSERT INTO `admin_operation_log` VALUES (634, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 15:17:07', '2020-04-05 15:17:07');
INSERT INTO `admin_operation_log` VALUES (635, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 15:42:15', '2020-04-05 15:42:15');
INSERT INTO `admin_operation_log` VALUES (636, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6807\\u7b7e\\u7ba1\\u7406\",\"icon\":\"fa-bookmark-o\",\"uri\":\"\\/labels\",\"roles\":[null],\"permission\":null,\"_token\":\"Pgi1MwVlFI7kuhC28jKgEzAgDPNeNnwGdSPokkCt\"}', '2020-04-05 15:42:56', '2020-04-05 15:42:56');
INSERT INTO `admin_operation_log` VALUES (637, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-05 15:42:56', '2020-04-05 15:42:56');
INSERT INTO `admin_operation_log` VALUES (638, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"Pgi1MwVlFI7kuhC28jKgEzAgDPNeNnwGdSPokkCt\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":10},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-04-05 15:43:03', '2020-04-05 15:43:03');
INSERT INTO `admin_operation_log` VALUES (639, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 15:43:03', '2020-04-05 15:43:03');
INSERT INTO `admin_operation_log` VALUES (640, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-05 15:43:05', '2020-04-05 15:43:05');
INSERT INTO `admin_operation_log` VALUES (641, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 15:43:06', '2020-04-05 15:43:06');
INSERT INTO `admin_operation_log` VALUES (642, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 15:43:50', '2020-04-05 15:43:50');
INSERT INTO `admin_operation_log` VALUES (643, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-05 15:45:26', '2020-04-05 15:45:26');
INSERT INTO `admin_operation_log` VALUES (644, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 15:45:37', '2020-04-05 15:45:37');
INSERT INTO `admin_operation_log` VALUES (645, 1, 'admin/labels/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 15:45:39', '2020-04-05 15:45:39');
INSERT INTO `admin_operation_log` VALUES (646, 1, 'admin/labels', 'POST', '127.0.0.1', '{\"content\":\"\\u6d4b\\u8bd5\",\"_token\":\"Pgi1MwVlFI7kuhC28jKgEzAgDPNeNnwGdSPokkCt\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/labels\"}', '2020-04-05 15:45:50', '2020-04-05 15:45:50');
INSERT INTO `admin_operation_log` VALUES (647, 1, 'admin/labels', 'GET', '127.0.0.1', '[]', '2020-04-05 15:45:50', '2020-04-05 15:45:50');
INSERT INTO `admin_operation_log` VALUES (648, 1, 'admin/labels', 'GET', '127.0.0.1', '[]', '2020-04-05 15:46:22', '2020-04-05 15:46:22');
INSERT INTO `admin_operation_log` VALUES (649, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 15:46:24', '2020-04-05 15:46:24');
INSERT INTO `admin_operation_log` VALUES (650, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-05 15:46:26', '2020-04-05 15:46:26');
INSERT INTO `admin_operation_log` VALUES (651, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 15:46:33', '2020-04-05 15:46:33');
INSERT INTO `admin_operation_log` VALUES (652, 1, 'admin/labels/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 15:46:34', '2020-04-05 15:46:34');
INSERT INTO `admin_operation_log` VALUES (653, 1, 'admin/labels', 'POST', '127.0.0.1', '{\"content\":\"\\u6545\\u4e8b\\u7c7b\",\"_token\":\"Pgi1MwVlFI7kuhC28jKgEzAgDPNeNnwGdSPokkCt\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/labels\"}', '2020-04-05 15:46:44', '2020-04-05 15:46:44');
INSERT INTO `admin_operation_log` VALUES (654, 1, 'admin/labels', 'GET', '127.0.0.1', '[]', '2020-04-05 15:46:44', '2020-04-05 15:46:44');
INSERT INTO `admin_operation_log` VALUES (655, 1, 'admin/labels', 'GET', '127.0.0.1', '[]', '2020-04-05 15:47:04', '2020-04-05 15:47:04');
INSERT INTO `admin_operation_log` VALUES (656, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 15:47:06', '2020-04-05 15:47:06');
INSERT INTO `admin_operation_log` VALUES (657, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 15:47:11', '2020-04-05 15:47:11');
INSERT INTO `admin_operation_log` VALUES (658, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 15:47:20', '2020-04-05 15:47:20');
INSERT INTO `admin_operation_log` VALUES (659, 1, 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 15:47:22', '2020-04-05 15:47:22');
INSERT INTO `admin_operation_log` VALUES (660, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-05 15:47:25', '2020-04-05 15:47:25');
INSERT INTO `admin_operation_log` VALUES (661, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-06 01:06:13', '2020-04-06 01:06:13');
INSERT INTO `admin_operation_log` VALUES (662, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 01:06:18', '2020-04-06 01:06:18');
INSERT INTO `admin_operation_log` VALUES (663, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 01:09:31', '2020-04-06 01:09:31');
INSERT INTO `admin_operation_log` VALUES (664, 1, 'admin/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 01:09:34', '2020-04-06 01:09:34');
INSERT INTO `admin_operation_log` VALUES (665, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 01:09:40', '2020-04-06 01:09:40');
INSERT INTO `admin_operation_log` VALUES (666, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 01:16:51', '2020-04-06 01:16:51');
INSERT INTO `admin_operation_log` VALUES (667, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 01:16:59', '2020-04-06 01:16:59');
INSERT INTO `admin_operation_log` VALUES (668, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 01:17:02', '2020-04-06 01:17:02');
INSERT INTO `admin_operation_log` VALUES (669, 1, 'admin/auth/users/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 01:17:05', '2020-04-06 01:17:05');
INSERT INTO `admin_operation_log` VALUES (670, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 01:17:53', '2020-04-06 01:17:53');
INSERT INTO `admin_operation_log` VALUES (671, 1, 'admin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"xiao\",\"name\":\"\\u8096\\u8001\\u5e08\",\"password\":\"$2y$10$bCMMizVlBS0HoVxhdfhTTO6M7jYPNuAqdoGCNDhseBPeyToV9JQ2W\",\"password_confirmation\":\"$2y$10$bCMMizVlBS0HoVxhdfhTTO6M7jYPNuAqdoGCNDhseBPeyToV9JQ2W\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"mbg2NKJJ3ZYvX75jwC9Fnc0n6jvwDSQFgdUpPvrK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/users\\/2\"}', '2020-04-06 01:18:01', '2020-04-06 01:18:01');
INSERT INTO `admin_operation_log` VALUES (672, 1, 'admin/auth/users/2', 'GET', '127.0.0.1', '[]', '2020-04-06 01:18:02', '2020-04-06 01:18:02');
INSERT INTO `admin_operation_log` VALUES (673, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 01:23:56', '2020-04-06 01:23:56');
INSERT INTO `admin_operation_log` VALUES (674, 1, 'admin/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 01:24:01', '2020-04-06 01:24:01');
INSERT INTO `admin_operation_log` VALUES (675, 1, 'admin/articles/1', 'PUT', '127.0.0.1', '{\"user_id\":\"1\",\"title\":\"\\u5b64\\u5c9b\\u60ca\\u9b42\",\"labels\":[\"1\",null],\"intro\":\"\\u8bb2\\u8ff0\\u4e86\\u4e00\\u4e2a\\u5728\\u5b64\\u5c9b\\u4e0a\\u53d1\\u751f\\u7684\\u60ca\\u9b42\\u6545\\u4e8b\",\"content\":\"# \\u4e00\\u7ea7\\u6807\\u9898\\r\\n## \\u4e8c\\u7ea7\\u6807\\u9898\\r\\n### \\u4e09\\u7ea7\\u6807\\u9898\\r\\n**\\u52a0\\u7c97**\\r\\n\\r\\n| \\u6d4b\\u8bd5  | \\u6d4b\\u8bd5  |\\r\\n| ------------ | ------------ |\\r\\n| \\u6d4b\\u8bd5  | \\u6d4b\\u8bd5  |\\r\\n| \\u6d4b\\u8bd5  |  \\u6d4b\\u8bd5 |\",\"_token\":\"mbg2NKJJ3ZYvX75jwC9Fnc0n6jvwDSQFgdUpPvrK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/articles\"}', '2020-04-06 01:24:28', '2020-04-06 01:24:28');
INSERT INTO `admin_operation_log` VALUES (676, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-06 01:24:28', '2020-04-06 01:24:28');
INSERT INTO `admin_operation_log` VALUES (677, 1, 'admin/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 01:24:36', '2020-04-06 01:24:36');
INSERT INTO `admin_operation_log` VALUES (678, 1, 'admin/articles/1', 'PUT', '127.0.0.1', '{\"user_id\":\"1\",\"title\":\"\\u5b64\\u5c9b\\u60ca\\u9b42\",\"labels\":[\"2\",null],\"intro\":\"\\u8bb2\\u8ff0\\u4e86\\u4e00\\u4e2a\\u5728\\u5b64\\u5c9b\\u4e0a\\u53d1\\u751f\\u7684\\u60ca\\u9b42\\u6545\\u4e8b\",\"content\":\"# \\u4e00\\u7ea7\\u6807\\u9898\\r\\n## \\u4e8c\\u7ea7\\u6807\\u9898\\r\\n### \\u4e09\\u7ea7\\u6807\\u9898\\r\\n**\\u52a0\\u7c97**\\r\\n\\r\\n| \\u6d4b\\u8bd5  | \\u6d4b\\u8bd5  |\\r\\n| ------------ | ------------ |\\r\\n| \\u6d4b\\u8bd5  | \\u6d4b\\u8bd5  |\\r\\n| \\u6d4b\\u8bd5  |  \\u6d4b\\u8bd5 |\",\"_token\":\"mbg2NKJJ3ZYvX75jwC9Fnc0n6jvwDSQFgdUpPvrK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/articles\"}', '2020-04-06 01:24:42', '2020-04-06 01:24:42');
INSERT INTO `admin_operation_log` VALUES (679, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-06 01:24:42', '2020-04-06 01:24:42');
INSERT INTO `admin_operation_log` VALUES (680, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 01:25:57', '2020-04-06 01:25:57');
INSERT INTO `admin_operation_log` VALUES (681, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-06 01:26:35', '2020-04-06 01:26:35');
INSERT INTO `admin_operation_log` VALUES (682, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-06 01:28:30', '2020-04-06 01:28:30');
INSERT INTO `admin_operation_log` VALUES (683, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-06 01:28:38', '2020-04-06 01:28:38');
INSERT INTO `admin_operation_log` VALUES (684, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-06 01:30:00', '2020-04-06 01:30:00');
INSERT INTO `admin_operation_log` VALUES (685, 1, 'admin/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 01:30:22', '2020-04-06 01:30:22');
INSERT INTO `admin_operation_log` VALUES (686, 1, 'admin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-06 01:31:02', '2020-04-06 01:31:02');
INSERT INTO `admin_operation_log` VALUES (687, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 01:33:30', '2020-04-06 01:33:30');
INSERT INTO `admin_operation_log` VALUES (688, 1, 'admin/labels', 'GET', '127.0.0.1', '[]', '2020-04-06 01:33:51', '2020-04-06 01:33:51');
INSERT INTO `admin_operation_log` VALUES (689, 1, 'admin/labels/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 01:34:04', '2020-04-06 01:34:04');
INSERT INTO `admin_operation_log` VALUES (690, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 01:34:06', '2020-04-06 01:34:06');
INSERT INTO `admin_operation_log` VALUES (691, 1, 'admin/labels', 'GET', '127.0.0.1', '[]', '2020-04-06 01:36:29', '2020-04-06 01:36:29');
INSERT INTO `admin_operation_log` VALUES (692, 1, 'admin/labels/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 01:36:32', '2020-04-06 01:36:32');
INSERT INTO `admin_operation_log` VALUES (693, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 01:36:35', '2020-04-06 01:36:35');
INSERT INTO `admin_operation_log` VALUES (694, 1, 'admin/labels/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 01:36:37', '2020-04-06 01:36:37');
INSERT INTO `admin_operation_log` VALUES (695, 1, 'admin/labels/2', 'GET', '127.0.0.1', '[]', '2020-04-06 01:37:51', '2020-04-06 01:37:51');
INSERT INTO `admin_operation_log` VALUES (696, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 01:38:08', '2020-04-06 01:38:08');
INSERT INTO `admin_operation_log` VALUES (697, 1, 'admin/labels/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 01:38:10', '2020-04-06 01:38:10');
INSERT INTO `admin_operation_log` VALUES (698, 1, 'admin/labels/2', 'GET', '127.0.0.1', '[]', '2020-04-06 01:38:45', '2020-04-06 01:38:45');
INSERT INTO `admin_operation_log` VALUES (699, 1, 'admin/labels/2', 'GET', '127.0.0.1', '[]', '2020-04-06 01:39:28', '2020-04-06 01:39:28');
INSERT INTO `admin_operation_log` VALUES (700, 1, 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 01:39:46', '2020-04-06 01:39:46');
INSERT INTO `admin_operation_log` VALUES (701, 1, 'admin/labels/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 01:39:50', '2020-04-06 01:39:50');
INSERT INTO `admin_operation_log` VALUES (702, 1, 'admin/labels/2', 'GET', '127.0.0.1', '[]', '2020-04-06 01:40:38', '2020-04-06 01:40:38');
INSERT INTO `admin_operation_log` VALUES (703, 1, 'admin/labels/2', 'GET', '127.0.0.1', '[]', '2020-04-06 01:41:16', '2020-04-06 01:41:16');
INSERT INTO `admin_operation_log` VALUES (704, 1, 'admin/labels/2', 'GET', '127.0.0.1', '[]', '2020-04-06 01:41:52', '2020-04-06 01:41:52');
INSERT INTO `admin_operation_log` VALUES (705, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 01:41:57', '2020-04-06 01:41:57');
INSERT INTO `admin_operation_log` VALUES (706, 1, 'admin/labels/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 01:42:01', '2020-04-06 01:42:01');
INSERT INTO `admin_operation_log` VALUES (707, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 01:42:07', '2020-04-06 01:42:07');
INSERT INTO `admin_operation_log` VALUES (708, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 01:42:12', '2020-04-06 01:42:12');
INSERT INTO `admin_operation_log` VALUES (709, 1, 'admin/labels/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 01:42:15', '2020-04-06 01:42:15');
INSERT INTO `admin_operation_log` VALUES (710, 1, 'admin/labels/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-06 01:42:34', '2020-04-06 01:42:34');
INSERT INTO `admin_operation_log` VALUES (711, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 01:42:37', '2020-04-06 01:42:37');
INSERT INTO `admin_operation_log` VALUES (712, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 01:42:40', '2020-04-06 01:42:40');
INSERT INTO `admin_operation_log` VALUES (713, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-06 02:13:31', '2020-04-06 02:13:31');
INSERT INTO `admin_operation_log` VALUES (714, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_selector\":{\"labels\":\"1\"},\"_pjax\":\"#pjax-container\"}', '2020-04-06 02:13:35', '2020-04-06 02:13:35');
INSERT INTO `admin_operation_log` VALUES (715, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 02:13:42', '2020-04-06 02:13:42');
INSERT INTO `admin_operation_log` VALUES (716, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_selector\":{\"labels\":\"1\"}}', '2020-04-06 02:13:43', '2020-04-06 02:13:43');
INSERT INTO `admin_operation_log` VALUES (717, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 02:13:45', '2020-04-06 02:13:45');
INSERT INTO `admin_operation_log` VALUES (718, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 02:13:47', '2020-04-06 02:13:47');
INSERT INTO `admin_operation_log` VALUES (719, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_selector\":{\"labels\":\"2\"}}', '2020-04-06 02:13:54', '2020-04-06 02:13:54');
INSERT INTO `admin_operation_log` VALUES (720, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 02:14:06', '2020-04-06 02:14:06');
INSERT INTO `admin_operation_log` VALUES (721, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-06 02:14:28', '2020-04-06 02:14:28');
INSERT INTO `admin_operation_log` VALUES (722, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_selector\":{\"labels\":{\"content\":\"2\"}},\"_pjax\":\"#pjax-container\"}', '2020-04-06 02:14:29', '2020-04-06 02:14:29');
INSERT INTO `admin_operation_log` VALUES (723, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 02:14:34', '2020-04-06 02:14:34');
INSERT INTO `admin_operation_log` VALUES (724, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 02:15:02', '2020-04-06 02:15:02');
INSERT INTO `admin_operation_log` VALUES (725, 1, 'admin/labels/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 02:15:08', '2020-04-06 02:15:08');
INSERT INTO `admin_operation_log` VALUES (726, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 02:15:11', '2020-04-06 02:15:11');
INSERT INTO `admin_operation_log` VALUES (727, 1, 'admin/labels/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 02:15:13', '2020-04-06 02:15:13');
INSERT INTO `admin_operation_log` VALUES (728, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 02:15:16', '2020-04-06 02:15:16');
INSERT INTO `admin_operation_log` VALUES (729, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 02:15:31', '2020-04-06 02:15:31');
INSERT INTO `admin_operation_log` VALUES (730, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-06 02:36:40', '2020-04-06 02:36:40');
INSERT INTO `admin_operation_log` VALUES (731, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-06 02:36:51', '2020-04-06 02:36:51');
INSERT INTO `admin_operation_log` VALUES (732, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 02:36:54', '2020-04-06 02:36:54');
INSERT INTO `admin_operation_log` VALUES (733, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-06 06:45:52', '2020-04-06 06:45:52');
INSERT INTO `admin_operation_log` VALUES (734, 1, 'admin/articles/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 06:45:54', '2020-04-06 06:45:54');
INSERT INTO `admin_operation_log` VALUES (735, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 06:45:58', '2020-04-06 06:45:58');
INSERT INTO `admin_operation_log` VALUES (736, 1, 'admin/articles/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 06:46:00', '2020-04-06 06:46:00');
INSERT INTO `admin_operation_log` VALUES (737, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 06:46:02', '2020-04-06 06:46:02');
INSERT INTO `admin_operation_log` VALUES (738, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 06:48:04', '2020-04-06 06:48:04');
INSERT INTO `admin_operation_log` VALUES (739, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 07:24:29', '2020-04-06 07:24:29');
INSERT INTO `admin_operation_log` VALUES (740, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 07:24:33', '2020-04-06 07:24:33');
INSERT INTO `admin_operation_log` VALUES (741, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 07:24:34', '2020-04-06 07:24:34');
INSERT INTO `admin_operation_log` VALUES (742, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 07:24:36', '2020-04-06 07:24:36');
INSERT INTO `admin_operation_log` VALUES (743, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 07:26:33', '2020-04-06 07:26:33');
INSERT INTO `admin_operation_log` VALUES (744, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 07:26:34', '2020-04-06 07:26:34');
INSERT INTO `admin_operation_log` VALUES (745, 1, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 08:36:15', '2020-04-06 08:36:15');
INSERT INTO `admin_operation_log` VALUES (746, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 08:36:57', '2020-04-06 08:36:57');
INSERT INTO `admin_operation_log` VALUES (747, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-06 08:37:00', '2020-04-06 08:37:00');
INSERT INTO `admin_operation_log` VALUES (748, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-06 08:37:39', '2020-04-06 08:37:39');
INSERT INTO `admin_operation_log` VALUES (749, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 08:38:56', '2020-04-06 08:38:56');
INSERT INTO `admin_operation_log` VALUES (750, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 08:39:03', '2020-04-06 08:39:03');
INSERT INTO `admin_operation_log` VALUES (751, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 08:39:15', '2020-04-06 08:39:15');
INSERT INTO `admin_operation_log` VALUES (752, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-06 08:39:19', '2020-04-06 08:39:19');
INSERT INTO `admin_operation_log` VALUES (753, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 08:39:24', '2020-04-06 08:39:24');
INSERT INTO `admin_operation_log` VALUES (754, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 08:39:30', '2020-04-06 08:39:30');
INSERT INTO `admin_operation_log` VALUES (755, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 08:39:34', '2020-04-06 08:39:34');
INSERT INTO `admin_operation_log` VALUES (756, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-06 08:39:37', '2020-04-06 08:39:37');
INSERT INTO `admin_operation_log` VALUES (757, 1, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":\"1\",\"user_id\":\"1\",\"level\":\"1\",\"reply_user_id\":\"\\u9ed8\\u8ba4\\u56de\\u590d\\u7528\\u6237\",\"pid\":\"\\u9ed8\\u8ba4\\u7236\\u8282\\u70b9\",\"content\":\"\\u6d4b\\u8bd5\\u8bc4\\u8bba\\u548c\\u6587\\u7ae0\\u7ed1\\u5b9a\\u662f\\u5426\\u6b63\\u5e38\",\"_token\":\"Av1FAeeW4JX7ClSypCnrvRupzkVGieeRLesKDFhS\"}', '2020-04-06 08:40:05', '2020-04-06 08:40:05');
INSERT INTO `admin_operation_log` VALUES (758, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\"}', '2020-04-06 08:40:05', '2020-04-06 08:40:05');
INSERT INTO `admin_operation_log` VALUES (759, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\"}', '2020-04-06 08:40:36', '2020-04-06 08:40:36');
INSERT INTO `admin_operation_log` VALUES (760, 1, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":\"1\",\"user_id\":\"1\",\"level\":\"1\",\"reply_user_id\":\"\\u9ed8\\u8ba4\\u56de\\u590d\\u7528\\u6237\",\"pid\":\"\\u9ed8\\u8ba4\\u7236\\u8282\\u70b9\",\"content\":\"\\u8bc4\\u8bba\\u5b64\\u5c9b\\u60ca\\u9b42\\uff0c\\u6d4b\\u8bd5\\u8bc4\\u8bba\\u548c\\u6587\\u7ae0\\u7ed1\\u5b9a\\u5173\\u7cfb\\u662f\\u5426\\u6b63\\u5e38\",\"_token\":\"Av1FAeeW4JX7ClSypCnrvRupzkVGieeRLesKDFhS\"}', '2020-04-06 08:41:16', '2020-04-06 08:41:16');
INSERT INTO `admin_operation_log` VALUES (761, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\"}', '2020-04-06 08:41:16', '2020-04-06 08:41:16');
INSERT INTO `admin_operation_log` VALUES (762, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\"}', '2020-04-06 08:41:53', '2020-04-06 08:41:53');
INSERT INTO `admin_operation_log` VALUES (763, 1, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":\"1\",\"user_id\":\"1\",\"level\":\"1\",\"reply_user_id\":\"\\u9ed8\\u8ba4\\u56de\\u590d\\u7528\\u6237\",\"pid\":\"\\u9ed8\\u8ba4\\u7236\\u8282\\u70b9\",\"content\":\"\\u8bc4\\u8bba\\u5b64\\u5c9b\\u60ca\\u9b42\\uff0c\\u6d4b\\u8bd5\\u6587\\u7ae0\\u548c\\u8bc4\\u8bba\\u7ed1\\u5b9a\\u662f\\u5426\\u6b63\\u5e38\",\"_token\":\"Av1FAeeW4JX7ClSypCnrvRupzkVGieeRLesKDFhS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/comments\\/create?article_id=1\"}', '2020-04-06 08:42:33', '2020-04-06 08:42:33');
INSERT INTO `admin_operation_log` VALUES (764, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\"}', '2020-04-06 08:42:33', '2020-04-06 08:42:33');
INSERT INTO `admin_operation_log` VALUES (765, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\"}', '2020-04-06 08:43:14', '2020-04-06 08:43:14');
INSERT INTO `admin_operation_log` VALUES (766, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\"}', '2020-04-06 08:44:19', '2020-04-06 08:44:19');
INSERT INTO `admin_operation_log` VALUES (767, 1, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":\"1\",\"user_id\":\"1\",\"level\":\"1\",\"reply_user_id\":\"\\u9ed8\\u8ba4\\u56de\\u590d\\u7528\\u6237\",\"pid\":\"\\u9ed8\\u8ba4\\u7236\\u8282\\u70b9\",\"content\":\"\\u8bc4\\u8bba\\u5b64\\u5c9b\\u60ca\\u9b42\",\"_token\":\"Av1FAeeW4JX7ClSypCnrvRupzkVGieeRLesKDFhS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/comments\\/create?article_id=1\"}', '2020-04-06 08:44:41', '2020-04-06 08:44:41');
INSERT INTO `admin_operation_log` VALUES (768, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\"}', '2020-04-06 08:44:42', '2020-04-06 08:44:42');
INSERT INTO `admin_operation_log` VALUES (769, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\"}', '2020-04-06 08:45:28', '2020-04-06 08:45:28');
INSERT INTO `admin_operation_log` VALUES (770, 1, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":\"1\",\"user_id\":\"1\",\"level\":\"1\",\"reply_user_id\":\"\\u9ed8\\u8ba4\\u56de\\u590d\\u7528\\u6237\",\"pid\":\"\\u9ed8\\u8ba4\\u7236\\u8282\\u70b9\",\"content\":\"\\u8bc4\\u8bba\\u5b64\\u5c9b\\u60ca\\u9b42\",\"_token\":\"Av1FAeeW4JX7ClSypCnrvRupzkVGieeRLesKDFhS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/comments\\/create?article_id=1\"}', '2020-04-06 08:45:44', '2020-04-06 08:45:44');
INSERT INTO `admin_operation_log` VALUES (771, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\"}', '2020-04-06 08:45:44', '2020-04-06 08:45:44');
INSERT INTO `admin_operation_log` VALUES (772, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\"}', '2020-04-06 08:52:18', '2020-04-06 08:52:18');
INSERT INTO `admin_operation_log` VALUES (773, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\"}', '2020-04-06 08:57:28', '2020-04-06 08:57:28');
INSERT INTO `admin_operation_log` VALUES (774, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\"}', '2020-04-06 09:03:11', '2020-04-06 09:03:11');
INSERT INTO `admin_operation_log` VALUES (775, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\"}', '2020-04-06 09:03:52', '2020-04-06 09:03:52');
INSERT INTO `admin_operation_log` VALUES (776, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\"}', '2020-04-06 09:04:44', '2020-04-06 09:04:44');
INSERT INTO `admin_operation_log` VALUES (777, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\"}', '2020-04-06 09:05:02', '2020-04-06 09:05:02');
INSERT INTO `admin_operation_log` VALUES (778, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\"}', '2020-04-06 09:07:40', '2020-04-06 09:07:40');
INSERT INTO `admin_operation_log` VALUES (779, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\"}', '2020-04-06 09:08:31', '2020-04-06 09:08:31');
INSERT INTO `admin_operation_log` VALUES (780, 1, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":\"1\",\"user_id\":\"1\",\"level\":\"1\",\"reply_user_id\":\"\\u9ed8\\u8ba4\\u56de\\u590d\\u7528\\u6237\",\"pid\":\"\\u9ed8\\u8ba4\\u7236\\u8282\\u70b9\",\"content\":\"\\u8bc4\\u8bba\\u5b64\\u5c9b\\u60ca\\u9b42\",\"_token\":\"Av1FAeeW4JX7ClSypCnrvRupzkVGieeRLesKDFhS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/comments\\/create?article_id=1\"}', '2020-04-06 09:08:47', '2020-04-06 09:08:47');
INSERT INTO `admin_operation_log` VALUES (781, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\"}', '2020-04-06 09:08:47', '2020-04-06 09:08:47');
INSERT INTO `admin_operation_log` VALUES (782, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\"}', '2020-04-06 09:09:32', '2020-04-06 09:09:32');
INSERT INTO `admin_operation_log` VALUES (783, 1, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":\"1\",\"user_id\":\"1\",\"level\":\"1\",\"reply_user_id\":\"\\u9ed8\\u8ba4\\u56de\\u590d\\u7528\\u6237\",\"pid\":\"\\u9ed8\\u8ba4\\u7236\\u8282\\u70b9\",\"content\":\"\\u8bc4\\u8bba\\u5b64\\u5c9b\\u60ca\\u9b42\",\"_token\":\"Av1FAeeW4JX7ClSypCnrvRupzkVGieeRLesKDFhS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/comments\\/create?article_id=1\"}', '2020-04-06 09:09:47', '2020-04-06 09:09:47');
INSERT INTO `admin_operation_log` VALUES (784, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\"}', '2020-04-06 09:09:47', '2020-04-06 09:09:47');
INSERT INTO `admin_operation_log` VALUES (785, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\"}', '2020-04-06 09:10:17', '2020-04-06 09:10:17');
INSERT INTO `admin_operation_log` VALUES (786, 1, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":\"1\",\"user_id\":\"1\",\"level\":\"1\",\"reply_user_id\":\"\\u9ed8\\u8ba4\\u56de\\u590d\\u7528\\u6237\",\"pid\":\"\\u9ed8\\u8ba4\\u7236\\u8282\\u70b9\",\"content\":\"\\u8bc4\\u8bba\\u5b64\\u5c9b\\u60ca\\u9b42\",\"_token\":\"Av1FAeeW4JX7ClSypCnrvRupzkVGieeRLesKDFhS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/comments\\/create?article_id=1\"}', '2020-04-06 09:10:33', '2020-04-06 09:10:33');
INSERT INTO `admin_operation_log` VALUES (787, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\"}', '2020-04-06 09:10:33', '2020-04-06 09:10:33');
INSERT INTO `admin_operation_log` VALUES (788, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\"}', '2020-04-06 11:53:31', '2020-04-06 11:53:31');
INSERT INTO `admin_operation_log` VALUES (789, 1, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":\"1\",\"user_id\":\"1\",\"level\":\"2\",\"reply_user_id\":null,\"pid\":\"\\u6d4b\\u8bd5\\u56de\\u590d2\",\"content\":\"\\u7684\\u6cd5\\u5f8b\\u6492\\u5730\\u65b9\",\"_token\":\"3VKt2ei1a67h0vzHb2bg40PwKnIzA5LaMWhXEhcZ\"}', '2020-04-06 11:53:52', '2020-04-06 11:53:52');
INSERT INTO `admin_operation_log` VALUES (790, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\"}', '2020-04-06 11:53:52', '2020-04-06 11:53:52');
INSERT INTO `admin_operation_log` VALUES (791, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-06 11:53:57', '2020-04-06 11:53:57');
INSERT INTO `admin_operation_log` VALUES (792, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-06 11:53:57', '2020-04-06 11:53:57');
INSERT INTO `admin_operation_log` VALUES (793, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-06 11:53:58', '2020-04-06 11:53:58');
INSERT INTO `admin_operation_log` VALUES (794, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 11:54:00', '2020-04-06 11:54:00');
INSERT INTO `admin_operation_log` VALUES (795, 1, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 11:54:05', '2020-04-06 11:54:05');
INSERT INTO `admin_operation_log` VALUES (796, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\",\"_pjax\":\"#pjax-container\"}', '2020-04-06 11:54:11', '2020-04-06 11:54:11');
INSERT INTO `admin_operation_log` VALUES (797, 1, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":\"4\",\"user_id\":\"1\",\"level\":\"1\",\"reply_user_id\":\"\\u9ed8\\u8ba4\\u56de\\u590d\\u7528\\u6237\",\"pid\":\"\\u9ed8\\u8ba4\\u7236\\u8282\\u70b9\",\"content\":\"\\u6d4b\\u8bd5\",\"_token\":\"3VKt2ei1a67h0vzHb2bg40PwKnIzA5LaMWhXEhcZ\"}', '2020-04-06 11:54:23', '2020-04-06 11:54:23');
INSERT INTO `admin_operation_log` VALUES (798, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-06 11:54:23', '2020-04-06 11:54:23');
INSERT INTO `admin_operation_log` VALUES (799, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-06 11:54:44', '2020-04-06 11:54:44');
INSERT INTO `admin_operation_log` VALUES (800, 1, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":\"4\",\"user_id\":\"1\",\"level\":\"2\",\"reply_user_id\":\"\\u8001\\u738b\",\"pid\":\"\\u6d4b\\u8bd5\\u8bc4\\u8bba\",\"content\":\"\\u6d4b\\u8bd5\",\"_token\":\"3VKt2ei1a67h0vzHb2bg40PwKnIzA5LaMWhXEhcZ\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/comments\\/create?article_id=1\"}', '2020-04-06 11:54:53', '2020-04-06 11:54:53');
INSERT INTO `admin_operation_log` VALUES (801, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-06 11:54:53', '2020-04-06 11:54:53');
INSERT INTO `admin_operation_log` VALUES (802, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-06 12:01:47', '2020-04-06 12:01:47');
INSERT INTO `admin_operation_log` VALUES (803, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 12:02:01', '2020-04-06 12:02:01');
INSERT INTO `admin_operation_log` VALUES (804, 3, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-06 12:02:11', '2020-04-06 12:02:11');
INSERT INTO `admin_operation_log` VALUES (805, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 12:02:13', '2020-04-06 12:02:13');
INSERT INTO `admin_operation_log` VALUES (806, 3, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 12:02:18', '2020-04-06 12:02:18');
INSERT INTO `admin_operation_log` VALUES (807, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\",\"_pjax\":\"#pjax-container\"}', '2020-04-06 12:02:21', '2020-04-06 12:02:21');
INSERT INTO `admin_operation_log` VALUES (808, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-06 12:03:21', '2020-04-06 12:03:21');
INSERT INTO `admin_operation_log` VALUES (809, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-06 12:04:25', '2020-04-06 12:04:25');
INSERT INTO `admin_operation_log` VALUES (810, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-06 12:06:47', '2020-04-06 12:06:47');
INSERT INTO `admin_operation_log` VALUES (811, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-06 12:09:18', '2020-04-06 12:09:18');
INSERT INTO `admin_operation_log` VALUES (812, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-06 12:10:35', '2020-04-06 12:10:35');
INSERT INTO `admin_operation_log` VALUES (813, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-06 12:11:46', '2020-04-06 12:11:46');
INSERT INTO `admin_operation_log` VALUES (814, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-06 12:12:27', '2020-04-06 12:12:27');
INSERT INTO `admin_operation_log` VALUES (815, 3, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":\"4\",\"user_id\":\"3\",\"level\":\"1\",\"reply_user_id\":\"0\",\"pid\":\"0\",\"content\":\"\\u6d4b\\u8bd5\",\"_token\":\"md3Q7GsLBoU1Yytn357WRVicAPflrN62YuXtNKIb\"}', '2020-04-06 12:12:38', '2020-04-06 12:12:38');
INSERT INTO `admin_operation_log` VALUES (816, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-06 12:12:38', '2020-04-06 12:12:38');
INSERT INTO `admin_operation_log` VALUES (817, 3, 'admin/comments/10', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 12:12:46', '2020-04-06 12:12:46');
INSERT INTO `admin_operation_log` VALUES (818, 3, 'admin/comments', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 12:12:52', '2020-04-06 12:12:52');
INSERT INTO `admin_operation_log` VALUES (819, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 12:12:54', '2020-04-06 12:12:54');
INSERT INTO `admin_operation_log` VALUES (820, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 12:12:57', '2020-04-06 12:12:57');
INSERT INTO `admin_operation_log` VALUES (821, 3, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 12:13:01', '2020-04-06 12:13:01');
INSERT INTO `admin_operation_log` VALUES (822, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\",\"_pjax\":\"#pjax-container\"}', '2020-04-06 12:13:04', '2020-04-06 12:13:04');
INSERT INTO `admin_operation_log` VALUES (823, 3, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":\"4\",\"user_id\":\"3\",\"level\":\"2\",\"reply_user_id\":\"1\",\"pid\":\"8\",\"content\":\"\\u6d4b\\u8bd5\",\"_token\":\"md3Q7GsLBoU1Yytn357WRVicAPflrN62YuXtNKIb\"}', '2020-04-06 12:13:25', '2020-04-06 12:13:25');
INSERT INTO `admin_operation_log` VALUES (824, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-06 12:13:26', '2020-04-06 12:13:26');
INSERT INTO `admin_operation_log` VALUES (825, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\",\"_pjax\":\"#pjax-container\"}', '2020-04-06 12:19:54', '2020-04-06 12:19:54');
INSERT INTO `admin_operation_log` VALUES (826, 3, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-06 12:20:00', '2020-04-06 12:20:00');
INSERT INTO `admin_operation_log` VALUES (827, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 12:20:02', '2020-04-06 12:20:02');
INSERT INTO `admin_operation_log` VALUES (828, 3, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 12:20:05', '2020-04-06 12:20:05');
INSERT INTO `admin_operation_log` VALUES (829, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-06 12:20:07', '2020-04-06 12:20:07');
INSERT INTO `admin_operation_log` VALUES (830, 3, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 12:20:28', '2020-04-06 12:20:28');
INSERT INTO `admin_operation_log` VALUES (831, 3, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-06 12:21:16', '2020-04-06 12:21:16');
INSERT INTO `admin_operation_log` VALUES (832, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-06 12:21:18', '2020-04-06 12:21:18');
INSERT INTO `admin_operation_log` VALUES (833, 3, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":\"1\",\"user_id\":\"3\",\"level\":\"2\",\"reply_user_id\":\"1\",\"pid\":\"1\",\"content\":\"\\u6d4b\\u8bd5\\u56de\\u590d\\u7528\\u6237\",\"_token\":\"md3Q7GsLBoU1Yytn357WRVicAPflrN62YuXtNKIb\"}', '2020-04-06 12:21:32', '2020-04-06 12:21:32');
INSERT INTO `admin_operation_log` VALUES (834, 3, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-06 12:21:32', '2020-04-06 12:21:32');
INSERT INTO `admin_operation_log` VALUES (835, 3, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-06 12:30:44', '2020-04-06 12:30:44');
INSERT INTO `admin_operation_log` VALUES (836, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 12:30:50', '2020-04-06 12:30:50');
INSERT INTO `admin_operation_log` VALUES (837, 3, 'admin/articles/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 12:31:00', '2020-04-06 12:31:00');
INSERT INTO `admin_operation_log` VALUES (838, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 12:31:03', '2020-04-06 12:31:03');
INSERT INTO `admin_operation_log` VALUES (839, 3, 'admin/articles/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 12:31:06', '2020-04-06 12:31:06');
INSERT INTO `admin_operation_log` VALUES (840, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 12:31:08', '2020-04-06 12:31:08');
INSERT INTO `admin_operation_log` VALUES (841, 3, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 12:31:10', '2020-04-06 12:31:10');
INSERT INTO `admin_operation_log` VALUES (842, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 12:31:18', '2020-04-06 12:31:18');
INSERT INTO `admin_operation_log` VALUES (843, 3, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 12:31:34', '2020-04-06 12:31:34');
INSERT INTO `admin_operation_log` VALUES (844, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-06 12:32:43', '2020-04-06 12:32:43');
INSERT INTO `admin_operation_log` VALUES (845, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-06 12:34:03', '2020-04-06 12:34:03');
INSERT INTO `admin_operation_log` VALUES (846, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 12:34:07', '2020-04-06 12:34:07');
INSERT INTO `admin_operation_log` VALUES (847, 3, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 12:47:19', '2020-04-06 12:47:19');
INSERT INTO `admin_operation_log` VALUES (848, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 12:47:21', '2020-04-06 12:47:21');
INSERT INTO `admin_operation_log` VALUES (849, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 12:47:24', '2020-04-06 12:47:24');
INSERT INTO `admin_operation_log` VALUES (850, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-06 12:47:31', '2020-04-06 12:47:31');
INSERT INTO `admin_operation_log` VALUES (851, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 12:47:33', '2020-04-06 12:47:33');
INSERT INTO `admin_operation_log` VALUES (852, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 12:47:43', '2020-04-06 12:47:43');
INSERT INTO `admin_operation_log` VALUES (853, 1, 'admin/auth/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 12:47:52', '2020-04-06 12:47:52');
INSERT INTO `admin_operation_log` VALUES (854, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 12:48:19', '2020-04-06 12:48:19');
INSERT INTO `admin_operation_log` VALUES (855, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 12:48:38', '2020-04-06 12:48:38');
INSERT INTO `admin_operation_log` VALUES (856, 1, 'admin/auth/users/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-06 12:48:43', '2020-04-06 12:48:43');
INSERT INTO `admin_operation_log` VALUES (857, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-07 02:14:00', '2020-04-07 02:14:00');
INSERT INTO `admin_operation_log` VALUES (858, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:14:25', '2020-04-07 02:14:25');
INSERT INTO `admin_operation_log` VALUES (859, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4e13\\u4e1a\\u7ba1\\u7406\",\"icon\":\"fa-graduation-cap\",\"uri\":\"\\/professions\",\"roles\":[null],\"permission\":null,\"_token\":\"J4em2rEMu10ePcmwjN2tMxVH68SA9iUKgeVV27lr\"}', '2020-04-07 02:15:41', '2020-04-07 02:15:41');
INSERT INTO `admin_operation_log` VALUES (860, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-07 02:15:42', '2020-04-07 02:15:42');
INSERT INTO `admin_operation_log` VALUES (861, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"J4em2rEMu10ePcmwjN2tMxVH68SA9iUKgeVV27lr\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-04-07 02:15:52', '2020-04-07 02:15:52');
INSERT INTO `admin_operation_log` VALUES (862, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:15:52', '2020-04-07 02:15:52');
INSERT INTO `admin_operation_log` VALUES (863, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-07 02:15:53', '2020-04-07 02:15:53');
INSERT INTO `admin_operation_log` VALUES (864, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:15:55', '2020-04-07 02:15:55');
INSERT INTO `admin_operation_log` VALUES (865, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:16:02', '2020-04-07 02:16:02');
INSERT INTO `admin_operation_log` VALUES (866, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u73ed\\u7ea7\\u7ba1\\u7406\",\"icon\":\"fa-male\",\"uri\":\"\\/squads\",\"roles\":[null],\"permission\":null,\"_token\":\"J4em2rEMu10ePcmwjN2tMxVH68SA9iUKgeVV27lr\"}', '2020-04-07 02:17:21', '2020-04-07 02:17:21');
INSERT INTO `admin_operation_log` VALUES (867, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-07 02:17:21', '2020-04-07 02:17:21');
INSERT INTO `admin_operation_log` VALUES (868, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"J4em2rEMu10ePcmwjN2tMxVH68SA9iUKgeVV27lr\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-04-07 02:17:26', '2020-04-07 02:17:26');
INSERT INTO `admin_operation_log` VALUES (869, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:17:26', '2020-04-07 02:17:26');
INSERT INTO `admin_operation_log` VALUES (870, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-07 02:17:27', '2020-04-07 02:17:27');
INSERT INTO `admin_operation_log` VALUES (871, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:17:30', '2020-04-07 02:17:30');
INSERT INTO `admin_operation_log` VALUES (872, 1, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-07 02:19:10', '2020-04-07 02:19:10');
INSERT INTO `admin_operation_log` VALUES (873, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:19:13', '2020-04-07 02:19:13');
INSERT INTO `admin_operation_log` VALUES (874, 1, 'admin/professions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:19:16', '2020-04-07 02:19:16');
INSERT INTO `admin_operation_log` VALUES (875, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:19:18', '2020-04-07 02:19:18');
INSERT INTO `admin_operation_log` VALUES (876, 1, 'admin/professions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:19:21', '2020-04-07 02:19:21');
INSERT INTO `admin_operation_log` VALUES (877, 1, 'admin/professions', 'POST', '127.0.0.1', '{\"full_name\":\"\\u8ba1\\u7b97\\u673a\\u79d1\\u5b66\\u4e0e\\u6280\\u672f\",\"intro\":\"\\u5b87\\u5b99\\u6700\\u725b\\u903c\",\"_token\":\"J4em2rEMu10ePcmwjN2tMxVH68SA9iUKgeVV27lr\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/professions\"}', '2020-04-07 02:19:51', '2020-04-07 02:19:51');
INSERT INTO `admin_operation_log` VALUES (878, 1, 'admin/professions', 'GET', '127.0.0.1', '[]', '2020-04-07 02:19:52', '2020-04-07 02:19:52');
INSERT INTO `admin_operation_log` VALUES (879, 1, 'admin/professions/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:19:55', '2020-04-07 02:19:55');
INSERT INTO `admin_operation_log` VALUES (880, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:19:57', '2020-04-07 02:19:57');
INSERT INTO `admin_operation_log` VALUES (881, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:22:24', '2020-04-07 02:22:24');
INSERT INTO `admin_operation_log` VALUES (882, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:22:26', '2020-04-07 02:22:26');
INSERT INTO `admin_operation_log` VALUES (883, 1, 'admin/squads/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:22:28', '2020-04-07 02:22:28');
INSERT INTO `admin_operation_log` VALUES (884, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:22:30', '2020-04-07 02:22:30');
INSERT INTO `admin_operation_log` VALUES (885, 1, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-07 02:26:25', '2020-04-07 02:26:25');
INSERT INTO `admin_operation_log` VALUES (886, 1, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-07 02:29:13', '2020-04-07 02:29:13');
INSERT INTO `admin_operation_log` VALUES (887, 1, 'admin/squads/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:29:14', '2020-04-07 02:29:14');
INSERT INTO `admin_operation_log` VALUES (888, 1, 'admin/squads', 'POST', '127.0.0.1', '{\"profession_id\":\"1\",\"name\":\"1601\\u73ed\",\"info\":\"\\u5b87\\u5b99\\u6700\\u725b\",\"_token\":\"J4em2rEMu10ePcmwjN2tMxVH68SA9iUKgeVV27lr\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/squads\"}', '2020-04-07 02:29:32', '2020-04-07 02:29:32');
INSERT INTO `admin_operation_log` VALUES (889, 1, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-07 02:29:32', '2020-04-07 02:29:32');
INSERT INTO `admin_operation_log` VALUES (890, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:29:35', '2020-04-07 02:29:35');
INSERT INTO `admin_operation_log` VALUES (891, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:29:37', '2020-04-07 02:29:37');
INSERT INTO `admin_operation_log` VALUES (892, 1, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-07 02:32:35', '2020-04-07 02:32:35');
INSERT INTO `admin_operation_log` VALUES (893, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:32:37', '2020-04-07 02:32:37');
INSERT INTO `admin_operation_log` VALUES (894, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 02:32:52', '2020-04-07 02:32:52');
INSERT INTO `admin_operation_log` VALUES (895, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:32:57', '2020-04-07 02:32:57');
INSERT INTO `admin_operation_log` VALUES (896, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:32:59', '2020-04-07 02:32:59');
INSERT INTO `admin_operation_log` VALUES (897, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:33:01', '2020-04-07 02:33:01');
INSERT INTO `admin_operation_log` VALUES (898, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:33:05', '2020-04-07 02:33:05');
INSERT INTO `admin_operation_log` VALUES (899, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:33:07', '2020-04-07 02:33:07');
INSERT INTO `admin_operation_log` VALUES (900, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:33:08', '2020-04-07 02:33:08');
INSERT INTO `admin_operation_log` VALUES (901, 1, 'admin/professions', 'GET', '127.0.0.1', '[]', '2020-04-07 02:37:37', '2020-04-07 02:37:37');
INSERT INTO `admin_operation_log` VALUES (902, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:37:39', '2020-04-07 02:37:39');
INSERT INTO `admin_operation_log` VALUES (903, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:37:40', '2020-04-07 02:37:40');
INSERT INTO `admin_operation_log` VALUES (904, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 02:38:23', '2020-04-07 02:38:23');
INSERT INTO `admin_operation_log` VALUES (905, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 02:39:08', '2020-04-07 02:39:08');
INSERT INTO `admin_operation_log` VALUES (906, 1, 'admin/squads/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:39:11', '2020-04-07 02:39:11');
INSERT INTO `admin_operation_log` VALUES (907, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:39:13', '2020-04-07 02:39:13');
INSERT INTO `admin_operation_log` VALUES (908, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:39:45', '2020-04-07 02:39:45');
INSERT INTO `admin_operation_log` VALUES (909, 1, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-07 02:40:16', '2020-04-07 02:40:16');
INSERT INTO `admin_operation_log` VALUES (910, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"name\":null,\"profession\":{\"full_name\":\"\\u7684\\u9996\\u53d1\\u5f0f\\u5730\\u65b9\"},\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:40:22', '2020-04-07 02:40:22');
INSERT INTO `admin_operation_log` VALUES (911, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:40:23', '2020-04-07 02:40:23');
INSERT INTO `admin_operation_log` VALUES (912, 1, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-07 02:40:58', '2020-04-07 02:40:58');
INSERT INTO `admin_operation_log` VALUES (913, 1, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-07 02:41:09', '2020-04-07 02:41:09');
INSERT INTO `admin_operation_log` VALUES (914, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:41:20', '2020-04-07 02:41:20');
INSERT INTO `admin_operation_log` VALUES (915, 1, 'admin/labels/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:41:32', '2020-04-07 02:41:32');
INSERT INTO `admin_operation_log` VALUES (916, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:41:36', '2020-04-07 02:41:36');
INSERT INTO `admin_operation_log` VALUES (917, 1, 'admin/labels/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:41:39', '2020-04-07 02:41:39');
INSERT INTO `admin_operation_log` VALUES (918, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:41:42', '2020-04-07 02:41:42');
INSERT INTO `admin_operation_log` VALUES (919, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:41:43', '2020-04-07 02:41:43');
INSERT INTO `admin_operation_log` VALUES (920, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:41:45', '2020-04-07 02:41:45');
INSERT INTO `admin_operation_log` VALUES (921, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:41:46', '2020-04-07 02:41:46');
INSERT INTO `admin_operation_log` VALUES (922, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:41:58', '2020-04-07 02:41:58');
INSERT INTO `admin_operation_log` VALUES (923, 1, 'admin/professions', 'GET', '127.0.0.1', '[]', '2020-04-07 02:42:27', '2020-04-07 02:42:27');
INSERT INTO `admin_operation_log` VALUES (924, 1, 'admin/professions/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:42:32', '2020-04-07 02:42:32');
INSERT INTO `admin_operation_log` VALUES (925, 1, 'admin/professions/1', 'GET', '127.0.0.1', '[]', '2020-04-07 02:43:01', '2020-04-07 02:43:01');
INSERT INTO `admin_operation_log` VALUES (926, 1, 'admin/professions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:43:03', '2020-04-07 02:43:03');
INSERT INTO `admin_operation_log` VALUES (927, 1, 'admin/professions/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-07 02:43:17', '2020-04-07 02:43:17');
INSERT INTO `admin_operation_log` VALUES (928, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:43:22', '2020-04-07 02:43:22');
INSERT INTO `admin_operation_log` VALUES (929, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:43:23', '2020-04-07 02:43:23');
INSERT INTO `admin_operation_log` VALUES (930, 1, 'admin/professions/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:50:34', '2020-04-07 02:50:34');
INSERT INTO `admin_operation_log` VALUES (931, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:50:36', '2020-04-07 02:50:36');
INSERT INTO `admin_operation_log` VALUES (932, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:50:37', '2020-04-07 02:50:37');
INSERT INTO `admin_operation_log` VALUES (933, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:50:39', '2020-04-07 02:50:39');
INSERT INTO `admin_operation_log` VALUES (934, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 02:57:04', '2020-04-07 02:57:04');
INSERT INTO `admin_operation_log` VALUES (935, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 02:59:44', '2020-04-07 02:59:44');
INSERT INTO `admin_operation_log` VALUES (936, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:59:54', '2020-04-07 02:59:54');
INSERT INTO `admin_operation_log` VALUES (937, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:59:55', '2020-04-07 02:59:55');
INSERT INTO `admin_operation_log` VALUES (938, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 02:59:57', '2020-04-07 02:59:57');
INSERT INTO `admin_operation_log` VALUES (939, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 03:00:03', '2020-04-07 03:00:03');
INSERT INTO `admin_operation_log` VALUES (940, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 03:00:04', '2020-04-07 03:00:04');
INSERT INTO `admin_operation_log` VALUES (941, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 03:00:05', '2020-04-07 03:00:05');
INSERT INTO `admin_operation_log` VALUES (942, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 03:01:30', '2020-04-07 03:01:30');
INSERT INTO `admin_operation_log` VALUES (943, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 03:01:40', '2020-04-07 03:01:40');
INSERT INTO `admin_operation_log` VALUES (944, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 03:02:28', '2020-04-07 03:02:28');
INSERT INTO `admin_operation_log` VALUES (945, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 03:02:46', '2020-04-07 03:02:46');
INSERT INTO `admin_operation_log` VALUES (946, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 03:04:05', '2020-04-07 03:04:05');
INSERT INTO `admin_operation_log` VALUES (947, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 03:05:25', '2020-04-07 03:05:25');
INSERT INTO `admin_operation_log` VALUES (948, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 03:05:33', '2020-04-07 03:05:33');
INSERT INTO `admin_operation_log` VALUES (949, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 03:06:30', '2020-04-07 03:06:30');
INSERT INTO `admin_operation_log` VALUES (950, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 03:07:41', '2020-04-07 03:07:41');
INSERT INTO `admin_operation_log` VALUES (951, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-07 03:08:11', '2020-04-07 03:08:11');
INSERT INTO `admin_operation_log` VALUES (952, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-07 03:09:32', '2020-04-07 03:09:32');
INSERT INTO `admin_operation_log` VALUES (953, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 03:09:35', '2020-04-07 03:09:35');
INSERT INTO `admin_operation_log` VALUES (954, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 03:09:36', '2020-04-07 03:09:36');
INSERT INTO `admin_operation_log` VALUES (955, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 03:10:10', '2020-04-07 03:10:10');
INSERT INTO `admin_operation_log` VALUES (956, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 03:10:14', '2020-04-07 03:10:14');
INSERT INTO `admin_operation_log` VALUES (957, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-07 03:10:16', '2020-04-07 03:10:16');
INSERT INTO `admin_operation_log` VALUES (958, 1, 'admin/auth/users/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 03:10:23', '2020-04-07 03:10:23');
INSERT INTO `admin_operation_log` VALUES (959, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 03:10:31', '2020-04-07 03:10:31');
INSERT INTO `admin_operation_log` VALUES (960, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-07 03:11:08', '2020-04-07 03:11:08');
INSERT INTO `admin_operation_log` VALUES (961, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-07 03:11:41', '2020-04-07 03:11:41');
INSERT INTO `admin_operation_log` VALUES (962, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-07 03:12:19', '2020-04-07 03:12:19');
INSERT INTO `admin_operation_log` VALUES (963, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-07 03:12:26', '2020-04-07 03:12:26');
INSERT INTO `admin_operation_log` VALUES (964, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 03:12:57', '2020-04-07 03:12:57');
INSERT INTO `admin_operation_log` VALUES (965, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 03:12:59', '2020-04-07 03:12:59');
INSERT INTO `admin_operation_log` VALUES (966, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 03:13:01', '2020-04-07 03:13:01');
INSERT INTO `admin_operation_log` VALUES (967, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 03:13:03', '2020-04-07 03:13:03');
INSERT INTO `admin_operation_log` VALUES (968, 1, 'admin/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 03:13:05', '2020-04-07 03:13:05');
INSERT INTO `admin_operation_log` VALUES (969, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 03:13:09', '2020-04-07 03:13:09');
INSERT INTO `admin_operation_log` VALUES (970, 1, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 03:13:12', '2020-04-07 03:13:12');
INSERT INTO `admin_operation_log` VALUES (971, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\",\"_pjax\":\"#pjax-container\"}', '2020-04-07 03:13:15', '2020-04-07 03:13:15');
INSERT INTO `admin_operation_log` VALUES (972, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 03:13:27', '2020-04-07 03:13:27');
INSERT INTO `admin_operation_log` VALUES (973, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 03:13:29', '2020-04-07 03:13:29');
INSERT INTO `admin_operation_log` VALUES (974, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 03:13:30', '2020-04-07 03:13:30');
INSERT INTO `admin_operation_log` VALUES (975, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 03:13:31', '2020-04-07 03:13:31');
INSERT INTO `admin_operation_log` VALUES (976, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 03:13:33', '2020-04-07 03:13:33');
INSERT INTO `admin_operation_log` VALUES (977, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-07 03:13:36', '2020-04-07 03:13:36');
INSERT INTO `admin_operation_log` VALUES (978, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 03:13:54', '2020-04-07 03:13:54');
INSERT INTO `admin_operation_log` VALUES (979, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 03:13:54', '2020-04-07 03:13:54');
INSERT INTO `admin_operation_log` VALUES (980, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 03:13:56', '2020-04-07 03:13:56');
INSERT INTO `admin_operation_log` VALUES (981, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 03:14:41', '2020-04-07 03:14:41');
INSERT INTO `admin_operation_log` VALUES (982, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 03:15:09', '2020-04-07 03:15:09');
INSERT INTO `admin_operation_log` VALUES (983, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 07:01:17', '2020-04-07 07:01:17');
INSERT INTO `admin_operation_log` VALUES (984, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 07:02:06', '2020-04-07 07:02:06');
INSERT INTO `admin_operation_log` VALUES (985, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:03:05', '2020-04-07 07:03:05');
INSERT INTO `admin_operation_log` VALUES (986, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:06:03', '2020-04-07 07:06:03');
INSERT INTO `admin_operation_log` VALUES (987, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:06:05', '2020-04-07 07:06:05');
INSERT INTO `admin_operation_log` VALUES (988, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:06:08', '2020-04-07 07:06:08');
INSERT INTO `admin_operation_log` VALUES (989, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:06:30', '2020-04-07 07:06:30');
INSERT INTO `admin_operation_log` VALUES (990, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:06:33', '2020-04-07 07:06:33');
INSERT INTO `admin_operation_log` VALUES (991, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:06:36', '2020-04-07 07:06:36');
INSERT INTO `admin_operation_log` VALUES (992, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:06:38', '2020-04-07 07:06:38');
INSERT INTO `admin_operation_log` VALUES (993, 1, 'admin/articles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:06:41', '2020-04-07 07:06:41');
INSERT INTO `admin_operation_log` VALUES (994, 1, 'admin/articles/2', 'PUT', '127.0.0.1', '{\"user_id\":\"1\",\"title\":\"\\u5492\\u6028\",\"labels\":[\"1\",null],\"intro\":\"\\u8bb2\\u8ff0\\u4e86\\u4e00\\u4e2a\\u53d1\\u751f\\u5728\\u65e5\\u672c\\u7684\\u6050\\u6016\\u6545\\u4e8b\",\"content\":\"```java\\r\\nclass test{\\r\\n\\t\\r\\n}\\r\\n```\",\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/articles\"}', '2020-04-07 07:06:50', '2020-04-07 07:06:50');
INSERT INTO `admin_operation_log` VALUES (995, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-07 07:06:51', '2020-04-07 07:06:51');
INSERT INTO `admin_operation_log` VALUES (996, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:06:58', '2020-04-07 07:06:58');
INSERT INTO `admin_operation_log` VALUES (997, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:07:12', '2020-04-07 07:07:12');
INSERT INTO `admin_operation_log` VALUES (998, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:07:17', '2020-04-07 07:07:17');
INSERT INTO `admin_operation_log` VALUES (999, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-07 07:07:59', '2020-04-07 07:07:59');
INSERT INTO `admin_operation_log` VALUES (1000, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:08:01', '2020-04-07 07:08:01');
INSERT INTO `admin_operation_log` VALUES (1001, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2020-04-07 07:08:25', '2020-04-07 07:08:25');
INSERT INTO `admin_operation_log` VALUES (1002, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2020-04-07 07:09:47', '2020-04-07 07:09:47');
INSERT INTO `admin_operation_log` VALUES (1003, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2020-04-07 07:10:25', '2020-04-07 07:10:25');
INSERT INTO `admin_operation_log` VALUES (1004, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2020-04-07 07:12:41', '2020-04-07 07:12:41');
INSERT INTO `admin_operation_log` VALUES (1005, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2020-04-07 07:13:51', '2020-04-07 07:13:51');
INSERT INTO `admin_operation_log` VALUES (1006, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2020-04-07 07:14:25', '2020-04-07 07:14:25');
INSERT INTO `admin_operation_log` VALUES (1007, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2020-04-07 07:15:08', '2020-04-07 07:15:08');
INSERT INTO `admin_operation_log` VALUES (1008, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2020-04-07 07:16:05', '2020-04-07 07:16:05');
INSERT INTO `admin_operation_log` VALUES (1009, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2020-04-07 07:16:42', '2020-04-07 07:16:42');
INSERT INTO `admin_operation_log` VALUES (1010, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:16:58', '2020-04-07 07:16:58');
INSERT INTO `admin_operation_log` VALUES (1011, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:16:59', '2020-04-07 07:16:59');
INSERT INTO `admin_operation_log` VALUES (1012, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:17:01', '2020-04-07 07:17:01');
INSERT INTO `admin_operation_log` VALUES (1013, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 07:19:23', '2020-04-07 07:19:23');
INSERT INTO `admin_operation_log` VALUES (1014, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:19:25', '2020-04-07 07:19:25');
INSERT INTO `admin_operation_log` VALUES (1015, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:19:32', '2020-04-07 07:19:32');
INSERT INTO `admin_operation_log` VALUES (1016, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:19:38', '2020-04-07 07:19:38');
INSERT INTO `admin_operation_log` VALUES (1017, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:19:44', '2020-04-07 07:19:44');
INSERT INTO `admin_operation_log` VALUES (1018, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 07:20:12', '2020-04-07 07:20:12');
INSERT INTO `admin_operation_log` VALUES (1019, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:20:14', '2020-04-07 07:20:14');
INSERT INTO `admin_operation_log` VALUES (1020, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:20:22', '2020-04-07 07:20:22');
INSERT INTO `admin_operation_log` VALUES (1021, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 07:20:29', '2020-04-07 07:20:29');
INSERT INTO `admin_operation_log` VALUES (1022, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:20:31', '2020-04-07 07:20:31');
INSERT INTO `admin_operation_log` VALUES (1023, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:21:52', '2020-04-07 07:21:52');
INSERT INTO `admin_operation_log` VALUES (1024, 1, 'admin/articles/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:21:55', '2020-04-07 07:21:55');
INSERT INTO `admin_operation_log` VALUES (1025, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:21:58', '2020-04-07 07:21:58');
INSERT INTO `admin_operation_log` VALUES (1026, 1, 'admin/articles/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:22:06', '2020-04-07 07:22:06');
INSERT INTO `admin_operation_log` VALUES (1027, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:45:42', '2020-04-07 07:45:42');
INSERT INTO `admin_operation_log` VALUES (1028, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:45:44', '2020-04-07 07:45:44');
INSERT INTO `admin_operation_log` VALUES (1029, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 07:48:25', '2020-04-07 07:48:25');
INSERT INTO `admin_operation_log` VALUES (1030, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:48:28', '2020-04-07 07:48:28');
INSERT INTO `admin_operation_log` VALUES (1031, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:48:32', '2020-04-07 07:48:32');
INSERT INTO `admin_operation_log` VALUES (1032, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 07:52:00', '2020-04-07 07:52:00');
INSERT INTO `admin_operation_log` VALUES (1033, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:52:02', '2020-04-07 07:52:02');
INSERT INTO `admin_operation_log` VALUES (1034, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:52:05', '2020-04-07 07:52:05');
INSERT INTO `admin_operation_log` VALUES (1035, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 07:53:14', '2020-04-07 07:53:14');
INSERT INTO `admin_operation_log` VALUES (1036, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:53:17', '2020-04-07 07:53:17');
INSERT INTO `admin_operation_log` VALUES (1037, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 07:53:21', '2020-04-07 07:53:21');
INSERT INTO `admin_operation_log` VALUES (1038, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 07:54:44', '2020-04-07 07:54:44');
INSERT INTO `admin_operation_log` VALUES (1039, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 07:55:57', '2020-04-07 07:55:57');
INSERT INTO `admin_operation_log` VALUES (1040, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 07:57:20', '2020-04-07 07:57:20');
INSERT INTO `admin_operation_log` VALUES (1041, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 07:58:16', '2020-04-07 07:58:16');
INSERT INTO `admin_operation_log` VALUES (1042, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 07:59:08', '2020-04-07 07:59:08');
INSERT INTO `admin_operation_log` VALUES (1043, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 07:59:42', '2020-04-07 07:59:42');
INSERT INTO `admin_operation_log` VALUES (1044, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 07:59:54', '2020-04-07 07:59:54');
INSERT INTO `admin_operation_log` VALUES (1045, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 08:02:28', '2020-04-07 08:02:28');
INSERT INTO `admin_operation_log` VALUES (1046, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-07 08:02:34', '2020-04-07 08:02:34');
INSERT INTO `admin_operation_log` VALUES (1047, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 08:02:35', '2020-04-07 08:02:35');
INSERT INTO `admin_operation_log` VALUES (1048, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-07 08:03:56', '2020-04-07 08:03:56');
INSERT INTO `admin_operation_log` VALUES (1049, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\"}', '2020-04-07 08:05:26', '2020-04-07 08:05:26');
INSERT INTO `admin_operation_log` VALUES (1050, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\"}', '2020-04-07 08:05:40', '2020-04-07 08:05:40');
INSERT INTO `admin_operation_log` VALUES (1051, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\"}', '2020-04-07 08:05:49', '2020-04-07 08:05:49');
INSERT INTO `admin_operation_log` VALUES (1052, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\"}', '2020-04-07 08:09:41', '2020-04-07 08:09:41');
INSERT INTO `admin_operation_log` VALUES (1053, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\"}', '2020-04-07 08:10:34', '2020-04-07 08:10:34');
INSERT INTO `admin_operation_log` VALUES (1054, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\"}', '2020-04-07 08:11:52', '2020-04-07 08:11:52');
INSERT INTO `admin_operation_log` VALUES (1055, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\"}', '2020-04-07 08:16:40', '2020-04-07 08:16:40');
INSERT INTO `admin_operation_log` VALUES (1056, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 08:19:23', '2020-04-07 08:19:23');
INSERT INTO `admin_operation_log` VALUES (1057, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 08:19:25', '2020-04-07 08:19:25');
INSERT INTO `admin_operation_log` VALUES (1058, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 08:19:27', '2020-04-07 08:19:27');
INSERT INTO `admin_operation_log` VALUES (1059, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-07 08:19:38', '2020-04-07 08:19:38');
INSERT INTO `admin_operation_log` VALUES (1060, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\"}', '2020-04-07 08:20:25', '2020-04-07 08:20:25');
INSERT INTO `admin_operation_log` VALUES (1061, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\"}', '2020-04-07 08:21:12', '2020-04-07 08:21:12');
INSERT INTO `admin_operation_log` VALUES (1062, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\"}', '2020-04-07 08:26:14', '2020-04-07 08:26:14');
INSERT INTO `admin_operation_log` VALUES (1063, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\"}', '2020-04-07 08:26:41', '2020-04-07 08:26:41');
INSERT INTO `admin_operation_log` VALUES (1064, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\"}', '2020-04-07 08:26:55', '2020-04-07 08:26:55');
INSERT INTO `admin_operation_log` VALUES (1065, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\"}', '2020-04-07 08:27:19', '2020-04-07 08:27:19');
INSERT INTO `admin_operation_log` VALUES (1066, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\"}', '2020-04-07 08:27:30', '2020-04-07 08:27:30');
INSERT INTO `admin_operation_log` VALUES (1067, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\"}', '2020-04-07 08:38:38', '2020-04-07 08:38:38');
INSERT INTO `admin_operation_log` VALUES (1068, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\"}', '2020-04-07 08:39:00', '2020-04-07 08:39:00');
INSERT INTO `admin_operation_log` VALUES (1069, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\"}', '2020-04-07 08:39:34', '2020-04-07 08:39:34');
INSERT INTO `admin_operation_log` VALUES (1070, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\"}', '2020-04-07 09:01:47', '2020-04-07 09:01:47');
INSERT INTO `admin_operation_log` VALUES (1071, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\"}', '2020-04-07 09:05:01', '2020-04-07 09:05:01');
INSERT INTO `admin_operation_log` VALUES (1072, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\"}', '2020-04-07 09:05:21', '2020-04-07 09:05:21');
INSERT INTO `admin_operation_log` VALUES (1073, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:05:34', '2020-04-07 09:05:34');
INSERT INTO `admin_operation_log` VALUES (1074, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:05:37', '2020-04-07 09:05:37');
INSERT INTO `admin_operation_log` VALUES (1075, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"stu2\",\"name\":\"\\u8001\\u88f4\",\"password\":\"123456\",\"password_confirmation\":\"123456\",\"roles\":[\"3\",null],\"permissions\":[null],\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/users\"}', '2020-04-07 09:06:03', '2020-04-07 09:06:03');
INSERT INTO `admin_operation_log` VALUES (1076, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-07 09:06:04', '2020-04-07 09:06:04');
INSERT INTO `admin_operation_log` VALUES (1077, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:06:08', '2020-04-07 09:06:08');
INSERT INTO `admin_operation_log` VALUES (1078, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:06:09', '2020-04-07 09:06:09');
INSERT INTO `admin_operation_log` VALUES (1079, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:06:11', '2020-04-07 09:06:11');
INSERT INTO `admin_operation_log` VALUES (1080, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\"}', '2020-04-07 09:06:19', '2020-04-07 09:06:19');
INSERT INTO `admin_operation_log` VALUES (1081, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:06:59', '2020-04-07 09:06:59');
INSERT INTO `admin_operation_log` VALUES (1082, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:07:01', '2020-04-07 09:07:01');
INSERT INTO `admin_operation_log` VALUES (1083, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"stu3\",\"name\":\"\\u8001\\u5434\",\"password\":\"123456\",\"password_confirmation\":\"123456\",\"roles\":[\"3\",null],\"permissions\":[null],\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/users\"}', '2020-04-07 09:07:23', '2020-04-07 09:07:23');
INSERT INTO `admin_operation_log` VALUES (1084, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-07 09:07:24', '2020-04-07 09:07:24');
INSERT INTO `admin_operation_log` VALUES (1085, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:07:26', '2020-04-07 09:07:26');
INSERT INTO `admin_operation_log` VALUES (1086, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"stu4\",\"name\":\"\\u8001\\u66f9\",\"password\":\"123456\",\"password_confirmation\":\"123456\",\"roles\":[\"3\",null],\"permissions\":[null],\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/users\"}', '2020-04-07 09:08:11', '2020-04-07 09:08:11');
INSERT INTO `admin_operation_log` VALUES (1087, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-07 09:08:11', '2020-04-07 09:08:11');
INSERT INTO `admin_operation_log` VALUES (1088, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:08:15', '2020-04-07 09:08:15');
INSERT INTO `admin_operation_log` VALUES (1089, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:08:16', '2020-04-07 09:08:16');
INSERT INTO `admin_operation_log` VALUES (1090, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:08:18', '2020-04-07 09:08:18');
INSERT INTO `admin_operation_log` VALUES (1091, 1, 'admin/student-squads', 'POST', '127.0.0.1', '{\"squad_id\":\"1\",\"student_id\":[\"5\",\"6\",null],\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\"}', '2020-04-07 09:08:30', '2020-04-07 09:08:30');
INSERT INTO `admin_operation_log` VALUES (1092, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\"}', '2020-04-07 09:08:30', '2020-04-07 09:08:30');
INSERT INTO `admin_operation_log` VALUES (1093, 1, 'admin/student-squads', 'POST', '127.0.0.1', '{\"squad_id\":\"1\",\"student_id\":[\"5\",null],\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/student-squads\\/create?squad_id=1\"}', '2020-04-07 09:09:21', '2020-04-07 09:09:21');
INSERT INTO `admin_operation_log` VALUES (1094, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\"}', '2020-04-07 09:09:22', '2020-04-07 09:09:22');
INSERT INTO `admin_operation_log` VALUES (1095, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:09:27', '2020-04-07 09:09:27');
INSERT INTO `admin_operation_log` VALUES (1096, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:09:28', '2020-04-07 09:09:28');
INSERT INTO `admin_operation_log` VALUES (1097, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:09:30', '2020-04-07 09:09:30');
INSERT INTO `admin_operation_log` VALUES (1098, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\"}', '2020-04-07 09:09:45', '2020-04-07 09:09:45');
INSERT INTO `admin_operation_log` VALUES (1099, 1, 'admin/student-squads', 'POST', '127.0.0.1', '{\"squad_id\":\"1\",\"student_id\":\"5\",\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\"}', '2020-04-07 09:09:55', '2020-04-07 09:09:55');
INSERT INTO `admin_operation_log` VALUES (1100, 1, 'admin/student-squads', 'GET', '127.0.0.1', '[]', '2020-04-07 09:09:55', '2020-04-07 09:09:55');
INSERT INTO `admin_operation_log` VALUES (1101, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:10:00', '2020-04-07 09:10:00');
INSERT INTO `admin_operation_log` VALUES (1102, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:10:02', '2020-04-07 09:10:02');
INSERT INTO `admin_operation_log` VALUES (1103, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 09:10:54', '2020-04-07 09:10:54');
INSERT INTO `admin_operation_log` VALUES (1104, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:10:57', '2020-04-07 09:10:57');
INSERT INTO `admin_operation_log` VALUES (1105, 1, 'admin/student-squads', 'POST', '127.0.0.1', '{\"squad_id\":\"1\",\"student_id\":\"6\",\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\"}', '2020-04-07 09:11:00', '2020-04-07 09:11:00');
INSERT INTO `admin_operation_log` VALUES (1106, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 09:11:00', '2020-04-07 09:11:00');
INSERT INTO `admin_operation_log` VALUES (1107, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:11:19', '2020-04-07 09:11:19');
INSERT INTO `admin_operation_log` VALUES (1108, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\"}', '2020-04-07 09:11:39', '2020-04-07 09:11:39');
INSERT INTO `admin_operation_log` VALUES (1109, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:11:42', '2020-04-07 09:11:42');
INSERT INTO `admin_operation_log` VALUES (1110, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:11:54', '2020-04-07 09:11:54');
INSERT INTO `admin_operation_log` VALUES (1111, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\"}', '2020-04-07 09:12:07', '2020-04-07 09:12:07');
INSERT INTO `admin_operation_log` VALUES (1112, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:12:11', '2020-04-07 09:12:11');
INSERT INTO `admin_operation_log` VALUES (1113, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:12:17', '2020-04-07 09:12:17');
INSERT INTO `admin_operation_log` VALUES (1114, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:12:18', '2020-04-07 09:12:18');
INSERT INTO `admin_operation_log` VALUES (1115, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:12:21', '2020-04-07 09:12:21');
INSERT INTO `admin_operation_log` VALUES (1116, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:12:22', '2020-04-07 09:12:22');
INSERT INTO `admin_operation_log` VALUES (1117, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:14:21', '2020-04-07 09:14:21');
INSERT INTO `admin_operation_log` VALUES (1118, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:14:32', '2020-04-07 09:14:32');
INSERT INTO `admin_operation_log` VALUES (1119, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:14:42', '2020-04-07 09:14:42');
INSERT INTO `admin_operation_log` VALUES (1120, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:17:21', '2020-04-07 09:17:21');
INSERT INTO `admin_operation_log` VALUES (1121, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8bba\\u575b\",\"icon\":\"fa-comments\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\"}', '2020-04-07 09:18:59', '2020-04-07 09:18:59');
INSERT INTO `admin_operation_log` VALUES (1122, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-07 09:18:59', '2020-04-07 09:18:59');
INSERT INTO `admin_operation_log` VALUES (1123, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":13},{\\\"id\\\":8},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-04-07 09:19:05', '2020-04-07 09:19:05');
INSERT INTO `admin_operation_log` VALUES (1124, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:19:06', '2020-04-07 09:19:06');
INSERT INTO `admin_operation_log` VALUES (1125, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:19:08', '2020-04-07 09:19:08');
INSERT INTO `admin_operation_log` VALUES (1126, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"13\",\"title\":\"\\u535a\\u6587\\u968f\\u7b14\",\"icon\":\"fa-book\",\"uri\":\"\\/articles\",\"roles\":[null],\"permission\":null,\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-07 09:19:16', '2020-04-07 09:19:16');
INSERT INTO `admin_operation_log` VALUES (1127, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-07 09:19:16', '2020-04-07 09:19:16');
INSERT INTO `admin_operation_log` VALUES (1128, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:19:19', '2020-04-07 09:19:19');
INSERT INTO `admin_operation_log` VALUES (1129, 1, 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"13\",\"title\":\"\\u6807\\u7b7e\\u7ba1\\u7406\",\"icon\":\"fa-bookmark-o\",\"uri\":\"\\/labels\",\"roles\":[null],\"permission\":null,\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-07 09:19:22', '2020-04-07 09:19:22');
INSERT INTO `admin_operation_log` VALUES (1130, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-07 09:19:23', '2020-04-07 09:19:23');
INSERT INTO `admin_operation_log` VALUES (1131, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8bfe\\u7a0b\\u5efa\\u8bbe\",\"icon\":\"fa-th-large\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\"}', '2020-04-07 09:20:31', '2020-04-07 09:20:31');
INSERT INTO `admin_operation_log` VALUES (1132, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-07 09:20:31', '2020-04-07 09:20:31');
INSERT INTO `admin_operation_log` VALUES (1133, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":14},{\\\"id\\\":13,\\\"children\\\":[{\\\"id\\\":8},{\\\"id\\\":10}]},{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-04-07 09:20:37', '2020-04-07 09:20:37');
INSERT INTO `admin_operation_log` VALUES (1134, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:20:37', '2020-04-07 09:20:37');
INSERT INTO `admin_operation_log` VALUES (1135, 1, 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:20:40', '2020-04-07 09:20:40');
INSERT INTO `admin_operation_log` VALUES (1136, 1, 'admin/auth/menu/11', 'PUT', '127.0.0.1', '{\"parent_id\":\"14\",\"title\":\"\\u4e13\\u4e1a\\u7ba1\\u7406\",\"icon\":\"fa-graduation-cap\",\"uri\":\"\\/professions\",\"roles\":[null],\"permission\":null,\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-07 09:20:44', '2020-04-07 09:20:44');
INSERT INTO `admin_operation_log` VALUES (1137, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-07 09:20:44', '2020-04-07 09:20:44');
INSERT INTO `admin_operation_log` VALUES (1138, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:20:47', '2020-04-07 09:20:47');
INSERT INTO `admin_operation_log` VALUES (1139, 1, 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{\"parent_id\":\"14\",\"title\":\"\\u73ed\\u7ea7\\u7ba1\\u7406\",\"icon\":\"fa-male\",\"uri\":\"\\/squads\",\"roles\":[null],\"permission\":null,\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-07 09:20:50', '2020-04-07 09:20:50');
INSERT INTO `admin_operation_log` VALUES (1140, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-07 09:20:51', '2020-04-07 09:20:51');
INSERT INTO `admin_operation_log` VALUES (1141, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-07 09:20:53', '2020-04-07 09:20:53');
INSERT INTO `admin_operation_log` VALUES (1142, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:20:57', '2020-04-07 09:20:57');
INSERT INTO `admin_operation_log` VALUES (1143, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:21:00', '2020-04-07 09:21:00');
INSERT INTO `admin_operation_log` VALUES (1144, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:21:07', '2020-04-07 09:21:07');
INSERT INTO `admin_operation_log` VALUES (1145, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 09:21:09', '2020-04-07 09:21:09');
INSERT INTO `admin_operation_log` VALUES (1146, 1, 'admin/professions', 'GET', '127.0.0.1', '[]', '2020-04-07 10:25:29', '2020-04-07 10:25:29');
INSERT INTO `admin_operation_log` VALUES (1147, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 10:25:34', '2020-04-07 10:25:34');
INSERT INTO `admin_operation_log` VALUES (1148, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 10:25:38', '2020-04-07 10:25:38');
INSERT INTO `admin_operation_log` VALUES (1149, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 10:25:39', '2020-04-07 10:25:39');
INSERT INTO `admin_operation_log` VALUES (1150, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 10:25:43', '2020-04-07 10:25:43');
INSERT INTO `admin_operation_log` VALUES (1151, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-07 10:25:56', '2020-04-07 10:25:56');
INSERT INTO `admin_operation_log` VALUES (1152, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 10:25:57', '2020-04-07 10:25:57');
INSERT INTO `admin_operation_log` VALUES (1153, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 10:26:02', '2020-04-07 10:26:02');
INSERT INTO `admin_operation_log` VALUES (1154, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 10:26:05', '2020-04-07 10:26:05');
INSERT INTO `admin_operation_log` VALUES (1155, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 10:26:08', '2020-04-07 10:26:08');
INSERT INTO `admin_operation_log` VALUES (1156, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 10:27:34', '2020-04-07 10:27:34');
INSERT INTO `admin_operation_log` VALUES (1157, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 10:27:37', '2020-04-07 10:27:37');
INSERT INTO `admin_operation_log` VALUES (1158, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-07 10:27:44', '2020-04-07 10:27:44');
INSERT INTO `admin_operation_log` VALUES (1159, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-07 11:53:00', '2020-04-07 11:53:00');
INSERT INTO `admin_operation_log` VALUES (1160, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-07 11:53:31', '2020-04-07 11:53:31');
INSERT INTO `admin_operation_log` VALUES (1161, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-07 11:53:47', '2020-04-07 11:53:47');
INSERT INTO `admin_operation_log` VALUES (1162, 1, 'admin/auth/users/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 11:54:06', '2020-04-07 11:54:06');
INSERT INTO `admin_operation_log` VALUES (1163, 1, 'admin/auth/users/9', 'PUT', '127.0.0.1', '{\"username\":\"stu6\",\"name\":\"\\u8001\\u6768\",\"password\":\"$2y$10$2N3sEP.k0wDMJkewZVVz8.p6E1gq27xsCjyT9ZAmfNXHbwKLZrsua\",\"password_confirmation\":\"$2y$10$2N3sEP.k0wDMJkewZVVz8.p6E1gq27xsCjyT9ZAmfNXHbwKLZrsua\",\"roles\":[\"3\",null],\"permissions\":[null],\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/users\"}', '2020-04-07 11:54:12', '2020-04-07 11:54:12');
INSERT INTO `admin_operation_log` VALUES (1164, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-07 11:54:12', '2020-04-07 11:54:12');
INSERT INTO `admin_operation_log` VALUES (1165, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-07 11:54:37', '2020-04-07 11:54:37');
INSERT INTO `admin_operation_log` VALUES (1166, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-07 11:55:07', '2020-04-07 11:55:07');
INSERT INTO `admin_operation_log` VALUES (1167, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-07 11:57:15', '2020-04-07 11:57:15');
INSERT INTO `admin_operation_log` VALUES (1168, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-07 11:57:20', '2020-04-07 11:57:20');
INSERT INTO `admin_operation_log` VALUES (1169, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 11:57:26', '2020-04-07 11:57:26');
INSERT INTO `admin_operation_log` VALUES (1170, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 11:57:28', '2020-04-07 11:57:28');
INSERT INTO `admin_operation_log` VALUES (1171, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 11:57:38', '2020-04-07 11:57:38');
INSERT INTO `admin_operation_log` VALUES (1172, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 11:57:44', '2020-04-07 11:57:44');
INSERT INTO `admin_operation_log` VALUES (1173, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 11:58:01', '2020-04-07 11:58:01');
INSERT INTO `admin_operation_log` VALUES (1174, 1, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-07 11:58:47', '2020-04-07 11:58:47');
INSERT INTO `admin_operation_log` VALUES (1175, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 11:58:49', '2020-04-07 11:58:49');
INSERT INTO `admin_operation_log` VALUES (1176, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 11:59:06', '2020-04-07 11:59:06');
INSERT INTO `admin_operation_log` VALUES (1177, 1, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-07 11:59:07', '2020-04-07 11:59:07');
INSERT INTO `admin_operation_log` VALUES (1178, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 12:00:01', '2020-04-07 12:00:01');
INSERT INTO `admin_operation_log` VALUES (1179, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-07 12:00:08', '2020-04-07 12:00:08');
INSERT INTO `admin_operation_log` VALUES (1180, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-07 12:01:34', '2020-04-07 12:01:34');
INSERT INTO `admin_operation_log` VALUES (1181, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-07 12:02:26', '2020-04-07 12:02:26');
INSERT INTO `admin_operation_log` VALUES (1182, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-07 12:02:32', '2020-04-07 12:02:32');
INSERT INTO `admin_operation_log` VALUES (1183, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-07 12:02:41', '2020-04-07 12:02:41');
INSERT INTO `admin_operation_log` VALUES (1184, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-07 12:02:47', '2020-04-07 12:02:47');
INSERT INTO `admin_operation_log` VALUES (1185, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 12:02:48', '2020-04-07 12:02:48');
INSERT INTO `admin_operation_log` VALUES (1186, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 12:02:51', '2020-04-07 12:02:51');
INSERT INTO `admin_operation_log` VALUES (1187, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 12:02:52', '2020-04-07 12:02:52');
INSERT INTO `admin_operation_log` VALUES (1188, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 12:02:55', '2020-04-07 12:02:55');
INSERT INTO `admin_operation_log` VALUES (1189, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 12:03:32', '2020-04-07 12:03:32');
INSERT INTO `admin_operation_log` VALUES (1190, 1, 'admin/auth/users/9', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 12:03:35', '2020-04-07 12:03:35');
INSERT INTO `admin_operation_log` VALUES (1191, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 12:03:44', '2020-04-07 12:03:44');
INSERT INTO `admin_operation_log` VALUES (1192, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 12:03:58', '2020-04-07 12:03:58');
INSERT INTO `admin_operation_log` VALUES (1193, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 12:03:59', '2020-04-07 12:03:59');
INSERT INTO `admin_operation_log` VALUES (1194, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-07 12:06:27', '2020-04-07 12:06:27');
INSERT INTO `admin_operation_log` VALUES (1195, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 12:10:44', '2020-04-07 12:10:44');
INSERT INTO `admin_operation_log` VALUES (1196, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-07 12:10:45', '2020-04-07 12:10:45');
INSERT INTO `admin_operation_log` VALUES (1197, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-07 12:10:51', '2020-04-07 12:10:51');
INSERT INTO `admin_operation_log` VALUES (1198, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 12:10:52', '2020-04-07 12:10:52');
INSERT INTO `admin_operation_log` VALUES (1199, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 12:11:02', '2020-04-07 12:11:02');
INSERT INTO `admin_operation_log` VALUES (1200, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 12:11:04', '2020-04-07 12:11:04');
INSERT INTO `admin_operation_log` VALUES (1201, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 12:19:18', '2020-04-07 12:19:18');
INSERT INTO `admin_operation_log` VALUES (1202, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-07 12:20:19', '2020-04-07 12:20:19');
INSERT INTO `admin_operation_log` VALUES (1203, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 12:20:34', '2020-04-07 12:20:34');
INSERT INTO `admin_operation_log` VALUES (1204, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 12:20:38', '2020-04-07 12:20:38');
INSERT INTO `admin_operation_log` VALUES (1205, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 12:22:03', '2020-04-07 12:22:03');
INSERT INTO `admin_operation_log` VALUES (1206, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 12:24:29', '2020-04-07 12:24:29');
INSERT INTO `admin_operation_log` VALUES (1207, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 12:24:35', '2020-04-07 12:24:35');
INSERT INTO `admin_operation_log` VALUES (1208, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 12:24:36', '2020-04-07 12:24:36');
INSERT INTO `admin_operation_log` VALUES (1209, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 12:24:38', '2020-04-07 12:24:38');
INSERT INTO `admin_operation_log` VALUES (1210, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 12:24:55', '2020-04-07 12:24:55');
INSERT INTO `admin_operation_log` VALUES (1211, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 13:42:12', '2020-04-07 13:42:12');
INSERT INTO `admin_operation_log` VALUES (1212, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"14\",\"title\":\"\\u8bfe\\u7a0b\\u7ba1\\u7406\",\"icon\":\"fa-calendar\",\"uri\":\"\\/courses\",\"roles\":[null],\"permission\":null,\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\"}', '2020-04-07 13:43:23', '2020-04-07 13:43:23');
INSERT INTO `admin_operation_log` VALUES (1213, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-07 13:43:23', '2020-04-07 13:43:23');
INSERT INTO `admin_operation_log` VALUES (1214, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7cfb\\u7edf\\u5e38\\u91cf\",\"icon\":\"fa-yelp\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\"}', '2020-04-07 13:43:53', '2020-04-07 13:43:53');
INSERT INTO `admin_operation_log` VALUES (1215, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-07 13:43:53', '2020-04-07 13:43:53');
INSERT INTO `admin_operation_log` VALUES (1216, 1, 'admin/auth/menu/16/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 13:44:26', '2020-04-07 13:44:26');
INSERT INTO `admin_operation_log` VALUES (1217, 1, 'admin/auth/menu/16', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5e38\\u91cf\\u7ba1\\u7406\",\"icon\":\"fa-yelp\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-07 13:44:34', '2020-04-07 13:44:34');
INSERT INTO `admin_operation_log` VALUES (1218, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-07 13:44:34', '2020-04-07 13:44:34');
INSERT INTO `admin_operation_log` VALUES (1219, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":14,\\\"children\\\":[{\\\"id\\\":15},{\\\"id\\\":11},{\\\"id\\\":12}]},{\\\"id\\\":13,\\\"children\\\":[{\\\"id\\\":8},{\\\"id\\\":10}]},{\\\"id\\\":16},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-04-07 13:44:44', '2020-04-07 13:44:44');
INSERT INTO `admin_operation_log` VALUES (1220, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 13:44:44', '2020-04-07 13:44:44');
INSERT INTO `admin_operation_log` VALUES (1221, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8bfe\\u7a0b\\u7c7b\\u578b\\u7ba1\\u7406\",\"icon\":\"fa-y-combinator\",\"uri\":\"\\/course-type-constants\",\"roles\":[null],\"permission\":null,\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\"}', '2020-04-07 13:45:39', '2020-04-07 13:45:39');
INSERT INTO `admin_operation_log` VALUES (1222, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-07 13:45:40', '2020-04-07 13:45:40');
INSERT INTO `admin_operation_log` VALUES (1223, 1, 'admin/auth/menu/17/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 13:45:43', '2020-04-07 13:45:43');
INSERT INTO `admin_operation_log` VALUES (1224, 1, 'admin/auth/menu/17', 'PUT', '127.0.0.1', '{\"parent_id\":\"16\",\"title\":\"\\u8bfe\\u7a0b\\u7c7b\\u578b\\u7ba1\\u7406\",\"icon\":\"fa-y-combinator\",\"uri\":\"\\/course-type-constants\",\"roles\":[null],\"permission\":null,\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-07 13:45:48', '2020-04-07 13:45:48');
INSERT INTO `admin_operation_log` VALUES (1225, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-07 13:45:49', '2020-04-07 13:45:49');
INSERT INTO `admin_operation_log` VALUES (1226, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-07 13:46:10', '2020-04-07 13:46:10');
INSERT INTO `admin_operation_log` VALUES (1227, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 13:46:16', '2020-04-07 13:46:16');
INSERT INTO `admin_operation_log` VALUES (1228, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2020-04-07 13:53:33', '2020-04-07 13:53:33');
INSERT INTO `admin_operation_log` VALUES (1229, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2020-04-07 13:55:34', '2020-04-07 13:55:34');
INSERT INTO `admin_operation_log` VALUES (1230, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 13:55:39', '2020-04-07 13:55:39');
INSERT INTO `admin_operation_log` VALUES (1231, 1, 'admin/courses', 'POST', '127.0.0.1', '{\"full_name\":\"\\u8ba1\\u7b97\\u673a\\u7f51\\u7edc\",\"attribute\":\"\\u5fc5\\u4fee\",\"credit\":\"2\",\"courses_type_id\":\"1\",\"location\":\"\\u4e09\\u53f7\\u6559\\u5b66\\u697c210\\u5ba4\",\"Schedule_text\":\"1~15\\u5468\\uff0c\\u5468\\u4e8c\\u4e0a\\u5348\\u7b2c\\u4e8c\\u5927\\u8282\\u3001\\u5468\\u56db\\u4e0b\\u5348\\u7b2c\\u4e00\\u5927\\u8282\",\"Schedule_image\":null,\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/courses\"}', '2020-04-07 13:58:28', '2020-04-07 13:58:28');
INSERT INTO `admin_operation_log` VALUES (1232, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2020-04-07 13:58:29', '2020-04-07 13:58:29');
INSERT INTO `admin_operation_log` VALUES (1233, 1, 'admin/courses', 'POST', '127.0.0.1', '{\"full_name\":\"\\u8ba1\\u7b97\\u673a\\u7f51\\u7edc\",\"attribute\":\"\\u5fc5\\u4fee\",\"credit\":\"2\",\"courses_type_id\":\"1\",\"location\":\"\\u4e09\\u53f7\\u6559\\u5b66\\u697c210\\u5ba4\",\"Schedule_text\":\"1~15\\u5468\\uff0c\\u5468\\u4e8c\\u4e0a\\u5348\\u7b2c\\u4e8c\\u5927\\u8282\\u3001\\u5468\\u56db\\u4e0b\\u5348\\u7b2c\\u4e00\\u5927\\u8282\",\"Schedule_image\":null,\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\"}', '2020-04-07 13:59:40', '2020-04-07 13:59:40');
INSERT INTO `admin_operation_log` VALUES (1234, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2020-04-07 13:59:40', '2020-04-07 13:59:40');
INSERT INTO `admin_operation_log` VALUES (1235, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2020-04-07 14:00:11', '2020-04-07 14:00:11');
INSERT INTO `admin_operation_log` VALUES (1236, 1, 'admin/course-type-constants', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:02:55', '2020-04-07 14:02:55');
INSERT INTO `admin_operation_log` VALUES (1237, 1, 'admin/course-type-constants/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:02:58', '2020-04-07 14:02:58');
INSERT INTO `admin_operation_log` VALUES (1238, 1, 'admin/course-type-constants', 'POST', '127.0.0.1', '{\"name\":\"\\u666e\\u901a\\u578b\",\"intro\":\"\\u53ea\\u6709\\u8bfe\\u5802\\u8bb2\\u6388\\uff0c\\u65e0\\u5b9e\\u9a8c\\u3001\\u5b9e\\u8df5\\u7b49\\u5176\\u4ed6\\u8bfe\\u7a0b\\u73af\\u8282\\uff0c\\u671f\\u672b\\u8003\\u8bd5\\u8bfe\\u7a0b\",\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/course-type-constants\"}', '2020-04-07 14:05:19', '2020-04-07 14:05:19');
INSERT INTO `admin_operation_log` VALUES (1239, 1, 'admin/course-type-constants', 'GET', '127.0.0.1', '[]', '2020-04-07 14:05:19', '2020-04-07 14:05:19');
INSERT INTO `admin_operation_log` VALUES (1240, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:05:25', '2020-04-07 14:05:25');
INSERT INTO `admin_operation_log` VALUES (1241, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2020-04-07 14:05:28', '2020-04-07 14:05:28');
INSERT INTO `admin_operation_log` VALUES (1242, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2020-04-07 14:07:40', '2020-04-07 14:07:40');
INSERT INTO `admin_operation_log` VALUES (1243, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2020-04-07 14:08:01', '2020-04-07 14:08:01');
INSERT INTO `admin_operation_log` VALUES (1244, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2020-04-07 14:08:14', '2020-04-07 14:08:14');
INSERT INTO `admin_operation_log` VALUES (1245, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2020-04-07 14:08:28', '2020-04-07 14:08:28');
INSERT INTO `admin_operation_log` VALUES (1246, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:08:55', '2020-04-07 14:08:55');
INSERT INTO `admin_operation_log` VALUES (1247, 1, 'admin/courses/1', 'GET', '127.0.0.1', '[]', '2020-04-07 14:11:19', '2020-04-07 14:11:19');
INSERT INTO `admin_operation_log` VALUES (1248, 1, 'admin/courses/1', 'GET', '127.0.0.1', '[]', '2020-04-07 14:11:34', '2020-04-07 14:11:34');
INSERT INTO `admin_operation_log` VALUES (1249, 1, 'admin/courses/1', 'GET', '127.0.0.1', '[]', '2020-04-07 14:12:07', '2020-04-07 14:12:07');
INSERT INTO `admin_operation_log` VALUES (1250, 1, 'admin/courses/1', 'GET', '127.0.0.1', '[]', '2020-04-07 14:12:19', '2020-04-07 14:12:19');
INSERT INTO `admin_operation_log` VALUES (1251, 1, 'admin/courses/1', 'GET', '127.0.0.1', '[]', '2020-04-07 14:12:39', '2020-04-07 14:12:39');
INSERT INTO `admin_operation_log` VALUES (1252, 1, 'admin/courses/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:13:30', '2020-04-07 14:13:30');
INSERT INTO `admin_operation_log` VALUES (1253, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:13:33', '2020-04-07 14:13:33');
INSERT INTO `admin_operation_log` VALUES (1254, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:13:45', '2020-04-07 14:13:45');
INSERT INTO `admin_operation_log` VALUES (1255, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:13:48', '2020-04-07 14:13:48');
INSERT INTO `admin_operation_log` VALUES (1256, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-07 14:14:08', '2020-04-07 14:14:08');
INSERT INTO `admin_operation_log` VALUES (1257, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:14:11', '2020-04-07 14:14:11');
INSERT INTO `admin_operation_log` VALUES (1258, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:14:13', '2020-04-07 14:14:13');
INSERT INTO `admin_operation_log` VALUES (1259, 1, 'admin/courses/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:14:22', '2020-04-07 14:14:22');
INSERT INTO `admin_operation_log` VALUES (1260, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:14:30', '2020-04-07 14:14:30');
INSERT INTO `admin_operation_log` VALUES (1261, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:14:39', '2020-04-07 14:14:39');
INSERT INTO `admin_operation_log` VALUES (1262, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:14:41', '2020-04-07 14:14:41');
INSERT INTO `admin_operation_log` VALUES (1263, 1, 'admin/courses/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:14:43', '2020-04-07 14:14:43');
INSERT INTO `admin_operation_log` VALUES (1264, 1, 'admin/courses/1', 'PUT', '127.0.0.1', '{\"full_name\":\"\\u8ba1\\u7b97\\u673a\\u7f51\\u7edc\",\"attribute\":\"\\u5fc5\\u4fee\\u8bfe\",\"credit\":\"2\",\"courses_type_id\":\"1\",\"location\":\"\\u4e09\\u53f7\\u6559\\u5b66\\u697c210\\u5ba4\",\"Schedule_text\":\"1~15\\u5468\\uff0c\\u5468\\u4e8c\\u4e0a\\u5348\\u7b2c\\u4e8c\\u5927\\u8282\\u3001\\u5468\\u56db\\u4e0b\\u5348\\u7b2c\\u4e00\\u5927\\u8282\",\"Schedule_image\":null,\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/courses\\/1\"}', '2020-04-07 14:16:09', '2020-04-07 14:16:09');
INSERT INTO `admin_operation_log` VALUES (1265, 1, 'admin/courses/1', 'GET', '127.0.0.1', '[]', '2020-04-07 14:16:10', '2020-04-07 14:16:10');
INSERT INTO `admin_operation_log` VALUES (1266, 1, 'admin/courses/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:16:12', '2020-04-07 14:16:12');
INSERT INTO `admin_operation_log` VALUES (1267, 1, 'admin/courses/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-07 14:16:33', '2020-04-07 14:16:33');
INSERT INTO `admin_operation_log` VALUES (1268, 1, 'admin/courses/1', 'PUT', '127.0.0.1', '{\"full_name\":\"\\u8ba1\\u7b97\\u673a\\u7f51\\u7edc\",\"attribute\":\"1\",\"credit\":\"2\",\"courses_type_id\":\"1\",\"location\":\"\\u4e09\\u53f7\\u6559\\u5b66\\u697c210\\u5ba4\",\"Schedule_text\":\"1~15\\u5468\\uff0c\\u5468\\u4e8c\\u4e0a\\u5348\\u7b2c\\u4e8c\\u5927\\u8282\\u3001\\u5468\\u56db\\u4e0b\\u5348\\u7b2c\\u4e00\\u5927\\u8282\",\"Schedule_image\":null,\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_method\":\"PUT\"}', '2020-04-07 14:16:41', '2020-04-07 14:16:41');
INSERT INTO `admin_operation_log` VALUES (1269, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2020-04-07 14:16:41', '2020-04-07 14:16:41');
INSERT INTO `admin_operation_log` VALUES (1270, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:16:45', '2020-04-07 14:16:45');
INSERT INTO `admin_operation_log` VALUES (1271, 1, 'admin/courses/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:16:53', '2020-04-07 14:16:53');
INSERT INTO `admin_operation_log` VALUES (1272, 1, 'admin/courses/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-07 14:17:31', '2020-04-07 14:17:31');
INSERT INTO `admin_operation_log` VALUES (1273, 1, 'admin/courses/1', 'PUT', '127.0.0.1', '{\"full_name\":\"\\u8ba1\\u7b97\\u673a\\u7f51\\u7edc\",\"attribute\":\"\\u5fc5\\u4fee\\u8bfe\",\"credit\":\"2\",\"courses_type_id\":\"1\",\"location\":\"\\u4e09\\u53f7\\u6559\\u5b66\\u697c210\\u5ba4\",\"Schedule_text\":\"1~15\\u5468\\uff0c\\u5468\\u4e8c\\u4e0a\\u5348\\u7b2c\\u4e8c\\u5927\\u8282\\u3001\\u5468\\u56db\\u4e0b\\u5348\\u7b2c\\u4e00\\u5927\\u8282\",\"Schedule_image\":null,\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_method\":\"PUT\"}', '2020-04-07 14:17:34', '2020-04-07 14:17:34');
INSERT INTO `admin_operation_log` VALUES (1274, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2020-04-07 14:17:34', '2020-04-07 14:17:34');
INSERT INTO `admin_operation_log` VALUES (1275, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:17:36', '2020-04-07 14:17:36');
INSERT INTO `admin_operation_log` VALUES (1276, 1, 'admin/courses/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:17:40', '2020-04-07 14:17:40');
INSERT INTO `admin_operation_log` VALUES (1277, 1, 'admin/courses/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-07 14:40:40', '2020-04-07 14:40:40');
INSERT INTO `admin_operation_log` VALUES (1278, 1, 'admin/courses/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-07 14:40:58', '2020-04-07 14:40:58');
INSERT INTO `admin_operation_log` VALUES (1279, 1, 'admin/courses/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-07 14:41:30', '2020-04-07 14:41:30');
INSERT INTO `admin_operation_log` VALUES (1280, 1, 'admin/courses/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-07 14:41:50', '2020-04-07 14:41:50');
INSERT INTO `admin_operation_log` VALUES (1281, 1, 'admin/courses/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-07 14:42:17', '2020-04-07 14:42:17');
INSERT INTO `admin_operation_log` VALUES (1282, 1, 'admin/courses/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-07 14:42:31', '2020-04-07 14:42:31');
INSERT INTO `admin_operation_log` VALUES (1283, 1, 'admin/courses/1', 'PUT', '127.0.0.1', '{\"full_name\":\"\\u8ba1\\u7b97\\u673a\\u7f51\\u7edc\",\"attribute\":\"\\u5fc5\\u4fee\\u8bfe\",\"courses_type_id\":\"1\",\"credit\":\"2\",\"location\":\"\\u4e09\\u53f7\\u6559\\u5b66\\u697c210\\u5ba4\",\"Schedule_text\":\"1~15\\u5468\\uff0c\\u5468\\u4e8c\\u4e0a\\u5348\\u7b2c\\u4e8c\\u5927\\u8282\\u3001\\u5468\\u56db\\u4e0b\\u5348\\u7b2c\\u4e00\\u5927\\u8282\",\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_method\":\"PUT\"}', '2020-04-07 14:42:44', '2020-04-07 14:42:44');
INSERT INTO `admin_operation_log` VALUES (1284, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2020-04-07 14:42:44', '2020-04-07 14:42:44');
INSERT INTO `admin_operation_log` VALUES (1285, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:42:46', '2020-04-07 14:42:46');
INSERT INTO `admin_operation_log` VALUES (1286, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:42:52', '2020-04-07 14:42:52');
INSERT INTO `admin_operation_log` VALUES (1287, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:43:01', '2020-04-07 14:43:01');
INSERT INTO `admin_operation_log` VALUES (1288, 1, 'admin/courses', 'POST', '127.0.0.1', '{\"full_name\":\"\\u8bbe\\u8ba1\\u6a21\\u5f0f\",\"attribute\":\"\\u5fc5\\u4fee\\u8bfe\",\"courses_type_id\":\"1\",\"credit\":\"1\",\"location\":\"\\u4e09\\u53f7\\u6559\\u5b66\\u697c208\\u5ba4\",\"Schedule_text\":\"3~14\\u5468\\uff0c\\u5468\\u4e8c\\u4e0b\\u5348\\u7b2c\\u4e00\\u5927\\u8282\\uff0c\\u5468\\u4e94\\u4e0a\\u5348\\u7b2c\\u4e8c\\u5927\\u8282\",\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/courses\"}', '2020-04-07 14:44:23', '2020-04-07 14:44:23');
INSERT INTO `admin_operation_log` VALUES (1289, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2020-04-07 14:44:23', '2020-04-07 14:44:23');
INSERT INTO `admin_operation_log` VALUES (1290, 1, 'admin/course-type-constants', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:44:32', '2020-04-07 14:44:32');
INSERT INTO `admin_operation_log` VALUES (1291, 1, 'admin/course-type-constants/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:44:33', '2020-04-07 14:44:33');
INSERT INTO `admin_operation_log` VALUES (1292, 1, 'admin/course-type-constants', 'POST', '127.0.0.1', '{\"name\":\"\\u6df7\\u5408\\u578b\",\"intro\":\"\\u8bfe\\u5802\\u8bb2\\u6388+\\u5b9e\\u9a8c\\u8bfe\\uff0c\\u671f\\u672b\\u8003\\u8bd5\\u8bfe\\u7a0b\",\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/course-type-constants\"}', '2020-04-07 14:45:20', '2020-04-07 14:45:20');
INSERT INTO `admin_operation_log` VALUES (1293, 1, 'admin/course-type-constants', 'GET', '127.0.0.1', '[]', '2020-04-07 14:45:20', '2020-04-07 14:45:20');
INSERT INTO `admin_operation_log` VALUES (1294, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:45:24', '2020-04-07 14:45:24');
INSERT INTO `admin_operation_log` VALUES (1295, 1, 'admin/courses/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:45:26', '2020-04-07 14:45:26');
INSERT INTO `admin_operation_log` VALUES (1296, 1, 'admin/courses/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:45:28', '2020-04-07 14:45:28');
INSERT INTO `admin_operation_log` VALUES (1297, 1, 'admin/courses/2', 'PUT', '127.0.0.1', '{\"full_name\":\"\\u8bbe\\u8ba1\\u6a21\\u5f0f\",\"attribute\":\"\\u5fc5\\u4fee\\u8bfe\",\"courses_type_id\":\"2\",\"credit\":\"1\",\"location\":\"\\u4e09\\u53f7\\u6559\\u5b66\\u697c208\\u5ba4\",\"Schedule_text\":\"3~14\\u5468\\uff0c\\u5468\\u4e8c\\u4e0b\\u5348\\u7b2c\\u4e00\\u5927\\u8282\\uff0c\\u5468\\u4e94\\u4e0a\\u5348\\u7b2c\\u4e8c\\u5927\\u8282\",\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/courses\\/2\"}', '2020-04-07 14:45:32', '2020-04-07 14:45:32');
INSERT INTO `admin_operation_log` VALUES (1298, 1, 'admin/courses/2', 'GET', '127.0.0.1', '[]', '2020-04-07 14:45:32', '2020-04-07 14:45:32');
INSERT INTO `admin_operation_log` VALUES (1299, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:45:36', '2020-04-07 14:45:36');
INSERT INTO `admin_operation_log` VALUES (1300, 1, 'admin/course-type-constants', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:45:42', '2020-04-07 14:45:42');
INSERT INTO `admin_operation_log` VALUES (1301, 1, 'admin/course-type-constants', 'GET', '127.0.0.1', '[]', '2020-04-07 14:46:55', '2020-04-07 14:46:55');
INSERT INTO `admin_operation_log` VALUES (1302, 1, 'admin/course-type-constants', 'GET', '127.0.0.1', '[]', '2020-04-07 14:47:52', '2020-04-07 14:47:52');
INSERT INTO `admin_operation_log` VALUES (1303, 1, 'admin/course-type-constants/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:48:01', '2020-04-07 14:48:01');
INSERT INTO `admin_operation_log` VALUES (1304, 1, 'admin/course-type-constants/1', 'GET', '127.0.0.1', '[]', '2020-04-07 14:48:44', '2020-04-07 14:48:44');
INSERT INTO `admin_operation_log` VALUES (1305, 1, 'admin/course-type-constants/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:48:58', '2020-04-07 14:48:58');
INSERT INTO `admin_operation_log` VALUES (1306, 1, 'admin/course-type-constants/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-07 14:49:12', '2020-04-07 14:49:12');
INSERT INTO `admin_operation_log` VALUES (1307, 1, 'admin/course-type-constants/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-07 14:49:24', '2020-04-07 14:49:24');
INSERT INTO `admin_operation_log` VALUES (1308, 1, 'admin/course-type-constants', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:49:26', '2020-04-07 14:49:26');
INSERT INTO `admin_operation_log` VALUES (1309, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:49:30', '2020-04-07 14:49:30');
INSERT INTO `admin_operation_log` VALUES (1310, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:49:38', '2020-04-07 14:49:38');
INSERT INTO `admin_operation_log` VALUES (1311, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:49:41', '2020-04-07 14:49:41');
INSERT INTO `admin_operation_log` VALUES (1312, 1, 'admin/course-type-constants', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:49:44', '2020-04-07 14:49:44');
INSERT INTO `admin_operation_log` VALUES (1313, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:49:47', '2020-04-07 14:49:47');
INSERT INTO `admin_operation_log` VALUES (1314, 1, 'admin/course-type-constants', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:49:50', '2020-04-07 14:49:50');
INSERT INTO `admin_operation_log` VALUES (1315, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 14:51:42', '2020-04-07 14:51:42');
INSERT INTO `admin_operation_log` VALUES (1316, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2020-04-07 14:57:45', '2020-04-07 14:57:45');
INSERT INTO `admin_operation_log` VALUES (1317, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:00:15', '2020-04-07 15:00:15');
INSERT INTO `admin_operation_log` VALUES (1318, 1, 'admin/courses/1', 'GET', '127.0.0.1', '[]', '2020-04-07 15:01:09', '2020-04-07 15:01:09');
INSERT INTO `admin_operation_log` VALUES (1319, 1, 'admin/courses/1', 'GET', '127.0.0.1', '[]', '2020-04-07 15:02:39', '2020-04-07 15:02:39');
INSERT INTO `admin_operation_log` VALUES (1320, 1, 'admin/courses/1', 'GET', '127.0.0.1', '[]', '2020-04-07 15:04:08', '2020-04-07 15:04:08');
INSERT INTO `admin_operation_log` VALUES (1321, 1, 'admin/courses/1', 'GET', '127.0.0.1', '[]', '2020-04-07 15:04:50', '2020-04-07 15:04:50');
INSERT INTO `admin_operation_log` VALUES (1322, 1, 'admin/courses/1', 'GET', '127.0.0.1', '[]', '2020-04-07 15:05:15', '2020-04-07 15:05:15');
INSERT INTO `admin_operation_log` VALUES (1323, 1, 'admin/courses/1', 'GET', '127.0.0.1', '[]', '2020-04-07 15:05:30', '2020-04-07 15:05:30');
INSERT INTO `admin_operation_log` VALUES (1324, 1, 'admin/courses/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:05:44', '2020-04-07 15:05:44');
INSERT INTO `admin_operation_log` VALUES (1325, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:07:21', '2020-04-07 15:07:21');
INSERT INTO `admin_operation_log` VALUES (1326, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:07:23', '2020-04-07 15:07:23');
INSERT INTO `admin_operation_log` VALUES (1327, 1, 'admin/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:07:25', '2020-04-07 15:07:25');
INSERT INTO `admin_operation_log` VALUES (1328, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:07:33', '2020-04-07 15:07:33');
INSERT INTO `admin_operation_log` VALUES (1329, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:07:37', '2020-04-07 15:07:37');
INSERT INTO `admin_operation_log` VALUES (1330, 1, 'admin/courses/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:07:39', '2020-04-07 15:07:39');
INSERT INTO `admin_operation_log` VALUES (1331, 1, 'admin/courses/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-07 15:11:51', '2020-04-07 15:11:51');
INSERT INTO `admin_operation_log` VALUES (1332, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:11:59', '2020-04-07 15:11:59');
INSERT INTO `admin_operation_log` VALUES (1333, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:12:02', '2020-04-07 15:12:02');
INSERT INTO `admin_operation_log` VALUES (1334, 1, 'admin/courses/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:12:05', '2020-04-07 15:12:05');
INSERT INTO `admin_operation_log` VALUES (1335, 1, 'admin/courses/1', 'PUT', '127.0.0.1', '{\"full_name\":\"\\u8ba1\\u7b97\\u673a\\u7f51\\u7edc\",\"attribute\":\"\\u5fc5\\u4fee\\u8bfe\",\"courses_type_id\":\"1\",\"squads\":[\"1\",null],\"credit\":\"2\",\"location\":\"\\u4e09\\u53f7\\u6559\\u5b66\\u697c210\\u5ba4\",\"Schedule_text\":\"1~15\\u5468\\uff0c\\u5468\\u4e8c\\u4e0a\\u5348\\u7b2c\\u4e8c\\u5927\\u8282\\u3001\\u5468\\u56db\\u4e0b\\u5348\\u7b2c\\u4e00\\u5927\\u8282\",\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/courses\\/1\"}', '2020-04-07 15:12:18', '2020-04-07 15:12:18');
INSERT INTO `admin_operation_log` VALUES (1336, 1, 'admin/courses/1', 'GET', '127.0.0.1', '[]', '2020-04-07 15:12:18', '2020-04-07 15:12:18');
INSERT INTO `admin_operation_log` VALUES (1337, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:12:22', '2020-04-07 15:12:22');
INSERT INTO `admin_operation_log` VALUES (1338, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2020-04-07 15:12:26', '2020-04-07 15:12:26');
INSERT INTO `admin_operation_log` VALUES (1339, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:12:29', '2020-04-07 15:12:29');
INSERT INTO `admin_operation_log` VALUES (1340, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:12:32', '2020-04-07 15:12:32');
INSERT INTO `admin_operation_log` VALUES (1341, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2020-04-07 15:14:04', '2020-04-07 15:14:04');
INSERT INTO `admin_operation_log` VALUES (1342, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2020-04-07 15:14:12', '2020-04-07 15:14:12');
INSERT INTO `admin_operation_log` VALUES (1343, 1, 'admin/courses/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:14:14', '2020-04-07 15:14:14');
INSERT INTO `admin_operation_log` VALUES (1344, 1, 'admin/courses/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:14:16', '2020-04-07 15:14:16');
INSERT INTO `admin_operation_log` VALUES (1345, 1, 'admin/courses/2', 'PUT', '127.0.0.1', '{\"full_name\":\"\\u8bbe\\u8ba1\\u6a21\\u5f0f\",\"attribute\":\"\\u5fc5\\u4fee\\u8bfe\",\"courses_type_id\":\"2\",\"squads\":[\"1\",null],\"credit\":\"1\",\"location\":\"\\u4e09\\u53f7\\u6559\\u5b66\\u697c208\\u5ba4\",\"Schedule_text\":\"3~14\\u5468\\uff0c\\u5468\\u4e8c\\u4e0b\\u5348\\u7b2c\\u4e00\\u5927\\u8282\\uff0c\\u5468\\u4e94\\u4e0a\\u5348\\u7b2c\\u4e8c\\u5927\\u8282\",\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/courses\\/2\"}', '2020-04-07 15:14:20', '2020-04-07 15:14:20');
INSERT INTO `admin_operation_log` VALUES (1346, 1, 'admin/courses/2', 'GET', '127.0.0.1', '[]', '2020-04-07 15:14:20', '2020-04-07 15:14:20');
INSERT INTO `admin_operation_log` VALUES (1347, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:14:23', '2020-04-07 15:14:23');
INSERT INTO `admin_operation_log` VALUES (1348, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2020-04-07 15:15:34', '2020-04-07 15:15:34');
INSERT INTO `admin_operation_log` VALUES (1349, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2020-04-07 15:25:25', '2020-04-07 15:25:25');
INSERT INTO `admin_operation_log` VALUES (1350, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2020-04-07 15:27:55', '2020-04-07 15:27:55');
INSERT INTO `admin_operation_log` VALUES (1351, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:27:57', '2020-04-07 15:27:57');
INSERT INTO `admin_operation_log` VALUES (1352, 1, 'admin/courses/1', 'GET', '127.0.0.1', '[]', '2020-04-07 15:28:13', '2020-04-07 15:28:13');
INSERT INTO `admin_operation_log` VALUES (1353, 1, 'admin/courses/1', 'GET', '127.0.0.1', '[]', '2020-04-07 15:29:27', '2020-04-07 15:29:27');
INSERT INTO `admin_operation_log` VALUES (1354, 1, 'admin/teacher-courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:29:29', '2020-04-07 15:29:29');
INSERT INTO `admin_operation_log` VALUES (1355, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:29:31', '2020-04-07 15:29:31');
INSERT INTO `admin_operation_log` VALUES (1356, 1, 'admin/courses/1', 'GET', '127.0.0.1', '[]', '2020-04-07 15:38:00', '2020-04-07 15:38:00');
INSERT INTO `admin_operation_log` VALUES (1357, 1, 'admin/teacher-courses/create', 'GET', '127.0.0.1', '{\"course_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:38:05', '2020-04-07 15:38:05');
INSERT INTO `admin_operation_log` VALUES (1358, 1, 'admin/teacher-courses', 'POST', '127.0.0.1', '{\"teacher_id\":\"2\",\"course_id\":\"1\",\"_token\":\"2wYCawZCT3VfGMQJGXMpxSndKj9rqQRhw0Yj9LrF\"}', '2020-04-07 15:38:17', '2020-04-07 15:38:17');
INSERT INTO `admin_operation_log` VALUES (1359, 1, 'admin/teacher-courses', 'GET', '127.0.0.1', '[]', '2020-04-07 15:38:17', '2020-04-07 15:38:17');
INSERT INTO `admin_operation_log` VALUES (1360, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:38:23', '2020-04-07 15:38:23');
INSERT INTO `admin_operation_log` VALUES (1361, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:38:25', '2020-04-07 15:38:25');
INSERT INTO `admin_operation_log` VALUES (1362, 1, 'admin/teacher-courses/create', 'GET', '127.0.0.1', '{\"course_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:38:35', '2020-04-07 15:38:35');
INSERT INTO `admin_operation_log` VALUES (1363, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:38:37', '2020-04-07 15:38:37');
INSERT INTO `admin_operation_log` VALUES (1364, 1, 'admin/teacher-courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:38:40', '2020-04-07 15:38:40');
INSERT INTO `admin_operation_log` VALUES (1365, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:38:42', '2020-04-07 15:38:42');
INSERT INTO `admin_operation_log` VALUES (1366, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:38:49', '2020-04-07 15:38:49');
INSERT INTO `admin_operation_log` VALUES (1367, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:38:53', '2020-04-07 15:38:53');
INSERT INTO `admin_operation_log` VALUES (1368, 1, 'admin/courses/1', 'GET', '127.0.0.1', '[]', '2020-04-07 15:40:07', '2020-04-07 15:40:07');
INSERT INTO `admin_operation_log` VALUES (1369, 1, 'admin/courses/1', 'GET', '127.0.0.1', '[]', '2020-04-07 15:42:13', '2020-04-07 15:42:13');
INSERT INTO `admin_operation_log` VALUES (1370, 1, 'admin/courses/1', 'GET', '127.0.0.1', '[]', '2020-04-07 15:42:20', '2020-04-07 15:42:20');
INSERT INTO `admin_operation_log` VALUES (1371, 1, 'admin/courses/1', 'GET', '127.0.0.1', '[]', '2020-04-07 15:42:38', '2020-04-07 15:42:38');
INSERT INTO `admin_operation_log` VALUES (1372, 1, 'admin/teacher-courses/create', 'GET', '127.0.0.1', '{\"course_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:42:39', '2020-04-07 15:42:39');
INSERT INTO `admin_operation_log` VALUES (1373, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:43:12', '2020-04-07 15:43:12');
INSERT INTO `admin_operation_log` VALUES (1374, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:43:13', '2020-04-07 15:43:13');
INSERT INTO `admin_operation_log` VALUES (1375, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:43:16', '2020-04-07 15:43:16');
INSERT INTO `admin_operation_log` VALUES (1376, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:43:18', '2020-04-07 15:43:18');
INSERT INTO `admin_operation_log` VALUES (1377, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:43:19', '2020-04-07 15:43:19');
INSERT INTO `admin_operation_log` VALUES (1378, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:43:21', '2020-04-07 15:43:21');
INSERT INTO `admin_operation_log` VALUES (1379, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:43:28', '2020-04-07 15:43:28');
INSERT INTO `admin_operation_log` VALUES (1380, 1, 'admin/teacher-courses/create', 'GET', '127.0.0.1', '{\"course_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:43:31', '2020-04-07 15:43:31');
INSERT INTO `admin_operation_log` VALUES (1381, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:43:33', '2020-04-07 15:43:33');
INSERT INTO `admin_operation_log` VALUES (1382, 1, 'admin/teacher-courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:43:38', '2020-04-07 15:43:38');
INSERT INTO `admin_operation_log` VALUES (1383, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:43:39', '2020-04-07 15:43:39');
INSERT INTO `admin_operation_log` VALUES (1384, 1, 'admin/teacher-courses/create', 'GET', '127.0.0.1', '{\"course_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-07 15:43:42', '2020-04-07 15:43:42');
INSERT INTO `admin_operation_log` VALUES (1385, 1, 'admin/teacher-courses/create', 'GET', '127.0.0.1', '{\"course_id\":\"1\"}', '2020-04-07 15:44:20', '2020-04-07 15:44:20');
INSERT INTO `admin_operation_log` VALUES (1386, 1, 'admin/teacher-courses/create', 'GET', '127.0.0.1', '{\"course_id\":\"1\"}', '2020-04-07 15:47:03', '2020-04-07 15:47:03');
INSERT INTO `admin_operation_log` VALUES (1387, 1, 'admin/teacher-courses/create', 'GET', '127.0.0.1', '{\"course_id\":\"1\"}', '2020-04-07 15:53:05', '2020-04-07 15:53:05');
INSERT INTO `admin_operation_log` VALUES (1388, 1, 'admin/teacher-courses/create', 'GET', '127.0.0.1', '{\"course_id\":\"1\"}', '2020-04-07 15:53:30', '2020-04-07 15:53:30');
INSERT INTO `admin_operation_log` VALUES (1389, 1, 'admin/teacher-courses/create', 'GET', '127.0.0.1', '{\"course_id\":\"1\"}', '2020-04-07 15:53:56', '2020-04-07 15:53:56');
INSERT INTO `admin_operation_log` VALUES (1390, 1, 'admin/teacher-courses/create', 'GET', '127.0.0.1', '{\"course_id\":\"1\"}', '2020-04-07 15:54:46', '2020-04-07 15:54:46');
INSERT INTO `admin_operation_log` VALUES (1391, 1, 'admin/teacher-courses/create', 'GET', '127.0.0.1', '{\"course_id\":\"1\"}', '2020-04-07 16:01:47', '2020-04-07 16:01:47');
INSERT INTO `admin_operation_log` VALUES (1392, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 16:01:52', '2020-04-07 16:01:52');
INSERT INTO `admin_operation_log` VALUES (1393, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-07 16:02:12', '2020-04-07 16:02:12');
INSERT INTO `admin_operation_log` VALUES (1394, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-08 01:30:42', '2020-04-08 01:30:42');
INSERT INTO `admin_operation_log` VALUES (1395, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 01:30:47', '2020-04-08 01:30:47');
INSERT INTO `admin_operation_log` VALUES (1396, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2020-04-08 01:31:09', '2020-04-08 01:31:09');
INSERT INTO `admin_operation_log` VALUES (1397, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 01:33:09', '2020-04-08 01:33:09');
INSERT INTO `admin_operation_log` VALUES (1398, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 01:33:15', '2020-04-08 01:33:15');
INSERT INTO `admin_operation_log` VALUES (1399, 1, 'admin/teacher-courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 01:37:41', '2020-04-08 01:37:41');
INSERT INTO `admin_operation_log` VALUES (1400, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 01:37:53', '2020-04-08 01:37:53');
INSERT INTO `admin_operation_log` VALUES (1401, 1, 'admin/teacher-courses/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-08 01:39:11', '2020-04-08 01:39:11');
INSERT INTO `admin_operation_log` VALUES (1402, 1, 'admin/teacher-courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 01:39:26', '2020-04-08 01:39:26');
INSERT INTO `admin_operation_log` VALUES (1403, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 01:39:36', '2020-04-08 01:39:36');
INSERT INTO `admin_operation_log` VALUES (1404, 1, 'admin/teacher-courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 01:39:41', '2020-04-08 01:39:41');
INSERT INTO `admin_operation_log` VALUES (1405, 1, 'admin/teacher-courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 01:39:43', '2020-04-08 01:39:43');
INSERT INTO `admin_operation_log` VALUES (1406, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 01:50:49', '2020-04-08 01:50:49');
INSERT INTO `admin_operation_log` VALUES (1407, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 01:51:14', '2020-04-08 01:51:14');
INSERT INTO `admin_operation_log` VALUES (1408, 1, 'admin/courses/1', 'GET', '127.0.0.1', '[]', '2020-04-08 01:51:22', '2020-04-08 01:51:22');
INSERT INTO `admin_operation_log` VALUES (1409, 1, 'admin/teacher-courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 01:51:28', '2020-04-08 01:51:28');
INSERT INTO `admin_operation_log` VALUES (1410, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 01:51:33', '2020-04-08 01:51:33');
INSERT INTO `admin_operation_log` VALUES (1411, 1, 'admin/courses/1', 'GET', '127.0.0.1', '[]', '2020-04-08 01:52:35', '2020-04-08 01:52:35');
INSERT INTO `admin_operation_log` VALUES (1412, 1, 'admin/courses/1', 'GET', '127.0.0.1', '[]', '2020-04-08 01:52:56', '2020-04-08 01:52:56');
INSERT INTO `admin_operation_log` VALUES (1413, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 01:53:33', '2020-04-08 01:53:33');
INSERT INTO `admin_operation_log` VALUES (1414, 1, 'admin/professions/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 01:53:35', '2020-04-08 01:53:35');
INSERT INTO `admin_operation_log` VALUES (1415, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 01:53:37', '2020-04-08 01:53:37');
INSERT INTO `admin_operation_log` VALUES (1416, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 01:53:39', '2020-04-08 01:53:39');
INSERT INTO `admin_operation_log` VALUES (1417, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 01:53:40', '2020-04-08 01:53:40');
INSERT INTO `admin_operation_log` VALUES (1418, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-08 01:54:34', '2020-04-08 01:54:34');
INSERT INTO `admin_operation_log` VALUES (1419, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 01:54:42', '2020-04-08 01:54:42');
INSERT INTO `admin_operation_log` VALUES (1420, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 01:54:45', '2020-04-08 01:54:45');
INSERT INTO `admin_operation_log` VALUES (1421, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-08 01:57:19', '2020-04-08 01:57:19');
INSERT INTO `admin_operation_log` VALUES (1422, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 01:57:23', '2020-04-08 01:57:23');
INSERT INTO `admin_operation_log` VALUES (1423, 1, 'admin/course-type-constants', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 01:57:50', '2020-04-08 01:57:50');
INSERT INTO `admin_operation_log` VALUES (1424, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 01:57:56', '2020-04-08 01:57:56');
INSERT INTO `admin_operation_log` VALUES (1425, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 01:57:59', '2020-04-08 01:57:59');
INSERT INTO `admin_operation_log` VALUES (1426, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 01:58:01', '2020-04-08 01:58:01');
INSERT INTO `admin_operation_log` VALUES (1427, 1, 'admin/auth/users/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 01:58:03', '2020-04-08 01:58:03');
INSERT INTO `admin_operation_log` VALUES (1428, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 01:58:06', '2020-04-08 01:58:06');
INSERT INTO `admin_operation_log` VALUES (1429, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 01:58:10', '2020-04-08 01:58:10');
INSERT INTO `admin_operation_log` VALUES (1430, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 01:58:11', '2020-04-08 01:58:11');
INSERT INTO `admin_operation_log` VALUES (1431, 1, 'admin/courses/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 01:58:15', '2020-04-08 01:58:15');
INSERT INTO `admin_operation_log` VALUES (1432, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 01:58:31', '2020-04-08 01:58:31');
INSERT INTO `admin_operation_log` VALUES (1433, 1, 'admin/courses/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 01:58:37', '2020-04-08 01:58:37');
INSERT INTO `admin_operation_log` VALUES (1434, 1, 'admin/teacher-courses/create', 'GET', '127.0.0.1', '{\"course_id\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-04-08 01:58:41', '2020-04-08 01:58:41');
INSERT INTO `admin_operation_log` VALUES (1435, 1, 'admin/teacher-courses/create', 'GET', '127.0.0.1', '{\"course_id\":\"2\"}', '2020-04-08 02:02:41', '2020-04-08 02:02:41');
INSERT INTO `admin_operation_log` VALUES (1436, 1, 'admin/teacher-courses/create', 'GET', '127.0.0.1', '{\"course_id\":\"2\"}', '2020-04-08 02:02:52', '2020-04-08 02:02:52');
INSERT INTO `admin_operation_log` VALUES (1437, 1, 'admin/teacher-courses/create', 'GET', '127.0.0.1', '{\"course_id\":\"2\"}', '2020-04-08 02:03:10', '2020-04-08 02:03:10');
INSERT INTO `admin_operation_log` VALUES (1438, 1, 'admin/teacher-courses', 'POST', '127.0.0.1', '{\"course_id\":\"2\",\"teacher_id\":[\"2\",null],\"_token\":\"55ochG40slz4dMO3uP8TyRKdDYh4c6yXoLxF757k\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/teacher-courses\\/create?course_id=2\"}', '2020-04-08 02:03:14', '2020-04-08 02:03:14');
INSERT INTO `admin_operation_log` VALUES (1439, 1, 'admin/teacher-courses/create', 'GET', '127.0.0.1', '{\"course_id\":\"2\"}', '2020-04-08 02:03:15', '2020-04-08 02:03:15');
INSERT INTO `admin_operation_log` VALUES (1440, 1, 'admin/teacher-courses/create', 'GET', '127.0.0.1', '{\"course_id\":\"2\"}', '2020-04-08 02:03:51', '2020-04-08 02:03:51');
INSERT INTO `admin_operation_log` VALUES (1441, 1, 'admin/teacher-courses/create', 'GET', '127.0.0.1', '{\"course_id\":\"2\"}', '2020-04-08 02:04:06', '2020-04-08 02:04:06');
INSERT INTO `admin_operation_log` VALUES (1442, 1, 'admin/teacher-courses', 'POST', '127.0.0.1', '{\"course_id\":\"2\",\"teacher_id\":\"2\",\"_token\":\"55ochG40slz4dMO3uP8TyRKdDYh4c6yXoLxF757k\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/teacher-courses\\/create?course_id=2\"}', '2020-04-08 02:04:09', '2020-04-08 02:04:09');
INSERT INTO `admin_operation_log` VALUES (1443, 1, 'admin/teacher-courses/create', 'GET', '127.0.0.1', '{\"course_id\":\"2\"}', '2020-04-08 02:04:09', '2020-04-08 02:04:09');
INSERT INTO `admin_operation_log` VALUES (1444, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 02:04:50', '2020-04-08 02:04:50');
INSERT INTO `admin_operation_log` VALUES (1445, 1, 'admin/courses/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 02:04:53', '2020-04-08 02:04:53');
INSERT INTO `admin_operation_log` VALUES (1446, 1, 'admin/courses/2', 'GET', '127.0.0.1', '[]', '2020-04-08 02:05:08', '2020-04-08 02:05:08');
INSERT INTO `admin_operation_log` VALUES (1447, 1, 'admin/courses/2', 'GET', '127.0.0.1', '[]', '2020-04-08 02:05:20', '2020-04-08 02:05:20');
INSERT INTO `admin_operation_log` VALUES (1448, 1, 'admin/courses/2', 'GET', '127.0.0.1', '[]', '2020-04-08 02:06:15', '2020-04-08 02:06:15');
INSERT INTO `admin_operation_log` VALUES (1449, 1, 'admin/courses/2', 'GET', '127.0.0.1', '[]', '2020-04-08 02:06:21', '2020-04-08 02:06:21');
INSERT INTO `admin_operation_log` VALUES (1450, 1, 'admin/courses/2', 'GET', '127.0.0.1', '[]', '2020-04-08 02:06:26', '2020-04-08 02:06:26');
INSERT INTO `admin_operation_log` VALUES (1451, 1, 'admin/courses/2', 'GET', '127.0.0.1', '[]', '2020-04-08 02:07:07', '2020-04-08 02:07:07');
INSERT INTO `admin_operation_log` VALUES (1452, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 02:14:48', '2020-04-08 02:14:48');
INSERT INTO `admin_operation_log` VALUES (1453, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 02:15:02', '2020-04-08 02:15:02');
INSERT INTO `admin_operation_log` VALUES (1454, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 08:09:29', '2020-04-08 08:09:29');
INSERT INTO `admin_operation_log` VALUES (1455, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-08 08:09:39', '2020-04-08 08:09:39');
INSERT INTO `admin_operation_log` VALUES (1456, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 08:09:53', '2020-04-08 08:09:53');
INSERT INTO `admin_operation_log` VALUES (1457, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 08:09:55', '2020-04-08 08:09:55');
INSERT INTO `admin_operation_log` VALUES (1458, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 08:09:58', '2020-04-08 08:09:58');
INSERT INTO `admin_operation_log` VALUES (1459, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 08:10:08', '2020-04-08 08:10:08');
INSERT INTO `admin_operation_log` VALUES (1460, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-08 08:10:45', '2020-04-08 08:10:45');
INSERT INTO `admin_operation_log` VALUES (1461, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 08:12:48', '2020-04-08 08:12:48');
INSERT INTO `admin_operation_log` VALUES (1462, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 08:12:50', '2020-04-08 08:12:50');
INSERT INTO `admin_operation_log` VALUES (1463, 1, 'admin/professions/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 08:12:52', '2020-04-08 08:12:52');
INSERT INTO `admin_operation_log` VALUES (1464, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 08:12:56', '2020-04-08 08:12:56');
INSERT INTO `admin_operation_log` VALUES (1465, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 08:12:58', '2020-04-08 08:12:58');
INSERT INTO `admin_operation_log` VALUES (1466, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 08:13:03', '2020-04-08 08:13:03');
INSERT INTO `admin_operation_log` VALUES (1467, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 08:13:05', '2020-04-08 08:13:05');
INSERT INTO `admin_operation_log` VALUES (1468, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 08:13:09', '2020-04-08 08:13:09');
INSERT INTO `admin_operation_log` VALUES (1469, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-08 08:13:17', '2020-04-08 08:13:17');
INSERT INTO `admin_operation_log` VALUES (1470, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 08:13:25', '2020-04-08 08:13:25');
INSERT INTO `admin_operation_log` VALUES (1471, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 08:13:29', '2020-04-08 08:13:29');
INSERT INTO `admin_operation_log` VALUES (1472, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 08:13:48', '2020-04-08 08:13:48');
INSERT INTO `admin_operation_log` VALUES (1473, 1, 'admin/courses/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 08:14:08', '2020-04-08 08:14:08');
INSERT INTO `admin_operation_log` VALUES (1474, 1, 'admin/courses/1', 'PUT', '127.0.0.1', '{\"full_name\":\"\\u8ba1\\u7b97\\u673a\\u7f51\\u7edc\",\"attribute\":\"\\u5fc5\\u4fee\\u8bfe\",\"courses_type_id\":\"1\",\"squads\":[\"1\",null],\"credit\":\"2\",\"location\":\"\\u4e09\\u53f7\\u6559\\u5b66\\u697c210\\u5ba4\",\"Schedule_text\":\"1~15\\u5468\\uff0c\\u5468\\u4e8c\\u4e0a\\u5348\\u7b2c\\u4e8c\\u5927\\u8282\\u3001\\u5468\\u56db\\u4e0b\\u5348\\u7b2c\\u4e00\\u5927\\u8282\",\"_token\":\"WhnvDfvfN5oHjOJruAOyYuxQbavAbcsu4BO6Qiu9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/courses\\/1\"}', '2020-04-08 08:14:21', '2020-04-08 08:14:21');
INSERT INTO `admin_operation_log` VALUES (1475, 1, 'admin/courses/1', 'GET', '127.0.0.1', '[]', '2020-04-08 08:14:21', '2020-04-08 08:14:21');
INSERT INTO `admin_operation_log` VALUES (1476, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 08:14:27', '2020-04-08 08:14:27');
INSERT INTO `admin_operation_log` VALUES (1477, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 08:18:49', '2020-04-08 08:18:49');
INSERT INTO `admin_operation_log` VALUES (1478, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 08:19:01', '2020-04-08 08:19:01');
INSERT INTO `admin_operation_log` VALUES (1479, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 08:19:33', '2020-04-08 08:19:33');
INSERT INTO `admin_operation_log` VALUES (1480, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 08:19:49', '2020-04-08 08:19:49');
INSERT INTO `admin_operation_log` VALUES (1481, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 08:21:50', '2020-04-08 08:21:50');
INSERT INTO `admin_operation_log` VALUES (1482, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 08:22:09', '2020-04-08 08:22:09');
INSERT INTO `admin_operation_log` VALUES (1483, 2, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-08 08:22:18', '2020-04-08 08:22:18');
INSERT INTO `admin_operation_log` VALUES (1484, 2, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 08:22:33', '2020-04-08 08:22:33');
INSERT INTO `admin_operation_log` VALUES (1485, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 08:23:09', '2020-04-08 08:23:09');
INSERT INTO `admin_operation_log` VALUES (1486, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-08 08:23:16', '2020-04-08 08:23:16');
INSERT INTO `admin_operation_log` VALUES (1487, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-08 08:23:21', '2020-04-08 08:23:21');
INSERT INTO `admin_operation_log` VALUES (1488, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-10 11:40:04', '2020-04-10 11:40:04');
INSERT INTO `admin_operation_log` VALUES (1489, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:40:10', '2020-04-10 11:40:10');
INSERT INTO `admin_operation_log` VALUES (1490, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:40:13', '2020-04-10 11:40:13');
INSERT INTO `admin_operation_log` VALUES (1491, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:40:14', '2020-04-10 11:40:14');
INSERT INTO `admin_operation_log` VALUES (1492, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:40:14', '2020-04-10 11:40:14');
INSERT INTO `admin_operation_log` VALUES (1493, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:40:17', '2020-04-10 11:40:17');
INSERT INTO `admin_operation_log` VALUES (1494, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:40:20', '2020-04-10 11:40:20');
INSERT INTO `admin_operation_log` VALUES (1495, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:40:22', '2020-04-10 11:40:22');
INSERT INTO `admin_operation_log` VALUES (1496, 1, 'admin/course-type-constants', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:40:24', '2020-04-10 11:40:24');
INSERT INTO `admin_operation_log` VALUES (1497, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:40:26', '2020-04-10 11:40:26');
INSERT INTO `admin_operation_log` VALUES (1498, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:42:32', '2020-04-10 11:42:32');
INSERT INTO `admin_operation_log` VALUES (1499, 1, 'admin/courses/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:42:34', '2020-04-10 11:42:34');
INSERT INTO `admin_operation_log` VALUES (1500, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:42:42', '2020-04-10 11:42:42');
INSERT INTO `admin_operation_log` VALUES (1501, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:42:43', '2020-04-10 11:42:43');
INSERT INTO `admin_operation_log` VALUES (1502, 1, 'admin/squads/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:42:45', '2020-04-10 11:42:45');
INSERT INTO `admin_operation_log` VALUES (1503, 1, 'admin/squads', 'POST', '127.0.0.1', '{\"profession_id\":\"1\",\"name\":\"1602\\u73ed\",\"info\":\"\\u545c\\u5566\\u5566\\u5566\\u5566\\u5566\",\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/squads\"}', '2020-04-10 11:43:07', '2020-04-10 11:43:07');
INSERT INTO `admin_operation_log` VALUES (1504, 1, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-10 11:43:08', '2020-04-10 11:43:08');
INSERT INTO `admin_operation_log` VALUES (1505, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:43:11', '2020-04-10 11:43:11');
INSERT INTO `admin_operation_log` VALUES (1506, 1, 'admin/professions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:43:14', '2020-04-10 11:43:14');
INSERT INTO `admin_operation_log` VALUES (1507, 1, 'admin/professions', 'POST', '127.0.0.1', '{\"full_name\":\"\\u901a\\u4fe1\\u5de5\\u7a0b\",\"intro\":\"\\u7070\\u5e38\\u7684\\u5389\\u5bb3\",\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/professions\"}', '2020-04-10 11:43:38', '2020-04-10 11:43:38');
INSERT INTO `admin_operation_log` VALUES (1508, 1, 'admin/professions', 'GET', '127.0.0.1', '[]', '2020-04-10 11:43:38', '2020-04-10 11:43:38');
INSERT INTO `admin_operation_log` VALUES (1509, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:43:40', '2020-04-10 11:43:40');
INSERT INTO `admin_operation_log` VALUES (1510, 1, 'admin/squads/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:43:42', '2020-04-10 11:43:42');
INSERT INTO `admin_operation_log` VALUES (1511, 1, 'admin/squads', 'POST', '127.0.0.1', '{\"profession_id\":\"2\",\"name\":\"1601\\u73ed\",\"info\":\"\\u5168\\u662f\\u5e05\\u54e5\\u7f8e\\u5973\",\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/squads\"}', '2020-04-10 11:43:55', '2020-04-10 11:43:55');
INSERT INTO `admin_operation_log` VALUES (1512, 1, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-10 11:43:55', '2020-04-10 11:43:55');
INSERT INTO `admin_operation_log` VALUES (1513, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:43:57', '2020-04-10 11:43:57');
INSERT INTO `admin_operation_log` VALUES (1514, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:43:58', '2020-04-10 11:43:58');
INSERT INTO `admin_operation_log` VALUES (1515, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:44:02', '2020-04-10 11:44:02');
INSERT INTO `admin_operation_log` VALUES (1516, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2020-04-10 11:46:19', '2020-04-10 11:46:19');
INSERT INTO `admin_operation_log` VALUES (1517, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2020-04-10 11:46:38', '2020-04-10 11:46:38');
INSERT INTO `admin_operation_log` VALUES (1518, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:47:43', '2020-04-10 11:47:43');
INSERT INTO `admin_operation_log` VALUES (1519, 1, 'admin/squads/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:47:50', '2020-04-10 11:47:50');
INSERT INTO `admin_operation_log` VALUES (1520, 1, 'admin/squads/1', 'PUT', '127.0.0.1', '{\"profession_id\":\"1\",\"name\":\"\\u8ba1\\u79d11601\\u73ed\",\"info\":\"\\u5b87\\u5b99\\u6700\\u725b\",\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/squads\"}', '2020-04-10 11:47:58', '2020-04-10 11:47:58');
INSERT INTO `admin_operation_log` VALUES (1521, 1, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-10 11:47:58', '2020-04-10 11:47:58');
INSERT INTO `admin_operation_log` VALUES (1522, 1, 'admin/squads/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:48:00', '2020-04-10 11:48:00');
INSERT INTO `admin_operation_log` VALUES (1523, 1, 'admin/squads/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:48:07', '2020-04-10 11:48:07');
INSERT INTO `admin_operation_log` VALUES (1524, 1, 'admin/squads/2', 'PUT', '127.0.0.1', '{\"profession_id\":\"1\",\"name\":\"\\u8ba1\\u79d11602\\u73ed\",\"info\":\"\\u545c\\u5566\\u5566\\u5566\\u5566\\u5566\",\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/squads\\/2\"}', '2020-04-10 11:48:12', '2020-04-10 11:48:12');
INSERT INTO `admin_operation_log` VALUES (1525, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-10 11:48:12', '2020-04-10 11:48:12');
INSERT INTO `admin_operation_log` VALUES (1526, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:48:15', '2020-04-10 11:48:15');
INSERT INTO `admin_operation_log` VALUES (1527, 1, 'admin/squads/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:48:17', '2020-04-10 11:48:17');
INSERT INTO `admin_operation_log` VALUES (1528, 1, 'admin/squads/3', 'PUT', '127.0.0.1', '{\"profession_id\":\"2\",\"name\":\"\\u901a\\u4fe11601\\u73ed\",\"info\":\"\\u5168\\u662f\\u5e05\\u54e5\\u7f8e\\u5973\",\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/squads\"}', '2020-04-10 11:48:22', '2020-04-10 11:48:22');
INSERT INTO `admin_operation_log` VALUES (1529, 1, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-10 11:48:22', '2020-04-10 11:48:22');
INSERT INTO `admin_operation_log` VALUES (1530, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:48:25', '2020-04-10 11:48:25');
INSERT INTO `admin_operation_log` VALUES (1531, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:48:28', '2020-04-10 11:48:28');
INSERT INTO `admin_operation_log` VALUES (1532, 1, 'admin/courses/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:48:33', '2020-04-10 11:48:33');
INSERT INTO `admin_operation_log` VALUES (1533, 1, 'admin/courses/1', 'PUT', '127.0.0.1', '{\"full_name\":\"\\u8ba1\\u7b97\\u673a\\u7f51\\u7edc\",\"attribute\":\"\\u5fc5\\u4fee\\u8bfe\",\"courses_type_id\":\"1\",\"squads\":[\"1\",\"2\",null],\"credit\":\"2\",\"location\":\"\\u4e09\\u53f7\\u6559\\u5b66\\u697c210\\u5ba4\",\"Schedule_text\":\"1~15\\u5468\\uff0c\\u5468\\u4e8c\\u4e0a\\u5348\\u7b2c\\u4e8c\\u5927\\u8282\\u3001\\u5468\\u56db\\u4e0b\\u5348\\u7b2c\\u4e00\\u5927\\u8282\",\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/courses\\/1\"}', '2020-04-10 11:48:40', '2020-04-10 11:48:40');
INSERT INTO `admin_operation_log` VALUES (1534, 1, 'admin/courses/1', 'GET', '127.0.0.1', '[]', '2020-04-10 11:48:40', '2020-04-10 11:48:40');
INSERT INTO `admin_operation_log` VALUES (1535, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:48:42', '2020-04-10 11:48:42');
INSERT INTO `admin_operation_log` VALUES (1536, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:48:43', '2020-04-10 11:48:43');
INSERT INTO `admin_operation_log` VALUES (1537, 1, 'admin/course-type-constants', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:48:54', '2020-04-10 11:48:54');
INSERT INTO `admin_operation_log` VALUES (1538, 1, 'admin/course-type-constants/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:48:56', '2020-04-10 11:48:56');
INSERT INTO `admin_operation_log` VALUES (1539, 1, 'admin/course-type-constants', 'POST', '127.0.0.1', '{\"name\":\"\\u5b9e\\u9a8c\\u8bfe\",\"intro\":\"\\u5b9e\\u9a8c\\u8bfe\\u7a0b\",\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/course-type-constants\"}', '2020-04-10 11:49:11', '2020-04-10 11:49:11');
INSERT INTO `admin_operation_log` VALUES (1540, 1, 'admin/course-type-constants', 'GET', '127.0.0.1', '[]', '2020-04-10 11:49:11', '2020-04-10 11:49:11');
INSERT INTO `admin_operation_log` VALUES (1541, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:49:13', '2020-04-10 11:49:13');
INSERT INTO `admin_operation_log` VALUES (1542, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:49:14', '2020-04-10 11:49:14');
INSERT INTO `admin_operation_log` VALUES (1543, 1, 'admin/courses', 'POST', '127.0.0.1', '{\"full_name\":\"EDA\\u6559\\u5b66\",\"attribute\":\"\\u5fc5\\u4fee\\u8bfe\",\"courses_type_id\":\"3\",\"squads\":[\"3\",null],\"credit\":\"2\",\"location\":\"\\u65b0\\u5b9e\\u9a8c\\u697c\\uff0cB\\u533a501\\u5ba4\",\"Schedule_text\":\"1~15\\u5468\\uff0c\\u5468\\u4e8c\\u4e0a\\u5348\\u7b2c\\u4e8c\\u5927\\u8282\\u3001\\u5468\\u56db\\u4e0b\\u5348\\u7b2c\\u4e00\\u5927\\u8282\",\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/courses\"}', '2020-04-10 11:50:01', '2020-04-10 11:50:01');
INSERT INTO `admin_operation_log` VALUES (1544, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2020-04-10 11:50:01', '2020-04-10 11:50:01');
INSERT INTO `admin_operation_log` VALUES (1545, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:50:10', '2020-04-10 11:50:10');
INSERT INTO `admin_operation_log` VALUES (1546, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:50:15', '2020-04-10 11:50:15');
INSERT INTO `admin_operation_log` VALUES (1547, 1, 'admin/courses/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:50:26', '2020-04-10 11:50:26');
INSERT INTO `admin_operation_log` VALUES (1548, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:50:32', '2020-04-10 11:50:32');
INSERT INTO `admin_operation_log` VALUES (1549, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:53:59', '2020-04-10 11:53:59');
INSERT INTO `admin_operation_log` VALUES (1550, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:54:05', '2020-04-10 11:54:05');
INSERT INTO `admin_operation_log` VALUES (1551, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:54:08', '2020-04-10 11:54:08');
INSERT INTO `admin_operation_log` VALUES (1552, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:54:10', '2020-04-10 11:54:10');
INSERT INTO `admin_operation_log` VALUES (1553, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"wang\",\"name\":\"\\u738b\\u8001\\u5e08\",\"password\":\"123456\",\"password_confirmation\":\"123456\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/users\"}', '2020-04-10 11:54:47', '2020-04-10 11:54:47');
INSERT INTO `admin_operation_log` VALUES (1554, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-10 11:54:47', '2020-04-10 11:54:47');
INSERT INTO `admin_operation_log` VALUES (1555, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:54:57', '2020-04-10 11:54:57');
INSERT INTO `admin_operation_log` VALUES (1556, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"yang\",\"name\":\"\\u6768\\u8001\\u5e08\",\"password\":\"123456\",\"password_confirmation\":\"123456\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/users\"}', '2020-04-10 11:55:30', '2020-04-10 11:55:30');
INSERT INTO `admin_operation_log` VALUES (1557, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-10 11:55:30', '2020-04-10 11:55:30');
INSERT INTO `admin_operation_log` VALUES (1558, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:55:34', '2020-04-10 11:55:34');
INSERT INTO `admin_operation_log` VALUES (1559, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:55:35', '2020-04-10 11:55:35');
INSERT INTO `admin_operation_log` VALUES (1560, 1, 'admin/courses', 'POST', '127.0.0.1', '{\"full_name\":\"\\u5b9e\\u9a8c\\u8bfe\\u7a0b-\\u710a\\u63a5\\u4e07\\u7528\\u8868\",\"attribute\":\"\\u5fc5\\u4fee\\u8bfe\",\"courses_type_id\":\"3\",\"teachers\":[\"2\",\"12\",null],\"squads\":[\"1\",\"2\",null],\"credit\":\"1\",\"location\":\"\\u4e09\\u53f7\\u6559\\u5b66\\u697c210\\u5ba4\",\"Schedule_text\":\"1~15\\u5468\\uff0c\\u5468\\u4e8c\\u4e0a\\u5348\\u7b2c\\u4e8c\\u5927\\u8282\\u3001\\u5468\\u56db\\u4e0b\\u5348\\u7b2c\\u4e00\\u5927\\u8282\",\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/courses\"}', '2020-04-10 11:56:17', '2020-04-10 11:56:17');
INSERT INTO `admin_operation_log` VALUES (1561, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2020-04-10 11:56:17', '2020-04-10 11:56:17');
INSERT INTO `admin_operation_log` VALUES (1562, 1, 'admin/courses/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:56:21', '2020-04-10 11:56:21');
INSERT INTO `admin_operation_log` VALUES (1563, 1, 'admin/courses/3', 'GET', '127.0.0.1', '[]', '2020-04-10 11:56:53', '2020-04-10 11:56:53');
INSERT INTO `admin_operation_log` VALUES (1564, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:57:00', '2020-04-10 11:57:00');
INSERT INTO `admin_operation_log` VALUES (1565, 1, 'admin/courses/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:57:14', '2020-04-10 11:57:14');
INSERT INTO `admin_operation_log` VALUES (1566, 1, 'admin/courses/3', 'PUT', '127.0.0.1', '{\"full_name\":\"EDA\\u6559\\u5b66\",\"attribute\":\"\\u5fc5\\u4fee\\u8bfe\",\"courses_type_id\":\"3\",\"teachers\":[\"11\",null],\"squads\":[\"3\",null],\"credit\":\"2\",\"location\":\"\\u65b0\\u5b9e\\u9a8c\\u697c\\uff0cB\\u533a501\\u5ba4\",\"Schedule_text\":\"1~15\\u5468\\uff0c\\u5468\\u4e8c\\u4e0a\\u5348\\u7b2c\\u4e8c\\u5927\\u8282\\u3001\\u5468\\u56db\\u4e0b\\u5348\\u7b2c\\u4e00\\u5927\\u8282\",\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/courses\"}', '2020-04-10 11:57:20', '2020-04-10 11:57:20');
INSERT INTO `admin_operation_log` VALUES (1567, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2020-04-10 11:57:20', '2020-04-10 11:57:20');
INSERT INTO `admin_operation_log` VALUES (1568, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2020-04-10 11:57:27', '2020-04-10 11:57:27');
INSERT INTO `admin_operation_log` VALUES (1569, 1, 'admin/courses/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:57:30', '2020-04-10 11:57:30');
INSERT INTO `admin_operation_log` VALUES (1570, 1, 'admin/courses/3', 'GET', '127.0.0.1', '[]', '2020-04-10 11:57:44', '2020-04-10 11:57:44');
INSERT INTO `admin_operation_log` VALUES (1571, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:58:04', '2020-04-10 11:58:04');
INSERT INTO `admin_operation_log` VALUES (1572, 1, 'admin/courses/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:58:11', '2020-04-10 11:58:11');
INSERT INTO `admin_operation_log` VALUES (1573, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:58:16', '2020-04-10 11:58:16');
INSERT INTO `admin_operation_log` VALUES (1574, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:58:19', '2020-04-10 11:58:19');
INSERT INTO `admin_operation_log` VALUES (1575, 1, 'admin/professions/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:58:21', '2020-04-10 11:58:21');
INSERT INTO `admin_operation_log` VALUES (1576, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:58:23', '2020-04-10 11:58:23');
INSERT INTO `admin_operation_log` VALUES (1577, 1, 'admin/professions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:58:25', '2020-04-10 11:58:25');
INSERT INTO `admin_operation_log` VALUES (1578, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:58:28', '2020-04-10 11:58:28');
INSERT INTO `admin_operation_log` VALUES (1579, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:58:30', '2020-04-10 11:58:30');
INSERT INTO `admin_operation_log` VALUES (1580, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:58:32', '2020-04-10 11:58:32');
INSERT INTO `admin_operation_log` VALUES (1581, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:58:37', '2020-04-10 11:58:37');
INSERT INTO `admin_operation_log` VALUES (1582, 1, 'admin/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:58:40', '2020-04-10 11:58:40');
INSERT INTO `admin_operation_log` VALUES (1583, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:58:48', '2020-04-10 11:58:48');
INSERT INTO `admin_operation_log` VALUES (1584, 1, 'admin/articles/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:58:50', '2020-04-10 11:58:50');
INSERT INTO `admin_operation_log` VALUES (1585, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:58:54', '2020-04-10 11:58:54');
INSERT INTO `admin_operation_log` VALUES (1586, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:58:58', '2020-04-10 11:58:58');
INSERT INTO `admin_operation_log` VALUES (1587, 1, 'admin/labels/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:59:00', '2020-04-10 11:59:00');
INSERT INTO `admin_operation_log` VALUES (1588, 1, 'admin/course-type-constants', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:59:04', '2020-04-10 11:59:04');
INSERT INTO `admin_operation_log` VALUES (1589, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:00:09', '2020-04-10 12:00:09');
INSERT INTO `admin_operation_log` VALUES (1590, 1, 'admin/courses/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:00:11', '2020-04-10 12:00:11');
INSERT INTO `admin_operation_log` VALUES (1591, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:00:19', '2020-04-10 12:00:19');
INSERT INTO `admin_operation_log` VALUES (1592, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:00:20', '2020-04-10 12:00:20');
INSERT INTO `admin_operation_log` VALUES (1593, 1, 'admin/squads/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:00:23', '2020-04-10 12:00:23');
INSERT INTO `admin_operation_log` VALUES (1594, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:00:25', '2020-04-10 12:00:25');
INSERT INTO `admin_operation_log` VALUES (1595, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:00:27', '2020-04-10 12:00:27');
INSERT INTO `admin_operation_log` VALUES (1596, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:00:33', '2020-04-10 12:00:33');
INSERT INTO `admin_operation_log` VALUES (1597, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:00:37', '2020-04-10 12:00:37');
INSERT INTO `admin_operation_log` VALUES (1598, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:04:03', '2020-04-10 12:04:03');
INSERT INTO `admin_operation_log` VALUES (1599, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\"}', '2020-04-10 12:04:50', '2020-04-10 12:04:50');
INSERT INTO `admin_operation_log` VALUES (1600, 1, 'admin/student-squads', 'POST', '127.0.0.1', '{\"squad_id\":\"1\",\"student_id\":[null],\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\"}', '2020-04-10 12:04:57', '2020-04-10 12:04:57');
INSERT INTO `admin_operation_log` VALUES (1601, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\"}', '2020-04-10 12:04:58', '2020-04-10 12:04:58');
INSERT INTO `admin_operation_log` VALUES (1602, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:05:06', '2020-04-10 12:05:06');
INSERT INTO `admin_operation_log` VALUES (1603, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:05:08', '2020-04-10 12:05:08');
INSERT INTO `admin_operation_log` VALUES (1604, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-10 12:05:41', '2020-04-10 12:05:41');
INSERT INTO `admin_operation_log` VALUES (1605, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:05:45', '2020-04-10 12:05:45');
INSERT INTO `admin_operation_log` VALUES (1606, 1, 'admin/student-squads', 'POST', '127.0.0.1', '{\"squad_id\":\"1\",\"student_id\":[null],\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\"}', '2020-04-10 12:05:47', '2020-04-10 12:05:47');
INSERT INTO `admin_operation_log` VALUES (1607, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\"}', '2020-04-10 12:05:47', '2020-04-10 12:05:47');
INSERT INTO `admin_operation_log` VALUES (1608, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:05:49', '2020-04-10 12:05:49');
INSERT INTO `admin_operation_log` VALUES (1609, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:05:50', '2020-04-10 12:05:50');
INSERT INTO `admin_operation_log` VALUES (1610, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:05:53', '2020-04-10 12:05:53');
INSERT INTO `admin_operation_log` VALUES (1611, 1, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-10 13:01:40', '2020-04-10 13:01:40');
INSERT INTO `admin_operation_log` VALUES (1612, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:01:44', '2020-04-10 13:01:44');
INSERT INTO `admin_operation_log` VALUES (1613, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"14\",\"title\":\"\\u5206\\u6570\\u8ba1\\u7b97\\u516c\\u5f0f\\u7ba1\\u7406\",\"icon\":\"fa-calculator\",\"uri\":\"formula-lefts\",\"roles\":[null],\"permission\":null,\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\"}', '2020-04-10 13:03:19', '2020-04-10 13:03:19');
INSERT INTO `admin_operation_log` VALUES (1614, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-10 13:03:19', '2020-04-10 13:03:19');
INSERT INTO `admin_operation_log` VALUES (1615, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":14,\\\"children\\\":[{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":15},{\\\"id\\\":18}]},{\\\"id\\\":13,\\\"children\\\":[{\\\"id\\\":8},{\\\"id\\\":10}]},{\\\"id\\\":16,\\\"children\\\":[{\\\"id\\\":17}]},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-04-10 13:03:31', '2020-04-10 13:03:31');
INSERT INTO `admin_operation_log` VALUES (1616, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:03:31', '2020-04-10 13:03:31');
INSERT INTO `admin_operation_log` VALUES (1617, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"14\",\"title\":\"\\u5206\\u6570\\u7ba1\\u7406\",\"icon\":\"fa-database\",\"uri\":\"\\/fractions\",\"roles\":[null],\"permission\":null,\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\"}', '2020-04-10 13:05:29', '2020-04-10 13:05:29');
INSERT INTO `admin_operation_log` VALUES (1618, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-10 13:05:29', '2020-04-10 13:05:29');
INSERT INTO `admin_operation_log` VALUES (1619, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":14,\\\"children\\\":[{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":15},{\\\"id\\\":19},{\\\"id\\\":18}]},{\\\"id\\\":13,\\\"children\\\":[{\\\"id\\\":8},{\\\"id\\\":10}]},{\\\"id\\\":16,\\\"children\\\":[{\\\"id\\\":17}]},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-04-10 13:05:36', '2020-04-10 13:05:36');
INSERT INTO `admin_operation_log` VALUES (1620, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:05:36', '2020-04-10 13:05:36');
INSERT INTO `admin_operation_log` VALUES (1621, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":14,\\\"children\\\":[{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":15},{\\\"id\\\":18},{\\\"id\\\":19}]},{\\\"id\\\":13,\\\"children\\\":[{\\\"id\\\":8},{\\\"id\\\":10}]},{\\\"id\\\":16,\\\"children\\\":[{\\\"id\\\":17}]},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-04-10 13:05:39', '2020-04-10 13:05:39');
INSERT INTO `admin_operation_log` VALUES (1622, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:05:40', '2020-04-10 13:05:40');
INSERT INTO `admin_operation_log` VALUES (1623, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"16\",\"title\":\"\\u5143\\u8ba1\\u7b97\\u9879\\u7c7b\\u578b\\u7ba1\\u7406\",\"icon\":\"fa-yahoo\",\"uri\":\"\\/meta-cal-types\",\"roles\":[null],\"permission\":null,\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\"}', '2020-04-10 13:06:47', '2020-04-10 13:06:47');
INSERT INTO `admin_operation_log` VALUES (1624, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-10 13:06:47', '2020-04-10 13:06:47');
INSERT INTO `admin_operation_log` VALUES (1625, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":14,\\\"children\\\":[{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":15},{\\\"id\\\":18},{\\\"id\\\":19}]},{\\\"id\\\":13,\\\"children\\\":[{\\\"id\\\":8},{\\\"id\\\":10}]},{\\\"id\\\":16,\\\"children\\\":[{\\\"id\\\":17},{\\\"id\\\":20}]},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-04-10 13:06:58', '2020-04-10 13:06:58');
INSERT INTO `admin_operation_log` VALUES (1626, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:06:58', '2020-04-10 13:06:58');
INSERT INTO `admin_operation_log` VALUES (1627, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-10 13:07:00', '2020-04-10 13:07:00');
INSERT INTO `admin_operation_log` VALUES (1628, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:07:08', '2020-04-10 13:07:08');
INSERT INTO `admin_operation_log` VALUES (1629, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:07:11', '2020-04-10 13:07:11');
INSERT INTO `admin_operation_log` VALUES (1630, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:11:23', '2020-04-10 13:11:23');
INSERT INTO `admin_operation_log` VALUES (1631, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:11:26', '2020-04-10 13:11:26');
INSERT INTO `admin_operation_log` VALUES (1632, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:11:31', '2020-04-10 13:11:31');
INSERT INTO `admin_operation_log` VALUES (1633, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:11:34', '2020-04-10 13:11:34');
INSERT INTO `admin_operation_log` VALUES (1634, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:11:48', '2020-04-10 13:11:48');
INSERT INTO `admin_operation_log` VALUES (1635, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-10 13:12:25', '2020-04-10 13:12:25');
INSERT INTO `admin_operation_log` VALUES (1636, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-10 13:13:40', '2020-04-10 13:13:40');
INSERT INTO `admin_operation_log` VALUES (1637, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-10 13:13:51', '2020-04-10 13:13:51');
INSERT INTO `admin_operation_log` VALUES (1638, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:14:03', '2020-04-10 13:14:03');
INSERT INTO `admin_operation_log` VALUES (1639, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:14:05', '2020-04-10 13:14:05');
INSERT INTO `admin_operation_log` VALUES (1640, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:14:07', '2020-04-10 13:14:07');
INSERT INTO `admin_operation_log` VALUES (1641, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:14:10', '2020-04-10 13:14:10');
INSERT INTO `admin_operation_log` VALUES (1642, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-10 13:14:51', '2020-04-10 13:14:51');
INSERT INTO `admin_operation_log` VALUES (1643, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:14:53', '2020-04-10 13:14:53');
INSERT INTO `admin_operation_log` VALUES (1644, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '[]', '2020-04-10 13:15:25', '2020-04-10 13:15:25');
INSERT INTO `admin_operation_log` VALUES (1645, 1, 'admin/formula-lefts', 'POST', '127.0.0.1', '{\"name\":\"\\u603b\\u5206\",\"course_id\":\"1\",\"Pid\":\"0\",\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/formula-lefts\"}', '2020-04-10 13:15:33', '2020-04-10 13:15:33');
INSERT INTO `admin_operation_log` VALUES (1646, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-10 13:15:33', '2020-04-10 13:15:33');
INSERT INTO `admin_operation_log` VALUES (1647, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-10 13:19:01', '2020-04-10 13:19:01');
INSERT INTO `admin_operation_log` VALUES (1648, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-10 13:19:13', '2020-04-10 13:19:13');
INSERT INTO `admin_operation_log` VALUES (1649, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:19:32', '2020-04-10 13:19:32');
INSERT INTO `admin_operation_log` VALUES (1650, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '[]', '2020-04-10 13:27:15', '2020-04-10 13:27:15');
INSERT INTO `admin_operation_log` VALUES (1651, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '[]', '2020-04-10 13:37:42', '2020-04-10 13:37:42');
INSERT INTO `admin_operation_log` VALUES (1652, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '[]', '2020-04-10 13:59:12', '2020-04-10 13:59:12');
INSERT INTO `admin_operation_log` VALUES (1653, 1, 'admin/formula-lefts', 'POST', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd5\",\"course_id\":\"1\",\"Pid\":\"\\u65e0\\u7236\\u516c\\u5f0f\",\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\"}', '2020-04-10 13:59:38', '2020-04-10 13:59:38');
INSERT INTO `admin_operation_log` VALUES (1654, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '[]', '2020-04-10 13:59:38', '2020-04-10 13:59:38');
INSERT INTO `admin_operation_log` VALUES (1655, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '[]', '2020-04-10 14:00:32', '2020-04-10 14:00:32');
INSERT INTO `admin_operation_log` VALUES (1656, 1, 'admin/formula-lefts', 'POST', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd5\",\"course_id\":\"1\",\"Pid\":\"0\",\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\"}', '2020-04-10 14:00:40', '2020-04-10 14:00:40');
INSERT INTO `admin_operation_log` VALUES (1657, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-10 14:00:41', '2020-04-10 14:00:41');
INSERT INTO `admin_operation_log` VALUES (1658, 1, 'admin/formula-lefts/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:00:45', '2020-04-10 14:00:45');
INSERT INTO `admin_operation_log` VALUES (1659, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:00:48', '2020-04-10 14:00:48');
INSERT INTO `admin_operation_log` VALUES (1660, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-10 14:00:58', '2020-04-10 14:00:58');
INSERT INTO `admin_operation_log` VALUES (1661, 1, 'admin/formula-lefts/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:01:00', '2020-04-10 14:01:00');
INSERT INTO `admin_operation_log` VALUES (1662, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:01:02', '2020-04-10 14:01:02');
INSERT INTO `admin_operation_log` VALUES (1663, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:01:07', '2020-04-10 14:01:07');
INSERT INTO `admin_operation_log` VALUES (1664, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:01:08', '2020-04-10 14:01:08');
INSERT INTO `admin_operation_log` VALUES (1665, 1, 'admin/formula-lefts/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:01:11', '2020-04-10 14:01:11');
INSERT INTO `admin_operation_log` VALUES (1666, 1, 'admin/formula-lefts/2', 'PUT', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd5\",\"course_id\":\"1\",\"Pid\":\"2\",\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/formula-lefts\"}', '2020-04-10 14:04:01', '2020-04-10 14:04:01');
INSERT INTO `admin_operation_log` VALUES (1667, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-10 14:04:01', '2020-04-10 14:04:01');
INSERT INTO `admin_operation_log` VALUES (1668, 1, 'admin/formula-lefts/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:04:07', '2020-04-10 14:04:07');
INSERT INTO `admin_operation_log` VALUES (1669, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:04:15', '2020-04-10 14:04:15');
INSERT INTO `admin_operation_log` VALUES (1670, 1, 'admin/formula-lefts/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:04:17', '2020-04-10 14:04:17');
INSERT INTO `admin_operation_log` VALUES (1671, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:04:21', '2020-04-10 14:04:21');
INSERT INTO `admin_operation_log` VALUES (1672, 1, 'admin/formula-lefts/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:04:23', '2020-04-10 14:04:23');
INSERT INTO `admin_operation_log` VALUES (1673, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:04:25', '2020-04-10 14:04:25');
INSERT INTO `admin_operation_log` VALUES (1674, 1, 'admin/formula-lefts/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:04:27', '2020-04-10 14:04:27');
INSERT INTO `admin_operation_log` VALUES (1675, 1, 'admin/formula-lefts/2', 'PUT', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd5\",\"course_id\":\"1\",\"Pid\":\"1\",\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/formula-lefts\"}', '2020-04-10 14:04:32', '2020-04-10 14:04:32');
INSERT INTO `admin_operation_log` VALUES (1676, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-10 14:04:32', '2020-04-10 14:04:32');
INSERT INTO `admin_operation_log` VALUES (1677, 1, 'admin/formula-lefts/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:04:34', '2020-04-10 14:04:34');
INSERT INTO `admin_operation_log` VALUES (1678, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:04:39', '2020-04-10 14:04:39');
INSERT INTO `admin_operation_log` VALUES (1679, 1, 'admin/formula-lefts/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:07:14', '2020-04-10 14:07:14');
INSERT INTO `admin_operation_log` VALUES (1680, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-10 14:07:14', '2020-04-10 14:07:14');
INSERT INTO `admin_operation_log` VALUES (1681, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-10 14:07:44', '2020-04-10 14:07:44');
INSERT INTO `admin_operation_log` VALUES (1682, 1, 'admin/formula-lefts/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:07:47', '2020-04-10 14:07:47');
INSERT INTO `admin_operation_log` VALUES (1683, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-10 14:07:48', '2020-04-10 14:07:48');
INSERT INTO `admin_operation_log` VALUES (1684, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-10 14:07:57', '2020-04-10 14:07:57');
INSERT INTO `admin_operation_log` VALUES (1685, 1, 'admin/formula-lefts/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:07:59', '2020-04-10 14:07:59');
INSERT INTO `admin_operation_log` VALUES (1686, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:08:02', '2020-04-10 14:08:02');
INSERT INTO `admin_operation_log` VALUES (1687, 1, 'admin/formula-lefts/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:08:04', '2020-04-10 14:08:04');
INSERT INTO `admin_operation_log` VALUES (1688, 1, 'admin/formula-lefts/2/edit', 'GET', '127.0.0.1', '[]', '2020-04-10 14:09:41', '2020-04-10 14:09:41');
INSERT INTO `admin_operation_log` VALUES (1689, 1, 'admin/formula-lefts/2/edit', 'GET', '127.0.0.1', '[]', '2020-04-10 14:09:55', '2020-04-10 14:09:55');
INSERT INTO `admin_operation_log` VALUES (1690, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:10:01', '2020-04-10 14:10:01');
INSERT INTO `admin_operation_log` VALUES (1691, 1, 'admin/formula-lefts/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:10:03', '2020-04-10 14:10:03');
INSERT INTO `admin_operation_log` VALUES (1692, 1, 'admin/formula-lefts/2', 'PUT', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd5\",\"course_id\":\"1\",\"Pid\":\"0\",\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/formula-lefts\"}', '2020-04-10 14:10:08', '2020-04-10 14:10:08');
INSERT INTO `admin_operation_log` VALUES (1693, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-10 14:10:08', '2020-04-10 14:10:08');
INSERT INTO `admin_operation_log` VALUES (1694, 1, 'admin/formula-lefts/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:10:12', '2020-04-10 14:10:12');
INSERT INTO `admin_operation_log` VALUES (1695, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:10:35', '2020-04-10 14:10:35');
INSERT INTO `admin_operation_log` VALUES (1696, 1, 'admin/formula-lefts/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:11:47', '2020-04-10 14:11:47');
INSERT INTO `admin_operation_log` VALUES (1697, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:11:50', '2020-04-10 14:11:50');
INSERT INTO `admin_operation_log` VALUES (1698, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:11:51', '2020-04-10 14:11:51');
INSERT INTO `admin_operation_log` VALUES (1699, 1, 'admin/formula-lefts', 'POST', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd52\",\"course_id\":\"1\",\"Pid\":\"0\",\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/formula-lefts\"}', '2020-04-10 14:16:52', '2020-04-10 14:16:52');
INSERT INTO `admin_operation_log` VALUES (1700, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-10 14:16:52', '2020-04-10 14:16:52');
INSERT INTO `admin_operation_log` VALUES (1701, 1, 'admin/formula-lefts/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:16:57', '2020-04-10 14:16:57');
INSERT INTO `admin_operation_log` VALUES (1702, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:17:05', '2020-04-10 14:17:05');
INSERT INTO `admin_operation_log` VALUES (1703, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:18:03', '2020-04-10 14:18:03');
INSERT INTO `admin_operation_log` VALUES (1704, 1, 'admin/formula-lefts', 'POST', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd53\",\"course_id\":\"1\",\"pid\":\"0\",\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/formula-lefts\"}', '2020-04-10 14:18:10', '2020-04-10 14:18:10');
INSERT INTO `admin_operation_log` VALUES (1705, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-10 14:18:10', '2020-04-10 14:18:10');
INSERT INTO `admin_operation_log` VALUES (1706, 1, 'admin/formula-lefts/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:18:14', '2020-04-10 14:18:14');
INSERT INTO `admin_operation_log` VALUES (1707, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:18:19', '2020-04-10 14:18:19');
INSERT INTO `admin_operation_log` VALUES (1708, 1, 'admin/formula-lefts/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:18:21', '2020-04-10 14:18:21');
INSERT INTO `admin_operation_log` VALUES (1709, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:18:24', '2020-04-10 14:18:24');
INSERT INTO `admin_operation_log` VALUES (1710, 1, 'admin/formula-lefts/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:18:33', '2020-04-10 14:18:33');
INSERT INTO `admin_operation_log` VALUES (1711, 1, 'admin/formula-lefts/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd53\",\"course_id\":\"1\",\"pid\":\"0\",\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/formula-lefts\"}', '2020-04-10 14:18:37', '2020-04-10 14:18:37');
INSERT INTO `admin_operation_log` VALUES (1712, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-10 14:18:37', '2020-04-10 14:18:37');
INSERT INTO `admin_operation_log` VALUES (1713, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-10 14:25:52', '2020-04-10 14:25:52');
INSERT INTO `admin_operation_log` VALUES (1714, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:25:55', '2020-04-10 14:25:55');
INSERT INTO `admin_operation_log` VALUES (1715, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '[]', '2020-04-10 14:26:06', '2020-04-10 14:26:06');
INSERT INTO `admin_operation_log` VALUES (1716, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '[]', '2020-04-10 14:26:37', '2020-04-10 14:26:37');
INSERT INTO `admin_operation_log` VALUES (1717, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '[]', '2020-04-10 14:26:58', '2020-04-10 14:26:58');
INSERT INTO `admin_operation_log` VALUES (1718, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '[]', '2020-04-10 14:27:43', '2020-04-10 14:27:43');
INSERT INTO `admin_operation_log` VALUES (1719, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '[]', '2020-04-10 14:27:54', '2020-04-10 14:27:54');
INSERT INTO `admin_operation_log` VALUES (1720, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '[]', '2020-04-10 14:28:03', '2020-04-10 14:28:03');
INSERT INTO `admin_operation_log` VALUES (1721, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '[]', '2020-04-10 14:28:49', '2020-04-10 14:28:49');
INSERT INTO `admin_operation_log` VALUES (1722, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '[]', '2020-04-10 14:29:16', '2020-04-10 14:29:16');
INSERT INTO `admin_operation_log` VALUES (1723, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '[]', '2020-04-10 14:30:30', '2020-04-10 14:30:30');
INSERT INTO `admin_operation_log` VALUES (1724, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '[]', '2020-04-10 14:39:40', '2020-04-10 14:39:40');
INSERT INTO `admin_operation_log` VALUES (1725, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '[]', '2020-04-10 14:40:38', '2020-04-10 14:40:38');
INSERT INTO `admin_operation_log` VALUES (1726, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '[]', '2020-04-10 14:41:03', '2020-04-10 14:41:03');
INSERT INTO `admin_operation_log` VALUES (1727, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '[]', '2020-04-10 14:41:34', '2020-04-10 14:41:34');
INSERT INTO `admin_operation_log` VALUES (1728, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '[]', '2020-04-10 14:41:54', '2020-04-10 14:41:54');
INSERT INTO `admin_operation_log` VALUES (1729, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '[]', '2020-04-10 14:42:22', '2020-04-10 14:42:22');
INSERT INTO `admin_operation_log` VALUES (1730, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '[]', '2020-04-10 14:43:03', '2020-04-10 14:43:03');
INSERT INTO `admin_operation_log` VALUES (1731, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '[]', '2020-04-10 14:43:40', '2020-04-10 14:43:40');
INSERT INTO `admin_operation_log` VALUES (1732, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '[]', '2020-04-10 14:46:06', '2020-04-10 14:46:06');
INSERT INTO `admin_operation_log` VALUES (1733, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '[]', '2020-04-10 14:46:16', '2020-04-10 14:46:16');
INSERT INTO `admin_operation_log` VALUES (1734, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:46:20', '2020-04-10 14:46:20');
INSERT INTO `admin_operation_log` VALUES (1735, 1, 'admin/formula-lefts/2,3,4', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\"}', '2020-04-10 14:46:26', '2020-04-10 14:46:26');
INSERT INTO `admin_operation_log` VALUES (1736, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:46:26', '2020-04-10 14:46:26');
INSERT INTO `admin_operation_log` VALUES (1737, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:46:28', '2020-04-10 14:46:28');
INSERT INTO `admin_operation_log` VALUES (1738, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:46:41', '2020-04-10 14:46:41');
INSERT INTO `admin_operation_log` VALUES (1739, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-10 14:47:37', '2020-04-10 14:47:37');
INSERT INTO `admin_operation_log` VALUES (1740, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:47:38', '2020-04-10 14:47:38');
INSERT INTO `admin_operation_log` VALUES (1741, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '[]', '2020-04-10 14:50:00', '2020-04-10 14:50:00');
INSERT INTO `admin_operation_log` VALUES (1742, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '[]', '2020-04-10 14:50:13', '2020-04-10 14:50:13');
INSERT INTO `admin_operation_log` VALUES (1743, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '[]', '2020-04-10 14:50:24', '2020-04-10 14:50:24');
INSERT INTO `admin_operation_log` VALUES (1744, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '[]', '2020-04-10 14:52:51', '2020-04-10 14:52:51');
INSERT INTO `admin_operation_log` VALUES (1745, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:53:37', '2020-04-10 14:53:37');
INSERT INTO `admin_operation_log` VALUES (1746, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:53:59', '2020-04-10 14:53:59');
INSERT INTO `admin_operation_log` VALUES (1747, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:54:01', '2020-04-10 14:54:01');
INSERT INTO `admin_operation_log` VALUES (1748, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '[]', '2020-04-10 14:55:07', '2020-04-10 14:55:07');
INSERT INTO `admin_operation_log` VALUES (1749, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '[]', '2020-04-10 14:56:10', '2020-04-10 14:56:10');
INSERT INTO `admin_operation_log` VALUES (1750, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:56:13', '2020-04-10 14:56:13');
INSERT INTO `admin_operation_log` VALUES (1751, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-10 15:04:35', '2020-04-10 15:04:35');
INSERT INTO `admin_operation_log` VALUES (1752, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:04:51', '2020-04-10 15:04:51');
INSERT INTO `admin_operation_log` VALUES (1753, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-10 15:09:40', '2020-04-10 15:09:40');
INSERT INTO `admin_operation_log` VALUES (1754, 1, 'admin/meta-cal-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:10:00', '2020-04-10 15:10:00');
INSERT INTO `admin_operation_log` VALUES (1755, 1, 'admin/meta-cal-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:10:17', '2020-04-10 15:10:17');
INSERT INTO `admin_operation_log` VALUES (1756, 1, 'admin/meta-cal-types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:10:19', '2020-04-10 15:10:19');
INSERT INTO `admin_operation_log` VALUES (1757, 1, 'admin/meta-cal-types', 'POST', '127.0.0.1', '{\"name\":\"\\u5e73\\u65f6\\u5206\",\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/meta-cal-types\"}', '2020-04-10 15:10:31', '2020-04-10 15:10:31');
INSERT INTO `admin_operation_log` VALUES (1758, 1, 'admin/meta-cal-types', 'GET', '127.0.0.1', '[]', '2020-04-10 15:10:31', '2020-04-10 15:10:31');
INSERT INTO `admin_operation_log` VALUES (1759, 1, 'admin/meta-cal-types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:10:32', '2020-04-10 15:10:32');
INSERT INTO `admin_operation_log` VALUES (1760, 1, 'admin/meta-cal-types', 'POST', '127.0.0.1', '{\"name\":\"\\u5b9e\\u9a8c\",\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/meta-cal-types\"}', '2020-04-10 15:10:42', '2020-04-10 15:10:42');
INSERT INTO `admin_operation_log` VALUES (1761, 1, 'admin/meta-cal-types', 'GET', '127.0.0.1', '[]', '2020-04-10 15:10:42', '2020-04-10 15:10:42');
INSERT INTO `admin_operation_log` VALUES (1762, 1, 'admin/meta-cal-types/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:10:44', '2020-04-10 15:10:44');
INSERT INTO `admin_operation_log` VALUES (1763, 1, 'admin/meta-cal-types/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u8003\\u52e4\",\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/meta-cal-types\"}', '2020-04-10 15:10:49', '2020-04-10 15:10:49');
INSERT INTO `admin_operation_log` VALUES (1764, 1, 'admin/meta-cal-types', 'GET', '127.0.0.1', '[]', '2020-04-10 15:10:49', '2020-04-10 15:10:49');
INSERT INTO `admin_operation_log` VALUES (1765, 1, 'admin/meta-cal-types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:10:51', '2020-04-10 15:10:51');
INSERT INTO `admin_operation_log` VALUES (1766, 1, 'admin/meta-cal-types', 'POST', '127.0.0.1', '{\"name\":\"\\u8bfe\\u540e\\u4f5c\\u4e1a\",\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/meta-cal-types\"}', '2020-04-10 15:10:59', '2020-04-10 15:10:59');
INSERT INTO `admin_operation_log` VALUES (1767, 1, 'admin/meta-cal-types', 'GET', '127.0.0.1', '[]', '2020-04-10 15:10:59', '2020-04-10 15:10:59');
INSERT INTO `admin_operation_log` VALUES (1768, 1, 'admin/meta-cal-types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:11:01', '2020-04-10 15:11:01');
INSERT INTO `admin_operation_log` VALUES (1769, 1, 'admin/meta-cal-types', 'POST', '127.0.0.1', '{\"name\":\"\\u671f\\u672b\\u6210\\u7ee9\",\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/meta-cal-types\"}', '2020-04-10 15:11:07', '2020-04-10 15:11:07');
INSERT INTO `admin_operation_log` VALUES (1770, 1, 'admin/meta-cal-types', 'GET', '127.0.0.1', '[]', '2020-04-10 15:11:07', '2020-04-10 15:11:07');
INSERT INTO `admin_operation_log` VALUES (1771, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:11:10', '2020-04-10 15:11:10');
INSERT INTO `admin_operation_log` VALUES (1772, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:11:13', '2020-04-10 15:11:13');
INSERT INTO `admin_operation_log` VALUES (1773, 1, 'admin/formula-lefts/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u603b\\u5206\",\"course_id\":\"1\",\"pid\":\"1\",\"metaCalTypes\":[\"1\",\"2\",\"3\",\"4\",null],\"_token\":\"HlWJvwIdLbrth7RPBtuY3QXfha6NfA79N8LahE0C\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/formula-lefts\"}', '2020-04-10 15:11:22', '2020-04-10 15:11:22');
INSERT INTO `admin_operation_log` VALUES (1774, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-10 15:11:22', '2020-04-10 15:11:22');
INSERT INTO `admin_operation_log` VALUES (1775, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:11:36', '2020-04-10 15:11:36');
INSERT INTO `admin_operation_log` VALUES (1776, 1, 'admin/meta-cal-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:11:46', '2020-04-10 15:11:46');
INSERT INTO `admin_operation_log` VALUES (1777, 1, 'admin/meta-cal-types', 'GET', '127.0.0.1', '[]', '2020-04-10 15:13:19', '2020-04-10 15:13:19');
INSERT INTO `admin_operation_log` VALUES (1778, 1, 'admin/meta-cal-types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:13:22', '2020-04-10 15:13:22');
INSERT INTO `admin_operation_log` VALUES (1779, 1, 'admin/meta-cal-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:13:24', '2020-04-10 15:13:24');
INSERT INTO `admin_operation_log` VALUES (1780, 1, 'admin/meta-cal-types', 'GET', '127.0.0.1', '[]', '2020-04-10 15:14:28', '2020-04-10 15:14:28');
INSERT INTO `admin_operation_log` VALUES (1781, 1, 'admin/meta-cal-types', 'GET', '127.0.0.1', '[]', '2020-04-10 15:15:48', '2020-04-10 15:15:48');
INSERT INTO `admin_operation_log` VALUES (1782, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:15:53', '2020-04-10 15:15:53');
INSERT INTO `admin_operation_log` VALUES (1783, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:15:56', '2020-04-10 15:15:56');
INSERT INTO `admin_operation_log` VALUES (1784, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:15:58', '2020-04-10 15:15:58');
INSERT INTO `admin_operation_log` VALUES (1785, 1, 'admin/meta-cal-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:16:06', '2020-04-10 15:16:06');
INSERT INTO `admin_operation_log` VALUES (1786, 1, 'admin/meta-cal-types/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:16:08', '2020-04-10 15:16:08');
INSERT INTO `admin_operation_log` VALUES (1787, 1, 'admin/meta-cal-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:16:11', '2020-04-10 15:16:11');
INSERT INTO `admin_operation_log` VALUES (1788, 1, 'admin/meta-cal-types/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:16:12', '2020-04-10 15:16:12');
INSERT INTO `admin_operation_log` VALUES (1789, 1, 'admin/meta-cal-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:16:15', '2020-04-10 15:16:15');
INSERT INTO `admin_operation_log` VALUES (1790, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:16:32', '2020-04-10 15:16:32');
INSERT INTO `admin_operation_log` VALUES (1791, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-11 00:19:12', '2020-04-11 00:19:12');
INSERT INTO `admin_operation_log` VALUES (1792, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 00:19:18', '2020-04-11 00:19:18');
INSERT INTO `admin_operation_log` VALUES (1793, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 00:19:23', '2020-04-11 00:19:23');
INSERT INTO `admin_operation_log` VALUES (1794, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 00:19:26', '2020-04-11 00:19:26');
INSERT INTO `admin_operation_log` VALUES (1795, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 00:19:48', '2020-04-11 00:19:48');
INSERT INTO `admin_operation_log` VALUES (1796, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5143\\u8ba1\\u7b97\\u9879\\u7ba1\\u7406\",\"icon\":\"fa-connectdevelop\",\"uri\":\"\\/meta-cals\",\"roles\":[null],\"permission\":null,\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\"}', '2020-04-11 00:21:12', '2020-04-11 00:21:12');
INSERT INTO `admin_operation_log` VALUES (1797, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-11 00:21:12', '2020-04-11 00:21:12');
INSERT INTO `admin_operation_log` VALUES (1798, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":14,\\\"children\\\":[{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":15},{\\\"id\\\":18},{\\\"id\\\":21},{\\\"id\\\":19}]},{\\\"id\\\":13,\\\"children\\\":[{\\\"id\\\":8},{\\\"id\\\":10}]},{\\\"id\\\":16,\\\"children\\\":[{\\\"id\\\":17},{\\\"id\\\":20}]},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-04-11 00:21:20', '2020-04-11 00:21:20');
INSERT INTO `admin_operation_log` VALUES (1799, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 00:21:20', '2020-04-11 00:21:20');
INSERT INTO `admin_operation_log` VALUES (1800, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-11 00:21:22', '2020-04-11 00:21:22');
INSERT INTO `admin_operation_log` VALUES (1801, 1, 'admin/meta-cals', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 00:21:26', '2020-04-11 00:21:26');
INSERT INTO `admin_operation_log` VALUES (1802, 1, 'admin/meta-cals', 'GET', '127.0.0.1', '[]', '2020-04-11 00:21:48', '2020-04-11 00:21:48');
INSERT INTO `admin_operation_log` VALUES (1803, 1, 'admin/meta-cals', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 00:21:51', '2020-04-11 00:21:51');
INSERT INTO `admin_operation_log` VALUES (1804, 1, 'admin/meta-cals', 'GET', '127.0.0.1', '[]', '2020-04-11 00:21:57', '2020-04-11 00:21:57');
INSERT INTO `admin_operation_log` VALUES (1805, 1, 'admin/meta-cals', 'GET', '127.0.0.1', '[]', '2020-04-11 00:23:47', '2020-04-11 00:23:47');
INSERT INTO `admin_operation_log` VALUES (1806, 1, 'admin/meta-cals', 'GET', '127.0.0.1', '[]', '2020-04-11 00:23:57', '2020-04-11 00:23:57');
INSERT INTO `admin_operation_log` VALUES (1807, 1, 'admin/meta-cals', 'GET', '127.0.0.1', '[]', '2020-04-11 00:25:46', '2020-04-11 00:25:46');
INSERT INTO `admin_operation_log` VALUES (1808, 1, 'admin/meta-cals/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 00:28:45', '2020-04-11 00:28:45');
INSERT INTO `admin_operation_log` VALUES (1809, 1, 'admin/meta-cals', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 00:29:07', '2020-04-11 00:29:07');
INSERT INTO `admin_operation_log` VALUES (1810, 1, 'admin/meta-cals', 'GET', '127.0.0.1', '[]', '2020-04-11 00:31:23', '2020-04-11 00:31:23');
INSERT INTO `admin_operation_log` VALUES (1811, 1, 'admin/meta-cals', 'GET', '127.0.0.1', '[]', '2020-04-11 00:31:43', '2020-04-11 00:31:43');
INSERT INTO `admin_operation_log` VALUES (1812, 1, 'admin/meta-cals', 'GET', '127.0.0.1', '[]', '2020-04-11 00:35:52', '2020-04-11 00:35:52');
INSERT INTO `admin_operation_log` VALUES (1813, 1, 'admin/meta-cals', 'GET', '127.0.0.1', '[]', '2020-04-11 00:36:04', '2020-04-11 00:36:04');
INSERT INTO `admin_operation_log` VALUES (1814, 1, 'admin/meta-cals/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 00:36:27', '2020-04-11 00:36:27');
INSERT INTO `admin_operation_log` VALUES (1815, 1, 'admin/meta-cals', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 00:36:30', '2020-04-11 00:36:30');
INSERT INTO `admin_operation_log` VALUES (1816, 1, 'admin/meta-cals', 'GET', '127.0.0.1', '[]', '2020-04-11 00:37:48', '2020-04-11 00:37:48');
INSERT INTO `admin_operation_log` VALUES (1817, 1, 'admin/meta-cals', 'GET', '127.0.0.1', '[]', '2020-04-11 00:38:02', '2020-04-11 00:38:02');
INSERT INTO `admin_operation_log` VALUES (1818, 1, 'admin/meta-cals', 'GET', '127.0.0.1', '[]', '2020-04-11 00:43:23', '2020-04-11 00:43:23');
INSERT INTO `admin_operation_log` VALUES (1819, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 00:43:52', '2020-04-11 00:43:52');
INSERT INTO `admin_operation_log` VALUES (1820, 1, 'admin/professions', 'GET', '127.0.0.1', '[]', '2020-04-11 00:44:13', '2020-04-11 00:44:13');
INSERT INTO `admin_operation_log` VALUES (1821, 1, 'admin/professions/1', 'PUT', '127.0.0.1', '{\"name\":\"intro\",\"value\":\"\\u5b87\\u5b99\\u6700\\u725b\\u903c111\",\"pk\":\"1\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2020-04-11 00:44:20', '2020-04-11 00:44:20');
INSERT INTO `admin_operation_log` VALUES (1822, 1, 'admin/meta-cals', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 00:45:11', '2020-04-11 00:45:11');
INSERT INTO `admin_operation_log` VALUES (1823, 1, 'admin/meta-cals', 'GET', '127.0.0.1', '[]', '2020-04-11 00:51:07', '2020-04-11 00:51:07');
INSERT INTO `admin_operation_log` VALUES (1824, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 00:53:48', '2020-04-11 00:53:48');
INSERT INTO `admin_operation_log` VALUES (1825, 1, 'admin/professions', 'GET', '127.0.0.1', '[]', '2020-04-11 00:53:59', '2020-04-11 00:53:59');
INSERT INTO `admin_operation_log` VALUES (1826, 1, 'admin/professions/1', 'PUT', '127.0.0.1', '{\"name\":\"intro\",\"value\":\"\\u5b87\\u5b99\\u6700\\u725b\\u903c\",\"pk\":\"1\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2020-04-11 00:54:10', '2020-04-11 00:54:10');
INSERT INTO `admin_operation_log` VALUES (1827, 1, 'admin/meta-cals', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 00:54:34', '2020-04-11 00:54:34');
INSERT INTO `admin_operation_log` VALUES (1828, 1, 'admin/meta-cals', 'GET', '127.0.0.1', '[]', '2020-04-11 00:55:09', '2020-04-11 00:55:09');
INSERT INTO `admin_operation_log` VALUES (1829, 1, 'admin/meta-cals', 'GET', '127.0.0.1', '[]', '2020-04-11 01:00:18', '2020-04-11 01:00:18');
INSERT INTO `admin_operation_log` VALUES (1830, 1, 'admin/meta-cals', 'GET', '127.0.0.1', '[]', '2020-04-11 01:01:01', '2020-04-11 01:01:01');
INSERT INTO `admin_operation_log` VALUES (1831, 1, 'admin/meta-cals/1', 'PUT', '127.0.0.1', '{\"name\":\"number\",\"value\":\"10\",\"pk\":\"1\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2020-04-11 01:01:13', '2020-04-11 01:01:13');
INSERT INTO `admin_operation_log` VALUES (1832, 1, 'admin/meta-cals', 'GET', '127.0.0.1', '[]', '2020-04-11 01:02:22', '2020-04-11 01:02:22');
INSERT INTO `admin_operation_log` VALUES (1833, 1, 'admin/meta-cals/2', 'PUT', '127.0.0.1', '{\"name\":\"number\",\"value\":\"10\",\"pk\":\"2\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2020-04-11 01:02:26', '2020-04-11 01:02:26');
INSERT INTO `admin_operation_log` VALUES (1834, 1, 'admin/meta-cals', 'GET', '127.0.0.1', '[]', '2020-04-11 01:02:53', '2020-04-11 01:02:53');
INSERT INTO `admin_operation_log` VALUES (1835, 1, 'admin/meta-cals', 'GET', '127.0.0.1', '[]', '2020-04-11 01:03:03', '2020-04-11 01:03:03');
INSERT INTO `admin_operation_log` VALUES (1836, 1, 'admin/meta-cals/1', 'PUT', '127.0.0.1', '{\"name\":\"proportion\",\"value\":\"0.1\",\"pk\":\"1\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2020-04-11 01:03:12', '2020-04-11 01:03:12');
INSERT INTO `admin_operation_log` VALUES (1837, 1, 'admin/meta-cals', 'GET', '127.0.0.1', '[]', '2020-04-11 01:03:27', '2020-04-11 01:03:27');
INSERT INTO `admin_operation_log` VALUES (1838, 1, 'admin/meta-cals', 'GET', '127.0.0.1', '[]', '2020-04-11 01:04:07', '2020-04-11 01:04:07');
INSERT INTO `admin_operation_log` VALUES (1839, 1, 'admin/meta-cals', 'GET', '127.0.0.1', '[]', '2020-04-11 01:04:13', '2020-04-11 01:04:13');
INSERT INTO `admin_operation_log` VALUES (1840, 1, 'admin/meta-cals', 'GET', '127.0.0.1', '[]', '2020-04-11 01:04:34', '2020-04-11 01:04:34');
INSERT INTO `admin_operation_log` VALUES (1841, 1, 'admin/meta-cals/1', 'PUT', '127.0.0.1', '{\"name\":\"number\",\"value\":\"101\",\"pk\":\"1\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2020-04-11 01:04:38', '2020-04-11 01:04:38');
INSERT INTO `admin_operation_log` VALUES (1842, 1, 'admin/meta-cals/1', 'PUT', '127.0.0.1', '{\"name\":\"number\",\"value\":\"1\",\"pk\":\"1\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2020-04-11 01:04:42', '2020-04-11 01:04:42');
INSERT INTO `admin_operation_log` VALUES (1843, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 01:08:00', '2020-04-11 01:08:00');
INSERT INTO `admin_operation_log` VALUES (1844, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 01:08:02', '2020-04-11 01:08:02');
INSERT INTO `admin_operation_log` VALUES (1845, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '[]', '2020-04-11 01:08:43', '2020-04-11 01:08:43');
INSERT INTO `admin_operation_log` VALUES (1846, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 01:08:53', '2020-04-11 01:08:53');
INSERT INTO `admin_operation_log` VALUES (1847, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 01:14:18', '2020-04-11 01:14:18');
INSERT INTO `admin_operation_log` VALUES (1848, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '[]', '2020-04-11 01:14:55', '2020-04-11 01:14:55');
INSERT INTO `admin_operation_log` VALUES (1849, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '[]', '2020-04-11 01:15:48', '2020-04-11 01:15:48');
INSERT INTO `admin_operation_log` VALUES (1850, 1, 'admin/meta-cals', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 01:15:56', '2020-04-11 01:15:56');
INSERT INTO `admin_operation_log` VALUES (1851, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 01:16:00', '2020-04-11 01:16:00');
INSERT INTO `admin_operation_log` VALUES (1852, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 01:16:01', '2020-04-11 01:16:01');
INSERT INTO `admin_operation_log` VALUES (1853, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '[]', '2020-04-11 01:17:29', '2020-04-11 01:17:29');
INSERT INTO `admin_operation_log` VALUES (1854, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '[]', '2020-04-11 01:18:12', '2020-04-11 01:18:12');
INSERT INTO `admin_operation_log` VALUES (1855, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '[]', '2020-04-11 01:18:25', '2020-04-11 01:18:25');
INSERT INTO `admin_operation_log` VALUES (1856, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '[]', '2020-04-11 01:19:35', '2020-04-11 01:19:35');
INSERT INTO `admin_operation_log` VALUES (1857, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '[]', '2020-04-11 01:20:04', '2020-04-11 01:20:04');
INSERT INTO `admin_operation_log` VALUES (1858, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '[]', '2020-04-11 01:21:36', '2020-04-11 01:21:36');
INSERT INTO `admin_operation_log` VALUES (1859, 1, 'admin/meta-cals/1', 'PUT', '127.0.0.1', '{\"name\":\"number\",\"value\":\"10\",\"pk\":\"1\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2020-04-11 01:21:46', '2020-04-11 01:21:46');
INSERT INTO `admin_operation_log` VALUES (1860, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '[]', '2020-04-11 01:22:27', '2020-04-11 01:22:27');
INSERT INTO `admin_operation_log` VALUES (1861, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '[]', '2020-04-11 01:22:46', '2020-04-11 01:22:46');
INSERT INTO `admin_operation_log` VALUES (1862, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '[]', '2020-04-11 01:23:12', '2020-04-11 01:23:12');
INSERT INTO `admin_operation_log` VALUES (1863, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '[]', '2020-04-11 01:23:19', '2020-04-11 01:23:19');
INSERT INTO `admin_operation_log` VALUES (1864, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '[]', '2020-04-11 01:23:26', '2020-04-11 01:23:26');
INSERT INTO `admin_operation_log` VALUES (1865, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '[]', '2020-04-11 01:25:44', '2020-04-11 01:25:44');
INSERT INTO `admin_operation_log` VALUES (1866, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 01:25:53', '2020-04-11 01:25:53');
INSERT INTO `admin_operation_log` VALUES (1867, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 01:25:55', '2020-04-11 01:25:55');
INSERT INTO `admin_operation_log` VALUES (1868, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 01:25:58', '2020-04-11 01:25:58');
INSERT INTO `admin_operation_log` VALUES (1869, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 01:26:11', '2020-04-11 01:26:11');
INSERT INTO `admin_operation_log` VALUES (1870, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 01:26:14', '2020-04-11 01:26:14');
INSERT INTO `admin_operation_log` VALUES (1871, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 01:26:15', '2020-04-11 01:26:15');
INSERT INTO `admin_operation_log` VALUES (1872, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '[]', '2020-04-11 01:26:36', '2020-04-11 01:26:36');
INSERT INTO `admin_operation_log` VALUES (1873, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '[]', '2020-04-11 01:27:41', '2020-04-11 01:27:41');
INSERT INTO `admin_operation_log` VALUES (1874, 1, 'admin/meta-cals', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 01:27:53', '2020-04-11 01:27:53');
INSERT INTO `admin_operation_log` VALUES (1875, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 01:27:56', '2020-04-11 01:27:56');
INSERT INTO `admin_operation_log` VALUES (1876, 1, 'admin/auth/menu/21', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\"}', '2020-04-11 01:28:00', '2020-04-11 01:28:00');
INSERT INTO `admin_operation_log` VALUES (1877, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 01:28:00', '2020-04-11 01:28:00');
INSERT INTO `admin_operation_log` VALUES (1878, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":14,\\\"children\\\":[{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":15},{\\\"id\\\":18},{\\\"id\\\":19}]},{\\\"id\\\":13,\\\"children\\\":[{\\\"id\\\":8},{\\\"id\\\":10}]},{\\\"id\\\":16,\\\"children\\\":[{\\\"id\\\":17},{\\\"id\\\":20}]},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-04-11 01:28:02', '2020-04-11 01:28:02');
INSERT INTO `admin_operation_log` VALUES (1879, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 01:28:02', '2020-04-11 01:28:02');
INSERT INTO `admin_operation_log` VALUES (1880, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-11 01:28:03', '2020-04-11 01:28:03');
INSERT INTO `admin_operation_log` VALUES (1881, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 01:28:09', '2020-04-11 01:28:09');
INSERT INTO `admin_operation_log` VALUES (1882, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 01:29:15', '2020-04-11 01:29:15');
INSERT INTO `admin_operation_log` VALUES (1883, 1, 'admin/fractions', 'GET', '127.0.0.1', '[]', '2020-04-11 01:29:50', '2020-04-11 01:29:50');
INSERT INTO `admin_operation_log` VALUES (1884, 1, 'admin/fractions', 'GET', '127.0.0.1', '[]', '2020-04-11 01:51:17', '2020-04-11 01:51:17');
INSERT INTO `admin_operation_log` VALUES (1885, 1, 'admin/fractions', 'GET', '127.0.0.1', '[]', '2020-04-11 01:54:55', '2020-04-11 01:54:55');
INSERT INTO `admin_operation_log` VALUES (1886, 1, 'admin/fractions', 'GET', '127.0.0.1', '[]', '2020-04-11 01:55:58', '2020-04-11 01:55:58');
INSERT INTO `admin_operation_log` VALUES (1887, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 01:55:59', '2020-04-11 01:55:59');
INSERT INTO `admin_operation_log` VALUES (1888, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 01:56:04', '2020-04-11 01:56:04');
INSERT INTO `admin_operation_log` VALUES (1889, 1, 'admin/auth/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 01:56:08', '2020-04-11 01:56:08');
INSERT INTO `admin_operation_log` VALUES (1890, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 01:56:10', '2020-04-11 01:56:10');
INSERT INTO `admin_operation_log` VALUES (1891, 1, 'admin/auth/users/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 01:56:12', '2020-04-11 01:56:12');
INSERT INTO `admin_operation_log` VALUES (1892, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 01:56:13', '2020-04-11 01:56:13');
INSERT INTO `admin_operation_log` VALUES (1893, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 01:56:16', '2020-04-11 01:56:16');
INSERT INTO `admin_operation_log` VALUES (1894, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 01:56:17', '2020-04-11 01:56:17');
INSERT INTO `admin_operation_log` VALUES (1895, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"student_id\":\"3\",\"course_id\":\"1\",\"cal_type_id\":\"1\",\"order\":\"1\",\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/fractions\"}', '2020-04-11 01:56:37', '2020-04-11 01:56:37');
INSERT INTO `admin_operation_log` VALUES (1896, 1, 'admin/fractions', 'GET', '127.0.0.1', '[]', '2020-04-11 01:56:37', '2020-04-11 01:56:37');
INSERT INTO `admin_operation_log` VALUES (1897, 1, 'admin/meta-cal-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 01:56:45', '2020-04-11 01:56:45');
INSERT INTO `admin_operation_log` VALUES (1898, 1, 'admin/meta-cal-types/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 01:56:49', '2020-04-11 01:56:49');
INSERT INTO `admin_operation_log` VALUES (1899, 1, 'admin/meta-cal-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 01:56:50', '2020-04-11 01:56:50');
INSERT INTO `admin_operation_log` VALUES (1900, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 01:56:53', '2020-04-11 01:56:53');
INSERT INTO `admin_operation_log` VALUES (1901, 1, 'admin/fractions/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 01:56:58', '2020-04-11 01:56:58');
INSERT INTO `admin_operation_log` VALUES (1902, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 01:57:01', '2020-04-11 01:57:01');
INSERT INTO `admin_operation_log` VALUES (1903, 1, 'admin/fractions', 'GET', '127.0.0.1', '[]', '2020-04-11 01:57:40', '2020-04-11 01:57:40');
INSERT INTO `admin_operation_log` VALUES (1904, 1, 'admin/fractions', 'GET', '127.0.0.1', '[]', '2020-04-11 01:58:14', '2020-04-11 01:58:14');
INSERT INTO `admin_operation_log` VALUES (1905, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 01:58:40', '2020-04-11 01:58:40');
INSERT INTO `admin_operation_log` VALUES (1906, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 02:10:27', '2020-04-11 02:10:27');
INSERT INTO `admin_operation_log` VALUES (1907, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 02:10:46', '2020-04-11 02:10:46');
INSERT INTO `admin_operation_log` VALUES (1908, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 02:10:55', '2020-04-11 02:10:55');
INSERT INTO `admin_operation_log` VALUES (1909, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 02:11:34', '2020-04-11 02:11:34');
INSERT INTO `admin_operation_log` VALUES (1910, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 02:14:21', '2020-04-11 02:14:21');
INSERT INTO `admin_operation_log` VALUES (1911, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 02:14:23', '2020-04-11 02:14:23');
INSERT INTO `admin_operation_log` VALUES (1912, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-11 02:14:25', '2020-04-11 02:14:25');
INSERT INTO `admin_operation_log` VALUES (1913, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 02:14:28', '2020-04-11 02:14:28');
INSERT INTO `admin_operation_log` VALUES (1914, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 02:14:29', '2020-04-11 02:14:29');
INSERT INTO `admin_operation_log` VALUES (1915, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 02:15:43', '2020-04-11 02:15:43');
INSERT INTO `admin_operation_log` VALUES (1916, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 02:15:45', '2020-04-11 02:15:45');
INSERT INTO `admin_operation_log` VALUES (1917, 1, 'admin/fractions', 'GET', '127.0.0.1', '[]', '2020-04-11 02:15:46', '2020-04-11 02:15:46');
INSERT INTO `admin_operation_log` VALUES (1918, 1, 'admin/fractions', 'GET', '127.0.0.1', '[]', '2020-04-11 02:16:05', '2020-04-11 02:16:05');
INSERT INTO `admin_operation_log` VALUES (1919, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 02:16:06', '2020-04-11 02:16:06');
INSERT INTO `admin_operation_log` VALUES (1920, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 02:26:22', '2020-04-11 02:26:22');
INSERT INTO `admin_operation_log` VALUES (1921, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 02:27:02', '2020-04-11 02:27:02');
INSERT INTO `admin_operation_log` VALUES (1922, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 02:27:06', '2020-04-11 02:27:06');
INSERT INTO `admin_operation_log` VALUES (1923, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 02:27:12', '2020-04-11 02:27:12');
INSERT INTO `admin_operation_log` VALUES (1924, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 02:27:23', '2020-04-11 02:27:23');
INSERT INTO `admin_operation_log` VALUES (1925, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 02:27:27', '2020-04-11 02:27:27');
INSERT INTO `admin_operation_log` VALUES (1926, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 02:27:30', '2020-04-11 02:27:30');
INSERT INTO `admin_operation_log` VALUES (1927, 1, 'admin/squads/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 02:27:31', '2020-04-11 02:27:31');
INSERT INTO `admin_operation_log` VALUES (1928, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 02:27:34', '2020-04-11 02:27:34');
INSERT INTO `admin_operation_log` VALUES (1929, 1, 'admin/squads/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 02:27:35', '2020-04-11 02:27:35');
INSERT INTO `admin_operation_log` VALUES (1930, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 02:27:37', '2020-04-11 02:27:37');
INSERT INTO `admin_operation_log` VALUES (1931, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 02:27:42', '2020-04-11 02:27:42');
INSERT INTO `admin_operation_log` VALUES (1932, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 02:27:43', '2020-04-11 02:27:43');
INSERT INTO `admin_operation_log` VALUES (1933, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 02:27:54', '2020-04-11 02:27:54');
INSERT INTO `admin_operation_log` VALUES (1934, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 02:49:24', '2020-04-11 02:49:24');
INSERT INTO `admin_operation_log` VALUES (1935, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 02:51:46', '2020-04-11 02:51:46');
INSERT INTO `admin_operation_log` VALUES (1936, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"3\",\"cal_type_id\":\"1\",\"order\":null,\"fraction\":null,\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\"}', '2020-04-11 02:53:30', '2020-04-11 02:53:30');
INSERT INTO `admin_operation_log` VALUES (1937, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 02:53:30', '2020-04-11 02:53:30');
INSERT INTO `admin_operation_log` VALUES (1938, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"3\",\"cal_type_id\":\"1\",\"order\":\"1\",\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\"}', '2020-04-11 02:53:59', '2020-04-11 02:53:59');
INSERT INTO `admin_operation_log` VALUES (1939, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"3\",\"cal_type_id\":\"1\",\"order\":\"1\",\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\"}', '2020-04-11 02:56:35', '2020-04-11 02:56:35');
INSERT INTO `admin_operation_log` VALUES (1940, 1, 'admin/fractions', 'GET', '127.0.0.1', '[]', '2020-04-11 02:56:35', '2020-04-11 02:56:35');
INSERT INTO `admin_operation_log` VALUES (1941, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 02:57:12', '2020-04-11 02:57:12');
INSERT INTO `admin_operation_log` VALUES (1942, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"3\",\"cal_type_id\":\"1\",\"order\":\"1\",\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/fractions\"}', '2020-04-11 02:57:49', '2020-04-11 02:57:49');
INSERT INTO `admin_operation_log` VALUES (1943, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 02:57:49', '2020-04-11 02:57:49');
INSERT INTO `admin_operation_log` VALUES (1944, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 02:58:10', '2020-04-11 02:58:10');
INSERT INTO `admin_operation_log` VALUES (1945, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"3\",\"cal_type_id\":\"1\",\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/fractions\"}', '2020-04-11 02:58:16', '2020-04-11 02:58:16');
INSERT INTO `admin_operation_log` VALUES (1946, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 02:58:17', '2020-04-11 02:58:17');
INSERT INTO `admin_operation_log` VALUES (1947, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 02:58:38', '2020-04-11 02:58:38');
INSERT INTO `admin_operation_log` VALUES (1948, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"3\",\"cal_type_id\":\"1\",\"order\":null,\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/fractions\"}', '2020-04-11 02:58:47', '2020-04-11 02:58:47');
INSERT INTO `admin_operation_log` VALUES (1949, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 02:58:48', '2020-04-11 02:58:48');
INSERT INTO `admin_operation_log` VALUES (1950, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 02:58:53', '2020-04-11 02:58:53');
INSERT INTO `admin_operation_log` VALUES (1951, 1, 'admin/fractions', 'GET', '127.0.0.1', '[]', '2020-04-11 02:58:56', '2020-04-11 02:58:56');
INSERT INTO `admin_operation_log` VALUES (1952, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 02:59:01', '2020-04-11 02:59:01');
INSERT INTO `admin_operation_log` VALUES (1953, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"3\",\"cal_type_id\":\"1\",\"order\":null,\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/fractions\"}', '2020-04-11 02:59:10', '2020-04-11 02:59:10');
INSERT INTO `admin_operation_log` VALUES (1954, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 02:59:10', '2020-04-11 02:59:10');
INSERT INTO `admin_operation_log` VALUES (1955, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"3\",\"cal_type_id\":\"1\",\"order\":null,\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\"}', '2020-04-11 02:59:20', '2020-04-11 02:59:20');
INSERT INTO `admin_operation_log` VALUES (1956, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 02:59:20', '2020-04-11 02:59:20');
INSERT INTO `admin_operation_log` VALUES (1957, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"3\",\"cal_type_id\":\"1\",\"order\":null,\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\"}', '2020-04-11 03:00:37', '2020-04-11 03:00:37');
INSERT INTO `admin_operation_log` VALUES (1958, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 03:00:38', '2020-04-11 03:00:38');
INSERT INTO `admin_operation_log` VALUES (1959, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"3\",\"cal_type_id\":\"1\",\"order\":\"0\",\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\"}', '2020-04-11 03:01:21', '2020-04-11 03:01:21');
INSERT INTO `admin_operation_log` VALUES (1960, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 03:01:21', '2020-04-11 03:01:21');
INSERT INTO `admin_operation_log` VALUES (1961, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 03:01:46', '2020-04-11 03:01:46');
INSERT INTO `admin_operation_log` VALUES (1962, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"3\",\"cal_type_id\":\"1\",\"order\":\"0\",\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/fractions\"}', '2020-04-11 03:02:03', '2020-04-11 03:02:03');
INSERT INTO `admin_operation_log` VALUES (1963, 1, 'admin/fractions', 'GET', '127.0.0.1', '[]', '2020-04-11 03:02:03', '2020-04-11 03:02:03');
INSERT INTO `admin_operation_log` VALUES (1964, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 03:02:39', '2020-04-11 03:02:39');
INSERT INTO `admin_operation_log` VALUES (1965, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"3\",\"cal_type_id\":\"1\",\"order\":null,\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/fractions\"}', '2020-04-11 03:02:48', '2020-04-11 03:02:48');
INSERT INTO `admin_operation_log` VALUES (1966, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 03:02:48', '2020-04-11 03:02:48');
INSERT INTO `admin_operation_log` VALUES (1967, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"3\",\"cal_type_id\":\"1\",\"order\":null,\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\"}', '2020-04-11 03:03:27', '2020-04-11 03:03:27');
INSERT INTO `admin_operation_log` VALUES (1968, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 03:03:28', '2020-04-11 03:03:28');
INSERT INTO `admin_operation_log` VALUES (1969, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 03:03:48', '2020-04-11 03:03:48');
INSERT INTO `admin_operation_log` VALUES (1970, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"3\",\"cal_type_id\":\"1\",\"order\":\"0\",\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/fractions\"}', '2020-04-11 03:03:58', '2020-04-11 03:03:58');
INSERT INTO `admin_operation_log` VALUES (1971, 1, 'admin/fractions', 'GET', '127.0.0.1', '[]', '2020-04-11 03:03:59', '2020-04-11 03:03:59');
INSERT INTO `admin_operation_log` VALUES (1972, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 03:08:12', '2020-04-11 03:08:12');
INSERT INTO `admin_operation_log` VALUES (1973, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"3\",\"cal_type_id\":\"1\",\"order\":\"0\",\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/fractions\"}', '2020-04-11 03:08:35', '2020-04-11 03:08:35');
INSERT INTO `admin_operation_log` VALUES (1974, 1, 'admin/fractions', 'GET', '127.0.0.1', '[]', '2020-04-11 03:09:49', '2020-04-11 03:09:49');
INSERT INTO `admin_operation_log` VALUES (1975, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 03:09:52', '2020-04-11 03:09:52');
INSERT INTO `admin_operation_log` VALUES (1976, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"3\",\"cal_type_id\":\"1\",\"order\":\"0\",\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/fractions\"}', '2020-04-11 03:10:03', '2020-04-11 03:10:03');
INSERT INTO `admin_operation_log` VALUES (1977, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 03:10:03', '2020-04-11 03:10:03');
INSERT INTO `admin_operation_log` VALUES (1978, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 03:11:24', '2020-04-11 03:11:24');
INSERT INTO `admin_operation_log` VALUES (1979, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"3\",\"cal_type_id\":\"1\",\"order\":\"0\",\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/fractions\"}', '2020-04-11 03:11:33', '2020-04-11 03:11:33');
INSERT INTO `admin_operation_log` VALUES (1980, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 03:11:33', '2020-04-11 03:11:33');
INSERT INTO `admin_operation_log` VALUES (1981, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 03:12:11', '2020-04-11 03:12:11');
INSERT INTO `admin_operation_log` VALUES (1982, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"3\",\"cal_type_id\":\"1\",\"order\":\"0\",\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/fractions\"}', '2020-04-11 03:12:24', '2020-04-11 03:12:24');
INSERT INTO `admin_operation_log` VALUES (1983, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 03:12:25', '2020-04-11 03:12:25');
INSERT INTO `admin_operation_log` VALUES (1984, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 03:14:22', '2020-04-11 03:14:22');
INSERT INTO `admin_operation_log` VALUES (1985, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"3\",\"cal_type_id\":\"1\",\"order\":\"0\",\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/fractions\"}', '2020-04-11 03:14:31', '2020-04-11 03:14:31');
INSERT INTO `admin_operation_log` VALUES (1986, 1, 'admin/fractions', 'GET', '127.0.0.1', '[]', '2020-04-11 03:14:31', '2020-04-11 03:14:31');
INSERT INTO `admin_operation_log` VALUES (1987, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 03:18:59', '2020-04-11 03:18:59');
INSERT INTO `admin_operation_log` VALUES (1988, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 03:23:12', '2020-04-11 03:23:12');
INSERT INTO `admin_operation_log` VALUES (1989, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"3\",\"cal_type_id\":\"1\",\"order\":\"0\",\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/fractions\"}', '2020-04-11 03:23:21', '2020-04-11 03:23:21');
INSERT INTO `admin_operation_log` VALUES (1990, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 03:23:22', '2020-04-11 03:23:22');
INSERT INTO `admin_operation_log` VALUES (1991, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 03:24:20', '2020-04-11 03:24:20');
INSERT INTO `admin_operation_log` VALUES (1992, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"3\",\"cal_type_id\":\"1\",\"order\":\"0\",\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/fractions\"}', '2020-04-11 03:24:29', '2020-04-11 03:24:29');
INSERT INTO `admin_operation_log` VALUES (1993, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 03:24:29', '2020-04-11 03:24:29');
INSERT INTO `admin_operation_log` VALUES (1994, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 03:25:36', '2020-04-11 03:25:36');
INSERT INTO `admin_operation_log` VALUES (1995, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"3\",\"cal_type_id\":\"1\",\"order\":\"0\",\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/fractions\"}', '2020-04-11 03:25:43', '2020-04-11 03:25:43');
INSERT INTO `admin_operation_log` VALUES (1996, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 03:25:43', '2020-04-11 03:25:43');
INSERT INTO `admin_operation_log` VALUES (1997, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 03:26:09', '2020-04-11 03:26:09');
INSERT INTO `admin_operation_log` VALUES (1998, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"3\",\"cal_type_id\":\"1\",\"order\":\"0\",\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/fractions\"}', '2020-04-11 03:26:18', '2020-04-11 03:26:18');
INSERT INTO `admin_operation_log` VALUES (1999, 1, 'admin/fractions', 'GET', '127.0.0.1', '[]', '2020-04-11 03:26:19', '2020-04-11 03:26:19');
INSERT INTO `admin_operation_log` VALUES (2000, 1, 'admin/fractions', 'GET', '127.0.0.1', '[]', '2020-04-11 03:27:05', '2020-04-11 03:27:05');
INSERT INTO `admin_operation_log` VALUES (2001, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 03:27:09', '2020-04-11 03:27:09');
INSERT INTO `admin_operation_log` VALUES (2002, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"3\",\"cal_type_id\":\"1\",\"order\":\"0\",\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/fractions\"}', '2020-04-11 03:27:18', '2020-04-11 03:27:18');
INSERT INTO `admin_operation_log` VALUES (2003, 1, 'admin/fractions', 'GET', '127.0.0.1', '[]', '2020-04-11 03:27:18', '2020-04-11 03:27:18');
INSERT INTO `admin_operation_log` VALUES (2004, 1, 'admin/fractions', 'GET', '127.0.0.1', '[]', '2020-04-11 03:37:05', '2020-04-11 03:37:05');
INSERT INTO `admin_operation_log` VALUES (2005, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 03:37:12', '2020-04-11 03:37:12');
INSERT INTO `admin_operation_log` VALUES (2006, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 03:37:16', '2020-04-11 03:37:16');
INSERT INTO `admin_operation_log` VALUES (2007, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 03:37:18', '2020-04-11 03:37:18');
INSERT INTO `admin_operation_log` VALUES (2008, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 03:37:24', '2020-04-11 03:37:24');
INSERT INTO `admin_operation_log` VALUES (2009, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 03:37:27', '2020-04-11 03:37:27');
INSERT INTO `admin_operation_log` VALUES (2010, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 03:37:32', '2020-04-11 03:37:32');
INSERT INTO `admin_operation_log` VALUES (2011, 1, 'admin/courses/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 03:37:35', '2020-04-11 03:37:35');
INSERT INTO `admin_operation_log` VALUES (2012, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 03:37:39', '2020-04-11 03:37:39');
INSERT INTO `admin_operation_log` VALUES (2013, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 03:37:45', '2020-04-11 03:37:45');
INSERT INTO `admin_operation_log` VALUES (2014, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 03:37:48', '2020-04-11 03:37:48');
INSERT INTO `admin_operation_log` VALUES (2015, 1, 'admin/meta-cals/1', 'PUT', '127.0.0.1', '{\"name\":\"number\",\"value\":\"5\",\"pk\":\"1\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2020-04-11 03:37:56', '2020-04-11 03:37:56');
INSERT INTO `admin_operation_log` VALUES (2016, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 03:38:02', '2020-04-11 03:38:02');
INSERT INTO `admin_operation_log` VALUES (2017, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 03:38:04', '2020-04-11 03:38:04');
INSERT INTO `admin_operation_log` VALUES (2018, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"3\",\"cal_type_id\":\"1\",\"order\":\"0\",\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/fractions\"}', '2020-04-11 03:38:12', '2020-04-11 03:38:12');
INSERT INTO `admin_operation_log` VALUES (2019, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 03:38:12', '2020-04-11 03:38:12');
INSERT INTO `admin_operation_log` VALUES (2020, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 03:39:22', '2020-04-11 03:39:22');
INSERT INTO `admin_operation_log` VALUES (2021, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"3\",\"cal_type_id\":\"1\",\"order\":\"0\",\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/fractions\"}', '2020-04-11 03:39:27', '2020-04-11 03:39:27');
INSERT INTO `admin_operation_log` VALUES (2022, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 03:39:27', '2020-04-11 03:39:27');
INSERT INTO `admin_operation_log` VALUES (2023, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 03:40:25', '2020-04-11 03:40:25');
INSERT INTO `admin_operation_log` VALUES (2024, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"3\",\"cal_type_id\":\"1\",\"order\":\"0\",\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/fractions\"}', '2020-04-11 03:40:30', '2020-04-11 03:40:30');
INSERT INTO `admin_operation_log` VALUES (2025, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 03:40:30', '2020-04-11 03:40:30');
INSERT INTO `admin_operation_log` VALUES (2026, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 03:41:36', '2020-04-11 03:41:36');
INSERT INTO `admin_operation_log` VALUES (2027, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"3\",\"cal_type_id\":\"1\",\"order\":\"0\",\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/fractions\"}', '2020-04-11 03:41:41', '2020-04-11 03:41:41');
INSERT INTO `admin_operation_log` VALUES (2028, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 03:41:41', '2020-04-11 03:41:41');
INSERT INTO `admin_operation_log` VALUES (2029, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 03:41:53', '2020-04-11 03:41:53');
INSERT INTO `admin_operation_log` VALUES (2030, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"3\",\"cal_type_id\":\"1\",\"order\":\"0\",\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/fractions\"}', '2020-04-11 03:41:57', '2020-04-11 03:41:57');
INSERT INTO `admin_operation_log` VALUES (2031, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 03:41:58', '2020-04-11 03:41:58');
INSERT INTO `admin_operation_log` VALUES (2032, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"5\",\"cal_type_id\":\"1\",\"order\":\"0\",\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\"}', '2020-04-11 03:42:07', '2020-04-11 03:42:07');
INSERT INTO `admin_operation_log` VALUES (2033, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 03:42:07', '2020-04-11 03:42:07');
INSERT INTO `admin_operation_log` VALUES (2034, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 05:39:18', '2020-04-11 05:39:18');
INSERT INTO `admin_operation_log` VALUES (2035, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 05:40:47', '2020-04-11 05:40:47');
INSERT INTO `admin_operation_log` VALUES (2036, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"3\",\"cal_type_id\":\"1\",\"order\":\"0\",\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/fractions\"}', '2020-04-11 05:40:53', '2020-04-11 05:40:53');
INSERT INTO `admin_operation_log` VALUES (2037, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 05:40:53', '2020-04-11 05:40:53');
INSERT INTO `admin_operation_log` VALUES (2038, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:40:56', '2020-04-11 05:40:56');
INSERT INTO `admin_operation_log` VALUES (2039, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"2\",\"student_id\":\"3\",\"cal_type_id\":null,\"order\":\"0\",\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\"}', '2020-04-11 05:41:02', '2020-04-11 05:41:02');
INSERT INTO `admin_operation_log` VALUES (2040, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 05:41:02', '2020-04-11 05:41:02');
INSERT INTO `admin_operation_log` VALUES (2041, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:41:04', '2020-04-11 05:41:04');
INSERT INTO `admin_operation_log` VALUES (2042, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"5\",\"cal_type_id\":\"1\",\"order\":\"0\",\"fraction\":null,\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\"}', '2020-04-11 05:41:17', '2020-04-11 05:41:17');
INSERT INTO `admin_operation_log` VALUES (2043, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 05:41:17', '2020-04-11 05:41:17');
INSERT INTO `admin_operation_log` VALUES (2044, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"6\",\"cal_type_id\":\"1\",\"order\":\"0\",\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\"}', '2020-04-11 05:41:26', '2020-04-11 05:41:26');
INSERT INTO `admin_operation_log` VALUES (2045, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 05:41:26', '2020-04-11 05:41:26');
INSERT INTO `admin_operation_log` VALUES (2046, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 05:44:29', '2020-04-11 05:44:29');
INSERT INTO `admin_operation_log` VALUES (2047, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"3\",\"cal_type_id\":\"1\",\"order\":\"0\",\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/fractions\"}', '2020-04-11 05:44:36', '2020-04-11 05:44:36');
INSERT INTO `admin_operation_log` VALUES (2048, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 05:44:36', '2020-04-11 05:44:36');
INSERT INTO `admin_operation_log` VALUES (2049, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"5\",\"cal_type_id\":\"1\",\"order\":\"0\",\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\"}', '2020-04-11 05:44:44', '2020-04-11 05:44:44');
INSERT INTO `admin_operation_log` VALUES (2050, 1, 'admin/fractions', 'GET', '127.0.0.1', '[]', '2020-04-11 05:44:44', '2020-04-11 05:44:44');
INSERT INTO `admin_operation_log` VALUES (2051, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:45:00', '2020-04-11 05:45:00');
INSERT INTO `admin_operation_log` VALUES (2052, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"3\",\"cal_type_id\":\"1\",\"order\":\"0\",\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/fractions\"}', '2020-04-11 05:45:04', '2020-04-11 05:45:04');
INSERT INTO `admin_operation_log` VALUES (2053, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 05:45:04', '2020-04-11 05:45:04');
INSERT INTO `admin_operation_log` VALUES (2054, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:45:07', '2020-04-11 05:45:07');
INSERT INTO `admin_operation_log` VALUES (2055, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"5\",\"cal_type_id\":\"1\",\"order\":\"0\",\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\"}', '2020-04-11 05:45:15', '2020-04-11 05:45:15');
INSERT INTO `admin_operation_log` VALUES (2056, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 05:45:16', '2020-04-11 05:45:16');
INSERT INTO `admin_operation_log` VALUES (2057, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 05:47:01', '2020-04-11 05:47:01');
INSERT INTO `admin_operation_log` VALUES (2058, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"5\",\"cal_type_id\":\"1\",\"order\":\"0\",\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/fractions\"}', '2020-04-11 05:47:09', '2020-04-11 05:47:09');
INSERT INTO `admin_operation_log` VALUES (2059, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 05:47:09', '2020-04-11 05:47:09');
INSERT INTO `admin_operation_log` VALUES (2060, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"3\",\"cal_type_id\":\"1\",\"order\":\"0\",\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\"}', '2020-04-11 05:47:17', '2020-04-11 05:47:17');
INSERT INTO `admin_operation_log` VALUES (2061, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 05:47:17', '2020-04-11 05:47:17');
INSERT INTO `admin_operation_log` VALUES (2062, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '[]', '2020-04-11 05:47:34', '2020-04-11 05:47:34');
INSERT INTO `admin_operation_log` VALUES (2063, 1, 'admin/fractions', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"student_id\":\"6\",\"cal_type_id\":\"1\",\"order\":\"0\",\"fraction\":\"100\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/fractions\"}', '2020-04-11 05:47:49', '2020-04-11 05:47:49');
INSERT INTO `admin_operation_log` VALUES (2064, 1, 'admin/fractions', 'GET', '127.0.0.1', '[]', '2020-04-11 05:47:49', '2020-04-11 05:47:49');
INSERT INTO `admin_operation_log` VALUES (2065, 1, 'admin/fractions', 'GET', '127.0.0.1', '[]', '2020-04-11 05:48:48', '2020-04-11 05:48:48');
INSERT INTO `admin_operation_log` VALUES (2066, 1, 'admin/fractions', 'GET', '127.0.0.1', '[]', '2020-04-11 05:49:34', '2020-04-11 05:49:34');
INSERT INTO `admin_operation_log` VALUES (2067, 1, 'admin/fractions', 'GET', '127.0.0.1', '[]', '2020-04-11 05:52:12', '2020-04-11 05:52:12');
INSERT INTO `admin_operation_log` VALUES (2068, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"student\":{\"name\":\"\\u8001\\u738b\"},\"course\":{\"full_name\":\"\\u8ba1\\u7b97\\u673a\\u7f51\\u7edc\"},\"metaCalType\":{\"name\":\"\\u8003\\u52e4\"},\"order\":null,\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:52:33', '2020-04-11 05:52:33');
INSERT INTO `admin_operation_log` VALUES (2069, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"student\":{\"name\":\"\\u8001\\u738b\"},\"course\":{\"full_name\":\"\\u8ba1\\u7b97\\u673a\\u7f51\\u7edc\"},\"metaCalType\":{\"name\":\"\\u8003\\u52e4\"},\"order\":null}', '2020-04-11 05:54:03', '2020-04-11 05:54:03');
INSERT INTO `admin_operation_log` VALUES (2070, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:54:05', '2020-04-11 05:54:05');
INSERT INTO `admin_operation_log` VALUES (2071, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"student_name\":\"\\u8001\\u738b\",\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:54:13', '2020-04-11 05:54:13');
INSERT INTO `admin_operation_log` VALUES (2072, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"student_name\":\"\\u8001\\u738b\",\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:54:20', '2020-04-11 05:54:20');
INSERT INTO `admin_operation_log` VALUES (2073, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"student_name\":\"\\u8001\\u738b\"}', '2020-04-11 05:55:25', '2020-04-11 05:55:25');
INSERT INTO `admin_operation_log` VALUES (2074, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"student_name\":\"\\u8001\\u738b\"}', '2020-04-11 05:56:59', '2020-04-11 05:56:59');
INSERT INTO `admin_operation_log` VALUES (2075, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:57:07', '2020-04-11 05:57:07');
INSERT INTO `admin_operation_log` VALUES (2076, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:57:42', '2020-04-11 05:57:42');
INSERT INTO `admin_operation_log` VALUES (2077, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:57:47', '2020-04-11 05:57:47');
INSERT INTO `admin_operation_log` VALUES (2078, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:58:10', '2020-04-11 05:58:10');
INSERT INTO `admin_operation_log` VALUES (2079, 1, 'admin/auth/menu/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\"}', '2020-04-11 05:58:13', '2020-04-11 05:58:13');
INSERT INTO `admin_operation_log` VALUES (2080, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:58:13', '2020-04-11 05:58:13');
INSERT INTO `admin_operation_log` VALUES (2081, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"XKpg8bkaLpV5CSlvq7quR2smz9icTWco55voHFfh\",\"_order\":\"[{\\\"id\\\":14,\\\"children\\\":[{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":15},{\\\"id\\\":18},{\\\"id\\\":19}]},{\\\"id\\\":13,\\\"children\\\":[{\\\"id\\\":8},{\\\"id\\\":10}]},{\\\"id\\\":16,\\\"children\\\":[{\\\"id\\\":17},{\\\"id\\\":20}]},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-04-11 05:58:15', '2020-04-11 05:58:15');
INSERT INTO `admin_operation_log` VALUES (2082, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:58:16', '2020-04-11 05:58:16');
INSERT INTO `admin_operation_log` VALUES (2083, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-11 05:58:17', '2020-04-11 05:58:17');
INSERT INTO `admin_operation_log` VALUES (2084, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:58:22', '2020-04-11 05:58:22');
INSERT INTO `admin_operation_log` VALUES (2085, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-11 05:58:25', '2020-04-11 05:58:25');
INSERT INTO `admin_operation_log` VALUES (2086, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:58:32', '2020-04-11 05:58:32');
INSERT INTO `admin_operation_log` VALUES (2087, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:58:41', '2020-04-11 05:58:41');
INSERT INTO `admin_operation_log` VALUES (2088, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"aoPfqsF4TjqjvfgKixDLlHhyb2v0PI0SxizwLaka\",\"_order\":\"[{\\\"id\\\":13,\\\"children\\\":[{\\\"id\\\":8},{\\\"id\\\":10}]},{\\\"id\\\":14,\\\"children\\\":[{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":15},{\\\"id\\\":18},{\\\"id\\\":19}]},{\\\"id\\\":16,\\\"children\\\":[{\\\"id\\\":17},{\\\"id\\\":20}]},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-04-11 05:58:51', '2020-04-11 05:58:51');
INSERT INTO `admin_operation_log` VALUES (2089, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:58:51', '2020-04-11 05:58:51');
INSERT INTO `admin_operation_log` VALUES (2090, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:58:53', '2020-04-11 05:58:53');
INSERT INTO `admin_operation_log` VALUES (2091, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-11 05:59:25', '2020-04-11 05:59:25');
INSERT INTO `admin_operation_log` VALUES (2092, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:59:28', '2020-04-11 05:59:28');
INSERT INTO `admin_operation_log` VALUES (2093, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:59:31', '2020-04-11 05:59:31');
INSERT INTO `admin_operation_log` VALUES (2094, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:59:37', '2020-04-11 05:59:37');
INSERT INTO `admin_operation_log` VALUES (2095, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u9996\\u9875\",\"icon\":\"fa-bar-chart-o\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"aoPfqsF4TjqjvfgKixDLlHhyb2v0PI0SxizwLaka\"}', '2020-04-11 05:59:56', '2020-04-11 05:59:56');
INSERT INTO `admin_operation_log` VALUES (2096, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-11 05:59:56', '2020-04-11 05:59:56');
INSERT INTO `admin_operation_log` VALUES (2097, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"aoPfqsF4TjqjvfgKixDLlHhyb2v0PI0SxizwLaka\",\"_order\":\"[{\\\"id\\\":22},{\\\"id\\\":13,\\\"children\\\":[{\\\"id\\\":8},{\\\"id\\\":10}]},{\\\"id\\\":14,\\\"children\\\":[{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":15},{\\\"id\\\":18},{\\\"id\\\":19}]},{\\\"id\\\":16,\\\"children\\\":[{\\\"id\\\":17},{\\\"id\\\":20}]},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-04-11 05:59:59', '2020-04-11 05:59:59');
INSERT INTO `admin_operation_log` VALUES (2098, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:59:59', '2020-04-11 05:59:59');
INSERT INTO `admin_operation_log` VALUES (2099, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-11 06:00:00', '2020-04-11 06:00:00');
INSERT INTO `admin_operation_log` VALUES (2100, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 06:00:01', '2020-04-11 06:00:01');
INSERT INTO `admin_operation_log` VALUES (2101, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-11 06:00:50', '2020-04-11 06:00:50');
INSERT INTO `admin_operation_log` VALUES (2102, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-11 06:01:00', '2020-04-11 06:01:00');
INSERT INTO `admin_operation_log` VALUES (2103, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-11 06:01:10', '2020-04-11 06:01:10');
INSERT INTO `admin_operation_log` VALUES (2104, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 06:01:13', '2020-04-11 06:01:13');
INSERT INTO `admin_operation_log` VALUES (2105, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 06:01:15', '2020-04-11 06:01:15');
INSERT INTO `admin_operation_log` VALUES (2106, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 06:01:25', '2020-04-11 06:01:25');
INSERT INTO `admin_operation_log` VALUES (2107, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 06:01:27', '2020-04-11 06:01:27');
INSERT INTO `admin_operation_log` VALUES (2108, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 06:01:29', '2020-04-11 06:01:29');
INSERT INTO `admin_operation_log` VALUES (2109, 1, 'admin/meta-cal-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 06:01:30', '2020-04-11 06:01:30');
INSERT INTO `admin_operation_log` VALUES (2110, 1, 'admin/course-type-constants', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 06:01:33', '2020-04-11 06:01:33');
INSERT INTO `admin_operation_log` VALUES (2111, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 06:01:36', '2020-04-11 06:01:36');
INSERT INTO `admin_operation_log` VALUES (2112, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 06:35:17', '2020-04-11 06:35:17');
INSERT INTO `admin_operation_log` VALUES (2113, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-11 07:01:56', '2020-04-11 07:01:56');
INSERT INTO `admin_operation_log` VALUES (2114, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:02:00', '2020-04-11 07:02:00');
INSERT INTO `admin_operation_log` VALUES (2115, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-11 07:03:18', '2020-04-11 07:03:18');
INSERT INTO `admin_operation_log` VALUES (2116, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-11 07:03:36', '2020-04-11 07:03:36');
INSERT INTO `admin_operation_log` VALUES (2117, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-11 07:05:12', '2020-04-11 07:05:12');
INSERT INTO `admin_operation_log` VALUES (2118, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"per_page\":\"10\",\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:05:58', '2020-04-11 07:05:58');
INSERT INTO `admin_operation_log` VALUES (2119, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"per_page\":\"20\",\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:06:00', '2020-04-11 07:06:00');
INSERT INTO `admin_operation_log` VALUES (2120, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"per_page\":\"20\"}', '2020-04-11 07:07:17', '2020-04-11 07:07:17');
INSERT INTO `admin_operation_log` VALUES (2121, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"per_page\":\"20\",\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:07:23', '2020-04-11 07:07:23');
INSERT INTO `admin_operation_log` VALUES (2122, 1, 'admin/articles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:07:57', '2020-04-11 07:07:57');
INSERT INTO `admin_operation_log` VALUES (2123, 1, 'admin/course-type-constants', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:08:07', '2020-04-11 07:08:07');
INSERT INTO `admin_operation_log` VALUES (2124, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:08:09', '2020-04-11 07:08:09');
INSERT INTO `admin_operation_log` VALUES (2125, 1, 'admin/labels/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:08:10', '2020-04-11 07:08:10');
INSERT INTO `admin_operation_log` VALUES (2126, 1, 'admin/labels', 'POST', '127.0.0.1', '{\"content\":\"\\u603b\\u7ed3\\u5c55\\u671b\",\"_token\":\"aoPfqsF4TjqjvfgKixDLlHhyb2v0PI0SxizwLaka\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/labels\"}', '2020-04-11 07:08:21', '2020-04-11 07:08:21');
INSERT INTO `admin_operation_log` VALUES (2127, 1, 'admin/labels', 'GET', '127.0.0.1', '[]', '2020-04-11 07:08:21', '2020-04-11 07:08:21');
INSERT INTO `admin_operation_log` VALUES (2128, 1, 'admin/labels/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:08:24', '2020-04-11 07:08:24');
INSERT INTO `admin_operation_log` VALUES (2129, 1, 'admin/labels/2', 'PUT', '127.0.0.1', '{\"content\":\"\\u6545\\u4e8b\\u7535\\u5f71\",\"_token\":\"aoPfqsF4TjqjvfgKixDLlHhyb2v0PI0SxizwLaka\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/labels\"}', '2020-04-11 07:08:30', '2020-04-11 07:08:30');
INSERT INTO `admin_operation_log` VALUES (2130, 1, 'admin/labels', 'GET', '127.0.0.1', '[]', '2020-04-11 07:08:30', '2020-04-11 07:08:30');
INSERT INTO `admin_operation_log` VALUES (2131, 1, 'admin/labels/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:08:32', '2020-04-11 07:08:32');
INSERT INTO `admin_operation_log` VALUES (2132, 1, 'admin/labels/1', 'PUT', '127.0.0.1', '{\"content\":\"\\u968f\\u8c08\\u95f2\\u7b14\",\"_token\":\"aoPfqsF4TjqjvfgKixDLlHhyb2v0PI0SxizwLaka\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/labels\"}', '2020-04-11 07:08:54', '2020-04-11 07:08:54');
INSERT INTO `admin_operation_log` VALUES (2133, 1, 'admin/labels', 'GET', '127.0.0.1', '[]', '2020-04-11 07:08:54', '2020-04-11 07:08:54');
INSERT INTO `admin_operation_log` VALUES (2134, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:08:59', '2020-04-11 07:08:59');
INSERT INTO `admin_operation_log` VALUES (2135, 1, 'admin/articles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:09:04', '2020-04-11 07:09:04');
INSERT INTO `admin_operation_log` VALUES (2136, 1, 'admin/articles/2', 'PUT', '127.0.0.1', '{\"user_id\":\"1\",\"title\":\"\\u5492\\u6028\",\"labels\":[\"2\",null],\"intro\":\"\\u8bb2\\u8ff0\\u4e86\\u4e00\\u4e2a\\u53d1\\u751f\\u5728\\u65e5\\u672c\\u7684\\u6050\\u6016\\u6545\\u4e8b\",\"content\":\"```java\\r\\nclass test{\\r\\n\\t\\r\\n}\\r\\n```\",\"_token\":\"aoPfqsF4TjqjvfgKixDLlHhyb2v0PI0SxizwLaka\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/articles\"}', '2020-04-11 07:09:10', '2020-04-11 07:09:10');
INSERT INTO `admin_operation_log` VALUES (2137, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-11 07:09:11', '2020-04-11 07:09:11');
INSERT INTO `admin_operation_log` VALUES (2138, 1, 'admin/articles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:09:13', '2020-04-11 07:09:13');
INSERT INTO `admin_operation_log` VALUES (2139, 1, 'admin/articles/3', 'PUT', '127.0.0.1', '{\"user_id\":\"1\",\"title\":\"2020\\u7ee7\\u7eed\\u52a0\\u6cb9\",\"labels\":[\"3\",null],\"intro\":\"\\u5927\\u5e74\\u4e09\\u5341\\u7ec8\\u4e8e\\u5199\\u5b8c\\u8fd9\\u7bc7\\u603b\\u7ed3\\uff0c\\u7ed9\\u6765\\u5e74\\u5b9a\\u4e2a\\u76ee\\u6807\\uff0c\\u7ed9\\u4eca\\u5e74\\u505a\\u4e2a\\u80af\\u5b9a\\uff0c\\u5e0c\\u671b\\u4ee5\\u540e\\u6bcf\\u5e74\\u90fd\\u6709\\u65b0\\u7684\\u603b\\u7ed3\\u53ef\\u5199\\uff0c\\u90fd\\u6709\\u7f8e\\u597d\\u7684\\u6545\\u4e8b\\u53d1\\u9001\\uff0c\\u52a0\\u6cb9\\uff01\\uff01\",\"content\":\"# \\u65b0\\u5e74\\u603b\\u7ed3\\r\\n## \\u9664\\u5915\\u603b\\u7ed3\\r\\n## \\u521d\\u4e00\\u603b\\u7ed3\\r\\n### \\u521d\\u4e8c\\u603b\\u7ed3\",\"_token\":\"aoPfqsF4TjqjvfgKixDLlHhyb2v0PI0SxizwLaka\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/articles\"}', '2020-04-11 07:09:20', '2020-04-11 07:09:20');
INSERT INTO `admin_operation_log` VALUES (2140, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-11 07:09:20', '2020-04-11 07:09:20');
INSERT INTO `admin_operation_log` VALUES (2141, 1, 'admin/articles/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:09:22', '2020-04-11 07:09:22');
INSERT INTO `admin_operation_log` VALUES (2142, 1, 'admin/articles/4', 'PUT', '127.0.0.1', '{\"user_id\":\"3\",\"title\":\"\\u590f\\u6d1b\\u7279\\u70e6\\u607c\",\"labels\":[\"2\",null],\"intro\":\"\\u4e00\\u4e2a\\u53eb\\u590f\\u6d1b\\u7684\\u4eba\\uff0c\\u4ed6\\u7279\\u522b\\u5730\\u70e6\\u607c\",\"content\":\"# \\u590f\\u6d1b\\r\\n## \\u5c31\\u7279\\u4e48\\u4f60\\u53eb\\u590f\\u6d1b\\u554a\",\"_token\":\"aoPfqsF4TjqjvfgKixDLlHhyb2v0PI0SxizwLaka\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/articles\"}', '2020-04-11 07:09:27', '2020-04-11 07:09:27');
INSERT INTO `admin_operation_log` VALUES (2143, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-11 07:09:27', '2020-04-11 07:09:27');
INSERT INTO `admin_operation_log` VALUES (2144, 1, 'admin/articles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:09:34', '2020-04-11 07:09:34');
INSERT INTO `admin_operation_log` VALUES (2145, 1, 'admin/articles/2', 'PUT', '127.0.0.1', '{\"user_id\":\"1\",\"title\":\"\\u5492\\u6028\",\"labels\":[\"1\",null],\"intro\":\"\\u8bb2\\u8ff0\\u4e86\\u4e00\\u4e2a\\u53d1\\u751f\\u5728\\u65e5\\u672c\\u7684\\u6050\\u6016\\u6545\\u4e8b\",\"content\":\"```java\\r\\nclass test{\\r\\n\\t\\r\\n}\\r\\n```\",\"_token\":\"aoPfqsF4TjqjvfgKixDLlHhyb2v0PI0SxizwLaka\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/articles\"}', '2020-04-11 07:09:39', '2020-04-11 07:09:39');
INSERT INTO `admin_operation_log` VALUES (2146, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-11 07:09:39', '2020-04-11 07:09:39');
INSERT INTO `admin_operation_log` VALUES (2147, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:09:42', '2020-04-11 07:09:42');
INSERT INTO `admin_operation_log` VALUES (2148, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:09:48', '2020-04-11 07:09:48');
INSERT INTO `admin_operation_log` VALUES (2149, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-11 07:11:00', '2020-04-11 07:11:00');
INSERT INTO `admin_operation_log` VALUES (2150, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-11 07:11:25', '2020-04-11 07:11:25');
INSERT INTO `admin_operation_log` VALUES (2151, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:11:40', '2020-04-11 07:11:40');
INSERT INTO `admin_operation_log` VALUES (2152, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-11 07:11:53', '2020-04-11 07:11:53');
INSERT INTO `admin_operation_log` VALUES (2153, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:12:18', '2020-04-11 07:12:18');
INSERT INTO `admin_operation_log` VALUES (2154, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-11 07:12:49', '2020-04-11 07:12:49');
INSERT INTO `admin_operation_log` VALUES (2155, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-11 07:15:33', '2020-04-11 07:15:33');
INSERT INTO `admin_operation_log` VALUES (2156, 1, 'admin/comments/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:15:36', '2020-04-11 07:15:36');
INSERT INTO `admin_operation_log` VALUES (2157, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:15:41', '2020-04-11 07:15:41');
INSERT INTO `admin_operation_log` VALUES (2158, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:15:43', '2020-04-11 07:15:43');
INSERT INTO `admin_operation_log` VALUES (2159, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:15:48', '2020-04-11 07:15:48');
INSERT INTO `admin_operation_log` VALUES (2160, 1, 'admin/comments/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:15:51', '2020-04-11 07:15:51');
INSERT INTO `admin_operation_log` VALUES (2161, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:16:48', '2020-04-11 07:16:48');
INSERT INTO `admin_operation_log` VALUES (2162, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:16:53', '2020-04-11 07:16:53');
INSERT INTO `admin_operation_log` VALUES (2163, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:16:56', '2020-04-11 07:16:56');
INSERT INTO `admin_operation_log` VALUES (2164, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-11 07:17:25', '2020-04-11 07:17:25');
INSERT INTO `admin_operation_log` VALUES (2165, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:17:27', '2020-04-11 07:17:27');
INSERT INTO `admin_operation_log` VALUES (2166, 1, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":\"1\",\"user_id\":\"1\",\"level\":\"2\",\"reply_user_id\":\"3\",\"pid\":\"12\",\"content\":\"\\u8001\\u738b\\u8001\\u738b\\u4f60\\u771f\\u5e05\",\"_token\":\"aoPfqsF4TjqjvfgKixDLlHhyb2v0PI0SxizwLaka\"}', '2020-04-11 07:17:49', '2020-04-11 07:17:49');
INSERT INTO `admin_operation_log` VALUES (2167, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-11 07:17:49', '2020-04-11 07:17:49');
INSERT INTO `admin_operation_log` VALUES (2168, 1, 'admin/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:18:20', '2020-04-11 07:18:20');
INSERT INTO `admin_operation_log` VALUES (2169, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:18:22', '2020-04-11 07:18:22');
INSERT INTO `admin_operation_log` VALUES (2170, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:18:32', '2020-04-11 07:18:32');
INSERT INTO `admin_operation_log` VALUES (2171, 1, 'admin/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:18:39', '2020-04-11 07:18:39');
INSERT INTO `admin_operation_log` VALUES (2172, 1, 'admin/articles/1', 'PUT', '127.0.0.1', '{\"user_id\":\"1\",\"title\":\"\\u5b64\\u5c9b\\u60ca\\u9b42\",\"labels\":[\"2\",null],\"intro\":\"\\u8bb2\\u8ff0\\u4e86\\u4e00\\u4e2a\\u5728\\u5b64\\u5c9b\\u4e0a\\u53d1\\u751f\\u7684\\u60ca\\u9b42\\u6545\\u4e8b\",\"content\":\"# \\u4e00\\u7ea7\\u6807\\u9898\\r\\n## \\u4e8c\\u7ea7\\u6807\\u9898\\r\\n### \\u4e09\\u7ea7\\u6807\\u9898\\r\\n**\\u52a0\\u7c97**\\r\\n\\r\\n| \\u6d4b\\u8bd5  | \\u6d4b\\u8bd5  |\\r\\n| ------------ | ------------ |\\r\\n| \\u6d4b\\u8bd5  | \\u6d4b\\u8bd5  |\\r\\n| \\u6d4b\\u8bd5  |  \\u6d4b\\u8bd5 |\",\"_token\":\"aoPfqsF4TjqjvfgKixDLlHhyb2v0PI0SxizwLaka\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/articles\\/1\"}', '2020-04-11 07:19:01', '2020-04-11 07:19:01');
INSERT INTO `admin_operation_log` VALUES (2173, 1, 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2020-04-11 07:19:01', '2020-04-11 07:19:01');
INSERT INTO `admin_operation_log` VALUES (2174, 1, 'admin/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:19:03', '2020-04-11 07:19:03');
INSERT INTO `admin_operation_log` VALUES (2175, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:19:51', '2020-04-11 07:19:51');
INSERT INTO `admin_operation_log` VALUES (2176, 1, 'admin/labels', 'GET', '127.0.0.1', '[]', '2020-04-11 07:20:28', '2020-04-11 07:20:28');
INSERT INTO `admin_operation_log` VALUES (2177, 1, 'admin/labels', 'GET', '127.0.0.1', '[]', '2020-04-11 07:20:36', '2020-04-11 07:20:36');
INSERT INTO `admin_operation_log` VALUES (2178, 1, 'admin/labels/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:21:51', '2020-04-11 07:21:51');
INSERT INTO `admin_operation_log` VALUES (2179, 1, 'admin/labels/create', 'GET', '127.0.0.1', '[]', '2020-04-11 07:22:14', '2020-04-11 07:22:14');
INSERT INTO `admin_operation_log` VALUES (2180, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:22:18', '2020-04-11 07:22:18');
INSERT INTO `admin_operation_log` VALUES (2181, 1, 'admin/labels/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:22:22', '2020-04-11 07:22:22');
INSERT INTO `admin_operation_log` VALUES (2182, 1, 'admin/labels/1', 'GET', '127.0.0.1', '[]', '2020-04-11 07:22:46', '2020-04-11 07:22:46');
INSERT INTO `admin_operation_log` VALUES (2183, 1, 'admin/labels/1', 'GET', '127.0.0.1', '[]', '2020-04-11 07:23:12', '2020-04-11 07:23:12');
INSERT INTO `admin_operation_log` VALUES (2184, 1, 'admin/labels/1', 'GET', '127.0.0.1', '[]', '2020-04-11 07:24:09', '2020-04-11 07:24:09');
INSERT INTO `admin_operation_log` VALUES (2185, 1, 'admin/labels/1', 'GET', '127.0.0.1', '[]', '2020-04-11 07:24:43', '2020-04-11 07:24:43');
INSERT INTO `admin_operation_log` VALUES (2186, 1, 'admin/labels/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:24:46', '2020-04-11 07:24:46');
INSERT INTO `admin_operation_log` VALUES (2187, 1, 'admin/labels/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:24:48', '2020-04-11 07:24:48');
INSERT INTO `admin_operation_log` VALUES (2188, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:24:49', '2020-04-11 07:24:49');
INSERT INTO `admin_operation_log` VALUES (2189, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:24:53', '2020-04-11 07:24:53');
INSERT INTO `admin_operation_log` VALUES (2190, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:25:16', '2020-04-11 07:25:16');
INSERT INTO `admin_operation_log` VALUES (2191, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:26:21', '2020-04-11 07:26:21');
INSERT INTO `admin_operation_log` VALUES (2192, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:26:23', '2020-04-11 07:26:23');
INSERT INTO `admin_operation_log` VALUES (2193, 1, 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"admin\",\"name\":\"Administrator\",\"password\":\"$2y$10$G6KvI.E8JBaMz.NAukiLm.5Hh9PQ5uIyAKKIPAomiKq\\/kFI.SVHjG\",\"password_confirmation\":\"$2y$10$G6KvI.E8JBaMz.NAukiLm.5Hh9PQ5uIyAKKIPAomiKq\\/kFI.SVHjG\",\"roles\":[\"1\",null],\"permissions\":[null],\"_token\":\"aoPfqsF4TjqjvfgKixDLlHhyb2v0PI0SxizwLaka\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/users\"}', '2020-04-11 07:26:31', '2020-04-11 07:26:31');
INSERT INTO `admin_operation_log` VALUES (2194, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-11 07:26:31', '2020-04-11 07:26:31');
INSERT INTO `admin_operation_log` VALUES (2195, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-11 07:26:34', '2020-04-11 07:26:34');
INSERT INTO `admin_operation_log` VALUES (2196, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:34:21', '2020-04-11 07:34:21');
INSERT INTO `admin_operation_log` VALUES (2197, 1, 'admin/professions', 'GET', '127.0.0.1', '[]', '2020-04-11 07:35:01', '2020-04-11 07:35:01');
INSERT INTO `admin_operation_log` VALUES (2198, 1, 'admin/professions', 'GET', '127.0.0.1', '[]', '2020-04-11 07:35:38', '2020-04-11 07:35:38');
INSERT INTO `admin_operation_log` VALUES (2199, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:35:52', '2020-04-11 07:35:52');
INSERT INTO `admin_operation_log` VALUES (2200, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:35:55', '2020-04-11 07:35:55');
INSERT INTO `admin_operation_log` VALUES (2201, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"full_name\":\"\\u901a\\u4fe1\",\"intro\":\"\\u5389\\u5bb3\"}', '2020-04-11 07:36:05', '2020-04-11 07:36:05');
INSERT INTO `admin_operation_log` VALUES (2202, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"full_name\":\"\\u901a\\u4fe1\",\"intro\":\"\\u725b\\u903c\"}', '2020-04-11 07:36:13', '2020-04-11 07:36:13');
INSERT INTO `admin_operation_log` VALUES (2203, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:36:14', '2020-04-11 07:36:14');
INSERT INTO `admin_operation_log` VALUES (2204, 1, 'admin/professions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:36:19', '2020-04-11 07:36:19');
INSERT INTO `admin_operation_log` VALUES (2205, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:36:27', '2020-04-11 07:36:27');
INSERT INTO `admin_operation_log` VALUES (2206, 1, 'admin/professions/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:36:29', '2020-04-11 07:36:29');
INSERT INTO `admin_operation_log` VALUES (2207, 1, 'admin/professions/1', 'GET', '127.0.0.1', '[]', '2020-04-11 07:36:39', '2020-04-11 07:36:39');
INSERT INTO `admin_operation_log` VALUES (2208, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:36:42', '2020-04-11 07:36:42');
INSERT INTO `admin_operation_log` VALUES (2209, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:36:44', '2020-04-11 07:36:44');
INSERT INTO `admin_operation_log` VALUES (2210, 1, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-11 07:37:18', '2020-04-11 07:37:18');
INSERT INTO `admin_operation_log` VALUES (2211, 1, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-11 07:37:28', '2020-04-11 07:37:28');
INSERT INTO `admin_operation_log` VALUES (2212, 1, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-11 07:37:51', '2020-04-11 07:37:51');
INSERT INTO `admin_operation_log` VALUES (2213, 1, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-11 07:38:09', '2020-04-11 07:38:09');
INSERT INTO `admin_operation_log` VALUES (2214, 1, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-11 07:38:39', '2020-04-11 07:38:39');
INSERT INTO `admin_operation_log` VALUES (2215, 1, 'admin/squads/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:38:41', '2020-04-11 07:38:41');
INSERT INTO `admin_operation_log` VALUES (2216, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:38:57', '2020-04-11 07:38:57');
INSERT INTO `admin_operation_log` VALUES (2217, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"studentSquads_name\":\"\\u7f51\"}', '2020-04-11 07:40:01', '2020-04-11 07:40:01');
INSERT INTO `admin_operation_log` VALUES (2218, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"studentSquads_name\":\"\\u7f51\"}', '2020-04-11 07:40:09', '2020-04-11 07:40:09');
INSERT INTO `admin_operation_log` VALUES (2219, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:40:14', '2020-04-11 07:40:14');
INSERT INTO `admin_operation_log` VALUES (2220, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-11 07:40:17', '2020-04-11 07:40:17');
INSERT INTO `admin_operation_log` VALUES (2221, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"studentSquads_name\":\"\\u738b\",\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:40:22', '2020-04-11 07:40:22');
INSERT INTO `admin_operation_log` VALUES (2222, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:40:42', '2020-04-11 07:40:42');
INSERT INTO `admin_operation_log` VALUES (2223, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-11 07:40:43', '2020-04-11 07:40:43');
INSERT INTO `admin_operation_log` VALUES (2224, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"studentSquads_student\":{\"name\":\"\\u738b\"},\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:40:50', '2020-04-11 07:40:50');
INSERT INTO `admin_operation_log` VALUES (2225, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:40:54', '2020-04-11 07:40:54');
INSERT INTO `admin_operation_log` VALUES (2226, 1, 'admin/squads/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:41:11', '2020-04-11 07:41:11');
INSERT INTO `admin_operation_log` VALUES (2227, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:41:14', '2020-04-11 07:41:14');
INSERT INTO `admin_operation_log` VALUES (2228, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2020-04-11 07:41:57', '2020-04-11 07:41:57');
INSERT INTO `admin_operation_log` VALUES (2229, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2020-04-11 07:43:19', '2020-04-11 07:43:19');
INSERT INTO `admin_operation_log` VALUES (2230, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2020-04-11 07:43:29', '2020-04-11 07:43:29');
INSERT INTO `admin_operation_log` VALUES (2231, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"full_name\":null,\"attribute\":null,\"teachers\":null,\"squads\":\"\\u8ba1\\u79d1\",\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:43:36', '2020-04-11 07:43:36');
INSERT INTO `admin_operation_log` VALUES (2232, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"full_name\":null,\"attribute\":null,\"teachers\":null,\"squads\":\"\\u8ba1\\u79d1\"}', '2020-04-11 07:44:08', '2020-04-11 07:44:08');
INSERT INTO `admin_operation_log` VALUES (2233, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"squads\":\"\\u8ba1\\u79d1\",\"full_name\":\"\\u8ba1\\u7b97\\u673a\",\"attribute\":null,\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:44:16', '2020-04-11 07:44:16');
INSERT INTO `admin_operation_log` VALUES (2234, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"squads\":\"\\u8ba1\\u79d1\",\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:44:17', '2020-04-11 07:44:17');
INSERT INTO `admin_operation_log` VALUES (2235, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"squads\":\"\\u8ba1\\u79d1\",\"_pjax\":\"#pjax-container\",\"full_name\":null,\"attribute\":\"\\u5fc5\\u4fee\"}', '2020-04-11 07:44:24', '2020-04-11 07:44:24');
INSERT INTO `admin_operation_log` VALUES (2236, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"squads\":\"\\u8ba1\\u79d1\",\"_pjax\":\"#pjax-container\",\"full_name\":null,\"attribute\":\"\\u9650\\u9009\"}', '2020-04-11 07:44:38', '2020-04-11 07:44:38');
INSERT INTO `admin_operation_log` VALUES (2237, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"squads\":\"\\u8ba1\\u79d1\",\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:44:41', '2020-04-11 07:44:41');
INSERT INTO `admin_operation_log` VALUES (2238, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:44:49', '2020-04-11 07:44:49');
INSERT INTO `admin_operation_log` VALUES (2239, 1, 'admin/courses/1', 'GET', '127.0.0.1', '[]', '2020-04-11 07:44:57', '2020-04-11 07:44:57');
INSERT INTO `admin_operation_log` VALUES (2240, 1, 'admin/courses/1', 'GET', '127.0.0.1', '[]', '2020-04-11 07:46:04', '2020-04-11 07:46:04');
INSERT INTO `admin_operation_log` VALUES (2241, 1, 'admin/courses/1', 'GET', '127.0.0.1', '[]', '2020-04-11 07:46:14', '2020-04-11 07:46:14');
INSERT INTO `admin_operation_log` VALUES (2242, 1, 'admin/courses/1', 'GET', '127.0.0.1', '[]', '2020-04-11 07:46:48', '2020-04-11 07:46:48');
INSERT INTO `admin_operation_log` VALUES (2243, 1, 'admin/courses/1', 'GET', '127.0.0.1', '[]', '2020-04-11 07:47:25', '2020-04-11 07:47:25');
INSERT INTO `admin_operation_log` VALUES (2244, 1, 'admin/courses/1', 'GET', '127.0.0.1', '[]', '2020-04-11 07:48:10', '2020-04-11 07:48:10');
INSERT INTO `admin_operation_log` VALUES (2245, 1, 'admin/courses/1', 'GET', '127.0.0.1', '[]', '2020-04-11 07:48:17', '2020-04-11 07:48:17');
INSERT INTO `admin_operation_log` VALUES (2246, 1, 'admin/courses/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:48:29', '2020-04-11 07:48:29');
INSERT INTO `admin_operation_log` VALUES (2247, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:49:02', '2020-04-11 07:49:02');
INSERT INTO `admin_operation_log` VALUES (2248, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:49:07', '2020-04-11 07:49:07');
INSERT INTO `admin_operation_log` VALUES (2249, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-11 07:49:31', '2020-04-11 07:49:31');
INSERT INTO `admin_operation_log` VALUES (2250, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-11 07:50:20', '2020-04-11 07:50:20');
INSERT INTO `admin_operation_log` VALUES (2251, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"name\":\"\\u603b\",\"course\":{\"full_name\":null},\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:50:26', '2020-04-11 07:50:26');
INSERT INTO `admin_operation_log` VALUES (2252, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:50:27', '2020-04-11 07:50:27');
INSERT INTO `admin_operation_log` VALUES (2253, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"name\":\"\\u6559\\u5e08\",\"course\":{\"full_name\":null}}', '2020-04-11 07:50:32', '2020-04-11 07:50:32');
INSERT INTO `admin_operation_log` VALUES (2254, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:50:34', '2020-04-11 07:50:34');
INSERT INTO `admin_operation_log` VALUES (2255, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"name\":null,\"course\":{\"full_name\":\"\\u8ba1\\u7b97\\u673a\\u7f51\\u7edc\"}}', '2020-04-11 07:50:41', '2020-04-11 07:50:41');
INSERT INTO `admin_operation_log` VALUES (2256, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"name\":null,\"course\":{\"full_name\":\"\\u4e0a\\u96d5\\u523b\\u6280\\u6cd5\"}}', '2020-04-11 07:50:47', '2020-04-11 07:50:47');
INSERT INTO `admin_operation_log` VALUES (2257, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:50:49', '2020-04-11 07:50:49');
INSERT INTO `admin_operation_log` VALUES (2258, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-11 07:50:57', '2020-04-11 07:50:57');
INSERT INTO `admin_operation_log` VALUES (2259, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:51:07', '2020-04-11 07:51:07');
INSERT INTO `admin_operation_log` VALUES (2260, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '[]', '2020-04-11 07:51:28', '2020-04-11 07:51:28');
INSERT INTO `admin_operation_log` VALUES (2261, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '[]', '2020-04-11 07:51:44', '2020-04-11 07:51:44');
INSERT INTO `admin_operation_log` VALUES (2262, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '[]', '2020-04-11 07:52:10', '2020-04-11 07:52:10');
INSERT INTO `admin_operation_log` VALUES (2263, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '[]', '2020-04-11 07:52:25', '2020-04-11 07:52:25');
INSERT INTO `admin_operation_log` VALUES (2264, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:54:58', '2020-04-11 07:54:58');
INSERT INTO `admin_operation_log` VALUES (2265, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 07:55:22', '2020-04-11 07:55:22');
INSERT INTO `admin_operation_log` VALUES (2266, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 07:55:30', '2020-04-11 07:55:30');
INSERT INTO `admin_operation_log` VALUES (2267, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 07:55:38', '2020-04-11 07:55:38');
INSERT INTO `admin_operation_log` VALUES (2268, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 07:56:45', '2020-04-11 07:56:45');
INSERT INTO `admin_operation_log` VALUES (2269, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 08:04:14', '2020-04-11 08:04:14');
INSERT INTO `admin_operation_log` VALUES (2270, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 08:05:24', '2020-04-11 08:05:24');
INSERT INTO `admin_operation_log` VALUES (2271, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:05:29', '2020-04-11 08:05:29');
INSERT INTO `admin_operation_log` VALUES (2272, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:05:30', '2020-04-11 08:05:30');
INSERT INTO `admin_operation_log` VALUES (2273, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '[]', '2020-04-11 08:07:14', '2020-04-11 08:07:14');
INSERT INTO `admin_operation_log` VALUES (2274, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:07:56', '2020-04-11 08:07:56');
INSERT INTO `admin_operation_log` VALUES (2275, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:07:59', '2020-04-11 08:07:59');
INSERT INTO `admin_operation_log` VALUES (2276, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 08:09:55', '2020-04-11 08:09:55');
INSERT INTO `admin_operation_log` VALUES (2277, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:09:58', '2020-04-11 08:09:58');
INSERT INTO `admin_operation_log` VALUES (2278, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:10:00', '2020-04-11 08:10:00');
INSERT INTO `admin_operation_log` VALUES (2279, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:10:08', '2020-04-11 08:10:08');
INSERT INTO `admin_operation_log` VALUES (2280, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-11 08:11:51', '2020-04-11 08:11:51');
INSERT INTO `admin_operation_log` VALUES (2281, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:11:53', '2020-04-11 08:11:53');
INSERT INTO `admin_operation_log` VALUES (2282, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 08:12:43', '2020-04-11 08:12:43');
INSERT INTO `admin_operation_log` VALUES (2283, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 08:12:52', '2020-04-11 08:12:52');
INSERT INTO `admin_operation_log` VALUES (2284, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 08:15:41', '2020-04-11 08:15:41');
INSERT INTO `admin_operation_log` VALUES (2285, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 08:15:55', '2020-04-11 08:15:55');
INSERT INTO `admin_operation_log` VALUES (2286, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 08:17:26', '2020-04-11 08:17:26');
INSERT INTO `admin_operation_log` VALUES (2287, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 08:18:32', '2020-04-11 08:18:32');
INSERT INTO `admin_operation_log` VALUES (2288, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 08:19:48', '2020-04-11 08:19:48');
INSERT INTO `admin_operation_log` VALUES (2289, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 08:20:40', '2020-04-11 08:20:40');
INSERT INTO `admin_operation_log` VALUES (2290, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 08:21:42', '2020-04-11 08:21:42');
INSERT INTO `admin_operation_log` VALUES (2291, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 08:21:59', '2020-04-11 08:21:59');
INSERT INTO `admin_operation_log` VALUES (2292, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 08:22:26', '2020-04-11 08:22:26');
INSERT INTO `admin_operation_log` VALUES (2293, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 08:22:40', '2020-04-11 08:22:40');
INSERT INTO `admin_operation_log` VALUES (2294, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 08:22:50', '2020-04-11 08:22:50');
INSERT INTO `admin_operation_log` VALUES (2295, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 08:23:40', '2020-04-11 08:23:40');
INSERT INTO `admin_operation_log` VALUES (2296, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 08:24:21', '2020-04-11 08:24:21');
INSERT INTO `admin_operation_log` VALUES (2297, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 08:24:46', '2020-04-11 08:24:46');
INSERT INTO `admin_operation_log` VALUES (2298, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 08:24:56', '2020-04-11 08:24:56');
INSERT INTO `admin_operation_log` VALUES (2299, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 08:26:05', '2020-04-11 08:26:05');
INSERT INTO `admin_operation_log` VALUES (2300, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 08:26:22', '2020-04-11 08:26:22');
INSERT INTO `admin_operation_log` VALUES (2301, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 08:26:42', '2020-04-11 08:26:42');
INSERT INTO `admin_operation_log` VALUES (2302, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 08:31:27', '2020-04-11 08:31:27');
INSERT INTO `admin_operation_log` VALUES (2303, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 08:32:04', '2020-04-11 08:32:04');
INSERT INTO `admin_operation_log` VALUES (2304, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 08:33:05', '2020-04-11 08:33:05');
INSERT INTO `admin_operation_log` VALUES (2305, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 08:33:27', '2020-04-11 08:33:27');
INSERT INTO `admin_operation_log` VALUES (2306, 1, 'admin/formula-lefts/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u603b\\u5206\",\"course_id\":\"1\",\"pid\":\"0\",\"metaCalTypes\":[\"1\",null],\"_token\":\"aoPfqsF4TjqjvfgKixDLlHhyb2v0PI0SxizwLaka\",\"_method\":\"PUT\"}', '2020-04-11 08:34:03', '2020-04-11 08:34:03');
INSERT INTO `admin_operation_log` VALUES (2307, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-11 08:34:03', '2020-04-11 08:34:03');
INSERT INTO `admin_operation_log` VALUES (2308, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:34:06', '2020-04-11 08:34:06');
INSERT INTO `admin_operation_log` VALUES (2309, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:34:12', '2020-04-11 08:34:12');
INSERT INTO `admin_operation_log` VALUES (2310, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:34:16', '2020-04-11 08:34:16');
INSERT INTO `admin_operation_log` VALUES (2311, 1, 'admin/formula-lefts/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u603b\\u5206\",\"course_id\":\"1\",\"pid\":\"0\",\"metaCalTypes\":[\"1\",\"2\",\"3\",null],\"_token\":\"aoPfqsF4TjqjvfgKixDLlHhyb2v0PI0SxizwLaka\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/formula-lefts\"}', '2020-04-11 08:34:27', '2020-04-11 08:34:27');
INSERT INTO `admin_operation_log` VALUES (2312, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-11 08:34:27', '2020-04-11 08:34:27');
INSERT INTO `admin_operation_log` VALUES (2313, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:34:30', '2020-04-11 08:34:30');
INSERT INTO `admin_operation_log` VALUES (2314, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:34:52', '2020-04-11 08:34:52');
INSERT INTO `admin_operation_log` VALUES (2315, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:34:59', '2020-04-11 08:34:59');
INSERT INTO `admin_operation_log` VALUES (2316, 1, 'admin/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:35:02', '2020-04-11 08:35:02');
INSERT INTO `admin_operation_log` VALUES (2317, 1, 'admin/articles/1', 'PUT', '127.0.0.1', '{\"user_id\":\"1\",\"title\":\"\\u5b64\\u5c9b\\u60ca\\u9b42\",\"labels\":[\"1\",\"2\",null],\"intro\":\"\\u8bb2\\u8ff0\\u4e86\\u4e00\\u4e2a\\u5728\\u5b64\\u5c9b\\u4e0a\\u53d1\\u751f\\u7684\\u60ca\\u9b42\\u6545\\u4e8b\",\"content\":\"# \\u4e00\\u7ea7\\u6807\\u9898\\r\\n## \\u4e8c\\u7ea7\\u6807\\u9898\\r\\n### \\u4e09\\u7ea7\\u6807\\u9898\\r\\n**\\u52a0\\u7c97**\\r\\n\\r\\n| \\u6d4b\\u8bd5  | \\u6d4b\\u8bd5  |\\r\\n| ------------ | ------------ |\\r\\n| \\u6d4b\\u8bd5  | \\u6d4b\\u8bd5  |\\r\\n| \\u6d4b\\u8bd5  |  \\u6d4b\\u8bd5 |\",\"_token\":\"aoPfqsF4TjqjvfgKixDLlHhyb2v0PI0SxizwLaka\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/articles\"}', '2020-04-11 08:35:09', '2020-04-11 08:35:09');
INSERT INTO `admin_operation_log` VALUES (2318, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-11 08:35:10', '2020-04-11 08:35:10');
INSERT INTO `admin_operation_log` VALUES (2319, 1, 'admin/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:35:12', '2020-04-11 08:35:12');
INSERT INTO `admin_operation_log` VALUES (2320, 1, 'admin/articles/1', 'PUT', '127.0.0.1', '{\"user_id\":\"1\",\"title\":\"\\u5b64\\u5c9b\\u60ca\\u9b42\",\"labels\":[\"1\",\"2\",null],\"intro\":\"\\u8bb2\\u8ff0\\u4e86\\u4e00\\u4e2a\\u5728\\u5b64\\u5c9b\\u4e0a\\u53d1\\u751f\\u7684\\u60ca\\u9b42\\u6545\\u4e8b\",\"content\":\"# \\u4e00\\u7ea7\\u6807\\u9898\\r\\n## \\u4e8c\\u7ea7\\u6807\\u9898\\r\\n### \\u4e09\\u7ea7\\u6807\\u9898\\r\\n**\\u52a0\\u7c97**\\r\\n\\r\\n| \\u6d4b\\u8bd5  | \\u6d4b\\u8bd5  |\\r\\n| ------------ | ------------ |\\r\\n| \\u6d4b\\u8bd5  | \\u6d4b\\u8bd5  |\\r\\n| \\u6d4b\\u8bd5  |  \\u6d4b\\u8bd5 |\",\"_token\":\"aoPfqsF4TjqjvfgKixDLlHhyb2v0PI0SxizwLaka\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/articles\"}', '2020-04-11 08:35:15', '2020-04-11 08:35:15');
INSERT INTO `admin_operation_log` VALUES (2321, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-11 08:35:15', '2020-04-11 08:35:15');
INSERT INTO `admin_operation_log` VALUES (2322, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-11 08:38:45', '2020-04-11 08:38:45');
INSERT INTO `admin_operation_log` VALUES (2323, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:38:49', '2020-04-11 08:38:49');
INSERT INTO `admin_operation_log` VALUES (2324, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:38:51', '2020-04-11 08:38:51');
INSERT INTO `admin_operation_log` VALUES (2325, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:38:53', '2020-04-11 08:38:53');
INSERT INTO `admin_operation_log` VALUES (2326, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:39:44', '2020-04-11 08:39:44');
INSERT INTO `admin_operation_log` VALUES (2327, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:39:51', '2020-04-11 08:39:51');
INSERT INTO `admin_operation_log` VALUES (2328, 1, 'admin/fractions', 'GET', '127.0.0.1', '[]', '2020-04-11 08:54:43', '2020-04-11 08:54:43');
INSERT INTO `admin_operation_log` VALUES (2329, 1, 'admin/fractions', 'GET', '127.0.0.1', '[]', '2020-04-11 08:55:25', '2020-04-11 08:55:25');
INSERT INTO `admin_operation_log` VALUES (2330, 1, 'admin/fractions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:55:33', '2020-04-11 08:55:33');
INSERT INTO `admin_operation_log` VALUES (2331, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:55:40', '2020-04-11 08:55:40');
INSERT INTO `admin_operation_log` VALUES (2332, 1, 'admin/fractions/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:55:46', '2020-04-11 08:55:46');
INSERT INTO `admin_operation_log` VALUES (2333, 1, 'admin/fractions/1', 'GET', '127.0.0.1', '[]', '2020-04-11 08:58:48', '2020-04-11 08:58:48');
INSERT INTO `admin_operation_log` VALUES (2334, 1, 'admin/fractions/1', 'GET', '127.0.0.1', '[]', '2020-04-11 08:58:58', '2020-04-11 08:58:58');
INSERT INTO `admin_operation_log` VALUES (2335, 1, 'admin/fractions/1', 'GET', '127.0.0.1', '[]', '2020-04-11 08:59:04', '2020-04-11 08:59:04');
INSERT INTO `admin_operation_log` VALUES (2336, 1, 'admin/fractions/1', 'GET', '127.0.0.1', '[]', '2020-04-11 08:59:40', '2020-04-11 08:59:40');
INSERT INTO `admin_operation_log` VALUES (2337, 1, 'admin/fractions/1', 'GET', '127.0.0.1', '[]', '2020-04-11 09:00:16', '2020-04-11 09:00:16');
INSERT INTO `admin_operation_log` VALUES (2338, 1, 'admin/fractions/1', 'GET', '127.0.0.1', '[]', '2020-04-11 09:01:26', '2020-04-11 09:01:26');
INSERT INTO `admin_operation_log` VALUES (2339, 1, 'admin/fractions/1', 'GET', '127.0.0.1', '[]', '2020-04-11 09:02:21', '2020-04-11 09:02:21');
INSERT INTO `admin_operation_log` VALUES (2340, 1, 'admin/fractions/1', 'GET', '127.0.0.1', '[]', '2020-04-11 09:02:56', '2020-04-11 09:02:56');
INSERT INTO `admin_operation_log` VALUES (2341, 1, 'admin/fractions/1', 'GET', '127.0.0.1', '[]', '2020-04-11 09:08:52', '2020-04-11 09:08:52');
INSERT INTO `admin_operation_log` VALUES (2342, 1, 'admin/fractions/1', 'GET', '127.0.0.1', '[]', '2020-04-11 09:09:05', '2020-04-11 09:09:05');
INSERT INTO `admin_operation_log` VALUES (2343, 1, 'admin/fractions/1', 'GET', '127.0.0.1', '[]', '2020-04-11 09:09:30', '2020-04-11 09:09:30');
INSERT INTO `admin_operation_log` VALUES (2344, 1, 'admin/fractions/1', 'GET', '127.0.0.1', '[]', '2020-04-11 09:09:49', '2020-04-11 09:09:49');
INSERT INTO `admin_operation_log` VALUES (2345, 1, 'admin/fractions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:09:51', '2020-04-11 09:09:51');
INSERT INTO `admin_operation_log` VALUES (2346, 1, 'admin/fractions/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 09:10:08', '2020-04-11 09:10:08');
INSERT INTO `admin_operation_log` VALUES (2347, 1, 'admin/course-type-constants', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:10:13', '2020-04-11 09:10:13');
INSERT INTO `admin_operation_log` VALUES (2348, 1, 'admin/course-type-constants', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:10:17', '2020-04-11 09:10:17');
INSERT INTO `admin_operation_log` VALUES (2349, 1, 'admin/course-type-constants', 'GET', '127.0.0.1', '[]', '2020-04-11 09:12:01', '2020-04-11 09:12:01');
INSERT INTO `admin_operation_log` VALUES (2350, 1, 'admin/course-type-constants/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:12:07', '2020-04-11 09:12:07');
INSERT INTO `admin_operation_log` VALUES (2351, 1, 'admin/course-type-constants', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:12:10', '2020-04-11 09:12:10');
INSERT INTO `admin_operation_log` VALUES (2352, 1, 'admin/course-type-constants/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:12:12', '2020-04-11 09:12:12');
INSERT INTO `admin_operation_log` VALUES (2353, 1, 'admin/course-type-constants', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:12:14', '2020-04-11 09:12:14');
INSERT INTO `admin_operation_log` VALUES (2354, 1, 'admin/course-type-constants/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:12:16', '2020-04-11 09:12:16');
INSERT INTO `admin_operation_log` VALUES (2355, 1, 'admin/course-type-constants/1', 'GET', '127.0.0.1', '[]', '2020-04-11 09:12:26', '2020-04-11 09:12:26');
INSERT INTO `admin_operation_log` VALUES (2356, 1, 'admin/course-type-constants/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:12:29', '2020-04-11 09:12:29');
INSERT INTO `admin_operation_log` VALUES (2357, 1, 'admin/course-type-constants', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:12:31', '2020-04-11 09:12:31');
INSERT INTO `admin_operation_log` VALUES (2358, 1, 'admin/course-type-constants', 'GET', '127.0.0.1', '[]', '2020-04-11 09:12:44', '2020-04-11 09:12:44');
INSERT INTO `admin_operation_log` VALUES (2359, 1, 'admin/meta-cal-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:12:48', '2020-04-11 09:12:48');
INSERT INTO `admin_operation_log` VALUES (2360, 1, 'admin/meta-cal-types', 'GET', '127.0.0.1', '[]', '2020-04-11 09:13:14', '2020-04-11 09:13:14');
INSERT INTO `admin_operation_log` VALUES (2361, 1, 'admin/meta-cal-types', 'GET', '127.0.0.1', '[]', '2020-04-11 09:13:26', '2020-04-11 09:13:26');
INSERT INTO `admin_operation_log` VALUES (2362, 1, 'admin/meta-cal-types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:13:28', '2020-04-11 09:13:28');
INSERT INTO `admin_operation_log` VALUES (2363, 1, 'admin/meta-cal-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:13:30', '2020-04-11 09:13:30');
INSERT INTO `admin_operation_log` VALUES (2364, 1, 'admin/meta-cal-types/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:13:33', '2020-04-11 09:13:33');
INSERT INTO `admin_operation_log` VALUES (2365, 1, 'admin/meta-cal-types/1', 'GET', '127.0.0.1', '[]', '2020-04-11 09:13:49', '2020-04-11 09:13:49');
INSERT INTO `admin_operation_log` VALUES (2366, 1, 'admin/meta-cal-types/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:13:50', '2020-04-11 09:13:50');
INSERT INTO `admin_operation_log` VALUES (2367, 1, 'admin/meta-cal-types/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:13:52', '2020-04-11 09:13:52');
INSERT INTO `admin_operation_log` VALUES (2368, 1, 'admin/meta-cal-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:13:53', '2020-04-11 09:13:53');
INSERT INTO `admin_operation_log` VALUES (2369, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:13:58', '2020-04-11 09:13:58');
INSERT INTO `admin_operation_log` VALUES (2370, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:14:04', '2020-04-11 09:14:04');
INSERT INTO `admin_operation_log` VALUES (2371, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:14:06', '2020-04-11 09:14:06');
INSERT INTO `admin_operation_log` VALUES (2372, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:14:08', '2020-04-11 09:14:08');
INSERT INTO `admin_operation_log` VALUES (2373, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-11 09:14:23', '2020-04-11 09:14:23');
INSERT INTO `admin_operation_log` VALUES (2374, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-11 09:14:46', '2020-04-11 09:14:46');
INSERT INTO `admin_operation_log` VALUES (2375, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:14:50', '2020-04-11 09:14:50');
INSERT INTO `admin_operation_log` VALUES (2376, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:14:54', '2020-04-11 09:14:54');
INSERT INTO `admin_operation_log` VALUES (2377, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-11 09:15:01', '2020-04-11 09:15:01');
INSERT INTO `admin_operation_log` VALUES (2378, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:15:04', '2020-04-11 09:15:04');
INSERT INTO `admin_operation_log` VALUES (2379, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:15:12', '2020-04-11 09:15:12');
INSERT INTO `admin_operation_log` VALUES (2380, 1, 'admin/auth/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:15:14', '2020-04-11 09:15:14');
INSERT INTO `admin_operation_log` VALUES (2381, 1, 'admin/auth/users/1', 'GET', '127.0.0.1', '[]', '2020-04-11 09:15:26', '2020-04-11 09:15:26');
INSERT INTO `admin_operation_log` VALUES (2382, 1, 'admin/auth/users/1', 'GET', '127.0.0.1', '[]', '2020-04-11 09:16:12', '2020-04-11 09:16:12');
INSERT INTO `admin_operation_log` VALUES (2383, 1, 'admin/auth/users/1', 'GET', '127.0.0.1', '[]', '2020-04-11 09:16:42', '2020-04-11 09:16:42');
INSERT INTO `admin_operation_log` VALUES (2384, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:16:47', '2020-04-11 09:16:47');
INSERT INTO `admin_operation_log` VALUES (2385, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 09:17:01', '2020-04-11 09:17:01');
INSERT INTO `admin_operation_log` VALUES (2386, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 09:17:28', '2020-04-11 09:17:28');
INSERT INTO `admin_operation_log` VALUES (2387, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:17:31', '2020-04-11 09:17:31');
INSERT INTO `admin_operation_log` VALUES (2388, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:17:32', '2020-04-11 09:17:32');
INSERT INTO `admin_operation_log` VALUES (2389, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:17:33', '2020-04-11 09:17:33');
INSERT INTO `admin_operation_log` VALUES (2390, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:17:36', '2020-04-11 09:17:36');
INSERT INTO `admin_operation_log` VALUES (2391, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-11 11:51:57', '2020-04-11 11:51:57');
INSERT INTO `admin_operation_log` VALUES (2392, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 11:52:02', '2020-04-11 11:52:02');
INSERT INTO `admin_operation_log` VALUES (2393, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 11:57:11', '2020-04-11 11:57:11');
INSERT INTO `admin_operation_log` VALUES (2394, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 11:57:13', '2020-04-11 11:57:13');
INSERT INTO `admin_operation_log` VALUES (2395, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 11:57:16', '2020-04-11 11:57:16');
INSERT INTO `admin_operation_log` VALUES (2396, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 11:57:19', '2020-04-11 11:57:19');
INSERT INTO `admin_operation_log` VALUES (2397, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 11:57:32', '2020-04-11 11:57:32');
INSERT INTO `admin_operation_log` VALUES (2398, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-11 13:40:10', '2020-04-11 13:40:10');
INSERT INTO `admin_operation_log` VALUES (2399, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 13:40:18', '2020-04-11 13:40:18');
INSERT INTO `admin_operation_log` VALUES (2400, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"student\":{\"name\":\"\\u8001\\u5434\"},\"course\":{\"full_name\":null},\"metaCalType\":{\"name\":null},\"order\":null}', '2020-04-11 13:40:27', '2020-04-11 13:40:27');
INSERT INTO `admin_operation_log` VALUES (2401, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"z5M5H4580uCNAjUdbW66L6P8Ub25pL6JvDYKaAP6\",\"_action\":\"App_Admin_Actions_Fractions_ImportFractions\"}', '2020-04-11 13:51:42', '2020-04-11 13:51:42');
INSERT INTO `admin_operation_log` VALUES (2402, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"student\":{\"name\":\"\\u8001\\u5434\"},\"course\":{\"full_name\":null},\"metaCalType\":{\"name\":null},\"order\":null}', '2020-04-11 13:51:51', '2020-04-11 13:51:51');
INSERT INTO `admin_operation_log` VALUES (2403, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"z5M5H4580uCNAjUdbW66L6P8Ub25pL6JvDYKaAP6\",\"_action\":\"App_Admin_Actions_Fractions_ImportFractions\"}', '2020-04-11 13:56:03', '2020-04-11 13:56:03');
INSERT INTO `admin_operation_log` VALUES (2404, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"z5M5H4580uCNAjUdbW66L6P8Ub25pL6JvDYKaAP6\",\"_action\":\"App_Admin_Actions_Fractions_ImportFractions\"}', '2020-04-11 13:58:25', '2020-04-11 13:58:25');
INSERT INTO `admin_operation_log` VALUES (2405, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"z5M5H4580uCNAjUdbW66L6P8Ub25pL6JvDYKaAP6\",\"_action\":\"App_Admin_Actions_Fractions_ImportFractions\"}', '2020-04-11 13:58:38', '2020-04-11 13:58:38');
INSERT INTO `admin_operation_log` VALUES (2406, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"student\":{\"name\":\"\\u8001\\u5434\"},\"course\":{\"full_name\":null},\"metaCalType\":{\"name\":null},\"order\":null,\"_pjax\":\"#pjax-container\"}', '2020-04-11 13:58:38', '2020-04-11 13:58:38');
INSERT INTO `admin_operation_log` VALUES (2407, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"student\":{\"name\":\"\\u8001\\u5434\"},\"course\":{\"full_name\":null},\"metaCalType\":{\"name\":null},\"order\":null}', '2020-04-11 13:58:41', '2020-04-11 13:58:41');
INSERT INTO `admin_operation_log` VALUES (2408, 1, 'admin/fractions/11', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"z5M5H4580uCNAjUdbW66L6P8Ub25pL6JvDYKaAP6\"}', '2020-04-11 13:59:00', '2020-04-11 13:59:00');
INSERT INTO `admin_operation_log` VALUES (2409, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"student\":{\"name\":\"\\u8001\\u5434\"},\"course\":{\"full_name\":null},\"metaCalType\":{\"name\":null},\"order\":null,\"_pjax\":\"#pjax-container\"}', '2020-04-11 13:59:00', '2020-04-11 13:59:00');
INSERT INTO `admin_operation_log` VALUES (2410, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"student\":{\"name\":\"\\u8001\\u5434\"},\"course\":{\"full_name\":null},\"metaCalType\":{\"name\":null},\"order\":null}', '2020-04-11 13:59:03', '2020-04-11 13:59:03');
INSERT INTO `admin_operation_log` VALUES (2411, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"student\":{\"name\":\"\\u8001\\u5434\"},\"course\":{\"full_name\":null},\"metaCalType\":{\"name\":null},\"order\":null}', '2020-04-11 14:34:37', '2020-04-11 14:34:37');
INSERT INTO `admin_operation_log` VALUES (2412, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"z5M5H4580uCNAjUdbW66L6P8Ub25pL6JvDYKaAP6\",\"_action\":\"App_Admin_Actions_Fractions_ImportFractions\"}', '2020-04-11 14:34:49', '2020-04-11 14:34:49');
INSERT INTO `admin_operation_log` VALUES (2413, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"z5M5H4580uCNAjUdbW66L6P8Ub25pL6JvDYKaAP6\",\"_action\":\"App_Admin_Actions_Fractions_ImportFractions\"}', '2020-04-11 14:34:56', '2020-04-11 14:34:56');
INSERT INTO `admin_operation_log` VALUES (2414, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"student\":{\"name\":\"\\u8001\\u5434\"},\"course\":{\"full_name\":null},\"metaCalType\":{\"name\":null},\"order\":null}', '2020-04-11 14:42:48', '2020-04-11 14:42:48');
INSERT INTO `admin_operation_log` VALUES (2415, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"z5M5H4580uCNAjUdbW66L6P8Ub25pL6JvDYKaAP6\",\"_action\":\"App_Admin_Actions_Fractions_ImportFractions\"}', '2020-04-11 14:42:57', '2020-04-11 14:42:57');
INSERT INTO `admin_operation_log` VALUES (2416, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"student\":{\"name\":\"\\u8001\\u5434\"},\"course\":{\"full_name\":null},\"metaCalType\":{\"name\":null},\"order\":null}', '2020-04-11 14:43:41', '2020-04-11 14:43:41');
INSERT INTO `admin_operation_log` VALUES (2417, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"oAQbbshvo8nVQBmlzgxY6qCeVAwRCcRxPaboUH4K\",\"_action\":\"App_Admin_Actions_Fractions_ImportFractions\"}', '2020-04-11 14:43:48', '2020-04-11 14:43:48');
INSERT INTO `admin_operation_log` VALUES (2418, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"oAQbbshvo8nVQBmlzgxY6qCeVAwRCcRxPaboUH4K\",\"_action\":\"App_Admin_Actions_Fractions_ImportFractions\"}', '2020-04-11 14:44:55', '2020-04-11 14:44:55');
INSERT INTO `admin_operation_log` VALUES (2419, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"student\":{\"name\":\"\\u8001\\u5434\"},\"course\":{\"full_name\":null},\"metaCalType\":{\"name\":null},\"order\":null,\"_pjax\":\"#pjax-container\"}', '2020-04-11 14:44:55', '2020-04-11 14:44:55');
INSERT INTO `admin_operation_log` VALUES (2420, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"student\":{\"name\":\"\\u8001\\u5434\"},\"course\":{\"full_name\":null},\"metaCalType\":{\"name\":null},\"order\":null}', '2020-04-11 14:45:09', '2020-04-11 14:45:09');
INSERT INTO `admin_operation_log` VALUES (2421, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"oAQbbshvo8nVQBmlzgxY6qCeVAwRCcRxPaboUH4K\",\"_action\":\"App_Admin_Actions_Fractions_ImportFractions\"}', '2020-04-11 14:45:28', '2020-04-11 14:45:28');
INSERT INTO `admin_operation_log` VALUES (2422, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"student\":{\"name\":\"\\u8001\\u5434\"},\"course\":{\"full_name\":null},\"metaCalType\":{\"name\":null},\"order\":null,\"_pjax\":\"#pjax-container\"}', '2020-04-11 14:45:28', '2020-04-11 14:45:28');
INSERT INTO `admin_operation_log` VALUES (2423, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"student\":{\"name\":\"\\u8001\\u5434\"},\"course\":{\"full_name\":null},\"metaCalType\":{\"name\":null},\"order\":null}', '2020-04-11 14:49:59', '2020-04-11 14:49:59');
INSERT INTO `admin_operation_log` VALUES (2424, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"student\":{\"name\":\"\\u8001\\u5434\"},\"course\":{\"full_name\":null},\"metaCalType\":{\"name\":null},\"order\":null}', '2020-04-11 14:50:07', '2020-04-11 14:50:07');
INSERT INTO `admin_operation_log` VALUES (2425, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"oAQbbshvo8nVQBmlzgxY6qCeVAwRCcRxPaboUH4K\",\"_action\":\"App_Admin_Actions_Fractions_ImportFractions\"}', '2020-04-11 14:50:15', '2020-04-11 14:50:15');
INSERT INTO `admin_operation_log` VALUES (2426, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"student\":{\"name\":\"\\u8001\\u5434\"},\"course\":{\"full_name\":null},\"metaCalType\":{\"name\":null},\"order\":null}', '2020-04-11 14:52:42', '2020-04-11 14:52:42');
INSERT INTO `admin_operation_log` VALUES (2427, 1, 'admin/fractions/12,13,14,15', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"oAQbbshvo8nVQBmlzgxY6qCeVAwRCcRxPaboUH4K\"}', '2020-04-11 14:52:56', '2020-04-11 14:52:56');
INSERT INTO `admin_operation_log` VALUES (2428, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"student\":{\"name\":\"\\u8001\\u5434\"},\"course\":{\"full_name\":null},\"metaCalType\":{\"name\":null},\"order\":null,\"_pjax\":\"#pjax-container\"}', '2020-04-11 14:52:57', '2020-04-11 14:52:57');
INSERT INTO `admin_operation_log` VALUES (2429, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"oAQbbshvo8nVQBmlzgxY6qCeVAwRCcRxPaboUH4K\",\"_action\":\"App_Admin_Actions_Fractions_ImportFractions\"}', '2020-04-11 14:53:04', '2020-04-11 14:53:04');
INSERT INTO `admin_operation_log` VALUES (2430, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"student\":{\"name\":\"\\u8001\\u5434\"},\"course\":{\"full_name\":null},\"metaCalType\":{\"name\":null},\"order\":null}', '2020-04-11 14:53:06', '2020-04-11 14:53:06');
INSERT INTO `admin_operation_log` VALUES (2431, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"student\":{\"name\":\"\\u8001\\u5434\"},\"course\":{\"full_name\":null},\"metaCalType\":{\"name\":null},\"order\":null}', '2020-04-11 14:53:49', '2020-04-11 14:53:49');
INSERT INTO `admin_operation_log` VALUES (2432, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"oAQbbshvo8nVQBmlzgxY6qCeVAwRCcRxPaboUH4K\",\"_action\":\"App_Admin_Actions_Fractions_ImportFractions\"}', '2020-04-11 14:53:55', '2020-04-11 14:53:55');
INSERT INTO `admin_operation_log` VALUES (2433, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 14:56:52', '2020-04-11 14:56:52');
INSERT INTO `admin_operation_log` VALUES (2434, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-11 14:56:54', '2020-04-11 14:56:54');
INSERT INTO `admin_operation_log` VALUES (2435, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"oAQbbshvo8nVQBmlzgxY6qCeVAwRCcRxPaboUH4K\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-11 14:57:05', '2020-04-11 14:57:05');
INSERT INTO `admin_operation_log` VALUES (2436, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"oAQbbshvo8nVQBmlzgxY6qCeVAwRCcRxPaboUH4K\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-11 14:58:38', '2020-04-11 14:58:38');
INSERT INTO `admin_operation_log` VALUES (2437, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-11 15:02:32', '2020-04-11 15:02:32');
INSERT INTO `admin_operation_log` VALUES (2438, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 15:02:38', '2020-04-11 15:02:38');
INSERT INTO `admin_operation_log` VALUES (2439, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"student\":{\"name\":\"\\u5434\"},\"course\":{\"full_name\":null},\"metaCalType\":{\"name\":null},\"order\":null}', '2020-04-11 15:02:54', '2020-04-11 15:02:54');
INSERT INTO `admin_operation_log` VALUES (2440, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"oAQbbshvo8nVQBmlzgxY6qCeVAwRCcRxPaboUH4K\",\"_action\":\"App_Admin_Actions_Fractions_ImportFractions\"}', '2020-04-11 15:03:18', '2020-04-11 15:03:18');
INSERT INTO `admin_operation_log` VALUES (2441, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"student\":{\"name\":\"\\u5434\"},\"course\":{\"full_name\":null},\"metaCalType\":{\"name\":null},\"order\":null}', '2020-04-11 15:03:26', '2020-04-11 15:03:26');
INSERT INTO `admin_operation_log` VALUES (2442, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"student\":{\"name\":\"\\u5434\"},\"course\":{\"full_name\":null},\"metaCalType\":{\"name\":null},\"order\":null}', '2020-04-11 15:04:50', '2020-04-11 15:04:50');
INSERT INTO `admin_operation_log` VALUES (2443, 1, 'admin/fractions/16', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"oAQbbshvo8nVQBmlzgxY6qCeVAwRCcRxPaboUH4K\"}', '2020-04-11 15:04:54', '2020-04-11 15:04:54');
INSERT INTO `admin_operation_log` VALUES (2444, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"student\":{\"name\":\"\\u5434\"},\"course\":{\"full_name\":null},\"metaCalType\":{\"name\":null},\"order\":null,\"_pjax\":\"#pjax-container\"}', '2020-04-11 15:04:55', '2020-04-11 15:04:55');
INSERT INTO `admin_operation_log` VALUES (2445, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"oAQbbshvo8nVQBmlzgxY6qCeVAwRCcRxPaboUH4K\",\"_action\":\"App_Admin_Actions_Fractions_ImportFractions\"}', '2020-04-11 15:05:03', '2020-04-11 15:05:03');
INSERT INTO `admin_operation_log` VALUES (2446, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"student\":{\"name\":\"\\u5434\"},\"course\":{\"full_name\":null},\"metaCalType\":{\"name\":null},\"order\":null,\"_pjax\":\"#pjax-container\"}', '2020-04-11 15:05:04', '2020-04-11 15:05:04');
INSERT INTO `admin_operation_log` VALUES (2447, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"student\":{\"name\":\"\\u5434\"},\"course\":{\"full_name\":null},\"metaCalType\":{\"name\":null},\"order\":null}', '2020-04-11 15:05:06', '2020-04-11 15:05:06');
INSERT INTO `admin_operation_log` VALUES (2448, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"student\":{\"name\":\"\\u5434\"},\"course\":{\"full_name\":null},\"metaCalType\":{\"name\":null},\"order\":null}', '2020-04-11 15:06:51', '2020-04-11 15:06:51');
INSERT INTO `admin_operation_log` VALUES (2449, 1, 'admin/fractions/17', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"oAQbbshvo8nVQBmlzgxY6qCeVAwRCcRxPaboUH4K\"}', '2020-04-11 15:06:57', '2020-04-11 15:06:57');
INSERT INTO `admin_operation_log` VALUES (2450, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"student\":{\"name\":\"\\u5434\"},\"course\":{\"full_name\":null},\"metaCalType\":{\"name\":null},\"order\":null,\"_pjax\":\"#pjax-container\"}', '2020-04-11 15:06:57', '2020-04-11 15:06:57');
INSERT INTO `admin_operation_log` VALUES (2451, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"oAQbbshvo8nVQBmlzgxY6qCeVAwRCcRxPaboUH4K\",\"_action\":\"App_Admin_Actions_Fractions_ImportFractions\"}', '2020-04-11 15:07:05', '2020-04-11 15:07:05');
INSERT INTO `admin_operation_log` VALUES (2452, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"student\":{\"name\":\"\\u5434\"},\"course\":{\"full_name\":null},\"metaCalType\":{\"name\":null},\"order\":null,\"_pjax\":\"#pjax-container\"}', '2020-04-11 15:07:05', '2020-04-11 15:07:05');
INSERT INTO `admin_operation_log` VALUES (2453, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 15:07:08', '2020-04-11 15:07:08');
INSERT INTO `admin_operation_log` VALUES (2454, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"oAQbbshvo8nVQBmlzgxY6qCeVAwRCcRxPaboUH4K\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-11 15:07:22', '2020-04-11 15:07:22');
INSERT INTO `admin_operation_log` VALUES (2455, 1, 'admin/auth/users/13', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"oAQbbshvo8nVQBmlzgxY6qCeVAwRCcRxPaboUH4K\"}', '2020-04-11 15:07:34', '2020-04-11 15:07:34');
INSERT INTO `admin_operation_log` VALUES (2456, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 15:07:34', '2020-04-11 15:07:34');
INSERT INTO `admin_operation_log` VALUES (2457, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"oAQbbshvo8nVQBmlzgxY6qCeVAwRCcRxPaboUH4K\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-11 15:07:41', '2020-04-11 15:07:41');
INSERT INTO `admin_operation_log` VALUES (2458, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 15:07:41', '2020-04-11 15:07:41');
INSERT INTO `admin_operation_log` VALUES (2459, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-11 15:26:17', '2020-04-11 15:26:17');
INSERT INTO `admin_operation_log` VALUES (2460, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 15:26:20', '2020-04-11 15:26:20');
INSERT INTO `admin_operation_log` VALUES (2461, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 15:26:22', '2020-04-11 15:26:22');
INSERT INTO `admin_operation_log` VALUES (2462, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 15:26:23', '2020-04-11 15:26:23');
INSERT INTO `admin_operation_log` VALUES (2463, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 15:26:28', '2020-04-11 15:26:28');
INSERT INTO `admin_operation_log` VALUES (2464, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 15:26:29', '2020-04-11 15:26:29');
INSERT INTO `admin_operation_log` VALUES (2465, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 15:26:31', '2020-04-11 15:26:31');
INSERT INTO `admin_operation_log` VALUES (2466, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 15:26:32', '2020-04-11 15:26:32');
INSERT INTO `admin_operation_log` VALUES (2467, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 15:26:33', '2020-04-11 15:26:33');
INSERT INTO `admin_operation_log` VALUES (2468, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 15:26:34', '2020-04-11 15:26:34');
INSERT INTO `admin_operation_log` VALUES (2469, 1, 'admin/course-type-constants', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 15:26:35', '2020-04-11 15:26:35');
INSERT INTO `admin_operation_log` VALUES (2470, 1, 'admin/meta-cal-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 15:26:36', '2020-04-11 15:26:36');
INSERT INTO `admin_operation_log` VALUES (2471, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 15:26:38', '2020-04-11 15:26:38');
INSERT INTO `admin_operation_log` VALUES (2472, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 15:26:39', '2020-04-11 15:26:39');
INSERT INTO `admin_operation_log` VALUES (2473, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-12 00:43:13', '2020-04-12 00:43:13');
INSERT INTO `admin_operation_log` VALUES (2474, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 00:43:20', '2020-04-12 00:43:20');
INSERT INTO `admin_operation_log` VALUES (2475, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 00:43:33', '2020-04-12 00:43:33');
INSERT INTO `admin_operation_log` VALUES (2476, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 00:43:36', '2020-04-12 00:43:36');
INSERT INTO `admin_operation_log` VALUES (2477, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 00:44:42', '2020-04-12 00:44:42');
INSERT INTO `admin_operation_log` VALUES (2478, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 00:44:44', '2020-04-12 00:44:44');
INSERT INTO `admin_operation_log` VALUES (2479, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 00:44:45', '2020-04-12 00:44:45');
INSERT INTO `admin_operation_log` VALUES (2480, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2020-04-12 00:45:03', '2020-04-12 00:45:03');
INSERT INTO `admin_operation_log` VALUES (2481, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 00:45:15', '2020-04-12 00:45:15');
INSERT INTO `admin_operation_log` VALUES (2482, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 00:45:21', '2020-04-12 00:45:21');
INSERT INTO `admin_operation_log` VALUES (2483, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 00:45:23', '2020-04-12 00:45:23');
INSERT INTO `admin_operation_log` VALUES (2484, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 00:46:42', '2020-04-12 00:46:42');
INSERT INTO `admin_operation_log` VALUES (2485, 1, 'admin/professions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 00:46:45', '2020-04-12 00:46:45');
INSERT INTO `admin_operation_log` VALUES (2486, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 00:46:47', '2020-04-12 00:46:47');
INSERT INTO `admin_operation_log` VALUES (2487, 1, 'admin/professions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 00:46:50', '2020-04-12 00:46:50');
INSERT INTO `admin_operation_log` VALUES (2488, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 00:46:53', '2020-04-12 00:46:53');
INSERT INTO `admin_operation_log` VALUES (2489, 1, 'admin/professions/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 00:46:56', '2020-04-12 00:46:56');
INSERT INTO `admin_operation_log` VALUES (2490, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 00:46:57', '2020-04-12 00:46:57');
INSERT INTO `admin_operation_log` VALUES (2491, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 00:47:37', '2020-04-12 00:47:37');
INSERT INTO `admin_operation_log` VALUES (2492, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-12 05:48:03', '2020-04-12 05:48:03');
INSERT INTO `admin_operation_log` VALUES (2493, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:48:12', '2020-04-12 05:48:12');
INSERT INTO `admin_operation_log` VALUES (2494, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:48:59', '2020-04-12 05:48:59');
INSERT INTO `admin_operation_log` VALUES (2495, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:49:02', '2020-04-12 05:49:02');
INSERT INTO `admin_operation_log` VALUES (2496, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:49:05', '2020-04-12 05:49:05');
INSERT INTO `admin_operation_log` VALUES (2497, 1, 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"test\",\"name\":\"\\u6743\\u9650\\u6d4b\\u8bd5\\u89d2\\u8272\",\"permissions\":[null],\"_token\":\"VMicGUn5al5vhWG0VK4pWGxXVxcxy7fsOXdS6zjq\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-04-12 05:49:21', '2020-04-12 05:49:21');
INSERT INTO `admin_operation_log` VALUES (2498, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-12 05:49:22', '2020-04-12 05:49:22');
INSERT INTO `admin_operation_log` VALUES (2499, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:49:27', '2020-04-12 05:49:27');
INSERT INTO `admin_operation_log` VALUES (2500, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:49:28', '2020-04-12 05:49:28');
INSERT INTO `admin_operation_log` VALUES (2501, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"test\",\"name\":\"\\u6743\\u9650\\u6d4b\\u8bd5\\u7528\\u6237\",\"password\":\"123456\",\"password_confirmation\":\"123456\",\"roles\":[null],\"permissions\":[null],\"_token\":\"VMicGUn5al5vhWG0VK4pWGxXVxcxy7fsOXdS6zjq\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/users\"}', '2020-04-12 05:50:07', '2020-04-12 05:50:07');
INSERT INTO `admin_operation_log` VALUES (2502, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-12 05:50:08', '2020-04-12 05:50:08');
INSERT INTO `admin_operation_log` VALUES (2503, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-12 05:50:19', '2020-04-12 05:50:19');
INSERT INTO `admin_operation_log` VALUES (2504, 1, 'admin/auth/users/15/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:50:22', '2020-04-12 05:50:22');
INSERT INTO `admin_operation_log` VALUES (2505, 1, 'admin/auth/users/15', 'PUT', '127.0.0.1', '{\"username\":\"test\",\"name\":\"\\u6743\\u9650\\u6d4b\\u8bd5\\u7528\\u6237\",\"password\":\"$2y$10$AVZ4UIbVZh30C11uweWgYuvsZp1yC45ZnJwr.rxK.9TVoEMPiDHdO\",\"password_confirmation\":\"$2y$10$AVZ4UIbVZh30C11uweWgYuvsZp1yC45ZnJwr.rxK.9TVoEMPiDHdO\",\"roles\":[\"4\",null],\"permissions\":[null],\"created_at\":\"2020-04-12 05:50:08\",\"updated_at\":\"2020-04-12 05:50:08\",\"_token\":\"VMicGUn5al5vhWG0VK4pWGxXVxcxy7fsOXdS6zjq\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/users\"}', '2020-04-12 05:50:26', '2020-04-12 05:50:26');
INSERT INTO `admin_operation_log` VALUES (2506, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-12 05:50:26', '2020-04-12 05:50:26');
INSERT INTO `admin_operation_log` VALUES (2507, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-12 05:50:58', '2020-04-12 05:50:58');
INSERT INTO `admin_operation_log` VALUES (2508, 1, 'admin/auth/users/15/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:51:01', '2020-04-12 05:51:01');
INSERT INTO `admin_operation_log` VALUES (2509, 1, 'admin/auth/users/15/edit', 'GET', '127.0.0.1', '[]', '2020-04-12 05:51:02', '2020-04-12 05:51:02');
INSERT INTO `admin_operation_log` VALUES (2510, 1, 'admin/auth/users/15/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:51:07', '2020-04-12 05:51:07');
INSERT INTO `admin_operation_log` VALUES (2511, 1, 'admin/auth/users/15/edit', 'GET', '127.0.0.1', '[]', '2020-04-12 05:51:08', '2020-04-12 05:51:08');
INSERT INTO `admin_operation_log` VALUES (2512, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-12 05:51:17', '2020-04-12 05:51:17');
INSERT INTO `admin_operation_log` VALUES (2513, 1, 'admin/auth/users/15/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:51:20', '2020-04-12 05:51:20');
INSERT INTO `admin_operation_log` VALUES (2514, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:51:26', '2020-04-12 05:51:26');
INSERT INTO `admin_operation_log` VALUES (2515, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:51:32', '2020-04-12 05:51:32');
INSERT INTO `admin_operation_log` VALUES (2516, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-12 05:52:01', '2020-04-12 05:52:01');
INSERT INTO `admin_operation_log` VALUES (2517, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:52:04', '2020-04-12 05:52:04');
INSERT INTO `admin_operation_log` VALUES (2518, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:52:07', '2020-04-12 05:52:07');
INSERT INTO `admin_operation_log` VALUES (2519, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:52:14', '2020-04-12 05:52:14');
INSERT INTO `admin_operation_log` VALUES (2520, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:52:22', '2020-04-12 05:52:22');
INSERT INTO `admin_operation_log` VALUES (2521, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:53:33', '2020-04-12 05:53:33');
INSERT INTO `admin_operation_log` VALUES (2522, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:53:40', '2020-04-12 05:53:40');
INSERT INTO `admin_operation_log` VALUES (2523, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"article.list\",\"name\":\"\\u535a\\u6587\\u5217\\u8868\\u5c55\\u793a\",\"http_method\":[null],\"http_path\":\"\\/admin\\/articles\",\"_token\":\"wcq5irGNE3UBcSVGmzrmtPEa0EO5BUFsQ1H3XBL1\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-12 05:53:50', '2020-04-12 05:53:50');
INSERT INTO `admin_operation_log` VALUES (2524, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-12 05:53:51', '2020-04-12 05:53:51');
INSERT INTO `admin_operation_log` VALUES (2525, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:53:57', '2020-04-12 05:53:57');
INSERT INTO `admin_operation_log` VALUES (2526, 1, 'admin/auth/roles/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:54:01', '2020-04-12 05:54:01');
INSERT INTO `admin_operation_log` VALUES (2527, 1, 'admin/auth/roles/4', 'PUT', '127.0.0.1', '{\"slug\":\"test\",\"name\":\"\\u6743\\u9650\\u6d4b\\u8bd5\\u89d2\\u8272\",\"permissions\":[\"6\",null],\"_token\":\"wcq5irGNE3UBcSVGmzrmtPEa0EO5BUFsQ1H3XBL1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-04-12 05:54:05', '2020-04-12 05:54:05');
INSERT INTO `admin_operation_log` VALUES (2528, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-12 05:54:06', '2020-04-12 05:54:06');
INSERT INTO `admin_operation_log` VALUES (2529, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:54:13', '2020-04-12 05:54:13');
INSERT INTO `admin_operation_log` VALUES (2530, 15, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-12 05:54:36', '2020-04-12 05:54:36');
INSERT INTO `admin_operation_log` VALUES (2531, 15, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:54:42', '2020-04-12 05:54:42');
INSERT INTO `admin_operation_log` VALUES (2532, 15, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:54:46', '2020-04-12 05:54:46');
INSERT INTO `admin_operation_log` VALUES (2533, 15, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:54:54', '2020-04-12 05:54:54');
INSERT INTO `admin_operation_log` VALUES (2534, 15, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:54:55', '2020-04-12 05:54:55');
INSERT INTO `admin_operation_log` VALUES (2535, 15, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:54:57', '2020-04-12 05:54:57');
INSERT INTO `admin_operation_log` VALUES (2536, 15, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:55:05', '2020-04-12 05:55:05');
INSERT INTO `admin_operation_log` VALUES (2537, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-12 05:55:10', '2020-04-12 05:55:10');
INSERT INTO `admin_operation_log` VALUES (2538, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:55:20', '2020-04-12 05:55:20');
INSERT INTO `admin_operation_log` VALUES (2539, 1, 'admin/auth/menu/22/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:55:31', '2020-04-12 05:55:31');
INSERT INTO `admin_operation_log` VALUES (2540, 1, 'admin/auth/menu/22', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u9996\\u9875\",\"icon\":\"fa-bar-chart-o\",\"uri\":\"\\/\",\"roles\":[\"1\",\"2\",\"3\",\"4\",null],\"permission\":null,\"_token\":\"Sz2V0A9Xf2vaZEji4hieJjKOnY6WKzBc2riF0MS6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-12 05:56:02', '2020-04-12 05:56:02');
INSERT INTO `admin_operation_log` VALUES (2541, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-12 05:56:02', '2020-04-12 05:56:02');
INSERT INTO `admin_operation_log` VALUES (2542, 1, 'admin/auth/menu/13/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:56:05', '2020-04-12 05:56:05');
INSERT INTO `admin_operation_log` VALUES (2543, 1, 'admin/auth/menu/13', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8bba\\u575b\",\"icon\":\"fa-comments\",\"uri\":null,\"roles\":[\"1\",\"2\",\"3\",\"4\",null],\"permission\":null,\"_token\":\"Sz2V0A9Xf2vaZEji4hieJjKOnY6WKzBc2riF0MS6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-12 05:56:26', '2020-04-12 05:56:26');
INSERT INTO `admin_operation_log` VALUES (2544, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-12 05:56:26', '2020-04-12 05:56:26');
INSERT INTO `admin_operation_log` VALUES (2545, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:56:28', '2020-04-12 05:56:28');
INSERT INTO `admin_operation_log` VALUES (2546, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"13\",\"title\":\"\\u535a\\u6587\\u968f\\u7b14\",\"icon\":\"fa-book\",\"uri\":\"\\/articles\",\"roles\":[\"1\",\"2\",\"3\",\"4\",null],\"permission\":null,\"_token\":\"Sz2V0A9Xf2vaZEji4hieJjKOnY6WKzBc2riF0MS6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-12 05:56:39', '2020-04-12 05:56:39');
INSERT INTO `admin_operation_log` VALUES (2547, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-12 05:56:39', '2020-04-12 05:56:39');
INSERT INTO `admin_operation_log` VALUES (2548, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:56:41', '2020-04-12 05:56:41');
INSERT INTO `admin_operation_log` VALUES (2549, 1, 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"13\",\"title\":\"\\u6807\\u7b7e\\u7ba1\\u7406\",\"icon\":\"fa-bookmark-o\",\"uri\":\"\\/labels\",\"roles\":[\"1\",\"2\",\"3\",\"4\",null],\"permission\":null,\"_token\":\"Sz2V0A9Xf2vaZEji4hieJjKOnY6WKzBc2riF0MS6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-12 05:56:49', '2020-04-12 05:56:49');
INSERT INTO `admin_operation_log` VALUES (2550, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-12 05:56:49', '2020-04-12 05:56:49');
INSERT INTO `admin_operation_log` VALUES (2551, 1, 'admin/auth/menu/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:56:52', '2020-04-12 05:56:52');
INSERT INTO `admin_operation_log` VALUES (2552, 1, 'admin/auth/menu/14', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8bfe\\u7a0b\\u5efa\\u8bbe\",\"icon\":\"fa-th-large\",\"uri\":null,\"roles\":[\"1\",\"2\",\"3\",\"4\",null],\"permission\":null,\"_token\":\"Sz2V0A9Xf2vaZEji4hieJjKOnY6WKzBc2riF0MS6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-12 05:57:03', '2020-04-12 05:57:03');
INSERT INTO `admin_operation_log` VALUES (2553, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-12 05:57:03', '2020-04-12 05:57:03');
INSERT INTO `admin_operation_log` VALUES (2554, 1, 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:57:06', '2020-04-12 05:57:06');
INSERT INTO `admin_operation_log` VALUES (2555, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:57:11', '2020-04-12 05:57:11');
INSERT INTO `admin_operation_log` VALUES (2556, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:57:25', '2020-04-12 05:57:25');
INSERT INTO `admin_operation_log` VALUES (2557, 1, 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"13\",\"title\":\"\\u6807\\u7b7e\\u7ba1\\u7406\",\"icon\":\"fa-bookmark-o\",\"uri\":\"\\/labels\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"Sz2V0A9Xf2vaZEji4hieJjKOnY6WKzBc2riF0MS6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-12 05:57:35', '2020-04-12 05:57:35');
INSERT INTO `admin_operation_log` VALUES (2558, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-12 05:57:35', '2020-04-12 05:57:35');
INSERT INTO `admin_operation_log` VALUES (2559, 1, 'admin/auth/menu/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:57:38', '2020-04-12 05:57:38');
INSERT INTO `admin_operation_log` VALUES (2560, 1, 'admin/auth/menu/14', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8bfe\\u7a0b\\u5efa\\u8bbe\",\"icon\":\"fa-th-large\",\"uri\":null,\"roles\":[\"1\",\"2\",\"3\",\"4\",null],\"permission\":null,\"_token\":\"Sz2V0A9Xf2vaZEji4hieJjKOnY6WKzBc2riF0MS6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-12 05:57:44', '2020-04-12 05:57:44');
INSERT INTO `admin_operation_log` VALUES (2561, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-12 05:57:44', '2020-04-12 05:57:44');
INSERT INTO `admin_operation_log` VALUES (2562, 1, 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:57:46', '2020-04-12 05:57:46');
INSERT INTO `admin_operation_log` VALUES (2563, 1, 'admin/auth/menu/11', 'PUT', '127.0.0.1', '{\"parent_id\":\"14\",\"title\":\"\\u4e13\\u4e1a\\u7ba1\\u7406\",\"icon\":\"fa-graduation-cap\",\"uri\":\"\\/professions\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"Sz2V0A9Xf2vaZEji4hieJjKOnY6WKzBc2riF0MS6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-12 05:57:57', '2020-04-12 05:57:57');
INSERT INTO `admin_operation_log` VALUES (2564, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-12 05:57:57', '2020-04-12 05:57:57');
INSERT INTO `admin_operation_log` VALUES (2565, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:58:00', '2020-04-12 05:58:00');
INSERT INTO `admin_operation_log` VALUES (2566, 1, 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{\"parent_id\":\"14\",\"title\":\"\\u73ed\\u7ea7\\u7ba1\\u7406\",\"icon\":\"fa-male\",\"uri\":\"\\/squads\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"Sz2V0A9Xf2vaZEji4hieJjKOnY6WKzBc2riF0MS6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-12 05:58:10', '2020-04-12 05:58:10');
INSERT INTO `admin_operation_log` VALUES (2567, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-12 05:58:10', '2020-04-12 05:58:10');
INSERT INTO `admin_operation_log` VALUES (2568, 1, 'admin/auth/menu/15/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:58:12', '2020-04-12 05:58:12');
INSERT INTO `admin_operation_log` VALUES (2569, 1, 'admin/auth/menu/15', 'PUT', '127.0.0.1', '{\"parent_id\":\"14\",\"title\":\"\\u8bfe\\u7a0b\\u7ba1\\u7406\",\"icon\":\"fa-calendar\",\"uri\":\"\\/courses\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"Sz2V0A9Xf2vaZEji4hieJjKOnY6WKzBc2riF0MS6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-12 05:58:27', '2020-04-12 05:58:27');
INSERT INTO `admin_operation_log` VALUES (2570, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-12 05:58:28', '2020-04-12 05:58:28');
INSERT INTO `admin_operation_log` VALUES (2571, 1, 'admin/auth/menu/18/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:58:41', '2020-04-12 05:58:41');
INSERT INTO `admin_operation_log` VALUES (2572, 1, 'admin/auth/menu/18', 'PUT', '127.0.0.1', '{\"parent_id\":\"14\",\"title\":\"\\u5206\\u6570\\u8ba1\\u7b97\\u516c\\u5f0f\\u7ba1\\u7406\",\"icon\":\"fa-calculator\",\"uri\":\"formula-lefts\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"Sz2V0A9Xf2vaZEji4hieJjKOnY6WKzBc2riF0MS6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-12 05:58:47', '2020-04-12 05:58:47');
INSERT INTO `admin_operation_log` VALUES (2573, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-12 05:58:47', '2020-04-12 05:58:47');
INSERT INTO `admin_operation_log` VALUES (2574, 1, 'admin/auth/menu/19/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:58:50', '2020-04-12 05:58:50');
INSERT INTO `admin_operation_log` VALUES (2575, 1, 'admin/auth/menu/19', 'PUT', '127.0.0.1', '{\"parent_id\":\"14\",\"title\":\"\\u5206\\u6570\\u7ba1\\u7406\",\"icon\":\"fa-database\",\"uri\":\"\\/fractions\",\"roles\":[\"1\",\"2\",\"3\",\"4\",null],\"permission\":null,\"_token\":\"Sz2V0A9Xf2vaZEji4hieJjKOnY6WKzBc2riF0MS6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-12 05:58:57', '2020-04-12 05:58:57');
INSERT INTO `admin_operation_log` VALUES (2576, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-12 05:58:57', '2020-04-12 05:58:57');
INSERT INTO `admin_operation_log` VALUES (2577, 1, 'admin/auth/menu/16/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:58:59', '2020-04-12 05:58:59');
INSERT INTO `admin_operation_log` VALUES (2578, 1, 'admin/auth/menu/16', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5e38\\u91cf\\u7ba1\\u7406\",\"icon\":\"fa-yelp\",\"uri\":null,\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"Sz2V0A9Xf2vaZEji4hieJjKOnY6WKzBc2riF0MS6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-12 05:59:04', '2020-04-12 05:59:04');
INSERT INTO `admin_operation_log` VALUES (2579, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-12 05:59:04', '2020-04-12 05:59:04');
INSERT INTO `admin_operation_log` VALUES (2580, 1, 'admin/auth/menu/17/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:59:07', '2020-04-12 05:59:07');
INSERT INTO `admin_operation_log` VALUES (2581, 1, 'admin/auth/menu/17', 'PUT', '127.0.0.1', '{\"parent_id\":\"16\",\"title\":\"\\u8bfe\\u7a0b\\u7c7b\\u578b\\u7ba1\\u7406\",\"icon\":\"fa-y-combinator\",\"uri\":\"\\/course-type-constants\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"Sz2V0A9Xf2vaZEji4hieJjKOnY6WKzBc2riF0MS6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-12 05:59:12', '2020-04-12 05:59:12');
INSERT INTO `admin_operation_log` VALUES (2582, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-12 05:59:12', '2020-04-12 05:59:12');
INSERT INTO `admin_operation_log` VALUES (2583, 1, 'admin/auth/menu/20/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:59:15', '2020-04-12 05:59:15');
INSERT INTO `admin_operation_log` VALUES (2584, 1, 'admin/auth/menu/20', 'PUT', '127.0.0.1', '{\"parent_id\":\"16\",\"title\":\"\\u5143\\u8ba1\\u7b97\\u9879\\u7c7b\\u578b\\u7ba1\\u7406\",\"icon\":\"fa-yahoo\",\"uri\":\"\\/meta-cal-types\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"Sz2V0A9Xf2vaZEji4hieJjKOnY6WKzBc2riF0MS6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-12 05:59:19', '2020-04-12 05:59:19');
INSERT INTO `admin_operation_log` VALUES (2585, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-12 05:59:20', '2020-04-12 05:59:20');
INSERT INTO `admin_operation_log` VALUES (2586, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:59:27', '2020-04-12 05:59:27');
INSERT INTO `admin_operation_log` VALUES (2587, 15, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-12 05:59:31', '2020-04-12 05:59:31');
INSERT INTO `admin_operation_log` VALUES (2588, 15, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:59:34', '2020-04-12 05:59:34');
INSERT INTO `admin_operation_log` VALUES (2589, 15, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:59:39', '2020-04-12 05:59:39');
INSERT INTO `admin_operation_log` VALUES (2590, 15, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:59:44', '2020-04-12 05:59:44');
INSERT INTO `admin_operation_log` VALUES (2591, 15, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:59:53', '2020-04-12 05:59:53');
INSERT INTO `admin_operation_log` VALUES (2592, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-12 06:00:00', '2020-04-12 06:00:00');
INSERT INTO `admin_operation_log` VALUES (2593, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:00:05', '2020-04-12 06:00:05');
INSERT INTO `admin_operation_log` VALUES (2594, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:00:11', '2020-04-12 06:00:11');
INSERT INTO `admin_operation_log` VALUES (2595, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:00:29', '2020-04-12 06:00:29');
INSERT INTO `admin_operation_log` VALUES (2596, 15, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-12 06:00:33', '2020-04-12 06:00:33');
INSERT INTO `admin_operation_log` VALUES (2597, 15, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:00:41', '2020-04-12 06:00:41');
INSERT INTO `admin_operation_log` VALUES (2598, 15, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:01:17', '2020-04-12 06:01:17');
INSERT INTO `admin_operation_log` VALUES (2599, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-12 06:01:21', '2020-04-12 06:01:21');
INSERT INTO `admin_operation_log` VALUES (2600, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:01:24', '2020-04-12 06:01:24');
INSERT INTO `admin_operation_log` VALUES (2601, 1, 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:01:28', '2020-04-12 06:01:28');
INSERT INTO `admin_operation_log` VALUES (2602, 1, 'admin/auth/permissions/6', 'PUT', '127.0.0.1', '{\"slug\":\"article.list\",\"name\":\"\\u535a\\u6587\\u5217\\u8868\\u5c55\\u793a\",\"http_method\":[\"GET\",null],\"http_path\":\"\\/admin\\/articles*\",\"_token\":\"ZTqmyQKr00WQbEbMRyoqtTR39IQzzW8qQinn591y\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-12 06:01:38', '2020-04-12 06:01:38');
INSERT INTO `admin_operation_log` VALUES (2603, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-12 06:01:39', '2020-04-12 06:01:39');
INSERT INTO `admin_operation_log` VALUES (2604, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:01:43', '2020-04-12 06:01:43');
INSERT INTO `admin_operation_log` VALUES (2605, 15, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-12 06:01:46', '2020-04-12 06:01:46');
INSERT INTO `admin_operation_log` VALUES (2606, 15, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:01:49', '2020-04-12 06:01:49');
INSERT INTO `admin_operation_log` VALUES (2607, 15, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:01:57', '2020-04-12 06:01:57');
INSERT INTO `admin_operation_log` VALUES (2608, 15, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:02:27', '2020-04-12 06:02:27');
INSERT INTO `admin_operation_log` VALUES (2609, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-12 06:02:32', '2020-04-12 06:02:32');
INSERT INTO `admin_operation_log` VALUES (2610, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:02:35', '2020-04-12 06:02:35');
INSERT INTO `admin_operation_log` VALUES (2611, 1, 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:02:59', '2020-04-12 06:02:59');
INSERT INTO `admin_operation_log` VALUES (2612, 1, 'admin/auth/permissions/6', 'PUT', '127.0.0.1', '{\"slug\":\"article.list\",\"name\":\"\\u535a\\u6587\\u5217\\u8868\\u5c55\\u793a\",\"http_method\":[\"GET\",null],\"http_path\":\"\\/articles\",\"_token\":\"8BcOAtyPQNPsQAndURpFSSx4MxFTfiWvYc0ilOTe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-12 06:03:07', '2020-04-12 06:03:07');
INSERT INTO `admin_operation_log` VALUES (2613, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-12 06:03:07', '2020-04-12 06:03:07');
INSERT INTO `admin_operation_log` VALUES (2614, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:03:13', '2020-04-12 06:03:13');
INSERT INTO `admin_operation_log` VALUES (2615, 15, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-12 06:03:17', '2020-04-12 06:03:17');
INSERT INTO `admin_operation_log` VALUES (2616, 15, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:03:19', '2020-04-12 06:03:19');
INSERT INTO `admin_operation_log` VALUES (2617, 15, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"adminUser\":{\"username\":\"\\u738b\"},\"title\":null,\"labels\":null,\"intro\":null}', '2020-04-12 06:03:39', '2020-04-12 06:03:39');
INSERT INTO `admin_operation_log` VALUES (2618, 15, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"adminUser\":{\"username\":null},\"title\":null,\"labels\":null,\"intro\":null}', '2020-04-12 06:03:47', '2020-04-12 06:03:47');
INSERT INTO `admin_operation_log` VALUES (2619, 15, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"adminUser\":{\"username\":\"\\u738b\"},\"title\":null,\"labels\":null,\"intro\":null}', '2020-04-12 06:04:05', '2020-04-12 06:04:05');
INSERT INTO `admin_operation_log` VALUES (2620, 15, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"adminUser\":{\"username\":\"\\u8001\\u738b\"},\"title\":null,\"labels\":null,\"intro\":null}', '2020-04-12 06:04:14', '2020-04-12 06:04:14');
INSERT INTO `admin_operation_log` VALUES (2621, 15, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"adminUser\":{\"username\":\"\\u8001\\u738b\"},\"title\":null,\"labels\":null,\"intro\":null}', '2020-04-12 06:04:16', '2020-04-12 06:04:16');
INSERT INTO `admin_operation_log` VALUES (2622, 15, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"adminUser\":{\"username\":\"\\u8001\\u738b\"},\"title\":null,\"labels\":null,\"intro\":null}', '2020-04-12 06:04:25', '2020-04-12 06:04:25');
INSERT INTO `admin_operation_log` VALUES (2623, 15, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"adminUser\":{\"username\":null},\"title\":null,\"labels\":null,\"intro\":null}', '2020-04-12 06:04:42', '2020-04-12 06:04:42');
INSERT INTO `admin_operation_log` VALUES (2624, 15, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"adminUser\":{\"username\":null},\"title\":\"\\u5492\\u6028\",\"labels\":null,\"intro\":null}', '2020-04-12 06:04:50', '2020-04-12 06:04:50');
INSERT INTO `admin_operation_log` VALUES (2625, 15, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"adminUser\":{\"username\":null},\"title\":null,\"labels\":\"\\u95f2\\u8c08\",\"intro\":null}', '2020-04-12 06:05:17', '2020-04-12 06:05:17');
INSERT INTO `admin_operation_log` VALUES (2626, 15, 'admin/articles', 'GET', '127.0.0.1', '{\"adminUser\":{\"username\":null},\"title\":null,\"labels\":\"\\u95f2\\u8c08\",\"intro\":null}', '2020-04-12 06:05:30', '2020-04-12 06:05:30');
INSERT INTO `admin_operation_log` VALUES (2627, 15, 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:05:36', '2020-04-12 06:05:36');
INSERT INTO `admin_operation_log` VALUES (2628, 15, 'admin/articles', 'GET', '127.0.0.1', '{\"adminUser\":{\"username\":null},\"title\":null,\"labels\":\"\\u95f2\\u8c08\",\"intro\":null,\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:05:37', '2020-04-12 06:05:37');
INSERT INTO `admin_operation_log` VALUES (2629, 15, 'admin/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:05:41', '2020-04-12 06:05:41');
INSERT INTO `admin_operation_log` VALUES (2630, 15, 'admin/articles', 'GET', '127.0.0.1', '{\"adminUser\":{\"username\":null},\"title\":null,\"labels\":\"\\u95f2\\u8c08\",\"intro\":null,\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:05:42', '2020-04-12 06:05:42');
INSERT INTO `admin_operation_log` VALUES (2631, 15, 'admin/articles/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:05:44', '2020-04-12 06:05:44');
INSERT INTO `admin_operation_log` VALUES (2632, 15, 'admin/articles', 'GET', '127.0.0.1', '{\"adminUser\":{\"username\":null},\"title\":null,\"labels\":\"\\u95f2\\u8c08\",\"intro\":null,\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:05:46', '2020-04-12 06:05:46');
INSERT INTO `admin_operation_log` VALUES (2633, 15, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:32:52', '2020-04-12 06:32:52');
INSERT INTO `admin_operation_log` VALUES (2634, 15, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-12 06:32:57', '2020-04-12 06:32:57');
INSERT INTO `admin_operation_log` VALUES (2635, 15, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-12 06:35:53', '2020-04-12 06:35:53');
INSERT INTO `admin_operation_log` VALUES (2636, 15, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-12 06:35:59', '2020-04-12 06:35:59');
INSERT INTO `admin_operation_log` VALUES (2637, 15, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-12 06:36:05', '2020-04-12 06:36:05');
INSERT INTO `admin_operation_log` VALUES (2638, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-12 06:37:22', '2020-04-12 06:37:22');
INSERT INTO `admin_operation_log` VALUES (2639, 15, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-12 06:37:29', '2020-04-12 06:37:29');
INSERT INTO `admin_operation_log` VALUES (2640, 1, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-12 06:37:32', '2020-04-12 06:37:32');
INSERT INTO `admin_operation_log` VALUES (2641, 15, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:37:46', '2020-04-12 06:37:46');
INSERT INTO `admin_operation_log` VALUES (2642, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:38:55', '2020-04-12 06:38:55');
INSERT INTO `admin_operation_log` VALUES (2643, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:39:23', '2020-04-12 06:39:23');
INSERT INTO `admin_operation_log` VALUES (2644, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"article.createBtn\",\"name\":\"\\u6587\\u7ae0\\u65b0\\u589e\\u6309\\u94ae\",\"http_method\":[null],\"http_path\":null,\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-12 06:40:11', '2020-04-12 06:40:11');
INSERT INTO `admin_operation_log` VALUES (2645, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-12 06:40:11', '2020-04-12 06:40:11');
INSERT INTO `admin_operation_log` VALUES (2646, 1, 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:40:33', '2020-04-12 06:40:33');
INSERT INTO `admin_operation_log` VALUES (2647, 1, 'admin/auth/permissions/7', 'PUT', '127.0.0.1', '{\"slug\":\"article.createBtn\",\"name\":\"\\u6587\\u7ae0\\u65b0\\u589e\\u6309\\u94ae\",\"http_method\":[null],\"http_path\":\"\\/articles\",\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-12 06:40:46', '2020-04-12 06:40:46');
INSERT INTO `admin_operation_log` VALUES (2648, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-12 06:40:46', '2020-04-12 06:40:46');
INSERT INTO `admin_operation_log` VALUES (2649, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:40:57', '2020-04-12 06:40:57');
INSERT INTO `admin_operation_log` VALUES (2650, 1, 'admin/auth/roles/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:41:00', '2020-04-12 06:41:00');
INSERT INTO `admin_operation_log` VALUES (2651, 1, 'admin/auth/roles/4', 'PUT', '127.0.0.1', '{\"slug\":\"test\",\"name\":\"\\u6743\\u9650\\u6d4b\\u8bd5\\u89d2\\u8272\",\"permissions\":[\"6\",\"7\",null],\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-04-12 06:41:04', '2020-04-12 06:41:04');
INSERT INTO `admin_operation_log` VALUES (2652, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-12 06:41:04', '2020-04-12 06:41:04');
INSERT INTO `admin_operation_log` VALUES (2653, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:41:33', '2020-04-12 06:41:33');
INSERT INTO `admin_operation_log` VALUES (2654, 15, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-12 06:42:01', '2020-04-12 06:42:01');
INSERT INTO `admin_operation_log` VALUES (2655, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:42:12', '2020-04-12 06:42:12');
INSERT INTO `admin_operation_log` VALUES (2656, 1, 'admin/auth/roles/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:42:14', '2020-04-12 06:42:14');
INSERT INTO `admin_operation_log` VALUES (2657, 1, 'admin/auth/roles/4', 'PUT', '127.0.0.1', '{\"slug\":\"test\",\"name\":\"\\u6743\\u9650\\u6d4b\\u8bd5\\u89d2\\u8272\",\"permissions\":[\"6\",null],\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-04-12 06:42:17', '2020-04-12 06:42:17');
INSERT INTO `admin_operation_log` VALUES (2658, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-12 06:42:17', '2020-04-12 06:42:17');
INSERT INTO `admin_operation_log` VALUES (2659, 15, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-12 06:42:19', '2020-04-12 06:42:19');
INSERT INTO `admin_operation_log` VALUES (2660, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:42:39', '2020-04-12 06:42:39');
INSERT INTO `admin_operation_log` VALUES (2661, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:44:42', '2020-04-12 06:44:42');
INSERT INTO `admin_operation_log` VALUES (2662, 1, 'admin/auth/roles/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:44:45', '2020-04-12 06:44:45');
INSERT INTO `admin_operation_log` VALUES (2663, 1, 'admin/auth/roles/4', 'PUT', '127.0.0.1', '{\"slug\":\"test\",\"name\":\"\\u6743\\u9650\\u6d4b\\u8bd5\\u89d2\\u8272\",\"permissions\":[\"7\",null],\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-04-12 06:44:49', '2020-04-12 06:44:49');
INSERT INTO `admin_operation_log` VALUES (2664, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-12 06:44:49', '2020-04-12 06:44:49');
INSERT INTO `admin_operation_log` VALUES (2665, 15, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-12 06:44:51', '2020-04-12 06:44:51');
INSERT INTO `admin_operation_log` VALUES (2666, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:45:18', '2020-04-12 06:45:18');
INSERT INTO `admin_operation_log` VALUES (2667, 1, 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:45:38', '2020-04-12 06:45:38');
INSERT INTO `admin_operation_log` VALUES (2668, 1, 'admin/auth/permissions/7', 'PUT', '127.0.0.1', '{\"slug\":\"article.createBtn\",\"name\":\"\\u6587\\u7ae0\\u65b0\\u589e\\u6309\\u94ae\",\"http_method\":[\"HEAD\",null],\"http_path\":\"\\/articles\",\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-12 06:45:53', '2020-04-12 06:45:53');
INSERT INTO `admin_operation_log` VALUES (2669, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-12 06:45:54', '2020-04-12 06:45:54');
INSERT INTO `admin_operation_log` VALUES (2670, 1, 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:45:57', '2020-04-12 06:45:57');
INSERT INTO `admin_operation_log` VALUES (2671, 1, 'admin/auth/permissions/6', 'PUT', '127.0.0.1', '{\"slug\":\"article.list\",\"name\":\"\\u535a\\u6587\\u5217\\u8868\\u5c55\\u793a\",\"http_method\":[null],\"http_path\":\"\\/articles\",\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-12 06:45:59', '2020-04-12 06:45:59');
INSERT INTO `admin_operation_log` VALUES (2672, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-12 06:46:00', '2020-04-12 06:46:00');
INSERT INTO `admin_operation_log` VALUES (2673, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:46:04', '2020-04-12 06:46:04');
INSERT INTO `admin_operation_log` VALUES (2674, 1, 'admin/auth/roles/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:46:06', '2020-04-12 06:46:06');
INSERT INTO `admin_operation_log` VALUES (2675, 1, 'admin/auth/roles/4', 'PUT', '127.0.0.1', '{\"slug\":\"test\",\"name\":\"\\u6743\\u9650\\u6d4b\\u8bd5\\u89d2\\u8272\",\"permissions\":[\"6\",null],\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-04-12 06:46:11', '2020-04-12 06:46:11');
INSERT INTO `admin_operation_log` VALUES (2676, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-12 06:46:11', '2020-04-12 06:46:11');
INSERT INTO `admin_operation_log` VALUES (2677, 15, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-12 06:46:13', '2020-04-12 06:46:13');
INSERT INTO `admin_operation_log` VALUES (2678, 1, 'admin/auth/roles/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:46:16', '2020-04-12 06:46:16');
INSERT INTO `admin_operation_log` VALUES (2679, 1, 'admin/auth/roles/4', 'PUT', '127.0.0.1', '{\"slug\":\"test\",\"name\":\"\\u6743\\u9650\\u6d4b\\u8bd5\\u89d2\\u8272\",\"permissions\":[\"6\",\"7\",null],\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-04-12 06:46:19', '2020-04-12 06:46:19');
INSERT INTO `admin_operation_log` VALUES (2680, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-12 06:46:19', '2020-04-12 06:46:19');
INSERT INTO `admin_operation_log` VALUES (2681, 15, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-12 06:46:21', '2020-04-12 06:46:21');
INSERT INTO `admin_operation_log` VALUES (2682, 15, 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:46:23', '2020-04-12 06:46:23');
INSERT INTO `admin_operation_log` VALUES (2683, 15, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:46:28', '2020-04-12 06:46:28');
INSERT INTO `admin_operation_log` VALUES (2684, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:46:42', '2020-04-12 06:46:42');
INSERT INTO `admin_operation_log` VALUES (2685, 15, 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:53:43', '2020-04-12 06:53:43');
INSERT INTO `admin_operation_log` VALUES (2686, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:53:54', '2020-04-12 06:53:54');
INSERT INTO `admin_operation_log` VALUES (2687, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"article.create\",\"name\":\"\\u6587\\u7ae0\\u65b0\\u589e\\u754c\\u9762\",\"http_method\":[null],\"http_path\":\"\\/articles\\/create\",\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-12 06:54:25', '2020-04-12 06:54:25');
INSERT INTO `admin_operation_log` VALUES (2688, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-12 06:54:25', '2020-04-12 06:54:25');
INSERT INTO `admin_operation_log` VALUES (2689, 1, 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:54:39', '2020-04-12 06:54:39');
INSERT INTO `admin_operation_log` VALUES (2690, 1, 'admin/auth/permissions/6', 'PUT', '127.0.0.1', '{\"slug\":\"article.list\",\"name\":\"\\u535a\\u6587\\u5217\\u8868\\u754c\\u9762\",\"http_method\":[null],\"http_path\":\"\\/articles\",\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-12 06:54:44', '2020-04-12 06:54:44');
INSERT INTO `admin_operation_log` VALUES (2691, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-12 06:54:44', '2020-04-12 06:54:44');
INSERT INTO `admin_operation_log` VALUES (2692, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:54:47', '2020-04-12 06:54:47');
INSERT INTO `admin_operation_log` VALUES (2693, 1, 'admin/auth/roles/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:54:50', '2020-04-12 06:54:50');
INSERT INTO `admin_operation_log` VALUES (2694, 1, 'admin/auth/roles/4', 'PUT', '127.0.0.1', '{\"slug\":\"test\",\"name\":\"\\u6743\\u9650\\u6d4b\\u8bd5\\u89d2\\u8272\",\"permissions\":[\"6\",null],\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-04-12 06:54:58', '2020-04-12 06:54:58');
INSERT INTO `admin_operation_log` VALUES (2695, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-12 06:54:58', '2020-04-12 06:54:58');
INSERT INTO `admin_operation_log` VALUES (2696, 15, 'admin/articles/create', 'GET', '127.0.0.1', '[]', '2020-04-12 06:55:03', '2020-04-12 06:55:03');
INSERT INTO `admin_operation_log` VALUES (2697, 15, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-12 06:55:08', '2020-04-12 06:55:08');
INSERT INTO `admin_operation_log` VALUES (2698, 15, 'admin/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:55:13', '2020-04-12 06:55:13');
INSERT INTO `admin_operation_log` VALUES (2699, 15, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:55:15', '2020-04-12 06:55:15');
INSERT INTO `admin_operation_log` VALUES (2700, 15, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:56:27', '2020-04-12 06:56:27');
INSERT INTO `admin_operation_log` VALUES (2701, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 06:56:32', '2020-04-12 06:56:32');
INSERT INTO `admin_operation_log` VALUES (2702, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:00:26', '2020-04-12 07:00:26');
INSERT INTO `admin_operation_log` VALUES (2703, 15, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-12 07:03:32', '2020-04-12 07:03:32');
INSERT INTO `admin_operation_log` VALUES (2704, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:03:53', '2020-04-12 07:03:53');
INSERT INTO `admin_operation_log` VALUES (2705, 1, 'admin/auth/roles/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:03:56', '2020-04-12 07:03:56');
INSERT INTO `admin_operation_log` VALUES (2706, 1, 'admin/auth/roles/4', 'PUT', '127.0.0.1', '{\"slug\":\"test\",\"name\":\"\\u6743\\u9650\\u6d4b\\u8bd5\\u89d2\\u8272\",\"permissions\":[\"6\",\"7\",\"8\",null],\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-04-12 07:04:03', '2020-04-12 07:04:03');
INSERT INTO `admin_operation_log` VALUES (2707, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-12 07:04:04', '2020-04-12 07:04:04');
INSERT INTO `admin_operation_log` VALUES (2708, 15, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-12 07:04:06', '2020-04-12 07:04:06');
INSERT INTO `admin_operation_log` VALUES (2709, 15, 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:04:08', '2020-04-12 07:04:08');
INSERT INTO `admin_operation_log` VALUES (2710, 15, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:04:24', '2020-04-12 07:04:24');
INSERT INTO `admin_operation_log` VALUES (2711, 15, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:04:27', '2020-04-12 07:04:27');
INSERT INTO `admin_operation_log` VALUES (2712, 1, 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:04:34', '2020-04-12 07:04:34');
INSERT INTO `admin_operation_log` VALUES (2713, 1, 'admin/auth/roles/3', 'PUT', '127.0.0.1', '{\"slug\":\"student\",\"name\":\"\\u5b66\\u751f\",\"permissions\":[\"6\",\"7\",\"8\",null],\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-04-12 07:04:41', '2020-04-12 07:04:41');
INSERT INTO `admin_operation_log` VALUES (2714, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-12 07:04:41', '2020-04-12 07:04:41');
INSERT INTO `admin_operation_log` VALUES (2715, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:04:49', '2020-04-12 07:04:49');
INSERT INTO `admin_operation_log` VALUES (2716, 3, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-12 07:05:05', '2020-04-12 07:05:05');
INSERT INTO `admin_operation_log` VALUES (2717, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:05:09', '2020-04-12 07:05:09');
INSERT INTO `admin_operation_log` VALUES (2718, 3, 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:05:12', '2020-04-12 07:05:12');
INSERT INTO `admin_operation_log` VALUES (2719, 3, 'admin/articles', 'POST', '127.0.0.1', '{\"user_id\":\"3\",\"title\":\"\\u8001\\u738b\\u7684\\u65e5\\u5e38\\u751f\\u6d3bvlog\",\"labels\":[\"1\",null],\"intro\":\"\\u4e3b\\u8981\\u8bb2\\u8ff0\\u4e86\\u8001\\u738b\\u548c\\u90bb\\u5c45\\u7684\\u5e78\\u798f\\u751f\\u6d3b\",\"content\":\"# \\u8001\\u738b\\u7684\\u5feb\\u4e50\\u751f\\u6d3b\\r\\n## \\u81ea\\u6211\\u4ecb\\u7ecd\\r\\n> \\u6211\\u53eb\\u8001\\u738b\\uff0c\\u6211\\u5f88\\u5feb\\u4e50\\r\\n\\r\\n## \\u90bb\\u5c45\\u4ecb\\u7ecd\\r\\n\\r\\n> \\u6211\\u9694\\u58c1\\u6709\\u4e2a\\u8001\\u738b\\uff0c\\u6211\\u4e0d\\u592a\\u5feb\\u4e86\",\"_token\":\"yclhwUCHUHQA97RxWvkXOyrqJbgSXIlzFMzQNtGQ\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/articles\"}', '2020-04-12 07:08:01', '2020-04-12 07:08:01');
INSERT INTO `admin_operation_log` VALUES (2720, 3, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-12 07:08:01', '2020-04-12 07:08:01');
INSERT INTO `admin_operation_log` VALUES (2721, 3, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-12 07:08:04', '2020-04-12 07:08:04');
INSERT INTO `admin_operation_log` VALUES (2722, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:08:12', '2020-04-12 07:08:12');
INSERT INTO `admin_operation_log` VALUES (2723, 3, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-12 07:08:36', '2020-04-12 07:08:36');
INSERT INTO `admin_operation_log` VALUES (2724, 3, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-12 07:09:26', '2020-04-12 07:09:26');
INSERT INTO `admin_operation_log` VALUES (2725, 3, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-12 07:09:49', '2020-04-12 07:09:49');
INSERT INTO `admin_operation_log` VALUES (2726, 3, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-12 07:12:01', '2020-04-12 07:12:01');
INSERT INTO `admin_operation_log` VALUES (2727, 3, 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:12:05', '2020-04-12 07:12:05');
INSERT INTO `admin_operation_log` VALUES (2728, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:12:09', '2020-04-12 07:12:09');
INSERT INTO `admin_operation_log` VALUES (2729, 3, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-12 07:22:08', '2020-04-12 07:22:08');
INSERT INTO `admin_operation_log` VALUES (2730, 3, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:22:17', '2020-04-12 07:22:17');
INSERT INTO `admin_operation_log` VALUES (2731, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:22:19', '2020-04-12 07:22:19');
INSERT INTO `admin_operation_log` VALUES (2732, 3, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:22:22', '2020-04-12 07:22:22');
INSERT INTO `admin_operation_log` VALUES (2733, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:22:31', '2020-04-12 07:22:31');
INSERT INTO `admin_operation_log` VALUES (2734, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:22:33', '2020-04-12 07:22:33');
INSERT INTO `admin_operation_log` VALUES (2735, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"article.view\",\"name\":\"\\u6587\\u7ae0\\u5c55\\u793a\\u754c\\u9762\",\"http_method\":[null],\"http_path\":\"\\/articles\\/{id}\",\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-12 07:23:21', '2020-04-12 07:23:21');
INSERT INTO `admin_operation_log` VALUES (2736, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-12 07:23:21', '2020-04-12 07:23:21');
INSERT INTO `admin_operation_log` VALUES (2737, 1, 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:23:24', '2020-04-12 07:23:24');
INSERT INTO `admin_operation_log` VALUES (2738, 1, 'admin/auth/permissions/6', 'PUT', '127.0.0.1', '{\"slug\":\"article.list\",\"name\":\"\\u6587\\u7ae0\\u5217\\u8868\\u754c\\u9762\",\"http_method\":[null],\"http_path\":\"\\/articles\",\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-12 07:23:29', '2020-04-12 07:23:29');
INSERT INTO `admin_operation_log` VALUES (2739, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-12 07:23:30', '2020-04-12 07:23:30');
INSERT INTO `admin_operation_log` VALUES (2740, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:23:41', '2020-04-12 07:23:41');
INSERT INTO `admin_operation_log` VALUES (2741, 1, 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:23:44', '2020-04-12 07:23:44');
INSERT INTO `admin_operation_log` VALUES (2742, 1, 'admin/auth/roles/3', 'PUT', '127.0.0.1', '{\"slug\":\"student\",\"name\":\"\\u5b66\\u751f\",\"permissions\":[\"6\",\"7\",\"8\",\"9\",null],\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-04-12 07:23:48', '2020-04-12 07:23:48');
INSERT INTO `admin_operation_log` VALUES (2743, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-12 07:23:48', '2020-04-12 07:23:48');
INSERT INTO `admin_operation_log` VALUES (2744, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 07:23:50', '2020-04-12 07:23:50');
INSERT INTO `admin_operation_log` VALUES (2745, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:23:56', '2020-04-12 07:23:56');
INSERT INTO `admin_operation_log` VALUES (2746, 3, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:24:01', '2020-04-12 07:24:01');
INSERT INTO `admin_operation_log` VALUES (2747, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:24:02', '2020-04-12 07:24:02');
INSERT INTO `admin_operation_log` VALUES (2748, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:24:10', '2020-04-12 07:24:10');
INSERT INTO `admin_operation_log` VALUES (2749, 1, 'admin/auth/permissions/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:24:19', '2020-04-12 07:24:19');
INSERT INTO `admin_operation_log` VALUES (2750, 1, 'admin/auth/permissions/9', 'PUT', '127.0.0.1', '{\"slug\":\"article.view\",\"name\":\"\\u6587\\u7ae0\\u5c55\\u793a\\u754c\\u9762\",\"http_method\":[null],\"http_path\":\"\\/articles\\/4\",\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-12 07:24:32', '2020-04-12 07:24:32');
INSERT INTO `admin_operation_log` VALUES (2751, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-12 07:24:32', '2020-04-12 07:24:32');
INSERT INTO `admin_operation_log` VALUES (2752, 3, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:24:35', '2020-04-12 07:24:35');
INSERT INTO `admin_operation_log` VALUES (2753, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:24:38', '2020-04-12 07:24:38');
INSERT INTO `admin_operation_log` VALUES (2754, 1, 'admin/auth/permissions/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:25:16', '2020-04-12 07:25:16');
INSERT INTO `admin_operation_log` VALUES (2755, 1, 'admin/auth/permissions/9', 'PUT', '127.0.0.1', '{\"slug\":\"article.view\",\"name\":\"\\u6587\\u7ae0\\u5c55\\u793a\\u754c\\u9762\",\"http_method\":[null],\"http_path\":\"\\/articles\\/*\",\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-12 07:25:21', '2020-04-12 07:25:21');
INSERT INTO `admin_operation_log` VALUES (2756, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-12 07:25:21', '2020-04-12 07:25:21');
INSERT INTO `admin_operation_log` VALUES (2757, 3, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-12 07:25:23', '2020-04-12 07:25:23');
INSERT INTO `admin_operation_log` VALUES (2758, 3, 'admin/articles/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:25:25', '2020-04-12 07:25:25');
INSERT INTO `admin_operation_log` VALUES (2759, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:25:27', '2020-04-12 07:25:27');
INSERT INTO `admin_operation_log` VALUES (2760, 3, 'admin/articles/5', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:25:29', '2020-04-12 07:25:29');
INSERT INTO `admin_operation_log` VALUES (2761, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:25:31', '2020-04-12 07:25:31');
INSERT INTO `admin_operation_log` VALUES (2762, 3, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:25:33', '2020-04-12 07:25:33');
INSERT INTO `admin_operation_log` VALUES (2763, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:25:34', '2020-04-12 07:25:34');
INSERT INTO `admin_operation_log` VALUES (2764, 3, 'admin/articles/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:25:48', '2020-04-12 07:25:48');
INSERT INTO `admin_operation_log` VALUES (2765, 1, 'admin/auth/permissions/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:25:51', '2020-04-12 07:25:51');
INSERT INTO `admin_operation_log` VALUES (2766, 1, 'admin/auth/permissions/9', 'PUT', '127.0.0.1', '{\"slug\":\"article.view\",\"name\":\"\\u6587\\u7ae0\\u5c55\\u793a\\u754c\\u9762\",\"http_method\":[null],\"http_path\":\"\\/articles\\/{id}\",\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-12 07:25:58', '2020-04-12 07:25:58');
INSERT INTO `admin_operation_log` VALUES (2767, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-12 07:25:58', '2020-04-12 07:25:58');
INSERT INTO `admin_operation_log` VALUES (2768, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:26:00', '2020-04-12 07:26:00');
INSERT INTO `admin_operation_log` VALUES (2769, 3, 'admin/articles/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:26:02', '2020-04-12 07:26:02');
INSERT INTO `admin_operation_log` VALUES (2770, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:26:03', '2020-04-12 07:26:03');
INSERT INTO `admin_operation_log` VALUES (2771, 3, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:26:05', '2020-04-12 07:26:05');
INSERT INTO `admin_operation_log` VALUES (2772, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:26:06', '2020-04-12 07:26:06');
INSERT INTO `admin_operation_log` VALUES (2773, 1, 'admin/auth/permissions/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:26:10', '2020-04-12 07:26:10');
INSERT INTO `admin_operation_log` VALUES (2774, 1, 'admin/auth/permissions/9', 'PUT', '127.0.0.1', '{\"slug\":\"article.view\",\"name\":\"\\u6587\\u7ae0\\u5c55\\u793a\\u754c\\u9762\",\"http_method\":[null],\"http_path\":\"\\/articles\\/*\\/\",\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-12 07:26:23', '2020-04-12 07:26:23');
INSERT INTO `admin_operation_log` VALUES (2775, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-12 07:26:23', '2020-04-12 07:26:23');
INSERT INTO `admin_operation_log` VALUES (2776, 3, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-12 07:26:26', '2020-04-12 07:26:26');
INSERT INTO `admin_operation_log` VALUES (2777, 3, 'admin/articles/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:26:29', '2020-04-12 07:26:29');
INSERT INTO `admin_operation_log` VALUES (2778, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:26:30', '2020-04-12 07:26:30');
INSERT INTO `admin_operation_log` VALUES (2779, 3, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:26:32', '2020-04-12 07:26:32');
INSERT INTO `admin_operation_log` VALUES (2780, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:26:34', '2020-04-12 07:26:34');
INSERT INTO `admin_operation_log` VALUES (2781, 3, 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:47:28', '2020-04-12 07:47:28');
INSERT INTO `admin_operation_log` VALUES (2782, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:47:35', '2020-04-12 07:47:35');
INSERT INTO `admin_operation_log` VALUES (2783, 1, 'admin/auth/permissions/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:49:21', '2020-04-12 07:49:21');
INSERT INTO `admin_operation_log` VALUES (2784, 1, 'admin/auth/permissions/9', 'PUT', '127.0.0.1', '{\"slug\":\"article.view\",\"name\":\"\\u6587\\u7ae0\\u5c55\\u793a\\u754c\\u9762\",\"http_method\":[null],\"http_path\":\"\\/articles\",\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-12 07:49:25', '2020-04-12 07:49:25');
INSERT INTO `admin_operation_log` VALUES (2785, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-12 07:49:25', '2020-04-12 07:49:25');
INSERT INTO `admin_operation_log` VALUES (2786, 3, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-12 07:50:08', '2020-04-12 07:50:08');
INSERT INTO `admin_operation_log` VALUES (2787, 3, 'admin/articles/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:50:10', '2020-04-12 07:50:10');
INSERT INTO `admin_operation_log` VALUES (2788, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:50:12', '2020-04-12 07:50:12');
INSERT INTO `admin_operation_log` VALUES (2789, 3, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:50:14', '2020-04-12 07:50:14');
INSERT INTO `admin_operation_log` VALUES (2790, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:50:16', '2020-04-12 07:50:16');
INSERT INTO `admin_operation_log` VALUES (2791, 3, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:50:18', '2020-04-12 07:50:18');
INSERT INTO `admin_operation_log` VALUES (2792, 1, 'admin/auth/permissions/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:52:02', '2020-04-12 07:52:02');
INSERT INTO `admin_operation_log` VALUES (2793, 1, 'admin/auth/permissions/9', 'PUT', '127.0.0.1', '{\"slug\":\"article.view\",\"name\":\"\\u6587\\u7ae0\\u5c55\\u793a\\u754c\\u9762\",\"http_method\":[null],\"http_path\":\"\\/articles\\/*\",\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-12 07:52:08', '2020-04-12 07:52:08');
INSERT INTO `admin_operation_log` VALUES (2794, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-12 07:52:09', '2020-04-12 07:52:09');
INSERT INTO `admin_operation_log` VALUES (2795, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 07:52:11', '2020-04-12 07:52:11');
INSERT INTO `admin_operation_log` VALUES (2796, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 07:52:41', '2020-04-12 07:52:41');
INSERT INTO `admin_operation_log` VALUES (2797, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 07:52:58', '2020-04-12 07:52:58');
INSERT INTO `admin_operation_log` VALUES (2798, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:56:48', '2020-04-12 07:56:48');
INSERT INTO `admin_operation_log` VALUES (2799, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:57:06', '2020-04-12 07:57:06');
INSERT INTO `admin_operation_log` VALUES (2800, 3, 'admin/articles/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:57:09', '2020-04-12 07:57:09');
INSERT INTO `admin_operation_log` VALUES (2801, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"article.edit\",\"name\":\"\\u6587\\u7ae0\\u4fee\\u6539\\u754c\\u9762\",\"http_method\":[null],\"http_path\":\"\\/articles\\/*\\/edit\",\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-12 07:57:37', '2020-04-12 07:57:37');
INSERT INTO `admin_operation_log` VALUES (2802, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-12 07:57:37', '2020-04-12 07:57:37');
INSERT INTO `admin_operation_log` VALUES (2803, 3, 'admin/articles/4/edit', 'GET', '127.0.0.1', '[]', '2020-04-12 07:58:07', '2020-04-12 07:58:07');
INSERT INTO `admin_operation_log` VALUES (2804, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:58:17', '2020-04-12 07:58:17');
INSERT INTO `admin_operation_log` VALUES (2805, 1, 'admin/auth/roles/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:58:20', '2020-04-12 07:58:20');
INSERT INTO `admin_operation_log` VALUES (2806, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:58:30', '2020-04-12 07:58:30');
INSERT INTO `admin_operation_log` VALUES (2807, 1, 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:58:32', '2020-04-12 07:58:32');
INSERT INTO `admin_operation_log` VALUES (2808, 1, 'admin/auth/roles/3', 'PUT', '127.0.0.1', '{\"slug\":\"student\",\"name\":\"\\u5b66\\u751f\",\"permissions\":[\"6\",\"7\",\"8\",\"9\",\"10\",null],\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-04-12 07:58:35', '2020-04-12 07:58:35');
INSERT INTO `admin_operation_log` VALUES (2809, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-12 07:58:36', '2020-04-12 07:58:36');
INSERT INTO `admin_operation_log` VALUES (2810, 3, 'admin/articles/4/edit', 'GET', '127.0.0.1', '[]', '2020-04-12 07:58:38', '2020-04-12 07:58:38');
INSERT INTO `admin_operation_log` VALUES (2811, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:58:42', '2020-04-12 07:58:42');
INSERT INTO `admin_operation_log` VALUES (2812, 3, 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:58:44', '2020-04-12 07:58:44');
INSERT INTO `admin_operation_log` VALUES (2813, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:58:47', '2020-04-12 07:58:47');
INSERT INTO `admin_operation_log` VALUES (2814, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"4\",\"_model\":\"Encore_Admin_Auth_Database_Role\",\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-12 07:59:04', '2020-04-12 07:59:04');
INSERT INTO `admin_operation_log` VALUES (2815, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:59:04', '2020-04-12 07:59:04');
INSERT INTO `admin_operation_log` VALUES (2816, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:59:06', '2020-04-12 07:59:06');
INSERT INTO `admin_operation_log` VALUES (2817, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"15\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-12 07:59:10', '2020-04-12 07:59:10');
INSERT INTO `admin_operation_log` VALUES (2818, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:59:11', '2020-04-12 07:59:11');
INSERT INTO `admin_operation_log` VALUES (2819, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:59:13', '2020-04-12 07:59:13');
INSERT INTO `admin_operation_log` VALUES (2820, 3, 'admin/articles', 'GET', '127.0.0.1', '[]', '2020-04-12 07:59:33', '2020-04-12 07:59:33');
INSERT INTO `admin_operation_log` VALUES (2821, 3, 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:59:34', '2020-04-12 07:59:34');
INSERT INTO `admin_operation_log` VALUES (2822, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:59:38', '2020-04-12 07:59:38');
INSERT INTO `admin_operation_log` VALUES (2823, 3, 'admin/articles/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:59:40', '2020-04-12 07:59:40');
INSERT INTO `admin_operation_log` VALUES (2824, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:59:43', '2020-04-12 07:59:43');
INSERT INTO `admin_operation_log` VALUES (2825, 3, 'admin/articles/5', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:59:44', '2020-04-12 07:59:44');
INSERT INTO `admin_operation_log` VALUES (2826, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:59:52', '2020-04-12 07:59:52');
INSERT INTO `admin_operation_log` VALUES (2827, 3, 'admin/articles/5', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:59:59', '2020-04-12 07:59:59');
INSERT INTO `admin_operation_log` VALUES (2828, 3, 'admin/articles/5', 'GET', '127.0.0.1', '[]', '2020-04-12 08:00:53', '2020-04-12 08:00:53');
INSERT INTO `admin_operation_log` VALUES (2829, 3, 'admin/articles/5', 'GET', '127.0.0.1', '[]', '2020-04-12 08:01:06', '2020-04-12 08:01:06');
INSERT INTO `admin_operation_log` VALUES (2830, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 08:01:14', '2020-04-12 08:01:14');
INSERT INTO `admin_operation_log` VALUES (2831, 3, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 08:01:32', '2020-04-12 08:01:32');
INSERT INTO `admin_operation_log` VALUES (2832, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 08:01:37', '2020-04-12 08:01:37');
INSERT INTO `admin_operation_log` VALUES (2833, 3, 'admin/articles/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 08:01:42', '2020-04-12 08:01:42');
INSERT INTO `admin_operation_log` VALUES (2834, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 08:01:44', '2020-04-12 08:01:44');
INSERT INTO `admin_operation_log` VALUES (2835, 3, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 08:01:45', '2020-04-12 08:01:45');
INSERT INTO `admin_operation_log` VALUES (2836, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 08:01:52', '2020-04-12 08:01:52');
INSERT INTO `admin_operation_log` VALUES (2837, 3, 'admin/articles/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 08:01:53', '2020-04-12 08:01:53');
INSERT INTO `admin_operation_log` VALUES (2838, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 08:01:54', '2020-04-12 08:01:54');
INSERT INTO `admin_operation_log` VALUES (2839, 3, 'admin/articles/5', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 08:01:56', '2020-04-12 08:01:56');
INSERT INTO `admin_operation_log` VALUES (2840, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"5\",\"_pjax\":\"#pjax-container\"}', '2020-04-12 08:02:50', '2020-04-12 08:02:50');
INSERT INTO `admin_operation_log` VALUES (2841, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 08:03:16', '2020-04-12 08:03:16');
INSERT INTO `admin_operation_log` VALUES (2842, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 08:03:18', '2020-04-12 08:03:18');
INSERT INTO `admin_operation_log` VALUES (2843, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"comments.create\",\"name\":\"\\u8bc4\\u8bba\\u65b0\\u589e\\u754c\\u9762\",\"http_method\":[null],\"http_path\":\"\\/comments\\/create*\",\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-12 08:03:57', '2020-04-12 08:03:57');
INSERT INTO `admin_operation_log` VALUES (2844, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-12 08:03:57', '2020-04-12 08:03:57');
INSERT INTO `admin_operation_log` VALUES (2845, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 08:04:01', '2020-04-12 08:04:01');
INSERT INTO `admin_operation_log` VALUES (2846, 1, 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 08:04:04', '2020-04-12 08:04:04');
INSERT INTO `admin_operation_log` VALUES (2847, 1, 'admin/auth/roles/3', 'PUT', '127.0.0.1', '{\"slug\":\"student\",\"name\":\"\\u5b66\\u751f\",\"permissions\":[\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",null],\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-04-12 08:04:07', '2020-04-12 08:04:07');
INSERT INTO `admin_operation_log` VALUES (2848, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-12 08:04:07', '2020-04-12 08:04:07');
INSERT INTO `admin_operation_log` VALUES (2849, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"5\"}', '2020-04-12 08:04:11', '2020-04-12 08:04:11');
INSERT INTO `admin_operation_log` VALUES (2850, 3, 'admin/articles/5', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 08:05:06', '2020-04-12 08:05:06');
INSERT INTO `admin_operation_log` VALUES (2851, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 08:05:09', '2020-04-12 08:05:09');
INSERT INTO `admin_operation_log` VALUES (2852, 3, 'admin/articles/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 08:05:14', '2020-04-12 08:05:14');
INSERT INTO `admin_operation_log` VALUES (2853, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 08:05:16', '2020-04-12 08:05:16');
INSERT INTO `admin_operation_log` VALUES (2854, 3, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 08:05:18', '2020-04-12 08:05:18');
INSERT INTO `admin_operation_log` VALUES (2855, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\",\"_pjax\":\"#pjax-container\"}', '2020-04-12 08:05:26', '2020-04-12 08:05:26');
INSERT INTO `admin_operation_log` VALUES (2856, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-12 08:14:11', '2020-04-12 08:14:11');
INSERT INTO `admin_operation_log` VALUES (2857, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-12 08:15:19', '2020-04-12 08:15:19');
INSERT INTO `admin_operation_log` VALUES (2858, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-12 08:18:07', '2020-04-12 08:18:07');
INSERT INTO `admin_operation_log` VALUES (2859, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-12 08:22:09', '2020-04-12 08:22:09');
INSERT INTO `admin_operation_log` VALUES (2860, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-12 08:24:43', '2020-04-12 08:24:43');
INSERT INTO `admin_operation_log` VALUES (2861, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-12 08:25:17', '2020-04-12 08:25:17');
INSERT INTO `admin_operation_log` VALUES (2862, 3, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 08:31:03', '2020-04-12 08:31:03');
INSERT INTO `admin_operation_log` VALUES (2863, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 08:31:04', '2020-04-12 08:31:04');
INSERT INTO `admin_operation_log` VALUES (2864, 3, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 08:31:07', '2020-04-12 08:31:07');
INSERT INTO `admin_operation_log` VALUES (2865, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\",\"_pjax\":\"#pjax-container\"}', '2020-04-12 08:34:56', '2020-04-12 08:34:56');
INSERT INTO `admin_operation_log` VALUES (2866, 3, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 08:35:03', '2020-04-12 08:35:03');
INSERT INTO `admin_operation_log` VALUES (2867, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\",\"_pjax\":\"#pjax-container\"}', '2020-04-12 08:35:33', '2020-04-12 08:35:33');
INSERT INTO `admin_operation_log` VALUES (2868, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-12 08:55:14', '2020-04-12 08:55:14');
INSERT INTO `admin_operation_log` VALUES (2869, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 08:55:17', '2020-04-12 08:55:17');
INSERT INTO `admin_operation_log` VALUES (2870, 1, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 08:55:23', '2020-04-12 08:55:23');
INSERT INTO `admin_operation_log` VALUES (2871, 1, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 08:56:37', '2020-04-12 08:56:37');
INSERT INTO `admin_operation_log` VALUES (2872, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"content\":\"\\u8fd9\\u662f\\u4e00\\u6761\\u901a\\u8fc7\\u884c\\u64cd\\u4f5c\\u6dfb\\u52a0\\u7684\\u8bc4\\u8bba\\uff0c\\u56de\\u590d\\u4e86\\u8fd9\\u7bc7\\u6587\\u7ae0\\u7684\\u67d0\\u4e2a\\u8bc4\\u8bba\",\"_key\":\"3\",\"_model\":\"App_Models_Comments\",\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_action\":\"App_Admin_Actions_Comments_replyComment\"}', '2020-04-12 08:57:30', '2020-04-12 08:57:30');
INSERT INTO `admin_operation_log` VALUES (2873, 1, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 08:57:30', '2020-04-12 08:57:30');
INSERT INTO `admin_operation_log` VALUES (2874, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-12 08:57:47', '2020-04-12 08:57:47');
INSERT INTO `admin_operation_log` VALUES (2875, 1, 'admin/comments/14', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 08:57:51', '2020-04-12 08:57:51');
INSERT INTO `admin_operation_log` VALUES (2876, 1, 'admin/comments', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 08:57:57', '2020-04-12 08:57:57');
INSERT INTO `admin_operation_log` VALUES (2877, 1, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 08:58:10', '2020-04-12 08:58:10');
INSERT INTO `admin_operation_log` VALUES (2878, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\",\"_pjax\":\"#pjax-container\"}', '2020-04-12 08:58:19', '2020-04-12 08:58:19');
INSERT INTO `admin_operation_log` VALUES (2879, 1, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 08:58:21', '2020-04-12 08:58:21');
INSERT INTO `admin_operation_log` VALUES (2880, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-12 09:02:46', '2020-04-12 09:02:46');
INSERT INTO `admin_operation_log` VALUES (2881, 3, 'admin/comments', 'POST', '127.0.0.1', '{\"content\":\"\\u8fd9\\u662f\\u4e00\\u6761\\u76f4\\u63a5\\u56de\\u590d\\u6587\\u7ae0\\u7684\\u8bc4\\u8bba\\uff0c\\u5176\\u4ed6\\u5c5e\\u6027\\u8bbe\\u7f6e\\u6b7b\",\"_token\":\"yclhwUCHUHQA97RxWvkXOyrqJbgSXIlzFMzQNtGQ\"}', '2020-04-12 09:03:15', '2020-04-12 09:03:15');
INSERT INTO `admin_operation_log` VALUES (2882, 1, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:03:22', '2020-04-12 09:03:22');
INSERT INTO `admin_operation_log` VALUES (2883, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-12 09:03:36', '2020-04-12 09:03:36');
INSERT INTO `admin_operation_log` VALUES (2884, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-12 09:03:45', '2020-04-12 09:03:45');
INSERT INTO `admin_operation_log` VALUES (2885, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 09:03:55', '2020-04-12 09:03:55');
INSERT INTO `admin_operation_log` VALUES (2886, 1, 'admin/articles/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 09:03:59', '2020-04-12 09:03:59');
INSERT INTO `admin_operation_log` VALUES (2887, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 09:04:02', '2020-04-12 09:04:02');
INSERT INTO `admin_operation_log` VALUES (2888, 1, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 09:04:04', '2020-04-12 09:04:04');
INSERT INTO `admin_operation_log` VALUES (2889, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\",\"_pjax\":\"#pjax-container\"}', '2020-04-12 09:04:07', '2020-04-12 09:04:07');
INSERT INTO `admin_operation_log` VALUES (2890, 1, 'admin/comments', 'POST', '127.0.0.1', '{\"content\":\"\\u8fd9\\u662f\\u4e00\\u6761\\u56de\\u590d\\u6587\\u7ae0\\u7684\\u8bc4\\u8bba\\uff0c\\u901a\\u8fc7\\u65b0\\u589e\\u6309\\u94ae\\u6dfb\\u52a0\\uff0c\\u5176\\u4ed6\\u5c5e\\u6027\\u76f4\\u63a5\\u5b9a\\u6b7b\",\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\"}', '2020-04-12 09:04:53', '2020-04-12 09:04:53');
INSERT INTO `admin_operation_log` VALUES (2891, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-12 09:04:54', '2020-04-12 09:04:54');
INSERT INTO `admin_operation_log` VALUES (2892, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-12 09:06:02', '2020-04-12 09:06:02');
INSERT INTO `admin_operation_log` VALUES (2893, 1, 'admin/comments', 'POST', '127.0.0.1', '{\"content\":\"\\u8fd9\\u662f\\u4e00\\u6761\\u56de\\u590d\\u6587\\u7ae0\\u7684\\u8bc4\\u8bba\\uff0c\\u901a\\u8fc7\\u65b0\\u589e\\u6309\\u94ae\\u6dfb\\u52a0\\uff0c\\u5176\\u4ed6\\u5c5e\\u6027\\u76f4\\u63a5\\u5b9a\\u6b7b\",\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/comments\"}', '2020-04-12 09:06:05', '2020-04-12 09:06:05');
INSERT INTO `admin_operation_log` VALUES (2894, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-12 09:06:06', '2020-04-12 09:06:06');
INSERT INTO `admin_operation_log` VALUES (2895, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-12 09:07:29', '2020-04-12 09:07:29');
INSERT INTO `admin_operation_log` VALUES (2896, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\",\"_pjax\":\"#pjax-container\"}', '2020-04-12 09:07:37', '2020-04-12 09:07:37');
INSERT INTO `admin_operation_log` VALUES (2897, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\",\"_pjax\":\"#pjax-container\"}', '2020-04-12 09:07:38', '2020-04-12 09:07:38');
INSERT INTO `admin_operation_log` VALUES (2898, 1, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":null,\"user_id\":null,\"level\":null,\"reply_user_id\":null,\"pid\":null,\"content\":\"\\u8fd9\\u662f\\u4e00\\u6761\\u76f4\\u63a5\\u56de\\u590d\\u6587\\u7ae0\\u7684\\u8bc4\\u8bba\\uff0c\\u901a\\u8fc7\\u65b0\\u589e\\u6309\\u94ae\\u6dfb\\u52a0\\uff0c\\u5176\\u4ed6\\u5c5e\\u6027\\u8bbe\\u7f6e\\u4e3a\\u9ed8\\u8ba4\\u503c\",\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/comments\\/create?article_id=4\"}', '2020-04-12 09:08:09', '2020-04-12 09:08:09');
INSERT INTO `admin_operation_log` VALUES (2899, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-12 09:08:10', '2020-04-12 09:08:10');
INSERT INTO `admin_operation_log` VALUES (2900, 1, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":null,\"user_id\":null,\"level\":null,\"reply_user_id\":null,\"pid\":null,\"content\":\"\\u8fd9\\u662f\\u4e00\\u6761\\u76f4\\u63a5\\u56de\\u590d\\u6587\\u7ae0\\u7684\\u8bc4\\u8bba\\uff0c\\u901a\\u8fc7\\u65b0\\u589e\\u6309\\u94ae\\u6dfb\\u52a0\\uff0c\\u5176\\u4ed6\\u5c5e\\u6027\\u8bbe\\u7f6e\\u4e3a\\u9ed8\\u8ba4\\u503c\",\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/comments\\/create?article_id=4\"}', '2020-04-12 09:09:08', '2020-04-12 09:09:08');
INSERT INTO `admin_operation_log` VALUES (2901, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-12 09:09:09', '2020-04-12 09:09:09');
INSERT INTO `admin_operation_log` VALUES (2902, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-12 09:09:11', '2020-04-12 09:09:11');
INSERT INTO `admin_operation_log` VALUES (2903, 1, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":null,\"user_id\":null,\"level\":null,\"reply_user_id\":null,\"pid\":null,\"content\":\"\\u8fd9\\u662f\\u4e00\\u6761\\u76f4\\u63a5\\u56de\\u590d\\u6587\\u7ae0\\u7684\\u8bc4\\u8bba\\uff0c\\u901a\\u8fc7\\u65b0\\u589e\\u6309\\u94ae\\u6dfb\\u52a0\\uff0c\\u5176\\u4ed6\\u5c5e\\u6027\\u8bbe\\u7f6e\\u4e3a\\u9ed8\\u8ba4\\u503c\",\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/comments\\/create?article_id=4\"}', '2020-04-12 09:09:15', '2020-04-12 09:09:15');
INSERT INTO `admin_operation_log` VALUES (2904, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-12 09:09:15', '2020-04-12 09:09:15');
INSERT INTO `admin_operation_log` VALUES (2905, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-12 09:12:20', '2020-04-12 09:12:20');
INSERT INTO `admin_operation_log` VALUES (2906, 1, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":\"4\",\"user_id\":null,\"level\":null,\"reply_user_id\":null,\"pid\":null,\"content\":\"\\u8fd9\\u662f\\u4e00\\u6761\\u76f4\\u63a5\\u56de\\u590d\\u6587\\u7ae0\\u7684\\u8bc4\\u8bba\\uff0c\\u901a\\u8fc7\\u65b0\\u589e\\u6309\\u94ae\\u6dfb\\u52a0\\uff0c\\u5176\\u4ed6\\u5c5e\\u6027\\u8bbe\\u7f6e\\u4e3a\\u9ed8\\u8ba4\\u503c\",\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/comments\\/create?article_id=4\"}', '2020-04-12 09:12:23', '2020-04-12 09:12:23');
INSERT INTO `admin_operation_log` VALUES (2907, 1, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:12:23', '2020-04-12 09:12:23');
INSERT INTO `admin_operation_log` VALUES (2908, 1, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:14:00', '2020-04-12 09:14:00');
INSERT INTO `admin_operation_log` VALUES (2909, 1, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:14:03', '2020-04-12 09:14:03');
INSERT INTO `admin_operation_log` VALUES (2910, 1, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:14:38', '2020-04-12 09:14:38');
INSERT INTO `admin_operation_log` VALUES (2911, 1, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:15:44', '2020-04-12 09:15:44');
INSERT INTO `admin_operation_log` VALUES (2912, 1, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:17:10', '2020-04-12 09:17:10');
INSERT INTO `admin_operation_log` VALUES (2913, 1, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:17:20', '2020-04-12 09:17:20');
INSERT INTO `admin_operation_log` VALUES (2914, 1, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:21:08', '2020-04-12 09:21:08');
INSERT INTO `admin_operation_log` VALUES (2915, 1, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:21:33', '2020-04-12 09:21:33');
INSERT INTO `admin_operation_log` VALUES (2916, 1, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:21:55', '2020-04-12 09:21:55');
INSERT INTO `admin_operation_log` VALUES (2917, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\",\"_pjax\":\"#pjax-container\"}', '2020-04-12 09:22:09', '2020-04-12 09:22:09');
INSERT INTO `admin_operation_log` VALUES (2918, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\"}', '2020-04-12 09:22:10', '2020-04-12 09:22:10');
INSERT INTO `admin_operation_log` VALUES (2919, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 09:22:13', '2020-04-12 09:22:13');
INSERT INTO `admin_operation_log` VALUES (2920, 3, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 09:22:15', '2020-04-12 09:22:15');
INSERT INTO `admin_operation_log` VALUES (2921, 1, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:22:25', '2020-04-12 09:22:25');
INSERT INTO `admin_operation_log` VALUES (2922, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:22:48', '2020-04-12 09:22:48');
INSERT INTO `admin_operation_log` VALUES (2923, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:22:51', '2020-04-12 09:22:51');
INSERT INTO `admin_operation_log` VALUES (2924, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:23:07', '2020-04-12 09:23:07');
INSERT INTO `admin_operation_log` VALUES (2925, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:23:11', '2020-04-12 09:23:11');
INSERT INTO `admin_operation_log` VALUES (2926, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:23:22', '2020-04-12 09:23:22');
INSERT INTO `admin_operation_log` VALUES (2927, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:31:47', '2020-04-12 09:31:47');
INSERT INTO `admin_operation_log` VALUES (2928, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:32:14', '2020-04-12 09:32:14');
INSERT INTO `admin_operation_log` VALUES (2929, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:32:49', '2020-04-12 09:32:49');
INSERT INTO `admin_operation_log` VALUES (2930, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:32:58', '2020-04-12 09:32:58');
INSERT INTO `admin_operation_log` VALUES (2931, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:33:33', '2020-04-12 09:33:33');
INSERT INTO `admin_operation_log` VALUES (2932, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:33:51', '2020-04-12 09:33:51');
INSERT INTO `admin_operation_log` VALUES (2933, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:34:13', '2020-04-12 09:34:13');
INSERT INTO `admin_operation_log` VALUES (2934, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:35:24', '2020-04-12 09:35:24');
INSERT INTO `admin_operation_log` VALUES (2935, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:37:22', '2020-04-12 09:37:22');
INSERT INTO `admin_operation_log` VALUES (2936, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:41:04', '2020-04-12 09:41:04');
INSERT INTO `admin_operation_log` VALUES (2937, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:44:51', '2020-04-12 09:44:51');
INSERT INTO `admin_operation_log` VALUES (2938, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:45:20', '2020-04-12 09:45:20');
INSERT INTO `admin_operation_log` VALUES (2939, 3, 'admin/comments/4,6,7,8,9,14,15', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"yclhwUCHUHQA97RxWvkXOyrqJbgSXIlzFMzQNtGQ\"}', '2020-04-12 09:45:42', '2020-04-12 09:45:42');
INSERT INTO `admin_operation_log` VALUES (2940, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:46:04', '2020-04-12 09:46:04');
INSERT INTO `admin_operation_log` VALUES (2941, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:46:08', '2020-04-12 09:46:08');
INSERT INTO `admin_operation_log` VALUES (2942, 3, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"4\",\"_model\":\"App_Models_Comments\",\"_token\":\"yclhwUCHUHQA97RxWvkXOyrqJbgSXIlzFMzQNtGQ\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-12 09:46:18', '2020-04-12 09:46:18');
INSERT INTO `admin_operation_log` VALUES (2943, 3, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 09:46:19', '2020-04-12 09:46:19');
INSERT INTO `admin_operation_log` VALUES (2944, 3, 'admin/comments/6,7,8,9,14,15', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"yclhwUCHUHQA97RxWvkXOyrqJbgSXIlzFMzQNtGQ\"}', '2020-04-12 09:46:29', '2020-04-12 09:46:29');
INSERT INTO `admin_operation_log` VALUES (2945, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:46:40', '2020-04-12 09:46:40');
INSERT INTO `admin_operation_log` VALUES (2946, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:46:43', '2020-04-12 09:46:43');
INSERT INTO `admin_operation_log` VALUES (2947, 1, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:46:53', '2020-04-12 09:46:53');
INSERT INTO `admin_operation_log` VALUES (2948, 1, 'admin/comments/6,7,8,9,14,15', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\"}', '2020-04-12 09:47:12', '2020-04-12 09:47:12');
INSERT INTO `admin_operation_log` VALUES (2949, 1, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 09:47:13', '2020-04-12 09:47:13');
INSERT INTO `admin_operation_log` VALUES (2950, 1, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:47:20', '2020-04-12 09:47:20');
INSERT INTO `admin_operation_log` VALUES (2951, 1, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:47:23', '2020-04-12 09:47:23');
INSERT INTO `admin_operation_log` VALUES (2952, 1, 'admin/comments/3,10,11', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\"}', '2020-04-12 09:47:28', '2020-04-12 09:47:28');
INSERT INTO `admin_operation_log` VALUES (2953, 1, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 09:47:28', '2020-04-12 09:47:28');
INSERT INTO `admin_operation_log` VALUES (2954, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:47:32', '2020-04-12 09:47:32');
INSERT INTO `admin_operation_log` VALUES (2955, 1, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:47:46', '2020-04-12 09:47:46');
INSERT INTO `admin_operation_log` VALUES (2956, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:47:51', '2020-04-12 09:47:51');
INSERT INTO `admin_operation_log` VALUES (2957, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\",\"_pjax\":\"#pjax-container\"}', '2020-04-12 09:47:54', '2020-04-12 09:47:54');
INSERT INTO `admin_operation_log` VALUES (2958, 3, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":\"4\",\"user_id\":null,\"level\":null,\"reply_comment_id\":null,\"pid\":null,\"content\":\"\\u5c31\\u2026\\u2026\\u5c31TM\\u4f60\\u53eb\\u590f\\u2026\\u2026\\u590f\\u6d1b\\u554a\",\"_token\":\"yclhwUCHUHQA97RxWvkXOyrqJbgSXIlzFMzQNtGQ\"}', '2020-04-12 09:48:28', '2020-04-12 09:48:28');
INSERT INTO `admin_operation_log` VALUES (2959, 3, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-12 09:48:30', '2020-04-12 09:48:30');
INSERT INTO `admin_operation_log` VALUES (2960, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\",\"_pjax\":\"#pjax-container\"}', '2020-04-12 09:49:24', '2020-04-12 09:49:24');
INSERT INTO `admin_operation_log` VALUES (2961, 3, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":\"4\",\"user_id\":null,\"level\":null,\"reply_comment_id\":null,\"pid\":null,\"content\":\"\\u5c31\\u2026\\u2026\\u5c31TM\\u4f60\\u53eb\\u590f\\u2026\\u2026\\u590f\\u6d1b\\u554a\",\"_token\":\"yclhwUCHUHQA97RxWvkXOyrqJbgSXIlzFMzQNtGQ\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/comments\\/create?article_id=4\"}', '2020-04-12 09:49:47', '2020-04-12 09:49:47');
INSERT INTO `admin_operation_log` VALUES (2962, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 09:50:28', '2020-04-12 09:50:28');
INSERT INTO `admin_operation_log` VALUES (2963, 1, 'admin/articles/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 09:50:32', '2020-04-12 09:50:32');
INSERT INTO `admin_operation_log` VALUES (2964, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 09:50:34', '2020-04-12 09:50:34');
INSERT INTO `admin_operation_log` VALUES (2965, 1, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 09:50:35', '2020-04-12 09:50:35');
INSERT INTO `admin_operation_log` VALUES (2966, 1, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\",\"_pjax\":\"#pjax-container\"}', '2020-04-12 09:50:38', '2020-04-12 09:50:38');
INSERT INTO `admin_operation_log` VALUES (2967, 1, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":\"4\",\"user_id\":null,\"level\":null,\"reply_comment_id\":null,\"pid\":null,\"content\":\"\\u5c31\\u2026\\u2026\\u5c31TM\\u4f60\\u53eb\\u590f\\u2026\\u2026\\u590f\\u6d1b\\u554a\",\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\"}', '2020-04-12 09:50:41', '2020-04-12 09:50:41');
INSERT INTO `admin_operation_log` VALUES (2968, 1, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:50:41', '2020-04-12 09:50:41');
INSERT INTO `admin_operation_log` VALUES (2969, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"content\":\"\\u5c31\\u2026\\u2026\\u5c31TM\\u6211\\u53eb\\u590f\\u2026\\u2026\\u590f\\u6d1b\\uff01\\uff01\",\"_key\":\"16\",\"_model\":\"App_Models_Comments\",\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_action\":\"App_Admin_Actions_Comments_replyComment\"}', '2020-04-12 09:50:59', '2020-04-12 09:50:59');
INSERT INTO `admin_operation_log` VALUES (2970, 1, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 09:52:36', '2020-04-12 09:52:36');
INSERT INTO `admin_operation_log` VALUES (2971, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"content\":\"\\u5c31\\u2026\\u2026\\u5c31TM\\u6211\\u53eb\\u590f\\u2026\\u2026\\u590f\\u6d1b\\uff01\\uff01\",\"_key\":\"16\",\"_model\":\"App_Models_Comments\",\"_token\":\"8zrjbrpBLkG19zm6aGEMBSNvNrX1xrprE2qagIUx\",\"_action\":\"App_Admin_Actions_Comments_replyComment\"}', '2020-04-12 09:53:00', '2020-04-12 09:53:00');
INSERT INTO `admin_operation_log` VALUES (2972, 1, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 09:53:00', '2020-04-12 09:53:00');
INSERT INTO `admin_operation_log` VALUES (2973, 3, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-12 09:53:10', '2020-04-12 09:53:10');
INSERT INTO `admin_operation_log` VALUES (2974, 1, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 11:58:22', '2020-04-12 11:58:22');
INSERT INTO `admin_operation_log` VALUES (2975, 1, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 12:02:39', '2020-04-12 12:02:39');
INSERT INTO `admin_operation_log` VALUES (2976, 3, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-12 12:03:29', '2020-04-12 12:03:29');
INSERT INTO `admin_operation_log` VALUES (2977, 3, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-12 12:03:33', '2020-04-12 12:03:33');
INSERT INTO `admin_operation_log` VALUES (2978, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:03:39', '2020-04-12 12:03:39');
INSERT INTO `admin_operation_log` VALUES (2979, 3, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:03:44', '2020-04-12 12:03:44');
INSERT INTO `admin_operation_log` VALUES (2980, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 12:05:21', '2020-04-12 12:05:21');
INSERT INTO `admin_operation_log` VALUES (2981, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\",\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:05:51', '2020-04-12 12:05:51');
INSERT INTO `admin_operation_log` VALUES (2982, 3, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":\"4\",\"user_id\":null,\"level\":null,\"reply_comment_id\":null,\"pid\":null,\"content\":\"\\u9a6c\\u4ec0\\u4e48\\u6885\",\"_token\":\"TYoo5gPAzLzal1CXWaGSqhzUSZA7ttQBf152raSm\"}', '2020-04-12 12:06:00', '2020-04-12 12:06:00');
INSERT INTO `admin_operation_log` VALUES (2983, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\",\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:06:03', '2020-04-12 12:06:03');
INSERT INTO `admin_operation_log` VALUES (2984, 3, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:06:07', '2020-04-12 12:06:07');
INSERT INTO `admin_operation_log` VALUES (2985, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:06:14', '2020-04-12 12:06:14');
INSERT INTO `admin_operation_log` VALUES (2986, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:06:41', '2020-04-12 12:06:41');
INSERT INTO `admin_operation_log` VALUES (2987, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-12 12:07:25', '2020-04-12 12:07:25');
INSERT INTO `admin_operation_log` VALUES (2988, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:07:30', '2020-04-12 12:07:30');
INSERT INTO `admin_operation_log` VALUES (2989, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:07:30', '2020-04-12 12:07:30');
INSERT INTO `admin_operation_log` VALUES (2990, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"comment.list\",\"name\":\"\\u8bc4\\u8bba\\u5217\\u8868\\u9875\",\"http_method\":[null],\"http_path\":\"\\/comments\",\"_token\":\"LEVUStAAzbfKp96r8J91kXf3Q2sA5ANA6eqJk6PS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-12 12:07:54', '2020-04-12 12:07:54');
INSERT INTO `admin_operation_log` VALUES (2991, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-12 12:07:55', '2020-04-12 12:07:55');
INSERT INTO `admin_operation_log` VALUES (2992, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 12:07:59', '2020-04-12 12:07:59');
INSERT INTO `admin_operation_log` VALUES (2993, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:08:04', '2020-04-12 12:08:04');
INSERT INTO `admin_operation_log` VALUES (2994, 1, 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:08:07', '2020-04-12 12:08:07');
INSERT INTO `admin_operation_log` VALUES (2995, 1, 'admin/auth/roles/3', 'PUT', '127.0.0.1', '{\"slug\":\"student\",\"name\":\"\\u5b66\\u751f\",\"permissions\":[\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",null],\"_token\":\"LEVUStAAzbfKp96r8J91kXf3Q2sA5ANA6eqJk6PS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-04-12 12:08:09', '2020-04-12 12:08:09');
INSERT INTO `admin_operation_log` VALUES (2996, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-12 12:08:10', '2020-04-12 12:08:10');
INSERT INTO `admin_operation_log` VALUES (2997, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 12:08:29', '2020-04-12 12:08:29');
INSERT INTO `admin_operation_log` VALUES (2998, 3, 'admin/comments/create', 'GET', '127.0.0.1', '{\"article_id\":\"4\",\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:08:33', '2020-04-12 12:08:33');
INSERT INTO `admin_operation_log` VALUES (2999, 3, 'admin/comments', 'POST', '127.0.0.1', '{\"article_id\":\"4\",\"user_id\":null,\"level\":null,\"reply_comment_id\":null,\"pid\":null,\"content\":\"\\u9a6c\\u4ec0\\u4e48\\u6885\",\"_token\":\"TYoo5gPAzLzal1CXWaGSqhzUSZA7ttQBf152raSm\"}', '2020-04-12 12:08:41', '2020-04-12 12:08:41');
INSERT INTO `admin_operation_log` VALUES (3000, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 12:08:41', '2020-04-12 12:08:41');
INSERT INTO `admin_operation_log` VALUES (3001, 3, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"content\":\"\\u9a6c\\u51ac\\u4ec0\\u4e48\",\"_key\":\"18\",\"_model\":\"App_Models_Comments\",\"_token\":\"TYoo5gPAzLzal1CXWaGSqhzUSZA7ttQBf152raSm\",\"_action\":\"App_Admin_Actions_Comments_replyComment\"}', '2020-04-12 12:09:01', '2020-04-12 12:09:01');
INSERT INTO `admin_operation_log` VALUES (3002, 3, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:09:01', '2020-04-12 12:09:01');
INSERT INTO `admin_operation_log` VALUES (3003, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:09:33', '2020-04-12 12:09:33');
INSERT INTO `admin_operation_log` VALUES (3004, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:10:47', '2020-04-12 12:10:47');
INSERT INTO `admin_operation_log` VALUES (3005, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"comments.createBtn\",\"name\":\"\\u8bc4\\u8bba\\u65b0\\u589e\\u6309\\u94ae\",\"http_method\":[\"HEAD\",null],\"http_path\":\"\\/admin\\/comments\",\"_token\":\"LEVUStAAzbfKp96r8J91kXf3Q2sA5ANA6eqJk6PS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-12 12:11:21', '2020-04-12 12:11:21');
INSERT INTO `admin_operation_log` VALUES (3006, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-12 12:11:21', '2020-04-12 12:11:21');
INSERT INTO `admin_operation_log` VALUES (3007, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-12 12:12:05', '2020-04-12 12:12:05');
INSERT INTO `admin_operation_log` VALUES (3008, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:12:09', '2020-04-12 12:12:09');
INSERT INTO `admin_operation_log` VALUES (3009, 1, 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:12:13', '2020-04-12 12:12:13');
INSERT INTO `admin_operation_log` VALUES (3010, 1, 'admin/auth/roles/3', 'PUT', '127.0.0.1', '{\"slug\":\"student\",\"name\":\"\\u5b66\\u751f\",\"permissions\":[\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",null],\"_token\":\"LEVUStAAzbfKp96r8J91kXf3Q2sA5ANA6eqJk6PS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-04-12 12:12:16', '2020-04-12 12:12:16');
INSERT INTO `admin_operation_log` VALUES (3011, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-12 12:12:16', '2020-04-12 12:12:16');
INSERT INTO `admin_operation_log` VALUES (3012, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:13:27', '2020-04-12 12:13:27');
INSERT INTO `admin_operation_log` VALUES (3013, 1, 'admin/auth/permissions/13/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:13:39', '2020-04-12 12:13:39');
INSERT INTO `admin_operation_log` VALUES (3014, 1, 'admin/auth/permissions/13', 'PUT', '127.0.0.1', '{\"slug\":\"comment.createBtn\",\"name\":\"\\u8bc4\\u8bba\\u65b0\\u589e\\u6309\\u94ae\",\"http_method\":[\"HEAD\",null],\"http_path\":\"\\/admin\\/comments\",\"created_at\":\"2020-04-12 12:11:21\",\"updated_at\":\"2020-04-12 12:11:21\",\"_token\":\"LEVUStAAzbfKp96r8J91kXf3Q2sA5ANA6eqJk6PS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-12 12:13:44', '2020-04-12 12:13:44');
INSERT INTO `admin_operation_log` VALUES (3015, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-12 12:13:44', '2020-04-12 12:13:44');
INSERT INTO `admin_operation_log` VALUES (3016, 1, 'admin/auth/permissions/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:13:53', '2020-04-12 12:13:53');
INSERT INTO `admin_operation_log` VALUES (3017, 1, 'admin/auth/permissions/12', 'PUT', '127.0.0.1', '{\"slug\":\"comments.list\",\"name\":\"\\u8bc4\\u8bba\\u5217\\u8868\\u9875\",\"http_method\":[null],\"http_path\":\"\\/comments\",\"created_at\":\"2020-04-12 12:07:54\",\"updated_at\":\"2020-04-12 12:07:54\",\"_token\":\"LEVUStAAzbfKp96r8J91kXf3Q2sA5ANA6eqJk6PS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-12 12:13:58', '2020-04-12 12:13:58');
INSERT INTO `admin_operation_log` VALUES (3018, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-12 12:13:58', '2020-04-12 12:13:58');
INSERT INTO `admin_operation_log` VALUES (3019, 1, 'admin/auth/permissions/13/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:14:00', '2020-04-12 12:14:00');
INSERT INTO `admin_operation_log` VALUES (3020, 1, 'admin/auth/permissions/13', 'PUT', '127.0.0.1', '{\"slug\":\"comments.createBtn\",\"name\":\"\\u8bc4\\u8bba\\u65b0\\u589e\\u6309\\u94ae\",\"http_method\":[\"HEAD\",null],\"http_path\":\"\\/admin\\/comments\",\"created_at\":\"2020-04-12 12:11:21\",\"updated_at\":\"2020-04-12 12:13:44\",\"_token\":\"LEVUStAAzbfKp96r8J91kXf3Q2sA5ANA6eqJk6PS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-12 12:14:03', '2020-04-12 12:14:03');
INSERT INTO `admin_operation_log` VALUES (3021, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-12 12:14:03', '2020-04-12 12:14:03');
INSERT INTO `admin_operation_log` VALUES (3022, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 12:14:22', '2020-04-12 12:14:22');
INSERT INTO `admin_operation_log` VALUES (3023, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:14:30', '2020-04-12 12:14:30');
INSERT INTO `admin_operation_log` VALUES (3024, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:14:31', '2020-04-12 12:14:31');
INSERT INTO `admin_operation_log` VALUES (3025, 1, 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:14:34', '2020-04-12 12:14:34');
INSERT INTO `admin_operation_log` VALUES (3026, 1, 'admin/auth/roles/3', 'PUT', '127.0.0.1', '{\"slug\":\"student\",\"name\":\"\\u5b66\\u751f\",\"permissions\":[\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",null],\"_token\":\"LEVUStAAzbfKp96r8J91kXf3Q2sA5ANA6eqJk6PS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-04-12 12:14:39', '2020-04-12 12:14:39');
INSERT INTO `admin_operation_log` VALUES (3027, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-12 12:14:40', '2020-04-12 12:14:40');
INSERT INTO `admin_operation_log` VALUES (3028, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 12:14:42', '2020-04-12 12:14:42');
INSERT INTO `admin_operation_log` VALUES (3029, 1, 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:14:45', '2020-04-12 12:14:45');
INSERT INTO `admin_operation_log` VALUES (3030, 1, 'admin/auth/roles/3', 'PUT', '127.0.0.1', '{\"slug\":\"student\",\"name\":\"\\u5b66\\u751f\",\"permissions\":[\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",null],\"_token\":\"LEVUStAAzbfKp96r8J91kXf3Q2sA5ANA6eqJk6PS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-04-12 12:14:49', '2020-04-12 12:14:49');
INSERT INTO `admin_operation_log` VALUES (3031, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-12 12:14:49', '2020-04-12 12:14:49');
INSERT INTO `admin_operation_log` VALUES (3032, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 12:17:53', '2020-04-12 12:17:53');
INSERT INTO `admin_operation_log` VALUES (3033, 3, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"16\",\"_model\":\"App_Models_Comments\",\"_token\":\"TYoo5gPAzLzal1CXWaGSqhzUSZA7ttQBf152raSm\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-12 12:18:30', '2020-04-12 12:18:30');
INSERT INTO `admin_operation_log` VALUES (3034, 3, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:18:31', '2020-04-12 12:18:31');
INSERT INTO `admin_operation_log` VALUES (3035, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:24:29', '2020-04-12 12:24:29');
INSERT INTO `admin_operation_log` VALUES (3036, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6d4b\\u8bd5\\u4e00\\u7ea7\\u83dc\\u5355\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"LEVUStAAzbfKp96r8J91kXf3Q2sA5ANA6eqJk6PS\"}', '2020-04-12 12:24:50', '2020-04-12 12:24:50');
INSERT INTO `admin_operation_log` VALUES (3037, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-12 12:24:50', '2020-04-12 12:24:50');
INSERT INTO `admin_operation_log` VALUES (3038, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"23\",\"title\":\"\\u6d4b\\u8bd5\\u4e8c\\u7ea7\\u83dc\\u53551\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"LEVUStAAzbfKp96r8J91kXf3Q2sA5ANA6eqJk6PS\"}', '2020-04-12 12:25:04', '2020-04-12 12:25:04');
INSERT INTO `admin_operation_log` VALUES (3039, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-12 12:25:04', '2020-04-12 12:25:04');
INSERT INTO `admin_operation_log` VALUES (3040, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"23\",\"title\":\"\\u6d4b\\u8bd5\\u4e8c\\u7ea7\\u83dc\\u53552\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"LEVUStAAzbfKp96r8J91kXf3Q2sA5ANA6eqJk6PS\"}', '2020-04-12 12:25:12', '2020-04-12 12:25:12');
INSERT INTO `admin_operation_log` VALUES (3041, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-12 12:25:12', '2020-04-12 12:25:12');
INSERT INTO `admin_operation_log` VALUES (3042, 1, 'admin/auth/menu/23', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"LEVUStAAzbfKp96r8J91kXf3Q2sA5ANA6eqJk6PS\"}', '2020-04-12 12:25:18', '2020-04-12 12:25:18');
INSERT INTO `admin_operation_log` VALUES (3043, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:25:18', '2020-04-12 12:25:18');
INSERT INTO `admin_operation_log` VALUES (3044, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:31:42', '2020-04-12 12:31:42');
INSERT INTO `admin_operation_log` VALUES (3045, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:31:44', '2020-04-12 12:31:44');
INSERT INTO `admin_operation_log` VALUES (3046, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:31:47', '2020-04-12 12:31:47');
INSERT INTO `admin_operation_log` VALUES (3047, 1, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:31:51', '2020-04-12 12:31:51');
INSERT INTO `admin_operation_log` VALUES (3048, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-12 12:33:15', '2020-04-12 12:33:15');
INSERT INTO `admin_operation_log` VALUES (3049, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-12 12:36:01', '2020-04-12 12:36:01');
INSERT INTO `admin_operation_log` VALUES (3050, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-12 12:36:23', '2020-04-12 12:36:23');
INSERT INTO `admin_operation_log` VALUES (3051, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-12 12:38:04', '2020-04-12 12:38:04');
INSERT INTO `admin_operation_log` VALUES (3052, 1, 'admin/comments/19/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:38:10', '2020-04-12 12:38:10');
INSERT INTO `admin_operation_log` VALUES (3053, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-12 12:38:10', '2020-04-12 12:38:10');
INSERT INTO `admin_operation_log` VALUES (3054, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-12 12:38:18', '2020-04-12 12:38:18');
INSERT INTO `admin_operation_log` VALUES (3055, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:38:28', '2020-04-12 12:38:28');
INSERT INTO `admin_operation_log` VALUES (3056, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-12 12:39:04', '2020-04-12 12:39:04');
INSERT INTO `admin_operation_log` VALUES (3057, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-12 12:40:51', '2020-04-12 12:40:51');
INSERT INTO `admin_operation_log` VALUES (3058, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 12:42:05', '2020-04-12 12:42:05');
INSERT INTO `admin_operation_log` VALUES (3059, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-12 12:42:11', '2020-04-12 12:42:11');
INSERT INTO `admin_operation_log` VALUES (3060, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:42:15', '2020-04-12 12:42:15');
INSERT INTO `admin_operation_log` VALUES (3061, 1, 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:42:17', '2020-04-12 12:42:17');
INSERT INTO `admin_operation_log` VALUES (3062, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:42:20', '2020-04-12 12:42:20');
INSERT INTO `admin_operation_log` VALUES (3063, 1, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:42:23', '2020-04-12 12:42:23');
INSERT INTO `admin_operation_log` VALUES (3064, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 12:43:32', '2020-04-12 12:43:32');
INSERT INTO `admin_operation_log` VALUES (3065, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-12 12:48:53', '2020-04-12 12:48:53');
INSERT INTO `admin_operation_log` VALUES (3066, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-12 12:49:34', '2020-04-12 12:49:34');
INSERT INTO `admin_operation_log` VALUES (3067, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-12 12:50:29', '2020-04-12 12:50:29');
INSERT INTO `admin_operation_log` VALUES (3068, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-12 12:50:51', '2020-04-12 12:50:51');
INSERT INTO `admin_operation_log` VALUES (3069, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:55:10', '2020-04-12 12:55:10');
INSERT INTO `admin_operation_log` VALUES (3070, 1, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 12:55:12', '2020-04-12 12:55:12');
INSERT INTO `admin_operation_log` VALUES (3071, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 12:56:17', '2020-04-12 12:56:17');
INSERT INTO `admin_operation_log` VALUES (3072, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 12:56:51', '2020-04-12 12:56:51');
INSERT INTO `admin_operation_log` VALUES (3073, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 12:57:06', '2020-04-12 12:57:06');
INSERT INTO `admin_operation_log` VALUES (3074, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 13:44:09', '2020-04-12 13:44:09');
INSERT INTO `admin_operation_log` VALUES (3075, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 13:48:22', '2020-04-12 13:48:22');
INSERT INTO `admin_operation_log` VALUES (3076, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 13:48:48', '2020-04-12 13:48:48');
INSERT INTO `admin_operation_log` VALUES (3077, 3, 'admin/articles/4', 'GET', '127.0.0.1', '[]', '2020-04-12 14:06:35', '2020-04-12 14:06:35');
INSERT INTO `admin_operation_log` VALUES (3078, 3, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-13 06:39:36', '2020-04-13 06:39:36');
INSERT INTO `admin_operation_log` VALUES (3079, 1, 'admin/comments', 'GET', '127.0.0.1', '[]', '2020-04-13 06:43:27', '2020-04-13 06:43:27');
INSERT INTO `admin_operation_log` VALUES (3080, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-13 06:43:33', '2020-04-13 06:43:33');
INSERT INTO `admin_operation_log` VALUES (3081, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 06:43:40', '2020-04-13 06:43:40');
INSERT INTO `admin_operation_log` VALUES (3082, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 06:43:45', '2020-04-13 06:43:45');
INSERT INTO `admin_operation_log` VALUES (3083, 3, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 06:43:48', '2020-04-13 06:43:48');
INSERT INTO `admin_operation_log` VALUES (3084, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 06:43:58', '2020-04-13 06:43:58');
INSERT INTO `admin_operation_log` VALUES (3085, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 06:56:56', '2020-04-13 06:56:56');
INSERT INTO `admin_operation_log` VALUES (3086, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 06:57:10', '2020-04-13 06:57:10');
INSERT INTO `admin_operation_log` VALUES (3087, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 06:57:17', '2020-04-13 06:57:17');
INSERT INTO `admin_operation_log` VALUES (3088, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 06:57:22', '2020-04-13 06:57:22');
INSERT INTO `admin_operation_log` VALUES (3089, 1, 'admin/squads/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 06:57:28', '2020-04-13 06:57:28');
INSERT INTO `admin_operation_log` VALUES (3090, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 06:57:33', '2020-04-13 06:57:33');
INSERT INTO `admin_operation_log` VALUES (3091, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 06:57:40', '2020-04-13 06:57:40');
INSERT INTO `admin_operation_log` VALUES (3092, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 06:58:03', '2020-04-13 06:58:03');
INSERT INTO `admin_operation_log` VALUES (3093, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 06:58:04', '2020-04-13 06:58:04');
INSERT INTO `admin_operation_log` VALUES (3094, 3, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-14 08:06:12', '2020-04-14 08:06:12');
INSERT INTO `admin_operation_log` VALUES (3095, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-14 08:06:24', '2020-04-14 08:06:24');
INSERT INTO `admin_operation_log` VALUES (3096, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:06:27', '2020-04-14 08:06:27');
INSERT INTO `admin_operation_log` VALUES (3097, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:06:33', '2020-04-14 08:06:33');
INSERT INTO `admin_operation_log` VALUES (3098, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:06:47', '2020-04-14 08:06:47');
INSERT INTO `admin_operation_log` VALUES (3099, 1, 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:06:52', '2020-04-14 08:06:52');
INSERT INTO `admin_operation_log` VALUES (3100, 1, 'admin/auth/menu/11', 'PUT', '127.0.0.1', '{\"parent_id\":\"14\",\"title\":\"\\u4e13\\u4e1a\\u7ba1\\u7406\",\"icon\":\"fa-graduation-cap\",\"uri\":\"\\/professions\",\"roles\":[\"1\",\"2\",\"3\",null],\"permission\":null,\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-14 08:06:57', '2020-04-14 08:06:57');
INSERT INTO `admin_operation_log` VALUES (3101, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-14 08:06:57', '2020-04-14 08:06:57');
INSERT INTO `admin_operation_log` VALUES (3102, 3, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-14 08:06:59', '2020-04-14 08:06:59');
INSERT INTO `admin_operation_log` VALUES (3103, 3, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:07:02', '2020-04-14 08:07:02');
INSERT INTO `admin_operation_log` VALUES (3104, 3, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:07:05', '2020-04-14 08:07:05');
INSERT INTO `admin_operation_log` VALUES (3105, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:07:09', '2020-04-14 08:07:09');
INSERT INTO `admin_operation_log` VALUES (3106, 3, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:07:19', '2020-04-14 08:07:19');
INSERT INTO `admin_operation_log` VALUES (3107, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:07:27', '2020-04-14 08:07:27');
INSERT INTO `admin_operation_log` VALUES (3108, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"professions.list\",\"name\":\"\\u4e13\\u4e1a\\u5217\\u8868\\u754c\\u9762\",\"http_method\":[null],\"http_path\":\"\\/professions\",\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-14 08:08:06', '2020-04-14 08:08:06');
INSERT INTO `admin_operation_log` VALUES (3109, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-14 08:08:06', '2020-04-14 08:08:06');
INSERT INTO `admin_operation_log` VALUES (3110, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:08:09', '2020-04-14 08:08:09');
INSERT INTO `admin_operation_log` VALUES (3111, 1, 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:08:11', '2020-04-14 08:08:11');
INSERT INTO `admin_operation_log` VALUES (3112, 1, 'admin/auth/roles/3', 'PUT', '127.0.0.1', '{\"slug\":\"student\",\"name\":\"\\u5b66\\u751f\",\"permissions\":[\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",null],\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-04-14 08:08:14', '2020-04-14 08:08:14');
INSERT INTO `admin_operation_log` VALUES (3113, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-14 08:08:14', '2020-04-14 08:08:14');
INSERT INTO `admin_operation_log` VALUES (3114, 3, 'admin/professions', 'GET', '127.0.0.1', '[]', '2020-04-14 08:08:16', '2020-04-14 08:08:16');
INSERT INTO `admin_operation_log` VALUES (3115, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:09:52', '2020-04-14 08:09:52');
INSERT INTO `admin_operation_log` VALUES (3116, 1, 'admin/professions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:09:54', '2020-04-14 08:09:54');
INSERT INTO `admin_operation_log` VALUES (3117, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:09:56', '2020-04-14 08:09:56');
INSERT INTO `admin_operation_log` VALUES (3118, 1, 'admin/professions/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:09:58', '2020-04-14 08:09:58');
INSERT INTO `admin_operation_log` VALUES (3119, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:10:00', '2020-04-14 08:10:00');
INSERT INTO `admin_operation_log` VALUES (3120, 3, 'admin/professions', 'GET', '127.0.0.1', '[]', '2020-04-14 08:14:55', '2020-04-14 08:14:55');
INSERT INTO `admin_operation_log` VALUES (3121, 3, 'admin/professions', 'GET', '127.0.0.1', '[]', '2020-04-14 08:16:51', '2020-04-14 08:16:51');
INSERT INTO `admin_operation_log` VALUES (3122, 3, 'admin/professions', 'GET', '127.0.0.1', '[]', '2020-04-14 08:17:20', '2020-04-14 08:17:20');
INSERT INTO `admin_operation_log` VALUES (3123, 1, 'admin/professions', 'GET', '127.0.0.1', '[]', '2020-04-14 08:17:26', '2020-04-14 08:17:26');
INSERT INTO `admin_operation_log` VALUES (3124, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:18:24', '2020-04-14 08:18:24');
INSERT INTO `admin_operation_log` VALUES (3125, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:18:29', '2020-04-14 08:18:29');
INSERT INTO `admin_operation_log` VALUES (3126, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2020-04-14 08:19:13', '2020-04-14 08:19:13');
INSERT INTO `admin_operation_log` VALUES (3127, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:19:20', '2020-04-14 08:19:20');
INSERT INTO `admin_operation_log` VALUES (3128, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"professions.createBtn\",\"name\":\"\\u4e13\\u4e1a\\u65b0\\u589e\\u6309\\u94ae\",\"http_method\":[\"HEAD\",null],\"http_path\":\"\\/professions\",\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-14 08:19:33', '2020-04-14 08:19:33');
INSERT INTO `admin_operation_log` VALUES (3129, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-14 08:19:34', '2020-04-14 08:19:34');
INSERT INTO `admin_operation_log` VALUES (3130, 3, 'admin/professions', 'GET', '127.0.0.1', '[]', '2020-04-14 08:20:12', '2020-04-14 08:20:12');
INSERT INTO `admin_operation_log` VALUES (3131, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:20:23', '2020-04-14 08:20:23');
INSERT INTO `admin_operation_log` VALUES (3132, 3, 'admin/professions', 'GET', '127.0.0.1', '[]', '2020-04-14 08:21:25', '2020-04-14 08:21:25');
INSERT INTO `admin_operation_log` VALUES (3133, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:22:03', '2020-04-14 08:22:03');
INSERT INTO `admin_operation_log` VALUES (3134, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:22:23', '2020-04-14 08:22:23');
INSERT INTO `admin_operation_log` VALUES (3135, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"professions.viewBtn\",\"name\":\"\\u4e13\\u4e1a\\u663e\\u793a\\u6309\\u94ae\",\"http_method\":[\"HEAD\",null],\"http_path\":\"\\/professions\",\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-14 08:23:08', '2020-04-14 08:23:08');
INSERT INTO `admin_operation_log` VALUES (3136, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-14 08:23:08', '2020-04-14 08:23:08');
INSERT INTO `admin_operation_log` VALUES (3137, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:23:11', '2020-04-14 08:23:11');
INSERT INTO `admin_operation_log` VALUES (3138, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"professions.editBtn\",\"name\":\"\\u4e13\\u4e1a\\u7f16\\u8f91\\u6309\\u94ae\",\"http_method\":[\"HEAD\",null],\"http_path\":\"\\/professions\",\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-14 08:23:42', '2020-04-14 08:23:42');
INSERT INTO `admin_operation_log` VALUES (3139, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-14 08:23:43', '2020-04-14 08:23:43');
INSERT INTO `admin_operation_log` VALUES (3140, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:23:46', '2020-04-14 08:23:46');
INSERT INTO `admin_operation_log` VALUES (3141, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"professions.deleteBtn\",\"name\":\"\\u4e13\\u4e1a\\u5220\\u9664\\u6309\\u94ae\",\"http_method\":[\"HEAD\",null],\"http_path\":\"\\/professions\",\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-14 08:24:30', '2020-04-14 08:24:30');
INSERT INTO `admin_operation_log` VALUES (3142, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-14 08:24:30', '2020-04-14 08:24:30');
INSERT INTO `admin_operation_log` VALUES (3143, 3, 'admin/professions', 'GET', '127.0.0.1', '[]', '2020-04-14 08:26:25', '2020-04-14 08:26:25');
INSERT INTO `admin_operation_log` VALUES (3144, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:27:06', '2020-04-14 08:27:06');
INSERT INTO `admin_operation_log` VALUES (3145, 1, 'admin/professions', 'GET', '127.0.0.1', '[]', '2020-04-14 08:27:07', '2020-04-14 08:27:07');
INSERT INTO `admin_operation_log` VALUES (3146, 1, 'admin/professions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:27:14', '2020-04-14 08:27:14');
INSERT INTO `admin_operation_log` VALUES (3147, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:27:16', '2020-04-14 08:27:16');
INSERT INTO `admin_operation_log` VALUES (3148, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:27:32', '2020-04-14 08:27:32');
INSERT INTO `admin_operation_log` VALUES (3149, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:27:47', '2020-04-14 08:27:47');
INSERT INTO `admin_operation_log` VALUES (3150, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:27:51', '2020-04-14 08:27:51');
INSERT INTO `admin_operation_log` VALUES (3151, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:27:58', '2020-04-14 08:27:58');
INSERT INTO `admin_operation_log` VALUES (3152, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:28:23', '2020-04-14 08:28:23');
INSERT INTO `admin_operation_log` VALUES (3153, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:28:24', '2020-04-14 08:28:24');
INSERT INTO `admin_operation_log` VALUES (3154, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:28:28', '2020-04-14 08:28:28');
INSERT INTO `admin_operation_log` VALUES (3155, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:28:31', '2020-04-14 08:28:31');
INSERT INTO `admin_operation_log` VALUES (3156, 1, 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{\"parent_id\":\"14\",\"title\":\"\\u73ed\\u7ea7\\u7ba1\\u7406\",\"icon\":\"fa-male\",\"uri\":\"\\/squads\",\"roles\":[\"1\",\"2\",\"3\",null],\"permission\":null,\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-14 08:28:35', '2020-04-14 08:28:35');
INSERT INTO `admin_operation_log` VALUES (3157, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-14 08:28:35', '2020-04-14 08:28:35');
INSERT INTO `admin_operation_log` VALUES (3158, 3, 'admin/professions', 'GET', '127.0.0.1', '[]', '2020-04-14 08:28:37', '2020-04-14 08:28:37');
INSERT INTO `admin_operation_log` VALUES (3159, 3, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:28:40', '2020-04-14 08:28:40');
INSERT INTO `admin_operation_log` VALUES (3160, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:28:44', '2020-04-14 08:28:44');
INSERT INTO `admin_operation_log` VALUES (3161, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:28:55', '2020-04-14 08:28:55');
INSERT INTO `admin_operation_log` VALUES (3162, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:28:57', '2020-04-14 08:28:57');
INSERT INTO `admin_operation_log` VALUES (3163, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"squad.list\",\"name\":\"\\u73ed\\u7ea7\\u5217\\u8868\\u754c\\u9762\",\"http_method\":[null],\"http_path\":\"\\/squads\",\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-14 08:29:23', '2020-04-14 08:29:23');
INSERT INTO `admin_operation_log` VALUES (3164, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-14 08:29:23', '2020-04-14 08:29:23');
INSERT INTO `admin_operation_log` VALUES (3165, 3, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-14 08:29:37', '2020-04-14 08:29:37');
INSERT INTO `admin_operation_log` VALUES (3166, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:29:40', '2020-04-14 08:29:40');
INSERT INTO `admin_operation_log` VALUES (3167, 1, 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:29:46', '2020-04-14 08:29:46');
INSERT INTO `admin_operation_log` VALUES (3168, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:29:59', '2020-04-14 08:29:59');
INSERT INTO `admin_operation_log` VALUES (3169, 3, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-14 08:30:07', '2020-04-14 08:30:07');
INSERT INTO `admin_operation_log` VALUES (3170, 3, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:30:10', '2020-04-14 08:30:10');
INSERT INTO `admin_operation_log` VALUES (3171, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:31:15', '2020-04-14 08:31:15');
INSERT INTO `admin_operation_log` VALUES (3172, 3, 'admin/articles/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:31:20', '2020-04-14 08:31:20');
INSERT INTO `admin_operation_log` VALUES (3173, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:31:24', '2020-04-14 08:31:24');
INSERT INTO `admin_operation_log` VALUES (3174, 3, 'admin/articles/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:31:26', '2020-04-14 08:31:26');
INSERT INTO `admin_operation_log` VALUES (3175, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:31:29', '2020-04-14 08:31:29');
INSERT INTO `admin_operation_log` VALUES (3176, 3, 'admin/articles/5', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:31:30', '2020-04-14 08:31:30');
INSERT INTO `admin_operation_log` VALUES (3177, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:31:34', '2020-04-14 08:31:34');
INSERT INTO `admin_operation_log` VALUES (3178, 3, 'admin/articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:31:35', '2020-04-14 08:31:35');
INSERT INTO `admin_operation_log` VALUES (3179, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:31:42', '2020-04-14 08:31:42');
INSERT INTO `admin_operation_log` VALUES (3180, 3, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:31:53', '2020-04-14 08:31:53');
INSERT INTO `admin_operation_log` VALUES (3181, 1, 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:31:59', '2020-04-14 08:31:59');
INSERT INTO `admin_operation_log` VALUES (3182, 1, 'admin/auth/roles/3', 'PUT', '127.0.0.1', '{\"slug\":\"student\",\"name\":\"\\u5b66\\u751f\",\"permissions\":[\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"19\",null],\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-04-14 08:32:04', '2020-04-14 08:32:04');
INSERT INTO `admin_operation_log` VALUES (3183, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-14 08:32:04', '2020-04-14 08:32:04');
INSERT INTO `admin_operation_log` VALUES (3184, 3, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-14 08:32:07', '2020-04-14 08:32:07');
INSERT INTO `admin_operation_log` VALUES (3185, 3, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-14 08:45:22', '2020-04-14 08:45:22');
INSERT INTO `admin_operation_log` VALUES (3186, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:45:52', '2020-04-14 08:45:52');
INSERT INTO `admin_operation_log` VALUES (3187, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:46:05', '2020-04-14 08:46:05');
INSERT INTO `admin_operation_log` VALUES (3188, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"squad.createBtn\",\"name\":\"\\u73ed\\u7ea7\\u65b0\\u589e\\u6309\\u94ae\",\"http_method\":[\"HEAD\",null],\"http_path\":\"\\/squads\",\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-14 08:46:41', '2020-04-14 08:46:41');
INSERT INTO `admin_operation_log` VALUES (3189, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-14 08:46:41', '2020-04-14 08:46:41');
INSERT INTO `admin_operation_log` VALUES (3190, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:46:47', '2020-04-14 08:46:47');
INSERT INTO `admin_operation_log` VALUES (3191, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"squad.viewBtn\",\"name\":\"\\u73ed\\u7ea7\\u663e\\u793a\\u6309\\u94ae\",\"http_method\":[\"HEAD\",null],\"http_path\":\"\\/squads\",\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-14 08:47:14', '2020-04-14 08:47:14');
INSERT INTO `admin_operation_log` VALUES (3192, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-14 08:47:14', '2020-04-14 08:47:14');
INSERT INTO `admin_operation_log` VALUES (3193, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-14 08:47:26', '2020-04-14 08:47:26');
INSERT INTO `admin_operation_log` VALUES (3194, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:47:36', '2020-04-14 08:47:36');
INSERT INTO `admin_operation_log` VALUES (3195, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:47:42', '2020-04-14 08:47:42');
INSERT INTO `admin_operation_log` VALUES (3196, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"squad.editBtn\",\"name\":\"\\u73ed\\u7ea7\\u7f16\\u8f91\\u6309\\u94ae\",\"http_method\":[\"HEAD\",null],\"http_path\":\"\\/squads\",\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions?page=2\"}', '2020-04-14 08:48:07', '2020-04-14 08:48:07');
INSERT INTO `admin_operation_log` VALUES (3197, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-04-14 08:48:07', '2020-04-14 08:48:07');
INSERT INTO `admin_operation_log` VALUES (3198, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:48:09', '2020-04-14 08:48:09');
INSERT INTO `admin_operation_log` VALUES (3199, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"squad.deleteBtn\",\"name\":\"\\u73ed\\u7ea7\\u5220\\u9664\\u6309\\u94ae\",\"http_method\":[\"HEAD\",null],\"http_path\":\"\\/squads\",\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions?page=2\"}', '2020-04-14 08:48:28', '2020-04-14 08:48:28');
INSERT INTO `admin_operation_log` VALUES (3200, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-04-14 08:48:28', '2020-04-14 08:48:28');
INSERT INTO `admin_operation_log` VALUES (3201, 3, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-14 08:49:40', '2020-04-14 08:49:40');
INSERT INTO `admin_operation_log` VALUES (3202, 3, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-14 08:49:50', '2020-04-14 08:49:50');
INSERT INTO `admin_operation_log` VALUES (3203, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:49:59', '2020-04-14 08:49:59');
INSERT INTO `admin_operation_log` VALUES (3204, 3, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-14 08:51:02', '2020-04-14 08:51:02');
INSERT INTO `admin_operation_log` VALUES (3205, 1, 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:51:16', '2020-04-14 08:51:16');
INSERT INTO `admin_operation_log` VALUES (3206, 1, 'admin/auth/roles/3', 'PUT', '127.0.0.1', '{\"slug\":\"student\",\"name\":\"\\u5b66\\u751f\",\"permissions\":[\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"19\",\"21\",null],\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-04-14 08:51:29', '2020-04-14 08:51:29');
INSERT INTO `admin_operation_log` VALUES (3207, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-14 08:51:29', '2020-04-14 08:51:29');
INSERT INTO `admin_operation_log` VALUES (3208, 3, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-14 08:51:32', '2020-04-14 08:51:32');
INSERT INTO `admin_operation_log` VALUES (3209, 3, 'admin/squads/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:51:34', '2020-04-14 08:51:34');
INSERT INTO `admin_operation_log` VALUES (3210, 3, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:51:36', '2020-04-14 08:51:36');
INSERT INTO `admin_operation_log` VALUES (3211, 1, 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:51:40', '2020-04-14 08:51:40');
INSERT INTO `admin_operation_log` VALUES (3212, 3, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-14 08:51:57', '2020-04-14 08:51:57');
INSERT INTO `admin_operation_log` VALUES (3213, 3, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:51:58', '2020-04-14 08:51:58');
INSERT INTO `admin_operation_log` VALUES (3214, 1, 'admin/auth/roles/3', 'PUT', '127.0.0.1', '{\"slug\":\"student\",\"name\":\"\\u5b66\\u751f\",\"permissions\":[\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"19\",\"21\",null],\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-04-14 08:52:08', '2020-04-14 08:52:08');
INSERT INTO `admin_operation_log` VALUES (3215, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-14 08:52:08', '2020-04-14 08:52:08');
INSERT INTO `admin_operation_log` VALUES (3216, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:52:12', '2020-04-14 08:52:12');
INSERT INTO `admin_operation_log` VALUES (3217, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2020-04-14 08:52:51', '2020-04-14 08:52:51');
INSERT INTO `admin_operation_log` VALUES (3218, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:52:52', '2020-04-14 08:52:52');
INSERT INTO `admin_operation_log` VALUES (3219, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"squad.view\",\"name\":\"\\u73ed\\u7ea7\\u663e\\u793a\\u754c\\u9762\",\"http_method\":[null],\"http_path\":\"\\/articles\\/*\",\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions?&page=2\"}', '2020-04-14 08:53:07', '2020-04-14 08:53:07');
INSERT INTO `admin_operation_log` VALUES (3220, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-04-14 08:53:08', '2020-04-14 08:53:08');
INSERT INTO `admin_operation_log` VALUES (3221, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:53:12', '2020-04-14 08:53:12');
INSERT INTO `admin_operation_log` VALUES (3222, 1, 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:53:15', '2020-04-14 08:53:15');
INSERT INTO `admin_operation_log` VALUES (3223, 1, 'admin/auth/roles/3', 'PUT', '127.0.0.1', '{\"slug\":\"student\",\"name\":\"\\u5b66\\u751f\",\"permissions\":[\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"19\",\"21\",\"24\",null],\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-04-14 08:53:19', '2020-04-14 08:53:19');
INSERT INTO `admin_operation_log` VALUES (3224, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-14 08:53:19', '2020-04-14 08:53:19');
INSERT INTO `admin_operation_log` VALUES (3225, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-14 08:54:11', '2020-04-14 08:54:11');
INSERT INTO `admin_operation_log` VALUES (3226, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-14 08:54:37', '2020-04-14 08:54:37');
INSERT INTO `admin_operation_log` VALUES (3227, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2020-04-14 08:55:02', '2020-04-14 08:55:02');
INSERT INTO `admin_operation_log` VALUES (3228, 3, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-14 08:55:06', '2020-04-14 08:55:06');
INSERT INTO `admin_operation_log` VALUES (3229, 3, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:55:10', '2020-04-14 08:55:10');
INSERT INTO `admin_operation_log` VALUES (3230, 3, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:55:11', '2020-04-14 08:55:11');
INSERT INTO `admin_operation_log` VALUES (3231, 3, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:55:12', '2020-04-14 08:55:12');
INSERT INTO `admin_operation_log` VALUES (3232, 1, 'admin/auth/roles/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:55:18', '2020-04-14 08:55:18');
INSERT INTO `admin_operation_log` VALUES (3233, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:55:21', '2020-04-14 08:55:21');
INSERT INTO `admin_operation_log` VALUES (3234, 1, 'admin/auth/roles/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:55:23', '2020-04-14 08:55:23');
INSERT INTO `admin_operation_log` VALUES (3235, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:55:25', '2020-04-14 08:55:25');
INSERT INTO `admin_operation_log` VALUES (3236, 1, 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:55:27', '2020-04-14 08:55:27');
INSERT INTO `admin_operation_log` VALUES (3237, 1, 'admin/auth/roles/3', 'PUT', '127.0.0.1', '{\"slug\":\"student\",\"name\":\"\\u5b66\\u751f\",\"permissions\":[\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"19\",\"21\",\"24\",null],\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-04-14 08:55:33', '2020-04-14 08:55:33');
INSERT INTO `admin_operation_log` VALUES (3238, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-14 08:55:33', '2020-04-14 08:55:33');
INSERT INTO `admin_operation_log` VALUES (3239, 3, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-14 08:55:36', '2020-04-14 08:55:36');
INSERT INTO `admin_operation_log` VALUES (3240, 3, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:55:39', '2020-04-14 08:55:39');
INSERT INTO `admin_operation_log` VALUES (3241, 3, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:55:41', '2020-04-14 08:55:41');
INSERT INTO `admin_operation_log` VALUES (3242, 1, 'admin/auth/permissions/24/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:55:50', '2020-04-14 08:55:50');
INSERT INTO `admin_operation_log` VALUES (3243, 1, 'admin/auth/permissions/24', 'PUT', '127.0.0.1', '{\"slug\":\"squad.view\",\"name\":\"\\u73ed\\u7ea7\\u663e\\u793a\\u754c\\u9762\",\"http_method\":[null],\"http_path\":\"\\/squads\\/*\",\"created_at\":\"2020-04-14 08:53:07\",\"updated_at\":\"2020-04-14 08:53:07\",\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions?&page=2\"}', '2020-04-14 08:55:54', '2020-04-14 08:55:54');
INSERT INTO `admin_operation_log` VALUES (3244, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-04-14 08:55:54', '2020-04-14 08:55:54');
INSERT INTO `admin_operation_log` VALUES (3245, 3, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-14 08:55:56', '2020-04-14 08:55:56');
INSERT INTO `admin_operation_log` VALUES (3246, 3, 'admin/squads/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:56:00', '2020-04-14 08:56:00');
INSERT INTO `admin_operation_log` VALUES (3247, 3, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:56:01', '2020-04-14 08:56:01');
INSERT INTO `admin_operation_log` VALUES (3248, 3, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-14 08:57:18', '2020-04-14 08:57:18');
INSERT INTO `admin_operation_log` VALUES (3249, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:58:12', '2020-04-14 08:58:12');
INSERT INTO `admin_operation_log` VALUES (3250, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:58:55', '2020-04-14 08:58:55');
INSERT INTO `admin_operation_log` VALUES (3251, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"student.squad.createBtn\",\"name\":\"\\u5b66\\u751f\\u73ed\\u7ea7\\u5206\\u914d\\u6309\\u94ae\",\"http_method\":[\"HEAD\",null],\"http_path\":\"\\/squads\",\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions?&page=2\"}', '2020-04-14 08:59:07', '2020-04-14 08:59:07');
INSERT INTO `admin_operation_log` VALUES (3252, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-04-14 08:59:07', '2020-04-14 08:59:07');
INSERT INTO `admin_operation_log` VALUES (3253, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:59:12', '2020-04-14 08:59:12');
INSERT INTO `admin_operation_log` VALUES (3254, 1, 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:59:14', '2020-04-14 08:59:14');
INSERT INTO `admin_operation_log` VALUES (3255, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 08:59:21', '2020-04-14 08:59:21');
INSERT INTO `admin_operation_log` VALUES (3256, 3, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-14 09:00:18', '2020-04-14 09:00:18');
INSERT INTO `admin_operation_log` VALUES (3257, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:00:37', '2020-04-14 09:00:37');
INSERT INTO `admin_operation_log` VALUES (3258, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"student.squad.deleteBtn\",\"name\":\"\\u5b66\\u751f\\u73ed\\u7ea7\\u5220\\u9664\\u6309\\u94ae\",\"http_method\":[\"HEAD\",null],\"http_path\":\"\\/squads\",\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions?&page=2\"}', '2020-04-14 09:01:10', '2020-04-14 09:01:10');
INSERT INTO `admin_operation_log` VALUES (3259, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-04-14 09:01:10', '2020-04-14 09:01:10');
INSERT INTO `admin_operation_log` VALUES (3260, 3, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-14 09:01:55', '2020-04-14 09:01:55');
INSERT INTO `admin_operation_log` VALUES (3261, 3, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:02:02', '2020-04-14 09:02:02');
INSERT INTO `admin_operation_log` VALUES (3262, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:09:29', '2020-04-14 09:09:29');
INSERT INTO `admin_operation_log` VALUES (3263, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:09:42', '2020-04-14 09:09:42');
INSERT INTO `admin_operation_log` VALUES (3264, 1, 'admin/auth/menu/15/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:09:46', '2020-04-14 09:09:46');
INSERT INTO `admin_operation_log` VALUES (3265, 1, 'admin/auth/menu/15', 'PUT', '127.0.0.1', '{\"parent_id\":\"14\",\"title\":\"\\u8bfe\\u7a0b\\u7ba1\\u7406\",\"icon\":\"fa-calendar\",\"uri\":\"\\/courses\",\"roles\":[\"1\",\"2\",\"3\",null],\"permission\":null,\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-14 09:09:50', '2020-04-14 09:09:50');
INSERT INTO `admin_operation_log` VALUES (3266, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-14 09:09:50', '2020-04-14 09:09:50');
INSERT INTO `admin_operation_log` VALUES (3267, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:09:54', '2020-04-14 09:09:54');
INSERT INTO `admin_operation_log` VALUES (3268, 3, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-14 09:11:01', '2020-04-14 09:11:01');
INSERT INTO `admin_operation_log` VALUES (3269, 3, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:11:04', '2020-04-14 09:11:04');
INSERT INTO `admin_operation_log` VALUES (3270, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:11:11', '2020-04-14 09:11:11');
INSERT INTO `admin_operation_log` VALUES (3271, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2020-04-14 09:11:14', '2020-04-14 09:11:14');
INSERT INTO `admin_operation_log` VALUES (3272, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:11:26', '2020-04-14 09:11:26');
INSERT INTO `admin_operation_log` VALUES (3273, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"course.list\",\"name\":\"\\u8bfe\\u7a0b\\u5217\\u8868\\u754c\\u9762\",\"http_method\":[null],\"http_path\":\"\\/courses\",\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions?&page=2\"}', '2020-04-14 09:11:54', '2020-04-14 09:11:54');
INSERT INTO `admin_operation_log` VALUES (3274, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-04-14 09:11:54', '2020-04-14 09:11:54');
INSERT INTO `admin_operation_log` VALUES (3275, 1, 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:11:59', '2020-04-14 09:11:59');
INSERT INTO `admin_operation_log` VALUES (3276, 1, 'admin/auth/roles/3', 'PUT', '127.0.0.1', '{\"slug\":\"student\",\"name\":\"\\u5b66\\u751f\",\"permissions\":[\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"19\",\"21\",\"24\",\"27\",null],\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-04-14 09:12:03', '2020-04-14 09:12:03');
INSERT INTO `admin_operation_log` VALUES (3277, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-14 09:12:03', '2020-04-14 09:12:03');
INSERT INTO `admin_operation_log` VALUES (3278, 3, 'admin/courses', 'GET', '127.0.0.1', '[]', '2020-04-14 09:12:05', '2020-04-14 09:12:05');
INSERT INTO `admin_operation_log` VALUES (3279, 3, 'admin/courses', 'GET', '127.0.0.1', '[]', '2020-04-14 09:14:41', '2020-04-14 09:14:41');
INSERT INTO `admin_operation_log` VALUES (3280, 3, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:14:59', '2020-04-14 09:14:59');
INSERT INTO `admin_operation_log` VALUES (3281, 3, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:15:00', '2020-04-14 09:15:00');
INSERT INTO `admin_operation_log` VALUES (3282, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:15:29', '2020-04-14 09:15:29');
INSERT INTO `admin_operation_log` VALUES (3283, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"course.createBtn\",\"name\":\"\\u8bfe\\u7a0b\\u65b0\\u589e\\u6309\\u94ae\",\"http_method\":[\"HEAD\",null],\"http_path\":\"\\/courses\",\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions?&page=2\"}', '2020-04-14 09:16:13', '2020-04-14 09:16:13');
INSERT INTO `admin_operation_log` VALUES (3284, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-04-14 09:16:13', '2020-04-14 09:16:13');
INSERT INTO `admin_operation_log` VALUES (3285, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:16:19', '2020-04-14 09:16:19');
INSERT INTO `admin_operation_log` VALUES (3286, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"course.viewBtn\",\"name\":\"\\u8bfe\\u7a0b\\u663e\\u793a\\u6309\\u94ae\",\"http_method\":[\"HEAD\",null],\"http_path\":\"\\/courses\",\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions?&page=2\"}', '2020-04-14 09:16:43', '2020-04-14 09:16:43');
INSERT INTO `admin_operation_log` VALUES (3287, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-04-14 09:16:43', '2020-04-14 09:16:43');
INSERT INTO `admin_operation_log` VALUES (3288, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:16:45', '2020-04-14 09:16:45');
INSERT INTO `admin_operation_log` VALUES (3289, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"course.editBtn\",\"name\":\"\\u8bfe\\u7a0b\\u7f16\\u8f91\\u6309\\u94ae\",\"http_method\":[\"HEAD\",null],\"http_path\":\"\\/courses\",\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions?&page=2\"}', '2020-04-14 09:17:07', '2020-04-14 09:17:07');
INSERT INTO `admin_operation_log` VALUES (3290, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-04-14 09:17:07', '2020-04-14 09:17:07');
INSERT INTO `admin_operation_log` VALUES (3291, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:17:10', '2020-04-14 09:17:10');
INSERT INTO `admin_operation_log` VALUES (3292, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"course.deleteBtn\",\"name\":\"\\u8bfe\\u7a0b\\u5220\\u9664\\u6309\\u94ae\",\"http_method\":[\"HEAD\",null],\"http_path\":\"\\/courses\",\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions?&page=2\"}', '2020-04-14 09:17:33', '2020-04-14 09:17:33');
INSERT INTO `admin_operation_log` VALUES (3293, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-04-14 09:17:34', '2020-04-14 09:17:34');
INSERT INTO `admin_operation_log` VALUES (3294, 1, 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:17:38', '2020-04-14 09:17:38');
INSERT INTO `admin_operation_log` VALUES (3295, 1, 'admin/auth/roles/3', 'PUT', '127.0.0.1', '{\"slug\":\"student\",\"name\":\"\\u5b66\\u751f\",\"permissions\":[\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"19\",\"21\",\"24\",\"27\",\"29\",null],\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-04-14 09:17:45', '2020-04-14 09:17:45');
INSERT INTO `admin_operation_log` VALUES (3296, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-14 09:17:45', '2020-04-14 09:17:45');
INSERT INTO `admin_operation_log` VALUES (3297, 3, 'admin/courses', 'GET', '127.0.0.1', '[]', '2020-04-14 09:19:09', '2020-04-14 09:19:09');
INSERT INTO `admin_operation_log` VALUES (3298, 3, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:19:16', '2020-04-14 09:19:16');
INSERT INTO `admin_operation_log` VALUES (3299, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:19:28', '2020-04-14 09:19:28');
INSERT INTO `admin_operation_log` VALUES (3300, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"course.view\",\"name\":\"\\u8bfe\\u7a0b\\u663e\\u793a\\u754c\\u9762\",\"http_method\":[null],\"http_path\":\"\\/courses\\/*\",\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions?&page=2\"}', '2020-04-14 09:20:16', '2020-04-14 09:20:16');
INSERT INTO `admin_operation_log` VALUES (3301, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-04-14 09:20:17', '2020-04-14 09:20:17');
INSERT INTO `admin_operation_log` VALUES (3302, 1, 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:20:22', '2020-04-14 09:20:22');
INSERT INTO `admin_operation_log` VALUES (3303, 1, 'admin/auth/roles/3', 'PUT', '127.0.0.1', '{\"slug\":\"student\",\"name\":\"\\u5b66\\u751f\",\"permissions\":[\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"19\",\"21\",\"24\",\"27\",\"29\",\"32\",null],\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-04-14 09:20:28', '2020-04-14 09:20:28');
INSERT INTO `admin_operation_log` VALUES (3304, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-14 09:20:28', '2020-04-14 09:20:28');
INSERT INTO `admin_operation_log` VALUES (3305, 3, 'admin/courses/1', 'GET', '127.0.0.1', '[]', '2020-04-14 09:20:30', '2020-04-14 09:20:30');
INSERT INTO `admin_operation_log` VALUES (3306, 3, 'admin/courses/1', 'GET', '127.0.0.1', '[]', '2020-04-14 09:21:32', '2020-04-14 09:21:32');
INSERT INTO `admin_operation_log` VALUES (3307, 3, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:21:56', '2020-04-14 09:21:56');
INSERT INTO `admin_operation_log` VALUES (3308, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:22:06', '2020-04-14 09:22:06');
INSERT INTO `admin_operation_log` VALUES (3309, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:22:10', '2020-04-14 09:22:10');
INSERT INTO `admin_operation_log` VALUES (3310, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:22:38', '2020-04-14 09:22:38');
INSERT INTO `admin_operation_log` VALUES (3311, 3, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:22:47', '2020-04-14 09:22:47');
INSERT INTO `admin_operation_log` VALUES (3312, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:22:53', '2020-04-14 09:22:53');
INSERT INTO `admin_operation_log` VALUES (3313, 1, 'admin/auth/menu/19/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:22:58', '2020-04-14 09:22:58');
INSERT INTO `admin_operation_log` VALUES (3314, 1, 'admin/auth/menu/19', 'PUT', '127.0.0.1', '{\"parent_id\":\"14\",\"title\":\"\\u5206\\u6570\\u7ba1\\u7406\",\"icon\":\"fa-database\",\"uri\":\"\\/fractions\",\"roles\":[\"1\",\"2\",\"3\",null],\"permission\":null,\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-14 09:23:03', '2020-04-14 09:23:03');
INSERT INTO `admin_operation_log` VALUES (3315, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-14 09:23:03', '2020-04-14 09:23:03');
INSERT INTO `admin_operation_log` VALUES (3316, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:23:06', '2020-04-14 09:23:06');
INSERT INTO `admin_operation_log` VALUES (3317, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2020-04-14 09:23:09', '2020-04-14 09:23:09');
INSERT INTO `admin_operation_log` VALUES (3318, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-04-14 09:23:13', '2020-04-14 09:23:13');
INSERT INTO `admin_operation_log` VALUES (3319, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:23:20', '2020-04-14 09:23:20');
INSERT INTO `admin_operation_log` VALUES (3320, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"fraction.list\",\"name\":\"\\u5206\\u6570\\u5217\\u8868\\u754c\\u9762\",\"http_method\":[null],\"http_path\":\"\\/fractions\",\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions?&page=2\"}', '2020-04-14 09:23:49', '2020-04-14 09:23:49');
INSERT INTO `admin_operation_log` VALUES (3321, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-04-14 09:23:49', '2020-04-14 09:23:49');
INSERT INTO `admin_operation_log` VALUES (3322, 1, 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:23:54', '2020-04-14 09:23:54');
INSERT INTO `admin_operation_log` VALUES (3323, 1, 'admin/auth/roles/3', 'PUT', '127.0.0.1', '{\"slug\":\"student\",\"name\":\"\\u5b66\\u751f\",\"permissions\":[\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"19\",\"21\",\"24\",\"27\",\"29\",\"32\",\"33\",null],\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-04-14 09:23:57', '2020-04-14 09:23:57');
INSERT INTO `admin_operation_log` VALUES (3324, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-14 09:23:57', '2020-04-14 09:23:57');
INSERT INTO `admin_operation_log` VALUES (3325, 3, 'admin/fractions', 'GET', '127.0.0.1', '[]', '2020-04-14 09:23:59', '2020-04-14 09:23:59');
INSERT INTO `admin_operation_log` VALUES (3326, 3, 'admin/fractions', 'GET', '127.0.0.1', '[]', '2020-04-14 09:26:26', '2020-04-14 09:26:26');
INSERT INTO `admin_operation_log` VALUES (3327, 3, 'admin/fractions', 'GET', '127.0.0.1', '[]', '2020-04-14 09:26:33', '2020-04-14 09:26:33');
INSERT INTO `admin_operation_log` VALUES (3328, 3, 'admin/fractions', 'GET', '127.0.0.1', '{\"student\":{\"name\":null},\"course\":{\"full_name\":null},\"metaCalType\":{\"name\":\"\\u5b9e\\u9a8c\"},\"order\":null,\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:26:47', '2020-04-14 09:26:47');
INSERT INTO `admin_operation_log` VALUES (3329, 3, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"student\":{\"name\":null},\"course\":{\"full_name\":null},\"metaCalType\":{\"name\":\"\\u8003\\u52e4\"},\"order\":null}', '2020-04-14 09:26:53', '2020-04-14 09:26:53');
INSERT INTO `admin_operation_log` VALUES (3330, 3, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:27:02', '2020-04-14 09:27:02');
INSERT INTO `admin_operation_log` VALUES (3331, 3, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"order\",\"type\":\"desc\"}}', '2020-04-14 09:27:05', '2020-04-14 09:27:05');
INSERT INTO `admin_operation_log` VALUES (3332, 3, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"order\",\"type\":\"asc\"}}', '2020-04-14 09:27:06', '2020-04-14 09:27:06');
INSERT INTO `admin_operation_log` VALUES (3333, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:27:23', '2020-04-14 09:27:23');
INSERT INTO `admin_operation_log` VALUES (3334, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"fraction.import\",\"name\":\"\\u5206\\u6570\\u5bfc\\u5165\\u6309\\u94ae\",\"http_method\":[\"HEAD\",null],\"http_path\":\"\\/fractions\",\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions?&page=2\"}', '2020-04-14 09:27:46', '2020-04-14 09:27:46');
INSERT INTO `admin_operation_log` VALUES (3335, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-04-14 09:27:46', '2020-04-14 09:27:46');
INSERT INTO `admin_operation_log` VALUES (3336, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:27:48', '2020-04-14 09:27:48');
INSERT INTO `admin_operation_log` VALUES (3337, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:27:53', '2020-04-14 09:27:53');
INSERT INTO `admin_operation_log` VALUES (3338, 1, 'admin/auth/permissions/34/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:27:56', '2020-04-14 09:27:56');
INSERT INTO `admin_operation_log` VALUES (3339, 1, 'admin/auth/permissions/34', 'PUT', '127.0.0.1', '{\"slug\":\"fraction.importBtn\",\"name\":\"\\u5206\\u6570\\u5bfc\\u5165\\u6309\\u94ae\",\"http_method\":[\"HEAD\",null],\"http_path\":\"\\/fractions\",\"created_at\":\"2020-04-14 09:27:46\",\"updated_at\":\"2020-04-14 09:27:46\",\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions?&page=2\"}', '2020-04-14 09:28:01', '2020-04-14 09:28:01');
INSERT INTO `admin_operation_log` VALUES (3340, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-04-14 09:28:01', '2020-04-14 09:28:01');
INSERT INTO `admin_operation_log` VALUES (3341, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:28:03', '2020-04-14 09:28:03');
INSERT INTO `admin_operation_log` VALUES (3342, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"fraction.deleteBtn\",\"name\":\"\\u5206\\u6570\\u5220\\u9664\\u6309\\u94ae\",\"http_method\":[\"HEAD\",null],\"http_path\":\"\\/fractions\",\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions?&page=2\"}', '2020-04-14 09:28:30', '2020-04-14 09:28:30');
INSERT INTO `admin_operation_log` VALUES (3343, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-04-14 09:28:31', '2020-04-14 09:28:31');
INSERT INTO `admin_operation_log` VALUES (3344, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:28:34', '2020-04-14 09:28:34');
INSERT INTO `admin_operation_log` VALUES (3345, 1, 'admin/fractions/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:28:37', '2020-04-14 09:28:37');
INSERT INTO `admin_operation_log` VALUES (3346, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:28:47', '2020-04-14 09:28:47');
INSERT INTO `admin_operation_log` VALUES (3347, 1, 'admin/fractions/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:29:03', '2020-04-14 09:29:03');
INSERT INTO `admin_operation_log` VALUES (3348, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:29:05', '2020-04-14 09:29:05');
INSERT INTO `admin_operation_log` VALUES (3349, 1, 'admin/fractions/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:29:07', '2020-04-14 09:29:07');
INSERT INTO `admin_operation_log` VALUES (3350, 1, 'admin/fractions/2', 'GET', '127.0.0.1', '[]', '2020-04-14 09:29:41', '2020-04-14 09:29:41');
INSERT INTO `admin_operation_log` VALUES (3351, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:29:57', '2020-04-14 09:29:57');
INSERT INTO `admin_operation_log` VALUES (3352, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"fraction.createBtn\",\"name\":\"\\u5206\\u6570\\u65b0\\u589e\\u6309\\u94ae\",\"http_method\":[\"HEAD\",null],\"http_path\":\"\\/fractions\",\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions?&page=2\"}', '2020-04-14 09:30:20', '2020-04-14 09:30:20');
INSERT INTO `admin_operation_log` VALUES (3353, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-04-14 09:30:20', '2020-04-14 09:30:20');
INSERT INTO `admin_operation_log` VALUES (3354, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:30:26', '2020-04-14 09:30:26');
INSERT INTO `admin_operation_log` VALUES (3355, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"fraction.editBtn\",\"name\":\"\\u5206\\u6570\\u4fee\\u6539\\u6309\\u94ae\",\"http_method\":[\"HEAD\",null],\"http_path\":\"\\/fractions\",\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions?&page=2\"}', '2020-04-14 09:30:46', '2020-04-14 09:30:46');
INSERT INTO `admin_operation_log` VALUES (3356, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-04-14 09:30:46', '2020-04-14 09:30:46');
INSERT INTO `admin_operation_log` VALUES (3357, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:30:53', '2020-04-14 09:30:53');
INSERT INTO `admin_operation_log` VALUES (3358, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"fraction.viewBtn\",\"name\":\"\\u5206\\u6570\\u663e\\u793a\\u6309\\u94ae\",\"http_method\":[\"HEAD\",null],\"http_path\":\"\\/fractions\",\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions?&page=2\"}', '2020-04-14 09:31:14', '2020-04-14 09:31:14');
INSERT INTO `admin_operation_log` VALUES (3359, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-04-14 09:31:14', '2020-04-14 09:31:14');
INSERT INTO `admin_operation_log` VALUES (3360, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:32:33', '2020-04-14 09:32:33');
INSERT INTO `admin_operation_log` VALUES (3361, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:32:38', '2020-04-14 09:32:38');
INSERT INTO `admin_operation_log` VALUES (3362, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:32:41', '2020-04-14 09:32:41');
INSERT INTO `admin_operation_log` VALUES (3363, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:32:45', '2020-04-14 09:32:45');
INSERT INTO `admin_operation_log` VALUES (3364, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:32:48', '2020-04-14 09:32:48');
INSERT INTO `admin_operation_log` VALUES (3365, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 09:32:50', '2020-04-14 09:32:50');
INSERT INTO `admin_operation_log` VALUES (3366, 3, 'admin/fractions', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"order\",\"type\":\"asc\"}}', '2020-04-14 09:34:22', '2020-04-14 09:34:22');
INSERT INTO `admin_operation_log` VALUES (3367, 3, 'admin/fractions', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"order\",\"type\":\"asc\"}}', '2020-04-14 11:26:01', '2020-04-14 11:26:01');
INSERT INTO `admin_operation_log` VALUES (3368, 3, 'admin/fractions', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"order\",\"type\":\"asc\"}}', '2020-04-14 11:32:28', '2020-04-14 11:32:28');
INSERT INTO `admin_operation_log` VALUES (3369, 3, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 11:32:31', '2020-04-14 11:32:31');
INSERT INTO `admin_operation_log` VALUES (3370, 3, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 11:32:36', '2020-04-14 11:32:36');
INSERT INTO `admin_operation_log` VALUES (3371, 1, 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 11:32:42', '2020-04-14 11:32:42');
INSERT INTO `admin_operation_log` VALUES (3372, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 11:33:00', '2020-04-14 11:33:00');
INSERT INTO `admin_operation_log` VALUES (3373, 3, 'admin/fractions', 'GET', '127.0.0.1', '[]', '2020-04-14 11:33:02', '2020-04-14 11:33:02');
INSERT INTO `admin_operation_log` VALUES (3374, 3, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 11:33:09', '2020-04-14 11:33:09');
INSERT INTO `admin_operation_log` VALUES (3375, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 11:33:15', '2020-04-14 11:33:15');
INSERT INTO `admin_operation_log` VALUES (3376, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 11:33:22', '2020-04-14 11:33:22');
INSERT INTO `admin_operation_log` VALUES (3377, 1, 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 11:33:24', '2020-04-14 11:33:24');
INSERT INTO `admin_operation_log` VALUES (3378, 1, 'admin/auth/roles/3', 'PUT', '127.0.0.1', '{\"slug\":\"student\",\"name\":\"\\u5b66\\u751f\",\"permissions\":[\"2\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"19\",\"21\",\"24\",\"27\",\"29\",\"32\",\"33\",null],\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-04-14 11:33:27', '2020-04-14 11:33:27');
INSERT INTO `admin_operation_log` VALUES (3379, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-14 11:33:27', '2020-04-14 11:33:27');
INSERT INTO `admin_operation_log` VALUES (3380, 3, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-14 11:33:29', '2020-04-14 11:33:29');
INSERT INTO `admin_operation_log` VALUES (3381, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 11:33:35', '2020-04-14 11:33:35');
INSERT INTO `admin_operation_log` VALUES (3382, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 11:33:40', '2020-04-14 11:33:40');
INSERT INTO `admin_operation_log` VALUES (3383, 1, 'admin/auth/permissions/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 11:33:43', '2020-04-14 11:33:43');
INSERT INTO `admin_operation_log` VALUES (3384, 1, 'admin/auth/permissions/2', 'PUT', '127.0.0.1', '{\"slug\":\"dashboard\",\"name\":\"\\u9996\\u9875\",\"http_method\":[\"GET\",null],\"http_path\":\"\\/\",\"created_at\":null,\"updated_at\":null,\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-14 11:33:52', '2020-04-14 11:33:52');
INSERT INTO `admin_operation_log` VALUES (3385, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-14 11:33:52', '2020-04-14 11:33:52');
INSERT INTO `admin_operation_log` VALUES (3386, 1, 'admin/auth/permissions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 11:34:06', '2020-04-14 11:34:06');
INSERT INTO `admin_operation_log` VALUES (3387, 1, 'admin/auth/permissions/1', 'PUT', '127.0.0.1', '{\"slug\":\"*\",\"name\":\"\\u6240\\u6709\\u6743\\u9650\\u2014\\u2014\\u8d85\\u7ba1\",\"http_method\":[null],\"http_path\":\"*\",\"created_at\":null,\"updated_at\":null,\"_token\":\"CudhkNslHGFh13fmahOrGszNjEZPnqxcOymdiBt9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-14 11:34:24', '2020-04-14 11:34:24');
INSERT INTO `admin_operation_log` VALUES (3388, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-14 11:34:24', '2020-04-14 11:34:24');
INSERT INTO `admin_operation_log` VALUES (3389, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 11:34:27', '2020-04-14 11:34:27');
INSERT INTO `admin_operation_log` VALUES (3390, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 11:34:29', '2020-04-14 11:34:29');
INSERT INTO `admin_operation_log` VALUES (3391, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 11:34:33', '2020-04-14 11:34:33');
INSERT INTO `admin_operation_log` VALUES (3392, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 11:34:34', '2020-04-14 11:34:34');
INSERT INTO `admin_operation_log` VALUES (3393, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 11:34:39', '2020-04-14 11:34:39');
INSERT INTO `admin_operation_log` VALUES (3394, 3, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-14 12:29:12', '2020-04-14 12:29:12');
INSERT INTO `admin_operation_log` VALUES (3395, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 13:41:23', '2020-04-14 13:41:23');
INSERT INTO `admin_operation_log` VALUES (3396, 1, 'admin/auth/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 13:41:36', '2020-04-14 13:41:36');
INSERT INTO `admin_operation_log` VALUES (3397, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 13:41:40', '2020-04-14 13:41:40');
INSERT INTO `admin_operation_log` VALUES (3398, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-14 13:56:35', '2020-04-14 13:56:35');
INSERT INTO `admin_operation_log` VALUES (3399, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"T9hhMLy6CU6duYhjRQ91XANh898AV1Lchr4g9Rsm\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-14 13:57:02', '2020-04-14 13:57:02');
INSERT INTO `admin_operation_log` VALUES (3400, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 13:57:03', '2020-04-14 13:57:03');
INSERT INTO `admin_operation_log` VALUES (3401, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-14 13:57:08', '2020-04-14 13:57:08');
INSERT INTO `admin_operation_log` VALUES (3402, 1, 'admin/auth/users/16/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 13:57:29', '2020-04-14 13:57:29');
INSERT INTO `admin_operation_log` VALUES (3403, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 13:57:32', '2020-04-14 13:57:32');
INSERT INTO `admin_operation_log` VALUES (3404, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 13:57:35', '2020-04-14 13:57:35');
INSERT INTO `admin_operation_log` VALUES (3405, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 13:57:38', '2020-04-14 13:57:38');
INSERT INTO `admin_operation_log` VALUES (3406, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 13:57:41', '2020-04-14 13:57:41');
INSERT INTO `admin_operation_log` VALUES (3407, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 13:57:44', '2020-04-14 13:57:44');
INSERT INTO `admin_operation_log` VALUES (3408, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-14 13:58:04', '2020-04-14 13:58:04');
INSERT INTO `admin_operation_log` VALUES (3409, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"16\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"T9hhMLy6CU6duYhjRQ91XANh898AV1Lchr4g9Rsm\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-14 13:58:14', '2020-04-14 13:58:14');
INSERT INTO `admin_operation_log` VALUES (3410, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 13:58:14', '2020-04-14 13:58:14');
INSERT INTO `admin_operation_log` VALUES (3411, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"T9hhMLy6CU6duYhjRQ91XANh898AV1Lchr4g9Rsm\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-14 13:58:22', '2020-04-14 13:58:22');
INSERT INTO `admin_operation_log` VALUES (3412, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-14 13:59:56', '2020-04-14 13:59:56');
INSERT INTO `admin_operation_log` VALUES (3413, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"T9hhMLy6CU6duYhjRQ91XANh898AV1Lchr4g9Rsm\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-14 14:00:03', '2020-04-14 14:00:03');
INSERT INTO `admin_operation_log` VALUES (3414, 1, 'admin/auth/users/17', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"T9hhMLy6CU6duYhjRQ91XANh898AV1Lchr4g9Rsm\"}', '2020-04-14 14:01:33', '2020-04-14 14:01:33');
INSERT INTO `admin_operation_log` VALUES (3415, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:01:33', '2020-04-14 14:01:33');
INSERT INTO `admin_operation_log` VALUES (3416, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:01:43', '2020-04-14 14:01:43');
INSERT INTO `admin_operation_log` VALUES (3417, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"T9hhMLy6CU6duYhjRQ91XANh898AV1Lchr4g9Rsm\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-14 14:01:50', '2020-04-14 14:01:50');
INSERT INTO `admin_operation_log` VALUES (3418, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:01:51', '2020-04-14 14:01:51');
INSERT INTO `admin_operation_log` VALUES (3419, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:05:52', '2020-04-14 14:05:52');
INSERT INTO `admin_operation_log` VALUES (3420, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u524d\\u5929\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"T9hhMLy6CU6duYhjRQ91XANh898AV1Lchr4g9Rsm\"}', '2020-04-14 14:06:22', '2020-04-14 14:06:22');
INSERT INTO `admin_operation_log` VALUES (3421, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-14 14:06:22', '2020-04-14 14:06:22');
INSERT INTO `admin_operation_log` VALUES (3422, 1, 'admin/auth/menu/26/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:06:26', '2020-04-14 14:06:26');
INSERT INTO `admin_operation_log` VALUES (3423, 1, 'admin/auth/menu/26', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u524d\\u53f0\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"T9hhMLy6CU6duYhjRQ91XANh898AV1Lchr4g9Rsm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-14 14:06:34', '2020-04-14 14:06:34');
INSERT INTO `admin_operation_log` VALUES (3424, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-14 14:06:34', '2020-04-14 14:06:34');
INSERT INTO `admin_operation_log` VALUES (3425, 1, 'admin/auth/menu/26/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:06:42', '2020-04-14 14:06:42');
INSERT INTO `admin_operation_log` VALUES (3426, 1, 'admin/auth/menu/26', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u524d\\u53f0\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"copy\",\"uri\":\"\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"T9hhMLy6CU6duYhjRQ91XANh898AV1Lchr4g9Rsm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-14 14:06:55', '2020-04-14 14:06:55');
INSERT INTO `admin_operation_log` VALUES (3427, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-14 14:06:55', '2020-04-14 14:06:55');
INSERT INTO `admin_operation_log` VALUES (3428, 1, 'admin/auth/menu/26/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:07:00', '2020-04-14 14:07:00');
INSERT INTO `admin_operation_log` VALUES (3429, 1, 'admin/auth/menu/26', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u524d\\u53f0\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-hand-peace-o\",\"uri\":\"\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"T9hhMLy6CU6duYhjRQ91XANh898AV1Lchr4g9Rsm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-14 14:08:00', '2020-04-14 14:08:00');
INSERT INTO `admin_operation_log` VALUES (3430, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-14 14:08:00', '2020-04-14 14:08:00');
INSERT INTO `admin_operation_log` VALUES (3431, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"T9hhMLy6CU6duYhjRQ91XANh898AV1Lchr4g9Rsm\",\"_order\":\"[{\\\"id\\\":22},{\\\"id\\\":13,\\\"children\\\":[{\\\"id\\\":8},{\\\"id\\\":10}]},{\\\"id\\\":14,\\\"children\\\":[{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":15},{\\\"id\\\":18},{\\\"id\\\":19}]},{\\\"id\\\":16,\\\"children\\\":[{\\\"id\\\":17},{\\\"id\\\":20}]},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":26},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-04-14 14:08:06', '2020-04-14 14:08:06');
INSERT INTO `admin_operation_log` VALUES (3432, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:08:07', '2020-04-14 14:08:07');
INSERT INTO `admin_operation_log` VALUES (3433, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-14 14:08:09', '2020-04-14 14:08:09');
INSERT INTO `admin_operation_log` VALUES (3434, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:08:15', '2020-04-14 14:08:15');
INSERT INTO `admin_operation_log` VALUES (3435, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:11:42', '2020-04-14 14:11:42');
INSERT INTO `admin_operation_log` VALUES (3436, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:11:50', '2020-04-14 14:11:50');
INSERT INTO `admin_operation_log` VALUES (3437, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:12:37', '2020-04-14 14:12:37');
INSERT INTO `admin_operation_log` VALUES (3438, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:13:26', '2020-04-14 14:13:26');
INSERT INTO `admin_operation_log` VALUES (3439, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:13:29', '2020-04-14 14:13:29');
INSERT INTO `admin_operation_log` VALUES (3440, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:13:45', '2020-04-14 14:13:45');
INSERT INTO `admin_operation_log` VALUES (3441, 1, 'admin/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:13:46', '2020-04-14 14:13:46');
INSERT INTO `admin_operation_log` VALUES (3442, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:14:07', '2020-04-14 14:14:07');
INSERT INTO `admin_operation_log` VALUES (3443, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-14 14:14:31', '2020-04-14 14:14:31');
INSERT INTO `admin_operation_log` VALUES (3444, 1, 'admin/users/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\\u540c\\u5b66\",\"email\":\"20164841\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"T9hhMLy6CU6duYhjRQ91XANh898AV1Lchr4g9Rsm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-14 14:14:40', '2020-04-14 14:14:40');
INSERT INTO `admin_operation_log` VALUES (3445, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:14:40', '2020-04-14 14:14:40');
INSERT INTO `admin_operation_log` VALUES (3446, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:17:24', '2020-04-14 14:17:24');
INSERT INTO `admin_operation_log` VALUES (3447, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:17:27', '2020-04-14 14:17:27');
INSERT INTO `admin_operation_log` VALUES (3448, 1, 'admin/users/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\\u540c\\u5b66\",\"email\":\"20164841\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"T9hhMLy6CU6duYhjRQ91XANh898AV1Lchr4g9Rsm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-14 14:17:32', '2020-04-14 14:17:32');
INSERT INTO `admin_operation_log` VALUES (3449, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:17:32', '2020-04-14 14:17:32');
INSERT INTO `admin_operation_log` VALUES (3450, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:18:43', '2020-04-14 14:18:43');
INSERT INTO `admin_operation_log` VALUES (3451, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-14 14:18:45', '2020-04-14 14:18:45');
INSERT INTO `admin_operation_log` VALUES (3452, 1, 'admin/users/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\\u540c\\u5b66\",\"email\":\"20164841\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"T9hhMLy6CU6duYhjRQ91XANh898AV1Lchr4g9Rsm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-14 14:18:55', '2020-04-14 14:18:55');
INSERT INTO `admin_operation_log` VALUES (3453, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:18:55', '2020-04-14 14:18:55');
INSERT INTO `admin_operation_log` VALUES (3454, 1, 'admin/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:19:11', '2020-04-14 14:19:11');
INSERT INTO `admin_operation_log` VALUES (3455, 1, 'admin/users/2', 'PUT', '127.0.0.1', '{\"name\":\"\\u8d75\\u94c1\\u67f1\",\"email\":\"20164842\",\"password\":\"123456\",\"remember_token\":\"YkkI9zvB4t6E9SRi201vDEtaeLtHtKBd51hhszdmHjC2t1C6ptghboR4IY7l\",\"_token\":\"T9hhMLy6CU6duYhjRQ91XANh898AV1Lchr4g9Rsm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-14 14:19:19', '2020-04-14 14:19:19');
INSERT INTO `admin_operation_log` VALUES (3456, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:19:19', '2020-04-14 14:19:19');
INSERT INTO `admin_operation_log` VALUES (3457, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:20:44', '2020-04-14 14:20:44');
INSERT INTO `admin_operation_log` VALUES (3458, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:39:29', '2020-04-14 14:39:29');
INSERT INTO `admin_operation_log` VALUES (3459, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:39:32', '2020-04-14 14:39:32');
INSERT INTO `admin_operation_log` VALUES (3460, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:39:35', '2020-04-14 14:39:35');
INSERT INTO `admin_operation_log` VALUES (3461, 1, 'admin/users/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\\u540c\\u5b66\",\"email\":\"xyf15620168450@163.com\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"T9hhMLy6CU6duYhjRQ91XANh898AV1Lchr4g9Rsm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-14 14:39:42', '2020-04-14 14:39:42');
INSERT INTO `admin_operation_log` VALUES (3462, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:39:42', '2020-04-14 14:39:42');
INSERT INTO `admin_operation_log` VALUES (3463, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:41:03', '2020-04-14 14:41:03');
INSERT INTO `admin_operation_log` VALUES (3464, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-04-14 14:41:40', '2020-04-14 14:41:40');
INSERT INTO `admin_operation_log` VALUES (3465, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:41:40', '2020-04-14 14:41:40');
INSERT INTO `admin_operation_log` VALUES (3466, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:41:41', '2020-04-14 14:41:41');
INSERT INTO `admin_operation_log` VALUES (3467, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"T9hhMLy6CU6duYhjRQ91XANh898AV1Lchr4g9Rsm\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-14 14:42:19', '2020-04-14 14:42:19');
INSERT INTO `admin_operation_log` VALUES (3468, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:42:20', '2020-04-14 14:42:20');
INSERT INTO `admin_operation_log` VALUES (3469, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:42:24', '2020-04-14 14:42:24');
INSERT INTO `admin_operation_log` VALUES (3470, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:43:45', '2020-04-14 14:43:45');
INSERT INTO `admin_operation_log` VALUES (3471, 1, 'admin/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:43:51', '2020-04-14 14:43:51');
INSERT INTO `admin_operation_log` VALUES (3472, 1, 'admin/users/3', 'PUT', '127.0.0.1', '{\"name\":\"\\u738b\\u4e8c\\u599e\",\"email\":\"20164843\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"Xd5jsBHZ2JaQRq1BkRosfpr1EwL8Dyl4XHTUj1Jx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-14 14:43:57', '2020-04-14 14:43:57');
INSERT INTO `admin_operation_log` VALUES (3473, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:43:57', '2020-04-14 14:43:57');
INSERT INTO `admin_operation_log` VALUES (3474, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:45:46', '2020-04-14 14:45:46');
INSERT INTO `admin_operation_log` VALUES (3475, 1, 'admin/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:45:49', '2020-04-14 14:45:49');
INSERT INTO `admin_operation_log` VALUES (3476, 1, 'admin/users/3', 'PUT', '127.0.0.1', '{\"name\":\"\\u738b\\u4e8c\\u599e\",\"email\":\"20164843\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"Xd5jsBHZ2JaQRq1BkRosfpr1EwL8Dyl4XHTUj1Jx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-14 14:45:55', '2020-04-14 14:45:55');
INSERT INTO `admin_operation_log` VALUES (3477, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:45:55', '2020-04-14 14:45:55');
INSERT INTO `admin_operation_log` VALUES (3478, 1, 'admin/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:48:52', '2020-04-14 14:48:52');
INSERT INTO `admin_operation_log` VALUES (3479, 1, 'admin/users/3', 'PUT', '127.0.0.1', '{\"name\":\"\\u738b\\u4e8c\\u599e\",\"email\":\"20164843\",\"password\":\"111111\",\"remember_token\":null,\"_token\":\"d6ZoiR9pG6L41eJ1UGOuHa3CCb8cmAsPSxPPhtJc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-14 14:49:02', '2020-04-14 14:49:02');
INSERT INTO `admin_operation_log` VALUES (3480, 1, 'admin/users/3/edit', 'GET', '127.0.0.1', '[]', '2020-04-14 14:49:03', '2020-04-14 14:49:03');
INSERT INTO `admin_operation_log` VALUES (3481, 1, 'admin/users/3/edit', 'GET', '127.0.0.1', '[]', '2020-04-14 14:50:49', '2020-04-14 14:50:49');
INSERT INTO `admin_operation_log` VALUES (3482, 1, 'admin/users/3', 'PUT', '127.0.0.1', '{\"name\":\"\\u738b\\u4e8c\\u599e\",\"email\":\"20164843\",\"password\":\"111111\",\"remember_token\":null,\"_token\":\"d6ZoiR9pG6L41eJ1UGOuHa3CCb8cmAsPSxPPhtJc\",\"_method\":\"PUT\"}', '2020-04-14 14:50:54', '2020-04-14 14:50:54');
INSERT INTO `admin_operation_log` VALUES (3483, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:50:54', '2020-04-14 14:50:54');
INSERT INTO `admin_operation_log` VALUES (3484, 1, 'admin/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:51:14', '2020-04-14 14:51:14');
INSERT INTO `admin_operation_log` VALUES (3485, 1, 'admin/users/3', 'PUT', '127.0.0.1', '{\"name\":\"\\u738b\\u4e8c\\u599e\",\"email\":\"20164843\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"d6ZoiR9pG6L41eJ1UGOuHa3CCb8cmAsPSxPPhtJc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-14 14:51:19', '2020-04-14 14:51:19');
INSERT INTO `admin_operation_log` VALUES (3486, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:51:19', '2020-04-14 14:51:19');
INSERT INTO `admin_operation_log` VALUES (3487, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:52:21', '2020-04-14 14:52:21');
INSERT INTO `admin_operation_log` VALUES (3488, 1, 'admin/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:52:25', '2020-04-14 14:52:25');
INSERT INTO `admin_operation_log` VALUES (3489, 1, 'admin/users/3', 'PUT', '127.0.0.1', '{\"name\":\"\\u738b\\u4e8c\\u599e\",\"email\":\"20164843\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"d6ZoiR9pG6L41eJ1UGOuHa3CCb8cmAsPSxPPhtJc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-14 14:52:29', '2020-04-14 14:52:29');
INSERT INTO `admin_operation_log` VALUES (3490, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:52:29', '2020-04-14 14:52:29');
INSERT INTO `admin_operation_log` VALUES (3491, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:53:02', '2020-04-14 14:53:02');
INSERT INTO `admin_operation_log` VALUES (3492, 1, 'admin/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:53:04', '2020-04-14 14:53:04');
INSERT INTO `admin_operation_log` VALUES (3493, 1, 'admin/users/3', 'PUT', '127.0.0.1', '{\"name\":\"\\u738b\\u4e8c\\u599e\",\"email\":\"20164843\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"d6ZoiR9pG6L41eJ1UGOuHa3CCb8cmAsPSxPPhtJc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-14 14:53:09', '2020-04-14 14:53:09');
INSERT INTO `admin_operation_log` VALUES (3494, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:53:09', '2020-04-14 14:53:09');
INSERT INTO `admin_operation_log` VALUES (3495, 1, 'admin/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:53:26', '2020-04-14 14:53:26');
INSERT INTO `admin_operation_log` VALUES (3496, 1, 'admin/users/3/edit', 'GET', '127.0.0.1', '[]', '2020-04-14 14:53:44', '2020-04-14 14:53:44');
INSERT INTO `admin_operation_log` VALUES (3497, 1, 'admin/users/3', 'PUT', '127.0.0.1', '{\"name\":\"\\u738b\\u4e8c\\u599e\",\"email\":\"20164843\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"d6ZoiR9pG6L41eJ1UGOuHa3CCb8cmAsPSxPPhtJc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-14 14:53:50', '2020-04-14 14:53:50');
INSERT INTO `admin_operation_log` VALUES (3498, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:53:50', '2020-04-14 14:53:50');
INSERT INTO `admin_operation_log` VALUES (3499, 1, 'admin/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:54:03', '2020-04-14 14:54:03');
INSERT INTO `admin_operation_log` VALUES (3500, 1, 'admin/users/3/edit', 'GET', '127.0.0.1', '[]', '2020-04-14 14:54:20', '2020-04-14 14:54:20');
INSERT INTO `admin_operation_log` VALUES (3501, 1, 'admin/users/3', 'PUT', '127.0.0.1', '{\"name\":\"\\u738b\\u4e8c\\u599e\",\"email\":\"20164843\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"d6ZoiR9pG6L41eJ1UGOuHa3CCb8cmAsPSxPPhtJc\",\"_method\":\"PUT\"}', '2020-04-14 14:54:26', '2020-04-14 14:54:26');
INSERT INTO `admin_operation_log` VALUES (3502, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:54:26', '2020-04-14 14:54:26');
INSERT INTO `admin_operation_log` VALUES (3503, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:55:16', '2020-04-14 14:55:16');
INSERT INTO `admin_operation_log` VALUES (3504, 1, 'admin/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:55:18', '2020-04-14 14:55:18');
INSERT INTO `admin_operation_log` VALUES (3505, 1, 'admin/users/3', 'PUT', '127.0.0.1', '{\"name\":\"\\u738b\\u4e8c\\u599e\",\"email\":\"20164843\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"d6ZoiR9pG6L41eJ1UGOuHa3CCb8cmAsPSxPPhtJc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-14 14:55:24', '2020-04-14 14:55:24');
INSERT INTO `admin_operation_log` VALUES (3506, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:55:24', '2020-04-14 14:55:24');
INSERT INTO `admin_operation_log` VALUES (3507, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:56:50', '2020-04-14 14:56:50');
INSERT INTO `admin_operation_log` VALUES (3508, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:56:52', '2020-04-14 14:56:52');
INSERT INTO `admin_operation_log` VALUES (3509, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:56:54', '2020-04-14 14:56:54');
INSERT INTO `admin_operation_log` VALUES (3510, 1, 'admin/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:56:56', '2020-04-14 14:56:56');
INSERT INTO `admin_operation_log` VALUES (3511, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:56:58', '2020-04-14 14:56:58');
INSERT INTO `admin_operation_log` VALUES (3512, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:57:06', '2020-04-14 14:57:06');
INSERT INTO `admin_operation_log` VALUES (3513, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:57:08', '2020-04-14 14:57:08');
INSERT INTO `admin_operation_log` VALUES (3514, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:57:10', '2020-04-14 14:57:10');
INSERT INTO `admin_operation_log` VALUES (3515, 1, 'admin/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:57:11', '2020-04-14 14:57:11');
INSERT INTO `admin_operation_log` VALUES (3516, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:57:14', '2020-04-14 14:57:14');
INSERT INTO `admin_operation_log` VALUES (3517, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:57:25', '2020-04-14 14:57:25');
INSERT INTO `admin_operation_log` VALUES (3518, 1, 'admin/users/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:57:28', '2020-04-14 14:57:28');
INSERT INTO `admin_operation_log` VALUES (3519, 1, 'admin/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:57:33', '2020-04-14 14:57:33');
INSERT INTO `admin_operation_log` VALUES (3520, 1, 'admin/users/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:57:34', '2020-04-14 14:57:34');
INSERT INTO `admin_operation_log` VALUES (3521, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:57:35', '2020-04-14 14:57:35');
INSERT INTO `admin_operation_log` VALUES (3522, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:57:37', '2020-04-14 14:57:37');
INSERT INTO `admin_operation_log` VALUES (3523, 1, 'admin/users/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\\u540c\\u5b66\",\"email\":\"20164841\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"d6ZoiR9pG6L41eJ1UGOuHa3CCb8cmAsPSxPPhtJc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-14 14:57:42', '2020-04-14 14:57:42');
INSERT INTO `admin_operation_log` VALUES (3524, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:57:42', '2020-04-14 14:57:42');
INSERT INTO `admin_operation_log` VALUES (3525, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:57:44', '2020-04-14 14:57:44');
INSERT INTO `admin_operation_log` VALUES (3526, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:57:45', '2020-04-14 14:57:45');
INSERT INTO `admin_operation_log` VALUES (3527, 1, 'admin/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 14:57:47', '2020-04-14 14:57:47');
INSERT INTO `admin_operation_log` VALUES (3528, 1, 'admin/users/2', 'PUT', '127.0.0.1', '{\"name\":\"\\u8d75\\u94c1\\u67f1\",\"email\":\"20164842\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"d6ZoiR9pG6L41eJ1UGOuHa3CCb8cmAsPSxPPhtJc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-14 14:57:53', '2020-04-14 14:57:53');
INSERT INTO `admin_operation_log` VALUES (3529, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:57:54', '2020-04-14 14:57:54');
INSERT INTO `admin_operation_log` VALUES (3530, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 14:59:46', '2020-04-14 14:59:46');
INSERT INTO `admin_operation_log` VALUES (3531, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:00:09', '2020-04-14 15:00:09');
INSERT INTO `admin_operation_log` VALUES (3532, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:00:17', '2020-04-14 15:00:17');
INSERT INTO `admin_operation_log` VALUES (3533, 1, 'admin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",\"2\",\"3\",null],\"permission\":null,\"_token\":\"d6ZoiR9pG6L41eJ1UGOuHa3CCb8cmAsPSxPPhtJc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-14 15:00:26', '2020-04-14 15:00:26');
INSERT INTO `admin_operation_log` VALUES (3534, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-14 15:00:26', '2020-04-14 15:00:26');
INSERT INTO `admin_operation_log` VALUES (3535, 1, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:00:29', '2020-04-14 15:00:29');
INSERT INTO `admin_operation_log` VALUES (3536, 1, 'admin/auth/menu/3', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"d6ZoiR9pG6L41eJ1UGOuHa3CCb8cmAsPSxPPhtJc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-14 15:00:35', '2020-04-14 15:00:35');
INSERT INTO `admin_operation_log` VALUES (3537, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-14 15:00:36', '2020-04-14 15:00:36');
INSERT INTO `admin_operation_log` VALUES (3538, 1, 'admin/auth/menu/26/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:00:38', '2020-04-14 15:00:38');
INSERT INTO `admin_operation_log` VALUES (3539, 1, 'admin/auth/menu/26', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u524d\\u53f0\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-hand-peace-o\",\"uri\":\"\\/users\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"d6ZoiR9pG6L41eJ1UGOuHa3CCb8cmAsPSxPPhtJc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-14 15:00:44', '2020-04-14 15:00:44');
INSERT INTO `admin_operation_log` VALUES (3540, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-14 15:00:44', '2020-04-14 15:00:44');
INSERT INTO `admin_operation_log` VALUES (3541, 1, 'admin/auth/menu/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:00:46', '2020-04-14 15:00:46');
INSERT INTO `admin_operation_log` VALUES (3542, 1, 'admin/auth/menu/4', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\\u7ba1\\u7406\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"d6ZoiR9pG6L41eJ1UGOuHa3CCb8cmAsPSxPPhtJc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-14 15:00:51', '2020-04-14 15:00:51');
INSERT INTO `admin_operation_log` VALUES (3543, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-14 15:00:51', '2020-04-14 15:00:51');
INSERT INTO `admin_operation_log` VALUES (3544, 1, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:00:54', '2020-04-14 15:00:54');
INSERT INTO `admin_operation_log` VALUES (3545, 1, 'admin/auth/menu/3', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u540e\\u53f0\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"d6ZoiR9pG6L41eJ1UGOuHa3CCb8cmAsPSxPPhtJc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-14 15:01:01', '2020-04-14 15:01:01');
INSERT INTO `admin_operation_log` VALUES (3546, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-14 15:01:01', '2020-04-14 15:01:01');
INSERT INTO `admin_operation_log` VALUES (3547, 1, 'admin/auth/menu/26/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:01:03', '2020-04-14 15:01:03');
INSERT INTO `admin_operation_log` VALUES (3548, 1, 'admin/auth/menu/26', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-hand-peace-o\",\"uri\":\"\\/users\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"d6ZoiR9pG6L41eJ1UGOuHa3CCb8cmAsPSxPPhtJc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-14 15:01:08', '2020-04-14 15:01:08');
INSERT INTO `admin_operation_log` VALUES (3549, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-14 15:01:08', '2020-04-14 15:01:08');
INSERT INTO `admin_operation_log` VALUES (3550, 1, 'admin/auth/menu/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:01:11', '2020-04-14 15:01:11');
INSERT INTO `admin_operation_log` VALUES (3551, 1, 'admin/auth/menu/4', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\\u7ba1\\u7406\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"d6ZoiR9pG6L41eJ1UGOuHa3CCb8cmAsPSxPPhtJc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-14 15:01:14', '2020-04-14 15:01:14');
INSERT INTO `admin_operation_log` VALUES (3552, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-14 15:01:14', '2020-04-14 15:01:14');
INSERT INTO `admin_operation_log` VALUES (3553, 1, 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:01:17', '2020-04-14 15:01:17');
INSERT INTO `admin_operation_log` VALUES (3554, 1, 'admin/auth/menu/5', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\\u7ba1\\u7406\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"d6ZoiR9pG6L41eJ1UGOuHa3CCb8cmAsPSxPPhtJc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-14 15:01:22', '2020-04-14 15:01:22');
INSERT INTO `admin_operation_log` VALUES (3555, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-14 15:01:22', '2020-04-14 15:01:22');
INSERT INTO `admin_operation_log` VALUES (3556, 1, 'admin/auth/menu/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:01:25', '2020-04-14 15:01:25');
INSERT INTO `admin_operation_log` VALUES (3557, 1, 'admin/auth/menu/6', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"d6ZoiR9pG6L41eJ1UGOuHa3CCb8cmAsPSxPPhtJc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-14 15:01:29', '2020-04-14 15:01:29');
INSERT INTO `admin_operation_log` VALUES (3558, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-14 15:01:29', '2020-04-14 15:01:29');
INSERT INTO `admin_operation_log` VALUES (3559, 1, 'admin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:01:31', '2020-04-14 15:01:31');
INSERT INTO `admin_operation_log` VALUES (3560, 1, 'admin/auth/menu/7', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u64cd\\u4f5c\\u65e5\\u5fd7\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"d6ZoiR9pG6L41eJ1UGOuHa3CCb8cmAsPSxPPhtJc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-14 15:01:34', '2020-04-14 15:01:34');
INSERT INTO `admin_operation_log` VALUES (3561, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-14 15:01:35', '2020-04-14 15:01:35');
INSERT INTO `admin_operation_log` VALUES (3562, 3, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-14 15:01:41', '2020-04-14 15:01:41');
INSERT INTO `admin_operation_log` VALUES (3563, 1, 'admin/auth/menu/26/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:01:48', '2020-04-14 15:01:48');
INSERT INTO `admin_operation_log` VALUES (3564, 1, 'admin/auth/menu/26', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-hand-peace-o\",\"uri\":\"\\/users\",\"roles\":[\"1\",\"2\",\"3\",null],\"permission\":null,\"_token\":\"d6ZoiR9pG6L41eJ1UGOuHa3CCb8cmAsPSxPPhtJc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-14 15:01:51', '2020-04-14 15:01:51');
INSERT INTO `admin_operation_log` VALUES (3565, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-14 15:01:51', '2020-04-14 15:01:51');
INSERT INTO `admin_operation_log` VALUES (3566, 3, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-14 15:01:53', '2020-04-14 15:01:53');
INSERT INTO `admin_operation_log` VALUES (3567, 3, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:01:55', '2020-04-14 15:01:55');
INSERT INTO `admin_operation_log` VALUES (3568, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:02:00', '2020-04-14 15:02:00');
INSERT INTO `admin_operation_log` VALUES (3569, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:02:02', '2020-04-14 15:02:02');
INSERT INTO `admin_operation_log` VALUES (3570, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"user.list\",\"name\":\"\\u524d\\u53f0\\u7528\\u6237\\u5217\\u8868\\u754c\\u9762\",\"http_method\":[null],\"http_path\":\"\\/users\",\"_token\":\"d6ZoiR9pG6L41eJ1UGOuHa3CCb8cmAsPSxPPhtJc\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-04-14 15:02:41', '2020-04-14 15:02:41');
INSERT INTO `admin_operation_log` VALUES (3571, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-14 15:02:41', '2020-04-14 15:02:41');
INSERT INTO `admin_operation_log` VALUES (3572, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:02:45', '2020-04-14 15:02:45');
INSERT INTO `admin_operation_log` VALUES (3573, 1, 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:02:47', '2020-04-14 15:02:47');
INSERT INTO `admin_operation_log` VALUES (3574, 1, 'admin/auth/roles/3', 'PUT', '127.0.0.1', '{\"slug\":\"student\",\"name\":\"\\u5b66\\u751f\",\"permissions\":[\"2\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"19\",\"21\",\"24\",\"27\",\"29\",\"32\",\"33\",\"39\",null],\"_token\":\"d6ZoiR9pG6L41eJ1UGOuHa3CCb8cmAsPSxPPhtJc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-04-14 15:02:51', '2020-04-14 15:02:51');
INSERT INTO `admin_operation_log` VALUES (3575, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-14 15:02:51', '2020-04-14 15:02:51');
INSERT INTO `admin_operation_log` VALUES (3576, 3, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 15:02:53', '2020-04-14 15:02:53');
INSERT INTO `admin_operation_log` VALUES (3577, 3, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 15:03:31', '2020-04-14 15:03:31');
INSERT INTO `admin_operation_log` VALUES (3578, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:04:30', '2020-04-14 15:04:30');
INSERT INTO `admin_operation_log` VALUES (3579, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2020-04-14 15:04:35', '2020-04-14 15:04:35');
INSERT INTO `admin_operation_log` VALUES (3580, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:04:40', '2020-04-14 15:04:40');
INSERT INTO `admin_operation_log` VALUES (3581, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"user.createBtn\",\"name\":\"\\u524d\\u53f0\\u7528\\u6237\\u65b0\\u589e\\u6309\\u94ae\",\"http_method\":[\"HEAD\",null],\"http_path\":\"\\/users\",\"_token\":\"d6ZoiR9pG6L41eJ1UGOuHa3CCb8cmAsPSxPPhtJc\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions?&page=2\"}', '2020-04-14 15:05:11', '2020-04-14 15:05:11');
INSERT INTO `admin_operation_log` VALUES (3582, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-04-14 15:05:11', '2020-04-14 15:05:11');
INSERT INTO `admin_operation_log` VALUES (3583, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:05:12', '2020-04-14 15:05:12');
INSERT INTO `admin_operation_log` VALUES (3584, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"user.viewBtn\",\"name\":\"\\u524d\\u53f0\\u7528\\u6237\\u663e\\u793a\\u6309\\u94ae\",\"http_method\":[\"HEAD\",null],\"http_path\":\"\\/users\",\"_token\":\"d6ZoiR9pG6L41eJ1UGOuHa3CCb8cmAsPSxPPhtJc\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions?&page=2\"}', '2020-04-14 15:05:46', '2020-04-14 15:05:46');
INSERT INTO `admin_operation_log` VALUES (3585, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-04-14 15:05:46', '2020-04-14 15:05:46');
INSERT INTO `admin_operation_log` VALUES (3586, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"page\":\"3\",\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:05:56', '2020-04-14 15:05:56');
INSERT INTO `admin_operation_log` VALUES (3587, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:05:57', '2020-04-14 15:05:57');
INSERT INTO `admin_operation_log` VALUES (3588, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"user.editBtn\",\"name\":\"\\u524d\\u53f0\\u7528\\u6237\\u4fee\\u6539\\u6309\\u94ae\",\"http_method\":[\"HEAD\",null],\"http_path\":\"\\/users\",\"_token\":\"d6ZoiR9pG6L41eJ1UGOuHa3CCb8cmAsPSxPPhtJc\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions?page=3\"}', '2020-04-14 15:06:24', '2020-04-14 15:06:24');
INSERT INTO `admin_operation_log` VALUES (3589, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"page\":\"3\"}', '2020-04-14 15:06:24', '2020-04-14 15:06:24');
INSERT INTO `admin_operation_log` VALUES (3590, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:06:25', '2020-04-14 15:06:25');
INSERT INTO `admin_operation_log` VALUES (3591, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"user.deleteBtn\",\"name\":\"\\u524d\\u53f0\\u7528\\u6237\\u5220\\u9664\\u6309\\u94ae\",\"http_method\":[\"HEAD\",null],\"http_path\":\"\\/users\",\"_token\":\"d6ZoiR9pG6L41eJ1UGOuHa3CCb8cmAsPSxPPhtJc\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions?page=3\"}', '2020-04-14 15:06:51', '2020-04-14 15:06:51');
INSERT INTO `admin_operation_log` VALUES (3592, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"page\":\"3\"}', '2020-04-14 15:06:51', '2020-04-14 15:06:51');
INSERT INTO `admin_operation_log` VALUES (3593, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"page\":\"3\",\"per_page\":\"30\",\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:06:59', '2020-04-14 15:06:59');
INSERT INTO `admin_operation_log` VALUES (3594, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"page\":\"2\",\"per_page\":\"30\",\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:06:59', '2020-04-14 15:06:59');
INSERT INTO `admin_operation_log` VALUES (3595, 3, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 15:07:52', '2020-04-14 15:07:52');
INSERT INTO `admin_operation_log` VALUES (3596, 3, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 15:08:48', '2020-04-14 15:08:48');
INSERT INTO `admin_operation_log` VALUES (3597, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:08:57', '2020-04-14 15:08:57');
INSERT INTO `admin_operation_log` VALUES (3598, 1, 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:08:58', '2020-04-14 15:08:58');
INSERT INTO `admin_operation_log` VALUES (3599, 1, 'admin/auth/roles/3', 'PUT', '127.0.0.1', '{\"slug\":\"student\",\"name\":\"\\u5b66\\u751f\",\"permissions\":[\"2\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"19\",\"21\",\"24\",\"27\",\"29\",\"32\",\"33\",\"39\",\"42\",null],\"_token\":\"d6ZoiR9pG6L41eJ1UGOuHa3CCb8cmAsPSxPPhtJc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-04-14 15:09:11', '2020-04-14 15:09:11');
INSERT INTO `admin_operation_log` VALUES (3600, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-14 15:09:11', '2020-04-14 15:09:11');
INSERT INTO `admin_operation_log` VALUES (3601, 3, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 15:09:15', '2020-04-14 15:09:15');
INSERT INTO `admin_operation_log` VALUES (3602, 3, 'admin/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:09:17', '2020-04-14 15:09:17');
INSERT INTO `admin_operation_log` VALUES (3603, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:09:46', '2020-04-14 15:09:46');
INSERT INTO `admin_operation_log` VALUES (3604, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"30\"}', '2020-04-14 15:09:52', '2020-04-14 15:09:52');
INSERT INTO `admin_operation_log` VALUES (3605, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"30\",\"page\":\"2\"}', '2020-04-14 15:09:54', '2020-04-14 15:09:54');
INSERT INTO `admin_operation_log` VALUES (3606, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:09:59', '2020-04-14 15:09:59');
INSERT INTO `admin_operation_log` VALUES (3607, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"user.edit\",\"name\":\"\\u524d\\u53f0\\u7528\\u6237\\u4fee\\u6539\\u754c\\u9762\",\"http_method\":[null],\"http_path\":\"\\/users\",\"_token\":\"d6ZoiR9pG6L41eJ1UGOuHa3CCb8cmAsPSxPPhtJc\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions?&per_page=30&page=2\"}', '2020-04-14 15:10:26', '2020-04-14 15:10:26');
INSERT INTO `admin_operation_log` VALUES (3608, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"per_page\":\"30\",\"page\":\"2\"}', '2020-04-14 15:10:26', '2020-04-14 15:10:26');
INSERT INTO `admin_operation_log` VALUES (3609, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:10:34', '2020-04-14 15:10:34');
INSERT INTO `admin_operation_log` VALUES (3610, 1, 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:10:37', '2020-04-14 15:10:37');
INSERT INTO `admin_operation_log` VALUES (3611, 1, 'admin/auth/roles/3', 'PUT', '127.0.0.1', '{\"slug\":\"student\",\"name\":\"\\u5b66\\u751f\",\"permissions\":[\"2\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"19\",\"21\",\"24\",\"27\",\"29\",\"32\",\"33\",\"39\",\"42\",\"44\",null],\"_token\":\"d6ZoiR9pG6L41eJ1UGOuHa3CCb8cmAsPSxPPhtJc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-04-14 15:10:40', '2020-04-14 15:10:40');
INSERT INTO `admin_operation_log` VALUES (3612, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-14 15:10:41', '2020-04-14 15:10:41');
INSERT INTO `admin_operation_log` VALUES (3613, 3, 'admin/users/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-14 15:10:42', '2020-04-14 15:10:42');
INSERT INTO `admin_operation_log` VALUES (3614, 3, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:10:46', '2020-04-14 15:10:46');
INSERT INTO `admin_operation_log` VALUES (3615, 3, 'admin/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:10:48', '2020-04-14 15:10:48');
INSERT INTO `admin_operation_log` VALUES (3616, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:10:57', '2020-04-14 15:10:57');
INSERT INTO `admin_operation_log` VALUES (3617, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2020-04-14 15:10:59', '2020-04-14 15:10:59');
INSERT INTO `admin_operation_log` VALUES (3618, 1, 'admin/auth/permissions/44/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:11:02', '2020-04-14 15:11:02');
INSERT INTO `admin_operation_log` VALUES (3619, 1, 'admin/auth/permissions/44', 'PUT', '127.0.0.1', '{\"slug\":\"user.edit\",\"name\":\"\\u524d\\u53f0\\u7528\\u6237\\u4fee\\u6539\\u754c\\u9762\",\"http_method\":[null],\"http_path\":\"\\/users\\/*\\/edit\",\"created_at\":\"2020-04-14 15:10:26\",\"updated_at\":\"2020-04-14 15:10:26\",\"_token\":\"d6ZoiR9pG6L41eJ1UGOuHa3CCb8cmAsPSxPPhtJc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions?&page=3\"}', '2020-04-14 15:11:11', '2020-04-14 15:11:11');
INSERT INTO `admin_operation_log` VALUES (3620, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"page\":\"3\"}', '2020-04-14 15:11:11', '2020-04-14 15:11:11');
INSERT INTO `admin_operation_log` VALUES (3621, 3, 'admin/users/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-14 15:11:14', '2020-04-14 15:11:14');
INSERT INTO `admin_operation_log` VALUES (3622, 3, 'admin/users/1', 'GET', '127.0.0.1', '[]', '2020-04-14 15:11:58', '2020-04-14 15:11:58');
INSERT INTO `admin_operation_log` VALUES (3623, 3, 'admin/users/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-14 15:12:28', '2020-04-14 15:12:28');
INSERT INTO `admin_operation_log` VALUES (3624, 3, 'admin/users/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-14 15:14:51', '2020-04-14 15:14:51');
INSERT INTO `admin_operation_log` VALUES (3625, 3, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:14:56', '2020-04-14 15:14:56');
INSERT INTO `admin_operation_log` VALUES (3626, 3, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:15:02', '2020-04-14 15:15:02');
INSERT INTO `admin_operation_log` VALUES (3627, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:15:10', '2020-04-14 15:15:10');
INSERT INTO `admin_operation_log` VALUES (3628, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-14 15:15:12', '2020-04-14 15:15:12');
INSERT INTO `admin_operation_log` VALUES (3629, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:15:14', '2020-04-14 15:15:14');
INSERT INTO `admin_operation_log` VALUES (3630, 1, 'admin/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:15:16', '2020-04-14 15:15:16');
INSERT INTO `admin_operation_log` VALUES (3631, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:15:19', '2020-04-14 15:15:19');
INSERT INTO `admin_operation_log` VALUES (3632, 3, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-14 15:15:30', '2020-04-14 15:15:30');
INSERT INTO `admin_operation_log` VALUES (3633, 3, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-15 01:51:32', '2020-04-15 01:51:32');
INSERT INTO `admin_operation_log` VALUES (3634, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-15 01:51:40', '2020-04-15 01:51:40');
INSERT INTO `admin_operation_log` VALUES (3635, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 01:51:44', '2020-04-15 01:51:44');
INSERT INTO `admin_operation_log` VALUES (3636, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 01:51:47', '2020-04-15 01:51:47');
INSERT INTO `admin_operation_log` VALUES (3637, 1, 'admin/users/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\\u540c\\u5b66\",\"email\":\"stu1\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"WceLwC1JXcYf8Sg9MqphQzBmZjQMA7jYstrFtN9r\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-15 01:51:52', '2020-04-15 01:51:52');
INSERT INTO `admin_operation_log` VALUES (3638, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-15 01:51:53', '2020-04-15 01:51:53');
INSERT INTO `admin_operation_log` VALUES (3639, 1, 'admin/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 01:52:41', '2020-04-15 01:52:41');
INSERT INTO `admin_operation_log` VALUES (3640, 1, 'admin/users/2', 'PUT', '127.0.0.1', '{\"name\":\"\\u8d75\\u94c1\\u67f1\",\"email\":\"20164842\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"WceLwC1JXcYf8Sg9MqphQzBmZjQMA7jYstrFtN9r\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-15 01:52:47', '2020-04-15 01:52:47');
INSERT INTO `admin_operation_log` VALUES (3641, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-15 01:52:47', '2020-04-15 01:52:47');
INSERT INTO `admin_operation_log` VALUES (3642, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 01:52:49', '2020-04-15 01:52:49');
INSERT INTO `admin_operation_log` VALUES (3643, 1, 'admin/users/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\\u540c\\u5b66\",\"email\":\"stu1\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"WceLwC1JXcYf8Sg9MqphQzBmZjQMA7jYstrFtN9r\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-15 01:52:54', '2020-04-15 01:52:54');
INSERT INTO `admin_operation_log` VALUES (3644, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-15 01:52:55', '2020-04-15 01:52:55');
INSERT INTO `admin_operation_log` VALUES (3645, 1, 'admin/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 01:54:20', '2020-04-15 01:54:20');
INSERT INTO `admin_operation_log` VALUES (3646, 1, 'admin/users/2', 'PUT', '127.0.0.1', '{\"name\":\"\\u8d75\\u94c1\\u67f1\",\"email\":\"20164842\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"WceLwC1JXcYf8Sg9MqphQzBmZjQMA7jYstrFtN9r\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-15 01:54:29', '2020-04-15 01:54:29');
INSERT INTO `admin_operation_log` VALUES (3647, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-15 01:54:29', '2020-04-15 01:54:29');
INSERT INTO `admin_operation_log` VALUES (3648, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 01:55:04', '2020-04-15 01:55:04');
INSERT INTO `admin_operation_log` VALUES (3649, 1, 'admin/auth/users/18', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"WceLwC1JXcYf8Sg9MqphQzBmZjQMA7jYstrFtN9r\"}', '2020-04-15 01:55:10', '2020-04-15 01:55:10');
INSERT INTO `admin_operation_log` VALUES (3650, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 01:55:10', '2020-04-15 01:55:10');
INSERT INTO `admin_operation_log` VALUES (3651, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 01:55:16', '2020-04-15 01:55:16');
INSERT INTO `admin_operation_log` VALUES (3652, 1, 'admin/users/2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"WceLwC1JXcYf8Sg9MqphQzBmZjQMA7jYstrFtN9r\"}', '2020-04-15 01:55:21', '2020-04-15 01:55:21');
INSERT INTO `admin_operation_log` VALUES (3653, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 01:55:21', '2020-04-15 01:55:21');
INSERT INTO `admin_operation_log` VALUES (3654, 1, 'admin/users/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"WceLwC1JXcYf8Sg9MqphQzBmZjQMA7jYstrFtN9r\"}', '2020-04-15 01:55:26', '2020-04-15 01:55:26');
INSERT INTO `admin_operation_log` VALUES (3655, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 01:55:27', '2020-04-15 01:55:27');
INSERT INTO `admin_operation_log` VALUES (3656, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 01:55:33', '2020-04-15 01:55:33');
INSERT INTO `admin_operation_log` VALUES (3657, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"WceLwC1JXcYf8Sg9MqphQzBmZjQMA7jYstrFtN9r\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-15 01:56:22', '2020-04-15 01:56:22');
INSERT INTO `admin_operation_log` VALUES (3658, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 01:56:24', '2020-04-15 01:56:24');
INSERT INTO `admin_operation_log` VALUES (3659, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 01:56:33', '2020-04-15 01:56:33');
INSERT INTO `admin_operation_log` VALUES (3660, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 01:56:46', '2020-04-15 01:56:46');
INSERT INTO `admin_operation_log` VALUES (3661, 20, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-15 01:56:51', '2020-04-15 01:56:51');
INSERT INTO `admin_operation_log` VALUES (3662, 20, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 01:56:56', '2020-04-15 01:56:56');
INSERT INTO `admin_operation_log` VALUES (3663, 20, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 01:56:59', '2020-04-15 01:56:59');
INSERT INTO `admin_operation_log` VALUES (3664, 20, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 01:57:01', '2020-04-15 01:57:01');
INSERT INTO `admin_operation_log` VALUES (3665, 20, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 01:57:02', '2020-04-15 01:57:02');
INSERT INTO `admin_operation_log` VALUES (3666, 20, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 01:57:17', '2020-04-15 01:57:17');
INSERT INTO `admin_operation_log` VALUES (3667, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 01:57:21', '2020-04-15 01:57:21');
INSERT INTO `admin_operation_log` VALUES (3668, 20, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 01:57:27', '2020-04-15 01:57:27');
INSERT INTO `admin_operation_log` VALUES (3669, 20, 'admin/courses', 'GET', '127.0.0.1', '[]', '2020-04-15 01:57:29', '2020-04-15 01:57:29');
INSERT INTO `admin_operation_log` VALUES (3670, 20, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 01:58:53', '2020-04-15 01:58:53');
INSERT INTO `admin_operation_log` VALUES (3671, 20, 'admin/squads/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 01:58:55', '2020-04-15 01:58:55');
INSERT INTO `admin_operation_log` VALUES (3672, 20, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 01:59:07', '2020-04-15 01:59:07');
INSERT INTO `admin_operation_log` VALUES (3673, 20, 'admin/squads/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 01:59:16', '2020-04-15 01:59:16');
INSERT INTO `admin_operation_log` VALUES (3674, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:00:09', '2020-04-15 02:00:09');
INSERT INTO `admin_operation_log` VALUES (3675, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:00:12', '2020-04-15 02:00:12');
INSERT INTO `admin_operation_log` VALUES (3676, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-15 02:00:17', '2020-04-15 02:00:17');
INSERT INTO `admin_operation_log` VALUES (3677, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:00:21', '2020-04-15 02:00:21');
INSERT INTO `admin_operation_log` VALUES (3678, 1, 'admin/squads/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:00:25', '2020-04-15 02:00:25');
INSERT INTO `admin_operation_log` VALUES (3679, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":null,\"_model\":\"App_Models_StudentSquad\",\"_token\":\"WceLwC1JXcYf8Sg9MqphQzBmZjQMA7jYstrFtN9r\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-15 02:01:02', '2020-04-15 02:01:02');
INSERT INTO `admin_operation_log` VALUES (3680, 20, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 02:02:23', '2020-04-15 02:02:23');
INSERT INTO `admin_operation_log` VALUES (3681, 20, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:02:29', '2020-04-15 02:02:29');
INSERT INTO `admin_operation_log` VALUES (3682, 20, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:02:32', '2020-04-15 02:02:32');
INSERT INTO `admin_operation_log` VALUES (3683, 20, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:02:34', '2020-04-15 02:02:34');
INSERT INTO `admin_operation_log` VALUES (3684, 20, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:02:43', '2020-04-15 02:02:43');
INSERT INTO `admin_operation_log` VALUES (3685, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:02:50', '2020-04-15 02:02:50');
INSERT INTO `admin_operation_log` VALUES (3686, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:04:20', '2020-04-15 02:04:20');
INSERT INTO `admin_operation_log` VALUES (3687, 1, 'admin/articles/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:04:30', '2020-04-15 02:04:30');
INSERT INTO `admin_operation_log` VALUES (3688, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:04:35', '2020-04-15 02:04:35');
INSERT INTO `admin_operation_log` VALUES (3689, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"2\",\"_model\":\"App_Models_Article\",\"_token\":\"WceLwC1JXcYf8Sg9MqphQzBmZjQMA7jYstrFtN9r\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-15 02:05:22', '2020-04-15 02:05:22');
INSERT INTO `admin_operation_log` VALUES (3690, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:05:22', '2020-04-15 02:05:22');
INSERT INTO `admin_operation_log` VALUES (3691, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:20:43', '2020-04-15 02:20:43');
INSERT INTO `admin_operation_log` VALUES (3692, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"WceLwC1JXcYf8Sg9MqphQzBmZjQMA7jYstrFtN9r\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-15 02:21:08', '2020-04-15 02:21:08');
INSERT INTO `admin_operation_log` VALUES (3693, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:21:09', '2020-04-15 02:21:09');
INSERT INTO `admin_operation_log` VALUES (3694, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:21:35', '2020-04-15 02:21:35');
INSERT INTO `admin_operation_log` VALUES (3695, 1, 'admin/squads/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:21:37', '2020-04-15 02:21:37');
INSERT INTO `admin_operation_log` VALUES (3696, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:21:40', '2020-04-15 02:21:40');
INSERT INTO `admin_operation_log` VALUES (3697, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:21:44', '2020-04-15 02:21:44');
INSERT INTO `admin_operation_log` VALUES (3698, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:21:46', '2020-04-15 02:21:46');
INSERT INTO `admin_operation_log` VALUES (3699, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:21:56', '2020-04-15 02:21:56');
INSERT INTO `admin_operation_log` VALUES (3700, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"21\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"WceLwC1JXcYf8Sg9MqphQzBmZjQMA7jYstrFtN9r\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-15 02:22:40', '2020-04-15 02:22:40');
INSERT INTO `admin_operation_log` VALUES (3701, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:22:40', '2020-04-15 02:22:40');
INSERT INTO `admin_operation_log` VALUES (3702, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:22:44', '2020-04-15 02:22:44');
INSERT INTO `admin_operation_log` VALUES (3703, 1, 'admin/squads/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:22:46', '2020-04-15 02:22:46');
INSERT INTO `admin_operation_log` VALUES (3704, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 02:32:18', '2020-04-15 02:32:18');
INSERT INTO `admin_operation_log` VALUES (3705, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":null,\"_model\":\"App_Models_StudentSquad\",\"_token\":\"WceLwC1JXcYf8Sg9MqphQzBmZjQMA7jYstrFtN9r\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-15 02:32:22', '2020-04-15 02:32:22');
INSERT INTO `admin_operation_log` VALUES (3706, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 02:32:36', '2020-04-15 02:32:36');
INSERT INTO `admin_operation_log` VALUES (3707, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:32:39', '2020-04-15 02:32:39');
INSERT INTO `admin_operation_log` VALUES (3708, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"WceLwC1JXcYf8Sg9MqphQzBmZjQMA7jYstrFtN9r\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-15 02:32:46', '2020-04-15 02:32:46');
INSERT INTO `admin_operation_log` VALUES (3709, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:32:47', '2020-04-15 02:32:47');
INSERT INTO `admin_operation_log` VALUES (3710, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"22\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"WceLwC1JXcYf8Sg9MqphQzBmZjQMA7jYstrFtN9r\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-15 02:32:59', '2020-04-15 02:32:59');
INSERT INTO `admin_operation_log` VALUES (3711, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:33:00', '2020-04-15 02:33:00');
INSERT INTO `admin_operation_log` VALUES (3712, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:33:03', '2020-04-15 02:33:03');
INSERT INTO `admin_operation_log` VALUES (3713, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"5\",\"_model\":\"App_User\",\"_token\":\"WceLwC1JXcYf8Sg9MqphQzBmZjQMA7jYstrFtN9r\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-15 02:33:09', '2020-04-15 02:33:09');
INSERT INTO `admin_operation_log` VALUES (3714, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:33:09', '2020-04-15 02:33:09');
INSERT INTO `admin_operation_log` VALUES (3715, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:33:13', '2020-04-15 02:33:13');
INSERT INTO `admin_operation_log` VALUES (3716, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:33:15', '2020-04-15 02:33:15');
INSERT INTO `admin_operation_log` VALUES (3717, 1, 'admin/squads/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:33:17', '2020-04-15 02:33:17');
INSERT INTO `admin_operation_log` VALUES (3718, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:33:21', '2020-04-15 02:33:21');
INSERT INTO `admin_operation_log` VALUES (3719, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"WceLwC1JXcYf8Sg9MqphQzBmZjQMA7jYstrFtN9r\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-15 02:33:27', '2020-04-15 02:33:27');
INSERT INTO `admin_operation_log` VALUES (3720, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:33:28', '2020-04-15 02:33:28');
INSERT INTO `admin_operation_log` VALUES (3721, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:33:32', '2020-04-15 02:33:32');
INSERT INTO `admin_operation_log` VALUES (3722, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:33:36', '2020-04-15 02:33:36');
INSERT INTO `admin_operation_log` VALUES (3723, 1, 'admin/squads/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:33:39', '2020-04-15 02:33:39');
INSERT INTO `admin_operation_log` VALUES (3724, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:33:42', '2020-04-15 02:33:42');
INSERT INTO `admin_operation_log` VALUES (3725, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"23\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"WceLwC1JXcYf8Sg9MqphQzBmZjQMA7jYstrFtN9r\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-15 02:33:46', '2020-04-15 02:33:46');
INSERT INTO `admin_operation_log` VALUES (3726, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:33:47', '2020-04-15 02:33:47');
INSERT INTO `admin_operation_log` VALUES (3727, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:33:50', '2020-04-15 02:33:50');
INSERT INTO `admin_operation_log` VALUES (3728, 1, 'admin/squads/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:33:52', '2020-04-15 02:33:52');
INSERT INTO `admin_operation_log` VALUES (3729, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 02:33:58', '2020-04-15 02:33:58');
INSERT INTO `admin_operation_log` VALUES (3730, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:34:07', '2020-04-15 02:34:07');
INSERT INTO `admin_operation_log` VALUES (3731, 1, 'admin/auth/users/19/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:34:13', '2020-04-15 02:34:13');
INSERT INTO `admin_operation_log` VALUES (3732, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:34:19', '2020-04-15 02:34:19');
INSERT INTO `admin_operation_log` VALUES (3733, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:34:25', '2020-04-15 02:34:25');
INSERT INTO `admin_operation_log` VALUES (3734, 1, 'admin/squads/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:34:28', '2020-04-15 02:34:28');
INSERT INTO `admin_operation_log` VALUES (3735, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 02:34:33', '2020-04-15 02:34:33');
INSERT INTO `admin_operation_log` VALUES (3736, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 02:34:47', '2020-04-15 02:34:47');
INSERT INTO `admin_operation_log` VALUES (3737, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:34:51', '2020-04-15 02:34:51');
INSERT INTO `admin_operation_log` VALUES (3738, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 02:34:57', '2020-04-15 02:34:57');
INSERT INTO `admin_operation_log` VALUES (3739, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:35:01', '2020-04-15 02:35:01');
INSERT INTO `admin_operation_log` VALUES (3740, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"6\",\"_model\":\"App_User\",\"_token\":\"WceLwC1JXcYf8Sg9MqphQzBmZjQMA7jYstrFtN9r\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-15 02:35:07', '2020-04-15 02:35:07');
INSERT INTO `admin_operation_log` VALUES (3741, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:35:07', '2020-04-15 02:35:07');
INSERT INTO `admin_operation_log` VALUES (3742, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"WceLwC1JXcYf8Sg9MqphQzBmZjQMA7jYstrFtN9r\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-15 02:35:16', '2020-04-15 02:35:16');
INSERT INTO `admin_operation_log` VALUES (3743, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:35:16', '2020-04-15 02:35:16');
INSERT INTO `admin_operation_log` VALUES (3744, 1, 'admin/auth/users/24/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:35:19', '2020-04-15 02:35:19');
INSERT INTO `admin_operation_log` VALUES (3745, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 02:35:22', '2020-04-15 02:35:22');
INSERT INTO `admin_operation_log` VALUES (3746, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-15 02:35:25', '2020-04-15 02:35:25');
INSERT INTO `admin_operation_log` VALUES (3747, 1, 'admin/auth/users/24', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"WceLwC1JXcYf8Sg9MqphQzBmZjQMA7jYstrFtN9r\"}', '2020-04-15 02:35:33', '2020-04-15 02:35:33');
INSERT INTO `admin_operation_log` VALUES (3748, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:35:33', '2020-04-15 02:35:33');
INSERT INTO `admin_operation_log` VALUES (3749, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 02:35:42', '2020-04-15 02:35:42');
INSERT INTO `admin_operation_log` VALUES (3750, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-15 02:36:14', '2020-04-15 02:36:14');
INSERT INTO `admin_operation_log` VALUES (3751, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"7\",\"_model\":\"App_User\",\"_token\":\"WceLwC1JXcYf8Sg9MqphQzBmZjQMA7jYstrFtN9r\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-15 02:36:17', '2020-04-15 02:36:17');
INSERT INTO `admin_operation_log` VALUES (3752, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:36:17', '2020-04-15 02:36:17');
INSERT INTO `admin_operation_log` VALUES (3753, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 02:36:19', '2020-04-15 02:36:19');
INSERT INTO `admin_operation_log` VALUES (3754, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-15 02:36:22', '2020-04-15 02:36:22');
INSERT INTO `admin_operation_log` VALUES (3755, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"WceLwC1JXcYf8Sg9MqphQzBmZjQMA7jYstrFtN9r\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-15 02:36:29', '2020-04-15 02:36:29');
INSERT INTO `admin_operation_log` VALUES (3756, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:36:29', '2020-04-15 02:36:29');
INSERT INTO `admin_operation_log` VALUES (3757, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 02:36:36', '2020-04-15 02:36:36');
INSERT INTO `admin_operation_log` VALUES (3758, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-15 02:36:38', '2020-04-15 02:36:38');
INSERT INTO `admin_operation_log` VALUES (3759, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"25\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"WceLwC1JXcYf8Sg9MqphQzBmZjQMA7jYstrFtN9r\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-15 02:36:43', '2020-04-15 02:36:43');
INSERT INTO `admin_operation_log` VALUES (3760, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:36:43', '2020-04-15 02:36:43');
INSERT INTO `admin_operation_log` VALUES (3761, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 02:36:47', '2020-04-15 02:36:47');
INSERT INTO `admin_operation_log` VALUES (3762, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"8\",\"_model\":\"App_User\",\"_token\":\"WceLwC1JXcYf8Sg9MqphQzBmZjQMA7jYstrFtN9r\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-15 02:37:02', '2020-04-15 02:37:02');
INSERT INTO `admin_operation_log` VALUES (3763, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:37:02', '2020-04-15 02:37:02');
INSERT INTO `admin_operation_log` VALUES (3764, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-15 02:37:05', '2020-04-15 02:37:05');
INSERT INTO `admin_operation_log` VALUES (3765, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"WceLwC1JXcYf8Sg9MqphQzBmZjQMA7jYstrFtN9r\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-15 02:37:10', '2020-04-15 02:37:10');
INSERT INTO `admin_operation_log` VALUES (3766, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:37:11', '2020-04-15 02:37:11');
INSERT INTO `admin_operation_log` VALUES (3767, 1, 'admin/auth/users/26/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:37:14', '2020-04-15 02:37:14');
INSERT INTO `admin_operation_log` VALUES (3768, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 02:37:16', '2020-04-15 02:37:16');
INSERT INTO `admin_operation_log` VALUES (3769, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-15 02:37:19', '2020-04-15 02:37:19');
INSERT INTO `admin_operation_log` VALUES (3770, 1, 'admin/auth/users/26', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"WceLwC1JXcYf8Sg9MqphQzBmZjQMA7jYstrFtN9r\"}', '2020-04-15 02:37:22', '2020-04-15 02:37:22');
INSERT INTO `admin_operation_log` VALUES (3771, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:37:23', '2020-04-15 02:37:23');
INSERT INTO `admin_operation_log` VALUES (3772, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 02:37:26', '2020-04-15 02:37:26');
INSERT INTO `admin_operation_log` VALUES (3773, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-15 02:37:30', '2020-04-15 02:37:30');
INSERT INTO `admin_operation_log` VALUES (3774, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 02:37:33', '2020-04-15 02:37:33');
INSERT INTO `admin_operation_log` VALUES (3775, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":null,\"_model\":\"App_Models_StudentSquad\",\"_token\":\"WceLwC1JXcYf8Sg9MqphQzBmZjQMA7jYstrFtN9r\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-15 02:37:39', '2020-04-15 02:37:39');
INSERT INTO `admin_operation_log` VALUES (3776, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"9\",\"_model\":\"App_User\",\"_token\":\"WceLwC1JXcYf8Sg9MqphQzBmZjQMA7jYstrFtN9r\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-15 02:38:38', '2020-04-15 02:38:38');
INSERT INTO `admin_operation_log` VALUES (3777, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:38:39', '2020-04-15 02:38:39');
INSERT INTO `admin_operation_log` VALUES (3778, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 02:38:42', '2020-04-15 02:38:42');
INSERT INTO `admin_operation_log` VALUES (3779, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"WceLwC1JXcYf8Sg9MqphQzBmZjQMA7jYstrFtN9r\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-15 02:38:49', '2020-04-15 02:38:49');
INSERT INTO `admin_operation_log` VALUES (3780, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:38:49', '2020-04-15 02:38:49');
INSERT INTO `admin_operation_log` VALUES (3781, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 02:38:53', '2020-04-15 02:38:53');
INSERT INTO `admin_operation_log` VALUES (3782, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-15 02:38:55', '2020-04-15 02:38:55');
INSERT INTO `admin_operation_log` VALUES (3783, 1, 'admin/auth/users/27/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:38:59', '2020-04-15 02:38:59');
INSERT INTO `admin_operation_log` VALUES (3784, 1, 'admin/auth/users/27', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"WceLwC1JXcYf8Sg9MqphQzBmZjQMA7jYstrFtN9r\"}', '2020-04-15 02:39:02', '2020-04-15 02:39:02');
INSERT INTO `admin_operation_log` VALUES (3785, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:39:02', '2020-04-15 02:39:02');
INSERT INTO `admin_operation_log` VALUES (3786, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 02:39:05', '2020-04-15 02:39:05');
INSERT INTO `admin_operation_log` VALUES (3787, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-15 02:39:08', '2020-04-15 02:39:08');
INSERT INTO `admin_operation_log` VALUES (3788, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 02:39:11', '2020-04-15 02:39:11');
INSERT INTO `admin_operation_log` VALUES (3789, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"10\",\"_model\":\"App_User\",\"_token\":\"WceLwC1JXcYf8Sg9MqphQzBmZjQMA7jYstrFtN9r\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-15 02:41:01', '2020-04-15 02:41:01');
INSERT INTO `admin_operation_log` VALUES (3790, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:41:02', '2020-04-15 02:41:02');
INSERT INTO `admin_operation_log` VALUES (3791, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-15 02:41:06', '2020-04-15 02:41:06');
INSERT INTO `admin_operation_log` VALUES (3792, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"WceLwC1JXcYf8Sg9MqphQzBmZjQMA7jYstrFtN9r\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-15 02:41:14', '2020-04-15 02:41:14');
INSERT INTO `admin_operation_log` VALUES (3793, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:41:15', '2020-04-15 02:41:15');
INSERT INTO `admin_operation_log` VALUES (3794, 1, 'admin/auth/users/28/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:41:17', '2020-04-15 02:41:17');
INSERT INTO `admin_operation_log` VALUES (3795, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 02:41:20', '2020-04-15 02:41:20');
INSERT INTO `admin_operation_log` VALUES (3796, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-15 02:41:22', '2020-04-15 02:41:22');
INSERT INTO `admin_operation_log` VALUES (3797, 1, 'admin/auth/users/28', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"WceLwC1JXcYf8Sg9MqphQzBmZjQMA7jYstrFtN9r\"}', '2020-04-15 02:42:08', '2020-04-15 02:42:08');
INSERT INTO `admin_operation_log` VALUES (3798, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:42:09', '2020-04-15 02:42:09');
INSERT INTO `admin_operation_log` VALUES (3799, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 02:42:13', '2020-04-15 02:42:13');
INSERT INTO `admin_operation_log` VALUES (3800, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-15 02:42:16', '2020-04-15 02:42:16');
INSERT INTO `admin_operation_log` VALUES (3801, 20, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-15 02:43:03', '2020-04-15 02:43:03');
INSERT INTO `admin_operation_log` VALUES (3802, 20, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:47:27', '2020-04-15 02:47:27');
INSERT INTO `admin_operation_log` VALUES (3803, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-15 02:47:32', '2020-04-15 02:47:32');
INSERT INTO `admin_operation_log` VALUES (3804, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-15 02:47:36', '2020-04-15 02:47:36');
INSERT INTO `admin_operation_log` VALUES (3805, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-15 02:47:38', '2020-04-15 02:47:38');
INSERT INTO `admin_operation_log` VALUES (3806, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:47:41', '2020-04-15 02:47:41');
INSERT INTO `admin_operation_log` VALUES (3807, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:47:48', '2020-04-15 02:47:48');
INSERT INTO `admin_operation_log` VALUES (3808, 1, 'admin/squads/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:47:51', '2020-04-15 02:47:51');
INSERT INTO `admin_operation_log` VALUES (3809, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:47:52', '2020-04-15 02:47:52');
INSERT INTO `admin_operation_log` VALUES (3810, 1, 'admin/squads/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:47:54', '2020-04-15 02:47:54');
INSERT INTO `admin_operation_log` VALUES (3811, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:47:59', '2020-04-15 02:47:59');
INSERT INTO `admin_operation_log` VALUES (3812, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"11\",\"_model\":\"App_User\",\"_token\":\"PAr0afaaSgxyQaVImX76Z9TygudMM4hJuWlp2dOI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-15 02:48:02', '2020-04-15 02:48:02');
INSERT INTO `admin_operation_log` VALUES (3813, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:48:02', '2020-04-15 02:48:02');
INSERT INTO `admin_operation_log` VALUES (3814, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"PAr0afaaSgxyQaVImX76Z9TygudMM4hJuWlp2dOI\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-15 02:49:27', '2020-04-15 02:49:27');
INSERT INTO `admin_operation_log` VALUES (3815, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:49:27', '2020-04-15 02:49:27');
INSERT INTO `admin_operation_log` VALUES (3816, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-15 02:49:32', '2020-04-15 02:49:32');
INSERT INTO `admin_operation_log` VALUES (3817, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-15 02:49:40', '2020-04-15 02:49:40');
INSERT INTO `admin_operation_log` VALUES (3818, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 02:49:43', '2020-04-15 02:49:43');
INSERT INTO `admin_operation_log` VALUES (3819, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-15 02:49:45', '2020-04-15 02:49:45');
INSERT INTO `admin_operation_log` VALUES (3820, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"PAr0afaaSgxyQaVImX76Z9TygudMM4hJuWlp2dOI\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-15 02:49:53', '2020-04-15 02:49:53');
INSERT INTO `admin_operation_log` VALUES (3821, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:49:53', '2020-04-15 02:49:53');
INSERT INTO `admin_operation_log` VALUES (3822, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-15 02:50:16', '2020-04-15 02:50:16');
INSERT INTO `admin_operation_log` VALUES (3823, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"PAr0afaaSgxyQaVImX76Z9TygudMM4hJuWlp2dOI\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-15 02:50:39', '2020-04-15 02:50:39');
INSERT INTO `admin_operation_log` VALUES (3824, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:50:40', '2020-04-15 02:50:40');
INSERT INTO `admin_operation_log` VALUES (3825, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 02:50:45', '2020-04-15 02:50:45');
INSERT INTO `admin_operation_log` VALUES (3826, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-15 02:50:47', '2020-04-15 02:50:47');
INSERT INTO `admin_operation_log` VALUES (3827, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"29\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"PAr0afaaSgxyQaVImX76Z9TygudMM4hJuWlp2dOI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-15 02:50:58', '2020-04-15 02:50:58');
INSERT INTO `admin_operation_log` VALUES (3828, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:50:58', '2020-04-15 02:50:58');
INSERT INTO `admin_operation_log` VALUES (3829, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 02:51:02', '2020-04-15 02:51:02');
INSERT INTO `admin_operation_log` VALUES (3830, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-15 02:51:05', '2020-04-15 02:51:05');
INSERT INTO `admin_operation_log` VALUES (3831, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"12\",\"_model\":\"App_User\",\"_token\":\"PAr0afaaSgxyQaVImX76Z9TygudMM4hJuWlp2dOI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-15 02:51:56', '2020-04-15 02:51:56');
INSERT INTO `admin_operation_log` VALUES (3832, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:51:56', '2020-04-15 02:51:56');
INSERT INTO `admin_operation_log` VALUES (3833, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-15 02:51:58', '2020-04-15 02:51:58');
INSERT INTO `admin_operation_log` VALUES (3834, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"PAr0afaaSgxyQaVImX76Z9TygudMM4hJuWlp2dOI\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-15 02:52:19', '2020-04-15 02:52:19');
INSERT INTO `admin_operation_log` VALUES (3835, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:52:19', '2020-04-15 02:52:19');
INSERT INTO `admin_operation_log` VALUES (3836, 1, 'admin/auth/users/30/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:52:22', '2020-04-15 02:52:22');
INSERT INTO `admin_operation_log` VALUES (3837, 1, 'admin/auth/users/30', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"PAr0afaaSgxyQaVImX76Z9TygudMM4hJuWlp2dOI\"}', '2020-04-15 02:52:29', '2020-04-15 02:52:29');
INSERT INTO `admin_operation_log` VALUES (3838, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:52:29', '2020-04-15 02:52:29');
INSERT INTO `admin_operation_log` VALUES (3839, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 02:52:36', '2020-04-15 02:52:36');
INSERT INTO `admin_operation_log` VALUES (3840, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-15 02:52:39', '2020-04-15 02:52:39');
INSERT INTO `admin_operation_log` VALUES (3841, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"13\",\"_model\":\"App_User\",\"_token\":\"PAr0afaaSgxyQaVImX76Z9TygudMM4hJuWlp2dOI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-15 02:52:42', '2020-04-15 02:52:42');
INSERT INTO `admin_operation_log` VALUES (3842, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:52:42', '2020-04-15 02:52:42');
INSERT INTO `admin_operation_log` VALUES (3843, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-15 02:55:42', '2020-04-15 02:55:42');
INSERT INTO `admin_operation_log` VALUES (3844, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-15 02:56:19', '2020-04-15 02:56:19');
INSERT INTO `admin_operation_log` VALUES (3845, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 02:56:24', '2020-04-15 02:56:24');
INSERT INTO `admin_operation_log` VALUES (3846, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-15 02:56:34', '2020-04-15 02:56:34');
INSERT INTO `admin_operation_log` VALUES (3847, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 02:56:35', '2020-04-15 02:56:35');
INSERT INTO `admin_operation_log` VALUES (3848, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"PAr0afaaSgxyQaVImX76Z9TygudMM4hJuWlp2dOI\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-15 02:56:43', '2020-04-15 02:56:43');
INSERT INTO `admin_operation_log` VALUES (3849, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:56:43', '2020-04-15 02:56:43');
INSERT INTO `admin_operation_log` VALUES (3850, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"31\",\"_model\":\"App_Models_AdminUser\",\"_token\":\"PAr0afaaSgxyQaVImX76Z9TygudMM4hJuWlp2dOI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-15 02:56:48', '2020-04-15 02:56:48');
INSERT INTO `admin_operation_log` VALUES (3851, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-15 02:59:08', '2020-04-15 02:59:08');
INSERT INTO `admin_operation_log` VALUES (3852, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"14\",\"_model\":\"App_User\",\"_token\":\"PAr0afaaSgxyQaVImX76Z9TygudMM4hJuWlp2dOI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-15 02:59:12', '2020-04-15 02:59:12');
INSERT INTO `admin_operation_log` VALUES (3853, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:59:13', '2020-04-15 02:59:13');
INSERT INTO `admin_operation_log` VALUES (3854, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 02:59:15', '2020-04-15 02:59:15');
INSERT INTO `admin_operation_log` VALUES (3855, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-15 02:59:17', '2020-04-15 02:59:17');
INSERT INTO `admin_operation_log` VALUES (3856, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"PAr0afaaSgxyQaVImX76Z9TygudMM4hJuWlp2dOI\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-15 02:59:24', '2020-04-15 02:59:24');
INSERT INTO `admin_operation_log` VALUES (3857, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 02:59:25', '2020-04-15 02:59:25');
INSERT INTO `admin_operation_log` VALUES (3858, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"32\",\"_model\":\"App_Models_AdminUser\",\"_token\":\"PAr0afaaSgxyQaVImX76Z9TygudMM4hJuWlp2dOI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-15 02:59:29', '2020-04-15 02:59:29');
INSERT INTO `admin_operation_log` VALUES (3859, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-15 02:59:49', '2020-04-15 02:59:49');
INSERT INTO `admin_operation_log` VALUES (3860, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-15 03:00:45', '2020-04-15 03:00:45');
INSERT INTO `admin_operation_log` VALUES (3861, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"15\",\"_model\":\"App_User\",\"_token\":\"PAr0afaaSgxyQaVImX76Z9TygudMM4hJuWlp2dOI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-15 03:00:48', '2020-04-15 03:00:48');
INSERT INTO `admin_operation_log` VALUES (3862, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 03:00:48', '2020-04-15 03:00:48');
INSERT INTO `admin_operation_log` VALUES (3863, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"PAr0afaaSgxyQaVImX76Z9TygudMM4hJuWlp2dOI\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-15 03:00:57', '2020-04-15 03:00:57');
INSERT INTO `admin_operation_log` VALUES (3864, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 03:00:57', '2020-04-15 03:00:57');
INSERT INTO `admin_operation_log` VALUES (3865, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-15 03:01:00', '2020-04-15 03:01:00');
INSERT INTO `admin_operation_log` VALUES (3866, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 03:01:02', '2020-04-15 03:01:02');
INSERT INTO `admin_operation_log` VALUES (3867, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-15 03:01:05', '2020-04-15 03:01:05');
INSERT INTO `admin_operation_log` VALUES (3868, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"33\",\"_model\":\"App_Models_AdminUser\",\"_token\":\"PAr0afaaSgxyQaVImX76Z9TygudMM4hJuWlp2dOI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-15 03:01:09', '2020-04-15 03:01:09');
INSERT INTO `admin_operation_log` VALUES (3869, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-15 03:03:20', '2020-04-15 03:03:20');
INSERT INTO `admin_operation_log` VALUES (3870, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"16\",\"_model\":\"App_User\",\"_token\":\"PAr0afaaSgxyQaVImX76Z9TygudMM4hJuWlp2dOI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-15 03:03:23', '2020-04-15 03:03:23');
INSERT INTO `admin_operation_log` VALUES (3871, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 03:03:23', '2020-04-15 03:03:23');
INSERT INTO `admin_operation_log` VALUES (3872, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-15 03:03:26', '2020-04-15 03:03:26');
INSERT INTO `admin_operation_log` VALUES (3873, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"PAr0afaaSgxyQaVImX76Z9TygudMM4hJuWlp2dOI\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-15 03:03:33', '2020-04-15 03:03:33');
INSERT INTO `admin_operation_log` VALUES (3874, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 03:03:33', '2020-04-15 03:03:33');
INSERT INTO `admin_operation_log` VALUES (3875, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 03:03:36', '2020-04-15 03:03:36');
INSERT INTO `admin_operation_log` VALUES (3876, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-15 03:03:38', '2020-04-15 03:03:38');
INSERT INTO `admin_operation_log` VALUES (3877, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"34\",\"_model\":\"App_Models_AdminUser\",\"_token\":\"PAr0afaaSgxyQaVImX76Z9TygudMM4hJuWlp2dOI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-15 03:03:42', '2020-04-15 03:03:42');
INSERT INTO `admin_operation_log` VALUES (3878, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 03:03:43', '2020-04-15 03:03:43');
INSERT INTO `admin_operation_log` VALUES (3879, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 03:03:47', '2020-04-15 03:03:47');
INSERT INTO `admin_operation_log` VALUES (3880, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-15 03:03:50', '2020-04-15 03:03:50');
INSERT INTO `admin_operation_log` VALUES (3881, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-15 03:06:18', '2020-04-15 03:06:18');
INSERT INTO `admin_operation_log` VALUES (3882, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 03:06:20', '2020-04-15 03:06:20');
INSERT INTO `admin_operation_log` VALUES (3883, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-15 03:06:22', '2020-04-15 03:06:22');
INSERT INTO `admin_operation_log` VALUES (3884, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"PAr0afaaSgxyQaVImX76Z9TygudMM4hJuWlp2dOI\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-15 03:06:29', '2020-04-15 03:06:29');
INSERT INTO `admin_operation_log` VALUES (3885, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 03:06:30', '2020-04-15 03:06:30');
INSERT INTO `admin_operation_log` VALUES (3886, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"35\",\"_model\":\"App_Models_AdminUser\",\"_token\":\"PAr0afaaSgxyQaVImX76Z9TygudMM4hJuWlp2dOI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-15 03:06:39', '2020-04-15 03:06:39');
INSERT INTO `admin_operation_log` VALUES (3887, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 03:06:39', '2020-04-15 03:06:39');
INSERT INTO `admin_operation_log` VALUES (3888, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 03:06:42', '2020-04-15 03:06:42');
INSERT INTO `admin_operation_log` VALUES (3889, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-15 03:06:44', '2020-04-15 03:06:44');
INSERT INTO `admin_operation_log` VALUES (3890, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:05:21', '2020-04-15 06:05:21');
INSERT INTO `admin_operation_log` VALUES (3891, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:14:28', '2020-04-15 06:14:28');
INSERT INTO `admin_operation_log` VALUES (3892, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-15 06:14:29', '2020-04-15 06:14:29');
INSERT INTO `admin_operation_log` VALUES (3893, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:14:37', '2020-04-15 06:14:37');
INSERT INTO `admin_operation_log` VALUES (3894, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-15 06:14:38', '2020-04-15 06:14:38');
INSERT INTO `admin_operation_log` VALUES (3895, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-15 06:14:46', '2020-04-15 06:14:46');
INSERT INTO `admin_operation_log` VALUES (3896, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:14:48', '2020-04-15 06:14:48');
INSERT INTO `admin_operation_log` VALUES (3897, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-15 06:14:49', '2020-04-15 06:14:49');
INSERT INTO `admin_operation_log` VALUES (3898, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-15 06:15:32', '2020-04-15 06:15:32');
INSERT INTO `admin_operation_log` VALUES (3899, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:16:05', '2020-04-15 06:16:05');
INSERT INTO `admin_operation_log` VALUES (3900, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-15 06:16:06', '2020-04-15 06:16:06');
INSERT INTO `admin_operation_log` VALUES (3901, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-15 06:18:09', '2020-04-15 06:18:09');
INSERT INTO `admin_operation_log` VALUES (3902, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:18:17', '2020-04-15 06:18:17');
INSERT INTO `admin_operation_log` VALUES (3903, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-15 06:18:17', '2020-04-15 06:18:17');
INSERT INTO `admin_operation_log` VALUES (3904, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:18:23', '2020-04-15 06:18:23');
INSERT INTO `admin_operation_log` VALUES (3905, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:18:26', '2020-04-15 06:18:26');
INSERT INTO `admin_operation_log` VALUES (3906, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:18:28', '2020-04-15 06:18:28');
INSERT INTO `admin_operation_log` VALUES (3907, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:18:29', '2020-04-15 06:18:29');
INSERT INTO `admin_operation_log` VALUES (3908, 1, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-15 06:18:29', '2020-04-15 06:18:29');
INSERT INTO `admin_operation_log` VALUES (3909, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:18:34', '2020-04-15 06:18:34');
INSERT INTO `admin_operation_log` VALUES (3910, 1, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-15 06:18:34', '2020-04-15 06:18:34');
INSERT INTO `admin_operation_log` VALUES (3911, 1, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-15 06:18:36', '2020-04-15 06:18:36');
INSERT INTO `admin_operation_log` VALUES (3912, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:18:39', '2020-04-15 06:18:39');
INSERT INTO `admin_operation_log` VALUES (3913, 1, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-15 06:18:40', '2020-04-15 06:18:40');
INSERT INTO `admin_operation_log` VALUES (3914, 1, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-15 06:19:59', '2020-04-15 06:19:59');
INSERT INTO `admin_operation_log` VALUES (3915, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:20:02', '2020-04-15 06:20:02');
INSERT INTO `admin_operation_log` VALUES (3916, 1, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-15 06:20:02', '2020-04-15 06:20:02');
INSERT INTO `admin_operation_log` VALUES (3917, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:20:27', '2020-04-15 06:20:27');
INSERT INTO `admin_operation_log` VALUES (3918, 1, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-15 06:20:28', '2020-04-15 06:20:28');
INSERT INTO `admin_operation_log` VALUES (3919, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:21:06', '2020-04-15 06:21:06');
INSERT INTO `admin_operation_log` VALUES (3920, 1, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-15 06:21:06', '2020-04-15 06:21:06');
INSERT INTO `admin_operation_log` VALUES (3921, 1, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-15 06:21:08', '2020-04-15 06:21:08');
INSERT INTO `admin_operation_log` VALUES (3922, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:21:11', '2020-04-15 06:21:11');
INSERT INTO `admin_operation_log` VALUES (3923, 1, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-15 06:21:11', '2020-04-15 06:21:11');
INSERT INTO `admin_operation_log` VALUES (3924, 1, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-15 06:21:29', '2020-04-15 06:21:29');
INSERT INTO `admin_operation_log` VALUES (3925, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:21:31', '2020-04-15 06:21:31');
INSERT INTO `admin_operation_log` VALUES (3926, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:21:33', '2020-04-15 06:21:33');
INSERT INTO `admin_operation_log` VALUES (3927, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2020-04-15 06:23:15', '2020-04-15 06:23:15');
INSERT INTO `admin_operation_log` VALUES (3928, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:23:18', '2020-04-15 06:23:18');
INSERT INTO `admin_operation_log` VALUES (3929, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:23:19', '2020-04-15 06:23:19');
INSERT INTO `admin_operation_log` VALUES (3930, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:23:21', '2020-04-15 06:23:21');
INSERT INTO `admin_operation_log` VALUES (3931, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:23:22', '2020-04-15 06:23:22');
INSERT INTO `admin_operation_log` VALUES (3932, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:23:23', '2020-04-15 06:23:23');
INSERT INTO `admin_operation_log` VALUES (3933, 1, 'admin/course-type-constants', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:23:24', '2020-04-15 06:23:24');
INSERT INTO `admin_operation_log` VALUES (3934, 1, 'admin/meta-cal-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:23:25', '2020-04-15 06:23:25');
INSERT INTO `admin_operation_log` VALUES (3935, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:23:27', '2020-04-15 06:23:27');
INSERT INTO `admin_operation_log` VALUES (3936, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:23:28', '2020-04-15 06:23:28');
INSERT INTO `admin_operation_log` VALUES (3937, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:23:28', '2020-04-15 06:23:28');
INSERT INTO `admin_operation_log` VALUES (3938, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:23:31', '2020-04-15 06:23:31');
INSERT INTO `admin_operation_log` VALUES (3939, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:23:32', '2020-04-15 06:23:32');
INSERT INTO `admin_operation_log` VALUES (3940, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:23:34', '2020-04-15 06:23:34');
INSERT INTO `admin_operation_log` VALUES (3941, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"k7OtHuO9qMHcwSc71aYFacso95hVykhbg4Hp0Wlg\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-15 06:23:46', '2020-04-15 06:23:46');
INSERT INTO `admin_operation_log` VALUES (3942, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:23:48', '2020-04-15 06:23:48');
INSERT INTO `admin_operation_log` VALUES (3943, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 06:23:50', '2020-04-15 06:23:50');
INSERT INTO `admin_operation_log` VALUES (3944, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-15 06:23:53', '2020-04-15 06:23:53');
INSERT INTO `admin_operation_log` VALUES (3945, 1, 'admin/auth/users/36/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:23:56', '2020-04-15 06:23:56');
INSERT INTO `admin_operation_log` VALUES (3946, 1, 'admin/auth/users/36', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"k7OtHuO9qMHcwSc71aYFacso95hVykhbg4Hp0Wlg\"}', '2020-04-15 06:23:59', '2020-04-15 06:23:59');
INSERT INTO `admin_operation_log` VALUES (3947, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:23:59', '2020-04-15 06:23:59');
INSERT INTO `admin_operation_log` VALUES (3948, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 06:24:03', '2020-04-15 06:24:03');
INSERT INTO `admin_operation_log` VALUES (3949, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-15 06:24:05', '2020-04-15 06:24:05');
INSERT INTO `admin_operation_log` VALUES (3950, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:24:15', '2020-04-15 06:24:15');
INSERT INTO `admin_operation_log` VALUES (3951, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:25:51', '2020-04-15 06:25:51');
INSERT INTO `admin_operation_log` VALUES (3952, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:25:55', '2020-04-15 06:25:55');
INSERT INTO `admin_operation_log` VALUES (3953, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:26:40', '2020-04-15 06:26:40');
INSERT INTO `admin_operation_log` VALUES (3954, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:27:23', '2020-04-15 06:27:23');
INSERT INTO `admin_operation_log` VALUES (3955, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:29:52', '2020-04-15 06:29:52');
INSERT INTO `admin_operation_log` VALUES (3956, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:31:27', '2020-04-15 06:31:27');
INSERT INTO `admin_operation_log` VALUES (3957, 1, 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:31:29', '2020-04-15 06:31:29');
INSERT INTO `admin_operation_log` VALUES (3958, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:31:36', '2020-04-15 06:31:36');
INSERT INTO `admin_operation_log` VALUES (3959, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:32:54', '2020-04-15 06:32:54');
INSERT INTO `admin_operation_log` VALUES (3960, 1, 'admin/squads', 'GET', '127.0.0.1', '[]', '2020-04-15 06:36:08', '2020-04-15 06:36:08');
INSERT INTO `admin_operation_log` VALUES (3961, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:36:10', '2020-04-15 06:36:10');
INSERT INTO `admin_operation_log` VALUES (3962, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"k7OtHuO9qMHcwSc71aYFacso95hVykhbg4Hp0Wlg\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-15 06:36:18', '2020-04-15 06:36:18');
INSERT INTO `admin_operation_log` VALUES (3963, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:36:19', '2020-04-15 06:36:19');
INSERT INTO `admin_operation_log` VALUES (3964, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 06:36:24', '2020-04-15 06:36:24');
INSERT INTO `admin_operation_log` VALUES (3965, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-15 06:36:27', '2020-04-15 06:36:27');
INSERT INTO `admin_operation_log` VALUES (3966, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"37\",\"_model\":\"App_Models_AdminUser\",\"_token\":\"k7OtHuO9qMHcwSc71aYFacso95hVykhbg4Hp0Wlg\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-15 06:36:31', '2020-04-15 06:36:31');
INSERT INTO `admin_operation_log` VALUES (3967, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 06:36:31', '2020-04-15 06:36:31');
INSERT INTO `admin_operation_log` VALUES (3968, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-15 06:36:35', '2020-04-15 06:36:35');
INSERT INTO `admin_operation_log` VALUES (3969, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-15 06:36:37', '2020-04-15 06:36:37');
INSERT INTO `admin_operation_log` VALUES (3970, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 08:31:28', '2020-04-15 08:31:28');
INSERT INTO `admin_operation_log` VALUES (3971, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 08:34:30', '2020-04-15 08:34:30');
INSERT INTO `admin_operation_log` VALUES (3972, 1, 'admin/squads/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 08:36:11', '2020-04-15 08:36:11');
INSERT INTO `admin_operation_log` VALUES (3973, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 08:36:17', '2020-04-15 08:36:17');
INSERT INTO `admin_operation_log` VALUES (3974, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-15 11:30:02', '2020-04-15 11:30:02');
INSERT INTO `admin_operation_log` VALUES (3975, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-17 08:42:43', '2020-04-17 08:42:43');
INSERT INTO `admin_operation_log` VALUES (3976, 1, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-17 08:43:05', '2020-04-17 08:43:05');
INSERT INTO `admin_operation_log` VALUES (3977, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-17 08:43:11', '2020-04-17 08:43:11');
INSERT INTO `admin_operation_log` VALUES (3978, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-17 08:43:14', '2020-04-17 08:43:14');
INSERT INTO `admin_operation_log` VALUES (3979, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-17 08:43:36', '2020-04-17 08:43:36');
INSERT INTO `admin_operation_log` VALUES (3980, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-17 08:43:39', '2020-04-17 08:43:39');
INSERT INTO `admin_operation_log` VALUES (3981, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-17 08:43:42', '2020-04-17 08:43:42');
INSERT INTO `admin_operation_log` VALUES (3982, 1, 'admin/squads/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-17 08:43:48', '2020-04-17 08:43:48');
INSERT INTO `admin_operation_log` VALUES (3983, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-17 08:44:30', '2020-04-17 08:44:30');
INSERT INTO `admin_operation_log` VALUES (3984, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-17 08:44:34', '2020-04-17 08:44:34');
INSERT INTO `admin_operation_log` VALUES (3985, 3, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-17 08:44:51', '2020-04-17 08:44:51');
INSERT INTO `admin_operation_log` VALUES (3986, 3, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-17 08:44:57', '2020-04-17 08:44:57');
INSERT INTO `admin_operation_log` VALUES (3987, 3, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-17 08:44:59', '2020-04-17 08:44:59');
INSERT INTO `admin_operation_log` VALUES (3988, 3, 'admin/professions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-17 08:45:07', '2020-04-17 08:45:07');
INSERT INTO `admin_operation_log` VALUES (3989, 3, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-17 08:45:11', '2020-04-17 08:45:11');
INSERT INTO `admin_operation_log` VALUES (3990, 3, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-17 08:45:39', '2020-04-17 08:45:39');
INSERT INTO `admin_operation_log` VALUES (3991, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-17 08:45:53', '2020-04-17 08:45:53');
INSERT INTO `admin_operation_log` VALUES (3992, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-17 08:45:59', '2020-04-17 08:45:59');
INSERT INTO `admin_operation_log` VALUES (3993, 3, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-17 11:59:05', '2020-04-17 11:59:05');
INSERT INTO `admin_operation_log` VALUES (3994, 3, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-17 11:59:10', '2020-04-17 11:59:10');
INSERT INTO `admin_operation_log` VALUES (3995, 3, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-17 12:00:10', '2020-04-17 12:00:10');
INSERT INTO `admin_operation_log` VALUES (3996, 3, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-17 12:00:13', '2020-04-17 12:00:13');
INSERT INTO `admin_operation_log` VALUES (3997, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-19 08:01:54', '2020-04-19 08:01:54');
INSERT INTO `admin_operation_log` VALUES (3998, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 08:01:58', '2020-04-19 08:01:58');
INSERT INTO `admin_operation_log` VALUES (3999, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 08:02:00', '2020-04-19 08:02:00');
INSERT INTO `admin_operation_log` VALUES (4000, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 08:02:03', '2020-04-19 08:02:03');
INSERT INTO `admin_operation_log` VALUES (4001, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-04-19 08:02:05', '2020-04-19 08:02:05');
INSERT INTO `admin_operation_log` VALUES (4002, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\"}', '2020-04-19 08:02:11', '2020-04-19 08:02:11');
INSERT INTO `admin_operation_log` VALUES (4003, 1, 'admin/student-squads/create', 'GET', '127.0.0.1', '{\"squad_id\":\"1\"}', '2020-04-19 09:00:39', '2020-04-19 09:00:39');
INSERT INTO `admin_operation_log` VALUES (4004, 1, 'admin/course-type-constants', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 09:00:44', '2020-04-19 09:00:44');
INSERT INTO `admin_operation_log` VALUES (4005, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-19 12:05:43', '2020-04-19 12:05:43');
INSERT INTO `admin_operation_log` VALUES (4006, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 12:05:48', '2020-04-19 12:05:48');
INSERT INTO `admin_operation_log` VALUES (4007, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 12:06:08', '2020-04-19 12:06:08');
INSERT INTO `admin_operation_log` VALUES (4008, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 12:06:10', '2020-04-19 12:06:10');
INSERT INTO `admin_operation_log` VALUES (4009, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2020-04-19 12:09:28', '2020-04-19 12:09:28');
INSERT INTO `admin_operation_log` VALUES (4010, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2020-04-19 12:10:03', '2020-04-19 12:10:03');
INSERT INTO `admin_operation_log` VALUES (4011, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2020-04-19 12:11:10', '2020-04-19 12:11:10');
INSERT INTO `admin_operation_log` VALUES (4012, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 12:11:14', '2020-04-19 12:11:14');
INSERT INTO `admin_operation_log` VALUES (4013, 1, 'admin/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 12:11:16', '2020-04-19 12:11:16');
INSERT INTO `admin_operation_log` VALUES (4014, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 12:11:19', '2020-04-19 12:11:19');
INSERT INTO `admin_operation_log` VALUES (4015, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 12:11:20', '2020-04-19 12:11:20');
INSERT INTO `admin_operation_log` VALUES (4016, 1, 'admin/users', 'POST', '127.0.0.1', '{\"name\":\"\\u738b\\u8001\\u5e08\",\"email\":\"wang\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"O7qlZtAJNDCv3ituPiFVHIuof2q2JM9e6CJ2qvy8\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-19 12:11:33', '2020-04-19 12:11:33');
INSERT INTO `admin_operation_log` VALUES (4017, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 12:11:33', '2020-04-19 12:11:33');
INSERT INTO `admin_operation_log` VALUES (4018, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 12:13:43', '2020-04-19 12:13:43');
INSERT INTO `admin_operation_log` VALUES (4019, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 12:13:46', '2020-04-19 12:13:46');
INSERT INTO `admin_operation_log` VALUES (4020, 1, 'admin/users/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\",\"email\":\"20164841\",\"password\":\"111111\",\"remember_token\":\"NlYdcYqG6AiZSrpuCTiSkO5B99w7ftbZX7YLQEcoVuDamBIxDCgwpz0VbdeV\",\"_token\":\"O7qlZtAJNDCv3ituPiFVHIuof2q2JM9e6CJ2qvy8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-19 12:13:53', '2020-04-19 12:13:53');
INSERT INTO `admin_operation_log` VALUES (4021, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 12:13:53', '2020-04-19 12:13:53');
INSERT INTO `admin_operation_log` VALUES (4022, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 12:14:11', '2020-04-19 12:14:11');
INSERT INTO `admin_operation_log` VALUES (4023, 1, 'admin/users/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\",\"email\":\"20164841\",\"password\":\"123456\",\"remember_token\":\"ZaNYP7FuUfmeHBqpKuRpiS3h6ixFYPIbb3WgCvfguvzolgt6R1fgPNIex8bC\",\"_token\":\"VbUTYN2kaYSnBBo4pxPFV4xahySi5rvUCWjIyH1p\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-19 12:14:34', '2020-04-19 12:14:34');
INSERT INTO `admin_operation_log` VALUES (4024, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 12:14:34', '2020-04-19 12:14:34');
INSERT INTO `admin_operation_log` VALUES (4025, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 12:16:39', '2020-04-19 12:16:39');
INSERT INTO `admin_operation_log` VALUES (4026, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 12:16:42', '2020-04-19 12:16:42');
INSERT INTO `admin_operation_log` VALUES (4027, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 12:16:45', '2020-04-19 12:16:45');
INSERT INTO `admin_operation_log` VALUES (4028, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 12:16:47', '2020-04-19 12:16:47');
INSERT INTO `admin_operation_log` VALUES (4029, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 12:17:21', '2020-04-19 12:17:21');
INSERT INTO `admin_operation_log` VALUES (4030, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 12:17:23', '2020-04-19 12:17:23');
INSERT INTO `admin_operation_log` VALUES (4031, 1, 'admin/users', 'POST', '127.0.0.1', '{\"name\":\"\\u8096\\u8001\\u5e08\",\"email\":\"xiao\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"VbUTYN2kaYSnBBo4pxPFV4xahySi5rvUCWjIyH1p\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-19 12:17:42', '2020-04-19 12:17:42');
INSERT INTO `admin_operation_log` VALUES (4032, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 12:17:42', '2020-04-19 12:17:42');
INSERT INTO `admin_operation_log` VALUES (4033, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 12:18:47', '2020-04-19 12:18:47');
INSERT INTO `admin_operation_log` VALUES (4034, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 12:19:19', '2020-04-19 12:19:19');
INSERT INTO `admin_operation_log` VALUES (4035, 1, 'admin/users/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\",\"email\":\"20164841\",\"password\":\"123456\",\"remember_token\":\"ZaNYP7FuUfmeHBqpKuRpiS3h6ixFYPIbb3WgCvfguvzolgt6R1fgPNIex8bC\",\"_token\":\"VbUTYN2kaYSnBBo4pxPFV4xahySi5rvUCWjIyH1p\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-19 12:19:26', '2020-04-19 12:19:26');
INSERT INTO `admin_operation_log` VALUES (4036, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 12:19:26', '2020-04-19 12:19:26');
INSERT INTO `admin_operation_log` VALUES (4037, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 12:22:57', '2020-04-19 12:22:57');
INSERT INTO `admin_operation_log` VALUES (4038, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 12:22:59', '2020-04-19 12:22:59');
INSERT INTO `admin_operation_log` VALUES (4039, 1, 'admin/users/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\",\"email\":\"20164841\",\"password\":\"123456\",\"remember_token\":\"ZaNYP7FuUfmeHBqpKuRpiS3h6ixFYPIbb3WgCvfguvzolgt6R1fgPNIex8bC\",\"_token\":\"ZiYEMKVvwho7gMKENUyRM8K1eOLeIXQlYHshSrO0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-19 12:23:05', '2020-04-19 12:23:05');
INSERT INTO `admin_operation_log` VALUES (4040, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 12:23:05', '2020-04-19 12:23:05');
INSERT INTO `admin_operation_log` VALUES (4041, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 12:28:37', '2020-04-19 12:28:37');
INSERT INTO `admin_operation_log` VALUES (4042, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 12:28:40', '2020-04-19 12:28:40');
INSERT INTO `admin_operation_log` VALUES (4043, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 12:28:46', '2020-04-19 12:28:46');
INSERT INTO `admin_operation_log` VALUES (4044, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 12:28:49', '2020-04-19 12:28:49');
INSERT INTO `admin_operation_log` VALUES (4045, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 12:28:52', '2020-04-19 12:28:52');
INSERT INTO `admin_operation_log` VALUES (4046, 1, 'admin/auth/roles/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 12:28:54', '2020-04-19 12:28:54');
INSERT INTO `admin_operation_log` VALUES (4047, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 12:28:56', '2020-04-19 12:28:56');
INSERT INTO `admin_operation_log` VALUES (4048, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 12:30:07', '2020-04-19 12:30:07');
INSERT INTO `admin_operation_log` VALUES (4049, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"ZiYEMKVvwho7gMKENUyRM8K1eOLeIXQlYHshSrO0\",\"_action\":\"App_Admin_Actions_AdminUser_ImportUsers\"}', '2020-04-19 12:30:15', '2020-04-19 12:30:15');
INSERT INTO `admin_operation_log` VALUES (4050, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 12:30:16', '2020-04-19 12:30:16');
INSERT INTO `admin_operation_log` VALUES (4051, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 12:30:21', '2020-04-19 12:30:21');
INSERT INTO `admin_operation_log` VALUES (4052, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 12:53:37', '2020-04-19 12:53:37');
INSERT INTO `admin_operation_log` VALUES (4053, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 12:53:40', '2020-04-19 12:53:40');
INSERT INTO `admin_operation_log` VALUES (4054, 1, 'admin/users/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\",\"email\":\"20164841\",\"password\":\"123456\",\"remember_token\":\"ZaNYP7FuUfmeHBqpKuRpiS3h6ixFYPIbb3WgCvfguvzolgt6R1fgPNIex8bC\",\"_token\":\"ldF3QMVLUWMbrucmWpKsYcY6Vb6oVNPrPaQdoIkP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-19 12:53:47', '2020-04-19 12:53:47');
INSERT INTO `admin_operation_log` VALUES (4055, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 12:53:47', '2020-04-19 12:53:47');
INSERT INTO `admin_operation_log` VALUES (4056, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 12:55:02', '2020-04-19 12:55:02');
INSERT INTO `admin_operation_log` VALUES (4057, 1, 'admin/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 12:55:27', '2020-04-19 12:55:27');
INSERT INTO `admin_operation_log` VALUES (4058, 1, 'admin/users/3', 'PUT', '127.0.0.1', '{\"name\":\"\\u738b\\u4e8c\\u599e\",\"email\":\"20164843\",\"password\":\"111111\",\"remember_token\":\"1La3ZQlWzb2ASzkHmaXfv7LULDVT4ZT3stgdJSsRSycyDXRBZXvNwmjlXZhv\",\"_token\":\"zYieaXd6TeuPRu4v6uUPmUmErjT3QwDxS9wsWAA0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-19 12:55:36', '2020-04-19 12:55:36');
INSERT INTO `admin_operation_log` VALUES (4059, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 12:55:36', '2020-04-19 12:55:36');
INSERT INTO `admin_operation_log` VALUES (4060, 1, 'admin/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 12:57:25', '2020-04-19 12:57:25');
INSERT INTO `admin_operation_log` VALUES (4061, 1, 'admin/users/3', 'PUT', '127.0.0.1', '{\"name\":\"\\u738b\\u4e8c\\u599e\",\"email\":\"20164843\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"nTmGHq5bUlS4Ev8POpBAjSvPjllyCQ5mifR1gGBQ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-19 12:57:31', '2020-04-19 12:57:31');
INSERT INTO `admin_operation_log` VALUES (4062, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 12:57:31', '2020-04-19 12:57:31');
INSERT INTO `admin_operation_log` VALUES (4063, 1, 'admin/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 13:00:09', '2020-04-19 13:00:09');
INSERT INTO `admin_operation_log` VALUES (4064, 1, 'admin/users/3', 'GET', '127.0.0.1', '[]', '2020-04-19 13:01:17', '2020-04-19 13:01:17');
INSERT INTO `admin_operation_log` VALUES (4065, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 13:01:20', '2020-04-19 13:01:20');
INSERT INTO `admin_operation_log` VALUES (4066, 1, 'admin/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 13:01:23', '2020-04-19 13:01:23');
INSERT INTO `admin_operation_log` VALUES (4067, 1, 'admin/users/3', 'PUT', '127.0.0.1', '{\"name\":\"\\u738b\\u4e8c\\u599e\",\"email\":\"20164843\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"RijySj4oKT8DZ8As5UHDqQsnKsVB3hJWRWKJyB2m\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-19 13:01:29', '2020-04-19 13:01:29');
INSERT INTO `admin_operation_log` VALUES (4068, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:01:30', '2020-04-19 13:01:30');
INSERT INTO `admin_operation_log` VALUES (4069, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:03:39', '2020-04-19 13:03:39');
INSERT INTO `admin_operation_log` VALUES (4070, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 13:03:42', '2020-04-19 13:03:42');
INSERT INTO `admin_operation_log` VALUES (4071, 1, 'admin/users/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\",\"email\":\"20164841\",\"password\":\"123456\",\"remember_token\":\"gMPnWjR69uz974NMCn6EbUFNWfC4AFNcSIRKjpEIaP4yz88IuHuFAAszGKtb\",\"_token\":\"OV26Pbwwexh1gU33bAYhqS0ZQJY2PGbqglfFhJar\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-19 13:03:58', '2020-04-19 13:03:58');
INSERT INTO `admin_operation_log` VALUES (4072, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:03:58', '2020-04-19 13:03:58');
INSERT INTO `admin_operation_log` VALUES (4073, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 13:04:35', '2020-04-19 13:04:35');
INSERT INTO `admin_operation_log` VALUES (4074, 1, 'admin/users/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\",\"email\":\"20164841\",\"password\":\"123456\",\"remember_token\":\"gMPnWjR69uz974NMCn6EbUFNWfC4AFNcSIRKjpEIaP4yz88IuHuFAAszGKtb\",\"_token\":\"OV26Pbwwexh1gU33bAYhqS0ZQJY2PGbqglfFhJar\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-19 13:04:40', '2020-04-19 13:04:40');
INSERT INTO `admin_operation_log` VALUES (4075, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:04:40', '2020-04-19 13:04:40');
INSERT INTO `admin_operation_log` VALUES (4076, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 13:05:35', '2020-04-19 13:05:35');
INSERT INTO `admin_operation_log` VALUES (4077, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '[]', '2020-04-19 13:05:40', '2020-04-19 13:05:40');
INSERT INTO `admin_operation_log` VALUES (4078, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '[]', '2020-04-19 13:05:42', '2020-04-19 13:05:42');
INSERT INTO `admin_operation_log` VALUES (4079, 1, 'admin/users/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\",\"email\":\"20164841\",\"password\":\"789456\",\"remember_token\":\"Dmmog9pd32a1vG6sMygH4YvIBnI8ELClHCpZuPfM8EZ3WjRkJn7tv0gjF9WB\",\"_token\":\"R2dl8GauEQWYu8g9xTL7moTrBN5dakhLYXWGVtoQ\",\"_method\":\"PUT\"}', '2020-04-19 13:05:53', '2020-04-19 13:05:53');
INSERT INTO `admin_operation_log` VALUES (4080, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:05:53', '2020-04-19 13:05:53');
INSERT INTO `admin_operation_log` VALUES (4081, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:06:43', '2020-04-19 13:06:43');
INSERT INTO `admin_operation_log` VALUES (4082, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 13:06:45', '2020-04-19 13:06:45');
INSERT INTO `admin_operation_log` VALUES (4083, 1, 'admin/users/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\",\"email\":\"20164841\",\"password\":\"789456\",\"remember_token\":\"Dmmog9pd32a1vG6sMygH4YvIBnI8ELClHCpZuPfM8EZ3WjRkJn7tv0gjF9WB\",\"_token\":\"R2dl8GauEQWYu8g9xTL7moTrBN5dakhLYXWGVtoQ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-19 13:06:55', '2020-04-19 13:06:55');
INSERT INTO `admin_operation_log` VALUES (4084, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:06:56', '2020-04-19 13:06:56');
INSERT INTO `admin_operation_log` VALUES (4085, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 13:07:12', '2020-04-19 13:07:12');
INSERT INTO `admin_operation_log` VALUES (4086, 1, 'admin/users/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\",\"email\":\"20164841\",\"password\":\"123456\",\"remember_token\":\"Dmmog9pd32a1vG6sMygH4YvIBnI8ELClHCpZuPfM8EZ3WjRkJn7tv0gjF9WB\",\"_token\":\"R2dl8GauEQWYu8g9xTL7moTrBN5dakhLYXWGVtoQ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-19 13:07:17', '2020-04-19 13:07:17');
INSERT INTO `admin_operation_log` VALUES (4087, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:07:18', '2020-04-19 13:07:18');
INSERT INTO `admin_operation_log` VALUES (4088, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:07:54', '2020-04-19 13:07:54');
INSERT INTO `admin_operation_log` VALUES (4089, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 13:09:25', '2020-04-19 13:09:25');
INSERT INTO `admin_operation_log` VALUES (4090, 1, 'admin/users/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\",\"email\":\"20164841\",\"password\":\"741852\",\"remember_token\":\"Dmmog9pd32a1vG6sMygH4YvIBnI8ELClHCpZuPfM8EZ3WjRkJn7tv0gjF9WB\",\"_token\":\"R2dl8GauEQWYu8g9xTL7moTrBN5dakhLYXWGVtoQ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-19 13:09:35', '2020-04-19 13:09:35');
INSERT INTO `admin_operation_log` VALUES (4091, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:09:36', '2020-04-19 13:09:36');
INSERT INTO `admin_operation_log` VALUES (4092, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:11:58', '2020-04-19 13:11:58');
INSERT INTO `admin_operation_log` VALUES (4093, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:12:00', '2020-04-19 13:12:00');
INSERT INTO `admin_operation_log` VALUES (4094, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 13:12:05', '2020-04-19 13:12:05');
INSERT INTO `admin_operation_log` VALUES (4095, 1, 'admin/users/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\",\"email\":\"20164841\",\"password\":\"123456\",\"remember_token\":\"B0pN5z3d2z697bgBQZNYbHaB6uLHOl8i5GfgScATno1Wdl4yQ3WiDFbG59hK\",\"_token\":\"EjdEKHcbLJXlDbTkQMDIIbOPeWxy02lGEziCAVoR\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-19 13:12:21', '2020-04-19 13:12:21');
INSERT INTO `admin_operation_log` VALUES (4096, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:12:21', '2020-04-19 13:12:21');
INSERT INTO `admin_operation_log` VALUES (4097, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:14:15', '2020-04-19 13:14:15');
INSERT INTO `admin_operation_log` VALUES (4098, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 13:14:18', '2020-04-19 13:14:18');
INSERT INTO `admin_operation_log` VALUES (4099, 1, 'admin/users/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\",\"email\":\"20164841\",\"password\":\"741852\",\"remember_token\":null,\"_token\":\"Gw9qQhLCMM64DYFjccgpZcBNeVJRwz4O8EVlZdsI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-19 13:15:20', '2020-04-19 13:15:20');
INSERT INTO `admin_operation_log` VALUES (4100, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:15:21', '2020-04-19 13:15:21');
INSERT INTO `admin_operation_log` VALUES (4101, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:15:46', '2020-04-19 13:15:46');
INSERT INTO `admin_operation_log` VALUES (4102, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 13:15:48', '2020-04-19 13:15:48');
INSERT INTO `admin_operation_log` VALUES (4103, 1, 'admin/users/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\",\"email\":\"20164841\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"Gw9qQhLCMM64DYFjccgpZcBNeVJRwz4O8EVlZdsI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-19 13:16:09', '2020-04-19 13:16:09');
INSERT INTO `admin_operation_log` VALUES (4104, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:16:09', '2020-04-19 13:16:09');
INSERT INTO `admin_operation_log` VALUES (4105, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:17:46', '2020-04-19 13:17:46');
INSERT INTO `admin_operation_log` VALUES (4106, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 13:17:50', '2020-04-19 13:17:50');
INSERT INTO `admin_operation_log` VALUES (4107, 1, 'admin/users/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\",\"email\":\"20164841\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"v9x8HZWP0kIWU8xlfoDlufU8wrphkQE7c7q2cNXe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-19 13:17:57', '2020-04-19 13:17:57');
INSERT INTO `admin_operation_log` VALUES (4108, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:17:57', '2020-04-19 13:17:57');
INSERT INTO `admin_operation_log` VALUES (4109, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 13:18:57', '2020-04-19 13:18:57');
INSERT INTO `admin_operation_log` VALUES (4110, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '[]', '2020-04-19 13:19:00', '2020-04-19 13:19:00');
INSERT INTO `admin_operation_log` VALUES (4111, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '[]', '2020-04-19 13:22:41', '2020-04-19 13:22:41');
INSERT INTO `admin_operation_log` VALUES (4112, 1, 'admin/users/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\",\"email\":\"20164841\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"v9x8HZWP0kIWU8xlfoDlufU8wrphkQE7c7q2cNXe\",\"_method\":\"PUT\"}', '2020-04-19 13:22:48', '2020-04-19 13:22:48');
INSERT INTO `admin_operation_log` VALUES (4113, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:22:48', '2020-04-19 13:22:48');
INSERT INTO `admin_operation_log` VALUES (4114, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:23:35', '2020-04-19 13:23:35');
INSERT INTO `admin_operation_log` VALUES (4115, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 13:23:37', '2020-04-19 13:23:37');
INSERT INTO `admin_operation_log` VALUES (4116, 1, 'admin/users/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\",\"email\":\"20164841\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"v9x8HZWP0kIWU8xlfoDlufU8wrphkQE7c7q2cNXe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-19 13:23:44', '2020-04-19 13:23:44');
INSERT INTO `admin_operation_log` VALUES (4117, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:23:44', '2020-04-19 13:23:44');
INSERT INTO `admin_operation_log` VALUES (4118, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:24:27', '2020-04-19 13:24:27');
INSERT INTO `admin_operation_log` VALUES (4119, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 13:24:32', '2020-04-19 13:24:32');
INSERT INTO `admin_operation_log` VALUES (4120, 1, 'admin/users/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\",\"email\":\"20164841\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"v9x8HZWP0kIWU8xlfoDlufU8wrphkQE7c7q2cNXe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-19 13:24:38', '2020-04-19 13:24:38');
INSERT INTO `admin_operation_log` VALUES (4121, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:24:38', '2020-04-19 13:24:38');
INSERT INTO `admin_operation_log` VALUES (4122, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 13:25:16', '2020-04-19 13:25:16');
INSERT INTO `admin_operation_log` VALUES (4123, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '[]', '2020-04-19 13:25:20', '2020-04-19 13:25:20');
INSERT INTO `admin_operation_log` VALUES (4124, 1, 'admin/users/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\",\"email\":\"20164841\",\"password\":\"789456\",\"remember_token\":null,\"_token\":\"v9x8HZWP0kIWU8xlfoDlufU8wrphkQE7c7q2cNXe\",\"_method\":\"PUT\"}', '2020-04-19 13:25:45', '2020-04-19 13:25:45');
INSERT INTO `admin_operation_log` VALUES (4125, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:25:45', '2020-04-19 13:25:45');
INSERT INTO `admin_operation_log` VALUES (4126, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:27:12', '2020-04-19 13:27:12');
INSERT INTO `admin_operation_log` VALUES (4127, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 13:27:15', '2020-04-19 13:27:15');
INSERT INTO `admin_operation_log` VALUES (4128, 1, 'admin/users/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\",\"email\":\"20164841\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"bRJ76z6Jda4zs6tsc9kEUrty2iASSwmxzEH95KZd\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-19 13:27:22', '2020-04-19 13:27:22');
INSERT INTO `admin_operation_log` VALUES (4129, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:27:22', '2020-04-19 13:27:22');
INSERT INTO `admin_operation_log` VALUES (4130, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:37:41', '2020-04-19 13:37:41');
INSERT INTO `admin_operation_log` VALUES (4131, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 13:37:43', '2020-04-19 13:37:43');
INSERT INTO `admin_operation_log` VALUES (4132, 1, 'admin/users/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\",\"email\":\"20164841\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"RTFOFXbRbBZr4g7bhz2wqmR0QlcHDRwVu2ZRX4j3\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-19 13:37:51', '2020-04-19 13:37:51');
INSERT INTO `admin_operation_log` VALUES (4133, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:37:51', '2020-04-19 13:37:51');
INSERT INTO `admin_operation_log` VALUES (4134, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 13:38:20', '2020-04-19 13:38:20');
INSERT INTO `admin_operation_log` VALUES (4135, 1, 'admin/users/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\",\"email\":\"20164841\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"RTFOFXbRbBZr4g7bhz2wqmR0QlcHDRwVu2ZRX4j3\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-19 13:38:25', '2020-04-19 13:38:25');
INSERT INTO `admin_operation_log` VALUES (4136, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:38:25', '2020-04-19 13:38:25');
INSERT INTO `admin_operation_log` VALUES (4137, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 13:42:42', '2020-04-19 13:42:42');
INSERT INTO `admin_operation_log` VALUES (4138, 1, 'admin/users/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\",\"email\":\"20164841\",\"password\":\"741852\",\"remember_token\":\"8AFt3tbjv1SCSMEd8A6Ca3XKPaImHavkDOy2XJJ83Di8NXETFGOojfclhW55\",\"_token\":\"XAU03rbiBV5fyFJOFkt4M0XF2nPIUd6L8qZDSpHS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-19 13:42:50', '2020-04-19 13:42:50');
INSERT INTO `admin_operation_log` VALUES (4139, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:42:51', '2020-04-19 13:42:51');
INSERT INTO `admin_operation_log` VALUES (4140, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 13:43:52', '2020-04-19 13:43:52');
INSERT INTO `admin_operation_log` VALUES (4141, 1, 'admin/users/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\",\"email\":\"20164841\",\"password\":\"789456\",\"remember_token\":\"W8B2SNjw17a2Vx5wHwRiYo585s39e6uEAm8AzSvyH7mx9ggOBGhLHAB32tFX\",\"_token\":\"oDuCrcIYp6ZwNuNNl2Fbb8NY3euZDUXjDRAIh8Na\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-19 13:44:00', '2020-04-19 13:44:00');
INSERT INTO `admin_operation_log` VALUES (4142, 1, 'admin/users/4', 'GET', '127.0.0.1', '[]', '2020-04-19 13:44:24', '2020-04-19 13:44:24');
INSERT INTO `admin_operation_log` VALUES (4143, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 13:44:28', '2020-04-19 13:44:28');
INSERT INTO `admin_operation_log` VALUES (4144, 1, 'admin/users/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\",\"email\":\"20164841\",\"password\":\"123456\",\"remember_token\":\"W8B2SNjw17a2Vx5wHwRiYo585s39e6uEAm8AzSvyH7mx9ggOBGhLHAB32tFX\",\"_token\":\"oDuCrcIYp6ZwNuNNl2Fbb8NY3euZDUXjDRAIh8Na\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\\/4\"}', '2020-04-19 13:44:35', '2020-04-19 13:44:35');
INSERT INTO `admin_operation_log` VALUES (4145, 1, 'admin/users/4', 'GET', '127.0.0.1', '[]', '2020-04-19 13:45:47', '2020-04-19 13:45:47');
INSERT INTO `admin_operation_log` VALUES (4146, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 13:45:49', '2020-04-19 13:45:49');
INSERT INTO `admin_operation_log` VALUES (4147, 1, 'admin/users/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\",\"email\":\"20164841\",\"password\":\"785463\",\"remember_token\":\"W8B2SNjw17a2Vx5wHwRiYo585s39e6uEAm8AzSvyH7mx9ggOBGhLHAB32tFX\",\"_token\":\"oDuCrcIYp6ZwNuNNl2Fbb8NY3euZDUXjDRAIh8Na\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\\/4\"}', '2020-04-19 13:46:00', '2020-04-19 13:46:00');
INSERT INTO `admin_operation_log` VALUES (4148, 1, 'admin/users/4', 'GET', '127.0.0.1', '[]', '2020-04-19 13:50:37', '2020-04-19 13:50:37');
INSERT INTO `admin_operation_log` VALUES (4149, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 13:50:39', '2020-04-19 13:50:39');
INSERT INTO `admin_operation_log` VALUES (4150, 1, 'admin/users/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\",\"email\":\"20164841\",\"password\":\"789456\",\"remember_token\":\"W8B2SNjw17a2Vx5wHwRiYo585s39e6uEAm8AzSvyH7mx9ggOBGhLHAB32tFX\",\"_token\":\"oDuCrcIYp6ZwNuNNl2Fbb8NY3euZDUXjDRAIh8Na\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\\/4\"}', '2020-04-19 13:50:49', '2020-04-19 13:50:49');
INSERT INTO `admin_operation_log` VALUES (4151, 1, 'admin/users/4', 'GET', '127.0.0.1', '[]', '2020-04-19 13:51:17', '2020-04-19 13:51:17');
INSERT INTO `admin_operation_log` VALUES (4152, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 13:51:19', '2020-04-19 13:51:19');
INSERT INTO `admin_operation_log` VALUES (4153, 1, 'admin/users/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\",\"email\":\"20164841\",\"password\":\"777888\",\"remember_token\":\"W8B2SNjw17a2Vx5wHwRiYo585s39e6uEAm8AzSvyH7mx9ggOBGhLHAB32tFX\",\"_token\":\"oDuCrcIYp6ZwNuNNl2Fbb8NY3euZDUXjDRAIh8Na\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\\/4\"}', '2020-04-19 13:51:29', '2020-04-19 13:51:29');
INSERT INTO `admin_operation_log` VALUES (4154, 1, 'admin/users/4', 'GET', '127.0.0.1', '[]', '2020-04-19 13:52:33', '2020-04-19 13:52:33');
INSERT INTO `admin_operation_log` VALUES (4155, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 13:52:36', '2020-04-19 13:52:36');
INSERT INTO `admin_operation_log` VALUES (4156, 1, 'admin/users/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\",\"email\":\"20164841\",\"password\":\"777888\",\"remember_token\":\"W8B2SNjw17a2Vx5wHwRiYo585s39e6uEAm8AzSvyH7mx9ggOBGhLHAB32tFX\",\"_token\":\"oDuCrcIYp6ZwNuNNl2Fbb8NY3euZDUXjDRAIh8Na\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\\/4\"}', '2020-04-19 13:52:43', '2020-04-19 13:52:43');
INSERT INTO `admin_operation_log` VALUES (4157, 1, 'admin/users/4', 'GET', '127.0.0.1', '[]', '2020-04-19 13:53:04', '2020-04-19 13:53:04');
INSERT INTO `admin_operation_log` VALUES (4158, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 13:53:06', '2020-04-19 13:53:06');
INSERT INTO `admin_operation_log` VALUES (4159, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '[]', '2020-04-19 13:53:15', '2020-04-19 13:53:15');
INSERT INTO `admin_operation_log` VALUES (4160, 1, 'admin/users/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\",\"email\":\"20164841\",\"password\":\"123456\",\"remember_token\":\"W8B2SNjw17a2Vx5wHwRiYo585s39e6uEAm8AzSvyH7mx9ggOBGhLHAB32tFX\",\"_token\":\"oDuCrcIYp6ZwNuNNl2Fbb8NY3euZDUXjDRAIh8Na\",\"_method\":\"PUT\"}', '2020-04-19 13:53:22', '2020-04-19 13:53:22');
INSERT INTO `admin_operation_log` VALUES (4161, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:53:22', '2020-04-19 13:53:22');
INSERT INTO `admin_operation_log` VALUES (4162, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:53:36', '2020-04-19 13:53:36');
INSERT INTO `admin_operation_log` VALUES (4163, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 13:53:38', '2020-04-19 13:53:38');
INSERT INTO `admin_operation_log` VALUES (4164, 1, 'admin/users/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\",\"email\":\"20164841\",\"password\":\"777888\",\"remember_token\":\"W8B2SNjw17a2Vx5wHwRiYo585s39e6uEAm8AzSvyH7mx9ggOBGhLHAB32tFX\",\"_token\":\"oDuCrcIYp6ZwNuNNl2Fbb8NY3euZDUXjDRAIh8Na\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-19 13:53:43', '2020-04-19 13:53:43');
INSERT INTO `admin_operation_log` VALUES (4165, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:53:43', '2020-04-19 13:53:43');
INSERT INTO `admin_operation_log` VALUES (4166, 1, 'admin/users/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 13:53:57', '2020-04-19 13:53:57');
INSERT INTO `admin_operation_log` VALUES (4167, 1, 'admin/users/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u9038\\u51e1\",\"email\":\"20164841\",\"password\":\"123456\",\"remember_token\":\"dFvx5AqiUMiML8K648Wd6tATzwwGbmuot1EYrqWuP6ajQh8z6CyC81fvD5Sc\",\"_token\":\"i5hYdnmTLsxeO0N3KMqKPrDTxoCTmyZEFivFEPqZ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-19 13:54:02', '2020-04-19 13:54:02');
INSERT INTO `admin_operation_log` VALUES (4168, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:54:02', '2020-04-19 13:54:02');
INSERT INTO `admin_operation_log` VALUES (4169, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 13:55:10', '2020-04-19 13:55:10');
INSERT INTO `admin_operation_log` VALUES (4170, 1, 'admin/users', 'POST', '127.0.0.1', '{\"name\":\"\\u66fe\\u8001\\u5e08\",\"email\":\"zeng\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"azb3lWPTEf8Wy9OoC9bpVHFQliWdOtZLyHNagzq6\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-19 13:55:26', '2020-04-19 13:55:26');
INSERT INTO `admin_operation_log` VALUES (4171, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:55:26', '2020-04-19 13:55:26');
INSERT INTO `admin_operation_log` VALUES (4172, 1, 'admin/users/22/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 13:55:49', '2020-04-19 13:55:49');
INSERT INTO `admin_operation_log` VALUES (4173, 1, 'admin/users/22', 'PUT', '127.0.0.1', '{\"name\":\"\\u8096\\u8001\\u5e08\",\"email\":\"xiao\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"azb3lWPTEf8Wy9OoC9bpVHFQliWdOtZLyHNagzq6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-19 13:55:54', '2020-04-19 13:55:54');
INSERT INTO `admin_operation_log` VALUES (4174, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-19 13:55:54', '2020-04-19 13:55:54');
INSERT INTO `admin_operation_log` VALUES (4175, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-19 13:59:27', '2020-04-19 13:59:27');
INSERT INTO `admin_operation_log` VALUES (4176, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-20 08:39:27', '2020-04-20 08:39:27');
INSERT INTO `admin_operation_log` VALUES (4177, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-20 08:39:35', '2020-04-20 08:39:35');
INSERT INTO `admin_operation_log` VALUES (4178, 1, 'admin/users/21/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-20 08:39:39', '2020-04-20 08:39:39');
INSERT INTO `admin_operation_log` VALUES (4179, 1, 'admin/users/21', 'PUT', '127.0.0.1', '{\"name\":\"\\u738b\\u8001\\u5e08\",\"email\":\"wang\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"r46WKiLjbi4NaYQwAi95Ma8aV91eeK9MXVKIUAIs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2020-04-20 08:39:44', '2020-04-20 08:39:44');
INSERT INTO `admin_operation_log` VALUES (4180, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-20 08:39:44', '2020-04-20 08:39:44');
INSERT INTO `admin_operation_log` VALUES (4181, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-20 11:04:59', '2020-04-20 11:04:59');
INSERT INTO `admin_operation_log` VALUES (4182, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-21 08:11:24', '2020-04-21 08:11:24');
INSERT INTO `admin_operation_log` VALUES (4183, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-21 08:11:28', '2020-04-21 08:11:28');
INSERT INTO `admin_operation_log` VALUES (4184, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-21 08:42:16', '2020-04-21 08:42:16');
INSERT INTO `admin_operation_log` VALUES (4185, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-21 08:45:47', '2020-04-21 08:45:47');
INSERT INTO `admin_operation_log` VALUES (4186, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-21 08:45:49', '2020-04-21 08:45:49');
INSERT INTO `admin_operation_log` VALUES (4187, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-21 08:45:52', '2020-04-21 08:45:52');
INSERT INTO `admin_operation_log` VALUES (4188, 1, 'admin/squads/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-21 08:45:54', '2020-04-21 08:45:54');
INSERT INTO `admin_operation_log` VALUES (4189, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-21 08:45:56', '2020-04-21 08:45:56');
INSERT INTO `admin_operation_log` VALUES (4190, 1, 'admin/squads/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-21 08:45:57', '2020-04-21 08:45:57');
INSERT INTO `admin_operation_log` VALUES (4191, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-21 08:45:59', '2020-04-21 08:45:59');
INSERT INTO `admin_operation_log` VALUES (4192, 1, 'admin/squads/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-21 08:46:23', '2020-04-21 08:46:23');
INSERT INTO `admin_operation_log` VALUES (4193, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-21 08:47:35', '2020-04-21 08:47:35');
INSERT INTO `admin_operation_log` VALUES (4194, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-21 08:48:10', '2020-04-21 08:48:10');
INSERT INTO `admin_operation_log` VALUES (4195, 1, 'admin/squads/1', 'GET', '127.0.0.1', '[]', '2020-04-21 08:48:55', '2020-04-21 08:48:55');
INSERT INTO `admin_operation_log` VALUES (4196, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-21 08:55:48', '2020-04-21 08:55:48');
INSERT INTO `admin_operation_log` VALUES (4197, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"38\",\"_model\":\"App_Models_AdminUser\",\"_token\":\"GcbO5fgtEtADuJXYu6ItBvYkxLSJKw5n5VkgTUfR\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-04-21 08:56:16', '2020-04-21 08:56:16');
INSERT INTO `admin_operation_log` VALUES (4198, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-21 08:56:16', '2020-04-21 08:56:16');
INSERT INTO `admin_operation_log` VALUES (4199, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-21 08:56:20', '2020-04-21 08:56:20');
INSERT INTO `admin_operation_log` VALUES (4200, 1, 'admin/squads', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-21 08:56:25', '2020-04-21 08:56:25');
INSERT INTO `admin_operation_log` VALUES (4201, 1, 'admin/squads/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-21 08:56:28', '2020-04-21 08:56:28');
INSERT INTO `admin_operation_log` VALUES (4202, 1, 'admin/squads/2', 'GET', '127.0.0.1', '[]', '2020-04-21 08:56:32', '2020-04-21 08:56:32');
INSERT INTO `admin_operation_log` VALUES (4203, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-21 08:56:39', '2020-04-21 08:56:39');
INSERT INTO `admin_operation_log` VALUES (4204, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-21 08:56:46', '2020-04-21 08:56:46');
INSERT INTO `admin_operation_log` VALUES (4205, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-21 08:56:49', '2020-04-21 08:56:49');
INSERT INTO `admin_operation_log` VALUES (4206, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"GcbO5fgtEtADuJXYu6ItBvYkxLSJKw5n5VkgTUfR\",\"_action\":\"App_Admin_Actions_AdminUser_ImportTeachers\"}', '2020-04-21 08:58:14', '2020-04-21 08:58:14');
INSERT INTO `admin_operation_log` VALUES (4207, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-21 08:58:15', '2020-04-21 08:58:15');
INSERT INTO `admin_operation_log` VALUES (4208, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-21 08:58:24', '2020-04-21 08:58:24');
INSERT INTO `admin_operation_log` VALUES (4209, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-21 11:55:41', '2020-04-21 11:55:41');
INSERT INTO `admin_operation_log` VALUES (4210, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-22 14:02:12', '2020-04-22 14:02:12');
INSERT INTO `admin_operation_log` VALUES (4211, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-22 14:02:20', '2020-04-22 14:02:20');
INSERT INTO `admin_operation_log` VALUES (4212, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-22 14:02:25', '2020-04-22 14:02:25');
INSERT INTO `admin_operation_log` VALUES (4213, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-22 14:09:27', '2020-04-22 14:09:27');
INSERT INTO `admin_operation_log` VALUES (4214, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-22 14:09:29', '2020-04-22 14:09:29');
INSERT INTO `admin_operation_log` VALUES (4215, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-22 14:09:33', '2020-04-22 14:09:33');
INSERT INTO `admin_operation_log` VALUES (4216, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-22 14:09:37', '2020-04-22 14:09:37');
INSERT INTO `admin_operation_log` VALUES (4217, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-22 14:09:56', '2020-04-22 14:09:56');
INSERT INTO `admin_operation_log` VALUES (4218, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-22 14:09:59', '2020-04-22 14:09:59');
INSERT INTO `admin_operation_log` VALUES (4219, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-22 14:13:32', '2020-04-22 14:13:32');
INSERT INTO `admin_operation_log` VALUES (4220, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-22 14:13:43', '2020-04-22 14:13:43');
INSERT INTO `admin_operation_log` VALUES (4221, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-22 14:13:53', '2020-04-22 14:13:53');
INSERT INTO `admin_operation_log` VALUES (4222, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-22 14:13:58', '2020-04-22 14:13:58');
INSERT INTO `admin_operation_log` VALUES (4223, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-23 01:01:21', '2020-04-23 01:01:21');
INSERT INTO `admin_operation_log` VALUES (4224, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 01:01:25', '2020-04-23 01:01:25');
INSERT INTO `admin_operation_log` VALUES (4225, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 01:01:29', '2020-04-23 01:01:29');
INSERT INTO `admin_operation_log` VALUES (4226, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 01:29:05', '2020-04-23 01:29:05');
INSERT INTO `admin_operation_log` VALUES (4227, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 06:53:18', '2020-04-23 06:53:18');
INSERT INTO `admin_operation_log` VALUES (4228, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 06:53:24', '2020-04-23 06:53:24');
INSERT INTO `admin_operation_log` VALUES (4229, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 06:53:26', '2020-04-23 06:53:26');
INSERT INTO `admin_operation_log` VALUES (4230, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 06:53:28', '2020-04-23 06:53:28');
INSERT INTO `admin_operation_log` VALUES (4231, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 06:55:33', '2020-04-23 06:55:33');
INSERT INTO `admin_operation_log` VALUES (4232, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 06:55:36', '2020-04-23 06:55:36');
INSERT INTO `admin_operation_log` VALUES (4233, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 06:55:59', '2020-04-23 06:55:59');
INSERT INTO `admin_operation_log` VALUES (4234, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 06:56:01', '2020-04-23 06:56:01');
INSERT INTO `admin_operation_log` VALUES (4235, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 06:58:42', '2020-04-23 06:58:42');
INSERT INTO `admin_operation_log` VALUES (4236, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 06:58:44', '2020-04-23 06:58:44');
INSERT INTO `admin_operation_log` VALUES (4237, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 07:00:17', '2020-04-23 07:00:17');
INSERT INTO `admin_operation_log` VALUES (4238, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 07:00:20', '2020-04-23 07:00:20');
INSERT INTO `admin_operation_log` VALUES (4239, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-23 07:29:53', '2020-04-23 07:29:53');
INSERT INTO `admin_operation_log` VALUES (4240, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 07:30:02', '2020-04-23 07:30:02');
INSERT INTO `admin_operation_log` VALUES (4241, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 07:30:07', '2020-04-23 07:30:07');
INSERT INTO `admin_operation_log` VALUES (4242, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 07:30:19', '2020-04-23 07:30:19');
INSERT INTO `admin_operation_log` VALUES (4243, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 07:30:21', '2020-04-23 07:30:21');
INSERT INTO `admin_operation_log` VALUES (4244, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 07:30:47', '2020-04-23 07:30:47');
INSERT INTO `admin_operation_log` VALUES (4245, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 07:30:49', '2020-04-23 07:30:49');
INSERT INTO `admin_operation_log` VALUES (4246, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 07:31:03', '2020-04-23 07:31:03');
INSERT INTO `admin_operation_log` VALUES (4247, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 07:35:48', '2020-04-23 07:35:48');
INSERT INTO `admin_operation_log` VALUES (4248, 1, 'admin/formula-lefts', 'POST', '127.0.0.1', '{\"name\":\"\\u5e73\\u65f6\\u5206\",\"course_id\":\"1\",\"pid\":\"1\",\"metaCalTypes\":[\"1\",\"2\",\"3\",null],\"_token\":\"A4KJJlTnjnc4mmHE8CNPeadeFdU9iCwSSkMr11GP\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/formula-lefts\"}', '2020-04-23 07:36:02', '2020-04-23 07:36:02');
INSERT INTO `admin_operation_log` VALUES (4249, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-23 07:36:02', '2020-04-23 07:36:02');
INSERT INTO `admin_operation_log` VALUES (4250, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 07:36:05', '2020-04-23 07:36:05');
INSERT INTO `admin_operation_log` VALUES (4251, 1, 'admin/formula-lefts/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u603b\\u5206\",\"course_id\":\"1\",\"pid\":\"0\",\"metaCalTypes\":[\"1\",\"2\",\"3\",\"4\",null],\"_token\":\"A4KJJlTnjnc4mmHE8CNPeadeFdU9iCwSSkMr11GP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/formula-lefts\"}', '2020-04-23 07:36:12', '2020-04-23 07:36:12');
INSERT INTO `admin_operation_log` VALUES (4252, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-23 07:36:13', '2020-04-23 07:36:13');
INSERT INTO `admin_operation_log` VALUES (4253, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 07:36:16', '2020-04-23 07:36:16');
INSERT INTO `admin_operation_log` VALUES (4254, 1, 'admin/formula-lefts', 'POST', '127.0.0.1', '{\"name\":\"\\u5b9e\\u9a8c\\u5206\",\"course_id\":\"1\",\"pid\":\"1\",\"metaCalTypes\":[\"2\",null],\"_token\":\"A4KJJlTnjnc4mmHE8CNPeadeFdU9iCwSSkMr11GP\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/formula-lefts\"}', '2020-04-23 07:36:35', '2020-04-23 07:36:35');
INSERT INTO `admin_operation_log` VALUES (4255, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-23 07:36:36', '2020-04-23 07:36:36');
INSERT INTO `admin_operation_log` VALUES (4256, 1, 'admin/formula-lefts/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 07:36:38', '2020-04-23 07:36:38');
INSERT INTO `admin_operation_log` VALUES (4257, 1, 'admin/formula-lefts/5', 'PUT', '127.0.0.1', '{\"name\":\"\\u5e73\\u65f6\\u5206\",\"course_id\":\"1\",\"pid\":\"0\",\"metaCalTypes\":[\"1\",\"3\",null],\"_token\":\"A4KJJlTnjnc4mmHE8CNPeadeFdU9iCwSSkMr11GP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/formula-lefts\"}', '2020-04-23 07:36:43', '2020-04-23 07:36:43');
INSERT INTO `admin_operation_log` VALUES (4258, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-23 07:36:43', '2020-04-23 07:36:43');
INSERT INTO `admin_operation_log` VALUES (4259, 1, 'admin/formula-lefts/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 08:18:01', '2020-04-23 08:18:01');
INSERT INTO `admin_operation_log` VALUES (4260, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 08:18:08', '2020-04-23 08:18:08');
INSERT INTO `admin_operation_log` VALUES (4261, 1, 'admin/formula-lefts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 08:18:10', '2020-04-23 08:18:10');
INSERT INTO `admin_operation_log` VALUES (4262, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 08:18:22', '2020-04-23 08:18:22');
INSERT INTO `admin_operation_log` VALUES (4263, 1, 'admin/formula-lefts/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 08:18:24', '2020-04-23 08:18:24');
INSERT INTO `admin_operation_log` VALUES (4264, 1, 'admin/formula-lefts/5', 'PUT', '127.0.0.1', '{\"name\":\"\\u5e73\\u65f6\\u5206\",\"course_id\":\"1\",\"pid\":\"1\",\"metaCalTypes\":[\"1\",\"3\",null],\"_token\":\"z7fwYKczk6GJFZKyDQNHaVNXk9eRejQ2H4J9MgFD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/formula-lefts\"}', '2020-04-23 08:18:39', '2020-04-23 08:18:39');
INSERT INTO `admin_operation_log` VALUES (4265, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-23 08:18:40', '2020-04-23 08:18:40');
INSERT INTO `admin_operation_log` VALUES (4266, 1, 'admin/formula-lefts/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 08:19:01', '2020-04-23 08:19:01');
INSERT INTO `admin_operation_log` VALUES (4267, 1, 'admin/formula-lefts/5/edit', 'GET', '127.0.0.1', '[]', '2020-04-23 08:25:33', '2020-04-23 08:25:33');
INSERT INTO `admin_operation_log` VALUES (4268, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 08:25:40', '2020-04-23 08:25:40');
INSERT INTO `admin_operation_log` VALUES (4269, 1, 'admin/formula-lefts/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 08:25:45', '2020-04-23 08:25:45');
INSERT INTO `admin_operation_log` VALUES (4270, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 08:25:50', '2020-04-23 08:25:50');
INSERT INTO `admin_operation_log` VALUES (4271, 1, 'admin/formula-lefts/5', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 08:25:52', '2020-04-23 08:25:52');
INSERT INTO `admin_operation_log` VALUES (4272, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 08:25:58', '2020-04-23 08:25:58');
INSERT INTO `admin_operation_log` VALUES (4273, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-23 08:27:01', '2020-04-23 08:27:01');
INSERT INTO `admin_operation_log` VALUES (4274, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 08:27:04', '2020-04-23 08:27:04');
INSERT INTO `admin_operation_log` VALUES (4275, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 08:27:07', '2020-04-23 08:27:07');
INSERT INTO `admin_operation_log` VALUES (4276, 1, 'admin/formula-lefts/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 08:27:10', '2020-04-23 08:27:10');
INSERT INTO `admin_operation_log` VALUES (4277, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 08:27:18', '2020-04-23 08:27:18');
INSERT INTO `admin_operation_log` VALUES (4278, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-23 08:27:53', '2020-04-23 08:27:53');
INSERT INTO `admin_operation_log` VALUES (4279, 1, 'admin/formula-lefts/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 08:27:56', '2020-04-23 08:27:56');
INSERT INTO `admin_operation_log` VALUES (4280, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 08:28:02', '2020-04-23 08:28:02');
INSERT INTO `admin_operation_log` VALUES (4281, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-23 08:28:22', '2020-04-23 08:28:22');
INSERT INTO `admin_operation_log` VALUES (4282, 1, 'admin/formula-lefts/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 08:29:11', '2020-04-23 08:29:11');
INSERT INTO `admin_operation_log` VALUES (4283, 1, 'admin/formula-lefts/5/edit', 'GET', '127.0.0.1', '[]', '2020-04-23 08:30:12', '2020-04-23 08:30:12');
INSERT INTO `admin_operation_log` VALUES (4284, 1, 'admin/formula-lefts/5/edit', 'GET', '127.0.0.1', '[]', '2020-04-23 08:32:13', '2020-04-23 08:32:13');
INSERT INTO `admin_operation_log` VALUES (4285, 1, 'admin/formula-lefts/5/edit', 'GET', '127.0.0.1', '[]', '2020-04-23 08:33:10', '2020-04-23 08:33:10');
INSERT INTO `admin_operation_log` VALUES (4286, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 08:33:16', '2020-04-23 08:33:16');
INSERT INTO `admin_operation_log` VALUES (4287, 1, 'admin/formula-lefts/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 08:33:20', '2020-04-23 08:33:20');
INSERT INTO `admin_operation_log` VALUES (4288, 1, 'admin/formula-lefts/5/edit', 'GET', '127.0.0.1', '[]', '2020-04-23 08:34:33', '2020-04-23 08:34:33');
INSERT INTO `admin_operation_log` VALUES (4289, 1, 'admin/formula-lefts/5/edit', 'GET', '127.0.0.1', '[]', '2020-04-23 08:36:27', '2020-04-23 08:36:27');
INSERT INTO `admin_operation_log` VALUES (4290, 1, 'admin/formula-lefts/5/edit', 'GET', '127.0.0.1', '[]', '2020-04-23 08:36:38', '2020-04-23 08:36:38');
INSERT INTO `admin_operation_log` VALUES (4291, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 08:38:03', '2020-04-23 08:38:03');
INSERT INTO `admin_operation_log` VALUES (4292, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 08:38:07', '2020-04-23 08:38:07');
INSERT INTO `admin_operation_log` VALUES (4293, 1, 'admin/formula-lefts/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u603b\\u5206\",\"course_id\":\"1\",\"pid\":\"0\",\"metaCalTypes\":[\"1\",\"2\",null],\"_token\":\"z7fwYKczk6GJFZKyDQNHaVNXk9eRejQ2H4J9MgFD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/formula-lefts\"}', '2020-04-23 08:38:13', '2020-04-23 08:38:13');
INSERT INTO `admin_operation_log` VALUES (4294, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-23 08:38:13', '2020-04-23 08:38:13');
INSERT INTO `admin_operation_log` VALUES (4295, 1, 'admin/formula-lefts/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 08:38:23', '2020-04-23 08:38:23');
INSERT INTO `admin_operation_log` VALUES (4296, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 08:38:26', '2020-04-23 08:38:26');
INSERT INTO `admin_operation_log` VALUES (4297, 1, 'admin/formula-lefts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 08:38:29', '2020-04-23 08:38:29');
INSERT INTO `admin_operation_log` VALUES (4298, 1, 'admin/formula-lefts/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u603b\\u5206\",\"course_id\":\"1\",\"pid\":\"0\",\"metaCalTypes\":[\"1\",\"2\",\"3\",\"4\",null],\"_token\":\"z7fwYKczk6GJFZKyDQNHaVNXk9eRejQ2H4J9MgFD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/formula-lefts\"}', '2020-04-23 08:38:36', '2020-04-23 08:38:36');
INSERT INTO `admin_operation_log` VALUES (4299, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-23 08:38:36', '2020-04-23 08:38:36');
INSERT INTO `admin_operation_log` VALUES (4300, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 08:38:54', '2020-04-23 08:38:54');
INSERT INTO `admin_operation_log` VALUES (4301, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 08:39:00', '2020-04-23 08:39:00');
INSERT INTO `admin_operation_log` VALUES (4302, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-23 08:48:37', '2020-04-23 08:48:37');
INSERT INTO `admin_operation_log` VALUES (4303, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-23 08:49:01', '2020-04-23 08:49:01');
INSERT INTO `admin_operation_log` VALUES (4304, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-23 08:49:57', '2020-04-23 08:49:57');
INSERT INTO `admin_operation_log` VALUES (4305, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-23 08:50:07', '2020-04-23 08:50:07');
INSERT INTO `admin_operation_log` VALUES (4306, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '[]', '2020-04-23 08:50:33', '2020-04-23 08:50:33');
INSERT INTO `admin_operation_log` VALUES (4307, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-24 01:09:07', '2020-04-24 01:09:07');
INSERT INTO `admin_operation_log` VALUES (4308, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 01:09:13', '2020-04-24 01:09:13');
INSERT INTO `admin_operation_log` VALUES (4309, 1, 'admin/formula-lefts/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 01:09:17', '2020-04-24 01:09:17');
INSERT INTO `admin_operation_log` VALUES (4310, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 01:09:25', '2020-04-24 01:09:25');
INSERT INTO `admin_operation_log` VALUES (4311, 1, 'admin/formula-lefts/5', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 01:09:29', '2020-04-24 01:09:29');
INSERT INTO `admin_operation_log` VALUES (4312, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 01:09:32', '2020-04-24 01:09:32');
INSERT INTO `admin_operation_log` VALUES (4313, 1, 'admin/formula-lefts/6', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 01:09:35', '2020-04-24 01:09:35');
INSERT INTO `admin_operation_log` VALUES (4314, 1, 'admin/formula-lefts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 01:09:37', '2020-04-24 01:09:37');
INSERT INTO `admin_operation_log` VALUES (4315, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 01:13:46', '2020-04-24 01:13:46');
INSERT INTO `admin_operation_log` VALUES (4316, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"student\":{\"name\":\"\\u738b\"},\"course\":{\"full_name\":\"\\u8ba1\\u7b97\\u673a\\u7f51\\u7edc\"},\"metaCalType\":{\"name\":null},\"order\":null}', '2020-04-24 01:14:03', '2020-04-24 01:14:03');
INSERT INTO `admin_operation_log` VALUES (4317, 1, 'admin/fractions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"student\":{\"name\":\"\\u738b\"},\"course\":{\"full_name\":\"\\u8ba1\\u7b97\\u673a\\u7f51\\u7edc\"},\"metaCalType\":{\"name\":null},\"order\":null}', '2020-04-24 01:14:06', '2020-04-24 01:14:06');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_permissions_slug_unique`(`slug`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES (1, '所有权限——超管', '*', '', '*', NULL, '2020-04-14 11:34:24');
INSERT INTO `admin_permissions` VALUES (2, '首页', 'dashboard', 'GET', '/', NULL, '2020-04-14 11:33:52');
INSERT INTO `admin_permissions` VALUES (3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (6, '文章列表界面', 'article.list', '', '/articles', '2020-04-12 05:53:50', '2020-04-12 07:23:29');
INSERT INTO `admin_permissions` VALUES (7, '文章新增按钮', 'article.createBtn', 'HEAD', '/articles', '2020-04-12 06:40:11', '2020-04-12 06:45:53');
INSERT INTO `admin_permissions` VALUES (8, '文章新增界面', 'article.create', '', '/articles/create', '2020-04-12 06:54:25', '2020-04-12 06:54:25');
INSERT INTO `admin_permissions` VALUES (9, '文章展示界面', 'article.view', '', '/articles/*', '2020-04-12 07:23:21', '2020-04-12 07:52:08');
INSERT INTO `admin_permissions` VALUES (10, '文章修改界面', 'article.edit', '', '/articles/*/edit', '2020-04-12 07:57:37', '2020-04-12 07:57:37');
INSERT INTO `admin_permissions` VALUES (11, '评论新增界面', 'comments.create', '', '/comments/create*', '2020-04-12 08:03:57', '2020-04-12 08:03:57');
INSERT INTO `admin_permissions` VALUES (12, '评论列表页', 'comments.list', '', '/comments', '2020-04-12 12:07:54', '2020-04-12 12:13:58');
INSERT INTO `admin_permissions` VALUES (13, '评论新增按钮', 'comments.createBtn', 'HEAD', '/admin/comments', '2020-04-12 12:11:21', '2020-04-12 12:14:03');
INSERT INTO `admin_permissions` VALUES (14, '专业列表界面', 'professions.list', '', '/professions', '2020-04-14 08:08:06', '2020-04-14 08:08:06');
INSERT INTO `admin_permissions` VALUES (15, '专业新增按钮', 'professions.createBtn', 'HEAD', '/professions', '2020-04-14 08:19:34', '2020-04-14 08:19:34');
INSERT INTO `admin_permissions` VALUES (16, '专业显示按钮', 'professions.viewBtn', 'HEAD', '/professions', '2020-04-14 08:23:08', '2020-04-14 08:23:08');
INSERT INTO `admin_permissions` VALUES (17, '专业编辑按钮', 'professions.editBtn', 'HEAD', '/professions', '2020-04-14 08:23:42', '2020-04-14 08:23:42');
INSERT INTO `admin_permissions` VALUES (18, '专业删除按钮', 'professions.deleteBtn', 'HEAD', '/professions', '2020-04-14 08:24:30', '2020-04-14 08:24:30');
INSERT INTO `admin_permissions` VALUES (19, '班级列表界面', 'squad.list', '', '/squads', '2020-04-14 08:29:23', '2020-04-14 08:29:23');
INSERT INTO `admin_permissions` VALUES (20, '班级新增按钮', 'squad.createBtn', 'HEAD', '/squads', '2020-04-14 08:46:41', '2020-04-14 08:46:41');
INSERT INTO `admin_permissions` VALUES (21, '班级显示按钮', 'squad.viewBtn', 'HEAD', '/squads', '2020-04-14 08:47:14', '2020-04-14 08:47:14');
INSERT INTO `admin_permissions` VALUES (22, '班级编辑按钮', 'squad.editBtn', 'HEAD', '/squads', '2020-04-14 08:48:07', '2020-04-14 08:48:07');
INSERT INTO `admin_permissions` VALUES (23, '班级删除按钮', 'squad.deleteBtn', 'HEAD', '/squads', '2020-04-14 08:48:28', '2020-04-14 08:48:28');
INSERT INTO `admin_permissions` VALUES (24, '班级显示界面', 'squad.view', '', '/squads/*', '2020-04-14 08:53:07', '2020-04-14 08:55:54');
INSERT INTO `admin_permissions` VALUES (25, '学生班级分配按钮', 'student.squad.createBtn', 'HEAD', '/squads', '2020-04-14 08:59:07', '2020-04-14 08:59:07');
INSERT INTO `admin_permissions` VALUES (26, '学生班级删除按钮', 'student.squad.deleteBtn', 'HEAD', '/squads', '2020-04-14 09:01:10', '2020-04-14 09:01:10');
INSERT INTO `admin_permissions` VALUES (27, '课程列表界面', 'course.list', '', '/courses', '2020-04-14 09:11:54', '2020-04-14 09:11:54');
INSERT INTO `admin_permissions` VALUES (28, '课程新增按钮', 'course.createBtn', 'HEAD', '/courses', '2020-04-14 09:16:13', '2020-04-14 09:16:13');
INSERT INTO `admin_permissions` VALUES (29, '课程显示按钮', 'course.viewBtn', 'HEAD', '/courses', '2020-04-14 09:16:43', '2020-04-14 09:16:43');
INSERT INTO `admin_permissions` VALUES (30, '课程编辑按钮', 'course.editBtn', 'HEAD', '/courses', '2020-04-14 09:17:07', '2020-04-14 09:17:07');
INSERT INTO `admin_permissions` VALUES (31, '课程删除按钮', 'course.deleteBtn', 'HEAD', '/courses', '2020-04-14 09:17:34', '2020-04-14 09:17:34');
INSERT INTO `admin_permissions` VALUES (32, '课程显示界面', 'course.view', '', '/courses/*', '2020-04-14 09:20:16', '2020-04-14 09:20:16');
INSERT INTO `admin_permissions` VALUES (33, '分数列表界面', 'fraction.list', '', '/fractions', '2020-04-14 09:23:49', '2020-04-14 09:23:49');
INSERT INTO `admin_permissions` VALUES (34, '分数导入按钮', 'fraction.importBtn', 'HEAD', '/fractions', '2020-04-14 09:27:46', '2020-04-14 09:28:01');
INSERT INTO `admin_permissions` VALUES (35, '分数删除按钮', 'fraction.deleteBtn', 'HEAD', '/fractions', '2020-04-14 09:28:30', '2020-04-14 09:28:30');
INSERT INTO `admin_permissions` VALUES (36, '分数新增按钮', 'fraction.createBtn', 'HEAD', '/fractions', '2020-04-14 09:30:20', '2020-04-14 09:30:20');
INSERT INTO `admin_permissions` VALUES (37, '分数修改按钮', 'fraction.editBtn', 'HEAD', '/fractions', '2020-04-14 09:30:46', '2020-04-14 09:30:46');
INSERT INTO `admin_permissions` VALUES (38, '分数显示按钮', 'fraction.viewBtn', 'HEAD', '/fractions', '2020-04-14 09:31:14', '2020-04-14 09:31:14');
INSERT INTO `admin_permissions` VALUES (39, '前台用户列表界面', 'user.list', '', '/users', '2020-04-14 15:02:41', '2020-04-14 15:02:41');
INSERT INTO `admin_permissions` VALUES (40, '前台用户新增按钮', 'user.createBtn', 'HEAD', '/users', '2020-04-14 15:05:11', '2020-04-14 15:05:11');
INSERT INTO `admin_permissions` VALUES (41, '前台用户显示按钮', 'user.viewBtn', 'HEAD', '/users', '2020-04-14 15:05:46', '2020-04-14 15:05:46');
INSERT INTO `admin_permissions` VALUES (42, '前台用户修改按钮', 'user.editBtn', 'HEAD', '/users', '2020-04-14 15:06:24', '2020-04-14 15:06:24');
INSERT INTO `admin_permissions` VALUES (43, '前台用户删除按钮', 'user.deleteBtn', 'HEAD', '/users', '2020-04-14 15:06:51', '2020-04-14 15:06:51');
INSERT INTO `admin_permissions` VALUES (44, '前台用户修改界面', 'user.edit', '', '/users/*/edit', '2020-04-14 15:10:26', '2020-04-14 15:11:11');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu`  (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_menu_role_id_menu_id_index`(`role_id`, `menu_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES (1, 2, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 22, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (2, 22, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (3, 22, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (4, 22, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 13, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (2, 13, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (3, 13, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (4, 13, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 8, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (2, 8, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (3, 8, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (4, 8, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 10, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (2, 10, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (2, 11, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 11, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 14, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (2, 14, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (3, 14, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (4, 14, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 12, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (2, 12, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 15, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (2, 15, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 18, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (2, 18, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 19, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (2, 19, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (3, 19, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (2, 2, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 16, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (2, 16, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 17, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (2, 17, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 20, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (2, 20, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (3, 11, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (3, 12, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (3, 15, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (3, 2, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 3, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (2, 3, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 26, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (2, 26, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 4, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (2, 4, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 5, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (2, 5, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 6, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (2, 6, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 7, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (2, 7, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (3, 26, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions`  (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_permissions_role_id_permission_id_index`(`role_id`, `permission_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES (1, 1, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 1, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (3, 6, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (3, 13, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (3, 12, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (3, 11, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (3, 7, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (3, 8, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (3, 9, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (3, 10, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (3, 14, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (3, 19, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (3, 21, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (3, 24, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (3, 27, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (3, 29, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (3, 32, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (3, 33, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (3, 2, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (3, 39, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (3, 42, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (3, 44, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users`  (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_users_role_id_user_id_index`(`role_id`, `user_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES (1, 1, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (2, 2, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (3, 3, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (3, 5, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (3, 6, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (3, 7, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (3, 8, '2020-04-07 10:25:57', '2020-04-07 10:25:57');
INSERT INTO `admin_role_users` VALUES (3, 9, '2020-04-07 10:27:44', '2020-04-07 10:27:44');
INSERT INTO `admin_role_users` VALUES (2, 11, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (3, 10, '2020-04-07 12:10:52', '2020-04-07 12:10:52');
INSERT INTO `admin_role_users` VALUES (2, 12, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (3, 14, '2020-04-11 15:07:41', '2020-04-11 15:07:41');
INSERT INTO `admin_role_users` VALUES (3, 20, '2020-04-15 01:56:23', '2020-04-15 01:56:23');
INSERT INTO `admin_role_users` VALUES (3, 19, '2020-04-14 14:42:20', '2020-04-14 14:42:20');
INSERT INTO `admin_role_users` VALUES (2, 39, '2020-04-21 08:58:15', '2020-04-21 08:58:15');

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_roles_slug_unique`(`slug`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES (1, 'Administrator', 'administrator', '2020-04-02 09:56:20', '2020-04-02 09:56:20');
INSERT INTO `admin_roles` VALUES (2, '教师', 'teacher', '2020-04-03 03:37:51', '2020-04-03 03:37:51');
INSERT INTO `admin_roles` VALUES (3, '学生', 'student', '2020-04-05 00:58:07', '2020-04-05 00:58:07');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions`  (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_user_permissions_user_id_permission_id_index`(`user_id`, `permission_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_users_username_unique`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$G6KvI.E8JBaMz.NAukiLm.5Hh9PQ5uIyAKKIPAomiKq/kFI.SVHjG', 'Administrator', 'images/de2c35d5b0d5489ed69a5e58b773f038.png', '5h5BaCSDy9FGh9jARW6nZ97lNYqQflnwabUpEVPAvTSNQvZXyD151ltAJfqq', '2020-04-02 09:56:20', '2020-04-11 07:26:31');
INSERT INTO `admin_users` VALUES (2, 'xiao', '$2y$10$bCMMizVlBS0HoVxhdfhTTO6M7jYPNuAqdoGCNDhseBPeyToV9JQ2W', '肖老师', 'images/d10fb8d673e04c2bfdce01955c59bd47.png', 'Zr64Sv8wqqjV3Ugbq9zzKiw2bDqd770U8vGcu8onSKCqFPs3Zd1MZ3lvntQN', '2020-04-03 03:38:37', '2020-04-03 03:38:37');
INSERT INTO `admin_users` VALUES (3, 'stu1', '$2y$10$2rJM0JsghS/SWvZ8sOoOau1M5SxeH6kfjkh4OcE3TNYTUEjijgE8y', '老王', 'images/48b81e19ac05ccdddcdd5198d961a0af.jpg', 'VJxg0faVs2YNLiLuLCyoepNo7vmwi0a8z7lG8T2LUhANDgqJggQXy7pUuxMe', '2020-04-05 00:58:50', '2020-04-05 00:59:08');
INSERT INTO `admin_users` VALUES (5, 'stu2', '$2y$10$BxC8FWIrJI/ueIxiPGSkrO/MP7gjScGeapa1jyJNywDvp3/hxLRzG', '老裴', NULL, NULL, '2020-04-07 09:06:03', '2020-04-07 09:06:03');
INSERT INTO `admin_users` VALUES (6, 'stu3', '$2y$10$DwzmF66CR8C2AqVZtapjUuN5wtpowLHsZmhfRoBmDqFBVWZKqYWJG', '老吴', NULL, NULL, '2020-04-07 09:07:24', '2020-04-07 09:07:24');
INSERT INTO `admin_users` VALUES (7, 'stu4', '$2y$10$LGmA14AcH8e2gqk8MIuudOMhJcSZP0JnVOptUylFBW0v9A.D8PIC6', '老曹', NULL, NULL, '2020-04-07 09:08:11', '2020-04-07 09:08:11');
INSERT INTO `admin_users` VALUES (8, 'stu5', '$2y$10$qkCwV60HZS1ydVZlti0S3.yaPDgf9m3b6ns12gUpAWoKe3VUI7C4.', '老贾', 'images/unnamed.jpg', NULL, '2020-04-07 10:25:57', '2020-04-07 10:25:57');
INSERT INTO `admin_users` VALUES (9, 'stu6', '$2y$10$2N3sEP.k0wDMJkewZVVz8.p6E1gq27xsCjyT9ZAmfNXHbwKLZrsua', '老杨', 'images/unnamed.jpg', NULL, '2020-04-07 10:27:44', '2020-04-07 10:27:44');
INSERT INTO `admin_users` VALUES (10, 'stu7', '$2y$10$7wymN/KA2qjgnbwsGqEFF.0ErnHE1BGkgGfs7YHXTqa7KDXHyM1Pm', '老张', 'images/unnamed.jpg', NULL, '2020-04-07 12:10:52', '2020-04-07 12:10:52');
INSERT INTO `admin_users` VALUES (11, 'wang', '$2y$10$NYU.o70VMRWwsRriADXkGuGPFpfWqSjCXYGbJwWURG8MysrZnWHU2', '王老师', 'images/ec824c2c054ee5ab460a7ff97474e2ea.png', NULL, '2020-04-10 11:54:47', '2020-04-10 11:54:47');
INSERT INTO `admin_users` VALUES (12, 'yang', '$2y$10$9tXmTa.At5/lsFLTToXxaOQHxd3296vUr.WR3STuFiF2hpK4U/Q46', '杨老师', 'images/217fb57555f27081a859313542fa4136.png', NULL, '2020-04-10 11:55:30', '2020-04-10 11:55:30');
INSERT INTO `admin_users` VALUES (14, 'stu8', '$2y$10$VK6BKZ9.T4gAF.VJPix14.BP9lLB2F//opgMhvoP9I8FajAhh.8q.', '老赵', 'images/unnamed.jpg', NULL, '2020-04-11 15:07:41', '2020-04-11 15:07:41');
INSERT INTO `admin_users` VALUES (20, '20164841', '$2y$10$LMGoadh7rUNLinZu9zWYq.fWTollXE.P98dIrN72uGDzJetfWtVLm', '肖逸凡', 'images/unnamed.jpg', '5CGgIXt4nZmMWloulSRwps53iwYXB0oGPdkW4LPQbVS5s6ORZC1t9kjiP0nj', '2020-04-15 01:56:23', '2020-04-15 01:56:23');
INSERT INTO `admin_users` VALUES (19, '20164843', '$2y$10$GnLav2jMfET87oQcmbeSdOGe9sXXF3wrmN1CgvJjE/fhBr4xCBdCi', '王二妞', 'images/unnamed.jpg', NULL, '2020-04-14 14:42:20', '2020-04-14 14:42:20');
INSERT INTO `admin_users` VALUES (39, 'liu', '$2y$10$jzBdxxPPZFs1pFxDojMfWe0uzbCuVp/jBNAF.Ib6AOrIIaytJ1nHS', '刘若英老师', 'images/unnamed.jpg', NULL, '2020-04-21 08:58:14', '2020-04-21 08:58:14');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `intro` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `banner` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'images/unnamed.jpg',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `article_id_user_id_title_index`(`id`, `user_id`, `title`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, 1, '孤岛惊魂', '讲述了一个在孤岛上发生的惊魂故事', 'images/6956710ee7a7322831f3e6692d59fa75.png', '# 一级标题\r\n## 二级标题\r\n### 三级标题\r\n**加粗**\r\n\r\n| 测试  | 测试  |\r\n| ------------ | ------------ |\r\n| 测试  | 测试  |\r\n| 测试  |  测试 |', '2020-04-02 10:02:01', '2020-04-02 10:03:00');
INSERT INTO `article` VALUES (3, 1, '2020继续加油', '大年三十终于写完这篇总结，给来年定个目标，给今年做个肯定，希望以后每年都有新的总结可写，都有美好的故事发送，加油！！', 'images/unnamed.jpg', '# 新年总结\r\n## 除夕总结\r\n## 初一总结\r\n### 初二总结', '2020-04-04 01:26:29', '2020-04-04 01:26:29');
INSERT INTO `article` VALUES (4, 3, '夏洛特烦恼', '一个叫夏洛的人，他特别地烦恼', 'images/17fcb77f5348e46c041c10ce8875da99.jpg', '# 夏洛\r\n## 就特么你叫夏洛啊', '2020-04-05 07:40:05', '2020-04-05 07:40:05');
INSERT INTO `article` VALUES (5, 3, '老王的日常生活vlog', '主要讲述了老王和邻居的幸福生活', 'images/a599b374c7900f0c75c09637723c2cb0.png', '# 老王的快乐生活\r\n## 自我介绍\r\n> 我叫老王，我很快乐\r\n\r\n## 邻居介绍\r\n\r\n> 我隔壁有个老王，我不太快了', '2020-04-12 07:08:01', '2020-04-12 07:08:01');

-- ----------------------------
-- Table structure for articles_labels
-- ----------------------------
DROP TABLE IF EXISTS `articles_labels`;
CREATE TABLE `articles_labels`  (
  `article_id` int(11) NOT NULL,
  `label_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `articles_labels_article_id_label_id_index`(`article_id`, `label_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of articles_labels
-- ----------------------------
INSERT INTO `articles_labels` VALUES (1, 2, NULL, NULL);
INSERT INTO `articles_labels` VALUES (3, 3, NULL, NULL);
INSERT INTO `articles_labels` VALUES (4, 2, NULL, NULL);
INSERT INTO `articles_labels` VALUES (1, 1, NULL, NULL);
INSERT INTO `articles_labels` VALUES (5, 1, NULL, NULL);

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reply_comment_id` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 1,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (17, 4, 1, 16, 16, 2, '就……就TM我叫夏……夏洛！！', '2020-04-12 09:53:00', '2020-04-12 09:53:00');
INSERT INTO `comments` VALUES (18, 4, 3, 0, 0, 1, '马什么梅', '2020-04-12 12:08:41', '2020-04-12 12:08:41');
INSERT INTO `comments` VALUES (19, 4, 3, 18, 18, 2, '马冬什么', '2020-04-12 12:09:01', '2020-04-12 12:09:01');

-- ----------------------------
-- Table structure for courses
-- ----------------------------
DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `full_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `attribute` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `credit` int(11) NULL DEFAULT NULL,
  `courses_type_id` int(11) NULL DEFAULT NULL,
  `location` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `Schedule_text` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `Schedule_image` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses
-- ----------------------------
INSERT INTO `courses` VALUES (1, '计算机网络', '必修课', 2, 1, '三号教学楼210室', '1~15周，周二上午第二大节、周四下午第一大节', 'images/半翻转课堂实施方案.png', '2020-04-07 13:59:40', '2020-04-07 14:42:44');
INSERT INTO `courses` VALUES (2, '设计模式', '必修课', 1, 2, '三号教学楼208室', '3~14周，周二下午第一大节，周五上午第二大节', 'images/0ea9104c70981c5b7559e2781b208d8a.png', '2020-04-07 14:44:23', '2020-04-07 14:45:32');
INSERT INTO `courses` VALUES (3, 'EDA教学', '必修课', 2, 3, '新实验楼，B区501室', '1~15周，周二上午第二大节、周四下午第一大节', NULL, '2020-04-10 11:50:01', '2020-04-10 11:50:01');
INSERT INTO `courses` VALUES (4, '实验课程-焊接万用表', '必修课', 1, 3, '三号教学楼210室', '1~15周，周二上午第二大节、周四下午第一大节', NULL, '2020-04-10 11:56:17', '2020-04-10 11:56:17');

-- ----------------------------
-- Table structure for courses_types_constant
-- ----------------------------
DROP TABLE IF EXISTS `courses_types_constant`;
CREATE TABLE `courses_types_constant`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses_types_constant
-- ----------------------------
INSERT INTO `courses_types_constant` VALUES (1, '普通型', '只有课堂讲授，无实验、实践等其他课程环节，期末考试课程', '2020-04-07 14:05:19', '2020-04-07 14:05:19');
INSERT INTO `courses_types_constant` VALUES (2, '混合型', '课堂讲授+实验课，期末考试课程', '2020-04-07 14:45:20', '2020-04-07 14:45:20');
INSERT INTO `courses_types_constant` VALUES (3, '实验课', '实验课程', '2020-04-10 11:49:11', '2020-04-10 11:49:11');

-- ----------------------------
-- Table structure for formula_left
-- ----------------------------
DROP TABLE IF EXISTS `formula_left`;
CREATE TABLE `formula_left`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `course_id` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of formula_left
-- ----------------------------
INSERT INTO `formula_left` VALUES (1, '总分', 1, 0, '2020-04-10 13:15:33', '2020-04-10 15:11:22');
INSERT INTO `formula_left` VALUES (5, '平时分', 1, 1, '2020-04-23 07:36:02', '2020-04-23 08:18:39');
INSERT INTO `formula_left` VALUES (6, '实验分', 1, 1, '2020-04-23 07:36:35', '2020-04-23 07:36:35');

-- ----------------------------
-- Table structure for fraction
-- ----------------------------
DROP TABLE IF EXISTS `fraction`;
CREATE TABLE `fraction`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `cal_type_id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `fraction` double NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of fraction
-- ----------------------------
INSERT INTO `fraction` VALUES (1, 3, 1, 1, 1, 100, '2020-04-11 01:56:37', '2020-04-11 01:56:37');
INSERT INTO `fraction` VALUES (2, 3, 1, 1, 2, 100, '2020-04-11 02:56:35', '2020-04-11 02:56:35');
INSERT INTO `fraction` VALUES (3, 3, 1, 1, 3, 100, '2020-04-11 03:02:03', '2020-04-11 03:02:03');
INSERT INTO `fraction` VALUES (4, 3, 1, 1, 4, 100, '2020-04-11 03:03:58', '2020-04-11 03:03:58');
INSERT INTO `fraction` VALUES (5, 3, 1, 1, 5, 100, '2020-04-11 03:14:31', '2020-04-11 03:14:31');
INSERT INTO `fraction` VALUES (6, 3, 1, 1, 6, 100, '2020-04-11 03:26:18', '2020-04-11 03:26:18');
INSERT INTO `fraction` VALUES (7, 3, 1, 1, 7, 100, '2020-04-11 03:27:18', '2020-04-11 03:27:18');
INSERT INTO `fraction` VALUES (8, 5, 1, 1, 1, 100, '2020-04-11 05:44:44', '2020-04-11 05:44:44');
INSERT INTO `fraction` VALUES (9, 6, 1, 1, 1, 100, '2020-04-11 05:47:49', '2020-04-11 05:47:49');
INSERT INTO `fraction` VALUES (10, 6, 1, 1, 2, 100, '2020-04-11 13:58:25', '2020-04-11 13:58:25');
INSERT INTO `fraction` VALUES (18, 6, 1, 1, 3, 100, '2020-04-11 15:07:05', '2020-04-11 15:07:05');

-- ----------------------------
-- Table structure for labels
-- ----------------------------
DROP TABLE IF EXISTS `labels`;
CREATE TABLE `labels`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `content` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `labels_content_unique`(`content`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of labels
-- ----------------------------
INSERT INTO `labels` VALUES (1, '随谈闲笔', '2020-04-05 15:45:50', '2020-04-11 07:08:54');
INSERT INTO `labels` VALUES (2, '故事电影', '2020-04-05 15:46:44', '2020-04-11 07:08:30');
INSERT INTO `labels` VALUES (3, '总结展望', '2020-04-11 07:08:21', '2020-04-11 07:08:21');

-- ----------------------------
-- Table structure for meta_cal
-- ----------------------------
DROP TABLE IF EXISTS `meta_cal`;
CREATE TABLE `meta_cal`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `formula_id` int(11) NOT NULL,
  `cal_type_id` int(11) NOT NULL,
  `number` int(11) NOT NULL DEFAULT 1,
  `proportion` double NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `meta_cal_formula_id_cal_type_id_index`(`formula_id`, `cal_type_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of meta_cal
-- ----------------------------
INSERT INTO `meta_cal` VALUES (1, 1, 1, 5, 0.1, NULL, '2020-04-11 03:37:56');
INSERT INTO `meta_cal` VALUES (7, 5, 1, 1, 0, NULL, NULL);
INSERT INTO `meta_cal` VALUES (13, 1, 4, 1, 0, NULL, NULL);
INSERT INTO `meta_cal` VALUES (5, 1, 2, 1, 0, NULL, NULL);
INSERT INTO `meta_cal` VALUES (9, 5, 3, 1, 0, NULL, NULL);
INSERT INTO `meta_cal` VALUES (12, 1, 3, 1, 0, NULL, NULL);
INSERT INTO `meta_cal` VALUES (11, 6, 2, 1, 0, NULL, NULL);

-- ----------------------------
-- Table structure for meta_cal_type
-- ----------------------------
DROP TABLE IF EXISTS `meta_cal_type`;
CREATE TABLE `meta_cal_type`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of meta_cal_type
-- ----------------------------
INSERT INTO `meta_cal_type` VALUES (1, '考勤', '2020-04-10 15:10:31', '2020-04-10 15:10:49');
INSERT INTO `meta_cal_type` VALUES (2, '实验', '2020-04-10 15:10:42', '2020-04-10 15:10:42');
INSERT INTO `meta_cal_type` VALUES (3, '课后作业', '2020-04-10 15:10:59', '2020-04-10 15:10:59');
INSERT INTO `meta_cal_type` VALUES (4, '期末成绩', '2020-04-10 15:11:07', '2020-04-10 15:11:07');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_01_04_173148_create_admin_tables', 1);
INSERT INTO `migrations` VALUES (4, '2020_04_01_134242_create_article_table', 1);
INSERT INTO `migrations` VALUES (5, '2020_04_02_073944_create_comments_table', 1);
INSERT INTO `migrations` VALUES (6, '2020_04_05_151154_create_labels_table', 2);
INSERT INTO `migrations` VALUES (7, '2020_04_05_152237_create_articles_labels_table', 3);
INSERT INTO `migrations` VALUES (13, '2020_04_06_082827_create_squad_table', 6);
INSERT INTO `migrations` VALUES (10, '2020_04_06_143312_create_professions_table', 5);
INSERT INTO `migrations` VALUES (14, '2020_04_06_082945_create_student_squad_table', 6);
INSERT INTO `migrations` VALUES (15, '2020_04_07_131713_create_courses_table', 7);
INSERT INTO `migrations` VALUES (16, '2020_04_07_131801_create_squads_courses_table', 7);
INSERT INTO `migrations` VALUES (17, '2020_04_07_131823_create_teachers_courses_table', 7);
INSERT INTO `migrations` VALUES (18, '2020_04_07_131948_create_courses_types_constant_table', 7);
INSERT INTO `migrations` VALUES (19, '2020_04_10_122140_create_formula_left_table', 8);
INSERT INTO `migrations` VALUES (20, '2020_04_10_122505_create_meta_cal_table', 8);
INSERT INTO `migrations` VALUES (21, '2020_04_10_122548_create_meta_cal_type_table', 8);
INSERT INTO `migrations` VALUES (22, '2020_04_10_122654_create_fraction_table', 8);
INSERT INTO `migrations` VALUES (23, '2016_06_01_000001_create_oauth_auth_codes_table', 9);
INSERT INTO `migrations` VALUES (24, '2016_06_01_000002_create_oauth_access_tokens_table', 9);
INSERT INTO `migrations` VALUES (25, '2016_06_01_000003_create_oauth_refresh_tokens_table', 9);
INSERT INTO `migrations` VALUES (26, '2016_06_01_000004_create_oauth_clients_table', 9);
INSERT INTO `migrations` VALUES (27, '2016_06_01_000005_create_oauth_personal_access_clients_table', 9);

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `scopes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_access_tokens_user_id_index`(`user_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO `oauth_access_tokens` VALUES ('bcab8089c5f102f08623f2c66d70fc44aa835062100aaff86ec18606773724ea30ee19288187a636', 22, 1, 'personAccessToken', '[]', 0, '2020-04-20 08:36:27', '2020-04-20 08:36:27', '2021-04-20 08:36:27');
INSERT INTO `oauth_access_tokens` VALUES ('c3420aa5caab29b36ab038fda41749c3483709b5de139099b61d223b1a6b90aabb65b6bb4e9c2e52', 4, 1, 'personAccessToken', '[]', 0, '2020-04-20 09:20:51', '2020-04-20 09:20:51', '2021-04-20 09:20:51');
INSERT INTO `oauth_access_tokens` VALUES ('0b6c52c86c4aeedfb0c77f8a2732b477cfe70c0ffa2a42652c9d5869da7504889a668865dfc4c3bb', 4, 1, 'personAccessToken', '[]', 0, '2020-04-21 01:48:14', '2020-04-21 01:48:14', '2021-04-21 01:48:14');
INSERT INTO `oauth_access_tokens` VALUES ('c529e64b495c1bf31130d279de6548a7f4888f45f2259134ee8bc1834eeabfc53582ab88c0baffcd', 22, 1, 'personAccessToken', '[]', 0, '2020-04-21 08:05:27', '2020-04-21 08:05:27', '2021-04-21 08:05:27');
INSERT INTO `oauth_access_tokens` VALUES ('f10c904931e25a08f9dddfb3449ccfa714aa2c59895f7ff682450f673090a5eede427db1449c4d60', 25, 1, 'personAccessToken', '[]', 0, '2020-04-21 08:58:42', '2020-04-21 08:58:42', '2021-04-21 08:58:42');
INSERT INTO `oauth_access_tokens` VALUES ('a8cebc6592f5ff1c33a3c76d79eb096820656c3d1ed7a6370bf053eea656075a59d1012007ecaaa8', 22, 1, 'personAccessToken', '[]', 0, '2020-04-21 11:17:37', '2020-04-21 11:17:37', '2021-04-21 11:17:37');
INSERT INTO `oauth_access_tokens` VALUES ('db50972b12be6237a9982af0861248929f837b1d0091763fd250f2166f0903f8887ff33eacf097a7', 4, 1, 'personAccessToken', '[]', 0, '2020-04-21 12:36:09', '2020-04-21 12:36:09', '2021-04-21 12:36:09');
INSERT INTO `oauth_access_tokens` VALUES ('6b54905b557102b6e19e76924cf32b333c63458d081c5c7b60d5a2ba30347371207a2858dccc2f8a', 22, 1, 'personAccessToken', '[]', 0, '2020-04-21 12:36:23', '2020-04-21 12:36:23', '2021-04-21 12:36:23');
INSERT INTO `oauth_access_tokens` VALUES ('da5c33b79ec91b317a35169ba27be5db947b0539d1ae402ed1ec6edc3fdb13a76176fd09e2cb4c88', 4, 1, 'personAccessToken', '[]', 0, '2020-04-21 13:00:42', '2020-04-21 13:00:42', '2021-04-21 13:00:42');
INSERT INTO `oauth_access_tokens` VALUES ('449bc46f68dd01aeb57358b4452dd6ebf672ac027031a7cf36815c3189983877e37b94d82e7a689c', 22, 1, 'personAccessToken', '[]', 0, '2020-04-21 13:01:22', '2020-04-21 13:01:22', '2021-04-21 13:01:22');
INSERT INTO `oauth_access_tokens` VALUES ('c759ba942527a9d57175db9b79749a05e97f172ac49adb923d608c516f32b65139ee18ac8b7adf34', 4, 1, 'personAccessToken', '[]', 0, '2020-04-21 13:10:44', '2020-04-21 13:10:44', '2021-04-21 13:10:44');
INSERT INTO `oauth_access_tokens` VALUES ('2fea3f31301cf2175ce20f4df45b77d2a0388925b9b1333d5602eef04e59b4cc772949c385419d49', 22, 1, 'personAccessToken', '[]', 0, '2020-04-21 13:11:02', '2020-04-21 13:11:02', '2021-04-21 13:11:02');
INSERT INTO `oauth_access_tokens` VALUES ('59e545155321cabe9b98b82048680cac84165253cbdefa18e812e35823e3a68b74be4c215f479665', 4, 1, 'personAccessToken', '[]', 0, '2020-04-23 07:40:27', '2020-04-23 07:40:27', '2021-04-23 07:40:27');
INSERT INTO `oauth_access_tokens` VALUES ('32cf91b40cccb3f3a1a996c28af3851efe8eb03415cbbe02849977406b7a6cdd1d351f5e57234bc9', 22, 1, 'personAccessToken', '[]', 0, '2020-04-23 07:57:01', '2020-04-23 07:57:01', '2021-04-23 07:57:01');
INSERT INTO `oauth_access_tokens` VALUES ('3e11f85af0352b26b0801ad38ecb3ca6a34c47300b100423fe9d3950601f87abccd1704e16e17f9c', 4, 1, 'personAccessToken', '[]', 0, '2020-04-23 07:57:18', '2020-04-23 07:57:18', '2021-04-23 07:57:18');
INSERT INTO `oauth_access_tokens` VALUES ('bb4167e6c034f903d7ab73f8f73e4bae25db813e4f459f8a5061be01dc9e77aa146144ebccfb8348', 21, 1, 'personAccessToken', '[]', 0, '2020-04-20 10:42:19', '2020-04-20 10:42:19', '2021-04-20 10:42:19');

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `redirect` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_clients_user_id_index`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES (1, NULL, '《计算机网络》课程建设网站 Personal Access Client', '8ALmdaicLmzNOaEIeOjeLidSaTOwKAsmj64yjzTP', 'http://localhost', 1, 0, 0, '2020-04-19 01:43:39', '2020-04-19 01:43:39');
INSERT INTO `oauth_clients` VALUES (2, NULL, '《计算机网络》课程建设网站 Password Grant Client', 'C4BOfKucLtMeMe754kGyzZqe6r6xpvBfE2XENMI5', 'http://localhost', 0, 1, 0, '2020-04-19 01:43:39', '2020-04-19 01:43:39');
INSERT INTO `oauth_clients` VALUES (3, 4, 'getSquadByUser', 'fTePSOtKa56UlaEg4b72WG9igZd023Mkw7Tofrw1', 'http://127.0.0.1:8000/api/getSquadByUser', 0, 0, 1, '2020-04-19 02:08:58', '2020-04-19 07:52:35');

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_personal_access_clients_client_id_index`(`client_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO `oauth_personal_access_clients` VALUES (1, 1, '2020-04-19 01:43:39', '2020-04-19 01:43:39');

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_refresh_tokens_access_token_id_index`(`access_token_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for professions
-- ----------------------------
DROP TABLE IF EXISTS `professions`;
CREATE TABLE `professions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `full_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `intro` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of professions
-- ----------------------------
INSERT INTO `professions` VALUES (1, '计算机科学与技术', '宇宙最牛逼', '2020-04-07 02:19:51', '2020-04-11 00:54:10');
INSERT INTO `professions` VALUES (2, '通信工程', '灰常的厉害', '2020-04-10 11:43:38', '2020-04-10 11:43:38');

-- ----------------------------
-- Table structure for squad
-- ----------------------------
DROP TABLE IF EXISTS `squad`;
CREATE TABLE `squad`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `profession_id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `info` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of squad
-- ----------------------------
INSERT INTO `squad` VALUES (1, 1, '计科1601班', '宇宙最牛', '2020-04-07 02:29:32', '2020-04-10 11:47:58');
INSERT INTO `squad` VALUES (2, 1, '计科1602班', '呜啦啦啦啦啦', '2020-04-10 11:43:07', '2020-04-10 11:48:12');
INSERT INTO `squad` VALUES (3, 2, '通信1601班', '全是帅哥美女', '2020-04-10 11:43:55', '2020-04-10 11:48:22');

-- ----------------------------
-- Table structure for squads_courses
-- ----------------------------
DROP TABLE IF EXISTS `squads_courses`;
CREATE TABLE `squads_courses`  (
  `squad_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `squads_courses_squad_id_course_id_index`(`squad_id`, `course_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of squads_courses
-- ----------------------------
INSERT INTO `squads_courses` VALUES (1, 1, '2020-04-07 23:04:45', '2020-04-07 23:04:47');
INSERT INTO `squads_courses` VALUES (1, 2, NULL, NULL);
INSERT INTO `squads_courses` VALUES (2, 1, NULL, NULL);
INSERT INTO `squads_courses` VALUES (3, 3, NULL, NULL);
INSERT INTO `squads_courses` VALUES (1, 4, NULL, NULL);
INSERT INTO `squads_courses` VALUES (2, 4, NULL, NULL);

-- ----------------------------
-- Table structure for student_squad
-- ----------------------------
DROP TABLE IF EXISTS `student_squad`;
CREATE TABLE `student_squad`  (
  `student_id` int(11) NOT NULL,
  `squad_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `student_squad_student_id_squad_id_index`(`student_id`, `squad_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of student_squad
-- ----------------------------
INSERT INTO `student_squad` VALUES (3, 1, '2020-04-07 11:02:19', '2020-04-07 11:02:22');
INSERT INTO `student_squad` VALUES (5, 1, '2020-04-07 09:09:55', '2020-04-07 09:09:55');
INSERT INTO `student_squad` VALUES (6, 1, '2020-04-07 09:11:00', '2020-04-07 09:11:00');
INSERT INTO `student_squad` VALUES (9, 1, '2020-04-07 20:03:49', '2020-04-07 20:03:52');
INSERT INTO `student_squad` VALUES (10, 1, '2020-04-07 12:10:52', '2020-04-07 12:10:52');
INSERT INTO `student_squad` VALUES (14, 2, '2020-04-11 15:07:41', '2020-04-11 15:07:41');
INSERT INTO `student_squad` VALUES (19, 2, '2020-04-14 14:42:20', '2020-04-14 14:42:20');
INSERT INTO `student_squad` VALUES (20, 2, '2020-04-15 01:56:23', '2020-04-15 01:56:23');

-- ----------------------------
-- Table structure for teachers_courses
-- ----------------------------
DROP TABLE IF EXISTS `teachers_courses`;
CREATE TABLE `teachers_courses`  (
  `teacher_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `teachers_courses_teacher_id_course_id_index`(`teacher_id`, `course_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of teachers_courses
-- ----------------------------
INSERT INTO `teachers_courses` VALUES (2, 1, '2020-04-07 15:38:17', '2020-04-07 15:38:17');
INSERT INTO `teachers_courses` VALUES (2, 2, '2020-04-08 02:04:09', '2020-04-08 02:04:09');
INSERT INTO `teachers_courses` VALUES (2, 4, NULL, NULL);
INSERT INTO `teachers_courses` VALUES (12, 4, NULL, NULL);
INSERT INTO `teachers_courses` VALUES (11, 3, NULL, NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '去除了校验规则，作为用户登陆名使用，学生的登录名一律为学号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (4, '肖逸凡', '20164841', '$2y$10$ZLzllEc0ElH5tFkhrZplauU//ApD12/.VBMFna4jRucvv/tW5zg0q', '7VSkipcjW7a9y2A7Kcfjnzvv27w9pWulXkqdzXkGt6yRz5KaoLoHaX8qtPMQ', '2020-04-15 01:56:23', '2020-04-19 13:54:02');
INSERT INTO `users` VALUES (3, '王二妞', '20164843', '$2y$10$7ttfa1gCeRbJAIGS0cu6Buh2stLYDYT/POQ5a6jxd6EYJdsiH4ubC', 'AWTxht2yF1Dn7MstSUnExcoPXrzwZY5fOgTbQpWa3gaKBNVTFxXwhMaL3JVG', '2020-04-14 14:42:20', '2020-04-19 13:01:29');
INSERT INTO `users` VALUES (21, '王老师', 'wang', '$2y$10$cceol/Nhpupwor0fQjX2.eHdgHiPSoiJE22woKSBuUsCWxox7WWIe', 'NSctEAEAfgmgwGuBlSuGJUa35mXv36tNhySBtrvpNzAVakJ88Fzs4V2r2n7C', '2020-04-19 12:11:33', '2020-04-20 08:39:44');
INSERT INTO `users` VALUES (22, '肖老师', 'xiao', '$2y$10$RVnsZwwm9VT8lXa2w/FX.uUY8yyV6p2TjS1xe9Idzy5mpo86nXAam', 'yZRgYri87iGFqjyHwUcNghzLxfT5pjfyKKWpWvzzjshwc8rk1K7p2CSmKP6r', '2020-04-19 12:17:42', '2020-04-19 13:55:54');
INSERT INTO `users` VALUES (25, '刘若英老师', 'liu', '$2y$10$aekqcVkzemVDC.rlMzS5Q.GyWURbHXrRZP91w6g/FX1M4sOhU9/F2', NULL, '2020-04-21 08:58:15', '2020-04-21 08:58:15');
INSERT INTO `users` VALUES (24, '曾老师', 'zeng', '$2y$10$hb8/YL7qXsuhdji2nJghpeh6LLWdF5ykPfUPY1YLm53qBXTzUTbb.', 'IqQ8ARw7AIq30xJRTq4rIKsWyJY8PwZvROGEJFNb0US1j6WL9W3SJzvTJQfs', '2020-04-19 13:55:26', '2020-04-19 13:55:26');

SET FOREIGN_KEY_CHECKS = 1;
