-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2023 at 12:10 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `joe_sec_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'Staff');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(25, 1, 25),
(26, 1, 26),
(27, 1, 27),
(28, 1, 28),
(29, 1, 29),
(30, 1, 30),
(31, 1, 31),
(32, 1, 32),
(33, 1, 33),
(34, 1, 34),
(35, 1, 35),
(36, 1, 36),
(37, 1, 37),
(38, 1, 38),
(39, 1, 39),
(40, 1, 40),
(41, 1, 41),
(42, 1, 42),
(43, 1, 43),
(44, 1, 44),
(45, 1, 45),
(46, 1, 46),
(47, 1, 47),
(48, 1, 48),
(49, 1, 49),
(50, 1, 50),
(51, 1, 51),
(52, 1, 52),
(53, 1, 53),
(54, 1, 54),
(55, 1, 55),
(56, 1, 56),
(57, 1, 57),
(58, 1, 58),
(59, 1, 59),
(60, 1, 60),
(61, 1, 61),
(62, 1, 62),
(63, 1, 63),
(64, 1, 64);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add Token', 6, 'add_token'),
(22, 'Can change Token', 6, 'change_token'),
(23, 'Can delete Token', 6, 'delete_token'),
(24, 'Can view Token', 6, 'view_token'),
(25, 'Can add token', 7, 'add_tokenproxy'),
(26, 'Can change token', 7, 'change_tokenproxy'),
(27, 'Can delete token', 7, 'delete_tokenproxy'),
(28, 'Can view token', 7, 'view_tokenproxy'),
(29, 'Can add account5', 8, 'add_account5'),
(30, 'Can change account5', 8, 'change_account5'),
(31, 'Can delete account5', 8, 'delete_account5'),
(32, 'Can view account5', 8, 'view_account5'),
(33, 'Can add authentication code', 9, 'add_authenticationcode'),
(34, 'Can change authentication code', 9, 'change_authenticationcode'),
(35, 'Can delete authentication code', 9, 'delete_authenticationcode'),
(36, 'Can view authentication code', 9, 'view_authenticationcode'),
(37, 'Can add fake user', 10, 'add_fakeuser'),
(38, 'Can change fake user', 10, 'change_fakeuser'),
(39, 'Can delete fake user', 10, 'delete_fakeuser'),
(40, 'Can view fake user', 10, 'view_fakeuser'),
(41, 'Can add lab topic', 11, 'add_labtopic'),
(42, 'Can change lab topic', 11, 'change_labtopic'),
(43, 'Can delete lab topic', 11, 'delete_labtopic'),
(44, 'Can view lab topic', 11, 'view_labtopic'),
(45, 'Can add login password', 12, 'add_loginpassword'),
(46, 'Can change login password', 12, 'change_loginpassword'),
(47, 'Can delete login password', 12, 'delete_loginpassword'),
(48, 'Can view login password', 12, 'view_loginpassword'),
(49, 'Can add product', 13, 'add_product'),
(50, 'Can change product', 13, 'change_product'),
(51, 'Can delete product', 13, 'delete_product'),
(52, 'Can view product', 13, 'view_product'),
(53, 'Can add educational content', 14, 'add_educationalcontent'),
(54, 'Can change educational content', 14, 'change_educationalcontent'),
(55, 'Can delete educational content', 14, 'delete_educationalcontent'),
(56, 'Can view educational content', 14, 'view_educationalcontent'),
(57, 'Can add challenge', 15, 'add_challenge'),
(58, 'Can change challenge', 15, 'change_challenge'),
(59, 'Can delete challenge', 15, 'delete_challenge'),
(60, 'Can view challenge', 15, 'view_challenge'),
(61, 'Can add user', 16, 'add_customuser'),
(62, 'Can change user', 16, 'change_customuser'),
(63, 'Can delete user', 16, 'delete_customuser'),
(64, 'Can view user', 16, 'view_customuser');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-08-15 13:58:08.249912', '1', 'Staff', 1, '[{\"added\": {}}]', 3, 1),
(2, '2023-08-15 13:59:13.172672', '1', 'JOE', 2, '[{\"changed\": {\"fields\": [\"Groups\", \"User permissions\", \"First name\", \"Last name\", \"User type\"]}}]', 16, 1),
(3, '2023-08-15 14:03:19.610328', '2', 'Michael12', 1, '[{\"added\": {}}]', 16, 1),
(4, '2023-08-15 14:09:21.160566', '1', 'Staff', 2, '[]', 3, 1),
(5, '2023-08-15 17:16:20.371315', '1', 'JOE', 2, '[{\"changed\": {\"fields\": [\"Password\"]}}]', 16, 1),
(6, '2023-08-15 17:23:26.638736', '1', 'JOE', 2, '[{\"changed\": {\"fields\": [\"Password\"]}}]', 16, 3),
(7, '2023-08-15 19:24:53.808769', '3', 'wasim', 2, '[{\"changed\": {\"fields\": [\"Points\"]}}]', 16, 3),
(8, '2023-08-15 19:29:02.562383', '3', 'wasim', 2, '[{\"changed\": {\"fields\": [\"Groups\", \"User type\"]}}]', 16, 3),
(9, '2023-08-16 06:49:59.313244', '4', 'andrew', 1, '[{\"added\": {}}]', 16, 3),
(10, '2023-08-16 08:53:15.150234', '2', 'Michael12', 2, '[{\"changed\": {\"fields\": [\"Password\"]}}]', 16, 3),
(11, '2023-08-16 08:53:21.658009', '2', 'Michael12', 2, '[]', 16, 3),
(12, '2023-08-16 08:59:09.149285', '5', 'Carin', 1, '[{\"added\": {}}]', 16, 3),
(13, '2023-08-16 09:16:50.919649', '7', 'dsada', 1, '[{\"added\": {}}]', 16, 3),
(14, '2023-08-16 09:17:01.291557', '7', 'dsada', 3, '', 16, 3),
(15, '2023-08-16 09:22:58.676570', '5', 'Carin', 2, '[]', 16, 3),
(16, '2023-08-16 09:32:34.702069', '5', 'Carin', 2, '[{\"changed\": {\"fields\": [\"Superuser status\"]}}]', 16, 3),
(17, '2023-08-16 09:32:40.272963', '5', 'Carin', 2, '[]', 16, 3),
(18, '2023-08-20 09:26:04.342228', '8', 'Lukas', 1, '[{\"added\": {}}]', 16, 3),
(19, '2023-08-20 09:26:19.224792', '8', 'Lukas', 2, '[]', 16, 3),
(20, '2023-08-20 09:27:08.769083', '8', 'Lukas', 2, '[{\"changed\": {\"fields\": [\"Password\"]}}]', 16, 3),
(21, '2023-08-20 09:27:21.423942', '6', 'testuser', 2, '[{\"changed\": {\"fields\": [\"Password\"]}}]', 16, 3),
(22, '2023-08-20 09:27:31.160671', '6', 'testuser', 2, '[]', 16, 3),
(23, '2023-08-20 09:28:00.199126', '4', 'andrew', 2, '[]', 16, 3),
(24, '2023-08-21 09:30:14.625499', '9', 'pascal', 2, '[{\"changed\": {\"fields\": [\"Groups\", \"User type\", \"Points\"]}}]', 16, 9),
(25, '2023-08-21 09:31:05.592595', '10', 'AnnikaAnnika', 1, '[{\"added\": {}}]', 16, 9),
(26, '2023-08-21 09:32:07.869843', '11', 'Muller', 1, '[{\"added\": {}}]', 16, 9),
(27, '2023-08-21 09:34:03.994971', '10', 'Annika', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 16, 3),
(28, '2023-08-21 09:34:42.412035', '1', 'JOE', 2, '[{\"changed\": {\"fields\": [\"Password\"]}}]', 16, 3),
(29, '2023-08-21 09:37:54.356150', '3', 'wasim', 2, '[]', 16, 3),
(30, '2023-08-21 09:38:35.600463', '12', 'Isabela', 1, '[{\"added\": {}}]', 16, 3);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(6, 'authtoken', 'token'),
(7, 'authtoken', 'tokenproxy'),
(4, 'contenttypes', 'contenttype'),
(8, 'lab_environment', 'account5'),
(9, 'lab_environment', 'authenticationcode'),
(15, 'lab_environment', 'challenge'),
(16, 'lab_environment', 'customuser'),
(14, 'lab_environment', 'educationalcontent'),
(10, 'lab_environment', 'fakeuser'),
(11, 'lab_environment', 'labtopic'),
(12, 'lab_environment', 'loginpassword'),
(13, 'lab_environment', 'product'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-08-15 11:23:01.895517'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-08-15 11:23:02.014998'),
(3, 'auth', '0001_initial', '2023-08-15 11:23:02.529495'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-08-15 11:23:02.559248'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-08-15 11:23:02.569286'),
(6, 'auth', '0004_alter_user_username_opts', '2023-08-15 11:23:02.581101'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-08-15 11:23:02.595064'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-08-15 11:23:02.605040'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-08-15 11:23:02.618002'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-08-15 11:23:02.632966'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-08-15 11:23:02.647923'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-08-15 11:23:02.684824'),
(13, 'auth', '0011_update_proxy_permissions', '2023-08-15 11:23:02.700781'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-08-15 11:23:02.716739'),
(15, 'lab_environment', '0001_initial', '2023-08-15 11:23:03.611298'),
(16, 'admin', '0001_initial', '2023-08-15 11:23:03.819558'),
(17, 'admin', '0002_logentry_remove_auto_add', '2023-08-15 11:23:03.841307'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2023-08-15 11:23:03.857265'),
(19, 'authtoken', '0001_initial', '2023-08-15 11:23:03.991052'),
(20, 'authtoken', '0002_auto_20160226_1747', '2023-08-15 11:23:04.050579'),
(21, 'authtoken', '0003_tokenproxy', '2023-08-15 11:23:04.056563'),
(22, 'contenttypes', '0003_auto_20230815_1357', '2023-08-15 11:23:04.064648'),
(23, 'sessions', '0001_initial', '2023-08-15 11:23:04.150502'),
(24, 'lab_environment', '0002_alter_customuser_password', '2023-08-20 09:23:05.289956');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('r9dwfehbgb6534jycjwg7notins72c43', '.eJxVjMsOwiAQRf-FtSEzwFBw6d5vIMMjUjWQlHZl_Hdt0oVu7znnvkTgba1hG2UJcxZn4cXpd4ucHqXtIN-53bpMva3LHOWuyIMOee25PC-H-3dQedRvnbRFbx1hZIVRE6BDsEjkI3irQRnNxmRPTFCMgWkiJKcVKwLnPIv3B5BkNVY:1qY1oA:yKOoPwM1LXWIVvgjscr7crxPK6Uq8C-mDG97eZ2iAD0', '2023-09-04 10:06:50.747986');

-- --------------------------------------------------------

--
-- Table structure for table `lab_environment_account5`
--

CREATE TABLE `lab_environment_account5` (
  `id` bigint(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lab_environment_account5`
