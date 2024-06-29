/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 100428 (10.4.28-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : jst_backpropagation

 Target Server Type    : MySQL
 Target Server Version : 100428 (10.4.28-MariaDB)
 File Encoding         : 65001

 Date: 24/06/2024 22:23:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `no_menu` int NULL DEFAULT NULL,
  `nama_menu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_menu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `link_menu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_node` tinyint(1) NOT NULL DEFAULT 0,
  `is_children` tinyint(1) NOT NULL DEFAULT 0,
  `children_menu` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2024_02_23_173455_create_permission_tables', 1);
INSERT INTO `migrations` VALUES (6, '2024_03_08_073856_create_profiles_table', 1);
INSERT INTO `migrations` VALUES (7, '2024_03_08_075828_add_roles_id_to_table_users', 1);
INSERT INTO `migrations` VALUES (8, '2024_03_08_080838_add_status_to_table_users', 1);
INSERT INTO `migrations` VALUES (9, '2024_06_15_200659_create_pengaturans_table', 1);
INSERT INTO `migrations` VALUES (10, '2024_06_15_232347_create_menus_table', 1);
INSERT INTO `migrations` VALUES (12, '2024_06_21_063919_create_variabel_data_table', 2);

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_permissions_model_id_model_type_index`(`model_id` ASC, `model_type` ASC) USING BTREE,
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles`  (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_roles_model_id_model_type_index`(`model_id` ASC, `model_type` ASC) USING BTREE,
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for pengaturan
-- ----------------------------
DROP TABLE IF EXISTS `pengaturan`;
CREATE TABLE `pengaturan`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `namaaplikasi_pengaturan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `namausaha_pengaturan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_pengaturan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `notelepon_pengaturan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_pengaturan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `logoaplikasi_pengaturan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pengaturan
-- ----------------------------
INSERT INTO `pengaturan` VALUES (1, 'Backpropagation', 'PT. Backpropagation Tia', 'Alamat Backpropagation Tia', '08283928', 'Deskripsi Backpropagation Tia', 'profile.jpg', '2024-06-18 22:44:27', '2024-06-18 22:44:27');

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `permissions_name_guard_name_unique`(`name` ASC, `guard_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for profile
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_profile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nohp_profile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_profile` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `jeniskelamin_profile` enum('L','P') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `profile_users_id_foreign`(`users_id` ASC) USING BTREE,
  CONSTRAINT `profile_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of profile
-- ----------------------------
INSERT INTO `profile` VALUES (1, 'admin', '082277506232', 'Jakarta pusat', 'L', 1, '2024-06-18 22:44:27', '2024-06-18 22:44:27');

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `role_id`) USING BTREE,
  INDEX `role_has_permissions_role_id_foreign`(`role_id` ASC) USING BTREE,
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `roles_name_guard_name_unique`(`name` ASC, `guard_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'Admin', 'web', '2024-06-18 22:44:27', '2024-06-18 22:44:27');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles_id` bigint UNSIGNED NOT NULL,
  `status_users` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE,
  UNIQUE INDEX `users_username_unique`(`username` ASC) USING BTREE,
  INDEX `users_roles_id_foreign`(`roles_id` ASC) USING BTREE,
  CONSTRAINT `users_roles_id_foreign` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin@gmail.com', 'admin', NULL, '$2y$10$1AqD0kgPgdeVfTggi68QDOi2NtVqge19keglD6LRZTy24YEvjRRHS', NULL, '2024-06-18 22:44:27', '2024-06-18 22:44:27', 1, 1);

-- ----------------------------
-- Table structure for variabel_data
-- ----------------------------
DROP TABLE IF EXISTS `variabel_data`;
CREATE TABLE `variabel_data`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tanggal_vdata` date NOT NULL,
  `terakhir_vdata` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pembukaan_vdata` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tertinggi_vdata` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `terendah_vdata` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vol_vdata` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `perubahan_vdata` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1112 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of variabel_data
-- ----------------------------
INSERT INTO `variabel_data` VALUES (1, '2024-05-31', '9.331,00', '9.242,00', '9.420,00', '9.031,00', '8,03K', '0,80%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (2, '2024-05-30', '9.257,00', '9.278,00', '9.550,00', '9.054,00', '9,20K', '-0,56%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (3, '2024-05-29', '9.309,00', '8.730,00', '9.460,00', '8.690,00', '14,76K', '6,03%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (4, '2024-05-28', '8.780,00', '8.200,00', '8.800,00', '7.942,00', '15,09K', '5,86%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (5, '2024-05-24', '8.294,00', '8.219,00', '8.436,00', '7.869,00', '10,97K', '2,28%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (6, '2024-05-23', '8.109,00', '7.423,00', '8.400,00', '7.323,00', '14,08K', '7,60%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (7, '2024-05-22', '7.536,00', '7.372,00', '7.638,00', '7.273,00', '8,46K', '1,92%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (8, '2024-05-21', '7.394,00', '7.077,00', '7.492,00', '6.910,00', '7,99K', '2,47%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (9, '2024-05-20', '7.216,00', '7.277,00', '7.373,00', '6.767,00', '10,26K', '-1,80%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (10, '2024-05-17', '7.348,00', '7.350,00', '7.685,00', '7.137,00', '7,91K', '-0,61%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (11, '2024-05-16', '7.393,00', '7.896,00', '7.951,00', '7.202,00', '11,58K', '-18,45%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (12, '2024-05-15', '9.066,00', '7.379,00', '7.906,50', '7.291,00', '', '3,60%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (13, '2024-05-14', '8.751,00', '9.000,00', '9.000,00', '9.000,00', '0,00K', '7,39%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (14, '2024-05-13', '8.149,00', '8.780,50', '8.810,00', '7.032,00', '', '-17,47%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (15, '2024-05-10', '9.874,00', '8.739,00', '8.930,00', '8.482,00', '7,88K', '2,03%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (16, '2024-05-09', '9.678,00', '8.715,00', '8.942,00', '8.381,00', '8,07K', '0,63%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (17, '2024-05-08', '9.617,00', '8.951,00', '9.078,00', '8.434,00', '13,00K', '0,25%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (18, '2024-05-07', '9.593,00', '7.527,00', '8.688,00', '7.407,00', '14,33K', '11,92%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (19, '2024-05-06', '8.571,00', '8.570,00', '8.570,00', '8.570,00', '0,00K', '5,23%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (20, '2024-05-03', '8.145,00', '7.282,00', '8.218,00', '6.990,00', '21,44K', '-3,98%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (21, '2024-05-02', '8.483,00', '8.750,00', '8.750,00', '8.240,00', '0,02K', '2,40%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (22, '2024-05-01', '8.284,00', '9.283,00', '9.487,00', '7.930,00', '20,00K', '-18,25%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (23, '2024-04-30', '10.133,00', '9.610,00', '10.115,00', '8.651,00', '0,02K', '1,50%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (24, '2024-04-29', '9.983,00', '10.327,00', '10.327,00', '9.958,00', '0,03K', '-5,77%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (25, '2024-04-26', '10.594,00', '10.779,00', '11.026,00', '10.520,00', '8,21K', '-3,59%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (26, '2024-04-25', '10.988,00', '11.530,00', '11.530,00', '10.800,00', '0,01K', '-0,26%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (27, '2024-04-24', '11.017,00', '10.728,00', '11.440,00', '10.638,00', '11,77K', '4,09%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (28, '2024-04-23', '10.584,00', '10.803,00', '10.835,00', '10.221,00', '3,53K', '-5,21%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (29, '2024-04-22', '11.166,00', '11.967,00', '12.136,00', '10.929,00', '1,65K', '-5,99%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (30, '2024-04-19', '11.878,00', '11.504,00', '12.261,00', '11.132,00', '2,81K', '5,01%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (31, '2024-04-18', '11.311,00', '10.620,00', '11.388,00', '10.530,00', '5,54K', '9,39%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (32, '2024-04-17', '10.340,00', '10.173,00', '10.630,00', '10.100,00', '5,41K', '5,31%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (33, '2024-04-16', '9.819,00', '10.650,00', '10.650,00', '9.603,00', '17,71K', '-7,01%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (34, '2024-04-15', '10.559,00', '10.396,00', '10.760,00', '10.355,00', '13,36K', '-3,90%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (35, '2024-04-12', '10.987,00', '10.400,00', '11.039,00', '10.357,00', '6,46K', '5,92%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (36, '2024-04-11', '10.373,00', '10.445,00', '10.771,00', '10.319,00', '12,64K', '-0,36%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (37, '2024-04-10', '10.411,00', '10.300,00', '10.629,00', '10.148,00', '10,87K', '2,03%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (38, '2024-04-09', '10.204,00', '9.717,00', '10.321,00', '9.653,00', '15,14K', '3,12%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (39, '2024-04-08', '9.895,00', '9.953,00', '10.443,00', '9.669,00', '22,95K', '1,02%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (40, '2024-04-05', '9.795,00', '9.668,00', '9.990,00', '9.480,00', '16,99K', '3,52%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (41, '2024-04-04', '9.462,00', '9.389,00', '9.644,00', '9.150,00', '14,91K', '-0,65%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (42, '2024-04-03', '9.524,00', '9.858,00', '10.044,00', '9.406,00', '23,09K', '-4,27%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (43, '2024-04-02', '9.949,00', '10.186,00', '10.324,00', '9.808,00', '19,82K', '-1,69%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (44, '2024-04-01', '10.120,00', '9.720,00', '10.318,00', '9.632,00', '11,59K', '3,62%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (45, '2024-03-28', '9.766,00', '9.906,00', '10.014,00', '9.671,00', '17,95K', '-0,78%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (46, '2024-03-27', '9.843,00', '9.509,00', '9.917,00', '9.267,00', '23,29K', '2,30%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (47, '2024-03-26', '9.622,00', '9.847,00', '10.080,00', '9.574,00', '26,26K', '-0,28%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (48, '2024-03-25', '9.649,00', '8.921,00', '9.684,00', '8.889,00', '19,70K', '7,94%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (49, '2024-03-22', '8.939,00', '8.573,00', '8.960,00', '8.465,00', '16,40K', '4,44%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (50, '2024-03-21', '8.559,00', '8.395,00', '8.653,00', '8.149,00', '21,27K', '2,82%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (51, '2024-03-20', '8.324,00', '7.920,00', '8.429,00', '7.716,00', '23,72K', '3,70%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (52, '2024-03-19', '8.027,00', '8.188,00', '8.412,00', '7.963,00', '19,14K', '-1,77%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (53, '2024-03-18', '8.172,00', '8.179,00', '8.493,00', '7.824,00', '32,66K', '1,92%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (54, '2024-03-15', '8.018,00', '7.435,00', '8.186,00', '7.357,00', '25,58K', '8,28%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (55, '2024-03-14', '7.405,00', '7.185,00', '7.715,00', '7.063,00', '29,41K', '-7,83%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (56, '2024-03-13', '8.034,00', '7.049,00', '7.221,00', '6.979,00', '20,26K', '-0,17%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (57, '2024-03-12', '8.048,00', '7.890,00', '7.974,00', '7.890,00', '0,01K', '9,81%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (58, '2024-03-11', '7.329,00', '6.437,00', '6.779,00', '6.419,00', '18,39K', '4,74%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (59, '2024-03-08', '6.997,00', '6.928,00', '6.928,00', '6.928,00', '0,00K', '-0,81%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (60, '2024-03-07', '7.054,00', '7.000,00', '7.000,00', '7.000,00', '0,00K', '-1,62%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (61, '2024-03-06', '7.170,00', '6.450,00', '6.660,00', '6.306,00', '21,28K', '2,87%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (62, '2024-03-05', '6.970,00', '7.000,00', '7.000,00', '7.000,00', '0,00K', '-1,23%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (63, '2024-03-04', '7.057,00', '6.457,00', '6.677,00', '6.350,00', '22,32K', '3,38%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (64, '2024-03-01', '6.826,00', '6.769,00', '6.769,00', '6.769,00', '0,01K', '4,85%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (65, '2024-02-29', '6.510,00', '6.413,00', '6.466,00', '6.413,00', '0,32K', '2,04%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (66, '2024-02-28', '6.380,00', '6.590,00', '6.590,00', '6.362,00', '0,01K', '-5,55%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (67, '2024-02-27', '6.755,00', '6.780,00', '6.893,00', '6.743,00', '0,01K', '-1,87%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (68, '2024-02-26', '6.884,00', '6.765,00', '6.929,00', '6.650,00', '0,04K', '4,91%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (69, '2024-02-23', '6.562,00', '6.033,00', '6.750,00', '6.033,00', '0,08K', '6,37%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (70, '2024-02-22', '6.169,00', '6.336,00', '6.340,00', '5.961,00', '0,84K', '-0,47%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (71, '2024-02-21', '6.198,00', '6.050,00', '6.311,00', '6.022,00', '2,55K', '3,32%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (72, '2024-02-20', '5.999,00', '5.750,00', '6.069,00', '5.750,00', '6,82K', '5,13%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (73, '2024-02-16', '5.706,00', '5.947,00', '5.964,00', '5.689,00', '10,73K', '-4,28%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (74, '2024-02-15', '5.961,00', '5.956,00', '6.030,00', '5.888,00', '6,10K', '0,20%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (75, '2024-02-14', '5.949,00', '6.008,00', '6.039,00', '5.812,00', '9,01K', '-0,87%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (76, '2024-02-13', '6.001,00', '5.828,00', '6.029,00', '5.815,00', '12,14K', '2,41%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (77, '2024-02-12', '5.860,00', '5.868,00', '5.958,00', '5.773,00', '16,14K', '-0,48%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (78, '2024-02-09', '5.888,00', '5.900,00', '6.030,00', '5.528,00', '35,32K', '1,43%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (79, '2024-02-08', '5.805,00', '5.488,00', '5.874,00', '5.451,00', '37,99K', '7,30%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (80, '2024-02-07', '5.410,00', '5.219,00', '5.429,00', '5.194,00', '42,23K', '3,64%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (81, '2024-02-06', '5.220,00', '5.244,00', '5.288,00', '5.133,00', '36,09K', '0,60%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (82, '2024-02-05', '5.189,00', '5.035,00', '5.249,00', '5.010,00', '37,59K', '3,59%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (83, '2024-02-02', '5.009,00', '4.990,00', '5.032,00', '4.939,00', '37,95K', '1,07%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (84, '2024-02-01', '4.956,00', '4.832,00', '4.981,00', '4.828,00', '36,18K', '2,78%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (85, '2024-01-31', '4.822,00', '4.795,00', '4.869,00', '4.770,00', '25,26K', '0,35%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (86, '2024-01-30', '4.805,00', '4.743,00', '4.843,00', '4.712,00', '33,96K', '1,54%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (87, '2024-01-29', '4.732,00', '4.679,00', '4.755,00', '4.632,00', '29,98K', '1,28%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (88, '2024-01-26', '4.672,00', '4.650,00', '4.696,00', '4.614,00', '25,01K', '1,02%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (89, '2024-01-25', '4.625,00', '4.815,00', '4.840,00', '4.610,00', '44,37K', '-3,34%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (90, '2024-01-24', '4.785,00', '4.679,00', '4.808,00', '4.658,00', '36,93K', '3,26%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (91, '2024-01-23', '4.634,00', '4.570,00', '4.835,00', '4.570,00', '50,90K', '1,51%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (92, '2024-01-22', '4.565,00', '4.589,00', '4.607,00', '4.529,00', '27,71K', '-0,39%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (93, '2024-01-19', '4.583,00', '4.499,00', '4.607,00', '4.479,00', '39,69K', '2,80%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (94, '2024-01-18', '4.458,00', '4.428,00', '4.497,00', '4.415,00', '29,38K', '0,22%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (95, '2024-01-17', '4.448,00', '4.420,00', '4.478,00', '4.406,00', '27,59K', '0,43%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (96, '2024-01-16', '4.429,00', '4.355,00', '4.448,00', '4.321,00', '35,66K', '2,45%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (97, '2024-01-12', '4.323,00', '4.290,00', '4.358,00', '4.285,00', '30,06K', '1,15%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (98, '2024-01-11', '4.274,00', '4.210,00', '4.280,00', '4.199,00', '24,52K', '1,62%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (99, '2024-01-10', '4.206,00', '4.171,00', '4.235,00', '4.156,00', '22,85K', '1,06%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (100, '2024-01-09', '4.162,00', '4.110,00', '4.202,00', '4.092,00', '28,73K', '1,66%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (101, '2024-01-08', '4.094,00', '4.194,00', '4.194,00', '4.034,00', '53,19K', '-2,62%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (102, '2024-01-05', '4.204,00', '4.260,00', '4.274,00', '4.194,00', '19,63K', '-1,31%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (103, '2024-01-04', '4.260,00', '4.233,00', '4.267,00', '4.232,00', '15,72K', '0,52%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (104, '2024-01-03', '4.238,00', '4.265,00', '4.273,00', '4.204,00', '25,19K', '-0,87%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (105, '2024-01-02', '4.275,00', '4.209,00', '4.287,00', '4.200,00', '24,13K', '1,88%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (106, '2023-12-29', '4.196,00', '4.256,00', '4.256,00', '4.193,00', '18,60K', '-1,41%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (107, '2023-12-28', '4.256,00', '4.288,00', '4.302,00', '4.235,00', '16,11K', '-0,56%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (108, '2023-12-27', '4.280,00', '4.296,00', '4.315,00', '4.277,00', '12,50K', '-0,07%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (109, '2023-12-26', '4.283,00', '4.320,00', '4.343,00', '4.276,00', '9,12K', '-0,65%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (110, '2023-12-22', '4.311,00', '4.277,00', '4.325,00', '4.275,00', '12,72K', '0,54%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (111, '2023-12-21', '4.288,00', '4.300,00', '4.320,00', '4.267,00', '20,61K', '-0,49%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (112, '2023-12-20', '4.309,00', '4.288,00', '4.334,00', '4.271,00', '17,00K', '0,47%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (113, '2023-12-19', '4.289,00', '4.285,00', '4.307,00', '4.254,00', '16,19K', '0,42%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (114, '2023-12-18', '4.271,00', '4.255,00', '4.307,00', '4.241,00', '18,49K', '0,64%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (115, '2023-12-15', '4.244,00', '4.273,00', '4.282,00', '4.231,00', '19,05K', '-0,54%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (116, '2023-12-14', '4.267,00', '4.270,00', '4.317,00', '4.237,00', '25,22K', '-2,91%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (117, '2023-12-13', '4.395,00', '4.245,00', '4.265,00', '4.214,00', '15,86K', '0,46%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (118, '2023-12-12', '4.375,00', '4.478,00', '4.478,00', '4.456,00', '0,01K', '0,55%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (119, '2023-12-11', '4.351,00', '4.419,00', '4.419,00', '4.388,00', '0,01K', '-0,68%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (120, '2023-12-08', '4.381,00', '4.200,00', '4.291,00', '4.148,00', '31,44K', '0,94%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (121, '2023-12-07', '4.340,00', '4.366,00', '4.366,00', '4.366,00', '0,00K', '2,33%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (122, '2023-12-06', '4.241,00', '4.206,00', '4.230,00', '4.206,00', '0,04K', '0,83%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (123, '2023-12-05', '4.206,00', '4.240,00', '4.240,00', '4.240,00', '0,01K', '-1,52%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (124, '2023-12-04', '4.271,00', '4.253,00', '4.253,00', '4.253,00', '0,02K', '-2,89%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (125, '2023-12-01', '4.398,00', '4.428,00', '4.428,00', '4.399,00', '0,01K', '-1,72%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (126, '2023-11-30', '4.475,00', '4.428,00', '4.463,00', '4.428,00', '0,02K', '0,83%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (127, '2023-11-29', '4.438,00', '4.375,00', '4.419,00', '4.375,00', '0,01K', '1,56%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (128, '2023-11-28', '4.370,00', '4.291,00', '4.381,00', '4.263,00', '0,09K', '2,58%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (129, '2023-11-27', '4.260,00', '4.220,00', '4.267,00', '4.220,00', '0,32K', '0,97%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (130, '2023-11-24', '4.219,00', '4.251,00', '4.251,00', '4.235,00', '0,03K', '1,10%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (131, '2023-11-22', '4.173,00', '4.253,00', '4.260,00', '4.160,00', '0,71K', '-1,28%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (132, '2023-11-21', '4.227,00', '4.050,00', '4.267,00', '4.046,00', '9,76K', '4,78%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (133, '2023-11-20', '4.034,00', '4.069,00', '4.099,00', '4.021,00', '10,60K', '-1,80%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (134, '2023-11-17', '4.108,00', '4.043,00', '4.118,00', '4.040,00', '26,65K', '1,61%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (135, '2023-11-16', '4.043,00', '4.026,00', '4.075,00', '4.019,00', '27,52K', '1,28%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (136, '2023-11-15', '3.992,00', '3.965,00', '4.019,00', '3.939,00', '25,83K', '0,20%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (137, '2023-11-14', '3.984,00', '4.082,00', '4.127,00', '3.953,00', '47,78K', '-1,97%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (138, '2023-11-13', '4.064,00', '4.015,00', '4.073,00', '4.011,00', '27,17K', '1,25%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (139, '2023-11-10', '4.014,00', '3.974,00', '4.035,00', '3.971,00', '29,48K', '1,06%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (140, '2023-11-09', '3.972,00', '3.960,00', '3.998,00', '3.948,00', '32,35K', '0,99%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (141, '2023-11-08', '3.933,00', '3.909,00', '3.949,00', '3.872,00', '44,65K', '0,72%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (142, '2023-11-07', '3.905,00', '3.950,00', '3.979,00', '3.890,00', '42,13K', '-0,91%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (143, '2023-11-06', '3.941,00', '3.930,00', '3.964,00', '3.896,00', '51,62K', '1,10%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (144, '2023-11-03', '3.898,00', '3.859,00', '3.906,00', '3.823,00', '25,57K', '0,85%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (145, '2023-11-02', '3.865,00', '3.810,00', '3.867,00', '3.809,00', '19,05K', '1,87%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (146, '2023-11-01', '3.794,00', '3.806,00', '3.825,00', '3.781,00', '16,71K', '-0,60%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (147, '2023-10-31', '3.817,00', '3.839,00', '3.874,00', '3.795,00', '22,85K', '-0,24%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (148, '2023-10-30', '3.826,00', '3.860,00', '3.880,00', '3.810,00', '16,84K', '-0,67%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (149, '2023-10-27', '3.852,00', '3.812,00', '3.871,00', '3.808,00', '22,90K', '1,10%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (150, '2023-10-26', '3.810,00', '3.739,00', '3.837,00', '3.732,00', '22,21K', '2,01%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (151, '2023-10-25', '3.735,00', '3.722,00', '3.781,00', '3.716,00', '19,78K', '0,16%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (152, '2023-10-24', '3.729,00', '3.774,00', '3.778,00', '3.701,00', '23,28K', '-0,80%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (153, '2023-10-23', '3.759,00', '3.726,00', '3.786,00', '3.715,00', '20,74K', '1,76%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (154, '2023-10-20', '3.694,00', '3.616,00', '3.710,00', '3.603,00', '20,40K', '1,26%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (155, '2023-10-19', '3.648,00', '3.660,00', '3.700,00', '3.630,00', '21,54K', '0,25%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (156, '2023-10-18', '3.639,00', '3.627,00', '3.672,00', '3.615,00', '23,51K', '0,11%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (157, '2023-10-17', '3.635,00', '3.584,00', '3.642,00', '3.570,00', '20,61K', '1,23%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (158, '2023-10-16', '3.591,00', '3.513,00', '3.613,00', '3.506,00', '30,43K', '2,63%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (159, '2023-10-13', '3.499,00', '3.488,00', '3.514,00', '3.455,00', '17,56K', '0,26%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (160, '2023-10-12', '3.490,00', '3.480,00', '3.503,00', '3.460,00', '19,37K', '1,69%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (161, '2023-10-11', '3.432,00', '3.485,00', '3.490,00', '3.426,00', '14,22K', '-1,21%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (162, '2023-10-10', '3.474,00', '3.444,00', '3.479,00', '3.432,00', '15,12K', '1,14%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (163, '2023-10-09', '3.435,00', '3.460,00', '3.465,00', '3.406,00', '14,89K', '-0,52%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (164, '2023-10-06', '3.453,00', '3.392,00', '3.469,00', '3.373,00', '22,15K', '1,56%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (165, '2023-10-05', '3.400,00', '3.438,00', '3.445,00', '3.375,00', '22,99K', '-0,90%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (166, '2023-10-04', '3.431,00', '3.414,00', '3.453,00', '3.410,00', '15,88K', '0,09%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (167, '2023-10-03', '3.428,00', '3.487,00', '3.508,00', '3.414,00', '22,60K', '-2,11%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (168, '2023-10-02', '3.502,00', '3.432,00', '3.525,00', '3.432,00', '27,43K', '2,46%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (169, '2023-09-29', '3.418,00', '3.457,00', '3.484,00', '3.402,00', '26,00K', '-1,19%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (170, '2023-09-28', '3.459,00', '3.431,00', '3.471,00', '3.425,00', '23,34K', '1,26%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (171, '2023-09-27', '3.416,00', '3.489,00', '3.489,00', '3.398,00', '32,69K', '-2,40%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (172, '2023-09-26', '3.500,00', '3.500,00', '3.539,00', '3.488,00', '19,99K', '0,11%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (173, '2023-09-25', '3.496,00', '3.583,00', '3.583,00', '3.491,00', '23,82K', '-2,40%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (174, '2023-09-22', '3.582,00', '3.595,00', '3.643,00', '3.565,00', '20,99K', '-0,36%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (175, '2023-09-21', '3.595,00', '3.576,00', '3.609,00', '3.553,00', '21,42K', '0,70%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (176, '2023-09-20', '3.570,00', '3.614,00', '3.625,00', '3.555,00', '25,70K', '-1,98%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (177, '2023-09-19', '3.642,00', '3.640,00', '3.688,00', '3.633,00', '22,50K', '0,58%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (178, '2023-09-18', '3.621,00', '3.747,00', '3.754,00', '3.613,00', '29,77K', '-3,62%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (179, '2023-09-15', '3.757,00', '3.738,00', '3.763,00', '3.725,00', '14,10K', '-2,49%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (180, '2023-09-14', '3.853,00', '3.717,00', '3.750,00', '3.706,00', '17,48K', '0,10%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (181, '2023-09-13', '3.849,00', '3.853,00', '3.874,00', '3.853,00', '0,00K', '2,04%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (182, '2023-09-12', '3.772,00', '3.650,00', '3.808,00', '3.650,00', '0,02K', '4,46%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (183, '2023-09-11', '3.611,00', '3.618,00', '3.618,00', '3.618,00', '0,01K', '0,06%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (184, '2023-09-08', '3.609,00', '3.624,00', '3.625,00', '3.610,00', '0,02K', '1,01%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (185, '2023-09-07', '3.573,00', '3.565,00', '3.591,00', '3.565,00', '0,01K', '-0,11%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (186, '2023-09-06', '3.577,00', '3.648,00', '3.691,00', '3.627,00', '16,85K', '0,48%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (187, '2023-09-05', '3.560,00', '3.638,00', '3.638,00', '3.595,00', '0,08K', '-0,39%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (188, '2023-09-01', '3.574,00', '3.626,00', '3.626,00', '3.575,00', '0,01K', '-0,78%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (189, '2023-08-31', '3.602,00', '3.633,00', '3.633,00', '3.633,00', '0,00K', '-0,11%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (190, '2023-08-30', '3.606,00', '3.576,00', '3.576,00', '3.576,00', '0,00K', '1,43%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (191, '2023-08-29', '3.555,00', '3.525,00', '3.549,00', '3.525,00', '0,01K', '3,28%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (192, '2023-08-28', '3.442,00', '3.465,00', '3.465,00', '3.444,00', '0,01K', '0,35%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (193, '2023-08-25', '3.430,00', '3.439,00', '3.440,00', '3.437,00', '0,05K', '1,99%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (194, '2023-08-24', '3.363,00', '3.328,00', '3.399,00', '3.298,00', '4,36K', '1,20%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (195, '2023-08-23', '3.323,00', '3.328,00', '3.347,00', '3.301,00', '2,12K', '-0,18%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (196, '2023-08-22', '3.329,00', '3.368,00', '3.375,00', '3.311,00', '3,37K', '-0,77%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (197, '2023-08-21', '3.355,00', '3.355,00', '3.409,00', '3.338,00', '2,06K', '-0,33%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (198, '2023-08-18', '3.366,00', '3.410,00', '3.410,00', '3.354,00', '3,65K', '-1,38%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (199, '2023-08-17', '3.413,00', '3.382,00', '3.440,00', '3.382,00', '3,82K', '1,22%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (200, '2023-08-16', '3.372,00', '3.336,00', '3.381,00', '3.324,00', '7,30K', '0,96%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (201, '2023-08-15', '3.340,00', '3.308,00', '3.376,00', '3.305,00', '5,14K', '0,57%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (202, '2023-08-14', '3.321,00', '3.305,00', '3.343,00', '3.293,00', '6,92K', '0,73%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (203, '2023-08-11', '3.297,00', '3.264,00', '3.311,00', '3.245,00', '13,73K', '0,46%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (204, '2023-08-10', '3.282,00', '3.299,00', '3.316,00', '3.237,00', '22,97K', '-1,11%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (205, '2023-08-09', '3.319,00', '3.342,00', '3.368,00', '3.278,00', '22,76K', '-0,42%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (206, '2023-08-08', '3.333,00', '3.456,00', '3.456,00', '3.266,00', '44,56K', '-4,11%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (207, '2023-08-07', '3.476,00', '3.498,00', '3.652,00', '3.430,00', '79,74K', '-0,97%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (208, '2023-08-04', '3.510,00', '3.486,00', '3.551,00', '3.485,00', '39,43K', '0,54%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (209, '2023-08-03', '3.491,00', '3.550,00', '3.559,00', '3.484,00', '33,44K', '-1,99%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (210, '2023-08-02', '3.562,00', '3.538,00', '3.582,00', '3.530,00', '28,98K', '0,54%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (211, '2023-08-01', '3.543,00', '3.551,00', '3.578,00', '3.507,00', '29,11K', '-0,14%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (212, '2023-07-31', '3.548,00', '3.527,00', '3.569,00', '3.523,00', '19,20K', '0,65%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (213, '2023-07-28', '3.525,00', '3.549,00', '3.562,00', '3.518,00', '14,06K', '-0,11%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (214, '2023-07-27', '3.529,00', '3.580,00', '3.602,00', '3.502,00', '23,79K', '-0,65%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (215, '2023-07-26', '3.552,00', '3.470,00', '3.569,00', '3.464,00', '40,04K', '2,36%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (216, '2023-07-25', '3.470,00', '3.427,00', '3.519,00', '3.421,00', '27,27K', '1,55%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (217, '2023-07-24', '3.417,00', '3.410,00', '3.425,00', '3.391,00', '13,59K', '0,06%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (218, '2023-07-21', '3.415,00', '3.368,00', '3.427,00', '3.360,00', '17,64K', '0,80%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (219, '2023-07-20', '3.388,00', '3.410,00', '3.420,00', '3.373,00', '18,33K', '-1,31%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (220, '2023-07-19', '3.433,00', '3.400,00', '3.439,00', '3.382,00', '21,68K', '0,76%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (221, '2023-07-18', '3.407,00', '3.371,00', '3.429,00', '3.343,00', '23,09K', '1,43%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (222, '2023-07-17', '3.359,00', '3.351,00', '3.374,00', '3.323,00', '18,46K', '1,57%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (223, '2023-07-14', '3.307,00', '3.269,00', '3.373,00', '3.262,00', '35,46K', '2,32%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (224, '2023-07-13', '3.232,00', '3.268,00', '3.268,00', '3.230,00', '0,01K', '-2,03%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (225, '2023-07-12', '3.299,00', '3.293,00', '3.305,00', '3.293,00', '0,02K', '0,09%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (226, '2023-07-11', '3.296,00', '3.325,00', '3.368,00', '3.314,00', '15,49K', '-0,09%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (227, '2023-07-10', '3.299,00', '3.309,00', '3.309,00', '3.290,00', '0,00K', '0,76%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (228, '2023-07-07', '3.274,00', '3.290,00', '3.290,00', '3.290,00', '0,00K', '-0,09%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (229, '2023-07-06', '3.277,00', '3.356,00', '3.378,00', '3.294,00', '19,54K', '-1,71%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (230, '2023-07-05', '3.334,00', '3.341,00', '3.356,00', '3.323,00', '0,04K', '-0,89%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (231, '2023-07-03', '3.364,00', '3.306,00', '3.306,00', '3.306,00', '0,00K', '1,39%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (232, '2023-06-30', '3.318,00', '3.324,00', '3.324,00', '3.324,00', '0,00K', '3,11%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (233, '2023-06-29', '3.218,00', '3.253,00', '3.253,00', '3.253,00', '0,00K', '-2,25%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (234, '2023-06-28', '3.292,00', '3.242,00', '3.258,00', '3.237,00', '0,02K', '2,49%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (235, '2023-06-27', '3.212,00', '3.217,00', '3.217,00', '3.209,00', '0,01K', '0,19%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (236, '2023-06-26', '3.206,00', '3.150,00', '3.233,00', '3.150,00', '0,02K', '2,66%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (237, '2023-06-23', '3.123,00', '3.122,00', '3.147,00', '3.109,00', '2,12K', '-0,48%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (238, '2023-06-22', '3.138,00', '3.157,00', '3.166,00', '3.128,00', '1,66K', '-0,82%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (239, '2023-06-21', '3.164,00', '3.131,00', '3.182,00', '3.104,00', '4,00K', '0,70%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (240, '2023-06-20', '3.142,00', '3.192,00', '3.192,00', '3.129,00', '12,15K', '-1,44%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (241, '2023-06-16', '3.188,00', '3.218,00', '3.228,00', '3.171,00', '5,72K', '-1,18%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (242, '2023-06-15', '3.226,00', '3.200,00', '3.236,00', '3.164,00', '7,85K', '1,16%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (243, '2023-06-14', '3.189,00', '3.182,00', '3.225,00', '3.142,00', '22,39K', '0,09%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (244, '2023-06-13', '3.186,00', '3.141,00', '3.261,00', '3.141,00', '20,20K', '1,59%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (245, '2023-06-12', '3.136,00', '3.170,00', '3.188,00', '3.129,00', '17,95K', '-1,38%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (246, '2023-06-09', '3.180,00', '3.162,00', '3.182,00', '3.142,00', '27,19K', '0,98%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (247, '2023-06-08', '3.149,00', '3.104,00', '3.169,00', '3.090,00', '26,98K', '1,48%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (248, '2023-06-07', '3.103,00', '3.038,00', '3.109,00', '3.028,00', '43,64K', '1,90%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (249, '2023-06-06', '3.045,00', '3.063,00', '3.096,00', '3.040,00', '52,11K', '-0,36%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (250, '2023-06-05', '3.056,00', '3.020,00', '3.065,00', '3.002,00', '28,78K', '0,99%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (251, '2023-06-02', '3.026,00', '3.003,00', '3.034,00', '2.991,00', '25,53K', '0,60%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (252, '2023-06-01', '3.008,00', '3.017,00', '3.047,00', '3.002,00', '34,42K', '0,03%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (253, '2023-05-31', '3.007,00', '3.000,00', '3.031,00', '2.993,00', '26,45K', '0,07%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (254, '2023-05-30', '3.005,00', '2.991,00', '3.028,00', '2.991,00', '19,32K', '0,47%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (255, '2023-05-26', '2.991,00', '3.017,00', '3.038,00', '2.988,00', '25,35K', '-0,86%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (256, '2023-05-25', '3.017,00', '3.008,00', '3.028,00', '2.992,00', '16,18K', '0,23%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (257, '2023-05-24', '3.010,00', '3.010,00', '3.034,00', '2.985,00', '19,26K', '-0,20%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (258, '2023-05-23', '3.016,00', '3.021,00', '3.049,00', '3.009,00', '16,99K', '-0,23%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (259, '2023-05-22', '3.023,00', '3.074,00', '3.079,00', '3.019,00', '24,53K', '-1,47%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (260, '2023-05-19', '3.068,00', '2.988,00', '3.074,00', '2.971,00', '31,23K', '2,57%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (261, '2023-05-18', '2.991,00', '3.000,00', '3.030,00', '2.985,00', '21,18K', '-0,30%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (262, '2023-05-17', '3.000,00', '2.989,00', '3.012,00', '2.968,00', '14,46K', '0,17%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (263, '2023-05-16', '2.995,00', '2.980,00', '3.008,00', '2.974,00', '19,38K', '-5,22%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (264, '2023-05-15', '3.160,00', '2.975,00', '2.991,00', '2.945,00', '21,30K', '-2,05%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (265, '2023-05-12', '3.226,00', '3.244,00', '3.279,00', '3.244,00', '0,05K', '-0,49%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (266, '2023-05-11', '3.242,00', '3.269,00', '3.269,00', '3.200,00', '0,01K', '-0,55%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (267, '2023-05-10', '3.260,00', '3.269,00', '3.277,00', '3.263,00', '0,01K', '0,96%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (268, '2023-05-09', '3.229,00', '3.235,00', '3.242,00', '3.235,00', '0,01K', '1,57%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (269, '2023-05-08', '3.179,00', '3.188,00', '3.195,00', '3.178,00', '0,00K', '2,25%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (270, '2023-05-05', '3.109,00', '2.918,00', '2.946,00', '2.911,00', '19,97K', '1,87%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (271, '2023-05-04', '3.052,00', '2.867,00', '2.926,00', '2.862,00', '24,20K', '1,26%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (272, '2023-05-03', '3.014,00', '3.100,00', '3.101,00', '2.988,00', '0,04K', '-3,71%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (273, '2023-05-02', '3.130,00', '3.125,00', '3.125,00', '3.125,00', '0,01K', '-1,29%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (274, '2023-05-01', '3.171,00', '3.200,00', '3.200,00', '3.200,00', '0,02K', '-0,09%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (275, '2023-04-28', '3.174,00', '3.137,00', '3.178,00', '3.137,00', '0,01K', '0,76%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (276, '2023-04-27', '3.150,00', '3.171,00', '3.171,00', '3.171,00', '0,01K', '-0,82%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (277, '2023-04-26', '3.176,00', '3.165,00', '3.189,00', '3.164,00', '0,02K', '0,86%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (278, '2023-04-25', '3.149,00', '3.200,00', '3.200,00', '3.117,00', '0,04K', '-1,69%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (279, '2023-04-24', '3.203,00', '3.207,00', '3.209,00', '3.152,00', '0,11K', '1,01%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (280, '2023-04-21', '3.171,00', '3.103,00', '3.221,00', '3.074,00', '3,09K', '2,72%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (281, '2023-04-20', '3.087,00', '3.079,00', '3.103,00', '3.057,00', '8,69K', '0,26%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (282, '2023-04-19', '3.079,00', '3.066,00', '3.085,00', '3.038,00', '9,11K', '0,82%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (283, '2023-04-18', '3.054,00', '3.015,00', '3.072,00', '2.991,00', '9,88K', '1,70%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (284, '2023-04-17', '3.003,00', '2.979,00', '3.013,00', '2.974,00', '9,77K', '0,64%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (285, '2023-04-14', '2.984,00', '3.002,00', '3.043,00', '2.964,00', '11,07K', '-0,60%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (286, '2023-04-13', '3.002,00', '2.982,00', '3.017,00', '2.960,00', '13,41K', '1,62%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (287, '2023-04-12', '2.954,00', '2.978,00', '2.998,00', '2.941,00', '21,05K', '-1,04%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (288, '2023-04-11', '2.985,00', '2.923,00', '2.994,00', '2.920,00', '45,87K', '2,16%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (289, '2023-04-10', '2.922,00', '2.919,00', '2.934,00', '2.864,00', '28,42K', '0,10%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (290, '2023-04-06', '2.919,00', '2.919,00', '2.936,00', '2.902,00', '59,23K', '0,55%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (291, '2023-04-05', '2.903,00', '2.921,00', '2.922,00', '2.886,00', '36,59K', '-0,38%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (292, '2023-04-04', '2.914,00', '2.867,00', '2.925,00', '2.858,00', '40,76K', '1,60%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (293, '2023-04-03', '2.868,00', '2.927,00', '2.929,00', '2.851,00', '35,39K', '-2,22%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (294, '2023-03-31', '2.933,00', '2.917,00', '2.963,00', '2.905,00', '29,95K', '0,55%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (295, '2023-03-30', '2.917,00', '2.873,00', '2.927,00', '2.848,00', '36,61K', '1,28%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (296, '2023-03-29', '2.880,00', '2.900,00', '2.903,00', '2.874,00', '21,73K', '-0,72%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (297, '2023-03-28', '2.901,00', '2.903,00', '2.922,00', '2.888,00', '23,74K', '-0,03%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (298, '2023-03-27', '2.902,00', '2.881,00', '2.923,00', '2.867,00', '28,45K', '0,62%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (299, '2023-03-24', '2.884,00', '2.851,00', '2.892,00', '2.849,00', '25,49K', '0,56%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (300, '2023-03-23', '2.868,00', '2.873,00', '2.888,00', '2.843,00', '34,48K', '-0,21%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (301, '2023-03-22', '2.874,00', '2.816,00', '2.878,00', '2.816,00', '39,68K', '2,02%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (302, '2023-03-21', '2.817,00', '2.788,00', '2.823,00', '2.781,00', '32,44K', '1,15%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (303, '2023-03-20', '2.785,00', '2.715,00', '2.796,00', '2.713,00', '33,31K', '1,72%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (304, '2023-03-17', '2.738,00', '2.695,00', '2.746,00', '2.695,00', '32,96K', '3,01%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (305, '2023-03-16', '2.658,00', '2.624,00', '2.691,00', '2.618,00', '35,89K', '2,78%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (306, '2023-03-15', '2.586,00', '2.655,00', '2.658,00', '2.604,00', '32,31K', '-1,60%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (307, '2023-03-14', '2.628,00', '2.606,00', '2.606,00', '2.600,00', '0,01K', '0,57%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (308, '2023-03-13', '2.613,00', '2.696,00', '2.696,00', '2.639,00', '39,17K', '-2,28%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (309, '2023-03-10', '2.674,00', '2.675,00', '2.678,00', '2.638,00', '0,00K', '-2,12%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (310, '2023-03-09', '2.732,00', '2.728,00', '2.743,00', '2.719,00', '17,49K', '0,11%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (311, '2023-03-08', '2.729,00', '2.750,00', '2.763,00', '2.722,00', '19,19K', '-0,98%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (312, '2023-03-07', '2.756,00', '2.789,00', '2.795,00', '2.739,00', '20,58K', '-1,25%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (313, '2023-03-06', '2.791,00', '2.774,00', '2.804,00', '2.744,00', '21,67K', '2,23%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (314, '2023-03-03', '2.730,00', '2.744,00', '2.749,00', '2.720,00', '0,00K', '-1,09%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (315, '2023-03-02', '2.760,00', '2.769,00', '2.815,00', '2.730,00', '0,06K', '-1,43%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (316, '2023-03-01', '2.800,00', '2.830,00', '2.831,00', '2.830,00', '0,00K', '1,89%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (317, '2023-02-28', '2.748,00', '2.757,00', '2.804,00', '2.748,00', '21,68K', '1,22%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (318, '2023-02-27', '2.715,00', '2.743,00', '2.793,00', '2.735,00', '22,65K', '-1,20%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (319, '2023-02-24', '2.748,00', '2.768,00', '2.778,00', '2.738,00', '18,96K', '-0,79%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (320, '2023-02-23', '2.770,00', '2.767,00', '2.788,00', '2.746,00', '19,70K', '-0,32%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (321, '2023-02-22', '2.779,00', '2.786,00', '2.799,00', '2.759,00', '24,04K', '1,72%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (322, '2023-02-21', '2.732,00', '2.738,00', '2.760,00', '2.717,00', '6,29K', '0,37%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (323, '2023-02-17', '2.722,00', '2.715,00', '2.750,00', '2.710,00', '4,35K', '0,81%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (324, '2023-02-16', '2.700,00', '2.702,00', '2.735,00', '2.674,00', '6,29K', '0,30%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (325, '2023-02-15', '2.692,00', '2.653,00', '2.730,00', '2.646,00', '7,39K', '2,71%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (326, '2023-02-14', '2.621,00', '2.630,00', '2.660,00', '2.605,00', '5,30K', '0,00%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (327, '2023-02-13', '2.621,00', '2.583,00', '2.634,00', '2.580,00', '9,41K', '2,22%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (328, '2023-02-10', '2.564,00', '2.575,00', '2.587,00', '2.530,00', '9,36K', '-0,54%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (329, '2023-02-09', '2.578,00', '2.573,00', '2.599,00', '2.546,00', '13,70K', '-0,04%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (330, '2023-02-08', '2.579,00', '2.592,00', '2.602,00', '2.570,00', '26,28K', '-0,08%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (331, '2023-02-07', '2.581,00', '2.576,00', '2.589,00', '2.544,00', '38,59K', '0,16%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (332, '2023-02-06', '2.577,00', '2.569,00', '2.595,00', '2.546,00', '29,97K', '0,31%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (333, '2023-02-03', '2.569,00', '2.580,00', '2.580,00', '2.540,00', '32,30K', '-0,54%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (334, '2023-02-02', '2.583,00', '2.587,00', '2.610,00', '2.577,00', '21,04K', '-0,35%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (335, '2023-02-01', '2.592,00', '2.572,00', '2.630,00', '2.570,00', '25,95K', '0,43%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (336, '2023-01-31', '2.581,00', '2.606,00', '2.607,00', '2.570,00', '26,85K', '-1,15%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (337, '2023-01-30', '2.611,00', '2.627,00', '2.656,00', '2.591,00', '22,44K', '-0,61%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (338, '2023-01-27', '2.627,00', '2.618,00', '2.640,00', '2.612,00', '14,66K', '-0,08%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (339, '2023-01-26', '2.629,00', '2.597,00', '2.645,00', '2.596,00', '18,02K', '1,43%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (340, '2023-01-25', '2.592,00', '2.596,00', '2.614,00', '2.579,00', '16,67K', '0,27%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (341, '2023-01-24', '2.585,00', '2.596,00', '2.615,00', '2.576,00', '17,77K', '-0,88%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (342, '2023-01-23', '2.608,00', '2.573,00', '2.626,00', '2.564,00', '25,40K', '1,52%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (343, '2023-01-20', '2.569,00', '2.556,00', '2.576,00', '2.507,00', '43,77K', '-0,04%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (344, '2023-01-19', '2.570,00', '2.610,00', '2.616,00', '2.562,00', '29,89K', '-1,91%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (345, '2023-01-18', '2.620,00', '2.650,00', '2.665,00', '2.616,00', '19,65K', '-0,80%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (346, '2023-01-17', '2.641,00', '2.642,00', '2.675,00', '2.621,00', '23,49K', '-0,38%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (347, '2023-01-13', '2.651,00', '2.651,00', '2.669,00', '2.631,00', '16,03K', '0,42%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (348, '2023-01-12', '2.640,00', '2.641,00', '2.665,00', '2.620,00', '15,75K', '0,27%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (349, '2023-01-11', '2.633,00', '2.602,00', '2.641,00', '2.593,00', '19,50K', '1,11%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (350, '2023-01-10', '2.604,00', '2.686,00', '2.686,00', '2.602,00', '32,10K', '-3,20%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (351, '2023-01-09', '2.690,00', '2.623,00', '2.699,00', '2.621,00', '30,61K', '3,26%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (352, '2023-01-06', '2.605,00', '2.616,00', '2.618,00', '2.572,00', '20,20K', '-0,46%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (353, '2023-01-05', '2.617,00', '2.607,00', '2.640,00', '2.602,00', '21,33K', '0,54%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (354, '2023-01-04', '2.603,00', '2.574,00', '2.614,00', '2.566,00', '16,84K', '1,21%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (355, '2023-01-03', '2.572,00', '2.587,00', '2.594,00', '2.535,00', '24,33K', '-1,08%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (356, '2022-12-30', '2.600,00', '2.587,00', '2.606,00', '2.569,00', '14,62K', '0,85%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (357, '2022-12-29', '2.578,00', '2.610,00', '2.614,00', '2.562,00', '19,32K', '-1,64%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (358, '2022-12-28', '2.621,00', '2.624,00', '2.671,00', '2.604,00', '20,88K', '-0,46%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (359, '2022-12-27', '2.633,00', '2.630,00', '2.662,00', '2.616,00', '16,56K', '0,19%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (360, '2022-12-23', '2.628,00', '2.613,00', '2.651,00', '2.609,00', '26,05K', '0,84%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (361, '2022-12-22', '2.606,00', '2.534,00', '2.626,00', '2.524,00', '36,69K', '3,04%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (362, '2022-12-21', '2.529,00', '2.498,00', '2.537,00', '2.485,00', '18,70K', '1,24%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (363, '2022-12-20', '2.498,00', '2.496,00', '2.532,00', '2.487,00', '19,14K', '-0,04%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (364, '2022-12-19', '2.499,00', '2.474,00', '2.519,00', '2.469,00', '17,82K', '0,97%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (365, '2022-12-16', '2.475,00', '2.510,00', '2.517,00', '2.468,00', '22,07K', '-1,67%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (366, '2022-12-15', '2.517,00', '2.520,00', '2.544,00', '2.509,00', '15,07K', '1,74%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (367, '2022-12-14', '2.474,00', '2.536,00', '2.541,00', '2.516,00', '16,49K', '-0,68%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (368, '2022-12-13', '2.491,00', '2.502,00', '2.557,00', '2.502,00', '25,11K', '1,59%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (369, '2022-12-12', '2.452,00', '2.489,00', '2.512,00', '2.477,00', '18,40K', '-0,08%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (370, '2022-12-09', '2.454,00', '2.544,00', '2.570,00', '2.500,00', '25,09K', '-1,52%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (371, '2022-12-08', '2.492,00', '2.500,00', '2.552,00', '2.493,00', '18,52K', '2,05%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (372, '2022-12-07', '2.442,00', '2.456,00', '2.456,00', '2.456,00', '0,00K', '0,21%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (373, '2022-12-06', '2.437,00', '2.479,00', '2.509,00', '2.475,00', '17,84K', '0,21%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (374, '2022-12-05', '2.432,00', '2.529,00', '2.539,00', '2.470,00', '21,89K', '-2,29%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (375, '2022-12-02', '2.489,00', '2.497,00', '2.497,00', '2.497,00', '0,00K', '0,69%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (376, '2022-12-01', '2.472,00', '2.504,00', '2.542,00', '2.489,00', '25,28K', '0,86%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (377, '2022-11-30', '2.451,00', '2.461,00', '2.502,00', '2.455,00', '20,17K', '0,74%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (378, '2022-11-29', '2.433,00', '2.489,00', '2.506,00', '2.455,00', '21,59K', '-0,21%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (379, '2022-11-28', '2.438,00', '2.435,00', '2.446,00', '2.435,00', '0,00K', '0,04%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (380, '2022-11-25', '2.437,00', '2.422,00', '2.428,00', '2.389,00', '0,03K', '1,67%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (381, '2022-11-23', '2.397,00', '2.380,00', '2.403,00', '2.380,00', '0,01K', '0,67%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (382, '2022-11-22', '2.381,00', '2.390,00', '2.410,00', '2.364,00', '2,13K', '-0,25%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (383, '2022-11-21', '2.387,00', '2.403,00', '2.415,00', '2.358,00', '3,67K', '-1,04%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (384, '2022-11-18', '2.412,00', '2.446,00', '2.453,00', '2.392,00', '8,69K', '-0,66%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (385, '2022-11-17', '2.428,00', '2.495,00', '2.497,00', '2.425,00', '12,73K', '-3,00%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (386, '2022-11-16', '2.503,00', '2.500,00', '2.515,00', '2.477,00', '5,90K', '0,12%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (387, '2022-11-15', '2.500,00', '2.498,00', '2.559,00', '2.497,00', '8,69K', '0,12%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (388, '2022-11-14', '2.497,00', '2.504,00', '2.517,00', '2.487,00', '14,38K', '-0,91%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (389, '2022-11-11', '2.520,00', '2.568,00', '2.580,00', '2.510,00', '13,93K', '-1,49%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (390, '2022-11-10', '2.558,00', '2.530,00', '2.572,00', '2.515,00', '14,72K', '1,03%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (391, '2022-11-09', '2.532,00', '2.506,00', '2.549,00', '2.506,00', '26,41K', '-0,20%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (392, '2022-11-08', '2.537,00', '2.516,00', '2.541,00', '2.494,00', '45,29K', '1,24%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (393, '2022-11-07', '2.506,00', '2.442,00', '2.523,00', '2.436,00', '81,38K', '2,96%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (394, '2022-11-04', '2.434,00', '2.388,00', '2.459,00', '2.378,00', '50,01K', '2,61%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (395, '2022-11-03', '2.372,00', '2.362,00', '2.382,00', '2.349,00', '24,76K', '-0,29%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (396, '2022-11-02', '2.379,00', '2.355,00', '2.390,00', '2.353,00', '30,59K', '1,32%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (397, '2022-11-01', '2.348,00', '2.339,00', '2.354,00', '2.317,00', '24,45K', '0,56%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (398, '2022-10-31', '2.335,00', '2.297,00', '2.355,00', '2.295,00', '27,99K', '1,43%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (399, '2022-10-28', '2.302,00', '2.303,00', '2.330,00', '2.287,00', '24,58K', '-0,52%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (400, '2022-10-27', '2.314,00', '2.284,00', '2.324,00', '2.279,00', '22,13K', '1,58%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (401, '2022-10-26', '2.278,00', '2.295,00', '2.321,00', '2.275,00', '25,37K', '-0,78%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (402, '2022-10-25', '2.296,00', '2.323,00', '2.328,00', '2.279,00', '28,51K', '-1,75%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (403, '2022-10-24', '2.337,00', '2.320,00', '2.348,00', '2.317,00', '21,13K', '1,34%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (404, '2022-10-21', '2.306,00', '2.308,00', '2.319,00', '2.287,00', '17,00K', '-0,95%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (405, '2022-10-20', '2.328,00', '2.305,00', '2.333,00', '2.300,00', '18,25K', '0,87%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (406, '2022-10-19', '2.308,00', '2.304,00', '2.313,00', '2.275,00', '28,39K', '0,13%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (407, '2022-10-18', '2.305,00', '2.338,00', '2.343,00', '2.303,00', '27,37K', '-1,50%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (408, '2022-10-17', '2.340,00', '2.366,00', '2.395,00', '2.322,00', '33,77K', '-1,56%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (409, '2022-10-14', '2.377,00', '2.388,00', '2.407,00', '2.371,00', '26,34K', '-0,34%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (410, '2022-10-13', '2.385,00', '2.316,00', '2.388,00', '2.309,00', '31,66K', '2,89%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (411, '2022-10-12', '2.318,00', '2.349,00', '2.362,00', '2.312,00', '23,70K', '-1,24%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (412, '2022-10-11', '2.347,00', '2.353,00', '2.388,00', '2.342,00', '23,90K', '-0,47%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (413, '2022-10-10', '2.358,00', '2.395,00', '2.412,00', '2.356,00', '23,85K', '-1,59%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (414, '2022-10-07', '2.396,00', '2.390,00', '2.405,00', '2.373,00', '22,40K', '0,97%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (415, '2022-10-06', '2.373,00', '2.402,00', '2.422,00', '2.367,00', '33,72K', '-0,79%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (416, '2022-10-05', '2.392,00', '2.368,00', '2.403,00', '2.364,00', '36,06K', '1,36%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (417, '2022-10-04', '2.360,00', '2.334,00', '2.382,00', '2.325,00', '31,03K', '0,98%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (418, '2022-10-03', '2.337,00', '2.358,00', '2.377,00', '2.321,00', '30,03K', '-0,72%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (419, '2022-09-30', '2.354,00', '2.340,00', '2.375,00', '2.330,00', '29,00K', '1,16%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (420, '2022-09-29', '2.327,00', '2.300,00', '2.333,00', '2.299,00', '24,44K', '1,97%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (421, '2022-09-28', '2.282,00', '2.270,00', '2.308,00', '2.248,00', '22,82K', '-0,17%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (422, '2022-09-27', '2.286,00', '2.252,00', '2.290,00', '2.241,00', '24,91K', '1,92%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (423, '2022-09-26', '2.243,00', '2.225,00', '2.281,00', '2.192,00', '36,43K', '-0,18%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (424, '2022-09-23', '2.247,00', '2.310,00', '2.315,00', '2.242,00', '39,31K', '-3,19%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (425, '2022-09-22', '2.321,00', '2.350,00', '2.360,00', '2.316,00', '22,48K', '-1,32%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (426, '2022-09-21', '2.352,00', '2.347,00', '2.373,00', '2.335,00', '15,25K', '-0,13%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (427, '2022-09-20', '2.355,00', '2.370,00', '2.395,00', '2.340,00', '24,91K', '-0,59%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (428, '2022-09-19', '2.369,00', '2.350,00', '2.395,00', '2.344,00', '15,72K', '0,38%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (429, '2022-09-16', '2.360,00', '2.360,00', '2.375,00', '2.328,00', '22,01K', '-2,16%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (430, '2022-09-15', '2.412,00', '2.313,00', '2.380,00', '2.309,00', '32,21K', '4,33%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (431, '2022-09-14', '2.312,00', '2.350,00', '2.359,00', '2.300,00', '29,20K', '-1,62%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (432, '2022-09-13', '2.350,00', '2.381,00', '2.385,00', '2.342,00', '19,89K', '-1,51%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (433, '2022-09-12', '2.386,00', '2.372,00', '2.388,00', '2.339,00', '22,43K', '1,10%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (434, '2022-09-09', '2.360,00', '2.339,00', '2.380,00', '2.335,00', '22,21K', '1,37%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (435, '2022-09-08', '2.328,00', '2.343,00', '2.354,00', '2.320,00', '30,18K', '-0,94%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (436, '2022-09-07', '2.350,00', '2.369,00', '2.383,00', '2.333,00', '24,82K', '-0,80%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (437, '2022-09-06', '2.369,00', '2.413,00', '2.429,00', '2.355,00', '35,12K', '-1,95%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (438, '2022-09-02', '2.416,00', '2.372,00', '2.419,00', '2.358,00', '22,33K', '2,03%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (439, '2022-09-01', '2.368,00', '2.402,00', '2.414,00', '2.360,00', '30,26K', '-1,86%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (440, '2022-08-31', '2.413,00', '2.409,00', '2.436,00', '2.390,00', '21,60K', '0,21%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (441, '2022-08-30', '2.408,00', '2.412,00', '2.432,00', '2.399,00', '17,23K', '-0,08%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (442, '2022-08-29', '2.410,00', '2.410,00', '2.424,00', '2.379,00', '13,70K', '-0,12%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (443, '2022-08-26', '2.413,00', '2.419,00', '2.427,00', '2.395,00', '15,72K', '-0,17%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (444, '2022-08-25', '2.417,00', '2.395,00', '2.429,00', '2.383,00', '28,75K', '0,79%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (445, '2022-08-24', '2.398,00', '2.348,00', '2.402,00', '2.325,00', '33,40K', '3,45%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (446, '2022-08-23', '2.318,00', '2.356,00', '2.372,00', '2.314,00', '29,53K', '-1,61%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (447, '2022-08-22', '2.356,00', '2.374,00', '2.398,00', '2.339,00', '26,16K', '-0,76%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (448, '2022-08-19', '2.374,00', '2.400,00', '2.414,00', '2.365,00', '26,91K', '-1,98%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (449, '2022-08-18', '2.422,00', '2.428,00', '2.454,00', '2.400,00', '24,13K', '0,04%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (450, '2022-08-17', '2.421,00', '2.363,00', '2.432,00', '2.351,00', '29,95K', '2,15%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (451, '2022-08-16', '2.370,00', '2.391,00', '2.395,00', '2.360,00', '24,51K', '-1,29%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (452, '2022-08-15', '2.401,00', '2.400,00', '2.424,00', '2.390,00', '16,85K', '0,29%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (453, '2022-08-12', '2.394,00', '2.432,00', '2.435,00', '2.385,00', '26,15K', '-2,33%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (454, '2022-08-11', '2.451,00', '2.444,00', '2.469,00', '2.429,00', '38,31K', '0,53%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (455, '2022-08-10', '2.438,00', '2.404,00', '2.458,00', '2.402,00', '51,27K', '1,41%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (456, '2022-08-09', '2.404,00', '2.387,00', '2.408,00', '2.371,00', '49,48K', '1,01%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (457, '2022-08-08', '2.380,00', '2.341,00', '2.388,00', '2.335,00', '38,24K', '1,67%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (458, '2022-08-05', '2.341,00', '2.398,00', '2.404,00', '2.336,00', '57,23K', '-1,97%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (459, '2022-08-04', '2.388,00', '2.329,00', '2.396,00', '2.314,00', '48,92K', '2,23%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (460, '2022-08-03', '2.336,00', '2.388,00', '2.388,00', '2.326,00', '28,09K', '-2,26%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (461, '2022-08-02', '2.390,00', '2.386,00', '2.419,00', '2.376,00', '19,09K', '0,00%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (462, '2022-08-01', '2.390,00', '2.374,00', '2.410,00', '2.367,00', '18,47K', '0,72%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (463, '2022-07-29', '2.373,00', '2.365,00', '2.390,00', '2.352,00', '23,35K', '0,38%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (464, '2022-07-28', '2.364,00', '2.415,00', '2.430,00', '2.359,00', '17,60K', '-1,25%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (465, '2022-07-27', '2.394,00', '2.430,00', '2.443,00', '2.378,00', '17,56K', '-1,68%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (466, '2022-07-26', '2.435,00', '2.410,00', '2.442,00', '2.408,00', '21,65K', '1,12%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (467, '2022-07-25', '2.408,00', '2.336,00', '2.410,00', '2.325,00', '19,27K', '3,08%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (468, '2022-07-22', '2.336,00', '2.344,00', '2.357,00', '2.327,00', '11,15K', '-0,34%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (469, '2022-07-21', '2.344,00', '2.395,00', '2.395,00', '2.337,00', '12,94K', '-2,46%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (470, '2022-07-20', '2.403,00', '2.390,00', '2.420,00', '2.385,00', '12,60K', '0,88%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (471, '2022-07-19', '2.382,00', '2.355,00', '2.388,00', '2.342,00', '9,76K', '0,68%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (472, '2022-07-18', '2.366,00', '2.374,00', '2.377,00', '2.337,00', '8,93K', '0,42%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (473, '2022-07-15', '2.356,00', '2.297,00', '2.365,00', '2.295,00', '11,90K', '4,85%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (474, '2022-07-14', '2.247,00', '2.302,00', '2.305,00', '2.236,00', '38,25K', '-2,43%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (475, '2022-07-13', '2.303,00', '2.360,00', '2.380,00', '2.290,00', '22,67K', '-2,17%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (476, '2022-07-12', '2.354,00', '2.370,00', '2.375,00', '2.337,00', '14,86K', '-0,80%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (477, '2022-07-11', '2.373,00', '2.319,00', '2.384,00', '2.319,00', '25,40K', '2,37%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (478, '2022-07-08', '2.318,00', '2.347,00', '2.353,00', '2.313,00', '18,37K', '-1,53%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (479, '2022-07-07', '2.354,00', '2.350,00', '2.394,00', '2.342,00', '22,70K', '-0,08%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (480, '2022-07-06', '2.356,00', '2.332,00', '2.373,00', '2.327,00', '27,23K', '1,77%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (481, '2022-07-05', '2.315,00', '2.304,00', '2.331,00', '2.275,00', '27,89K', '0,04%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (482, '2022-07-01', '2.314,00', '2.328,00', '2.338,00', '2.293,00', '29,06K', '-1,11%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (483, '2022-06-30', '2.340,00', '2.376,00', '2.379,00', '2.330,00', '26,55K', '-1,10%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (484, '2022-06-29', '2.366,00', '2.402,00', '2.403,00', '2.362,00', '19,83K', '-1,50%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (485, '2022-06-28', '2.402,00', '2.402,00', '2.432,00', '2.399,00', '15,84K', '-0,33%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (486, '2022-06-27', '2.410,00', '2.450,00', '2.460,00', '2.396,00', '18,03K', '-0,90%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (487, '2022-06-24', '2.432,00', '2.433,00', '2.467,00', '2.420,00', '15,67K', '-0,04%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (488, '2022-06-23', '2.433,00', '2.444,00', '2.472,00', '2.425,00', '21,05K', '-0,77%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (489, '2022-06-22', '2.452,00', '2.455,00', '2.464,00', '2.417,00', '22,41K', '-0,65%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (490, '2022-06-21', '2.468,00', '2.450,00', '2.476,00', '2.445,00', '35,00K', '1,44%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (491, '2022-06-17', '2.433,00', '2.385,00', '2.444,00', '2.376,00', '31,33K', '2,36%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (492, '2022-06-16', '2.377,00', '2.374,00', '2.384,00', '2.350,00', '27,39K', '0,00%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (493, '2022-06-15', '2.377,00', '2.367,00', '2.387,00', '2.344,00', '24,11K', '0,42%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (494, '2022-06-14', '2.367,00', '2.383,00', '2.391,00', '2.355,00', '22,17K', '-0,55%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (495, '2022-06-13', '2.380,00', '2.416,00', '2.420,00', '2.358,00', '46,83K', '-2,14%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (496, '2022-06-10', '2.432,00', '2.470,00', '2.487,00', '2.426,00', '33,46K', '-1,66%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (497, '2022-06-09', '2.473,00', '2.487,00', '2.514,00', '2.458,00', '44,06K', '-0,84%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (498, '2022-06-08', '2.494,00', '2.507,00', '2.516,00', '2.475,00', '36,24K', '-0,52%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (499, '2022-06-07', '2.507,00', '2.519,00', '2.534,00', '2.493,00', '33,18K', '-0,48%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (500, '2022-06-06', '2.519,00', '2.515,00', '2.537,00', '2.505,00', '29,57K', '0,56%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (501, '2022-06-03', '2.505,00', '2.513,00', '2.557,00', '2.489,00', '17,67K', '-0,20%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (502, '2022-06-02', '2.510,00', '2.547,00', '2.559,00', '2.502,00', '16,53K', '-1,22%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (503, '2022-06-01', '2.541,00', '2.516,00', '2.554,00', '2.514,00', '18,62K', '1,03%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (504, '2022-05-31', '2.515,00', '2.519,00', '2.534,00', '2.497,00', '11,85K', '1,33%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (505, '2022-05-27', '2.482,00', '2.482,00', '2.494,00', '2.468,00', '9,14K', '0,00%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (506, '2022-05-26', '2.482,00', '2.420,00', '2.491,00', '2.420,00', '25,45K', '2,01%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (507, '2022-05-25', '2.433,00', '2.460,00', '2.470,00', '2.417,00', '21,09K', '-1,30%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (508, '2022-05-24', '2.465,00', '2.460,00', '2.478,00', '2.450,00', '10,79K', '-0,32%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (509, '2022-05-23', '2.473,00', '2.452,00', '2.489,00', '2.452,00', '10,68K', '0,82%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (510, '2022-05-20', '2.453,00', '2.486,00', '2.495,00', '2.430,00', '14,79K', '-1,09%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (511, '2022-05-19', '2.480,00', '2.485,00', '2.492,00', '2.463,00', '15,74K', '-0,56%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (512, '2022-05-18', '2.494,00', '2.528,00', '2.528,00', '2.481,00', '10,92K', '-1,42%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (513, '2022-05-17', '2.530,00', '2.526,00', '2.543,00', '2.508,00', '8,73K', '0,36%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (514, '2022-05-16', '2.521,00', '2.495,00', '2.536,00', '2.488,00', '8,64K', '2,11%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (515, '2022-05-13', '2.469,00', '2.435,00', '2.476,00', '2.411,00', '21,28K', '1,48%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (516, '2022-05-12', '2.433,00', '2.465,00', '2.465,00', '2.421,00', '23,73K', '-2,25%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (517, '2022-05-11', '2.489,00', '2.455,00', '2.504,00', '2.455,00', '24,48K', '1,80%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (518, '2022-05-10', '2.445,00', '2.451,00', '2.465,00', '2.429,00', '19,02K', '-0,41%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (519, '2022-05-09', '2.455,00', '2.479,00', '2.479,00', '2.428,00', '30,87K', '-1,48%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (520, '2022-05-06', '2.492,00', '2.511,00', '2.514,00', '2.459,00', '30,16K', '-0,76%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (521, '2022-05-05', '2.511,00', '2.580,00', '2.584,00', '2.505,00', '30,54K', '-2,67%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (522, '2022-05-04', '2.580,00', '2.606,00', '2.633,00', '2.565,00', '22,61K', '-1,04%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (523, '2022-05-03', '2.607,00', '2.603,00', '2.646,00', '2.572,00', '34,24K', '0,12%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (524, '2022-05-02', '2.604,00', '2.570,00', '2.610,00', '2.563,00', '17,06K', '1,44%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (525, '2022-04-29', '2.567,00', '2.574,00', '2.595,00', '2.560,00', '18,45K', '0,00%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (526, '2022-04-28', '2.567,00', '2.534,00', '2.574,00', '2.530,00', '22,14K', '1,18%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (527, '2022-04-27', '2.537,00', '2.524,00', '2.544,00', '2.497,00', '23,57K', '1,20%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (528, '2022-04-26', '2.507,00', '2.505,00', '2.524,00', '2.478,00', '23,07K', '0,80%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (529, '2022-04-25', '2.487,00', '2.529,00', '2.535,00', '2.482,00', '26,87K', '-2,62%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (530, '2022-04-22', '2.554,00', '2.575,00', '2.577,00', '2.516,00', '32,95K', '-1,47%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (531, '2022-04-21', '2.592,00', '2.604,00', '2.617,00', '2.565,00', '21,98K', '-0,04%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (532, '2022-04-20', '2.593,00', '2.584,00', '2.624,00', '2.572,00', '23,72K', '0,50%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (533, '2022-04-19', '2.580,00', '2.593,00', '2.597,00', '2.552,00', '20,69K', '0,08%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (534, '2022-04-18', '2.578,00', '2.624,00', '2.624,00', '2.565,00', '19,87K', '-2,20%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (535, '2022-04-14', '2.636,00', '2.641,00', '2.653,00', '2.620,00', '14,72K', '0,34%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (536, '2022-04-13', '2.627,00', '2.630,00', '2.664,00', '2.607,00', '19,58K', '-0,27%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (537, '2022-04-12', '2.634,00', '2.670,00', '2.688,00', '2.618,00', '17,92K', '-1,24%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (538, '2022-04-11', '2.667,00', '2.677,00', '2.700,00', '2.637,00', '24,59K', '-0,26%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (539, '2022-04-08', '2.674,00', '2.639,00', '2.695,00', '2.632,00', '26,09K', '1,79%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (540, '2022-04-07', '2.627,00', '2.625,00', '2.638,00', '2.595,00', '23,22K', '0,84%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (541, '2022-04-06', '2.605,00', '2.597,00', '2.631,00', '2.580,00', '27,38K', '0,62%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (542, '2022-04-05', '2.589,00', '2.608,00', '2.636,00', '2.583,00', '26,68K', '-0,92%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (543, '2022-04-04', '2.613,00', '2.640,00', '2.688,00', '2.600,00', '26,65K', '-1,06%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (544, '2022-04-01', '2.641,00', '2.683,00', '2.683,00', '2.637,00', '16,92K', '-1,71%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (545, '2022-03-31', '2.687,00', '2.676,00', '2.712,00', '2.654,00', '12,83K', '0,04%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (546, '2022-03-30', '2.686,00', '2.670,00', '2.707,00', '2.612,00', '12,83K', '0,49%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (547, '2022-03-29', '2.673,00', '2.636,00', '2.675,00', '2.632,00', '8,87K', '1,40%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (548, '2022-03-28', '2.636,00', '2.591,00', '2.656,00', '2.587,00', '7,16K', '1,38%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (549, '2022-03-25', '2.600,00', '2.595,00', '2.627,00', '2.574,00', '10,72K', '-0,61%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (550, '2022-03-24', '2.616,00', '2.664,00', '2.679,00', '2.593,00', '11,56K', '-1,51%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (551, '2022-03-23', '2.656,00', '2.618,00', '2.664,00', '2.614,00', '13,01K', '1,61%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (552, '2022-03-22', '2.614,00', '2.552,00', '2.621,00', '2.552,00', '11,40K', '2,43%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (553, '2022-03-21', '2.552,00', '2.561,00', '2.576,00', '2.529,00', '6,33K', '-0,62%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (554, '2022-03-18', '2.568,00', '2.539,00', '2.583,00', '2.522,00', '10,38K', '1,26%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (555, '2022-03-17', '2.536,00', '2.564,00', '2.581,00', '2.487,00', '17,61K', '0,16%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (556, '2022-03-16', '2.532,00', '2.530,00', '2.537,00', '2.511,00', '15,99K', '0,40%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (557, '2022-03-15', '2.522,00', '2.603,00', '2.607,00', '2.489,00', '36,82K', '-3,41%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (558, '2022-03-14', '2.611,00', '2.630,00', '2.650,00', '2.606,00', '15,28K', '-0,34%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (559, '2022-03-11', '2.620,00', '2.665,00', '2.684,00', '2.612,00', '19,22K', '-2,35%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (560, '2022-03-10', '2.683,00', '2.670,00', '2.710,00', '2.647,00', '22,12K', '0,75%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (561, '2022-03-09', '2.663,00', '2.630,00', '2.670,00', '2.594,00', '14,70K', '1,02%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (562, '2022-03-08', '2.636,00', '2.638,00', '2.674,00', '2.617,00', '20,33K', '0,00%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (563, '2022-03-07', '2.636,00', '2.602,00', '2.641,00', '2.599,00', '20,70K', '0,61%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (564, '2022-03-04', '2.620,00', '2.562,00', '2.622,00', '2.549,00', '27,11K', '2,26%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (565, '2022-03-03', '2.562,00', '2.530,00', '2.570,00', '2.506,00', '24,29K', '1,30%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (566, '2022-03-02', '2.529,00', '2.537,00', '2.565,00', '2.506,00', '27,15K', '0,32%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (567, '2022-03-01', '2.521,00', '2.520,00', '2.547,00', '2.471,00', '40,43K', '-0,32%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (568, '2022-02-28', '2.529,00', '2.585,00', '2.590,00', '2.515,00', '28,31K', '-3,25%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (569, '2022-02-25', '2.614,00', '2.621,00', '2.643,00', '2.601,00', '14,36K', '-0,08%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (570, '2022-02-24', '2.616,00', '2.636,00', '2.640,00', '2.578,00', '29,33K', '-1,80%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (571, '2022-02-23', '2.664,00', '2.660,00', '2.698,00', '2.647,00', '18,51K', '0,30%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (572, '2022-02-22', '2.656,00', '2.623,00', '2.663,00', '2.611,00', '22,08K', '0,61%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (573, '2022-02-18', '2.640,00', '2.656,00', '2.668,00', '2.626,00', '16,47K', '-0,56%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (574, '2022-02-17', '2.655,00', '2.670,00', '2.706,00', '2.651,00', '21,15K', '-0,60%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (575, '2022-02-16', '2.671,00', '2.730,00', '2.744,00', '2.669,00', '20,73K', '-1,87%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (576, '2022-02-15', '2.722,00', '2.741,00', '2.753,00', '2.716,00', '20,77K', '-0,33%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (577, '2022-02-14', '2.731,00', '2.780,00', '2.780,00', '2.727,00', '23,58K', '-2,85%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (578, '2022-02-11', '2.811,00', '2.810,00', '2.825,00', '2.771,00', '27,81K', '-0,78%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (579, '2022-02-10', '2.833,00', '2.800,00', '2.838,00', '2.792,00', '26,87K', '1,14%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (580, '2022-02-09', '2.801,00', '2.728,00', '2.811,00', '2.721,00', '43,94K', '2,79%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (581, '2022-02-08', '2.725,00', '2.700,00', '2.734,00', '2.686,00', '25,71K', '1,49%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (582, '2022-02-07', '2.685,00', '2.717,00', '2.737,00', '2.677,00', '38,33K', '-1,43%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (583, '2022-02-04', '2.724,00', '2.705,00', '2.732,00', '2.703,00', '35,15K', '1,26%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (584, '2022-02-03', '2.690,00', '2.669,00', '2.701,00', '2.643,00', '16,73K', '0,67%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (585, '2022-02-02', '2.672,00', '2.658,00', '2.685,00', '2.655,00', '24,96K', '0,45%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (586, '2022-02-01', '2.660,00', '2.581,00', '2.667,00', '2.580,00', '26,54K', '3,26%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (587, '2022-01-31', '2.576,00', '2.555,00', '2.583,00', '2.544,00', '15,65K', '1,18%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (588, '2022-01-28', '2.546,00', '2.500,00', '2.551,00', '2.496,00', '13,44K', '1,60%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (589, '2022-01-27', '2.506,00', '2.539,00', '2.548,00', '2.495,00', '19,45K', '-2,11%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (590, '2022-01-26', '2.560,00', '2.557,00', '2.586,00', '2.547,00', '11,74K', '0,23%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (591, '2022-01-25', '2.554,00', '2.556,00', '2.575,00', '2.544,00', '13,52K', '0,16%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (592, '2022-01-24', '2.550,00', '2.623,00', '2.627,00', '2.548,00', '17,57K', '-3,00%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (593, '2022-01-21', '2.629,00', '2.667,00', '2.682,00', '2.627,00', '18,12K', '-2,70%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (594, '2022-01-20', '2.702,00', '2.703,00', '2.733,00', '2.685,00', '13,99K', '0,00%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (595, '2022-01-19', '2.702,00', '2.675,00', '2.722,00', '2.656,00', '12,97K', '0,86%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (596, '2022-01-18', '2.679,00', '2.705,00', '2.713,00', '2.670,00', '23,82K', '-0,70%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (597, '2022-01-14', '2.698,00', '2.664,00', '2.725,00', '2.664,00', '17,26K', '1,85%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (598, '2022-01-13', '2.649,00', '2.605,00', '2.664,00', '2.605,00', '13,80K', '2,04%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (599, '2022-01-12', '2.596,00', '2.625,00', '2.640,00', '2.588,00', '16,10K', '-0,80%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (600, '2022-01-11', '2.617,00', '2.567,00', '2.634,00', '2.549,00', '17,80K', '2,39%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (601, '2022-01-10', '2.556,00', '2.540,00', '2.572,00', '2.531,00', '11,21K', '0,24%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (602, '2022-01-07', '2.550,00', '2.481,00', '2.563,00', '2.479,00', '11,23K', '3,41%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (603, '2022-01-06', '2.466,00', '2.497,00', '2.497,00', '2.454,00', '10,52K', '-1,40%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (604, '2022-01-05', '2.501,00', '2.525,00', '2.525,00', '2.463,00', '12,28K', '-0,04%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (605, '2022-01-04', '2.502,00', '2.538,00', '2.558,00', '2.490,00', '12,65K', '-1,38%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (606, '2022-01-03', '2.537,00', '2.575,00', '2.585,00', '2.511,00', '6,44K', '-0,63%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (607, '2021-12-31', '2.553,00', '2.588,00', '2.591,00', '2.547,00', '7,71K', '-1,28%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (608, '2021-12-30', '2.586,00', '2.539,00', '2.597,00', '2.533,00', '8,23K', '1,57%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (609, '2021-12-29', '2.546,00', '2.514,00', '2.550,00', '2.497,00', '5,32K', '1,15%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (610, '2021-12-28', '2.517,00', '2.500,00', '2.525,00', '2.492,00', '3,54K', '1,00%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (611, '2021-12-27', '2.492,00', '2.496,00', '2.515,00', '2.467,00', '2,14K', '-0,52%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (612, '2021-12-23', '2.505,00', '2.504,00', '2.535,00', '2.479,00', '4,34K', '0,32%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (613, '2021-12-22', '2.497,00', '2.500,00', '2.520,00', '2.485,00', '6,17K', '0,40%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (614, '2021-12-21', '2.487,00', '2.465,00', '2.500,00', '2.451,00', '6,37K', '1,26%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (615, '2021-12-20', '2.456,00', '2.500,00', '2.507,00', '2.449,00', '8,25K', '-2,89%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (616, '2021-12-17', '2.529,00', '2.565,00', '2.571,00', '2.510,00', '7,03K', '-1,56%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (617, '2021-12-16', '2.569,00', '2.578,00', '2.584,00', '2.519,00', '8,74K', '0,86%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (618, '2021-12-15', '2.547,00', '2.512,00', '2.553,00', '2.482,00', '16,73K', '1,72%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (619, '2021-12-14', '2.504,00', '2.536,00', '2.548,00', '2.494,00', '19,01K', '-1,11%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (620, '2021-12-13', '2.532,00', '2.475,00', '2.536,00', '2.469,00', '21,54K', '2,68%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (621, '2021-12-10', '2.466,00', '2.451,00', '2.475,00', '2.434,00', '10,96K', '0,61%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (622, '2021-12-09', '2.451,00', '2.469,00', '2.477,00', '2.416,00', '17,08K', '-0,77%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (623, '2021-12-08', '2.470,00', '2.485,00', '2.493,00', '2.462,00', '12,40K', '-0,60%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (624, '2021-12-07', '2.485,00', '2.465,00', '2.497,00', '2.454,00', '16,54K', '1,02%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (625, '2021-12-06', '2.460,00', '2.477,00', '2.492,00', '2.442,00', '18,63K', '-0,28%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (626, '2021-12-03', '2.467,00', '2.450,00', '2.477,00', '2.435,00', '16,49K', '0,57%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (627, '2021-12-02', '2.453,00', '2.345,00', '2.469,00', '2.344,00', '35,28K', '4,29%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (628, '2021-12-01', '2.352,00', '2.364,00', '2.377,00', '2.333,00', '26,72K', '0,26%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (629, '2021-11-30', '2.346,00', '2.375,00', '2.384,00', '2.338,00', '25,67K', '-1,35%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (630, '2021-11-29', '2.378,00', '2.403,00', '2.425,00', '2.372,00', '25,41K', '-0,75%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (631, '2021-11-26', '2.396,00', '2.482,00', '2.489,00', '2.388,00', '35,34K', '-4,62%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (632, '2021-11-24', '2.512,00', '2.568,00', '2.571,00', '2.495,00', '20,45K', '-2,18%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (633, '2021-11-23', '2.568,00', '2.588,00', '2.598,00', '2.557,00', '16,23K', '-0,77%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (634, '2021-11-22', '2.588,00', '2.592,00', '2.592,00', '2.565,00', '12,28K', '0,19%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (635, '2021-11-19', '2.583,00', '2.578,00', '2.593,00', '2.545,00', '15,49K', '-0,23%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (636, '2021-11-18', '2.589,00', '2.575,00', '2.602,00', '2.568,00', '14,81K', '0,82%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (637, '2021-11-17', '2.568,00', '2.561,00', '2.586,00', '2.545,00', '19,91K', '0,59%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (638, '2021-11-16', '2.553,00', '2.535,00', '2.563,00', '2.517,00', '18,90K', '0,83%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (639, '2021-11-15', '2.532,00', '2.531,00', '2.557,00', '2.521,00', '17,18K', '0,28%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (640, '2021-11-12', '2.525,00', '2.535,00', '2.535,00', '2.510,00', '17,37K', '-0,47%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (641, '2021-11-11', '2.537,00', '2.514,00', '2.542,00', '2.498,00', '25,17K', '0,91%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (642, '2021-11-10', '2.514,00', '2.475,00', '2.536,00', '2.467,00', '35,45K', '2,03%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (643, '2021-11-09', '2.464,00', '2.484,00', '2.492,00', '2.441,00', '35,55K', '-0,65%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (644, '2021-11-08', '2.480,00', '2.452,00', '2.484,00', '2.433,00', '40,24K', '1,31%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (645, '2021-11-05', '2.448,00', '2.478,00', '2.496,00', '2.445,00', '43,54K', '-1,37%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (646, '2021-11-04', '2.482,00', '2.474,00', '2.510,00', '2.469,00', '25,26K', '0,36%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (647, '2021-11-03', '2.473,00', '2.510,00', '2.527,00', '2.460,00', '38,67K', '-1,36%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (648, '2021-11-02', '2.507,00', '2.591,00', '2.596,00', '2.505,00', '31,04K', '-3,65%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (649, '2021-11-01', '2.602,00', '2.586,00', '2.604,00', '2.557,00', '21,53K', '0,85%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (650, '2021-10-29', '2.580,00', '2.607,00', '2.607,00', '2.569,00', '17,23K', '-1,19%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (651, '2021-10-28', '2.611,00', '2.634,00', '2.651,00', '2.605,00', '17,77K', '-0,87%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (652, '2021-10-27', '2.634,00', '2.615,00', '2.645,00', '2.597,00', '15,24K', '0,61%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (653, '2021-10-26', '2.618,00', '2.632,00', '2.652,00', '2.607,00', '9,78K', '-1,13%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (654, '2021-10-25', '2.648,00', '2.630,00', '2.665,00', '2.622,00', '15,83K', '0,72%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (655, '2021-10-22', '2.629,00', '2.613,00', '2.642,00', '2.569,00', '13,64K', '1,08%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (656, '2021-10-21', '2.601,00', '2.571,00', '2.611,00', '2.562,00', '16,16K', '1,56%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (657, '2021-10-20', '2.561,00', '2.599,00', '2.606,00', '2.557,00', '19,34K', '-1,91%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (658, '2021-10-19', '2.611,00', '2.665,00', '2.670,00', '2.580,00', '17,91K', '-1,58%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (659, '2021-10-18', '2.653,00', '2.647,00', '2.676,00', '2.628,00', '7,67K', '0,00%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (660, '2021-10-15', '2.653,00', '2.633,00', '2.663,00', '2.618,00', '10,19K', '0,80%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (661, '2021-10-14', '2.632,00', '2.653,00', '2.671,00', '2.619,00', '15,57K', '-0,60%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (662, '2021-10-13', '2.648,00', '2.730,00', '2.730,00', '2.634,00', '16,00K', '-2,58%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (663, '2021-10-12', '2.718,00', '2.725,00', '2.749,00', '2.707,00', '8,37K', '-0,26%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (664, '2021-10-11', '2.725,00', '2.794,00', '2.794,00', '2.717,00', '14,40K', '-2,29%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (665, '2021-10-08', '2.789,00', '2.776,00', '2.804,00', '2.765,00', '10,18K', '0,87%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (666, '2021-10-07', '2.765,00', '2.760,00', '2.788,00', '2.756,00', '7,07K', '0,40%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (667, '2021-10-06', '2.754,00', '2.790,00', '2.790,00', '2.725,00', '13,94K', '-1,36%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (668, '2021-10-05', '2.792,00', '2.790,00', '2.805,00', '2.751,00', '15,05K', '0,29%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (669, '2021-10-04', '2.784,00', '2.740,00', '2.812,00', '2.735,00', '18,89K', '1,83%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (670, '2021-10-01', '2.734,00', '2.664,00', '2.747,00', '2.659,00', '12,54K', '2,13%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (671, '2021-09-30', '2.677,00', '2.627,00', '2.689,00', '2.615,00', '12,24K', '2,33%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (672, '2021-09-29', '2.616,00', '2.595,00', '2.631,00', '2.589,00', '8,51K', '1,20%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (673, '2021-09-28', '2.585,00', '2.577,00', '2.608,00', '2.567,00', '9,52K', '0,35%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (674, '2021-09-27', '2.576,00', '2.617,00', '2.621,00', '2.572,00', '9,80K', '-1,68%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (675, '2021-09-24', '2.620,00', '2.642,00', '2.648,00', '2.592,00', '7,21K', '-0,83%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (676, '2021-09-23', '2.642,00', '2.680,00', '2.682,00', '2.637,00', '7,31K', '-1,34%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (677, '2021-09-22', '2.678,00', '2.653,00', '2.684,00', '2.643,00', '7,85K', '1,63%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (678, '2021-09-21', '2.635,00', '2.634,00', '2.664,00', '2.624,00', '7,25K', '0,50%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (679, '2021-09-20', '2.622,00', '2.675,00', '2.675,00', '2.609,00', '14,28K', '-2,46%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (680, '2021-09-17', '2.688,00', '2.684,00', '2.695,00', '2.661,00', '6,11K', '0,30%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (681, '2021-09-16', '2.680,00', '2.689,00', '2.694,00', '2.665,00', '4,06K', '0,64%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (682, '2021-09-15', '2.663,00', '2.662,00', '2.687,00', '2.653,00', '16,32K', '0,26%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (683, '2021-09-14', '2.656,00', '2.645,00', '2.669,00', '2.625,00', '13,34K', '0,72%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (684, '2021-09-13', '2.637,00', '2.599,00', '2.650,00', '2.599,00', '14,57K', '1,31%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (685, '2021-09-10', '2.603,00', '2.685,00', '2.699,00', '2.597,00', '26,44K', '-2,62%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (686, '2021-09-09', '2.673,00', '2.688,00', '2.696,00', '2.658,00', '18,29K', '-0,52%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (687, '2021-09-08', '2.687,00', '2.707,00', '2.717,00', '2.670,00', '20,92K', '-0,63%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (688, '2021-09-07', '2.704,00', '2.658,00', '2.711,00', '2.645,00', '26,19K', '1,88%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (689, '2021-09-03', '2.654,00', '2.621,00', '2.666,00', '2.619,00', '23,78K', '1,65%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (690, '2021-09-02', '2.611,00', '2.544,00', '2.620,00', '2.543,00', '24,45K', '2,88%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (691, '2021-09-01', '2.538,00', '2.540,00', '2.559,00', '2.517,00', '18,92K', '-0,08%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (692, '2021-08-31', '2.540,00', '2.592,00', '2.613,00', '2.535,00', '20,72K', '-2,19%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (693, '2021-08-30', '2.597,00', '2.575,00', '2.604,00', '2.575,00', '10,09K', '0,58%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (694, '2021-08-27', '2.582,00', '2.607,00', '2.634,00', '2.572,00', '17,82K', '-1,56%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (695, '2021-08-26', '2.623,00', '2.608,00', '2.626,00', '2.598,00', '14,55K', '0,42%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (696, '2021-08-25', '2.612,00', '2.586,00', '2.619,00', '2.577,00', '17,21K', '1,63%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (697, '2021-08-24', '2.570,00', '2.553,00', '2.587,00', '2.546,00', '19,00K', '0,63%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (698, '2021-08-23', '2.554,00', '2.566,00', '2.606,00', '2.543,00', '24,56K', '-0,51%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (699, '2021-08-20', '2.567,00', '2.622,00', '2.633,00', '2.559,00', '28,34K', '-2,32%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (700, '2021-08-19', '2.628,00', '2.666,00', '2.666,00', '2.617,00', '21,79K', '-1,68%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (701, '2021-08-18', '2.673,00', '2.656,00', '2.681,00', '2.650,00', '25,01K', '0,94%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (702, '2021-08-17', '2.648,00', '2.602,00', '2.658,00', '2.579,00', '32,54K', '1,57%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (703, '2021-08-16', '2.607,00', '2.611,00', '2.641,00', '2.601,00', '33,62K', '-0,50%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (704, '2021-08-13', '2.620,00', '2.589,00', '2.622,00', '2.586,00', '26,45K', '1,47%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (705, '2021-08-12', '2.582,00', '2.586,00', '2.603,00', '2.574,00', '36,52K', '0,08%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (706, '2021-08-11', '2.580,00', '2.532,00', '2.587,00', '2.525,00', '37,01K', '1,74%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (707, '2021-08-10', '2.536,00', '2.480,00', '2.542,00', '2.474,00', '36,43K', '2,26%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (708, '2021-08-09', '2.480,00', '2.477,00', '2.494,00', '2.469,00', '37,10K', '0,24%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (709, '2021-08-06', '2.474,00', '2.455,00', '2.483,00', '2.443,00', '29,45K', '0,69%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (710, '2021-08-05', '2.457,00', '2.444,00', '2.476,00', '2.440,00', '22,95K', '0,49%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (711, '2021-08-04', '2.445,00', '2.480,00', '2.504,00', '2.440,00', '28,26K', '-1,17%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (712, '2021-08-03', '2.474,00', '2.421,00', '2.481,00', '2.420,00', '27,58K', '2,19%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (713, '2021-08-02', '2.421,00', '2.416,00', '2.425,00', '2.391,00', '17,16K', '-0,04%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (714, '2021-07-30', '2.422,00', '2.457,00', '2.465,00', '2.410,00', '21,90K', '-2,50%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (715, '2021-07-29', '2.484,00', '2.474,00', '2.499,00', '2.453,00', '13,62K', '0,53%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (716, '2021-07-28', '2.471,00', '2.434,00', '2.486,00', '2.425,00', '13,48K', '1,35%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (717, '2021-07-27', '2.438,00', '2.425,00', '2.450,00', '2.412,00', '13,00K', '0,41%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (718, '2021-07-26', '2.428,00', '2.364,00', '2.451,00', '2.364,00', '21,39K', '2,71%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (719, '2021-07-23', '2.364,00', '2.358,00', '2.380,00', '2.346,00', '8,35K', '0,13%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (720, '2021-07-22', '2.361,00', '2.317,00', '2.365,00', '2.312,00', '12,19K', '1,90%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (721, '2021-07-21', '2.317,00', '2.308,00', '2.337,00', '2.304,00', '8,93K', '0,30%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (722, '2021-07-20', '2.310,00', '2.303,00', '2.312,00', '2.288,00', '12,10K', '0,52%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (723, '2021-07-19', '2.298,00', '2.365,00', '2.365,00', '2.295,00', '16,88K', '-3,08%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (724, '2021-07-16', '2.371,00', '2.423,00', '2.436,00', '2.359,00', '8,67K', '0,08%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (725, '2021-07-15', '2.369,00', '2.388,00', '2.400,00', '2.364,00', '12,61K', '-1,37%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (726, '2021-07-14', '2.402,00', '2.398,00', '2.426,00', '2.390,00', '11,09K', '0,13%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (727, '2021-07-13', '2.399,00', '2.433,00', '2.434,00', '2.386,00', '16,45K', '-1,28%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (728, '2021-07-12', '2.430,00', '2.358,00', '2.438,00', '2.341,00', '34,84K', '3,54%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (729, '2021-07-09', '2.347,00', '2.287,00', '2.357,00', '2.284,00', '19,98K', '2,27%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (730, '2021-07-08', '2.295,00', '2.296,00', '2.307,00', '2.268,00', '18,05K', '-0,04%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (731, '2021-07-07', '2.296,00', '2.297,00', '2.311,00', '2.276,00', '15,74K', '-0,09%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (732, '2021-07-06', '2.298,00', '2.337,00', '2.348,00', '2.288,00', '22,69K', '-0,91%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (733, '2021-07-02', '2.319,00', '2.355,00', '2.375,00', '2.313,00', '22,94K', '-1,49%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (734, '2021-07-01', '2.354,00', '2.389,00', '2.412,00', '2.351,00', '19,17K', '-1,47%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (735, '2021-06-30', '2.389,00', '2.383,00', '2.396,00', '2.366,00', '12,33K', '-0,04%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (736, '2021-06-29', '2.390,00', '2.380,00', '2.407,00', '2.359,00', '13,88K', '0,42%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (737, '2021-06-28', '2.380,00', '2.378,00', '2.389,00', '2.352,00', '14,13K', '0,00%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (738, '2021-06-25', '2.380,00', '2.347,00', '2.396,00', '2.337,00', '17,94K', '1,54%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (739, '2021-06-24', '2.344,00', '2.366,00', '2.367,00', '2.334,00', '14,92K', '-1,06%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (740, '2021-06-23', '2.369,00', '2.391,00', '2.398,00', '2.356,00', '11,57K', '-1,13%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (741, '2021-06-22', '2.396,00', '2.375,00', '2.401,00', '2.372,00', '12,56K', '0,76%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (742, '2021-06-21', '2.378,00', '2.370,00', '2.414,00', '2.365,00', '19,38K', '0,25%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (743, '2021-06-18', '2.372,00', '2.386,00', '2.404,00', '2.364,00', '14,35K', '-0,38%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (744, '2021-06-17', '2.381,00', '2.410,00', '2.412,00', '2.370,00', '21,55K', '-1,69%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (745, '2021-06-16', '2.422,00', '2.430,00', '2.430,00', '2.396,00', '17,38K', '-0,25%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (746, '2021-06-15', '2.428,00', '2.436,00', '2.440,00', '2.416,00', '20,90K', '-0,78%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (747, '2021-06-14', '2.447,00', '2.396,00', '2.452,00', '2.390,00', '28,88K', '1,87%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (748, '2021-06-11', '2.402,00', '2.431,00', '2.434,00', '2.391,00', '24,66K', '-1,27%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (749, '2021-06-10', '2.433,00', '2.394,00', '2.443,00', '2.394,00', '27,16K', '1,71%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (750, '2021-06-09', '2.392,00', '2.422,00', '2.434,00', '2.386,00', '23,80K', '-1,08%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (751, '2021-06-08', '2.418,00', '2.405,00', '2.427,00', '2.395,00', '35,63K', '0,58%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (752, '2021-06-07', '2.404,00', '2.449,00', '2.450,00', '2.401,00', '28,68K', '-1,96%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (753, '2021-06-04', '2.452,00', '2.453,00', '2.472,00', '2.427,00', '17,67K', '-0,12%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (754, '2021-06-03', '2.455,00', '2.473,00', '2.497,00', '2.437,00', '19,42K', '-0,45%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (755, '2021-06-02', '2.466,00', '2.462,00', '2.478,00', '2.448,00', '14,53K', '-0,04%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (756, '2021-06-01', '2.467,00', '2.460,00', '2.505,00', '2.460,00', '24,47K', '0,45%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (757, '2021-05-28', '2.456,00', '2.477,00', '2.477,00', '2.452,00', '9,72K', '-0,49%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (758, '2021-05-27', '2.468,00', '2.459,00', '2.486,00', '2.426,00', '15,03K', '0,37%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (759, '2021-05-26', '2.459,00', '2.439,00', '2.470,00', '2.439,00', '15,85K', '1,32%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (760, '2021-05-25', '2.427,00', '2.441,00', '2.453,00', '2.421,00', '12,80K', '-0,41%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (761, '2021-05-24', '2.437,00', '2.490,00', '2.530,00', '2.433,00', '12,73K', '-2,48%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (762, '2021-05-21', '2.499,00', '2.485,00', '2.510,00', '2.476,00', '8,42K', '0,56%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (763, '2021-05-20', '2.485,00', '2.518,00', '2.523,00', '2.468,00', '9,43K', '-1,23%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (764, '2021-05-19', '2.516,00', '2.546,00', '2.552,00', '2.500,00', '9,99K', '-1,29%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (765, '2021-05-18', '2.549,00', '2.575,00', '2.579,00', '2.544,00', '12,08K', '-1,12%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (766, '2021-05-17', '2.578,00', '2.516,00', '2.590,00', '2.516,00', '10,15K', '2,55%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (767, '2021-05-14', '2.514,00', '2.536,00', '2.546,00', '2.502,00', '13,02K', '0,48%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (768, '2021-05-13', '2.502,00', '2.520,00', '2.549,00', '2.486,00', '18,87K', '-0,60%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (769, '2021-05-12', '2.517,00', '2.464,00', '2.526,00', '2.459,00', '18,75K', '2,07%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (770, '2021-05-11', '2.466,00', '2.497,00', '2.497,00', '2.444,00', '30,25K', '-1,91%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (771, '2021-05-10', '2.514,00', '2.470,00', '2.528,00', '2.466,00', '25,69K', '2,07%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (772, '2021-05-07', '2.463,00', '2.414,00', '2.473,00', '2.392,00', '20,77K', '2,07%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (773, '2021-05-06', '2.413,00', '2.398,00', '2.434,00', '2.382,00', '19,51K', '0,75%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (774, '2021-05-05', '2.395,00', '2.336,00', '2.400,00', '2.335,00', '27,79K', '3,06%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (775, '2021-05-04', '2.324,00', '2.366,00', '2.386,00', '2.317,00', '30,34K', '-1,90%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (776, '2021-05-03', '2.369,00', '2.389,00', '2.412,00', '2.350,00', '16,05K', '-0,55%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (777, '2021-04-30', '2.382,00', '2.489,00', '2.497,00', '2.378,00', '38,14K', '-4,68%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (778, '2021-04-29', '2.499,00', '2.472,00', '2.537,00', '2.470,00', '19,85K', '1,09%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (779, '2021-04-28', '2.472,00', '2.457,00', '2.480,00', '2.453,00', '8,02K', '-0,24%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (780, '2021-04-27', '2.478,00', '2.486,00', '2.495,00', '2.446,00', '15,30K', '-0,36%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (781, '2021-04-26', '2.487,00', '2.451,00', '2.491,00', '2.427,00', '16,02K', '1,51%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (782, '2021-04-23', '2.450,00', '2.449,00', '2.464,00', '2.436,00', '9,43K', '0,33%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (783, '2021-04-22', '2.442,00', '2.439,00', '2.460,00', '2.417,00', '10,97K', '0,12%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (784, '2021-04-21', '2.439,00', '2.426,00', '2.450,00', '2.419,00', '13,41K', '0,83%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (785, '2021-04-20', '2.419,00', '2.488,00', '2.503,00', '2.414,00', '21,23K', '-2,93%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (786, '2021-04-19', '2.492,00', '2.485,00', '2.501,00', '2.469,00', '16,11K', '1,14%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (787, '2021-04-16', '2.464,00', '2.460,00', '2.487,00', '2.446,00', '15,55K', '0,04%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (788, '2021-04-15', '2.463,00', '2.454,00', '2.485,00', '2.444,00', '20,75K', '0,16%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (789, '2021-04-14', '2.459,00', '2.435,00', '2.460,00', '2.431,00', '17,81K', '0,74%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (790, '2021-04-13', '2.441,00', '2.408,00', '2.455,00', '2.408,00', '25,25K', '1,67%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (791, '2021-04-12', '2.401,00', '2.387,00', '2.419,00', '2.373,00', '28,73K', '0,59%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (792, '2021-04-09', '2.387,00', '2.381,00', '2.399,00', '2.362,00', '25,29K', '0,13%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (793, '2021-04-08', '2.384,00', '2.415,00', '2.433,00', '2.378,00', '28,62K', '-1,12%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (794, '2021-04-07', '2.411,00', '2.429,00', '2.429,00', '2.392,00', '21,31K', '-0,58%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (795, '2021-04-06', '2.425,00', '2.386,00', '2.430,00', '2.381,00', '33,90K', '2,58%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (796, '2021-04-05', '2.364,00', '2.420,00', '2.450,00', '2.360,00', '16,85K', '-2,15%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (797, '2021-04-01', '2.416,00', '2.392,00', '2.436,00', '2.388,00', '27,41K', '1,30%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (798, '2021-03-31', '2.385,00', '2.389,00', '2.406,00', '2.377,00', '18,39K', '0,04%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (799, '2021-03-30', '2.384,00', '2.451,00', '2.465,00', '2.372,00', '31,97K', '-3,13%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (800, '2021-03-29', '2.461,00', '2.464,00', '2.498,00', '2.448,00', '16,35K', '-0,73%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (801, '2021-03-26', '2.479,00', '2.487,00', '2.493,00', '2.458,00', '10,90K', '0,24%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (802, '2021-03-25', '2.473,00', '2.445,00', '2.498,00', '2.441,00', '11,52K', '0,82%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (803, '2021-03-24', '2.453,00', '2.464,00', '2.471,00', '2.435,00', '12,62K', '-0,45%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (804, '2021-03-23', '2.464,00', '2.517,00', '2.520,00', '2.461,00', '10,74K', '-2,03%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (805, '2021-03-22', '2.515,00', '2.488,00', '2.524,00', '2.480,00', '7,80K', '0,36%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (806, '2021-03-19', '2.506,00', '2.550,00', '2.550,00', '2.482,00', '13,49K', '-1,80%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (807, '2021-03-18', '2.552,00', '2.534,00', '2.567,00', '2.534,00', '8,12K', '0,79%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (808, '2021-03-17', '2.532,00', '2.546,00', '2.547,00', '2.517,00', '8,66K', '0,24%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (809, '2021-03-16', '2.526,00', '2.512,00', '2.556,00', '2.512,00', '14,04K', '-0,16%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (810, '2021-03-15', '2.530,00', '2.570,00', '2.578,00', '2.517,00', '18,74K', '-1,56%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (811, '2021-03-12', '2.570,00', '2.580,00', '2.584,00', '2.553,00', '14,73K', '-0,89%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (812, '2021-03-11', '2.593,00', '2.592,00', '2.617,00', '2.572,00', '17,07K', '0,78%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (813, '2021-03-10', '2.573,00', '2.540,00', '2.585,00', '2.539,00', '13,91K', '0,78%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (814, '2021-03-09', '2.553,00', '2.533,00', '2.559,00', '2.533,00', '13,59K', '0,79%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (815, '2021-03-08', '2.533,00', '2.535,00', '2.576,00', '2.526,00', '21,63K', '-0,51%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (816, '2021-03-05', '2.546,00', '2.579,00', '2.592,00', '2.541,00', '24,45K', '-3,01%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (817, '2021-03-04', '2.625,00', '2.636,00', '2.640,00', '2.590,00', '20,25K', '-1,20%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (818, '2021-03-03', '2.657,00', '2.646,00', '2.667,00', '2.624,00', '18,22K', '0,45%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (819, '2021-03-02', '2.645,00', '2.607,00', '2.654,00', '2.589,00', '20,47K', '0,23%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (820, '2021-03-01', '2.639,00', '2.616,00', '2.652,00', '2.607,00', '23,90K', '1,34%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (821, '2021-02-26', '2.604,00', '2.605,00', '2.621,00', '2.576,00', '28,24K', '-0,15%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (822, '2021-02-25', '2.608,00', '2.570,00', '2.625,00', '2.565,00', '21,22K', '2,15%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (823, '2021-02-24', '2.553,00', '2.499,00', '2.568,00', '2.482,00', '20,17K', '2,16%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (824, '2021-02-23', '2.499,00', '2.505,00', '2.507,00', '2.470,00', '14,18K', '0,36%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (825, '2021-02-22', '2.490,00', '2.450,00', '2.505,00', '2.446,00', '19,87K', '1,92%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (826, '2021-02-19', '2.443,00', '2.396,00', '2.454,00', '2.387,00', '20,13K', '2,17%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (827, '2021-02-18', '2.391,00', '2.386,00', '2.424,00', '2.381,00', '16,49K', '0,72%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (828, '2021-02-17', '2.374,00', '2.429,00', '2.436,00', '2.371,00', '24,39K', '-2,22%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (829, '2021-02-16', '2.428,00', '2.465,00', '2.470,00', '2.401,00', '27,57K', '-0,21%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (830, '2021-02-12', '2.433,00', '2.433,00', '2.472,00', '2.422,00', '23,39K', '-0,16%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (831, '2021-02-11', '2.437,00', '2.500,00', '2.509,00', '2.431,00', '27,64K', '-2,29%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (832, '2021-02-10', '2.494,00', '2.440,00', '2.520,00', '2.436,00', '28,91K', '2,63%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (833, '2021-02-09', '2.430,00', '2.462,00', '2.472,00', '2.428,00', '22,26K', '-0,61%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (834, '2021-02-08', '2.445,00', '2.473,00', '2.476,00', '2.433,00', '29,27K', '-1,09%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (835, '2021-02-05', '2.472,00', '2.451,00', '2.491,00', '2.438,00', '30,96K', '0,90%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (836, '2021-02-04', '2.450,00', '2.453,00', '2.481,00', '2.440,00', '20,23K', '-0,16%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (837, '2021-02-03', '2.454,00', '2.488,00', '2.492,00', '2.447,00', '21,12K', '-1,80%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (838, '2021-02-02', '2.499,00', '2.484,00', '2.516,00', '2.460,00', '33,03K', '0,56%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (839, '2021-02-01', '2.485,00', '2.471,00', '2.502,00', '2.446,00', '13,65K', '0,44%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (840, '2021-01-29', '2.474,00', '2.454,00', '2.483,00', '2.449,00', '12,80K', '0,69%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (841, '2021-01-28', '2.457,00', '2.432,00', '2.474,00', '2.426,00', '12,71K', '0,41%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (842, '2021-01-27', '2.447,00', '2.519,00', '2.537,00', '2.440,00', '11,06K', '-1,77%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (843, '2021-01-26', '2.491,00', '2.461,00', '2.499,00', '2.444,00', '17,32K', '1,05%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (844, '2021-01-25', '2.465,00', '2.476,00', '2.480,00', '2.450,00', '11,92K', '-0,84%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (845, '2021-01-22', '2.486,00', '2.498,00', '2.498,00', '2.443,00', '9,79K', '-0,88%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (846, '2021-01-21', '2.508,00', '2.524,00', '2.528,00', '2.495,00', '8,15K', '-0,63%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (847, '2021-01-20', '2.524,00', '2.550,00', '2.572,00', '2.512,00', '12,54K', '-0,67%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (848, '2021-01-19', '2.541,00', '2.497,00', '2.556,00', '2.480,00', '13,59K', '2,38%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (849, '2021-01-15', '2.482,00', '2.482,00', '2.505,00', '2.469,00', '10,08K', '1,10%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (850, '2021-01-14', '2.455,00', '2.451,00', '2.469,00', '2.425,00', '9,33K', '-0,08%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (851, '2021-01-13', '2.457,00', '2.450,00', '2.489,00', '2.442,00', '9,36K', '0,37%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (852, '2021-01-12', '2.448,00', '2.432,00', '2.463,00', '2.430,00', '11,42K', '0,74%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (853, '2021-01-11', '2.430,00', '2.444,00', '2.455,00', '2.421,00', '11,39K', '-1,22%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (854, '2021-01-08', '2.460,00', '2.484,00', '2.502,00', '2.445,00', '7,00K', '-1,13%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (855, '2021-01-07', '2.488,00', '2.437,00', '2.491,00', '2.427,00', '8,99K', '1,84%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (856, '2021-01-06', '2.443,00', '2.469,00', '2.491,00', '2.430,00', '7,44K', '-1,05%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (857, '2021-01-05', '2.469,00', '2.498,00', '2.498,00', '2.452,00', '7,84K', '-1,52%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (858, '2021-01-04', '2.507,00', '2.545,00', '2.589,00', '2.497,00', '10,59K', '-1,10%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (859, '2020-12-31', '2.535,00', '2.530,00', '2.550,00', '2.485,00', '4,87K', '0,44%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (860, '2020-12-30', '2.524,00', '2.440,00', '2.533,00', '2.440,00', '6,98K', '2,98%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (861, '2020-12-29', '2.451,00', '2.491,00', '2.491,00', '2.442,00', '5,65K', '-1,65%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (862, '2020-12-28', '2.492,00', '2.525,00', '2.530,00', '2.484,00', '1,99K', '-1,19%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (863, '2020-12-24', '2.522,00', '2.498,00', '2.527,00', '2.472,00', '2,31K', '1,33%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (864, '2020-12-23', '2.489,00', '2.471,00', '2.502,00', '2.461,00', '5,13K', '0,77%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (865, '2020-12-22', '2.470,00', '2.527,00', '2.527,00', '2.450,00', '6,77K', '-1,08%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (866, '2020-12-21', '2.497,00', '2.446,00', '2.518,00', '2.409,00', '13,56K', '1,01%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (867, '2020-12-18', '2.472,00', '2.500,00', '2.514,00', '2.455,00', '5,01K', '-0,96%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (868, '2020-12-17', '2.496,00', '2.478,00', '2.519,00', '2.465,00', '6,84K', '1,26%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (869, '2020-12-16', '2.465,00', '2.495,00', '2.506,00', '2.460,00', '5,30K', '-2,99%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (870, '2020-12-15', '2.541,00', '2.604,00', '2.633,00', '2.534,00', '15,95K', '-1,85%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (871, '2020-12-14', '2.589,00', '2.639,00', '2.653,00', '2.581,00', '12,68K', '-1,26%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (872, '2020-12-11', '2.622,00', '2.585,00', '2.633,00', '2.577,00', '15,04K', '2,14%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (873, '2020-12-10', '2.567,00', '2.549,00', '2.584,00', '2.522,00', '15,74K', '0,71%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (874, '2020-12-09', '2.549,00', '2.582,00', '2.612,00', '2.540,00', '18,30K', '-1,01%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (875, '2020-12-08', '2.575,00', '2.636,00', '2.648,00', '2.557,00', '14,69K', '-2,31%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (876, '2020-12-07', '2.636,00', '2.614,00', '2.644,00', '2.589,00', '14,71K', '-0,68%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (877, '2020-12-04', '2.654,00', '2.639,00', '2.675,00', '2.622,00', '11,73K', '0,11%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (878, '2020-12-03', '2.651,00', '2.648,00', '2.726,00', '2.630,00', '16,96K', '0,49%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (879, '2020-12-02', '2.638,00', '2.655,00', '2.664,00', '2.612,00', '15,63K', '-1,97%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (880, '2020-12-01', '2.691,00', '2.749,00', '2.765,00', '2.665,00', '23,69K', '-1,75%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (881, '2020-11-30', '2.739,00', '2.760,00', '2.768,00', '2.725,00', '14,42K', '-0,98%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (882, '2020-11-27', '2.766,00', '2.766,00', '2.782,00', '2.701,00', '17,67K', '1,54%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (883, '2020-11-25', '2.724,00', '2.759,00', '2.768,00', '2.685,00', '22,65K', '-2,19%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (884, '2020-11-24', '2.785,00', '2.774,00', '2.821,00', '2.752,00', '29,99K', '1,16%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (885, '2020-11-23', '2.753,00', '2.751,00', '2.774,00', '2.724,00', '29,75K', '1,51%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (886, '2020-11-20', '2.712,00', '2.664,00', '2.746,00', '2.663,00', '33,41K', '1,76%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (887, '2020-11-19', '2.665,00', '2.598,00', '2.670,00', '2.576,00', '27,63K', '3,29%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (888, '2020-11-18', '2.580,00', '2.530,00', '2.607,00', '2.510,00', '27,79K', '2,50%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (889, '2020-11-17', '2.517,00', '2.448,00', '2.529,00', '2.434,00', '37,88K', '3,37%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (890, '2020-11-16', '2.435,00', '2.409,00', '2.464,00', '2.405,00', '27,19K', '2,96%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (891, '2020-11-13', '2.365,00', '2.339,00', '2.395,00', '2.332,00', '19,11K', '0,38%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (892, '2020-11-12', '2.356,00', '2.366,00', '2.370,00', '2.331,00', '18,33K', '-0,76%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (893, '2020-11-11', '2.374,00', '2.383,00', '2.406,00', '2.365,00', '15,84K', '0,72%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (894, '2020-11-10', '2.357,00', '2.403,00', '2.420,00', '2.345,00', '27,62K', '-1,42%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (895, '2020-11-09', '2.391,00', '2.340,00', '2.424,00', '2.332,00', '31,77K', '2,27%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (896, '2020-11-06', '2.338,00', '2.330,00', '2.347,00', '2.316,00', '20,35K', '0,86%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (897, '2020-11-05', '2.318,00', '2.308,00', '2.327,00', '2.284,00', '19,92K', '1,18%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (898, '2020-11-04', '2.291,00', '2.288,00', '2.306,00', '2.265,00', '14,68K', '-0,74%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (899, '2020-11-03', '2.308,00', '2.263,00', '2.312,00', '2.263,00', '24,43K', '1,94%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (900, '2020-11-02', '2.264,00', '2.300,00', '2.300,00', '2.247,00', '28,24K', '-1,78%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (901, '2020-10-30', '2.305,00', '2.340,00', '2.353,00', '2.292,00', '21,53K', '-1,41%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (902, '2020-10-29', '2.338,00', '2.383,00', '2.385,00', '2.331,00', '14,58K', '-1,68%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (903, '2020-10-28', '2.378,00', '2.418,00', '2.418,00', '2.366,00', '12,30K', '-3,14%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (904, '2020-10-27', '2.455,00', '2.500,00', '2.502,00', '2.430,00', '10,04K', '-1,48%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (905, '2020-10-26', '2.492,00', '2.483,00', '2.510,00', '2.461,00', '11,50K', '0,52%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (906, '2020-10-23', '2.479,00', '2.471,00', '2.506,00', '2.469,00', '10,60K', '0,32%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (907, '2020-10-22', '2.471,00', '2.426,00', '2.472,00', '2.422,00', '7,79K', '1,85%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (908, '2020-10-21', '2.426,00', '2.398,00', '2.450,00', '2.389,00', '10,66K', '1,85%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (909, '2020-10-20', '2.382,00', '2.418,00', '2.418,00', '2.370,00', '7,41K', '-1,57%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (910, '2020-10-19', '2.420,00', '2.366,00', '2.428,00', '2.366,00', '10,11K', '2,59%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (911, '2020-10-16', '2.359,00', '2.333,00', '2.365,00', '2.333,00', '12,11K', '0,77%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (912, '2020-10-15', '2.341,00', '2.384,00', '2.384,00', '2.331,00', '12,17K', '-1,76%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (913, '2020-10-14', '2.383,00', '2.372,00', '2.398,00', '2.354,00', '13,21K', '0,25%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (914, '2020-10-13', '2.377,00', '2.418,00', '2.431,00', '2.365,00', '16,78K', '-2,22%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (915, '2020-10-12', '2.431,00', '2.422,00', '2.438,00', '2.405,00', '4,77K', '0,37%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (916, '2020-10-09', '2.422,00', '2.459,00', '2.462,00', '2.401,00', '7,57K', '-1,50%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (917, '2020-10-08', '2.459,00', '2.449,00', '2.474,00', '2.440,00', '8,27K', '0,74%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (918, '2020-10-07', '2.441,00', '2.420,00', '2.454,00', '2.406,00', '7,92K', '0,54%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (919, '2020-10-06', '2.428,00', '2.449,00', '2.460,00', '2.411,00', '8,95K', '-0,86%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (920, '2020-10-05', '2.449,00', '2.456,00', '2.474,00', '2.432,00', '11,88K', '-0,49%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (921, '2020-10-02', '2.461,00', '2.465,00', '2.482,00', '2.425,00', '8,36K', '-1,05%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (922, '2020-10-01', '2.487,00', '2.497,00', '2.507,00', '2.446,00', '12,55K', '-1,58%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (923, '2020-09-30', '2.527,00', '2.562,00', '2.589,00', '2.508,00', '6,92K', '-1,37%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (924, '2020-09-29', '2.562,00', '2.561,00', '2.575,00', '2.520,00', '7,81K', '-0,12%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (925, '2020-09-28', '2.565,00', '2.554,00', '2.609,00', '2.553,00', '8,40K', '0,79%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (926, '2020-09-25', '2.545,00', '2.592,00', '2.598,00', '2.528,00', '6,66K', '-1,17%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (927, '2020-09-24', '2.575,00', '2.561,00', '2.616,00', '2.556,00', '7,82K', '0,55%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (928, '2020-09-23', '2.561,00', '2.537,00', '2.578,00', '2.529,00', '7,80K', '0,79%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (929, '2020-09-22', '2.541,00', '2.616,00', '2.627,00', '2.533,00', '9,68K', '-2,68%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (930, '2020-09-21', '2.611,00', '2.630,00', '2.679,00', '2.590,00', '8,92K', '-0,46%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (931, '2020-09-18', '2.623,00', '2.600,00', '2.652,00', '2.598,00', '6,05K', '1,47%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (932, '2020-09-17', '2.585,00', '2.583,00', '2.658,00', '2.563,00', '6,63K', '-0,15%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (933, '2020-09-16', '2.589,00', '2.670,00', '2.670,00', '2.580,00', '10,41K', '-3,90%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (934, '2020-09-15', '2.694,00', '2.564,00', '2.698,00', '2.563,00', '35,17K', '5,40%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (935, '2020-09-14', '2.556,00', '2.554,00', '2.585,00', '2.547,00', '12,49K', '0,31%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (936, '2020-09-11', '2.548,00', '2.537,00', '2.569,00', '2.529,00', '8,93K', '0,43%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (937, '2020-09-10', '2.537,00', '2.568,00', '2.583,00', '2.530,00', '12,03K', '-0,98%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (938, '2020-09-09', '2.562,00', '2.558,00', '2.572,00', '2.539,00', '13,99K', '0,27%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (939, '2020-09-08', '2.555,00', '2.576,00', '2.582,00', '2.521,00', '19,01K', '-1,54%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (940, '2020-09-04', '2.595,00', '2.634,00', '2.654,00', '2.586,00', '17,52K', '-1,48%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (941, '2020-09-03', '2.634,00', '2.700,00', '2.708,00', '2.624,00', '17,82K', '-1,75%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (942, '2020-09-02', '2.681,00', '2.662,00', '2.700,00', '2.639,00', '15,29K', '0,56%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (943, '2020-09-01', '2.666,00', '2.664,00', '2.684,00', '2.651,00', '19,31K', '0,45%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (944, '2020-08-31', '2.654,00', '2.626,00', '2.673,00', '2.626,00', '13,98K', '1,18%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (945, '2020-08-28', '2.623,00', '2.565,00', '2.635,00', '2.539,00', '22,89K', '3,31%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (946, '2020-08-27', '2.539,00', '2.477,00', '2.566,00', '2.477,00', '19,68K', '2,54%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (947, '2020-08-26', '2.476,00', '2.500,00', '2.509,00', '2.452,00', '11,30K', '-0,44%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (948, '2020-08-25', '2.487,00', '2.486,00', '2.514,00', '2.479,00', '13,48K', '1,14%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (949, '2020-08-24', '2.459,00', '2.408,00', '2.475,00', '2.402,00', '15,67K', '2,08%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (950, '2020-08-21', '2.409,00', '2.400,00', '2.419,00', '2.355,00', '15,64K', '0,38%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (951, '2020-08-20', '2.400,00', '2.448,00', '2.479,00', '2.393,00', '14,84K', '-2,44%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (952, '2020-08-19', '2.460,00', '2.445,00', '2.465,00', '2.422,00', '13,26K', '0,61%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (953, '2020-08-18', '2.445,00', '2.427,00', '2.450,00', '2.412,00', '13,50K', '0,66%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (954, '2020-08-17', '2.429,00', '2.446,00', '2.460,00', '2.415,00', '22,11K', '-1,02%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (955, '2020-08-14', '2.454,00', '2.481,00', '2.528,00', '2.448,00', '28,39K', '-1,05%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (956, '2020-08-13', '2.480,00', '2.456,00', '2.496,00', '2.456,00', '19,53K', '0,61%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (957, '2020-08-12', '2.465,00', '2.445,00', '2.480,00', '2.445,00', '18,70K', '0,69%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (958, '2020-08-11', '2.448,00', '2.475,00', '2.475,00', '2.427,00', '31,25K', '-1,61%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (959, '2020-08-10', '2.488,00', '2.519,00', '2.535,00', '2.466,00', '31,59K', '-1,39%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (960, '2020-08-07', '2.523,00', '2.514,00', '2.527,00', '2.490,00', '31,85K', '1,16%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (961, '2020-08-06', '2.494,00', '2.474,00', '2.517,00', '2.468,00', '31,66K', '0,81%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (962, '2020-08-05', '2.474,00', '2.446,00', '2.482,00', '2.446,00', '23,63K', '1,10%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (963, '2020-08-04', '2.447,00', '2.464,00', '2.474,00', '2.437,00', '23,31K', '-0,57%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (964, '2020-08-03', '2.461,00', '2.399,00', '2.474,00', '2.392,00', '22,86K', '2,58%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (965, '2020-07-31', '2.399,00', '2.363,00', '2.415,00', '2.361,00', '18,13K', '2,30%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (966, '2020-07-30', '2.345,00', '2.337,00', '2.385,00', '2.329,00', '14,19K', '0,43%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (967, '2020-07-29', '2.335,00', '2.291,00', '2.350,00', '2.287,00', '11,57K', '2,37%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (968, '2020-07-28', '2.281,00', '2.280,00', '2.293,00', '2.251,00', '7,54K', '0,09%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (969, '2020-07-27', '2.279,00', '2.223,00', '2.288,00', '2.223,00', '10,84K', '2,57%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (970, '2020-07-24', '2.222,00', '2.190,00', '2.243,00', '2.190,00', '5,92K', '0,95%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (971, '2020-07-23', '2.201,00', '2.205,00', '2.228,00', '2.177,00', '6,00K', '-0,18%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (972, '2020-07-22', '2.205,00', '2.188,00', '2.221,00', '2.165,00', '4,35K', '1,24%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (973, '2020-07-21', '2.178,00', '2.210,00', '2.248,00', '2.177,00', '9,53K', '-1,54%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (974, '2020-07-20', '2.212,00', '2.174,00', '2.221,00', '2.148,00', '11,03K', '1,98%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (975, '2020-07-17', '2.169,00', '2.172,00', '2.211,00', '2.166,00', '7,19K', '0,37%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (976, '2020-07-16', '2.161,00', '2.135,00', '2.175,00', '2.115,00', '12,62K', '1,22%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (977, '2020-07-15', '2.135,00', '2.163,00', '2.174,00', '2.126,00', '12,84K', '-0,93%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (978, '2020-07-14', '2.155,00', '2.177,00', '2.177,00', '2.138,00', '11,46K', '-1,73%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (979, '2020-07-13', '2.193,00', '2.163,00', '2.197,00', '2.148,00', '12,75K', '1,53%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (980, '2020-07-10', '2.160,00', '2.150,00', '2.179,00', '2.141,00', '11,33K', '0,51%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (981, '2020-07-09', '2.149,00', '2.122,00', '2.150,00', '2.097,00', '14,21K', '2,33%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (982, '2020-07-08', '2.100,00', '2.142,00', '2.148,00', '2.092,00', '16,67K', '-2,23%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (983, '2020-07-07', '2.148,00', '2.148,00', '2.163,00', '2.130,00', '14,50K', '-0,19%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (984, '2020-07-06', '2.152,00', '2.158,00', '2.175,00', '2.139,00', '18,65K', '-1,24%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (985, '2020-07-02', '2.179,00', '2.182,00', '2.219,00', '2.162,00', '16,59K', '0,46%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (986, '2020-07-01', '2.169,00', '2.182,00', '2.191,00', '2.158,00', '18,82K', '-0,78%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (987, '2020-06-30', '2.186,00', '2.243,00', '2.250,00', '2.172,00', '21,82K', '-2,32%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (988, '2020-06-29', '2.238,00', '2.279,00', '2.279,00', '2.223,00', '16,85K', '-1,71%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (989, '2020-06-26', '2.277,00', '2.386,00', '2.397,00', '2.262,00', '21,06K', '-4,57%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (990, '2020-06-25', '2.386,00', '2.310,00', '2.396,00', '2.307,00', '20,19K', '3,47%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (991, '2020-06-24', '2.306,00', '2.286,00', '2.328,00', '2.286,00', '9,80K', '0,70%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (992, '2020-06-23', '2.290,00', '2.274,00', '2.316,00', '2.249,00', '11,38K', '0,88%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (993, '2020-06-22', '2.270,00', '2.246,00', '2.282,00', '2.219,00', '9,88K', '0,80%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (994, '2020-06-19', '2.252,00', '2.262,00', '2.289,00', '2.243,00', '10,27K', '-0,79%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (995, '2020-06-18', '2.270,00', '2.242,00', '2.272,00', '2.209,00', '13,93K', '1,79%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (996, '2020-06-17', '2.230,00', '2.261,00', '2.273,00', '2.218,00', '13,77K', '-1,72%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (997, '2020-06-16', '2.269,00', '2.293,00', '2.320,00', '2.263,00', '14,99K', '0,13%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (998, '2020-06-15', '2.266,00', '2.307,00', '2.307,00', '2.226,00', '20,16K', '-2,29%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (999, '2020-06-12', '2.319,00', '2.295,00', '2.347,00', '2.283,00', '19,78K', '1,22%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1000, '2020-06-11', '2.291,00', '2.370,00', '2.383,00', '2.279,00', '26,84K', '-4,30%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1001, '2020-06-10', '2.394,00', '2.421,00', '2.425,00', '2.381,00', '18,81K', '-1,03%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1002, '2020-06-09', '2.419,00', '2.373,00', '2.439,00', '2.368,00', '34,63K', '1,94%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1003, '2020-06-08', '2.373,00', '2.387,00', '2.399,00', '2.363,00', '22,80K', '-0,46%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1004, '2020-06-05', '2.384,00', '2.397,00', '2.405,00', '2.381,00', '19,91K', '0,29%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1005, '2020-06-04', '2.377,00', '2.386,00', '2.409,00', '2.367,00', '13,62K', '-0,04%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1006, '2020-06-03', '2.378,00', '2.395,00', '2.412,00', '2.354,00', '15,71K', '-0,17%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1007, '2020-06-02', '2.382,00', '2.464,00', '2.465,00', '2.377,00', '17,73K', '-2,97%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1008, '2020-06-01', '2.455,00', '2.400,00', '2.475,00', '2.396,00', '14,02K', '1,95%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1009, '2020-05-29', '2.408,00', '2.387,00', '2.413,00', '2.356,00', '12,39K', '0,88%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1010, '2020-05-28', '2.387,00', '2.306,00', '2.394,00', '2.306,00', '9,81K', '2,84%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1011, '2020-05-27', '2.321,00', '2.357,00', '2.374,00', '2.303,00', '8,44K', '-1,44%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1012, '2020-05-26', '2.355,00', '2.351,00', '2.401,00', '2.351,00', '11,65K', '0,13%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1013, '2020-05-22', '2.352,00', '2.305,00', '2.362,00', '2.292,00', '13,00K', '1,60%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1014, '2020-05-21', '2.315,00', '2.377,00', '2.381,00', '2.303,00', '10,87K', '-2,57%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1015, '2020-05-20', '2.376,00', '2.399,00', '2.431,00', '2.368,00', '6,70K', '-1,25%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1016, '2020-05-19', '2.406,00', '2.376,00', '2.416,00', '2.369,00', '3,77K', '1,13%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1017, '2020-05-18', '2.379,00', '2.367,00', '2.390,00', '2.354,00', '4,56K', '0,17%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1018, '2020-05-15', '2.375,00', '2.400,00', '2.405,00', '2.360,00', '4,83K', '-0,50%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1019, '2020-05-14', '2.387,00', '2.429,00', '2.441,00', '2.379,00', '8,64K', '-2,81%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1020, '2020-05-13', '2.456,00', '2.400,00', '2.466,00', '2.379,00', '17,53K', '2,25%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1021, '2020-05-12', '2.402,00', '2.481,00', '2.487,00', '2.342,00', '21,57K', '-2,48%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1022, '2020-05-11', '2.463,00', '2.395,00', '2.474,00', '2.388,00', '20,03K', '2,63%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1023, '2020-05-08', '2.400,00', '2.376,00', '2.410,00', '2.367,00', '7,50K', '0,80%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1024, '2020-05-07', '2.381,00', '2.375,00', '2.400,00', '2.349,00', '12,74K', '0,76%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1025, '2020-05-06', '2.363,00', '2.368,00', '2.383,00', '2.332,00', '14,59K', '-0,63%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1026, '2020-05-05', '2.378,00', '2.387,00', '2.421,00', '2.363,00', '12,25K', '-0,38%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1027, '2020-05-04', '2.387,00', '2.389,00', '2.399,00', '2.341,00', '13,53K', '-0,62%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1028, '2020-05-01', '2.402,00', '2.408,00', '2.422,00', '2.386,00', '16,43K', '-0,50%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1029, '2020-04-30', '2.414,00', '2.380,00', '2.425,00', '2.360,00', '19,45K', '1,56%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1030, '2020-04-29', '2.377,00', '2.356,00', '2.384,00', '2.351,00', '7,92K', '1,49%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1031, '2020-04-28', '2.342,00', '2.327,00', '2.383,00', '2.321,00', '11,42K', '0,52%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1032, '2020-04-27', '2.330,00', '2.341,00', '2.354,00', '2.310,00', '9,24K', '0,30%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1033, '2020-04-24', '2.323,00', '2.355,00', '2.360,00', '2.309,00', '11,27K', '-1,69%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1034, '2020-04-23', '2.363,00', '2.365,00', '2.387,00', '2.352,00', '13,09K', '-0,51%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1035, '2020-04-22', '2.375,00', '2.337,00', '2.387,00', '2.320,00', '16,51K', '2,46%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1036, '2020-04-21', '2.318,00', '2.340,00', '2.348,00', '2.294,00', '11,49K', '-1,70%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1037, '2020-04-20', '2.358,00', '2.354,00', '2.361,00', '2.325,00', '9,71K', '-0,42%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1038, '2020-04-17', '2.368,00', '2.265,00', '2.369,00', '2.258,00', '15,89K', '4,87%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1039, '2020-04-16', '2.258,00', '2.245,00', '2.272,00', '2.225,00', '10,48K', '1,30%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1040, '2020-04-15', '2.229,00', '2.268,00', '2.268,00', '2.215,00', '15,59K', '-2,58%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1041, '2020-04-14', '2.288,00', '2.282,00', '2.303,00', '2.271,00', '16,28K', '0,70%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1042, '2020-04-13', '2.272,00', '2.311,00', '2.327,00', '2.259,00', '13,85K', '-1,69%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1043, '2020-04-09', '2.311,00', '2.379,00', '2.387,00', '2.305,00', '20,11K', '-2,57%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1044, '2020-04-08', '2.372,00', '2.390,00', '2.395,00', '2.360,00', '16,75K', '-0,84%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1045, '2020-04-07', '2.392,00', '2.365,00', '2.402,00', '2.365,00', '27,73K', '1,87%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1046, '2020-04-06', '2.348,00', '2.269,00', '2.367,00', '2.269,00', '23,57K', '3,89%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1047, '2020-04-03', '2.260,00', '2.273,00', '2.289,00', '2.246,00', '14,06K', '-0,79%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1048, '2020-04-02', '2.278,00', '2.251,00', '2.282,00', '2.236,00', '17,25K', '1,83%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1049, '2020-04-01', '2.237,00', '2.245,00', '2.256,00', '2.227,00', '11,61K', '-0,97%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1050, '2020-03-31', '2.259,00', '2.270,00', '2.275,00', '2.243,00', '12,97K', '-0,53%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1051, '2020-03-30', '2.271,00', '2.261,00', '2.299,00', '2.253,00', '12,72K', '0,09%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1052, '2020-03-27', '2.269,00', '2.265,00', '2.278,00', '2.242,00', '13,36K', '0,31%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1053, '2020-03-26', '2.262,00', '2.256,00', '2.273,00', '2.226,00', '12,12K', '0,18%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1054, '2020-03-25', '2.258,00', '2.285,00', '2.304,00', '2.243,00', '11,89K', '-0,40%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1055, '2020-03-24', '2.267,00', '2.255,00', '2.294,00', '2.245,00', '10,43K', '1,12%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1056, '2020-03-23', '2.242,00', '2.231,00', '2.254,00', '2.207,00', '11,40K', '0,49%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1057, '2020-03-20', '2.231,00', '2.255,00', '2.277,00', '2.201,00', '20,48K', '0,09%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1058, '2020-03-19', '2.229,00', '2.246,00', '2.281,00', '2.221,00', '22,11K', '-1,98%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1059, '2020-03-18', '2.274,00', '2.312,00', '2.347,00', '2.263,00', '20,47K', '-1,69%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1060, '2020-03-17', '2.313,00', '2.327,00', '2.327,00', '2.260,00', '20,51K', '-0,77%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1061, '2020-03-16', '2.331,00', '2.405,00', '2.408,00', '2.320,00', '34,56K', '-3,88%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1062, '2020-03-13', '2.425,00', '2.500,00', '2.510,00', '2.423,00', '29,74K', '-2,81%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1063, '2020-03-12', '2.495,00', '2.575,00', '2.581,00', '2.492,00', '29,29K', '-4,95%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1064, '2020-03-11', '2.625,00', '2.605,00', '2.644,00', '2.581,00', '22,81K', '1,86%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1065, '2020-03-10', '2.577,00', '2.543,00', '2.604,00', '2.535,00', '29,84K', '1,26%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1066, '2020-03-09', '2.545,00', '2.536,00', '2.573,00', '2.509,00', '25,68K', '-0,62%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1067, '2020-03-06', '2.561,00', '2.590,00', '2.597,00', '2.556,00', '23,42K', '-1,39%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1068, '2020-03-05', '2.597,00', '2.626,00', '2.633,00', '2.581,00', '19,99K', '-1,10%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1069, '2020-03-04', '2.626,00', '2.646,00', '2.661,00', '2.620,00', '16,69K', '-1,02%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1070, '2020-03-03', '2.653,00', '2.658,00', '2.666,00', '2.630,00', '20,89K', '-0,30%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1071, '2020-03-02', '2.661,00', '2.681,00', '2.690,00', '2.624,00', '27,94K', '-0,41%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1072, '2020-02-28', '2.672,00', '2.718,00', '2.725,00', '2.646,00', '29,46K', '-2,66%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1073, '2020-02-27', '2.745,00', '2.737,00', '2.758,00', '2.718,00', '18,03K', '0,22%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1074, '2020-02-26', '2.739,00', '2.792,00', '2.799,00', '2.727,00', '17,66K', '-2,39%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1075, '2020-02-25', '2.806,00', '2.825,00', '2.834,00', '2.790,00', '13,21K', '0,18%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1076, '2020-02-24', '2.801,00', '2.819,00', '2.824,00', '2.771,00', '21,17K', '-1,48%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1077, '2020-02-21', '2.843,00', '2.865,00', '2.883,00', '2.830,00', '13,30K', '-0,59%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1078, '2020-02-20', '2.860,00', '2.847,00', '2.878,00', '2.821,00', '15,69K', '0,46%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1079, '2020-02-19', '2.847,00', '2.861,00', '2.886,00', '2.841,00', '14,69K', '0,04%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1080, '2020-02-18', '2.846,00', '2.899,00', '2.903,00', '2.827,00', '19,87K', '-1,39%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1081, '2020-02-14', '2.886,00', '2.893,00', '2.921,00', '2.876,00', '14,81K', '-0,31%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1082, '2020-02-13', '2.895,00', '2.852,00', '2.905,00', '2.848,00', '22,60K', '0,94%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1083, '2020-02-12', '2.868,00', '2.879,00', '2.909,00', '2.855,00', '29,34K', '-0,28%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1084, '2020-02-11', '2.876,00', '2.871,00', '2.922,00', '2.869,00', '33,15K', '-0,07%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1085, '2020-02-10', '2.878,00', '2.898,00', '2.930,00', '2.871,00', '40,67K', '-0,69%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1086, '2020-02-07', '2.898,00', '2.881,00', '2.935,00', '2.881,00', '46,36K', '1,15%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1087, '2020-02-06', '2.865,00', '2.793,00', '2.876,00', '2.788,00', '42,43K', '1,78%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1088, '2020-02-05', '2.815,00', '2.781,00', '2.834,00', '2.781,00', '37,36K', '1,22%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1089, '2020-02-04', '2.781,00', '2.747,00', '2.796,00', '2.741,00', '26,61K', '0,91%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1090, '2020-02-03', '2.756,00', '2.774,00', '2.796,00', '2.736,00', '33,92K', '-1,61%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1091, '2020-01-31', '2.801,00', '2.823,00', '2.836,00', '2.788,00', '24,49K', '-1,02%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1092, '2020-01-30', '2.830,00', '2.765,00', '2.849,00', '2.765,00', '20,19K', '2,76%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1093, '2020-01-29', '2.754,00', '2.729,00', '2.769,00', '2.702,00', '12,88K', '0,88%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1094, '2020-01-28', '2.730,00', '2.763,00', '2.789,00', '2.708,00', '13,09K', '-1,05%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1095, '2020-01-27', '2.759,00', '2.752,00', '2.798,00', '2.722,00', '13,60K', '0,04%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1096, '2020-01-24', '2.758,00', '2.795,00', '2.812,00', '2.753,00', '13,04K', '-1,15%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1097, '2020-01-23', '2.790,00', '2.809,00', '2.814,00', '2.782,00', '15,34K', '-1,10%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1098, '2020-01-22', '2.821,00', '2.836,00', '2.874,00', '2.809,00', '12,99K', '-0,53%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1099, '2020-01-21', '2.836,00', '2.819,00', '2.846,00', '2.796,00', '11,48K', '0,67%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1100, '2020-01-17', '2.817,00', '2.720,00', '2.827,00', '2.707,00', '19,30K', '2,96%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1101, '2020-01-16', '2.736,00', '2.736,00', '2.750,00', '2.715,00', '16,08K', '0,92%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1102, '2020-01-15', '2.711,00', '2.678,00', '2.744,00', '2.664,00', '16,09K', '1,50%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1103, '2020-01-14', '2.671,00', '2.627,00', '2.680,00', '2.624,00', '13,91K', '2,65%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1104, '2020-01-13', '2.602,00', '2.610,00', '2.614,00', '2.575,00', '12,54K', '0,00%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1105, '2020-01-10', '2.602,00', '2.570,00', '2.617,00', '2.568,00', '14,95K', '1,64%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1106, '2020-01-09', '2.560,00', '2.506,00', '2.568,00', '2.506,00', '13,06K', '1,99%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1107, '2020-01-08', '2.510,00', '2.537,00', '2.542,00', '2.507,00', '11,11K', '-1,22%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1108, '2020-01-07', '2.541,00', '2.503,00', '2.554,00', '2.491,00', '10,41K', '1,76%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1109, '2020-01-06', '2.497,00', '2.529,00', '2.530,00', '2.480,00', '10,65K', '-1,27%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1110, '2020-01-03', '2.529,00', '2.533,00', '2.578,00', '2.526,00', '8,82K', '-0,39%', NULL, NULL);
INSERT INTO `variabel_data` VALUES (1111, '2020-01-02', '2.539,00', '2.532,00', '2.567,00', '2.513,00', '9,28K', '-0,08%', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
