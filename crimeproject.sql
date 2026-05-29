-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 13, 2024 at 09:03 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crimeproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `ada_algo`
--

DROP TABLE IF EXISTS `ada_algo`;
CREATE TABLE IF NOT EXISTS `ada_algo` (
  `XG_ID` int NOT NULL AUTO_INCREMENT,
  `Accuracy` longtext NOT NULL,
  `Precession` longtext NOT NULL,
  `F1_Score` longtext NOT NULL,
  `Recall` longtext NOT NULL,
  `Name` longtext NOT NULL,
  PRIMARY KEY (`XG_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ada_algo`
--

INSERT INTO `ada_algo` (`XG_ID`, `Accuracy`, `Precession`, `F1_Score`, `Recall`, `Name`) VALUES
(1, '33.98', '17.58', '14.66', '17.74', 'ADA Boost Algorithm');

-- --------------------------------------------------------

--
-- Table structure for table `admin_data`
--

DROP TABLE IF EXISTS `admin_data`;
CREATE TABLE IF NOT EXISTS `admin_data` (
  `User_id` int NOT NULL AUTO_INCREMENT,
  `Dataset` varchar(100) DEFAULT NULL,
  `File_size` varchar(100) NOT NULL,
  `Date_Time` datetime(6) NOT NULL,
  PRIMARY KEY (`User_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin_data`
--

INSERT INTO `admin_data` (`User_id`, `Dataset`, `File_size`, `Date_Time`) VALUES
(1, 'crime_type_clean.csv', '5586.9677734375 kb', '2024-01-11 08:39:49.093810'),
(2, 'crime_type_clean_BvzdmQg.csv', '5586.9677734375 kb', '2024-01-11 09:50:26.311654');

-- --------------------------------------------------------

--
-- Table structure for table `anm_algo`
--

DROP TABLE IF EXISTS `anm_algo`;
CREATE TABLE IF NOT EXISTS `anm_algo` (
  `ANM_ID` int NOT NULL AUTO_INCREMENT,
  `Accuracy` longtext NOT NULL,
  `Precession` longtext NOT NULL,
  `F1_Score` longtext NOT NULL,
  `Recall` longtext NOT NULL,
  `Name` longtext NOT NULL,
  PRIMARY KEY (`ANM_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ann_algo`
--

DROP TABLE IF EXISTS `ann_algo`;
CREATE TABLE IF NOT EXISTS `ann_algo` (
  `ANN_ID` int NOT NULL AUTO_INCREMENT,
  `Accuracy` longtext NOT NULL,
  `Precession` longtext NOT NULL,
  `F1_Score` longtext NOT NULL,
  `Recall` longtext NOT NULL,
  `Name` longtext NOT NULL,
  PRIMARY KEY (`ANN_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ann_algo`
--

INSERT INTO `ann_algo` (`ANN_ID`, `Accuracy`, `Precession`, `F1_Score`, `Recall`, `Name`) VALUES
(1, '99.96', '88.79', '89.43', '91.46', 'Gradient Boost Algorithm'),
(2, '99.96', '88.79', '89.43', '91.46', 'Gradient Boost Algorithm');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add predict_details', 7, 'add_predict_details'),
(26, 'Can change predict_details', 7, 'change_predict_details'),
(27, 'Can delete predict_details', 7, 'delete_predict_details'),
(28, 'Can view predict_details', 7, 'view_predict_details'),
(29, 'Can add user models', 8, 'add_usermodels'),
(30, 'Can change user models', 8, 'change_usermodels'),
(31, 'Can delete user models', 8, 'delete_usermodels'),
(32, 'Can view user models', 8, 'view_usermodels'),
(33, 'Can add user feedback models', 9, 'add_userfeedbackmodels'),
(34, 'Can change user feedback models', 9, 'change_userfeedbackmodels'),
(35, 'Can delete user feedback models', 9, 'delete_userfeedbackmodels'),
(36, 'Can view user feedback models', 9, 'view_userfeedbackmodels'),
(37, 'Can add ad a_algo', 10, 'add_ada_algo'),
(38, 'Can change ad a_algo', 10, 'change_ada_algo'),
(39, 'Can delete ad a_algo', 10, 'delete_ada_algo'),
(40, 'Can view ad a_algo', 10, 'view_ada_algo'),
(41, 'Can add an m_algo', 11, 'add_anm_algo'),
(42, 'Can change an m_algo', 11, 'change_anm_algo'),
(43, 'Can delete an m_algo', 11, 'delete_anm_algo'),
(44, 'Can view an m_algo', 11, 'view_anm_algo'),
(45, 'Can add an n_algo', 12, 'add_ann_algo'),
(46, 'Can change an n_algo', 12, 'change_ann_algo'),
(47, 'Can delete an n_algo', 12, 'delete_ann_algo'),
(48, 'Can view an n_algo', 12, 'view_ann_algo'),
(49, 'Can add dataset', 13, 'add_dataset'),
(50, 'Can change dataset', 13, 'change_dataset'),
(51, 'Can delete dataset', 13, 'delete_dataset'),
(52, 'Can view dataset', 13, 'view_dataset'),
(53, 'Can add d t_algo', 14, 'add_dt_algo'),
(54, 'Can change d t_algo', 14, 'change_dt_algo'),
(55, 'Can delete d t_algo', 14, 'delete_dt_algo'),
(56, 'Can view d t_algo', 14, 'view_dt_algo'),
(57, 'Can add kn n_algo', 15, 'add_knn_algo'),
(58, 'Can change kn n_algo', 15, 'change_knn_algo'),
(59, 'Can delete kn n_algo', 15, 'delete_knn_algo'),
(60, 'Can view kn n_algo', 15, 'view_knn_algo'),
(61, 'Can add logistic', 16, 'add_logistic'),
(62, 'Can change logistic', 16, 'change_logistic'),
(63, 'Can delete logistic', 16, 'delete_logistic'),
(64, 'Can view logistic', 16, 'view_logistic'),
(65, 'Can add random forest', 17, 'add_randomforest'),
(66, 'Can change random forest', 17, 'change_randomforest'),
(67, 'Can delete random forest', 17, 'delete_randomforest'),
(68, 'Can view random forest', 17, 'view_randomforest'),
(69, 'Can add sv m_algo', 18, 'add_svm_algo'),
(70, 'Can change sv m_algo', 18, 'change_svm_algo'),
(71, 'Can delete sv m_algo', 18, 'delete_svm_algo'),
(72, 'Can view sv m_algo', 18, 'view_svm_algo'),
(73, 'Can add upload_dataset_model', 19, 'add_upload_dataset_model'),
(74, 'Can change upload_dataset_model', 19, 'change_upload_dataset_model'),
(75, 'Can delete upload_dataset_model', 19, 'delete_upload_dataset_model'),
(76, 'Can view upload_dataset_model', 19, 'view_upload_dataset_model'),
(77, 'Can add x g_algo', 20, 'add_xg_algo'),
(78, 'Can change x g_algo', 20, 'change_xg_algo'),
(79, 'Can delete x g_algo', 20, 'delete_xg_algo'),
(80, 'Can view x g_algo', 20, 'view_xg_algo'),
(81, 'Can add mlp', 21, 'add_mlp'),
(82, 'Can change mlp', 21, 'change_mlp'),
(83, 'Can delete mlp', 21, 'delete_mlp'),
(84, 'Can view mlp', 21, 'view_mlp');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dataset`
--

DROP TABLE IF EXISTS `dataset`;
CREATE TABLE IF NOT EXISTS `dataset` (
  `DS_ID` int NOT NULL AUTO_INCREMENT,
  `Age` int NOT NULL,
  `Glucose` int NOT NULL,
  `BloodPressure` int NOT NULL,
  `SkinThickness` int NOT NULL,
  `Insulin` int NOT NULL,
  `BMI` int NOT NULL,
  `DiabetesPedigreeFunction` int NOT NULL,
  `Pregnancies` int NOT NULL,
  PRIMARY KEY (`DS_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'userapp', 'predict_details'),
(8, 'userapp', 'usermodels'),
(9, 'userapp', 'userfeedbackmodels'),
(10, 'adminapp', 'ada_algo'),
(11, 'adminapp', 'anm_algo'),
(12, 'adminapp', 'ann_algo'),
(13, 'adminapp', 'dataset'),
(14, 'adminapp', 'dt_algo'),
(15, 'adminapp', 'knn_algo'),
(16, 'adminapp', 'logistic'),
(17, 'adminapp', 'randomforest'),
(18, 'adminapp', 'svm_algo'),
(19, 'adminapp', 'upload_dataset_model'),
(20, 'adminapp', 'xg_algo'),
(21, 'adminapp', 'mlp');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-01-11 06:50:57.282538'),
(2, 'auth', '0001_initial', '2024-01-11 06:50:57.730008'),
(3, 'admin', '0001_initial', '2024-01-11 06:50:57.900370'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-01-11 06:50:57.906803'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-01-11 06:50:57.913103'),
(6, 'adminapp', '0001_initial', '2024-01-11 06:50:58.005454'),
(7, 'contenttypes', '0002_remove_content_type_name', '2024-01-11 06:50:58.075646'),
(8, 'auth', '0002_alter_permission_name_max_length', '2024-01-11 06:50:58.106740'),
(9, 'auth', '0003_alter_user_email_max_length', '2024-01-11 06:50:58.158288'),
(10, 'auth', '0004_alter_user_username_opts', '2024-01-11 06:50:58.164365'),
(11, 'auth', '0005_alter_user_last_login_null', '2024-01-11 06:50:58.194097'),
(12, 'auth', '0006_require_contenttypes_0002', '2024-01-11 06:50:58.197086'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2024-01-11 06:50:58.205061'),
(14, 'auth', '0008_alter_user_username_max_length', '2024-01-11 06:50:58.239367'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2024-01-11 06:50:58.266790'),
(16, 'auth', '0010_alter_group_name_max_length', '2024-01-11 06:50:58.301524'),
(17, 'auth', '0011_update_proxy_permissions', '2024-01-11 06:50:58.358527'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2024-01-11 06:50:58.384363'),
(19, 'sessions', '0001_initial', '2024-01-11 06:50:58.424843'),
(20, 'userapp', '0001_initial', '2024-01-11 06:50:58.497018'),
(21, 'adminapp', '0002_mlp', '2024-01-11 09:32:26.726418');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('r7qh5kt2apkm18zggy21q87lgh22uy87', '.eJwVy0EKgCAQRuG7_GsZkKQcV90kzKYQkkJrFd29aff44D2QEvOOgCvO4_Y3paPA4G5Sp7wgWIOYKgIzcW9wVkHwngY2qJLULTn1VZXJdb82vd4P7o8Zhg:1rOZLm:CCu58byQJ6_fPAOrtWbIycHUvFKsjxLm3076Lm3QWUQ', '2024-01-27 08:26:42.073349'),
('l4pah4gw276n47du6y0n4rgwn7r7klst', 'eyJ1c2VyX2lkIjoxfQ:1rOBGm:o4815t1_5yBvzqIQUmQGXpJ57Bmk36V49iS79_feYc0', '2024-01-26 06:43:56.004413'),
('yl379kvydb78progten85w6ehgrfyryq', 'eyJ1c2VyX2lkIjoxfQ:1rOBfw:RLkTuUoS1843LT6d1Jwk9eFTHn0PDCe3bSUTTzTYFh4', '2024-01-26 07:09:56.552504');

-- --------------------------------------------------------

--
-- Table structure for table `dt_algo`
--

DROP TABLE IF EXISTS `dt_algo`;
CREATE TABLE IF NOT EXISTS `dt_algo` (
  `DT_ID` int NOT NULL AUTO_INCREMENT,
  `Accuracy` longtext NOT NULL,
  `Precession` longtext NOT NULL,
  `F1_Score` longtext NOT NULL,
  `Recall` longtext NOT NULL,
  `Name` longtext NOT NULL,
  PRIMARY KEY (`DT_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dt_algo`
--

INSERT INTO `dt_algo` (`DT_ID`, `Accuracy`, `Precession`, `F1_Score`, `Recall`, `Name`) VALUES
(1, '99.96', '88.81', '89.44', '91.46', 'Decision Tree Algorithm');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_details`
--

DROP TABLE IF EXISTS `feedback_details`;
CREATE TABLE IF NOT EXISTS `feedback_details` (
  `feed_id` int NOT NULL AUTO_INCREMENT,
  `star_feedback` longtext NOT NULL,
  `star_rating` varchar(100) DEFAULT NULL,
  `star_Date` datetime(6) DEFAULT NULL,
  `sentment` longtext,
  `user_details_id` int NOT NULL,
  PRIMARY KEY (`feed_id`),
  KEY `feedback_Details_user_details_id_910e6835` (`user_details_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `feedback_details`
--

INSERT INTO `feedback_details` (`feed_id`, `star_feedback`, `star_rating`, `star_Date`, `sentment`, `user_details_id`) VALUES
(1, 'ok', NULL, '2024-01-11 08:25:05.868967', 'positive', 1),
(2, 'good\r\n', '4', '2024-01-11 09:49:36.038105', 'positive', 1);

-- --------------------------------------------------------

--
-- Table structure for table `knn_algo`
--

DROP TABLE IF EXISTS `knn_algo`;
CREATE TABLE IF NOT EXISTS `knn_algo` (
  `XG_ID` int NOT NULL AUTO_INCREMENT,
  `Accuracy` longtext NOT NULL,
  `Precession` longtext NOT NULL,
  `F1_Score` longtext NOT NULL,
  `Recall` longtext NOT NULL,
  `Name` longtext NOT NULL,
  PRIMARY KEY (`XG_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `knn_algo`
--

INSERT INTO `knn_algo` (`XG_ID`, `Accuracy`, `Precession`, `F1_Score`, `Recall`, `Name`) VALUES
(1, '75.0', '48.68', '37.03', '34.25', 'KNN Algorithm'),
(2, '75.0', '48.68', '37.03', '34.25', 'KNN Algorithm');

-- --------------------------------------------------------

--
-- Table structure for table `logistic`
--

DROP TABLE IF EXISTS `logistic`;
CREATE TABLE IF NOT EXISTS `logistic` (
  `Logistic_ID` int NOT NULL AUTO_INCREMENT,
  `Accuracy` longtext NOT NULL,
  `Precession` longtext NOT NULL,
  `F1_Score` longtext NOT NULL,
  `Recall` longtext NOT NULL,
  `Name` longtext NOT NULL,
  PRIMARY KEY (`Logistic_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `logistic`
--

INSERT INTO `logistic` (`Logistic_ID`, `Accuracy`, `Precession`, `F1_Score`, `Recall`, `Name`) VALUES
(1, '79.6', '25.86', '24.58', '26.61', 'Logistic Regression Algorithm'),
(2, '79.6', '25.86', '24.58', '26.61', 'Logistic Regression Algorithm');

-- --------------------------------------------------------

--
-- Table structure for table `mlp_algo`
--

DROP TABLE IF EXISTS `mlp_algo`;
CREATE TABLE IF NOT EXISTS `mlp_algo` (
  `ANM_ID` int NOT NULL AUTO_INCREMENT,
  `Accuracy` longtext NOT NULL,
  `Precession` longtext NOT NULL,
  `F1_Score` longtext NOT NULL,
  `Recall` longtext NOT NULL,
  `Name` longtext NOT NULL,
  PRIMARY KEY (`ANM_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mlp_algo`
--

INSERT INTO `mlp_algo` (`ANM_ID`, `Accuracy`, `Precession`, `F1_Score`, `Recall`, `Name`) VALUES
(1, '99.3', '83.63', '82.1', '82.21', 'MLP Classifier Algorithm'),
(2, '99.3', '83.63', '82.1', '82.21', 'MLP Classifier Algorithm');

-- --------------------------------------------------------

--
-- Table structure for table `predict_detail`
--

DROP TABLE IF EXISTS `predict_detail`;
CREATE TABLE IF NOT EXISTS `predict_detail` (
  `predict_id` int NOT NULL AUTO_INCREMENT,
  `gender` varchar(60) DEFAULT NULL,
  `age` varchar(60) DEFAULT NULL,
  `hypertension` longtext,
  `heart` varchar(60) DEFAULT NULL,
  `married` varchar(60) DEFAULT NULL,
  `work` varchar(60) DEFAULT NULL,
  `residence` varchar(60) DEFAULT NULL,
  `bmi` longtext,
  `glucose` longtext,
  `smoking` longtext,
  PRIMARY KEY (`predict_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `randomforest`
--

DROP TABLE IF EXISTS `randomforest`;
CREATE TABLE IF NOT EXISTS `randomforest` (
  `Random_ID` int NOT NULL AUTO_INCREMENT,
  `Accuracy` longtext NOT NULL,
  `Precession` longtext NOT NULL,
  `F1_Score` longtext NOT NULL,
  `Recall` longtext NOT NULL,
  `Name` longtext NOT NULL,
  PRIMARY KEY (`Random_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `randomforest`
--

INSERT INTO `randomforest` (`Random_ID`, `Accuracy`, `Precession`, `F1_Score`, `Recall`, `Name`) VALUES
(1, '99.54', '90.39', '83.93', '82.1', 'Random Forest Algorithm'),
(2, '99.55', '90.28', '84.22', '82.45', 'Random Forest Algorithm');

-- --------------------------------------------------------

--
-- Table structure for table `svm_algo`
--

DROP TABLE IF EXISTS `svm_algo`;
CREATE TABLE IF NOT EXISTS `svm_algo` (
  `SXM_ID` int NOT NULL AUTO_INCREMENT,
  `Accuracy` longtext NOT NULL,
  `Precession` longtext NOT NULL,
  `F1_Score` longtext NOT NULL,
  `Recall` longtext NOT NULL,
  `Name` longtext NOT NULL,
  PRIMARY KEY (`SXM_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
CREATE TABLE IF NOT EXISTS `user_details` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `name` longtext,
  `contact` longtext,
  `email` varchar(200) DEFAULT NULL,
  `password` longtext,
  `file` varchar(100) DEFAULT NULL,
  `user_status` longtext,
  `Otp_Status` longtext NOT NULL,
  `otp` int DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `date`, `name`, `contact`, `email`, `password`, `file`, `user_status`, `Otp_Status`, `otp`) VALUES
(1, '2024-01-11', 'tabraz', '6305310879', 'tab@gmail.com', '1111', 'images/i1_JNIHJbP.jpg', 'accepted', 'verified', 3540);

-- --------------------------------------------------------

--
-- Table structure for table `xg_algo`
--

DROP TABLE IF EXISTS `xg_algo`;
CREATE TABLE IF NOT EXISTS `xg_algo` (
  `XG_ID` int NOT NULL AUTO_INCREMENT,
  `Accuracy` longtext NOT NULL,
  `Precession` longtext NOT NULL,
  `F1_Score` longtext NOT NULL,
  `Recall` longtext NOT NULL,
  `Name` longtext NOT NULL,
  PRIMARY KEY (`XG_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `xg_algo`
--

INSERT INTO `xg_algo` (`XG_ID`, `Accuracy`, `Precession`, `F1_Score`, `Recall`, `Name`) VALUES
(1, '100.0', '104.4', '1.09', '0.24', 'XG Boost Algorithm');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