--

INSERT INTO `lab_environment_account5` (`id`, `username`, `password`) VALUES
(1, 'joo', 'admin123'),
(2, 'Carin', 'aa2233');

-- --------------------------------------------------------

--
-- Table structure for table `lab_environment_authenticationcode`
--

CREATE TABLE `lab_environment_authenticationcode` (
  `id` bigint(20) NOT NULL,
  `code` varchar(6) NOT NULL,
  `serial` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lab_environment_authenticationcode`
--

INSERT INTO `lab_environment_authenticationcode` (`id`, `code`, `serial`) VALUES
(1, '123456', '1'),
(2, '280590', '2');

-- --------------------------------------------------------

--
-- Table structure for table `lab_environment_challenge`
--

CREATE TABLE `lab_environment_challenge` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `solution` longtext NOT NULL,
  `lab_topic_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lab_environment_customuser`
--

CREATE TABLE `lab_environment_customuser` (
  `id` bigint(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `user_type` varchar(10) NOT NULL,
  `points` int(10) UNSIGNED NOT NULL CHECK (`points` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `lab_environment_customuser`
--

INSERT INTO `lab_environment_customuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `user_type`, `points`) VALUES
(1, 'pbkdf2_sha256$600000$jnODKYTx2mL3CbeDWcjIOf$L5kVSREHs84S/IkTEXzyzwFzaXYgZJ9mY7af6iidmlg=', '2023-08-15 14:14:28.000000', 1, 'JOE', 'joe', 'gerges', 'gerges@queensoft.net', 1, 1, '2023-08-15 11:24:22.000000', 'staff', 0),
(2, 'wasim', '2023-08-15 14:02:43.000000', 0, 'Michael12', 'Michael', 'Bill', 'MichaelBill@example.com', 0, 1, '2023-08-15 13:59:19.000000', 'student', 50),
(3, 'pbkdf2_sha256$600000$lCjk00nsygqlW1m6xtDff8$1HI6884hnx6kBE74eOI2YLkHiJr149KtxTgRWljHcfY=', '2023-08-21 09:33:49.000000', 1, 'wasim', '', '', 'wasim@queensoft.net', 1, 1, '2023-08-15 17:21:44.000000', 'staff', 30),
(4, 'pbkdf2_sha256$600000$lCjk00nsygqlW1m6xtDff8$1HI6884hnx6kBE74eOI2YLkHiJr149KtxTgRWljHcfY=', '2023-08-17 08:47:50.000000', 0, 'andrew', 'Andrew', 'Gerges', 'wasim.wasfy@gmail.com', 0, 1, '2023-08-16 06:48:15.000000', 'student', 25),
(5, 'wasim', '2023-08-15 14:02:43.000000', 1, 'Carin', '', '', '', 1, 1, '2023-08-16 08:58:35.000000', 'staff', 0),
(6, 'pbkdf2_sha256$600000$lCjk00nsygqlW1m6xtDff8$1HI6884hnx6kBE74eOI2YLkHiJr149KtxTgRWljHcfY=', NULL, 0, 'testuser', '', '', '', 0, 1, '2023-08-16 09:09:46.000000', 'student', 0),
(8, 'pbkdf2_sha256$600000$lCjk00nsygqlW1m6xtDff8$1HI6884hnx6kBE74eOI2YLkHiJr149KtxTgRWljHcfY=', '2023-08-20 09:28:46.469394', 0, 'Lukas', 'Lukas', 'Müller', 'example@webapp.com', 1, 1, '2023-08-20 09:24:14.000000', 'staff', 0),
(9, 'pbkdf2_sha256$600000$jnODKYTx2mL3CbeDWcjIOf$L5kVSREHs84S/IkTEXzyzwFzaXYgZJ9mY7af6iidmlg=', '2023-08-21 10:06:50.741516', 1, 'pascal', '', '', 'pascal.schoettle@mci.edu', 1, 1, '2023-08-21 09:21:50.000000', 'staff', 70),
(10, 'pbkdf2_sha256$600000$lCjk00nsygqlW1m6xtDff8$1HI6884hnx6kBE74eOI2YLkHiJr149KtxTgRWljHcfY=', '2023-08-21 09:30:21.000000', 0, 'Annika', '', '', 'annika@example.com', 1, 1, '2023-08-21 09:30:17.000000', 'staff', 50),
(11, 'pbkdf2_sha256$600000$lCjk00nsygqlW1m6xtDff8$1HI6884hnx6kBE74eOI2YLkHiJr149KtxTgRWljHcfY=', '2023-08-21 09:33:13.614288', 0, 'Muller', '', '', 'muller@example.com', 0, 1, '2023-08-21 09:31:08.000000', 'student', 30),
(12, 'pbkdf2_sha256$600000$lCjk00nsygqlW1m6xtDff8$1HI6884hnx6kBE74eOI2YLkHiJr149KtxTgRWljHcfY=', '2023-08-21 09:38:00.000000', 0, 'Isabela', '', '', 'Isabela@example.com', 0, 1, '2023-08-21 09:37:56.000000', 'student', 20);

