-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2019 at 03:30 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pilkatos`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `class_id` int(11) NOT NULL,
  `cms_users_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`id`, `name`, `photo`, `class_id`, `cms_users_id`, `created_at`, `updated_at`) VALUES
(1, 'Tegar Miftaqurrohim', 'uploads/2019-09/220px-logo-swiksara.png', 2, 2, '2019-09-22 13:14:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cms_users_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `name`, `cms_users_id`, `created_at`, `updated_at`) VALUES
(1, 'XII TKJ', 2, '2019-09-21 09:49:26', NULL),
(2, 'XII RPL', 2, '2019-09-22 12:19:52', NULL),
(3, 'XI TKJ', 2, '2019-09-22 12:20:05', NULL),
(4, 'XI RPL I', 2, '2019-09-22 12:20:17', NULL),
(5, 'XI RPL II', 2, '2019-09-22 12:20:25', NULL),
(6, 'X TKJ', 2, '2019-09-22 12:20:34', NULL),
(7, 'X RPL', 2, '2019-09-22 12:20:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responses` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2019-09-22 05:14:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/module_generator/delete/13', 'Delete data Siswa at Module Generator', 1, '2019-09-22 05:18:47', NULL),
(2, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', 1, '2019-09-22 12:05:09', NULL),
(3, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/client/add-save', 'Add New Data SMK Wikrama 1 Jepara at Client', 1, '2019-09-22 12:19:31', NULL),
(4, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/class/add-save', 'Add New Data XII RPL at Kelas', 1, '2019-09-22 12:19:52', NULL),
(5, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/class/add-save', 'Add New Data XI TKJ at Kelas', 1, '2019-09-22 12:20:05', NULL),
(6, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/class/add-save', 'Add New Data XI RPL I at Kelas', 1, '2019-09-22 12:20:17', NULL),
(7, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/class/add-save', 'Add New Data XI RPL II at Kelas', 1, '2019-09-22 12:20:25', NULL),
(8, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/class/add-save', 'Add New Data X TKJ at Kelas', 1, '2019-09-22 12:20:34', NULL),
(9, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/class/add-save', 'Add New Data X RPL at Kelas', 1, '2019-09-22 12:20:41', NULL),
(10, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/student/add-save', 'Add New Data 11700599 at Siswa', 1, '2019-09-22 12:21:20', NULL),
(11, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/teachers/add-save', 'Add New Data A at Guru', 1, '2019-09-22 12:30:06', NULL),
(12, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'admin@crudbooster.com logout', 1, '2019-09-22 12:32:38', NULL),
(13, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', 1, '2019-09-22 12:32:47', NULL),
(14, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/student/add-save', 'Add New Data 11700573 at Siswa', 1, '2019-09-22 12:33:24', NULL),
(15, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/employee/add-save', 'Add New Data sofa at Karyawan', 1, '2019-09-22 12:39:35', NULL),
(16, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'admin@crudbooster.com logout', 1, '2019-09-22 12:40:27', NULL),
(17, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'admin@smkwikrama1jepara.sch.id login with IP Address ::1', 2, '2019-09-22 12:41:14', NULL),
(18, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/student/add-save', 'Add New Data 11700605 at Siswa', 2, '2019-09-22 12:42:29', NULL),
(19, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'admin@smkwikrama1jepara.sch.id logout', 2, '2019-09-22 12:47:34', NULL),
(20, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', 1, '2019-09-22 12:47:42', NULL),
(21, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/edit-save/8', 'Update data Data Pemilih at Menu Management', 1, '2019-09-22 12:48:16', NULL),
(22, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/candidates/add-save', 'Add New Data Tegar Miftaqurrohim at Kandidat', 1, '2019-09-22 13:14:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'Client', 'Route', 'AdminClientControllerGetIndex', NULL, 'fa fa-envelope-o', 0, 1, 0, 1, 1, '2019-09-22 05:15:55', NULL),
(2, 'Siswa', 'Route', 'AdminStudentControllerGetIndex', NULL, 'fa fa-glass', 8, 1, 0, 1, 1, '2019-09-22 05:19:04', NULL),
(3, 'Guru', 'Route', 'AdminTeachersControllerGetIndex', NULL, 'fa fa-user-plus', 8, 1, 0, 1, 2, '2019-09-22 05:19:45', NULL),
(4, 'Karyawan', 'Route', 'AdminEmployeeControllerGetIndex', NULL, 'fa fa-users', 8, 1, 0, 1, 3, '2019-09-22 05:20:41', NULL),
(5, 'Kelas', 'Route', 'AdminClassControllerGetIndex', NULL, 'fa fa-list-alt', 0, 1, 0, 1, 3, '2019-09-22 05:21:21', NULL),
(6, 'Kandidat', 'Route', 'AdminCandidatesControllerGetIndex', NULL, 'fa fa-glass', 0, 1, 0, 1, 4, '2019-09-22 05:22:11', NULL),
(7, 'Background Login', 'Route', 'AdminLoginBackgroundControllerGetIndex', NULL, 'fa fa-glass', 0, 1, 0, 1, 5, '2019-09-22 05:25:37', NULL),
(8, 'Data Pemilih', 'Route', 'AdminElectionDataControllerGetIndex', 'normal', 'fa fa-glass', 0, 1, 0, 1, 2, '2019-09-22 05:26:17', '2019-09-22 12:48:16'),
(9, 'Background Login', 'Route', 'AdminLoginBackgroundControllerGetIndex', 'normal', 'fa fa-glass', 0, 1, 0, 2, 1, '2019-09-22 12:18:37', NULL),
(10, 'Data Pemilihan', 'Route', 'AdminElectionDataControllerGetIndex', 'normal', 'fa fa-glass', 0, 1, 0, 2, 2, '2019-09-22 12:18:37', NULL),
(11, 'Guru', 'Route', 'AdminTeachersControllerGetIndex', 'normal', 'fa fa-user-plus', 0, 1, 0, 2, 3, '2019-09-22 12:18:37', NULL),
(12, 'Kandidat', 'Route', 'AdminCandidatesControllerGetIndex', 'normal', 'fa fa-glass', 0, 1, 0, 2, 4, '2019-09-22 12:18:37', NULL),
(13, 'Karyawan', 'Route', 'AdminEmployeeControllerGetIndex', 'normal', 'fa fa-users', 0, 1, 0, 2, 5, '2019-09-22 12:18:37', NULL),
(14, 'Kelas', 'Route', 'AdminClassControllerGetIndex', 'normal', 'fa fa-list-alt', 0, 1, 0, 2, 6, '2019-09-22 12:18:37', NULL),
(15, 'Siswa', 'Route', 'AdminStudentControllerGetIndex', 'normal', 'fa fa-glass', 0, 1, 0, 2, 7, '2019-09-22 12:18:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2019-09-22 05:14:58', NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2019-09-22 05:14:58', NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2019-09-22 05:14:58', NULL),
(4, 'Users', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2019-09-22 05:14:58', NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2019-09-22 05:14:58', NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2019-09-22 05:14:58', NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2019-09-22 05:14:58', NULL),
(8, 'Email Template', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2019-09-22 05:14:58', NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2019-09-22 05:14:58', NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2019-09-22 05:14:58', NULL),
(11, 'Logs', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2019-09-22 05:14:58', NULL),
(12, 'Client', 'fa fa-envelope-o', 'client', 'cms_users', 'AdminClientController', 0, 0, '2019-09-22 05:15:55', NULL),
(13, 'Siswa', 'fa fa-glass', 'student', 'users', 'AdminStudentController', 0, 0, '2019-09-22 05:19:04', NULL),
(14, 'Guru', 'fa fa-user-plus', 'teachers', 'users', 'AdminTeachersController', 0, 0, '2019-09-22 05:19:45', NULL),
(15, 'Karyawan', 'fa fa-users', 'employee', 'users', 'AdminEmployeeController', 0, 0, '2019-09-22 05:20:41', NULL),
(16, 'Kelas', 'fa fa-list-alt', 'class', 'class', 'AdminClassController', 0, 0, '2019-09-22 05:21:21', NULL),
(17, 'Kandidat', 'fa fa-glass', 'candidates', 'candidate', 'AdminCandidatesController', 0, 0, '2019-09-22 05:22:11', NULL),
(18, 'Background Login', 'fa fa-glass', 'login_background', 'login_background', 'AdminLoginBackgroundController', 0, 0, '2019-09-22 05:25:37', NULL),
(19, 'Data Pemilihan', 'fa fa-glass', 'election_data', 'election_data', 'AdminElectionDataController', 0, 0, '2019-09-22 05:26:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-red', '2019-09-22 05:14:58', NULL),
(2, 'School (Elite)', 0, 'skin-blue-light', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2019-09-22 05:14:58', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2019-09-22 05:14:58', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2019-09-22 05:14:58', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2019-09-22 05:14:58', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2019-09-22 05:14:58', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2019-09-22 05:14:58', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2019-09-22 05:14:58', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2019-09-22 05:14:58', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2019-09-22 05:14:58', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2019-09-22 05:14:58', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2019-09-22 05:14:58', NULL),
(12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(14, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(16, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(17, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(18, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(19, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(20, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(21, 1, 1, 1, 1, 1, 2, 18, NULL, NULL),
(22, 1, 1, 1, 1, 1, 2, 19, NULL, NULL),
(23, 1, 1, 1, 1, 1, 2, 14, NULL, NULL),
(24, 1, 1, 1, 1, 1, 2, 17, NULL, NULL),
(25, 1, 1, 1, 1, 1, 2, 15, NULL, NULL),
(26, 1, 1, 1, 1, 1, 2, 16, NULL, NULL),
(27, 1, 1, 1, 1, 1, 2, 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2019-09-22 05:14:58', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2019-09-22 05:14:58', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2019-09-22 05:14:58', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2019-09-22 05:14:58', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2019-09-22 05:14:58', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2019-09-22 05:14:58', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2019-09-22 05:14:58', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2019-09-22 05:14:58', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2019-09-22 05:14:58', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'Pilkatos', 'text', NULL, NULL, '2019-09-22 05:14:58', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2019-09-22 05:14:58', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', NULL, 'upload_image', NULL, NULL, '2019-09-22 05:14:58', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', NULL, 'upload_image', NULL, NULL, '2019-09-22 05:14:58', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2019-09-22 05:14:58', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2019-09-22 05:14:58', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2019-09-22 05:14:58', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`, `path`) VALUES
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$6aXWyEHv29MiLp.iaLbYZOMGtpygXn0m1eebcRD.qV1Yaq5Kjm/56', 1, '2019-09-22 05:14:58', NULL, 'Active', NULL),
(2, 'SMK Wikrama 1 Jepara', 'uploads/2019-09/220px-logo-swiksara.png', 'admin@smkwikrama1jepara.sch.id', '$2y$10$ZHh0p0ozOUrMvl/MJ1LGF.CS4DJZ7zeltajiq.xxjzaadRPVH7zL6', 2, '2019-09-22 12:19:31', NULL, 'Active', 'wikrama');

-- --------------------------------------------------------

--
-- Table structure for table `election_data`
--

CREATE TABLE `election_data` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `cms_users_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_background`
--

CREATE TABLE `login_background` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `cms_users_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_08_07_145904_add_table_cms_apicustom', 1),
(2, '2016_08_07_150834_add_table_cms_dashboard', 1),
(3, '2016_08_07_151210_add_table_cms_logs', 1),
(4, '2016_08_07_152014_add_table_cms_privileges', 1),
(5, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(6, '2016_08_07_152320_add_table_cms_settings', 1),
(7, '2016_08_07_152421_add_table_cms_users', 1),
(8, '2016_08_07_154624_add_table_cms_moduls', 1),
(9, '2016_08_17_225409_add_status_cms_users', 1),
(10, '2016_08_20_125418_add_table_cms_notifications', 1),
(11, '2016_09_04_033706_add_table_cms_email_queues', 1),
(12, '2016_09_16_035347_add_group_setting', 1),
(13, '2016_09_16_045425_add_label_setting', 1),
(14, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(15, '2016_10_01_141740_add_method_type_apicustom', 1),
(16, '2016_10_01_141846_add_parameters_apicustom', 1),
(17, '2016_10_01_141934_add_responses_apicustom', 1),
(18, '2016_10_01_144826_add_table_apikey', 1),
(19, '2016_11_14_141657_create_cms_menus', 1),
(20, '2016_11_15_132350_create_cms_email_templates', 1),
(21, '2016_11_15_190410_create_cms_statistics', 1),
(22, '2016_11_17_102740_create_cms_statistic_components', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` int(1) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `cms_users_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `password`, `type`, `class_id`, `cms_users_id`, `created_at`, `updated_at`) VALUES
(1, '11700599', 'Hiskia Anggi Puji Pratama', '$2y$10$BDP3o1V2ga3iNOD/bM4aYeih8yMFccn5sGHARnXny/VyBs2T7DAzq', 0, 2, 2, '2019-09-22 12:21:20', NULL),
(2, 'A', 'Sholikhin', '$2y$10$W7FB5vIrDkaZh1QO5tTU9uHckKbBmjc6jUt54sL1V1sojX3cMw2cy', 1, NULL, 2, '2019-09-22 12:30:06', NULL),
(3, '11700573', 'Aminuddin Shofi Ashari', '$2y$10$BhYf1bkTh6.rwXpZjIlTr.lSHB7loEMIacujiac5fKdb6voz00dgO', 0, 7, 2, '2019-09-22 12:33:24', NULL),
(4, 'sofa', 'Sofa', '$2y$10$.MJKDhNNw2uVzDE9nWqXFeDm82q72soMWaC6P6lErFx16Huw0SUVK', 2, NULL, 2, '2019-09-22 12:39:35', NULL),
(5, '11700605', 'Irvan Aldi Pratama', '$2y$10$VluAubGz1xEYJa8654MJKuFdZIWayqnhTOPRfyZxO4qR7AgFRuB62', 0, 2, 2, '2019-09-22 12:42:29', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
