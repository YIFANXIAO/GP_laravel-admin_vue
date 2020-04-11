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

 Date: 11/04/2020 23:27:15
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
) ENGINE = MyISAM AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (22, 0, 1, '首页', 'fa-bar-chart-o', '/', NULL, '2020-04-11 05:59:56', '2020-04-11 05:59:59');
INSERT INTO `admin_menu` VALUES (2, 0, 14, '系统管理', 'fa-tasks', NULL, NULL, NULL, '2020-04-11 05:59:59');
INSERT INTO `admin_menu` VALUES (3, 2, 15, '用户管理', 'fa-users', 'auth/users', NULL, NULL, '2020-04-11 05:59:59');
INSERT INTO `admin_menu` VALUES (4, 2, 16, '角色管理', 'fa-user', 'auth/roles', NULL, NULL, '2020-04-11 05:59:59');
INSERT INTO `admin_menu` VALUES (5, 2, 17, '权限管理', 'fa-ban', 'auth/permissions', NULL, NULL, '2020-04-11 05:59:59');
INSERT INTO `admin_menu` VALUES (6, 2, 18, '菜单管理', 'fa-bars', 'auth/menu', NULL, NULL, '2020-04-11 05:59:59');
INSERT INTO `admin_menu` VALUES (7, 2, 19, '操作日志', 'fa-history', 'auth/logs', NULL, NULL, '2020-04-11 05:59:59');
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
) ENGINE = MyISAM AUTO_INCREMENT = 2473 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

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
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES (1, 'All permission', '*', '', '*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

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
INSERT INTO `admin_role_permissions` VALUES (3, 1, NULL, NULL);

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
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

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
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$G6KvI.E8JBaMz.NAukiLm.5Hh9PQ5uIyAKKIPAomiKq/kFI.SVHjG', 'Administrator', 'images/de2c35d5b0d5489ed69a5e58b773f038.png', 'zGC3UgS5sCT5YdBArCCwcpPnkvPxHcHOtpracCySzADov08sKXJYcnqGg3y5', '2020-04-02 09:56:20', '2020-04-11 07:26:31');
INSERT INTO `admin_users` VALUES (2, 'xiao', '$2y$10$bCMMizVlBS0HoVxhdfhTTO6M7jYPNuAqdoGCNDhseBPeyToV9JQ2W', '肖老师', 'images/d10fb8d673e04c2bfdce01955c59bd47.png', 'Zr64Sv8wqqjV3Ugbq9zzKiw2bDqd770U8vGcu8onSKCqFPs3Zd1MZ3lvntQN', '2020-04-03 03:38:37', '2020-04-03 03:38:37');
INSERT INTO `admin_users` VALUES (3, 'stu1', '$2y$10$2rJM0JsghS/SWvZ8sOoOau1M5SxeH6kfjkh4OcE3TNYTUEjijgE8y', '老王', 'images/48b81e19ac05ccdddcdd5198d961a0af.jpg', 'lpZruNznKxf6PTXqK1yp1L0vHv6HhoXWiFGr3mLcMgKLFmot7ijmg6OyK0ze', '2020-04-05 00:58:50', '2020-04-05 00:59:08');
INSERT INTO `admin_users` VALUES (5, 'stu2', '$2y$10$BxC8FWIrJI/ueIxiPGSkrO/MP7gjScGeapa1jyJNywDvp3/hxLRzG', '老裴', NULL, NULL, '2020-04-07 09:06:03', '2020-04-07 09:06:03');
INSERT INTO `admin_users` VALUES (6, 'stu3', '$2y$10$DwzmF66CR8C2AqVZtapjUuN5wtpowLHsZmhfRoBmDqFBVWZKqYWJG', '老吴', NULL, NULL, '2020-04-07 09:07:24', '2020-04-07 09:07:24');
INSERT INTO `admin_users` VALUES (7, 'stu4', '$2y$10$LGmA14AcH8e2gqk8MIuudOMhJcSZP0JnVOptUylFBW0v9A.D8PIC6', '老曹', NULL, NULL, '2020-04-07 09:08:11', '2020-04-07 09:08:11');
INSERT INTO `admin_users` VALUES (8, 'stu5', '$2y$10$qkCwV60HZS1ydVZlti0S3.yaPDgf9m3b6ns12gUpAWoKe3VUI7C4.', '老贾', 'images/unnamed.jpg', NULL, '2020-04-07 10:25:57', '2020-04-07 10:25:57');
INSERT INTO `admin_users` VALUES (9, 'stu6', '$2y$10$2N3sEP.k0wDMJkewZVVz8.p6E1gq27xsCjyT9ZAmfNXHbwKLZrsua', '老杨', 'images/unnamed.jpg', NULL, '2020-04-07 10:27:44', '2020-04-07 10:27:44');
INSERT INTO `admin_users` VALUES (10, 'stu7', '$2y$10$7wymN/KA2qjgnbwsGqEFF.0ErnHE1BGkgGfs7YHXTqa7KDXHyM1Pm', '老张', 'images/unnamed.jpg', NULL, '2020-04-07 12:10:52', '2020-04-07 12:10:52');
INSERT INTO `admin_users` VALUES (11, 'wang', '$2y$10$NYU.o70VMRWwsRriADXkGuGPFpfWqSjCXYGbJwWURG8MysrZnWHU2', '王老师', 'images/ec824c2c054ee5ab460a7ff97474e2ea.png', NULL, '2020-04-10 11:54:47', '2020-04-10 11:54:47');
INSERT INTO `admin_users` VALUES (12, 'yang', '$2y$10$9tXmTa.At5/lsFLTToXxaOQHxd3296vUr.WR3STuFiF2hpK4U/Q46', '杨老师', 'images/217fb57555f27081a859313542fa4136.png', NULL, '2020-04-10 11:55:30', '2020-04-10 11:55:30');
INSERT INTO `admin_users` VALUES (14, 'stu8', '$2y$10$VK6BKZ9.T4gAF.VJPix14.BP9lLB2F//opgMhvoP9I8FajAhh.8q.', '老赵', 'images/unnamed.jpg', NULL, '2020-04-11 15:07:41', '2020-04-11 15:07:41');

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
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, 1, '孤岛惊魂', '讲述了一个在孤岛上发生的惊魂故事', 'images/6956710ee7a7322831f3e6692d59fa75.png', '# 一级标题\r\n## 二级标题\r\n### 三级标题\r\n**加粗**\r\n\r\n| 测试  | 测试  |\r\n| ------------ | ------------ |\r\n| 测试  | 测试  |\r\n| 测试  |  测试 |', '2020-04-02 10:02:01', '2020-04-02 10:03:00');
INSERT INTO `article` VALUES (2, 1, '咒怨', '讲述了一个发生在日本的恐怖故事', 'images/1d49acb44c313a5f916f9c72e51e95da.jpg', '```java\r\nclass test{\r\n	\r\n}\r\n```', '2020-04-03 08:08:56', '2020-04-03 08:08:56');
INSERT INTO `article` VALUES (3, 1, '2020继续加油', '大年三十终于写完这篇总结，给来年定个目标，给今年做个肯定，希望以后每年都有新的总结可写，都有美好的故事发送，加油！！', 'images/unnamed.jpg', '# 新年总结\r\n## 除夕总结\r\n## 初一总结\r\n### 初二总结', '2020-04-04 01:26:29', '2020-04-04 01:26:29');
INSERT INTO `article` VALUES (4, 3, '夏洛特烦恼', '一个叫夏洛的人，他特别地烦恼', 'images/17fcb77f5348e46c041c10ce8875da99.jpg', '# 夏洛\r\n## 就特么你叫夏洛啊', '2020-04-05 07:40:05', '2020-04-05 07:40:05');

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
INSERT INTO `articles_labels` VALUES (2, 1, NULL, NULL);
INSERT INTO `articles_labels` VALUES (3, 3, NULL, NULL);
INSERT INTO `articles_labels` VALUES (4, 2, NULL, NULL);
INSERT INTO `articles_labels` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reply_user_id` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 1,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (1, 1, 1, 2, 0, 1, '测试评论', '2020-04-03 01:37:33', '2020-04-03 01:37:33');
INSERT INTO `comments` VALUES (2, 2, 1, 2, 0, 1, '测试回复2', '2020-04-03 08:17:57', '2020-04-03 08:17:57');
INSERT INTO `comments` VALUES (3, 4, 3, 2, 0, 1, '夏洛特烦恼评论回复', '2020-04-05 07:57:07', '2020-04-05 07:57:07');
INSERT INTO `comments` VALUES (4, 4, 1, 4, 4, 1, '测试默认父节点', '2020-04-05 08:18:05', '2020-04-05 08:18:05');
INSERT INTO `comments` VALUES (5, 3, 1, 0, 5, 1, '测试默认回复用户和默认父节点', '2020-04-05 08:20:27', '2020-04-05 08:20:27');
INSERT INTO `comments` VALUES (6, 4, 1, 4, 6, 1, '再次测试默认回复用户和默认父节点', '2020-04-05 08:21:32', '2020-04-05 08:21:32');
INSERT INTO `comments` VALUES (7, 4, 1, 3, 2, 1, '看电视剧疯狂拉升阶段看来附近开了大数据', '2020-04-05 08:22:55', '2020-04-05 08:22:55');
INSERT INTO `comments` VALUES (8, 4, 1, 0, 0, 1, '这次真的可以了吧', '2020-04-05 08:47:56', '2020-04-05 08:47:56');
INSERT INTO `comments` VALUES (9, 4, 1, 0, 0, 1, '测试跳转是否正常', '2020-04-05 09:28:07', '2020-04-05 09:28:07');
INSERT INTO `comments` VALUES (10, 4, 3, 0, 0, 1, '测试', '2020-04-06 12:12:38', '2020-04-06 12:12:38');
INSERT INTO `comments` VALUES (11, 4, 3, 1, 8, 2, '测试', '2020-04-06 12:13:25', '2020-04-06 12:13:25');
INSERT INTO `comments` VALUES (12, 1, 3, 1, 1, 2, '测试回复用户', '2020-04-06 12:21:32', '2020-04-06 12:21:32');
INSERT INTO `comments` VALUES (13, 1, 1, 3, 12, 2, '老王老王你真帅', '2020-04-11 07:17:49', '2020-04-11 07:17:49');

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
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of formula_left
-- ----------------------------
INSERT INTO `formula_left` VALUES (1, '总分', 1, 0, '2020-04-10 13:15:33', '2020-04-10 15:11:22');

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
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of meta_cal
-- ----------------------------
INSERT INTO `meta_cal` VALUES (1, 1, 1, 5, 0.1, NULL, '2020-04-11 03:37:56');
INSERT INTO `meta_cal` VALUES (6, 1, 3, 1, 0, NULL, NULL);
INSERT INTO `meta_cal` VALUES (5, 1, 2, 1, 0, NULL, NULL);

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
) ENGINE = MyISAM AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

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
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'xiao', 'xyf15620168540@163.com', '$2y$10$eWsxRt1JdzZ0OQVVLHdeKe21F2SpYvnQaxgN.YJbTLOBFzT5P/E/6', 'pSL1qvstm8UpfOX5i74KhM24qkJqZfu4JB0lP570eWayPNjXnDG0xncsNCGR', '2020-04-03 09:13:10', '2020-04-03 09:13:10');

SET FOREIGN_KEY_CHECKS = 1;