-- --------------------------------------------------------

--
-- Table structure for table `lab_environment_customuser_groups`
--

CREATE TABLE `lab_environment_customuser_groups` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `lab_environment_customuser_groups`
--

INSERT INTO `lab_environment_customuser_groups` (`id`, `customuser_id`, `group_id`) VALUES
(1, 1, 1),
(2, 3, 1),
(3, 5, 1),
(4, 8, 1),
(5, 9, 1),
(6, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lab_environment_customuser_user_permissions`
--

CREATE TABLE `lab_environment_customuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `lab_environment_customuser_user_permissions`
--

INSERT INTO `lab_environment_customuser_user_permissions` (`id`, `customuser_id`, `permission_id`) VALUES
(1, 1, 2),
(2, 4, 53);

-- --------------------------------------------------------

--
-- Table structure for table `lab_environment_educationalcontent`
--

CREATE TABLE `lab_environment_educationalcontent` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `lab_topic_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lab_environment_fakeuser`
--

CREATE TABLE `lab_environment_fakeuser` (
  `id` bigint(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `job_title` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lab_environment_fakeuser`
--

INSERT INTO `lab_environment_fakeuser` (`id`, `username`, `job_title`) VALUES
(16, 'Joe Gerges', 'CEO'),
(20, 'Wasim Wasfy', 'COO'),
(21, 'Jessica Michael', 'DA'),
(23, 'Valia Bahgat', 'PH'),
(26, 'Andrew Gerges', 'DR');

-- --------------------------------------------------------

--
-- Table structure for table `lab_environment_labtopic`
--

CREATE TABLE `lab_environment_labtopic` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lab_environment_loginpassword`
--

CREATE TABLE `lab_environment_loginpassword` (
  `id` bigint(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lab_environment_loginpassword`
--

INSERT INTO `lab_environment_loginpassword` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123'),
(2, 'wasim', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `lab_environment_product`
--

CREATE TABLE `lab_environment_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `category` varchar(20) NOT NULL,
  `is_special` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lab_environment_product`
--

INSERT INTO `lab_environment_product` (`id`, `name`, `description`, `image`, `price`, `category`, `is_special`) VALUES
(1, 'Security Engineering — Second Edition', 'The e-book version is available now for $42 from Wiley and for $47 from Amazon; paper copies are now shipping from Wiley USA and UK', 'product_images/book2coverlarge_1.jpg', 42.00, 'cyber_security', 0),
(2, 'The Art of Invisibility', 'Written By: Kevin Mitnick\r\nRelease Date: Feb 4, 2017\r\nPages: 320\r\nPrice: $19.17', 'product_images/41qaqfEvgwL._SX331_BO1204203200__gDqwaXV.jpg', 19.17, 'threat_modeling', 0),
(3, 'Hacking: The Art of Exploitation', 'Written By: Jon Erickson\r\nRelease Date: Feb 4, 2008\r\nPages: 488\r\nPrice: $22 – 27', 'product_images/61VBaAS4IbL._SX383_BO1204203200__avHLjm6.jpg', 22.00, 'hacking', 0),
(4, 'Cult of the Dead Cow', 'Written By: Joseph Menn\r\nRelease Date: June 4, 2019\r\nPages: 272\r\nPrice: $20', 'product_images/41vACymv5JL._SX321_BO1204203200__bR3IeHD.jpg', 20.00, 'cyber_security', 0),
(5, 'Ghost In The Wires', 'Written By: Kevin Mitnick\r\nRelease Date: April 24, 2012\r\nPages: 448\r\nPrice: $11.49', 'product_images/51kt5CfVEkL._SX330_BO1204203200__bvXQlJn.jpg', 11.49, 'hacking', 0),
(6, 'Practical Malware Analysis', 'Written By: Michael Sikorski and Andrew Honig\r\nRelease Date: Feb 1, 2012\r\nPages: 800\r\nPrice: $39.99', 'product_images/51dAWYyitYL._SX384_BO1204203200__0h9JKEd.jpg', 40.00, 'hacking', 0),
(7, 'Threat Modeling', 'Written By: Adam Shostack\r\nRelease Date: Feb 17, 2014\r\nPages: 624\r\nPrice: $54.22', 'product_images/51VIynC2scL._SX397_BO1204203200__1jhybSu.jpg', 54.22, 'threat_modeling', 0),
(8, 'The Cyber Effect', 'Written By: Mary Aiken\r\nRelease Date: June 27, 2017\r\nPages: 400\r\nPrice: $14', 'product_images/51SxY0XvfCL._SX331_BO1204203200__Hu4uNh5.jpg', 14.00, 'cyber_security', 0),
(9, 'Social Engineering', 'Written By: Christopher Hadnagy\r\nRelease Date: July 31, 2018\r\nPages: 320', 'product_images/41I1LMPxzQL._SX331_BO1204203200__3bNFDka.jpg', 32.00, 'network', 0),
(10, 'The Secret to Cybersecurity', 'A Simple Plan to Protect Your Family and Business from Cybercrime\r\nBy Scott Augenbaum', 'product_images/the-secret-to-cybersecurity-9781948677080_lg_Ziwr2rz.jpg', 48.12, 'cyber_security', 0),
(11, 'Computer Programming And Cyber Security', 'This Book Includes Python Machine Learning, SQL, Linux, Hacking with Kali Linux, and Ethical Hacking. Coding and Cybersecurity Fundamentals\r\nBy Zach Codings', 'product_images/51aMKIphQ5L._SX331_BO1204203200_.jpg', 56.00, 'cyber_security', 0),
(12, 'Digital Forensics and Incident Response', 'Incident response tools and techniques for effective cyber threat response, 3rd Edition\r\nGerard Johansen\r\nDec 16, 2022', 'product_images/41AVBLU6cuL._SX404_BO1204203200_.jpg', 36.00, 'threat_modeling', 0),
(13, 'Hacking For Dummies', 'Hacking For Dummies \r\nKevin Beaver\r\nApr 8, 2022', 'product_images/61NDbb9l6L._SL500_.jpg', 70.00, 'hacking', 0),
(14, 'The Cybersecurity to English Dictionary', 'The Cybersecurity to English Dictionary: 5th Edition Paperback \r\nMarch 10, 2022\r\nBy Raef Meeuwisse', 'product_images/41I3OUqo2yL._SX311_BO1204203200_.jpg', 55.00, 'cyber_security', 0),
(15, 'RANSOMWARE & CYBERLAW', 'RANSOMWARE & CYBERLAWRansomware is one of the increasingly complex phenomena that one is beginning to see in cyberspace these days. Ransomware focuses on depriving entities of legitimate access to their data till such time they pay ransom for the sam\r\nDecember 9, 2021\r\nBy DR. PAVAN DUGGAL', 'product_images/51Oh6ZUyIL._SL500_.jpg', 23.00, 'cyber_security', 0),
(16, 'The Wires of War', 'The Wires of War\r\nTechnology and the Global Struggle for Power\r\nJacob Helberg\r\nOct 12, 2021', 'product_images/41noqOYqi7L._SL500__3HBT2bJ.jpg', 64.00, 'cyber_security', 0),
(17, 'Network Security and Cryptography', 'Network Security and Cryptography\r\nBy Sarhan M. Musa\r\nSep 15, 2022', 'product_images/410fgF6B--L._SL500__VpwCu46.jpg', 50.00, 'network', 0),
(18, 'Wireless and Mobile Device Security', 'Wireless and Mobile Device Security + Cloud Labs\r\nBy Jim Doherty\r\nAug 24, 2021', 'product_images/41niF6Kpg7L._SL500__46FukL2.jpg', 40.00, 'network', 1),
(19, 'Computer Networking Hacking', 'Ultimate Guide To Ethical Hacking, Wireless Network, Cybersecurity With Practical Penetration Test On Kali Linux And System Security Practices (Computer Networking Easy)\r\nBy Ramon Base \r\nJuly 26, 2019', 'product_images/51oLZjncML._SX331_BO1204203200_.jpg', 96.00, 'hacking', 1),
(20, 'The Complete Cyber Security Book', 'Network Security!: Network Security, WiFi Security, WiFi Hackers, Firewalls, Wireshark, Secure Networking. \r\nMarch 26, 2022\r\nBy Sobia Khan', 'product_images/41TNlyNLKKL._SX331_BO1204203200_.jpg', 100.00, 'network', 1),
(21, 'Threat Modeling 2', 'Threat Modeling: A Practical Guide for Development Teams 1st Edition\r\nBy Izar Tarandach\r\n\r\nThreat modeling is one of the most essential--and most misunderstood--parts of the development lifecycle. Whether you\'re a security practitioner or a member of a development team, this book will help you gain a better understanding of how you can apply core threat modeling concepts to your practice to protect your systems against threats', 'product_images/51GLA3-zUwL._SX379_BO1204203200_.jpg', 50.00, 'threat_modeling', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_lab_envir` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `lab_environment_account5`
--
ALTER TABLE `lab_environment_account5`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `lab_environment_authenticationcode`
--
ALTER TABLE `lab_environment_authenticationcode`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD UNIQUE KEY `serial` (`serial`);

--
-- Indexes for table `lab_environment_challenge`
--
ALTER TABLE `lab_environment_challenge`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lab_environment_chal_lab_topic_id_92e19ce6_fk_lab_envir` (`lab_topic_id`);

--
-- Indexes for table `lab_environment_customuser`
--
ALTER TABLE `lab_environment_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `lab_environment_customuser_groups`
--
ALTER TABLE `lab_environment_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lab_environment_customus_customuser_id_group_id_dfd1a101_uniq` (`customuser_id`,`group_id`),
  ADD KEY `lab_environment_cust_group_id_91272c3d_fk_auth_grou` (`group_id`);

--
-- Indexes for table `lab_environment_customuser_user_permissions`
--
ALTER TABLE `lab_environment_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lab_environment_customus_customuser_id_permission_257fa829_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `lab_environment_cust_permission_id_b1c2a6e0_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `lab_environment_educationalcontent`
--
ALTER TABLE `lab_environment_educationalcontent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lab_environment_educ_lab_topic_id_79191b6b_fk_lab_envir` (`lab_topic_id`);

--
-- Indexes for table `lab_environment_fakeuser`
--
ALTER TABLE `lab_environment_fakeuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab_environment_labtopic`
--
ALTER TABLE `lab_environment_labtopic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab_environment_loginpassword`
--
ALTER TABLE `lab_environment_loginpassword`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab_environment_product`
--
ALTER TABLE `lab_environment_product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `lab_environment_account5`
--
ALTER TABLE `lab_environment_account5`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lab_environment_authenticationcode`
--
ALTER TABLE `lab_environment_authenticationcode`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lab_environment_challenge`
--
ALTER TABLE `lab_environment_challenge`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lab_environment_customuser`
--
ALTER TABLE `lab_environment_customuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `lab_environment_customuser_groups`
--
ALTER TABLE `lab_environment_customuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lab_environment_customuser_user_permissions`
--
ALTER TABLE `lab_environment_customuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lab_environment_educationalcontent`
--
ALTER TABLE `lab_environment_educationalcontent`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lab_environment_fakeuser`
--
ALTER TABLE `lab_environment_fakeuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `lab_environment_labtopic`
--
ALTER TABLE `lab_environment_labtopic`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lab_environment_loginpassword`
--
ALTER TABLE `lab_environment_loginpassword`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lab_environment_product`
--
ALTER TABLE `lab_environment_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_lab_envir` FOREIGN KEY (`user_id`) REFERENCES `lab_environment_customuser` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_lab_envir` FOREIGN KEY (`user_id`) REFERENCES `lab_environment_customuser` (`id`);

--
-- Constraints for table `lab_environment_challenge`
--
ALTER TABLE `lab_environment_challenge`
  ADD CONSTRAINT `lab_environment_chal_lab_topic_id_92e19ce6_fk_lab_envir` FOREIGN KEY (`lab_topic_id`) REFERENCES `lab_environment_labtopic` (`id`);

--
-- Constraints for table `lab_environment_customuser_groups`
--
ALTER TABLE `lab_environment_customuser_groups`
  ADD CONSTRAINT `lab_environment_cust_customuser_id_fada1b81_fk_lab_envir` FOREIGN KEY (`customuser_id`) REFERENCES `lab_environment_customuser` (`id`),
  ADD CONSTRAINT `lab_environment_cust_group_id_91272c3d_fk_auth_grou` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `lab_environment_customuser_user_permissions`
--
ALTER TABLE `lab_environment_customuser_user_permissions`
  ADD CONSTRAINT `lab_environment_cust_customuser_id_adb42369_fk_lab_envir` FOREIGN KEY (`customuser_id`) REFERENCES `lab_environment_customuser` (`id`),
  ADD CONSTRAINT `lab_environment_cust_permission_id_b1c2a6e0_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `lab_environment_educationalcontent`
--
ALTER TABLE `lab_environment_educationalcontent`
  ADD CONSTRAINT `lab_environment_educ_lab_topic_id_79191b6b_fk_lab_envir` FOREIGN KEY (`lab_topic_id`) REFERENCES `lab_environment_labtopic` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
