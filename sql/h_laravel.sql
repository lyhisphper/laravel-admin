/*
 Navicat Premium Data Transfer

 Source Server         : hlaravel
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : 47.100.101.79:3306
 Source Schema         : h_laravel

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 19/08/2019 18:54:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for h_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `h_admin_menu`;
CREATE TABLE `h_admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of h_admin_menu
-- ----------------------------
INSERT INTO `h_admin_menu` VALUES (1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL);
INSERT INTO `h_admin_menu` VALUES (2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL, NULL);
INSERT INTO `h_admin_menu` VALUES (3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL, NULL);
INSERT INTO `h_admin_menu` VALUES (4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, NULL);
INSERT INTO `h_admin_menu` VALUES (5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, NULL);
INSERT INTO `h_admin_menu` VALUES (6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, NULL);
INSERT INTO `h_admin_menu` VALUES (7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, NULL);
INSERT INTO `h_admin_menu` VALUES (8, 0, 8, 'Redis manager', 'fa-database', 'redis', NULL, '2019-08-19 10:32:51', '2019-08-19 10:32:51');

-- ----------------------------
-- Table structure for h_admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `h_admin_operation_log`;
CREATE TABLE `h_admin_operation_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `h_admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of h_admin_operation_log
-- ----------------------------
INSERT INTO `h_admin_operation_log` VALUES (1, 1, 'admin', 'GET', '220.173.26.138', '[]', '2019-08-19 10:28:22', '2019-08-19 10:28:22');
INSERT INTO `h_admin_operation_log` VALUES (2, 1, 'admin', 'GET', '220.173.26.138', '[]', '2019-08-19 10:28:25', '2019-08-19 10:28:25');
INSERT INTO `h_admin_operation_log` VALUES (3, 1, 'admin', 'GET', '220.173.26.138', '[]', '2019-08-19 10:30:04', '2019-08-19 10:30:04');
INSERT INTO `h_admin_operation_log` VALUES (4, 1, 'admin', 'GET', '220.173.26.138', '[]', '2019-08-19 10:30:49', '2019-08-19 10:30:49');
INSERT INTO `h_admin_operation_log` VALUES (5, 1, 'admin', 'GET', '220.173.26.138', '[]', '2019-08-19 10:31:00', '2019-08-19 10:31:00');
INSERT INTO `h_admin_operation_log` VALUES (6, 1, 'admin', 'GET', '220.173.26.138', '[]', '2019-08-19 10:31:24', '2019-08-19 10:31:24');
INSERT INTO `h_admin_operation_log` VALUES (7, 1, 'admin', 'GET', '220.173.26.138', '[]', '2019-08-19 10:33:07', '2019-08-19 10:33:07');
INSERT INTO `h_admin_operation_log` VALUES (8, 1, 'admin', 'GET', '220.173.26.138', '[]', '2019-08-19 10:33:43', '2019-08-19 10:33:43');
INSERT INTO `h_admin_operation_log` VALUES (9, 1, 'admin', 'GET', '220.173.26.138', '[]', '2019-08-19 10:33:45', '2019-08-19 10:33:45');
INSERT INTO `h_admin_operation_log` VALUES (10, 1, 'admin/auth/login', 'GET', '220.173.26.138', '[]', '2019-08-19 10:34:38', '2019-08-19 10:34:38');
INSERT INTO `h_admin_operation_log` VALUES (11, 1, 'admin/auth/login', 'POST', '220.173.26.138', '{\"username\":\"admin\",\"password\":\"admin\",\"remember\":\"1\",\"_token\":\"bMfxjfvGZNOhc6qZvuAN4jjDvXoDnMB8YEsOyiIB\"}', '2019-08-19 10:34:44', '2019-08-19 10:34:44');
INSERT INTO `h_admin_operation_log` VALUES (12, 1, 'admin', 'GET', '220.173.26.138', '[]', '2019-08-19 10:34:44', '2019-08-19 10:34:44');
INSERT INTO `h_admin_operation_log` VALUES (13, 1, 'admin/auth/login', 'GET', '220.173.26.138', '[]', '2019-08-19 10:34:54', '2019-08-19 10:34:54');
INSERT INTO `h_admin_operation_log` VALUES (14, 1, 'admin/auth/login', 'POST', '220.173.26.138', '{\"username\":\"admin\",\"password\":\"admin\",\"remember\":\"1\",\"_token\":\"apiC2a7N0O0wF3xGnHRiGrAvMz4EMkkBN1yyjgRp\"}', '2019-08-19 10:35:08', '2019-08-19 10:35:08');
INSERT INTO `h_admin_operation_log` VALUES (15, 1, 'admin', 'GET', '220.173.26.138', '[]', '2019-08-19 10:35:08', '2019-08-19 10:35:08');
INSERT INTO `h_admin_operation_log` VALUES (16, 1, 'admin', 'GET', '220.173.26.138', '[]', '2019-08-19 10:43:47', '2019-08-19 10:43:47');
INSERT INTO `h_admin_operation_log` VALUES (17, 1, 'admin', 'GET', '220.173.26.138', '[]', '2019-08-19 10:45:33', '2019-08-19 10:45:33');
INSERT INTO `h_admin_operation_log` VALUES (18, 1, 'admin', 'GET', '220.173.26.138', '[]', '2019-08-19 10:45:36', '2019-08-19 10:45:36');
INSERT INTO `h_admin_operation_log` VALUES (19, 1, 'admin/auth/login', 'GET', '220.173.26.138', '[]', '2019-08-19 10:46:41', '2019-08-19 10:46:41');
INSERT INTO `h_admin_operation_log` VALUES (20, 1, 'admin/auth/login', 'POST', '220.173.26.138', '{\"username\":\"admin\",\"password\":\"admin\",\"remember\":\"1\",\"_token\":\"8u7qsLJesPlUD1vGSCuu2xmAOe7WOAf7S0ubQ2HC\"}', '2019-08-19 10:46:47', '2019-08-19 10:46:47');
INSERT INTO `h_admin_operation_log` VALUES (21, 1, 'admin', 'GET', '220.173.26.138', '[]', '2019-08-19 10:46:48', '2019-08-19 10:46:48');
INSERT INTO `h_admin_operation_log` VALUES (22, 1, 'admin/auth/login', 'GET', '220.173.26.138', '[]', '2019-08-19 10:50:16', '2019-08-19 10:50:16');
INSERT INTO `h_admin_operation_log` VALUES (23, 1, 'admin/auth/login', 'POST', '220.173.26.138', '{\"username\":\"admin\",\"password\":\"admin\",\"remember\":\"1\",\"_token\":\"MiWkkjQR1JAdeaKKSTHR41Isxe2jFPNAuZykLVzO\"}', '2019-08-19 10:50:21', '2019-08-19 10:50:21');
INSERT INTO `h_admin_operation_log` VALUES (24, 1, 'admin', 'GET', '220.173.26.138', '[]', '2019-08-19 10:50:21', '2019-08-19 10:50:21');
INSERT INTO `h_admin_operation_log` VALUES (25, 1, 'admin/auth/users', 'GET', '220.173.26.138', '{\"_pjax\":\"#pjax-container\"}', '2019-08-19 10:50:26', '2019-08-19 10:50:26');
INSERT INTO `h_admin_operation_log` VALUES (26, 1, 'admin/auth/roles', 'GET', '220.173.26.138', '{\"_pjax\":\"#pjax-container\"}', '2019-08-19 10:50:27', '2019-08-19 10:50:27');
INSERT INTO `h_admin_operation_log` VALUES (27, 1, 'admin/auth/permissions', 'GET', '220.173.26.138', '{\"_pjax\":\"#pjax-container\"}', '2019-08-19 10:50:28', '2019-08-19 10:50:28');
INSERT INTO `h_admin_operation_log` VALUES (28, 1, 'admin/auth/menu', 'GET', '220.173.26.138', '{\"_pjax\":\"#pjax-container\"}', '2019-08-19 10:50:29', '2019-08-19 10:50:29');
INSERT INTO `h_admin_operation_log` VALUES (29, 1, 'admin/auth/roles', 'GET', '220.173.26.138', '{\"_pjax\":\"#pjax-container\"}', '2019-08-19 10:50:31', '2019-08-19 10:50:31');
INSERT INTO `h_admin_operation_log` VALUES (30, 1, 'admin/redis', 'GET', '220.173.26.138', '{\"_pjax\":\"#pjax-container\"}', '2019-08-19 10:50:32', '2019-08-19 10:50:32');
INSERT INTO `h_admin_operation_log` VALUES (31, 1, 'admin', 'GET', '220.173.26.138', '{\"_pjax\":\"#pjax-container\"}', '2019-08-19 10:50:34', '2019-08-19 10:50:34');
INSERT INTO `h_admin_operation_log` VALUES (32, 1, 'admin/auth/users', 'GET', '220.173.26.138', '{\"_pjax\":\"#pjax-container\"}', '2019-08-19 10:50:35', '2019-08-19 10:50:35');
INSERT INTO `h_admin_operation_log` VALUES (33, 1, 'admin/auth/roles', 'GET', '220.173.26.138', '{\"_pjax\":\"#pjax-container\"}', '2019-08-19 10:50:38', '2019-08-19 10:50:38');
INSERT INTO `h_admin_operation_log` VALUES (34, 1, 'admin/auth/permissions', 'GET', '220.173.26.138', '{\"_pjax\":\"#pjax-container\"}', '2019-08-19 10:50:39', '2019-08-19 10:50:39');
INSERT INTO `h_admin_operation_log` VALUES (35, 1, 'admin/auth/menu', 'GET', '220.173.26.138', '{\"_pjax\":\"#pjax-container\"}', '2019-08-19 10:50:40', '2019-08-19 10:50:40');
INSERT INTO `h_admin_operation_log` VALUES (36, 1, 'admin/auth/permissions', 'GET', '220.173.26.138', '{\"_pjax\":\"#pjax-container\"}', '2019-08-19 10:50:41', '2019-08-19 10:50:41');

-- ----------------------------
-- Table structure for h_admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `h_admin_permissions`;
CREATE TABLE `h_admin_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `h_admin_permissions_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `h_admin_permissions_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of h_admin_permissions
-- ----------------------------
INSERT INTO `h_admin_permissions` VALUES (1, 'All permission', '*', '', '*', NULL, NULL);
INSERT INTO `h_admin_permissions` VALUES (2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL);
INSERT INTO `h_admin_permissions` VALUES (3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL);
INSERT INTO `h_admin_permissions` VALUES (4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL);
INSERT INTO `h_admin_permissions` VALUES (5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);
INSERT INTO `h_admin_permissions` VALUES (6, 'Redis Manager', 'ext.redis-manager', NULL, '/redis*', '2019-08-19 10:32:51', '2019-08-19 10:32:51');

-- ----------------------------
-- Table structure for h_admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `h_admin_role_menu`;
CREATE TABLE `h_admin_role_menu`  (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `h_admin_role_menu_role_id_menu_id_index`(`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of h_admin_role_menu
-- ----------------------------
INSERT INTO `h_admin_role_menu` VALUES (1, 2, NULL, NULL);

-- ----------------------------
-- Table structure for h_admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `h_admin_role_permissions`;
CREATE TABLE `h_admin_role_permissions`  (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `h_admin_role_permissions_role_id_permission_id_index`(`role_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of h_admin_role_permissions
-- ----------------------------
INSERT INTO `h_admin_role_permissions` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for h_admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `h_admin_role_users`;
CREATE TABLE `h_admin_role_users`  (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `h_admin_role_users_role_id_user_id_index`(`role_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of h_admin_role_users
-- ----------------------------
INSERT INTO `h_admin_role_users` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for h_admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `h_admin_roles`;
CREATE TABLE `h_admin_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `h_admin_roles_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `h_admin_roles_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of h_admin_roles
-- ----------------------------
INSERT INTO `h_admin_roles` VALUES (1, 'Administrator', 'administrator', '2019-08-19 10:26:38', '2019-08-19 10:26:38');

-- ----------------------------
-- Table structure for h_admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `h_admin_user_permissions`;
CREATE TABLE `h_admin_user_permissions`  (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `h_admin_user_permissions_user_id_permission_id_index`(`user_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for h_admin_users
-- ----------------------------
DROP TABLE IF EXISTS `h_admin_users`;
CREATE TABLE `h_admin_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `h_admin_users_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of h_admin_users
-- ----------------------------
INSERT INTO `h_admin_users` VALUES (1, 'admin', '$2y$10$6Gy5BXotEFaWhHglJNV5fOgj/QT3bF/fb9dDyBzRWkk8E/oDHTA9u', 'Administrator', NULL, 'Oebg5eUOkyuhMlPzi5AlUFLtqXdh6Zybw3D9OP1IYJ4J4Xw2jFD5yYESsHcM', '2019-08-19 10:26:38', '2019-08-19 10:26:38');

-- ----------------------------
-- Table structure for h_password_resets
-- ----------------------------
DROP TABLE IF EXISTS `h_password_resets`;
CREATE TABLE `h_password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `h_password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for h_users
-- ----------------------------
DROP TABLE IF EXISTS `h_users`;
CREATE TABLE `h_users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `h_users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_01_04_173148_create_admin_tables', 1);

SET FOREIGN_KEY_CHECKS = 1;
