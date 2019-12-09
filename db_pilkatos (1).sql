-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2019 at 02:50 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

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
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time_start` time NOT NULL,
  `time_end` time NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `cms_users_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `class_id` int(11) NOT NULL,
  `cms_users_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`id`, `name`, `photo`, `class_id`, `cms_users_id`, `created_at`, `updated_at`) VALUES
(1, 'Aprilina Ariyanti', 'uploads/2019-11/1.png', 6, 2, '2019-11-06 16:44:35', '2019-11-07 07:22:08'),
(2, 'Ahmad Muhtafi', 'uploads/2019-11/2.png', 6, 2, '2019-11-06 16:45:02', '2019-11-07 07:22:19'),
(3, 'Abdullah Ibnu Ali Annufas', 'uploads/2019-11/3.png', 3, 2, '2019-11-06 16:46:35', '2019-11-07 07:22:30'),
(4, 'Angelita Previana Yusita', 'uploads/2019-11/4.png', 3, 2, '2019-11-06 20:53:33', '2019-11-07 07:22:41'),
(5, 'M. Falakhul Alief Arrafi', 'uploads/2019-11/5.png', 4, 2, '2019-11-06 20:54:10', '2019-11-07 07:22:55');

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
(1, 'XII RPL', 2, '2019-10-24 14:49:26', NULL),
(2, 'XII TKJ', 2, '2019-11-06 09:57:44', NULL),
(3, 'XI RPL I', 2, '2019-11-06 13:23:39', NULL),
(4, 'XI RPL II', 2, '2019-11-06 13:23:52', NULL),
(5, 'XI TKJ', 2, '2019-11-06 13:24:06', NULL),
(6, 'X', 2, '2019-11-06 13:24:20', NULL);

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

--
-- Dumping data for table `cms_apicustom`
--

INSERT INTO `cms_apicustom` (`id`, `permalink`, `tabel`, `aksi`, `kolom`, `orderby`, `sub_query_1`, `sql_where`, `nama`, `keterangan`, `parameter`, `created_at`, `updated_at`, `method_type`, `parameters`, `responses`) VALUES
(1, 'login', 'users', 'list', NULL, NULL, NULL, NULL, 'Login', NULL, NULL, NULL, NULL, 'get', 'a:3:{i:0;a:5:{s:4:\"name\";s:8:\"username\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:8:\"password\";s:4:\"type\";s:8:\"password\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:2;a:5:{s:4:\"name\";s:12:\"cms_users_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}}', 'a:6:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:8:\"username\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:4:\"type\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:8:\"class_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:12:\"cms_users_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}');

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
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', 'Reset Password - Pilkatos.Tech', '!-- ONE COLUMN SECTION --&gt;\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"table-layout: fixed;\">\r\n	<tbody><tr>\r\n		<td bgcolor=\"#ffffff\" align=\"center\" style=\"padding: 70px 15px 70px 15px;\" class=\"section-padding\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"500\" class=\"responsive-table\">\r\n				<tbody><tr>\r\n					<td>\r\n						<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n							<tbody><tr>\r\n								<td>\r\n									<!-- HERO IMAGE -->\r\n									<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n										<tbody>\r\n											<tr>\r\n												<td class=\"padding-copy\">\r\n													<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n														<tbody><tr>\r\n															<td>\r\n																<a href=\"http://alistapart.com/article/can-email-be-responsive/\" target=\"_blank\"><img src=\"https://s3-us-west-2.amazonaws.com/s.cdpn.io/48935/responsive-email.jpg\" width=\"500\" height=\"200\" border=\"0\" alt=\"Can an email really be responsive?\" style=\"display: block; padding: 0; color: #666666; text-decoration: none; font-family: Helvetica, arial, sans-serif; font-size: 16px; width: 500px; height: 200px;\" class=\"img-max\"></a>\r\n															</td>\r\n														</tr>\r\n													</tbody></table>\r\n												</td>\r\n											</tr>\r\n										</tbody>\r\n									</table>\r\n								</td>\r\n							</tr>\r\n							<tr>\r\n								<td>\r\n									<!-- COPY -->\r\n									<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n										<tbody><tr>\r\n											<td align=\"center\" style=\"font-size: 25px; font-family: Helvetica, Arial, sans-serif; color: #333333; padding-top: 30px;\" class=\"padding-copy\">Hi! ^_^</td>\r\n										</tr>\r\n										<tr>\r\n											<td align=\"center\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" class=\"padding-copy\"><p>Someone with IP Address {{$_SERVER[\'REMOTE_ADDR\']}} at {{date(\'Y-m-d H:i:s\')}} has been requested password, the following is your new password : </p>\r\n												<p>Password : {{$password}}</p>\r\n												<p>\r\n													</p><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"responsive-table\">\r\n														<tbody><tr>\r\n															<td align=\"center\"><a href=\"https://app.pilkatos.tech/admin/login\" target=\"_blank\" style=\"font-size: 16px; font-family: Helvetica, Arial, sans-serif; font-weight: normal; color: #ffffff; text-decoration: none; background-color: #5D9CEC; border-top: 15px solid #5D9CEC; border-bottom: 15px solid #5D9CEC; border-left: 25px solid #5D9CEC; border-right: 25px solid #5D9CEC; border-radius: 3px; -webkit-border-radius: 3px; -moz-border-radius: 3px; display: inline-block;\" class=\"mobile-button\">Login →</a></td>\r\n														</tr>\r\n													</tbody></table>\r\n													<p>\r\n														Jika terjadi kendala, silahkan hubungi pusat bantuan kami di whatsapp <b>085712492969</b><br>\r\n														Terimakasih.\r\n													</p></td>\r\n												</tr>\r\n											</tbody></table>\r\n										</td>\r\n									</tr>\r\n								</tbody></table>\r\n							</td>\r\n						</tr>\r\n					</tbody></table>\r\n				</td>\r\n			</tr>\r\n		</tbody></table>', '[password]', 'Pilkatos.tech System', 'no-reply@pilkatos.tech', 'admin@pilkatos.tech', '2019-09-22 05:14:58', '2019-10-12 10:05:19'),
(4, 'Password Token', 'password_token', 'PILKATOS.TECH - Undangan Untuk Bergabung', '<!-- ONE COLUMN SECTION -->\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"table-layout: fixed;\">\r\n	<tbody><tr>\r\n		<td bgcolor=\"#ffffff\" align=\"center\" style=\"padding: 70px 15px 70px 15px;\" class=\"section-padding\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"500\" class=\"responsive-table\">\r\n				<tbody><tr>\r\n					<td>\r\n						<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n							<tbody><tr>\r\n								<td>\r\n									<!-- HERO IMAGE -->\r\n									<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n										<tbody>\r\n											<tr>\r\n												<td class=\"padding-copy\">\r\n													<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n														<tbody><tr>\r\n															<td>\r\n																<a href=\"http://alistapart.com/article/can-email-be-responsive/\" target=\"_blank\"><img src=\"https://s3-us-west-2.amazonaws.com/s.cdpn.io/48935/responsive-email.jpg\" width=\"500\" height=\"200\" border=\"0\" alt=\"Can an email really be responsive?\" style=\"display: block; padding: 0; color: #666666; text-decoration: none; font-family: Helvetica, arial, sans-serif; font-size: 16px; width: 500px; height: 200px;\" class=\"img-max\"></a>\r\n															</td>\r\n														</tr>\r\n													</tbody></table>\r\n												</td>\r\n											</tr>\r\n										</tbody>\r\n									</table>\r\n								</td>\r\n							</tr>\r\n							<tr>\r\n								<td>\r\n									<!-- COPY -->\r\n									<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n										<tbody><tr>\r\n											<td align=\"center\" style=\"font-size: 25px; font-family: Helvetica, Arial, sans-serif; color: #333333; padding-top: 30px;\" class=\"padding-copy\">Hai, [name]</td>\r\n										</tr>\r\n										<tr>\r\n											<td align=\"center\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" class=\"padding-copy\"><p>[school] telah megundang Anda untuk bergabung dengan Pilkatos.Tech!</p>\r\n												<p>Pilkatos.Tech adalah sistem pemungutan suara untuk Pemilihan Ketua OSIS yang memudahkan dan memanajemen suara yang masuk. Hanya dalam beberapa menit, Anda dapat menggunakan Pilkatos.tech</p>\r\n												<p align=\"left\">\r\n													Untuk menerima undangan ini, silhkan ikuti langkah - langkah dibawah ini:\r\n												</p>\r\n												<p align=\"left\">\r\n													<b>1. Setting password untuk masuk ke Pilkatos.tech dengan cara klik link berikut:</b><br>\r\n													</p><center>\r\n														<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"responsive-table\">\r\n															<tbody><tr>\r\n																<td align=\"center\"><a href=\"https://app.pilkatos.tech/password-token/[token]\" target=\"_blank\" style=\"font-size: 16px; font-family: Helvetica, Arial, sans-serif; font-weight: normal; color: #ffffff; text-decoration: none; background-color: #5D9CEC; border-top: 15px solid #5D9CEC; border-bottom: 15px solid #5D9CEC; border-left: 25px solid #5D9CEC; border-right: 25px solid #5D9CEC; border-radius: 3px; -webkit-border-radius: 3px; -moz-border-radius: 3px; display: inline-block;\" class=\"mobile-button\">Klik Disini →</a></td>\r\n															</tr>\r\n														</tbody></table>\r\n														<p> Atau Klik Url Dibawah</p>\r\n														<p>\r\n															<a href=\"https://app.pilkatos.tech/[token]/set-password\" target=\"_blank\">https://app.pilkatos.tech/[token]/set-password</a></p>\r\n													</center>\r\n												<p></p>\r\n												<p align=\"left\">\r\n													<b>2. Silahkan login di Website <a href=\"//app.pilkatos.tech/[path]/login\">Pilkatos.tech</a></b><br>\r\n													Username : [username]<br>\r\n													Password : Masukkan password sesuai dengan langkah nomor 1\r\n												</p>\r\n												<p>\r\n													Jika terjadi kendala, silahkan hubungi pusat bantuan kami di whatsapp <b>085712492969</b><br>\r\n													Terimakasih.\r\n												</p></td>\r\n											</tr>\r\n										</tbody></table>\r\n									</td>\r\n								</tr>\r\n							</tbody></table>\r\n						</td>\r\n					</tr>\r\n				</tbody></table>\r\n			</td>\r\n		</tr>\r\n	</tbody></table>', '<p>Pilkatos.Tech adalah sistem pemungutan suara untuk Pemilihan Ketua OSIS yang memudahkan dan memanajemen suara yang masuk. Hanya dalam beberapa menit, Anda dapat menggunakan Pilkatos.tech</p> <p> 1. Setting password untuk masuk ke Pilkatos.tech dengan c', 'Pilkatos.tech System', 'no-reply@pilkatos.tech', '', '2019-10-11 20:04:03', '2019-10-25 04:35:34'),
(5, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2019-10-19 15:54:08', NULL),
(6, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2019-11-06 18:01:24', NULL),
(7, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2019-11-07 00:04:43', NULL),
(8, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2019-11-07 00:10:03', NULL);

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
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'admin@pilkatos.tech login dengan IP Address ::1', 1, '2019-11-06 06:09:03', NULL),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'admin@pilkatos.tech keluar', 1, '2019-11-06 06:22:35', NULL),
(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'admin@smkwikrama1jepara.sch.id login dengan IP Address ::1', 2, '2019-11-06 06:22:55', NULL),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/class/add-save', 'Tambah data baru XI RPL I pada Kelas', 2, '2019-11-06 06:23:39', NULL),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/class/add-save', 'Tambah data baru XI RPL II pada Kelas', 2, '2019-11-06 06:23:53', NULL),
(6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/class/add-save', 'Tambah data baru XI TKJ pada Kelas', 2, '2019-11-06 06:24:06', NULL),
(7, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/class/add-save', 'Tambah data baru X RPL pada Kelas', 2, '2019-11-06 06:24:20', NULL),
(8, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/class/add-save', 'Tambah data baru X TKJ pada Kelas', 2, '2019-11-06 06:24:32', NULL),
(9, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/student/edit-save/2', 'Memperbaharui data 11700577 pada Siswa', 2, '2019-11-06 06:50:24', NULL),
(10, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'admin@smkwikrama1jepara.sch.id keluar', 2, '2019-11-06 07:59:43', NULL),
(11, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'admin@pilkatos.tech login dengan IP Address ::1', 1, '2019-11-06 09:26:56', NULL),
(12, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/class/delete/7', 'Menghapus data X TKJ pada Kelas', 1, '2019-11-06 09:27:46', NULL),
(13, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/employee/add-save', 'Tambah data baru sofa pada Karyawan', 1, '2019-11-06 09:33:15', NULL),
(14, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/employee/add-save', 'Tambah data baru sofa pada Karyawan', 1, '2019-11-06 09:33:42', NULL),
(15, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/employee/edit-save/203', 'Memperbaharui data jaelani pada Karyawan', 1, '2019-11-06 09:34:56', NULL),
(16, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/student/edit-save/111', 'Memperbaharui data 11700639 pada Siswa', 1, '2019-11-06 09:42:19', NULL),
(17, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/candidates/add-save', 'Tambah data baru Aprilina Ariyanti pada Kandidat', 1, '2019-11-06 09:44:36', NULL),
(18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/candidates/add-save', 'Tambah data baru Ahmad Muhtafi pada Kandidat', 1, '2019-11-06 09:45:03', NULL),
(19, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/candidates/add-save', 'Tambah data baru Abdullah Ibnu Ali Annufas pada Kandidat', 1, '2019-11-06 09:46:36', NULL),
(20, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/employee/add-save', 'Tambah data baru said pada Karyawan', 1, '2019-11-06 13:25:12', NULL),
(21, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'admin@pilkatos.tech keluar', 1, '2019-11-06 13:25:23', NULL),
(22, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'admin@smkwikrama1jepara.sch.id login dengan IP Address ::1', 2, '2019-11-06 13:25:37', NULL),
(23, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/employee/add-save', 'Tambah data baru jannah pada Karyawan', 2, '2019-11-06 13:26:36', NULL),
(24, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/employee/add-save', 'Tambah data baru zia pada Karyawan', 2, '2019-11-06 13:27:17', NULL),
(25, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/employee/add-save', 'Tambah data baru wanto pada Karyawan', 2, '2019-11-06 13:27:42', NULL),
(26, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/employee/add-save', 'Tambah data baru jono pada Karyawan', 2, '2019-11-06 13:27:54', NULL),
(27, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/employee/add-save', 'Tambah data baru rat pada Karyawan', 2, '2019-11-06 13:28:06', NULL),
(28, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/candidates/add-save', 'Tambah data baru Angelita Previana Yusita pada Kandidat', 2, '2019-11-06 13:53:34', NULL),
(29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/candidates/add-save', 'Tambah data baru M. Falakhul Alief Arrafi pada Kandidat', 2, '2019-11-06 13:54:10', NULL),
(30, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'admin@smkwikrama1jepara.sch.id keluar', 2, '2019-11-06 13:55:00', NULL),
(31, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'admin@smkwikrama1jepara.sch.id login dengan IP Address ::1', 2, '2019-11-06 14:01:06', NULL),
(32, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'admin@smkwikrama1jepara.sch.id keluar', 2, '2019-11-06 14:02:20', NULL),
(33, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'admin@pilkatos.tech login dengan IP Address ::1', 1, '2019-11-06 14:02:39', NULL),
(34, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/delete/52', 'Menghapus data Laporan pada Menu Management', 1, '2019-11-06 14:06:15', NULL),
(35, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/delete/53', 'Menghapus data Pengaturan pada Menu Management', 1, '2019-11-06 14:06:24', NULL),
(36, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/delete/54', 'Menghapus data Testimoni pada Menu Management', 1, '2019-11-06 14:06:31', NULL),
(37, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/delete/32', 'Menghapus data Laporan pada Menu Management', 1, '2019-11-06 14:06:53', NULL),
(38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'admin@pilkatos.tech keluar', 1, '2019-11-06 14:12:33', NULL),
(39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'admin@smkwikrama1jepara.sch.id login dengan IP Address ::1', 2, '2019-11-06 14:13:55', NULL),
(40, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'admin@smkwikrama1jepara.sch.id keluar', 2, '2019-11-06 14:46:12', NULL),
(41, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'admin@pilkatos.tech login dengan IP Address ::1', 1, '2019-11-06 14:46:26', NULL),
(42, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/users/edit-save/1', 'Memperbaharui data Hiskia Anggi pada Users', 1, '2019-11-06 14:48:09', NULL),
(43, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/client/edit-save/2', 'Memperbaharui data SMK Wikrama 1 Jepara pada Client', 1, '2019-11-06 14:48:41', NULL),
(44, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'admin@pilkatos.tech keluar', 1, '2019-11-06 14:55:59', NULL),
(45, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'admin@pilkatos.tech login dengan IP Address ::1', 1, '2019-11-06 18:00:20', NULL),
(46, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost/pilkatos/public/admin/users/edit-save/1', 'Memperbaharui data Administrator pada Users', 1, '2019-11-06 18:04:04', NULL),
(47, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'admin@pilkatos.tech keluar', 1, '2019-11-06 18:04:21', NULL),
(48, '178.128.217.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'https://main.pilkatos.tech/public/admin/login', 'admin@pilkatos.tech login dengan IP Address 178.128.217.244', 1, '2019-11-07 00:16:10', NULL),
(49, '178.128.217.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'https://main.pilkatos.tech/public/admin/logout', 'admin@pilkatos.tech keluar', 1, '2019-11-07 00:16:42', NULL),
(50, '178.128.217.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'https://main.pilkatos.tech/public/admin/login', 'admin@smkwikrama1jepara.sch.id login dengan IP Address 178.128.217.244', 2, '2019-11-07 00:16:58', NULL),
(51, '178.128.217.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'https://main.pilkatos.tech/public/admin/login', 'admin@smkwikrama1jepara.sch.id login dengan IP Address 178.128.217.244', 2, '2019-11-07 00:18:36', NULL),
(52, '178.128.217.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'https://main.pilkatos.tech/public/admin/candidates/delete-image', 'Menghapus gambar Aprilina Ariyanti pada Kandidat', 2, '2019-11-07 00:21:57', NULL),
(53, '178.128.217.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'https://main.pilkatos.tech/public/admin/candidates/edit-save/1', 'Memperbaharui data Aprilina Ariyanti pada Kandidat', 2, '2019-11-07 00:22:08', NULL),
(54, '178.128.217.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'https://main.pilkatos.tech/public/admin/candidates/delete-image', 'Menghapus gambar Ahmad Muhtafi pada Kandidat', 2, '2019-11-07 00:22:13', NULL),
(55, '178.128.217.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'https://main.pilkatos.tech/public/admin/candidates/edit-save/2', 'Memperbaharui data Ahmad Muhtafi pada Kandidat', 2, '2019-11-07 00:22:19', NULL),
(56, '178.128.217.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'https://main.pilkatos.tech/public/admin/candidates/delete-image', 'Menghapus gambar Abdullah Ibnu Ali Annufas pada Kandidat', 2, '2019-11-07 00:22:24', NULL),
(57, '178.128.217.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'https://main.pilkatos.tech/public/admin/candidates/edit-save/3', 'Memperbaharui data Abdullah Ibnu Ali Annufas pada Kandidat', 2, '2019-11-07 00:22:30', NULL),
(58, '178.128.217.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'https://main.pilkatos.tech/public/admin/candidates/delete-image', 'Menghapus gambar Angelita Previana Yusita pada Kandidat', 2, '2019-11-07 00:22:36', NULL),
(59, '178.128.217.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'https://main.pilkatos.tech/public/admin/candidates/edit-save/4', 'Memperbaharui data Angelita Previana Yusita pada Kandidat', 2, '2019-11-07 00:22:41', NULL),
(60, '178.128.217.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'https://main.pilkatos.tech/public/admin/candidates/delete-image', 'Menghapus gambar M. Falakhul Alief Arrafi pada Kandidat', 2, '2019-11-07 00:22:50', NULL),
(61, '178.128.217.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'https://main.pilkatos.tech/public/admin/candidates/edit-save/5', 'Memperbaharui data M. Falakhul Alief Arrafi pada Kandidat', 2, '2019-11-07 00:22:55', NULL),
(62, '178.128.217.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'https://main.pilkatos.tech/public/admin/login', 'admin@smkwikrama1jepara.sch.id login dengan IP Address 178.128.217.244', 2, '2019-11-07 00:23:44', NULL),
(63, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost/public/admin/login', 'admin@smkwikrama1jepara.sch.id login dengan IP Address ::1', 2, '2019-11-07 00:49:38', NULL),
(64, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'https://main.pilkatos.tech/public/admin/login', 'admin@pilkatos.tech login dengan IP Address 36.73.34.8', 1, '2019-11-07 01:00:12', NULL),
(65, '36.73.34.8', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://main.pilkatos.tech/public/admin/login', 'admin@pilkatos.tech login dengan IP Address 36.73.34.8', 1, '2019-11-07 01:09:31', NULL),
(66, '36.73.34.8', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://main.pilkatos.tech/public/admin/logout', ' keluar', NULL, '2019-11-07 01:11:48', NULL),
(67, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost/public/admin/login', 'admin@pilkatos.tech login dengan IP Address ::1', 1, '2019-11-07 01:26:02', NULL),
(68, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost/public/admin/student/edit-save/80', 'Memperbaharui data 11700577 pada Siswa', 2, '2019-11-07 01:28:42', NULL),
(69, '178.128.217.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://main.pilkatos.tech/public/admin/login', 'admin@pilkatos.tech login dengan IP Address 178.128.217.244', 1, '2019-11-07 02:08:46', NULL),
(70, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'https://main.pilkatos.tech/public/admin/teachers/add-save', 'Tambah data baru a1 pada Guru', 1, '2019-11-07 02:14:37', NULL),
(71, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'https://main.pilkatos.tech/public/admin/teachers/add-save', 'Tambah data baru a1 pada Guru', 1, '2019-11-07 02:14:37', NULL),
(72, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'https://main.pilkatos.tech/public/admin/teachers/delete/235', 'Menghapus data a1 pada Guru', 1, '2019-11-07 02:14:53', NULL),
(73, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://main.pilkatos.tech/public/admin/login', 'admin@pilkatos.tech login dengan IP Address 36.73.34.8', 1, '2019-11-07 02:16:02', NULL),
(74, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://main.pilkatos.tech/public/admin/student/edit-save/117', 'Memperbaharui data 11700591 pada Siswa', 1, '2019-11-07 02:26:39', NULL),
(75, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'https://main.pilkatos.tech/public/admin/login', 'admin@pilkatos.tech login dengan IP Address 36.73.34.8', 1, '2019-11-07 02:28:11', NULL),
(76, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://main.pilkatos.tech/public/admin/student/edit-save/111', 'Memperbaharui data 11700639 pada Siswa', 1, '2019-11-07 02:37:18', NULL),
(77, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'https://main.pilkatos.tech/public/admin/teachers/edit-save/221', 'Memperbaharui data K pada Guru', 1, '2019-11-07 02:46:06', NULL),
(78, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'https://main.pilkatos.tech/public/admin/teachers/edit-save/221', 'Memperbaharui data K pada Guru', 1, '2019-11-07 02:46:09', NULL),
(79, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://main.pilkatos.tech/public/admin/login', 'admin@pilkatos.tech login dengan IP Address 36.73.34.8', 1, '2019-11-07 02:50:29', NULL),
(80, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://main.pilkatos.tech/public/admin/student/edit-save/67', 'Memperbaharui data 11800689 pada Siswa', 1, '2019-11-07 02:55:56', NULL),
(81, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'https://main.pilkatos.tech/public/admin/student/edit-save/24', 'Memperbaharui data 11800694 pada Siswa', 1, '2019-11-07 03:01:29', NULL),
(82, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'https://main.pilkatos.tech/public/admin/student/edit-save/18', 'Memperbaharui data 11800674 pada Siswa', 1, '2019-11-07 03:01:58', NULL),
(83, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'https://main.pilkatos.tech/public/admin/student/edit-save/24', 'Memperbaharui data 11800694 pada Siswa', 1, '2019-11-07 03:02:33', NULL),
(84, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'https://main.pilkatos.tech/public/admin/student/edit-save/24', 'Memperbaharui data 11800694 pada Siswa', 1, '2019-11-07 03:03:15', NULL),
(85, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://main.pilkatos.tech/public/admin/student/edit-save/20', 'Memperbaharui data 11800680 pada Siswa', 1, '2019-11-07 03:03:39', NULL),
(86, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://main.pilkatos.tech/public/admin/student/edit-save/20', 'Memperbaharui data 11800680 pada Siswa', 1, '2019-11-07 03:04:37', NULL),
(87, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost/public/admin/logout', 'admin@smkwikrama1jepara.sch.id keluar', 2, '2019-11-07 03:05:42', NULL),
(88, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'https://main.pilkatos.tech/public/admin/student/edit-save/19', 'Memperbaharui data 11800679 pada Siswa', 1, '2019-11-07 03:05:50', NULL),
(89, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://main.pilkatos.tech/public/admin/student/edit-save/14', 'Memperbaharui data 11800661 pada Siswa', 1, '2019-11-07 03:06:17', NULL),
(90, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://main.pilkatos.tech/public/admin/student/edit-save/28', 'Memperbaharui data 11800711 pada Siswa', 1, '2019-11-07 03:07:21', NULL),
(91, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'https://main.pilkatos.tech/public/admin/student/edit-save/24', 'Memperbaharui data 11800694 pada Siswa', 1, '2019-11-07 03:08:37', NULL),
(92, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost/public/admin/login', 'admin@pilkatos.tech login dengan IP Address ::1', 1, '2019-11-07 03:09:23', NULL),
(93, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://main.pilkatos.tech/public/admin/student/edit-save/22', 'Memperbaharui data 11800687 pada Siswa', 1, '2019-11-07 03:10:17', NULL),
(94, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://main.pilkatos.tech/public/admin/student/edit-save/14', 'Memperbaharui data 11800661 pada Siswa', 1, '2019-11-07 03:11:09', NULL),
(95, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://main.pilkatos.tech/public/admin/student/edit-save/20', 'Memperbaharui data 11800680 pada Siswa', 1, '2019-11-07 03:15:33', NULL),
(96, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost/public/admin/logout', 'admin@pilkatos.tech keluar', 1, '2019-11-07 03:28:20', NULL),
(97, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost/public/admin/login', 'admin@pilkatos.tech login dengan IP Address ::1', 1, '2019-11-07 03:28:57', NULL),
(98, '36.73.34.8', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://main.pilkatos.tech/public/admin/login', 'admin@pilkatos.tech login dengan IP Address 36.73.34.8', 1, '2019-11-07 03:30:35', NULL),
(99, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost/public/admin/menu_management/edit-save/37', 'Memperbaharui data Statistic pada Menu Management', 1, '2019-11-07 03:32:01', NULL),
(100, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost/public/admin/menu_management/edit-save/22', 'Memperbaharui data Keuangan pada Menu Management', 1, '2019-11-07 03:32:14', NULL),
(101, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost/public/admin/menu_management/edit-save/1', 'Memperbaharui data Daftar Sekolah pada Menu Management', 1, '2019-11-07 03:32:27', NULL),
(102, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://main.pilkatos.tech/public/admin/login', 'admin@pilkatos.tech login dengan IP Address 36.73.34.8', 1, '2019-11-07 04:00:49', NULL),
(103, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://main.pilkatos.tech/public/admin/student/edit-save/155', 'Memperbaharui data 11900729 pada Siswa', 1, '2019-11-07 04:02:51', NULL),
(104, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://main.pilkatos.tech/public/admin/student/edit-save/173', 'Memperbaharui data 11900747 pada Siswa', 1, '2019-11-07 04:04:30', NULL),
(105, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'https://main.pilkatos.tech/public/admin/login', 'admin@pilkatos.tech login dengan IP Address 36.73.34.8', 1, '2019-11-07 04:21:24', NULL),
(106, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'https://main.pilkatos.tech/public/admin/student/add-save', 'Tambah data baru 11800711 pada Siswa', 1, '2019-11-07 04:22:58', NULL),
(107, '36.73.34.8', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://main.pilkatos.tech/public/admin/login', 'admin@pilkatos.tech login dengan IP Address 36.73.34.8', 1, '2019-11-07 04:28:18', NULL),
(108, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'https://main.pilkatos.tech/public/admin/student/edit-save/33', 'Memperbaharui data 11800656 pada Siswa', 1, '2019-11-07 04:28:25', NULL),
(109, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'https://main.pilkatos.tech/public/admin/login', 'admin@pilkatos.tech login dengan IP Address 36.73.34.8', 1, '2019-11-07 04:32:31', NULL),
(110, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'https://main.pilkatos.tech/public/admin/student/delete/131', 'Menghapus data 11700621 pada Siswa', 1, '2019-11-07 04:33:14', NULL),
(111, '36.73.34.8', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://main.pilkatos.tech/public/admin/login', 'admin@pilkatos.tech login dengan IP Address 36.73.34.8', 1, '2019-11-07 04:34:55', NULL),
(112, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://main.pilkatos.tech/public/admin/student/edit-save/151', 'Memperbaharui data 11900725 pada Siswa', 1, '2019-11-07 04:36:35', NULL),
(113, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://main.pilkatos.tech/public/admin/student/edit-save/194', 'Memperbaharui data 11900768 pada Siswa', 1, '2019-11-07 04:37:20', NULL),
(114, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'https://main.pilkatos.tech/public/admin/student/edit-save/195', 'Memperbaharui data 11900769 pada Siswa', 1, '2019-11-07 04:37:47', NULL),
(115, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://main.pilkatos.tech/public/admin/student/edit-save/161', 'Memperbaharui data 11900735 pada Siswa', 1, '2019-11-07 04:38:28', NULL),
(116, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://main.pilkatos.tech/public/admin/student/add-save', 'Tambah data baru 11900732 pada Siswa', 1, '2019-11-07 04:40:02', NULL),
(117, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://main.pilkatos.tech/public/admin/student/add-save', 'Tambah data baru 11900716 pada Siswa', 1, '2019-11-07 04:41:13', NULL),
(118, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://main.pilkatos.tech/public/admin/student/delete/239', 'Menghapus data 11900716 pada Siswa', 1, '2019-11-07 04:41:34', NULL),
(119, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://main.pilkatos.tech/public/admin/student/edit-save/142', 'Memperbaharui data 11900716 pada Siswa', 1, '2019-11-07 04:41:51', NULL),
(120, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'https://main.pilkatos.tech/public/admin/student/edit-save/190', 'Memperbaharui data 11900764 pada Siswa', 1, '2019-11-07 04:41:51', NULL),
(121, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'https://main.pilkatos.tech/public/admin/logout', 'admin@pilkatos.tech keluar', 1, '2019-11-07 04:45:14', NULL),
(122, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'https://main.pilkatos.tech/public/admin/login', 'admin@smkwikrama1jepara.sch.id login dengan IP Address 36.73.34.8', 2, '2019-11-07 04:45:42', NULL),
(123, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://main.pilkatos.tech/public/admin/student/delete/17', 'Menghapus data 11800670 pada Siswa', 1, '2019-11-07 04:46:21', NULL),
(124, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://main.pilkatos.tech/public/admin/student/delete/21', 'Menghapus data 11800682 pada Siswa', 1, '2019-11-07 04:47:16', NULL),
(125, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://main.pilkatos.tech/public/admin/student/delete/63', 'Menghapus data 11800672 pada Siswa', 1, '2019-11-07 04:49:04', NULL),
(126, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://main.pilkatos.tech/public/admin/student/edit-save/80', 'Memperbaharui data 11700577 pada Siswa', 1, '2019-11-07 04:50:32', NULL),
(127, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://main.pilkatos.tech/public/admin/logout', 'admin@pilkatos.tech keluar', 1, '2019-11-07 04:52:23', NULL),
(128, '36.73.34.8', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://main.pilkatos.tech/public/admin/login', 'admin@pilkatos.tech login dengan IP Address 36.73.34.8', 1, '2019-11-07 04:52:52', NULL),
(129, '36.73.34.8', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://main.pilkatos.tech/public/admin/logout', 'admin@pilkatos.tech keluar', 1, '2019-11-07 04:55:52', NULL),
(130, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://main.pilkatos.tech/public/admin/login', 'admin@pilkatos.tech login dengan IP Address 36.73.34.8', 1, '2019-11-07 05:13:21', NULL),
(131, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'https://main.pilkatos.tech/public/admin/student/edit-save/156', 'Memperbaharui data 11900730 pada Siswa', 2, '2019-11-07 05:36:31', NULL),
(132, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'https://main.pilkatos.tech/public/admin/student/edit-save/200', 'Memperbaharui data 11900774 pada Siswa', 2, '2019-11-07 05:37:27', NULL),
(133, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'https://main.pilkatos.tech/public/admin/student/edit-save/202', 'Memperbaharui data 11900776 pada Siswa', 2, '2019-11-07 05:41:55', NULL),
(134, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'https://main.pilkatos.tech/public/admin/student/edit-save/160', 'Memperbaharui data 11900734 pada Siswa', 2, '2019-11-07 05:42:42', NULL),
(135, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'https://main.pilkatos.tech/public/admin/student/edit-save/185', 'Memperbaharui data 11900759 pada Siswa', 2, '2019-11-07 05:43:42', NULL),
(136, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'https://main.pilkatos.tech/public/admin/student/edit-save/168', 'Memperbaharui data 11900742 pada Siswa', 2, '2019-11-07 05:45:03', NULL),
(137, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://main.pilkatos.tech/public/admin/student/delete/238', 'Menghapus data 11900732 pada Siswa', 1, '2019-11-07 05:56:37', NULL),
(138, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://main.pilkatos.tech/public/admin/student/delete/196', 'Menghapus data 11900770 pada Siswa', 1, '2019-11-07 06:06:55', NULL),
(139, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'https://main.pilkatos.tech/public/admin/student/edit-save/64', 'Memperbaharui data 11800678 pada Siswa', 2, '2019-11-07 06:11:57', NULL),
(140, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost/public/admin/logout', 'admin@pilkatos.tech keluar', 1, '2019-11-07 06:24:00', NULL),
(141, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost/public/admin/login', 'admin@smkwikrama1jepara.sch.id login dengan IP Address ::1', 2, '2019-11-07 06:24:59', NULL),
(142, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost/public/admin/logout', 'admin@smkwikrama1jepara.sch.id keluar', 2, '2019-11-07 06:45:36', NULL),
(143, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost/public/admin/login', 'admin@smkwikrama1jepara.sch.id login dengan IP Address ::1', 2, '2019-11-07 06:46:04', NULL),
(144, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost/public/admin/logout', 'admin@smkwikrama1jepara.sch.id keluar', 2, '2019-11-07 06:46:12', NULL),
(145, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost/public/admin/login', 'admin@pilkatos.tech login dengan IP Address ::1', 1, '2019-11-07 06:46:42', NULL),
(146, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://main.pilkatos.tech/public/admin/logout', 'admin@pilkatos.tech keluar', 1, '2019-11-07 07:04:03', NULL),
(147, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://main.pilkatos.tech/public/admin/login', 'admin@smkwikrama1jepara.sch.id login dengan IP Address 36.73.34.8', 2, '2019-11-07 07:04:52', NULL),
(148, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost/public/admin/logout', 'admin@pilkatos.tech keluar', 1, '2019-11-07 07:54:24', NULL),
(149, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost/public/admin/login', 'admin@smkwikrama1jepara.sch.id login dengan IP Address ::1', 2, '2019-11-07 07:54:43', NULL),
(150, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://main.pilkatos.tech/public/admin/login', 'admin@pilkatos.tech login dengan IP Address 36.73.34.8', 1, '2019-11-07 08:06:00', NULL),
(151, '36.73.34.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://main.pilkatos.tech/public/admin/logout', 'admin@pilkatos.tech keluar', 1, '2019-11-07 08:06:36', NULL),
(152, '115.178.237.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://main.pilkatos.tech/public/admin/login', 'admin@pilkatos.tech login dengan IP Address 115.178.237.100', 1, '2019-11-07 10:32:08', NULL),
(153, '115.178.237.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://main.pilkatos.tech/public/admin/logout', 'admin@pilkatos.tech keluar', 1, '2019-11-07 10:40:56', NULL);

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
(1, 'Daftar Sekolah', 'Route', 'AdminClientControllerGetIndex', 'light-blue', 'fa fa-bar-chart', 0, 1, 0, 1, 4, '2019-09-22 05:15:55', '2019-11-07 03:32:27'),
(2, 'Siswa', 'Route', 'AdminStudentControllerGetIndex', 'normal', 'fa fa-user', 8, 1, 0, 1, 1, '2019-09-22 05:19:04', '2019-10-09 06:34:45'),
(3, 'Guru', 'Route', 'AdminTeachersControllerGetIndex', NULL, 'fa fa-user-plus', 8, 1, 0, 1, 2, '2019-09-22 05:19:45', NULL),
(4, 'Karyawan', 'Route', 'AdminEmployeeControllerGetIndex', NULL, 'fa fa-users', 8, 1, 0, 1, 3, '2019-09-22 05:20:41', NULL),
(5, 'Kelas', 'Route', 'AdminClassControllerGetIndex', 'normal', 'fa fa-css3', 0, 1, 0, 1, 6, '2019-09-22 05:21:21', '2019-10-09 06:35:38'),
(6, 'Kandidat', 'Route', 'AdminCandidatesControllerGetIndex', 'normal', 'fa fa-user-secret', 0, 1, 0, 1, 7, '2019-09-22 05:22:11', '2019-10-09 06:35:59'),
(8, 'Data Pemilih', 'Route', 'AdminElectionDataControllerGetIndex', 'normal', 'fa fa-list-alt', 0, 1, 0, 1, 5, '2019-09-22 05:26:17', '2019-10-09 06:34:25'),
(10, 'Data Pemilih', 'URL', 'javascript:void(0)', 'normal', 'fa fa-home', 0, 1, 0, 2, 4, '2019-09-22 12:18:37', '2019-10-09 07:08:43'),
(11, 'Guru', 'Route', 'AdminTeachersControllerGetIndex', 'normal', 'fa fa-user-plus', 10, 1, 0, 2, 2, '2019-09-22 12:18:37', NULL),
(12, 'Kandidat', 'Route', 'AdminCandidatesControllerGetIndex', 'normal', 'fa fa-user-plus', 0, 1, 0, 2, 6, '2019-09-22 12:18:37', '2019-10-09 07:09:34'),
(13, 'Karyawan', 'Route', 'AdminEmployeeControllerGetIndex', 'normal', 'fa fa-users', 10, 1, 0, 2, 3, '2019-09-22 12:18:37', NULL),
(14, 'Kelas', 'Route', 'AdminClassControllerGetIndex', 'normal', 'fa fa-css3', 0, 1, 0, 2, 5, '2019-09-22 12:18:37', '2019-10-09 07:09:16'),
(15, 'Siswa', 'Route', 'AdminStudentControllerGetIndex', 'normal', 'fa fa-user', 10, 1, 0, 2, 1, '2019-09-22 12:18:37', '2019-10-09 07:08:59'),
(16, 'Pengaturan', 'Route', 'AdminPengaturanControllerGetIndex', 'normal', 'fa fa-gears', 0, 0, 0, 1, 7, '2019-09-22 13:39:13', '2019-10-09 07:10:22'),
(17, 'Dashboard', 'Module', 'dashboard', 'normal', 'fa fa-envelope-o', 0, 1, 1, 1, 1, '2019-09-24 00:49:20', NULL),
(20, 'Dashboard', 'Route', 'AdminDashboardControllerGetIndex', 'normal', 'fa fa-glass', 0, 1, 1, 2, 1, '2019-09-24 01:58:21', '2019-09-24 01:59:34'),
(21, 'Pengaturan', 'Module', 'pengaturan', 'normal', 'fa fa-gears', 0, 1, 0, 2, 8, '2019-09-24 02:34:47', '2019-10-10 01:52:28'),
(22, 'Keuangan', 'Route', 'AdminFinanceControllerGetIndex', 'green', 'fa fa-bar-chart', 0, 1, 0, 1, 9, '2019-09-24 02:36:21', '2019-11-07 03:32:14'),
(23, 'Golput', 'Route', 'AdminGolputControllerGetIndex', 'normal', 'fa fa-angellist', 0, 1, 0, 1, 8, '2019-09-24 07:31:18', '2019-10-09 06:36:15'),
(25, 'Golput', 'Route', 'AdminGolputControllerGetIndex', 'red', 'fa fa-angellist', 0, 1, 0, 2, 7, '2019-10-09 07:11:20', '2019-10-26 19:07:15'),
(26, 'Data Pemilihan', 'Module', 'election_data', 'red', 'fa fa-css3', 0, 1, 0, 1, 12, '2019-10-09 07:13:56', '2019-10-26 19:02:44'),
(27, 'Data Pemilihan', 'Route', 'AdminElectionDataControllerGetIndex', 'normal', 'fa fa-home', 0, 0, 0, 2, 7, '2019-10-10 01:55:09', '2019-10-10 04:59:41'),
(29, 'Testimoni', 'Route', 'AdminTestimonialsControllerGetIndex', NULL, 'fa fa-columns', 0, 1, 0, 1, 11, '2019-10-10 04:04:01', NULL),
(30, 'Testimoni', 'Route', 'AdminTestimoniControllerGetIndex', 'normal', 'fa fa-home', 0, 0, 0, 1, 10, '2019-10-10 04:49:27', '2019-10-10 04:59:16'),
(31, 'Testimoni', 'Module', 'testimoni', 'normal', 'fa fa-columns', 0, 1, 0, 2, 10, '2019-10-10 05:00:30', NULL),
(33, 'Agenda', 'Route', 'AdminAgendaControllerGetIndex', 'normal', 'fa fa-calendar-times-o', 0, 1, 0, 1, 3, '2019-10-14 10:09:35', '2019-10-14 10:45:29'),
(35, 'Laporan', 'Module', 'report', 'normal', 'fa fa-book', 0, 1, 0, 2, 9, '2019-10-14 10:38:13', NULL),
(36, 'Agenda', 'Route', 'AdminAgendaControllerGetIndex', 'normal', 'fa fa-calendar-times-o', 0, 1, 0, 2, 2, '2019-10-15 04:38:47', NULL),
(37, 'Statistic', 'Route', 'AdminStatisticControllerGetIndex', 'yellow', 'fa fa-bar-chart', 0, 1, 0, 1, 2, '2019-11-06 03:17:20', '2019-11-07 03:32:01');

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
(13, 'Siswa', 'fa fa-user', 'student', 'users', 'AdminStudentController', 0, 0, '2019-09-22 05:19:04', NULL),
(14, 'Guru', 'fa fa-user-plus', 'teachers', 'users', 'AdminTeachersController', 0, 0, '2019-09-22 05:19:45', NULL),
(15, 'Karyawan', 'fa fa-users', 'employee', 'users', 'AdminEmployeeController', 0, 0, '2019-09-22 05:20:41', NULL),
(16, 'Kelas', 'fa fa-list-alt', 'class', 'class', 'AdminClassController', 0, 0, '2019-09-22 05:21:21', NULL),
(17, 'Kandidat', 'fa fa-user', 'candidates', 'candidate', 'AdminCandidatesController', 0, 0, '2019-09-22 05:22:11', NULL),
(19, 'Data Pemilihan', 'fa fa-glass', 'election_data', 'election_data', 'AdminElectionDataController', 0, 0, '2019-09-22 05:26:17', NULL),
(20, 'Pengaturan', 'fa fa-glass', 'pengaturan', 'cms_users', 'AdminPengaturanController', 0, 0, '2019-09-22 13:39:13', NULL),
(21, 'Dashboard', 'fa fa-glass', 'dashboard', 'cms_users', 'AdminDashboardController', 0, 0, '2019-09-24 00:48:10', NULL),
(22, 'Keuangan', 'fa fa-money', 'finance', 'finance', 'AdminFinanceController', 0, 0, '2019-09-24 02:36:21', NULL),
(23, 'Golput', 'fa fa-glass', 'golput', 'users', 'AdminGolputController', 0, 0, '2019-09-24 07:31:18', NULL),
(24, 'Testimoni', 'fa fa-columns', 'testimonials', 'testimonials', 'AdminTestimonialsController', 0, 0, '2019-10-10 04:04:01', NULL),
(25, 'Testimoni', 'fa fa-glass', 'testimoni', 'testimonials', 'AdminTestimoniController', 0, 0, '2019-10-10 04:49:27', NULL),
(26, 'Laporan', 'fa fa-book', 'report', 'election_data', 'AdminReportController', 0, 0, '2019-10-11 07:37:36', NULL),
(27, 'Agenda', 'fa fa-calendar-times-o', 'agenda', 'agenda', 'AdminAgendaController', 0, 0, '2019-10-14 10:09:35', NULL),
(28, 'Statistic', 'fa fa-bar-chart', 'statistic', 'cms_users', 'AdminStatisticController', 0, 0, '2019-11-06 03:17:19', NULL);

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
(1, 'Administrator & Developer', 1, 'skin-purple-light', '2019-09-22 05:14:58', NULL),
(2, 'Sekolah', 0, 'skin-purple', NULL, NULL),
(46, 'Super Administrator', 1, 'skin-red', '2019-11-06 18:01:24', NULL);

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
(27, 1, 1, 1, 1, 1, 2, 13, NULL, NULL),
(28, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(29, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(30, 1, 1, 1, 1, 1, 2, 21, NULL, NULL),
(31, 1, 1, 1, 1, 1, 1, 22, NULL, NULL),
(32, 1, 1, 1, 1, 1, 1, 23, NULL, NULL),
(33, 1, 1, 1, 1, 1, 1, 23, NULL, NULL),
(34, 1, 1, 1, 1, 1, 2, 23, NULL, NULL),
(35, 1, 1, 1, 1, 1, 2, 20, NULL, NULL),
(36, 1, 1, 1, 1, 1, 1, 24, NULL, NULL),
(37, 1, 1, 1, 1, 1, 1, 25, NULL, NULL),
(38, 1, 1, 1, 1, 1, 1, 26, NULL, NULL),
(39, 1, 1, 1, 1, 1, 1, 27, NULL, NULL),
(40, 1, 1, 1, 1, 1, 2, 27, NULL, NULL),
(41, 1, 1, 1, 1, 1, 2, 26, NULL, NULL),
(42, 1, 1, 1, 1, 1, 2, 25, NULL, NULL),
(43, 1, 1, 1, 1, 1, 1, 28, NULL, NULL),
(44, 1, 1, 1, 1, 1, 2, 28, NULL, NULL),
(45, 1, 1, 1, 1, 1, 1, 28, NULL, NULL);

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
(2, 'login_font_color', '6b6b6b', 'text', NULL, 'Input hexacode', '2019-09-22 05:14:58', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', 'uploads/2019-10/7b52dc126c5d07f25503bc197ff9ab88.jpg', 'upload_image', NULL, NULL, '2019-09-22 05:14:58', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'no-reply@pilkatos.tech', 'text', NULL, NULL, '2019-09-22 05:14:58', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'smtp', 'select', 'smtp,mail,sendmail', NULL, '2019-09-22 05:14:58', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', 'smtp.mailgun.org', 'text', NULL, NULL, '2019-09-22 05:14:58', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '587', 'text', NULL, 'default 25', '2019-09-22 05:14:58', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', 'postmaster@mg.hiskia.dev', 'text', NULL, NULL, '2019-09-22 05:14:58', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', 'd6f068f207662cd38c0a43b65bcde11d-af6c0cec-37899e0d', 'text', NULL, NULL, '2019-09-22 05:14:58', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'Pilkatos', 'text', NULL, NULL, '2019-09-22 05:14:58', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2019-09-22 05:14:58', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2019-10/0d13feaa3e3b16658ba5b6b301f786e5.png', 'upload_image', NULL, NULL, '2019-09-22 05:14:58', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', 'uploads/2019-11/2d0aa2173655f35e0ed1b374425984b2.png', 'upload_image', NULL, NULL, '2019-09-22 05:14:58', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2019-09-22 05:14:58', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', 'AIzaSyB-hMhsyNgoQEGjR79mdcuRaUcrxR9vY1E', 'text', NULL, NULL, '2019-09-22 05:14:58', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', 'AAAAJtzOZjY:APA91bGYqd9Wzcc22QYvcZiEBDq4hJ5bPj1ov7u6jHG3ht_d6PiqnWglywZ57RVNJ5ymINTvlJNSOLaq8k-inQBom4vfkcUarIrVknZUmXEzrgB78RYNdGlpF_HgXaB8OWS6vHd07XzM', 'text', NULL, NULL, '2019-09-22 05:14:58', NULL, 'Application Setting', 'Google FCM Key'),
(17, 'info', 'Saat Ini Sistem Pilkatos.Tech Masih Dalam Versi BETA, Jika Ada Masalah/Bug Bisa Hubungi Kami Melalui Live Chat Dibawah. Terimakasih!', 'text', '', NULL, '2019-10-22 09:45:23', NULL, 'Application Setting', 'Info Dashboard');

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

--
-- Dumping data for table `cms_statistic_components`
--

INSERT INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`) VALUES
(1, 1, '07003674cc8e77ee871e3921c2133862', 'smallbox', NULL, 0, 'Untitled', NULL, '2019-10-26 19:12:08', NULL),
(2, 1, '45a41e406b39a56429bea96950be5a3a', 'smallbox', 'area1', 0, 'Untitled', NULL, '2019-10-26 19:12:10', NULL);

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
  `with_email` int(1) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`, `with_email`, `path`, `latitude`, `longitude`) VALUES
(1, 'Administrator', 'uploads/2019-10/icon-logo.jpg', 'admin@pilkatos.tech', '$2y$10$KxXh4enBgADGki9Eh/JddufVptrk0CFyxiXGZS3FBz.wzKHsmKiDS', 1, '2019-09-22 05:14:58', '2019-11-06 18:04:04', 'Active', 0, NULL, '-6.4969948', NULL),
(2, 'SMK Wikrama 1 Jepara', 'uploads/2019-10/logo-swiksara.png', 'admin@smkwikrama1jepara.sch.id', '$2y$10$C06sny8ZOocQq/HWs5ou9eXV1s4/nTJyN/c6IMGvB6cEsiWSOp6cC', 2, '2019-10-24 07:41:30', '2019-11-06 14:48:41', 'Active', 0, 'swiksara', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `election_data`
--

CREATE TABLE `election_data` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `cms_users_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `election_data`
--

INSERT INTO `election_data` (`id`, `users_id`, `candidate_id`, `cms_users_id`, `created_at`, `updated_at`) VALUES
(8, 81, 1, 2, '2019-11-07 08:39:09', NULL),
(9, 145, 2, 2, '2019-11-07 08:57:08', NULL),
(10, 55, 4, 2, '2019-11-07 08:57:14', NULL),
(11, 10, 4, 2, '2019-11-07 08:57:44', NULL),
(12, 104, 3, 2, '2019-11-07 08:58:06', NULL),
(13, 82, 4, 2, '2019-11-07 08:58:14', NULL),
(14, 83, 4, 2, '2019-11-07 08:58:21', NULL),
(15, 86, 3, 2, '2019-11-07 08:58:44', NULL),
(16, 91, 3, 2, '2019-11-07 08:58:53', NULL),
(17, 118, 4, 2, '2019-11-07 08:58:58', NULL),
(18, 89, 4, 2, '2019-11-07 08:59:12', NULL),
(19, 105, 4, 2, '2019-11-07 08:59:15', NULL),
(20, 93, 4, 2, '2019-11-07 08:59:16', NULL),
(21, 109, 4, 2, '2019-11-07 08:59:50', NULL),
(22, 79, 4, 2, '2019-11-07 09:00:15', NULL),
(23, 136, 4, 2, '2019-11-07 09:01:43', NULL),
(24, 96, 5, 2, '2019-11-07 09:02:17', NULL),
(25, 150, 1, 2, '2019-11-07 09:02:48', NULL),
(26, 2, 3, 2, '2019-11-07 09:05:51', NULL),
(27, 80, 5, 2, '2019-11-07 09:06:44', NULL),
(28, 226, 1, 2, '2019-11-07 09:09:34', NULL),
(29, 134, 5, 2, '2019-11-07 09:09:45', NULL),
(31, 232, 4, 2, '2019-11-07 09:10:49', NULL),
(32, 218, 1, 2, '2019-11-07 09:11:47', NULL),
(33, 220, 4, 2, '2019-11-07 09:12:30', NULL),
(34, 234, 4, 2, '2019-11-07 09:12:46', NULL),
(35, 228, 4, 2, '2019-11-07 09:13:13', NULL),
(36, 229, 2, 2, '2019-11-07 09:14:00', NULL),
(37, 236, 5, 2, '2019-11-07 09:15:51', NULL),
(38, 84, 4, 2, '2019-11-07 09:16:47', NULL),
(39, 112, 3, 2, '2019-11-07 09:19:43', NULL),
(40, 114, 3, 2, '2019-11-07 09:21:15', NULL),
(41, 113, 3, 2, '2019-11-07 09:21:30', NULL),
(42, 119, 3, 2, '2019-11-07 09:21:51', NULL),
(43, 116, 4, 2, '2019-11-07 09:22:02', NULL),
(44, 123, 1, 2, '2019-11-07 09:22:21', NULL),
(45, 120, 1, 2, '2019-11-07 09:22:35', NULL),
(46, 121, 1, 2, '2019-11-07 09:23:07', NULL),
(47, 132, 3, 2, '2019-11-07 09:23:34', NULL),
(48, 130, 3, 2, '2019-11-07 09:24:20', NULL),
(49, 126, 3, 2, '2019-11-07 09:24:24', NULL),
(50, 141, 4, 2, '2019-11-07 09:24:42', NULL),
(51, 133, 3, 2, '2019-11-07 09:24:47', NULL),
(52, 129, 4, 2, '2019-11-07 09:24:50', NULL),
(53, 125, 4, 2, '2019-11-07 09:26:39', NULL),
(54, 138, 4, 2, '2019-11-07 09:27:00', NULL),
(55, 117, 1, 2, '2019-11-07 09:27:02', NULL),
(56, 135, 3, 2, '2019-11-07 09:27:17', NULL),
(57, 127, 1, 2, '2019-11-07 09:27:35', NULL),
(58, 140, 3, 2, '2019-11-07 09:27:42', NULL),
(59, 137, 1, 2, '2019-11-07 09:27:49', NULL),
(60, 122, 4, 2, '2019-11-07 09:28:25', NULL),
(61, 139, 1, 2, '2019-11-07 09:30:47', NULL),
(62, 124, 1, 2, '2019-11-07 09:30:53', NULL),
(63, 102, 1, 2, '2019-11-07 09:31:10', NULL),
(64, 100, 4, 2, '2019-11-07 09:31:33', NULL),
(65, 115, 1, 2, '2019-11-07 09:33:56', NULL),
(66, 94, 4, 2, '2019-11-07 09:36:07', NULL),
(67, 107, 4, 2, '2019-11-07 09:36:26', NULL),
(68, 85, 4, 2, '2019-11-07 09:36:27', NULL),
(69, 108, 1, 2, '2019-11-07 09:36:27', NULL),
(70, 99, 4, 2, '2019-11-07 09:37:05', NULL),
(71, 111, 1, 2, '2019-11-07 09:39:03', NULL),
(72, 97, 1, 2, '2019-11-07 09:39:06', NULL),
(73, 103, 1, 2, '2019-11-07 09:39:15', NULL),
(74, 87, 1, 2, '2019-11-07 09:39:21', NULL),
(75, 106, 1, 2, '2019-11-07 09:39:33', NULL),
(76, 110, 2, 2, '2019-11-07 09:39:57', NULL),
(77, 88, 2, 2, '2019-11-07 09:40:03', NULL),
(78, 98, 1, 2, '2019-11-07 09:40:41', NULL),
(79, 222, 4, 2, '2019-11-07 09:40:46', NULL),
(80, 205, 3, 2, '2019-11-07 09:42:12', NULL),
(81, 213, 3, 2, '2019-11-07 09:44:44', NULL),
(82, 214, 4, 2, '2019-11-07 09:45:36', NULL),
(83, 221, 4, 2, '2019-11-07 09:46:56', NULL),
(84, 227, 4, 2, '2019-11-07 09:47:22', NULL),
(85, 60, 3, 2, '2019-11-07 09:47:51', NULL),
(86, 66, 3, 2, '2019-11-07 09:48:28', NULL),
(87, 71, 3, 2, '2019-11-07 09:48:37', NULL),
(88, 58, 3, 2, '2019-11-07 09:48:38', NULL),
(89, 70, 3, 2, '2019-11-07 09:48:42', NULL),
(90, 74, 3, 2, '2019-11-07 09:52:07', NULL),
(91, 75, 3, 2, '2019-11-07 09:52:20', NULL),
(92, 92, 3, 2, '2019-11-07 09:53:24', NULL),
(93, 68, 3, 2, '2019-11-07 09:54:05', NULL),
(94, 78, 3, 2, '2019-11-07 09:54:12', NULL),
(95, 61, 3, 2, '2019-11-07 09:54:22', NULL),
(96, 216, 4, 2, '2019-11-07 09:55:06', NULL),
(97, 72, 3, 2, '2019-11-07 09:55:46', NULL),
(98, 67, 3, 2, '2019-11-07 09:57:56', NULL),
(99, 6, 5, 2, '2019-11-07 10:00:23', NULL),
(100, 95, 4, 2, '2019-11-07 10:00:33', NULL),
(101, 12, 4, 2, '2019-11-07 10:01:49', NULL),
(102, 7, 3, 2, '2019-11-07 10:02:36', NULL),
(103, 8, 3, 2, '2019-11-07 10:03:46', NULL),
(104, 5, 3, 2, '2019-11-07 10:04:33', NULL),
(105, 1, 3, 2, '2019-11-07 10:05:29', NULL),
(106, 28, 4, 2, '2019-11-07 10:08:51', NULL),
(107, 19, 3, 2, '2019-11-07 10:10:24', NULL),
(108, 24, 3, 2, '2019-11-07 10:10:31', NULL),
(109, 15, 3, 2, '2019-11-07 10:10:45', NULL),
(110, 22, 3, 2, '2019-11-07 10:10:56', NULL),
(111, 18, 3, 2, '2019-11-07 10:11:21', NULL),
(112, 14, 3, 2, '2019-11-07 10:11:33', NULL),
(113, 16, 3, 2, '2019-11-07 10:11:52', NULL),
(114, 4, 4, 2, '2019-11-07 10:13:30', NULL),
(115, 3, 4, 2, '2019-11-07 10:13:39', NULL),
(116, 26, 4, 2, '2019-11-07 10:13:52', NULL),
(117, 9, 4, 2, '2019-11-07 10:13:53', NULL),
(118, 25, 4, 2, '2019-11-07 10:15:18', NULL),
(119, 20, 4, 2, '2019-11-07 10:16:02', NULL),
(120, 13, 3, 2, '2019-11-07 10:16:03', NULL),
(121, 219, 3, 2, '2019-11-07 10:27:25', NULL),
(122, 101, 1, 2, '2019-11-07 10:35:23', NULL),
(123, 212, 4, 2, '2019-11-07 10:36:31', NULL),
(124, 215, 1, 2, '2019-11-07 10:39:21', NULL),
(125, 231, 1, 2, '2019-11-07 10:45:29', NULL),
(126, 230, 1, 2, '2019-11-07 10:46:01', NULL),
(127, 225, 1, 2, '2019-11-07 10:46:29', NULL),
(128, 224, 4, 2, '2019-11-07 10:46:56', NULL),
(129, 30, 3, 2, '2019-11-07 11:01:04', NULL),
(130, 47, 3, 2, '2019-11-07 11:03:38', NULL),
(131, 29, 3, 2, '2019-11-07 11:04:08', NULL),
(132, 155, 2, 2, '2019-11-07 11:04:41', NULL),
(133, 173, 3, 2, '2019-11-07 11:06:02', NULL),
(134, 204, 4, 2, '2019-11-07 11:10:21', NULL),
(135, 73, 3, 2, '2019-11-07 11:12:02', NULL),
(136, 128, 4, 2, '2019-11-07 11:12:57', NULL),
(137, 65, 3, 2, '2019-11-07 11:13:01', NULL),
(138, 57, 4, 2, '2019-11-07 11:22:25', NULL),
(139, 38, 5, 2, '2019-11-07 11:22:39', NULL),
(140, 50, 5, 2, '2019-11-07 11:22:40', NULL),
(141, 42, 5, 2, '2019-11-07 11:22:56', NULL),
(142, 46, 3, 2, '2019-11-07 11:22:57', NULL),
(143, 52, 5, 2, '2019-11-07 11:22:57', NULL),
(144, 44, 3, 2, '2019-11-07 11:23:09', NULL),
(145, 49, 3, 2, '2019-11-07 11:24:19', NULL),
(146, 56, 3, 2, '2019-11-07 11:24:21', NULL),
(147, 45, 3, 2, '2019-11-07 11:24:21', NULL),
(148, 237, 3, 2, '2019-11-07 11:24:39', NULL),
(149, 34, 5, 2, '2019-11-07 11:24:58', NULL),
(150, 53, 3, 2, '2019-11-07 11:25:18', NULL),
(151, 32, 3, 2, '2019-11-07 11:25:29', NULL),
(152, 37, 3, 2, '2019-11-07 11:26:06', NULL),
(153, 31, 3, 2, '2019-11-07 11:26:34', NULL),
(154, 40, 3, 2, '2019-11-07 11:27:00', NULL),
(155, 41, 5, 2, '2019-11-07 11:27:25', NULL),
(156, 36, 3, 2, '2019-11-07 11:27:27', NULL),
(157, 51, 5, 2, '2019-11-07 11:27:34', NULL),
(158, 35, 2, 2, '2019-11-07 11:27:42', NULL),
(159, 54, 3, 2, '2019-11-07 11:27:49', NULL),
(160, 48, 3, 2, '2019-11-07 11:28:41', NULL),
(161, 43, 3, 2, '2019-11-07 11:28:46', NULL),
(162, 33, 5, 2, '2019-11-07 11:29:12', NULL),
(163, 90, 4, 2, '2019-11-07 11:32:20', NULL),
(164, 179, 1, 2, '2019-11-07 11:34:13', NULL),
(165, 148, 3, 2, '2019-11-07 11:34:32', NULL),
(166, 146, 3, 2, '2019-11-07 11:34:47', NULL),
(167, 162, 1, 2, '2019-11-07 11:35:06', NULL),
(168, 159, 3, 2, '2019-11-07 11:35:11', NULL),
(169, 176, 1, 2, '2019-11-07 11:35:38', NULL),
(170, 187, 1, 2, '2019-11-07 11:35:46', NULL),
(171, 184, 1, 2, '2019-11-07 11:35:56', NULL),
(172, 143, 1, 2, '2019-11-07 11:36:35', NULL),
(173, 151, 1, 2, '2019-11-07 11:37:15', NULL),
(174, 149, 1, 2, '2019-11-07 11:37:22', NULL),
(175, 207, 1, 2, '2019-11-07 11:37:41', NULL),
(176, 180, 1, 2, '2019-11-07 11:37:44', NULL),
(177, 172, 1, 2, '2019-11-07 11:37:50', NULL),
(178, 194, 3, 2, '2019-11-07 11:38:07', NULL),
(179, 192, 2, 2, '2019-11-07 11:38:13', NULL),
(180, 195, 1, 2, '2019-11-07 11:38:22', NULL),
(181, 174, 1, 2, '2019-11-07 11:38:45', NULL),
(182, 197, 1, 2, '2019-11-07 11:39:03', NULL),
(183, 161, 1, 2, '2019-11-07 11:39:33', NULL),
(184, 158, 3, 2, '2019-11-07 11:41:30', NULL),
(185, 142, 1, 2, '2019-11-07 11:42:32', NULL),
(186, 233, 4, 2, '2019-11-07 11:42:34', NULL),
(187, 190, 1, 2, '2019-11-07 11:42:39', NULL),
(188, 39, 3, 2, '2019-11-07 12:20:40', NULL),
(189, 157, 2, 2, '2019-11-07 12:35:23', NULL),
(190, 169, 4, 2, '2019-11-07 12:35:37', NULL),
(191, 189, 1, 2, '2019-11-07 12:35:50', NULL),
(192, 193, 2, 2, '2019-11-07 12:36:00', NULL),
(193, 198, 2, 2, '2019-11-07 12:37:47', NULL),
(194, 200, 2, 2, '2019-11-07 12:38:40', NULL),
(195, 163, 2, 2, '2019-11-07 12:38:48', NULL),
(196, 188, 2, 2, '2019-11-07 12:39:09', NULL),
(197, 147, 2, 2, '2019-11-07 12:39:46', NULL),
(198, 164, 2, 2, '2019-11-07 12:39:48', NULL),
(199, 156, 2, 2, '2019-11-07 12:40:22', NULL),
(200, 178, 2, 2, '2019-11-07 12:40:28', NULL),
(201, 186, 2, 2, '2019-11-07 12:41:07', NULL),
(202, 199, 2, 2, '2019-11-07 12:41:13', NULL),
(203, 165, 2, 2, '2019-11-07 12:41:34', NULL),
(204, 177, 2, 2, '2019-11-07 12:42:14', NULL),
(205, 181, 2, 2, '2019-11-07 12:42:16', NULL),
(206, 170, 2, 2, '2019-11-07 12:42:59', NULL),
(207, 201, 2, 2, '2019-11-07 12:43:17', NULL),
(208, 202, 5, 2, '2019-11-07 12:43:19', NULL),
(209, 168, 2, 2, '2019-11-07 12:45:30', NULL),
(210, 183, 2, 2, '2019-11-07 12:45:33', NULL),
(211, 185, 2, 2, '2019-11-07 12:45:37', NULL),
(212, 175, 2, 2, '2019-11-07 12:45:38', NULL),
(213, 152, 2, 2, '2019-11-07 12:45:52', NULL),
(214, 191, 2, 2, '2019-11-07 12:46:38', NULL),
(215, 11, 3, 2, '2019-11-07 13:05:27', NULL),
(216, 64, 3, 2, '2019-11-07 13:12:50', NULL),
(217, 153, 3, 2, '2019-11-07 13:13:53', NULL),
(218, 160, 4, 2, '2019-11-07 13:15:05', NULL),
(220, 206, 3, 2, '2019-11-07 15:57:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `finance`
--

CREATE TABLE `finance` (
  `id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `type` varchar(3) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_background`
--

CREATE TABLE `login_background` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `cms_users_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_background`
--

INSERT INTO `login_background` (`id`, `photo`, `cms_users_id`, `created_at`, `updated_at`) VALUES
(1, 'uploads/2019-10/bg.jpg', 2, '2019-10-24 14:41:30', '2019-10-24 17:00:08');

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
-- Table structure for table `password_token`
--

CREATE TABLE `password_token` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `is_users` int(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `cms_users_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `type` int(1) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `cms_users_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `name`, `password`, `type`, `class_id`, `status`, `cms_users_id`, `created_at`, `updated_at`) VALUES
(1, NULL, '11800640', 'Aan Febriyan', '$2y$10$1x/vDOqG7FU.iuA/7CbmseKdRIee6scZGLudH8RP4CbZ5Wu4/8pQ2', 0, 3, 1, 2, '2019-11-06 16:31:23', '2019-11-07 10:05:29'),
(2, NULL, '11800641', 'Abdullah Ibnu Ali Annufas', '$2y$10$vy9XxOn6G9tnS1i16EzUZuxGf88R4o3oGvRjvKqCTgEosajaDYGFu', 0, 3, 1, 2, '2019-11-06 16:31:23', '2019-11-07 09:05:51'),
(3, NULL, '11800642', 'Adek Candra Nur Wijayanti', '$2y$10$7kZOa2ovtedArCGhOX4cz.8d1af/HmCA3ZN7NAlR.3oAt2dV7Ucoi', 0, 3, 1, 2, '2019-11-06 16:31:23', '2019-11-07 10:13:39'),
(4, NULL, '11800643', 'Afi Fathul Amala', '$2y$10$nUOfbvQ92y4Ilq7jvKP4teWiiGI5dxiWNM5pjSNfSI9NyxCCdvgl.', 0, 3, 1, 2, '2019-11-06 16:31:23', '2019-11-07 10:13:30'),
(5, NULL, '11800645', 'Agustiyanto Eko Saputra', '$2y$10$xvE1162B1OAlav9ZAaThWeUEkY4hz3I2YK3OxOweBI348J39vue5q', 0, 3, 1, 2, '2019-11-06 16:31:24', '2019-11-07 10:04:33'),
(6, NULL, '11800647', 'Ahmad Rouf Mawanto', '$2y$10$gr9C3G/G2rku3jhBMrrCiOIPgN9WHx8W/N01Regzr3AjtKu9MEA2W', 0, 3, 1, 2, '2019-11-06 16:31:24', '2019-11-07 10:00:23'),
(7, NULL, '11800648', 'Ahmad Saifud Anang', '$2y$10$abldLf46FL2Wcc2reFJHr.ciFf3ujdsjIuQ8Fc6LjtUtmu2/89Gby', 0, 3, 1, 2, '2019-11-06 16:31:24', '2019-11-07 10:02:36'),
(8, NULL, '11800650', 'Akbar Nurdiansyah', '$2y$10$W47Z1tIZWGEVQawQHuCz8eBwTKJy8C8eiUnXm79ZEa4KGZZupeerO', 0, 3, 1, 2, '2019-11-06 16:31:24', '2019-11-07 10:03:46'),
(9, NULL, '11800651', 'Amiroh Nabila Khoir', '$2y$10$loYF0OdZv9bwz/q1j.H.Se.4fpYMiF6tXypuAYoNZbYhlMrlqS9O6', 0, 3, 1, 2, '2019-11-06 16:31:24', '2019-11-07 10:13:53'),
(10, NULL, '11800652', 'Angelita Previana Yusita', '$2y$10$znLREIbUo1lSHRJ1xzxh9ecQEiYBw4CUQG4A1WTiV1vY.yYoteAei', 0, 3, 1, 2, '2019-11-06 16:31:24', '2019-11-07 08:57:44'),
(11, NULL, '11800658', 'Ayub Aminuddin', '$2y$10$JrRf4p/737E/xvVDZiz/DOhAZ.BU8FCNcNkXeE0P/LEatWmylbFtG', 0, 3, 1, 2, '2019-11-06 16:31:24', '2019-11-07 13:05:27'),
(12, NULL, '11800659', 'Bagas Aditya Mahendra', '$2y$10$s9pFmn72Gl2yskYiRCjopO66xBUhoKo8fE61zSfhhRE03vRrO56vi', 0, 3, 1, 2, '2019-11-06 16:31:25', '2019-11-07 10:01:49'),
(13, NULL, '11800660', 'Citra Ananda Putri Juliana', '$2y$10$Mj0tf0XJkW7cxsUUyrsSpOMmCxilBO2NcJvDDJpJyLWJzrsEg1bFi', 0, 3, 1, 2, '2019-11-06 16:31:25', '2019-11-07 10:16:03'),
(14, '', '11800661', 'Fatkhur Rohman', '$2y$10$CTp/DJocELlf19Jxs7WtMuaUinIvzzoo5O5k7szIHtquaVLfJ/qq2', 0, 3, 1, 2, '2019-11-06 16:31:25', '2019-11-07 10:11:33'),
(15, NULL, '11800668', 'Fera Aprilliya', '$2y$10$ivCyZdetUpGtULR9Bjy.iOiI1jtDjzhkj4pJxVWi6PxVLNRiE4jB6', 0, 3, 1, 2, '2019-11-06 16:31:25', '2019-11-07 10:10:45'),
(16, NULL, '11800669', 'Feyto Frizky Dewangga', '$2y$10$yRr4CcBNbF9ghjbkcaqRFuIcwJQSItTQ.2SOsx5e2QE69GRCBN8lC', 0, 3, 1, 2, '2019-11-06 16:31:25', '2019-11-07 10:11:52'),
(18, '', '11800674', 'Lila Setyaningsih', '$2y$10$wOMsV3LQblia0KJ4rexfnOhmDdKsB0Cd/B5v46saSbBogtlgslKL2', 0, 3, 1, 2, '2019-11-06 16:31:26', '2019-11-07 10:11:21'),
(19, '', '11800679', 'Linda Astutik', '$2y$10$b3Ew8i8oPkh502pI1MCos.1sIKgai.mvKakOTx1vmHHA7e81wZn2m', 0, 3, 1, 2, '2019-11-06 16:31:26', '2019-11-07 10:10:24'),
(20, '', '11800680', 'Maulida Khairun Nisa', '$2y$10$ARLaQ./ij4zW6khdAvi7g.YgH3on3nXGxLLjJNrT4kWXcc10DQS2y', 0, 3, 1, 2, '2019-11-06 16:31:26', '2019-11-07 10:16:02'),
(22, '', '11800687', 'Muhammad Vicki Fitro\'un Naskha', '$2y$10$lYA8TnfhcXKtqPCbhcXCBOky5AhtPeHTjlelhABoXV4nbIYVVK3Qi', 0, 3, 1, 2, '2019-11-06 16:31:27', '2019-11-07 10:10:56'),
(23, NULL, '11800691', 'Nadilla Helmalia Putri', '$2y$10$f57wQHfuOcvMsK4/Ren/dem.IBWOgGvXTik6MLzcrgxpqRwvM6IGK', 0, 3, 0, 2, '2019-11-06 16:31:27', NULL),
(24, '', '11800694', 'Nurulita Tri Utami', '$2y$10$XGcW0Chwf/U95NJK5X9ooeVpIWQpTWo5MB0MjjbwHFQ.MqgZEmlkK', 0, 3, 1, 2, '2019-11-06 16:31:27', '2019-11-07 10:10:31'),
(25, NULL, '11800701', 'Reno Wulan Wijayanti', '$2y$10$2cqZ1twVm/fHCIJCbA6m.uMgf6x9YGtLdr3Po.9P65nij1Eko/kba', 0, 3, 1, 2, '2019-11-06 16:31:27', '2019-11-07 10:15:18'),
(26, NULL, '11800704', 'Riska Ayu Wulandari', '$2y$10$VmvY.sHT0FC7akuznEng3OOct5y0XMb6ToZYmzF3vqzN9JmXK3fg2', 0, 3, 1, 2, '2019-11-06 16:31:27', '2019-11-07 10:13:52'),
(27, NULL, '11800705', 'Shofroul Laelly Hindarsyah', '$2y$10$9bxbm7OM8fiRGw4hEeWCl.vCIPz5dbErjCGj9fqelEjIi0/5bqkpa', 0, 3, 0, 2, '2019-11-06 16:31:27', NULL),
(28, '', '11800711', 'Nifa Fransiska Sari', '$2y$10$mNyfWtKB69O69Tvi4hR8rODWwbpTQuvFhRs9aboJNvYGc8KMoroS2', 0, 3, 1, 2, '2019-11-06 16:31:28', '2019-11-07 10:08:51'),
(29, NULL, '11800649', 'Ahmad Sholeh', '$2y$10$aUmqUrOt1Y1qD7Hmd044Pe6AnpvHeX6rO5wkbDLp8fsAKwKZ8ngLm', 0, 4, 1, 2, '2019-11-06 16:31:28', '2019-11-07 11:04:08'),
(30, NULL, '11800653', 'Angga Gusverangga ', '$2y$10$2yeDDnusCBO2b9JIkIj1zOd9ykOoIR.sSau.uIWDTi9aikFrd51XW', 0, 4, 1, 2, '2019-11-06 16:31:28', '2019-11-07 11:01:04'),
(31, NULL, '11800654', 'Anggita Wahyu Nur Avida', '$2y$10$anejLXLFlyrMMfSM965/aOnvje2MgiICpWuhqDncV1QXXAv5u6OsG', 0, 4, 1, 2, '2019-11-06 16:31:28', '2019-11-07 11:26:34'),
(32, NULL, '11800655', 'Anis Dwi Fitriani', '$2y$10$YTKyJ0TnrDtVucaBIpxdUOyUeFXgX76pmRaBBi2kc0UsG6F6Oothq', 0, 4, 1, 2, '2019-11-06 16:31:28', '2019-11-07 11:25:29'),
(33, '', '11800656', 'Aprilia Marsella Engeliana', '$2y$10$oO2wk.GWHyUvP1EKOPyfGOetkN9bJT/HtA14gsnW3aQxaTh7E2uDi', 0, 4, 1, 2, '2019-11-06 16:31:29', '2019-11-07 11:29:12'),
(34, NULL, '11800657', 'Ayriza Alviani ', '$2y$10$pB7S9voHR56CRB7iPifMdeWcRMV/YueVZ6fO/yv.EO1nnkk5jSz/O', 0, 4, 1, 2, '2019-11-06 16:31:29', '2019-11-07 11:24:58'),
(35, NULL, '11800662', 'Della Intan Anggi Maulidda', '$2y$10$I0eDlkAaJ7K2ytJYY8vkjOg0G3PnjqiBySKwmDfmN3CfZmu92y7P6', 0, 4, 1, 2, '2019-11-06 16:31:29', '2019-11-07 11:27:42'),
(36, NULL, '11800664', 'Dhaniar Yusuf Syahrines', '$2y$10$d7UrwLklmXTb/mh.W2K.8uRfqxvsqfoPXGGTk0ny1MTt5hPa780dS', 0, 4, 1, 2, '2019-11-06 16:31:29', '2019-11-07 11:27:27'),
(37, NULL, '11800665', 'Dilla Novita', '$2y$10$XobBlJqZPphXRZw96YlxPOQbWvKZUBKgeSINhU/jQ2l9nqBcR7.9S', 0, 4, 1, 2, '2019-11-06 16:31:29', '2019-11-07 11:26:06'),
(38, NULL, '11800671', 'Ficha Aprilia', '$2y$10$CB33PIk9MRDrGfIxAc2fYu7BbJMUVXPCw3coe5WIyvfZviv.5SqEe', 0, 4, 1, 2, '2019-11-06 16:31:29', '2019-11-07 11:22:39'),
(39, NULL, '11800673', 'Ikhwan Mualam Adearfinda', '$2y$10$BP1I22.ePZBioYqbgGlI7eNUFAecQ.5r.9qPksBcYWLsMFZ88O1.q', 0, 4, 1, 2, '2019-11-06 16:31:30', '2019-11-07 12:20:40'),
(40, NULL, '11800676', 'Kamilatun Nadhfiyah', '$2y$10$GNL3OI34XqHYPG/HoP0OUO8WMxSU4b87zAEcCq3PmG9x6mSzJeYKe', 0, 4, 1, 2, '2019-11-06 16:31:30', '2019-11-07 11:27:00'),
(41, NULL, '11800685', 'Mila Rahma Nia', '$2y$10$M0zboIJskcuJfMlaC/.LWu0vAztImy4TBo.i8hRoHu3Xcb5uLyfNC', 0, 4, 1, 2, '2019-11-06 16:31:30', '2019-11-07 11:27:25'),
(42, NULL, '11800686', 'Monica Amelia Putri', '$2y$10$cHU88OqhQNSOKhOeNOqB9eDbhD7D6dcf4i9T7o.13l8iwn2rJiuVC', 0, 4, 1, 2, '2019-11-06 16:31:30', '2019-11-07 11:22:56'),
(43, NULL, '11800688', 'Muhammad Fikrul Yusuf', '$2y$10$kbdHhwd/uwPl0v34IEcEWO9bMGKMYRfht.XSW3Q36cLuMIZBSTI3G', 0, 4, 1, 2, '2019-11-06 16:31:30', '2019-11-07 11:28:46'),
(44, NULL, '11800695', 'Nailal Hana', '$2y$10$2tjYSRwLoyS7YVNQwhGLTuvQ/tyTpTvFeh9J0gZ2UacI7.eD2Pt0e', 0, 4, 1, 2, '2019-11-06 16:31:31', '2019-11-07 11:23:09'),
(45, NULL, '11800696', 'Naufal Hanif Ihsanudin', '$2y$10$Jf5jmK0t6GUyUm3tm.GjI.SkxWZ62FS2ayLfVpGU.pqmnADEjUsBm', 0, 4, 1, 2, '2019-11-06 16:31:31', '2019-11-07 11:24:21'),
(46, NULL, '11800697', 'Neny Fahrun Nisa\'', '$2y$10$xloXU9SnYXnewdg3nLIBHOirDfhMsrrm29nI9HncK6xFYehmDoHyy', 0, 4, 1, 2, '2019-11-06 16:31:31', '2019-11-07 11:22:57'),
(47, NULL, '11800698', 'Nicholas Saputra Chaniago', '$2y$10$kG74sF.W6sMnAafAua2OIuWdqdrJ/5/CD0L8XdflgxKV0GcikFFli', 0, 4, 1, 2, '2019-11-06 16:31:31', '2019-11-07 11:03:38'),
(48, NULL, '11800708', 'Roykhan Akhadi Basyar', '$2y$10$uyiyNWD1Tl/PbOz.JqtWq.9Rm/pR1RaDHa4tKTN2X557NqiaJQyUy', 0, 4, 1, 2, '2019-11-06 16:31:31', '2019-11-07 11:28:41'),
(49, NULL, '11800709', 'Salsabila Devi Novianti ', '$2y$10$a2A6ChzgbWcAJx9zfIwxR.68x29aONn0HaQUFIGK2AyJXceDFWZB6', 0, 4, 1, 2, '2019-11-06 16:31:31', '2019-11-07 11:24:19'),
(50, NULL, '11800713', 'Silvi Dwi Vidya', '$2y$10$iQ09qMyWB6lwzkQdUg83suasCCE0ZNmDCunuR2pLtwBo.dnDJUHHe', 0, 4, 1, 2, '2019-11-06 16:31:32', '2019-11-07 11:22:40'),
(51, NULL, '11800714', 'Silvia Arini Sidqiyah', '$2y$10$Hq9zd2O2V3Nyds7KoMDl8e8T8d3zBdgIVf.71l13w7ZY9sDgHrKnO', 0, 4, 1, 2, '2019-11-06 16:31:32', '2019-11-07 11:27:34'),
(52, NULL, '11800715', 'Siti Masiroh', '$2y$10$RLh5CTXxYe3KGrHI5BEtCO4OUsB3DFmeMoBmqRTdcXq2kJDwjnkjS', 0, 4, 1, 2, '2019-11-06 16:31:32', '2019-11-07 11:22:57'),
(53, NULL, '11800721', 'Zahroil Laila', '$2y$10$m2NLzyMdQ77zC3gZ5thieext7HJ24LqvpnFBI8W7wzz5Vmy/cTfMe', 0, 4, 1, 2, '2019-11-06 16:31:32', '2019-11-07 11:25:18'),
(54, NULL, '11800722', 'Zulfa Dia Safitri', '$2y$10$FsT9AGty56d821j/X4NcfuFaQVufe7./yLQb9ChUWMil2M6s8XeZm', 0, 4, 1, 2, '2019-11-06 16:31:33', '2019-11-07 11:27:49'),
(55, NULL, '11800681', 'Muhammad Falakhul Alief Arrafi', '$2y$10$SYcVu1E7u/IUztbXuj0TwOIAMBr/RikSJlfEVWlSprhV5fgG10vYu', 0, 4, 1, 2, '2019-11-06 16:31:33', '2019-11-07 08:57:14'),
(56, NULL, '11800706', 'Risky Ulil Amri', '$2y$10$PNMONp.gif8gDL7jPnkoXOUXPvdtUgoXUhsDcZ.7Qz.NLznyO29de', 0, 4, 1, 2, '2019-11-06 16:31:33', '2019-11-07 11:24:21'),
(57, NULL, '11800723', 'Hidayatul Inayah', '$2y$10$GtqvpiwYgBJOhKyU/vasEOZ/.1buAZonqvZz4k6U86/SgPeiyW/d.', 0, 4, 1, 2, '2019-11-06 16:31:33', '2019-11-07 11:22:25'),
(58, NULL, '11800644', 'Afrilia Rahmawati', '$2y$10$YSxKb8VQqzqoyJDhPxzGjO9CyHWZy.AxWti/UMv00RROMK/ood1dC', 0, 5, 1, 2, '2019-11-06 16:31:33', '2019-11-07 09:48:38'),
(59, NULL, '11800646', 'Ahmad Arifin', '$2y$10$CP.bfgDO8Vw6tl6HJ6M9..fNCGJM2GLXQ2jNxaNyY.4A8R2RT.SF.', 0, 5, 0, 2, '2019-11-06 16:31:34', NULL),
(60, NULL, '11800663', 'Desy Larasati', '$2y$10$MzSJEJLcC0KaV5H/eUv3zusYUSZyFEmRJbnJlIILkN30332QHO3zC', 0, 5, 1, 2, '2019-11-06 16:31:34', '2019-11-07 09:47:51'),
(61, NULL, '11800666', 'Diva Farissatul Wafa', '$2y$10$6/82zJOPrsiJKwzovYoeD.s1wX7yvNWgwq9.tz2Wu8npEZJGAOwJG', 0, 5, 1, 2, '2019-11-06 16:31:34', '2019-11-07 09:54:22'),
(62, NULL, '11800667', 'Ela Adellisa', '$2y$10$fPM7dTWtiSwA1sNGxmkDn.yo7qWNj5S9PdAdLgbutFoKARErwL6Gm', 0, 5, 0, 2, '2019-11-06 16:31:34', NULL),
(64, NULL, '11800678', 'Lia Aliyatun Ni\'mah', '$2y$10$No3wRxCW7nDDuWFGoZvMm.nWcY95fo7AXjpYGeQ91Oek4AfS.eDHG', 0, 5, 1, 2, '2019-11-06 16:31:34', '2019-11-07 13:12:50'),
(65, NULL, '11800683', 'Melani Nur Azizah', '$2y$10$tC6pATxj7KLgS/ntPXPXV.S6ph1h2lEzzGiN0U/tdTXItP8fb1BT6', 0, 5, 1, 2, '2019-11-06 16:31:34', '2019-11-07 11:13:01'),
(66, NULL, '11800684', 'Mifrokhatun Ni\'mah', '$2y$10$ID7N75tCIG0FiExJDwTCkeTlw5u2C2EPRtlwT5Cbv7ZXNKKLYV4ki', 0, 5, 1, 2, '2019-11-06 16:31:34', '2019-11-07 09:48:28'),
(67, '', '11800689', 'Muhammad Ilyasa Fahriansyah', '$2y$10$dtdfAvMQqoJB7zDXie11aeNz.YTalzMSoM9PgQPUtEX.A55aBEBZK', 0, 5, 1, 2, '2019-11-06 16:31:35', '2019-11-07 09:57:56'),
(68, NULL, '11800690', 'Muhammad Iqbal Annauval', '$2y$10$TqyQ1rPmkKvmdP2loDSQFO8al0o2yj9Uh0vBHPi9toxSaYNeVy15u', 0, 5, 1, 2, '2019-11-06 16:31:35', '2019-11-07 09:54:05'),
(69, NULL, '11800692', 'Muhammad Zakiy Ersa Aulia Saputra', '$2y$10$A56B/ZyVKlX/MKEgA7M1NeVYuZsfLrTHqxKVToPds0T3UBl1aSv9C', 0, 5, 0, 2, '2019-11-06 16:31:35', NULL),
(70, NULL, '11800693', 'Nadhiyatul Riska', '$2y$10$EPIUes1gLaQVrFqiLAmY0uk0/Qe9jFOJ.TZ/Nkjk4E/3401y5vY6O', 0, 5, 1, 2, '2019-11-06 16:31:35', '2019-11-07 09:48:42'),
(71, NULL, '11800700', 'Novi Ayu Wardani', '$2y$10$FNZlh2FK3UiLH09bITmJ0uG0Ck3M7bpqBJg9thqKcr4x7OlXvZUn6', 0, 5, 1, 2, '2019-11-06 16:31:35', '2019-11-07 09:48:37'),
(72, NULL, '11800707', 'Riyan Susanto', '$2y$10$GkiFR7kSHt7T9FBp1BV4.uo66qW7pMd2DWW7xGdYqnS3gHbeBrRCG', 0, 5, 1, 2, '2019-11-06 16:31:35', '2019-11-07 09:55:46'),
(73, NULL, '11800716', 'Siti Muayyanah', '$2y$10$2w1iMAr3Z3dF3sQXxo8FPOn0kEltHJT8dXPsobxtwTx3foT15er9C', 0, 5, 1, 2, '2019-11-06 16:31:35', '2019-11-07 11:12:02'),
(74, NULL, '11800717', 'Syafrida Nurul Ulya', '$2y$10$pe2ZtrAR0hKDpWVHMz4OmerprOWI58TF658CnaZFI/WuH2NelGkIq', 0, 5, 1, 2, '2019-11-06 16:31:36', '2019-11-07 09:52:07'),
(75, NULL, '11800719', 'Tria Nabila', '$2y$10$.zCxB.emzDIGXQWonw0H4.0ri4OAVBru.oWKWjho/rTX/16CyN7Uy', 0, 5, 1, 2, '2019-11-06 16:31:36', '2019-11-07 09:52:20'),
(76, NULL, '11800702', 'Putri Ayu Novianti', '$2y$10$k2ex0/XMp0oFRlfJpAjaeOK4zDreS48BuCA9Nw/GeMj55LVU1etjG', 0, 5, 0, 2, '2019-11-06 16:31:36', NULL),
(77, NULL, '11800675', 'Irmania Susanti', '$2y$10$d5VyUijnHAg1P0.lBTBnmO/HiPqXNP0yioIWC879w9fyYg0KxJ7LK', 0, 5, 0, 2, '2019-11-06 16:31:36', NULL),
(78, NULL, '11800710', 'Salwa Maulana Fitriyanto', '$2y$10$StMWyWT8vw4kKjt6BSiwVu8w.WvB6AMBSV9zrvFvPtI4D.qk4KLwG', 0, 5, 1, 2, '2019-11-06 16:31:36', '2019-11-07 09:54:12'),
(79, NULL, '11700575', 'Adelia Vista Maharani', '$2y$10$Yd0PM3dWMnWTAfd9gLdOFe69b1hSabGdc6byUELEQ9EYpZ8E2txcm', 0, 1, 1, 2, '2019-11-06 16:31:36', '2019-11-07 09:00:15'),
(80, '', '11700577', 'Ahmad Kharis Nugroho', '$2y$10$n4DgN50vbI2p77o.k0eaI.5U9AHL5LuIS2lGmopv8PjA.hJSX9jSC', 0, 1, 1, 2, '2019-11-06 16:31:36', '2019-11-07 11:50:32'),
(81, NULL, '11700578', 'Aik Angger Bagaskara', '$2y$10$VqN/Yhtcnz7Y4GrfFmJs5.HR0WhaI02AuzXkmWW29FNpWfDE6mq5C', 0, 1, 1, 2, '2019-11-06 16:31:37', '2019-11-07 08:39:09'),
(82, NULL, '11700580', 'Alfina Nur Rohmah', '$2y$10$xPZxCDDRhJhgpw0ygowbFu7OZnlBNGUN5LTI6XvU8ZZRog3haDqVy', 0, 1, 1, 2, '2019-11-06 16:31:37', '2019-11-07 08:58:14'),
(83, NULL, '11700583', 'Amelisa Evita Sari', '$2y$10$heILfIs0unMo9R0DZmQMcOuaREb6G8wALETbOPrkdTIUC2qtSMIa.', 0, 1, 1, 2, '2019-11-06 16:31:37', '2019-11-07 08:58:21'),
(84, NULL, '11700584', 'Aminuddin Shofi Ashari', '$2y$10$PsXcQVqfS1l5pEf/woQHu.04Laej/ZUppi29krjGhCsU0FElIHcly', 0, 1, 1, 2, '2019-11-06 16:31:37', '2019-11-07 09:16:47'),
(85, NULL, '11700585', 'Anggita Triyana', '$2y$10$OpzRd5v0YmgoNqzkpwUMF.6ANTjh4P/H8LKWtx.2/vkt9Sawmviyu', 0, 1, 1, 2, '2019-11-06 16:31:37', '2019-11-07 09:36:27'),
(86, NULL, '11700586', 'Anis Safitri', '$2y$10$cLnDLL9vFVOYJ10GYRgLBeqwdtkgkHL37Le0Q4TaBi2Mwp8GcZCAC', 0, 1, 1, 2, '2019-11-06 16:31:37', '2019-11-07 08:58:44'),
(87, NULL, '11700587', 'Ardhi Lutfiyansyah', '$2y$10$WNEhHSORlZ5qJdtEPiYMSuEY..8ITUCJ9T2LRfMiAoj.TRSYpyOhC', 0, 1, 1, 2, '2019-11-06 16:31:37', '2019-11-07 09:39:21'),
(88, NULL, '11700593', 'Dwi Novika Septyanni', '$2y$10$6RCIyeq5AuVwvWTRpiEifeIPfWvs1hU8TtebavooskFLI/5pW3gOm', 0, 1, 1, 2, '2019-11-06 16:31:37', '2019-11-07 09:40:03'),
(89, NULL, '11700594', 'Fika Nur Maulidiah', '$2y$10$Dl1McSTwE6AeO1k7siHLtucTs/eqd6PYAObzxMSSAZodEk5CYTPPS', 0, 1, 1, 2, '2019-11-06 16:31:38', '2019-11-07 08:59:12'),
(90, NULL, '11700595', 'Fitria Novianti', '$2y$10$A9hxZv42waZJFJtFschlGeFViCQnI9OxB9Nrcwwa1JC.Fkbt9woge', 0, 1, 1, 2, '2019-11-06 16:31:38', '2019-11-07 11:32:20'),
(91, NULL, '11700598', 'Hana Tri Mahardika', '$2y$10$73yVbMnMdTOFpHeI8tWNCePdMQpTOBaxJQEnAupc4UfzvxKRcgAJC', 0, 1, 1, 2, '2019-11-06 16:31:38', '2019-11-07 08:58:53'),
(92, NULL, '11700599', 'Hiskia Anggi Puji P', '$2y$10$DIqhh3OOSpXRpXbyA4HgiO480Y/z5MORa/cahPRRlRSiXP9pnIedC', 0, 1, 1, 2, '2019-11-06 16:31:38', '2019-11-07 09:53:24'),
(93, NULL, '11700600', 'Iis Sugianti', '$2y$10$LpechfHc5KD0fnU32/8ZdO1HbzAiYdy3TnK4orHmI1/hpcHsoEDo2', 0, 1, 1, 2, '2019-11-06 16:31:38', '2019-11-07 08:59:16'),
(94, NULL, '11700601', 'Imroatul Kamila', '$2y$10$ezgu9FWDbrWKW3ojK4KdUOby8YT3tJanAvuEqFIo3ox5Nl36OxAWW', 0, 1, 1, 2, '2019-11-06 16:31:38', '2019-11-07 09:36:07'),
(95, NULL, '11700602', 'Inggrid Lexsi Quintaniar', '$2y$10$yyiYdj0q.p5.N.Qyz.Tl0OS90alGkSjo0RIWN4xjzx8ifvRxm9oOq', 0, 1, 1, 2, '2019-11-06 16:31:38', '2019-11-07 10:00:33'),
(96, NULL, '11700603', 'Intan Syah Noor Aini', '$2y$10$PxzGIqbu3X7zLnW4pJChUusCZmsjUHxLH/uSzwrWzHPsVrdlCPlmK', 0, 1, 1, 2, '2019-11-06 16:31:38', '2019-11-07 09:02:17'),
(97, NULL, '11700605', 'Irvan Aldi Pratama', '$2y$10$onXJbuHl/L5NX1T3toZrnuS8bNLcT/fj/OYi6MPrRZjGS1prpPmHi', 0, 1, 1, 2, '2019-11-06 16:31:39', '2019-11-07 09:39:06'),
(98, NULL, '11700606', 'Ischak Abdullah', '$2y$10$SUO.2yiETaD2yrHt6UbjReA2KxhSVrmSJDoqIBLR.Fogr7Kbfh21a', 0, 1, 1, 2, '2019-11-06 16:31:39', '2019-11-07 09:40:41'),
(99, NULL, '11700608', 'Lailya Meily Umma', '$2y$10$F2eCUw7jcronT3iapZESTO.yufmc4MqGAzX9z.KgKfisMLllbkdrG', 0, 1, 1, 2, '2019-11-06 16:31:39', '2019-11-07 09:37:05'),
(100, NULL, '11700610', 'M. Agus Faroqi', '$2y$10$I/TweeQXKsG.H/h5O4.exO7GQVfW6nZkAqgO0Vggfu5ePSMvpBWKi', 0, 2, 1, 2, '2019-11-06 16:31:39', '2019-11-07 09:31:33'),
(101, NULL, '11700611', 'M. Fildan Farokhi', '$2y$10$bqYfrf9.f4i/MRnmD6aCauDPlFLa6MX9NtTMmuT2FYK6rISJf7gN2', 0, 1, 1, 2, '2019-11-06 16:31:39', '2019-11-07 10:35:23'),
(102, NULL, '11700612', 'M. Nur Fahmi Ristiansyah', '$2y$10$m86vQclxfiLHJPKzcRp2LOWmlfybiN9ldK8JHOwXcte2h8rarl8em', 0, 2, 1, 2, '2019-11-06 16:31:39', '2019-11-07 09:31:10'),
(103, NULL, '11700618', 'Muhammad Rizal Pahlevi', '$2y$10$pnHisPK67l/bWeIivrvUzeWA5s39cHBX3FHyJjlph9/gzzq9nxMUG', 0, 1, 1, 2, '2019-11-06 16:31:40', '2019-11-07 09:39:15'),
(104, NULL, '11700622', 'Nor Hidayatul Ulfa', '$2y$10$fynUUScE2NnAszcL9PiuJuwDhKA72cEYe8YgpvNEVDZGQJ6Oak5YO', 0, 1, 1, 2, '2019-11-06 16:31:40', '2019-11-07 08:58:06'),
(105, NULL, '11700624', 'Nurul Fatikhah', '$2y$10$MyVqVbnMuHLGG3FQIAAo0uYLFQb27u5hSWVEokvXKcU0GYDpncgCu', 0, 1, 1, 2, '2019-11-06 16:31:40', '2019-11-07 08:59:15'),
(106, NULL, '11700625', 'Reena Desy Fransisca', '$2y$10$kWJ2.HT6QlguFlrrPvphA.fE4kW9GhuVZkA5/mjq2RrBV8kZox99K', 0, 1, 1, 2, '2019-11-06 16:31:40', '2019-11-07 09:39:33'),
(107, NULL, '11700627', 'Sefyana Wulandari', '$2y$10$7/3b7pmHsev/OYP4iiTwAOB3c29roHTuhfer09RbMBCA1JvNAV4tO', 0, 1, 1, 2, '2019-11-06 16:31:40', '2019-11-07 09:36:26'),
(108, NULL, '11700632', 'Vita Afni Andriyani', '$2y$10$023EgxTOfwa63Ed9slHsbeWQw8O5SzIysPBNsGX9o1eawUdhzAtSW', 0, 1, 1, 2, '2019-11-06 16:31:40', '2019-11-07 09:36:27'),
(109, NULL, '11700634', 'Wiwik Wahyuningsih', '$2y$10$uNQXp98ciimuy27wVTHlTODlTUuj4NuhTVfbipgJxNGeib563gvFu', 0, 1, 1, 2, '2019-11-06 16:31:40', '2019-11-07 08:59:50'),
(110, NULL, '11700638', 'Shinta Melani P', '$2y$10$y9hDH86xMCakRypN69lVz.n3AP9hlX.G2nNDGJHdilladbuCedMXC', 0, 1, 1, 2, '2019-11-06 16:31:41', '2019-11-07 09:39:57'),
(111, '', '11700639', 'Abdulah Afif Al Asrof', '$2y$10$CUGYU1BcyR3WKPAYJMdIwO6tfNNq.hPq2IyXjy9PKI7uEiWucUHqi', 0, 1, 1, 2, '2019-11-06 16:31:41', '2019-11-07 09:39:03'),
(112, NULL, '11700579', 'Ala Maulin Nikmah', '$2y$10$8rolNAvYzMtarnDTk./4OehN25DpZ.V2Im2RpHDUkhXamrU/S3hbm', 0, 2, 1, 2, '2019-11-06 16:31:41', '2019-11-07 09:19:43'),
(113, NULL, '11700581', 'Alif Vienna Melinda', '$2y$10$UeEhcDKV1sPOf/3ATdzVneacH5q5PHZaSqZJtmuBJxsJ3qYnPn4o2', 0, 2, 1, 2, '2019-11-06 16:31:41', '2019-11-07 09:21:30'),
(114, NULL, '11700582', 'Amanda Luthfiana', '$2y$10$Np50xp1W6ribrc8qhWbM7.gdKJiEzjFTpzQRnses8TTYNEX0zAzaK', 0, 2, 1, 2, '2019-11-06 16:31:41', '2019-11-07 09:21:15'),
(115, NULL, '11700588', 'Dawam Al Falah', '$2y$10$X4Gp2N0qe7y02bzZfHY9GeZH0o6MassDozIrspvXsmP8VzcwaG.LS', 0, 2, 1, 2, '2019-11-06 16:31:41', '2019-11-07 09:33:56'),
(116, NULL, '11700590', 'Denai Lovita', '$2y$10$HPDySRYapOEqTJN2.bkOCO8lLhbxnj4yr7I/1eZ7Dh9kX/k4h3v1q', 0, 2, 1, 2, '2019-11-06 16:31:42', '2019-11-07 09:22:02'),
(117, '', '11700591', 'Devi Ahmad Santoso', '$2y$10$W2sQN/M4BamwJRQfLrYIo.OOS6haQYDJAsQgUGtOCOwx.X..LWVba', 0, 2, 1, 2, '2019-11-06 16:31:42', '2019-11-07 09:27:02'),
(118, NULL, '11700592', 'Dwi Elvia Novita Sari', '$2y$10$2lUr1GK9c/6g14/uV3UEGu0aNUGew2AD5doPFU.IyDO0THHwyiCRS', 0, 2, 1, 2, '2019-11-06 16:31:42', '2019-11-07 08:58:58'),
(119, NULL, '11700596', 'Fitriyani Atsna Saidah', '$2y$10$WDl4w44FHfNmTaOLGczbp.0BepgRLb7.rJADwa3FQYuh8xCiIHOqO', 0, 2, 1, 2, '2019-11-06 16:31:42', '2019-11-07 09:21:51'),
(120, NULL, '11700597', 'Galuh Putra Zainata Zein', '$2y$10$PTbBi1nVSHkub7NQqTjOmeQgJStdvBuLqZCJoZn2sykbM/SFC0SDi', 0, 2, 1, 2, '2019-11-06 16:31:42', '2019-11-07 09:22:35'),
(121, NULL, '11700604', 'Irfan Yusuf', '$2y$10$Fyh2/hqcgLi5weH.0X4Ra.cHhhllioVqmDONLirAmOKz5djK12NAK', 0, 2, 1, 2, '2019-11-06 16:31:42', '2019-11-07 09:23:07'),
(122, NULL, '11700607', 'Kiki Viola Sutra', '$2y$10$.MIol/g4FfRkmrmQC6XireqDAq2SP9BQhVHC6YZkejP3oH35ri0dS', 0, 2, 1, 2, '2019-11-06 16:31:43', '2019-11-07 09:28:25'),
(123, NULL, '11700609', 'Lukman Nur Hakim', '$2y$10$hNS5eu477aI4FZgAkFkEbu7ZRg.s4iQvsj.2yM5/dlrRp7ZZnDQoS', 0, 2, 1, 2, '2019-11-06 16:31:43', '2019-11-07 09:22:21'),
(124, NULL, '11700613', 'Maulana Manice', '$2y$10$dEdJA0h0kJO0v0gFN1dh8eWBwBJNyDFm6GSdoWCnTHIamzfkXYpnO', 0, 2, 1, 2, '2019-11-06 16:31:43', '2019-11-07 09:30:53'),
(125, NULL, '11700614', 'Maulida Ainur Rahmatika', '$2y$10$XCYzIGUqP4ydFqfS.nt3k.rFmqDGjuVIKRzIuuALy57Q.zrQ6XprW', 0, 2, 1, 2, '2019-11-06 16:31:43', '2019-11-07 09:26:39'),
(126, NULL, '11700615', 'Meyza Pradita Putri', '$2y$10$urK/cOMvN17hisp7zcVt7uEC8eNgT.i6S0tGMiOYXaTT807CcTKwu', 0, 2, 1, 2, '2019-11-06 16:31:43', '2019-11-07 09:24:24'),
(127, NULL, '11700616', 'Miftakhus Sururi', '$2y$10$am1rqsIsWnTY4GXsoLG7BOnJiQGy3mXK47xGodtzT0gZeR0yQkdM6', 0, 2, 1, 2, '2019-11-06 16:31:43', '2019-11-07 09:27:35'),
(128, NULL, '11700617', 'Muhammad Kamalludin', '$2y$10$.zgXPtdrjYTI92css71NlOH2M6IFx32AmdvJI7/pOm5svtWQZhJ9q', 0, 2, 1, 2, '2019-11-06 16:31:43', '2019-11-07 11:12:57'),
(129, NULL, '11700619', 'Nadia Oktaviana', '$2y$10$3H9Uhd.0fHt.J00kT/zUyObhrsoRWXzDpeWFbpKnSDi6plXrgZ0Ay', 0, 2, 1, 2, '2019-11-06 16:31:44', '2019-11-07 09:24:50'),
(130, NULL, '11700620', 'Nadia Kamila Putri', '$2y$10$oY.k5uUo2F7RDUl4cy0rceUjpTrWmFTlp2LQR1oOqJq935YTT0Ory', 0, 2, 1, 2, '2019-11-06 16:31:44', '2019-11-07 09:24:20'),
(132, NULL, '11700623', 'Nur Laila Dwi Rahayu', '$2y$10$ooLuq8LGII77BXZr8JLkn.kJL2e/9wtugTte/4mSqpEE8DbqlZyoG', 0, 2, 1, 2, '2019-11-06 16:31:44', '2019-11-07 09:23:34'),
(133, NULL, '11700628', 'Shierly Auliya Millatina Ulya', '$2y$10$2rlNxnRicSV22d/uw1ESmODCrRmhazPHA6QRzDXNMVECJY2kgRgce', 0, 2, 1, 2, '2019-11-06 16:31:44', '2019-11-07 09:24:47'),
(134, NULL, '11700629', 'Tegar Miftaqur R', '$2y$10$wO86nKfYcUuBodPebyxlzeUrctUmBENPUxtzZd6RkgKilvSjOpYNq', 0, 2, 1, 2, '2019-11-06 16:31:44', '2019-11-07 09:09:45'),
(135, NULL, '11700630', 'Tika Nur Awalina S', '$2y$10$UluEg0f2wQlzTyfIFj6c.es3/Lq305zNu.Pow8VDiKZg1tz.uGsiO', 0, 2, 1, 2, '2019-11-06 16:31:45', '2019-11-07 09:27:17'),
(136, NULL, '11700631', 'Virra Ayu Hendrawati', '$2y$10$0wsYvme2EwG6d6vqT78c2e8UCzpRS0zsyYlK.AG/FtxBE16fKRlky', 0, 2, 1, 2, '2019-11-06 16:31:45', '2019-11-07 09:01:43'),
(137, NULL, '11700633', 'Wahyu Yogi Pratama', '$2y$10$yxZIPibALIilYma5gkOZe.DOUzYvof9.lHGx6CnXSHmg9KM/mFR76', 0, 2, 1, 2, '2019-11-06 16:31:45', '2019-11-07 09:27:49'),
(138, NULL, '11700635', 'Yazid Setiyawan', '$2y$10$4PJuERfaYQBBrukAsCChL./ASs342Gs5.kIfcJn/5duT6Kzbr4S52', 0, 2, 1, 2, '2019-11-06 16:31:45', '2019-11-07 09:27:00'),
(139, NULL, '11700636', 'Yohan Prasetyo', '$2y$10$b091KHInLbY91z37Jum9DeYcyIpBcDavRDqwIMBTHZphFfWEqMLxm', 0, 2, 1, 2, '2019-11-06 16:31:45', '2019-11-07 09:30:47'),
(140, NULL, '11700637', 'Zuli Atun', '$2y$10$UupUpjkpSrSm0ZmZeV5Q0.qcbfMloBUywjjNAnfmFoUNMMfKFmpnq', 0, 2, 1, 2, '2019-11-06 16:31:45', '2019-11-07 09:27:42'),
(141, NULL, '11700640', 'Atika Fia Nanda', '$2y$10$bFygxyEGL3Arr3pv/.SF5OLVVCrqQCxtaxy6Mqg6Wn9vnZMGML/Iq', 0, 2, 1, 2, '2019-11-06 16:31:45', '2019-11-07 09:24:42'),
(142, '', '11900716', 'Agung Prambudya Kusuma', '$2y$10$LG2bZxH0HB6q7EGzaTBTGOqNmafyHB3ERM46E8zXJ.jjXiJjS2uOy', 0, 6, 1, 2, '2019-11-06 16:31:45', '2019-11-07 11:42:32'),
(143, NULL, '11900717', 'Agustina Dela Puspita', '$2y$10$9RupcRUeHqY3sT.L6o9k8.aE7gFEPDuFGla2Nza5yM3wDtuzmGmUK', 0, 6, 1, 2, '2019-11-06 16:31:45', '2019-11-07 11:36:35'),
(144, NULL, '11900718', 'Ahmad Dzaky Sahizidan', '$2y$10$FjAQqNvlSrjtk0T23lUfL.J.GcUY9ldcloUV2Sa06zKzqKixgGGqO', 0, 6, 0, 2, '2019-11-06 16:31:46', NULL),
(145, NULL, '11900719', 'Ahmad Muhtafi', '$2y$10$2M5MDXcN2RNUiZ7HlEoak.J2O1.Sh7CFfGVs6.fAEVC05AIAdz3gS', 0, 6, 1, 2, '2019-11-06 16:31:46', '2019-11-07 08:57:08'),
(146, NULL, '11900720', 'Ahmad Rifqi Suharto', '$2y$10$ULTb8vDQ.oJPIphrmPmeBe8W52bK3y4cKDmP6HvO4xgkCqkQDedcO', 0, 6, 1, 2, '2019-11-06 16:31:46', '2019-11-07 11:34:47'),
(147, NULL, '11900721', 'Ahmad Saifun Abid', '$2y$10$RozE7C/ST6KTPPkMSlhsHu4pbSQhCaWBkXxyQUz43DC1ZWngj1wXq', 0, 6, 1, 2, '2019-11-06 16:31:46', '2019-11-07 12:39:46'),
(148, NULL, '11900722', 'Alfin Rizka Ryansyah P.', '$2y$10$TasHCokJ30Xdis2e2Ao4EuNDv6vzHFn61kgDYoVu/zSMOVCm0/DMG', 0, 6, 1, 2, '2019-11-06 16:31:46', '2019-11-07 11:34:32'),
(149, NULL, '11900723', 'Alivia Wizarotul Alya', '$2y$10$B6Di7zWr7ltDFftzhkaT2Ouzi4JeY7GOlW0igiDeye7Rzsv2S1rUW', 0, 6, 1, 2, '2019-11-06 16:31:46', '2019-11-07 11:37:22'),
(150, NULL, '11900724', 'Aprilina Ariyanti', '$2y$10$kBxBvQFOI5PbRANNiIoxCeIgAErxO8B8iY1lY755DMCVbJjJnIXky', 0, 6, 1, 2, '2019-11-06 16:31:46', '2019-11-07 09:02:48'),
(151, '', '11900725', 'Ardhan Hasyim Ashari', '$2y$10$h.XbvWI8kIeh2gq8v4DiYeyDlpWjGUqFiQG/D4Xj4LSrzQtXw.VtC', 0, 6, 1, 2, '2019-11-06 16:31:46', '2019-11-07 11:37:15'),
(152, NULL, '11900726', 'Bondan Arif Jatmiko', '$2y$10$uIpJBucnANojUpBbAtUCNOjASaSWNbwQiDVvWjCqvBQrN9kBkjAli', 0, 6, 1, 2, '2019-11-06 16:31:47', '2019-11-07 12:45:52'),
(153, NULL, '11900727', 'Dhea Natalia Kumalasari', '$2y$10$ASWCxEtB/3.9Pm9KUUY6geBBKRr9vKOKis3LYUAueu81mYJqyz9em', 0, 6, 1, 2, '2019-11-06 16:31:47', '2019-11-07 13:13:53'),
(154, NULL, '11900728', 'Dony Setiyawan', '$2y$10$Pf70vIvK/FWlMTFx4De.C.blwFvVQ5Rv2fe0FNXhVvSAT6vYjkfUq', 0, 6, 0, 2, '2019-11-06 16:31:47', NULL),
(155, '', '11900729', 'Erza Putra Jusian', '$2y$10$5QdyRJRB1IikPrPiqW3U4.ooSsLnoFWoSSTA/T9Rsgn1Fk8/JBNtm', 0, 6, 1, 2, '2019-11-06 16:31:47', '2019-11-07 11:04:41'),
(156, NULL, '11900730', 'Fitri Nurhayati', '$2y$10$h2/RWWMEgzcJ5PsmzbZVPutpN4NCdIxu5CoUJ6Sc71K/P.Y.pCV.q', 0, 6, 1, 2, '2019-11-06 16:31:47', '2019-11-07 12:40:22'),
(157, NULL, '11900731', 'Galant Wahyu Isma Adilogo', '$2y$10$NZ096ORlRrZ9Hbyr45pZY.hkIv5SUAcccmP7g/tTEPfg.Gn.zsT9m', 0, 6, 1, 2, '2019-11-06 16:31:47', '2019-11-07 12:35:23'),
(158, NULL, '11900732', 'Ilham Fadhilatul M.', '$2y$10$59B35RwpulwTzZsqdhq65ej8kZz3itWevX1RrAOF8EwRnOpkBL6SC', 0, 6, 1, 2, '2019-11-06 16:31:47', '2019-11-07 11:41:30'),
(159, NULL, '11900733', 'Imanuel Made Putra', '$2y$10$QJhFzrXhkUU4er/aD2wmnOgBadbLUQIMyPJiPP1o8NaBJ6N7r7q9q', 0, 6, 1, 2, '2019-11-06 16:31:48', '2019-11-07 11:35:11'),
(160, NULL, '11900734', 'Irfan Maulana', '$2y$10$u1IulsvPH4lFitVakp9LTeU.u/UiUWWV0jkREOZPp.lyK4l/bQ04q', 0, 6, 1, 2, '2019-11-06 16:31:48', '2019-11-07 13:15:05'),
(161, '', '11900735', 'Jeny Koestanti', '$2y$10$/8dn7Zn5X7OBRlW8L6B8U./n5mSErmHtDsz1ijIhAoOmdvgTwT4TS', 0, 6, 1, 2, '2019-11-06 16:31:48', '2019-11-07 11:39:33'),
(162, NULL, '11900736', 'Jesica Ari Pramesti', '$2y$10$/IamxqzP3fnkWMkyv5JPsOX.HnuWNHiCEl91xjBGsdc88iQcM7y7G', 0, 6, 1, 2, '2019-11-06 16:31:48', '2019-11-07 11:35:06'),
(163, NULL, '11900737', 'Kholis Luthfiah', '$2y$10$5xF3chx1PGpuCkMzZkUc0uMhWseSCV.yoWINaEaQpVnzs60/cSi4.', 0, 6, 1, 2, '2019-11-06 16:31:48', '2019-11-07 12:38:48'),
(164, NULL, '11900738', 'Lita Afifatul Atiqoh', '$2y$10$jcBjibM2spXPpfTuzRKJ0eKCe99DDdnT6hQ/QJK6bXt65spOxF1Q6', 0, 6, 1, 2, '2019-11-06 16:31:48', '2019-11-07 12:39:48'),
(165, NULL, '11900739', 'Lusi Revita', '$2y$10$BiW784X/dwPrzm1Nh/y6A.loUi2Dwo32kUnj4vefrvAVF/V7rV4..', 0, 6, 1, 2, '2019-11-06 16:31:48', '2019-11-07 12:41:34'),
(166, NULL, '11900740', 'Mahbub Asrofi', '$2y$10$.b0Fp8qXDY03yvUogC.ib.xCU8x5RvrG21LLJKXwNsf9mXeTROrGe', 0, 6, 0, 2, '2019-11-06 16:31:48', NULL),
(167, NULL, '11900741', 'Maulana Naufal Aulia', '$2y$10$Qx6LSU1FQItgMx7iYPCuxurQkHon9vhuZw5zJhyDWirzX6jQOr.rC', 0, 6, 0, 2, '2019-11-06 16:31:49', NULL),
(168, NULL, '11900742', 'Maulana Raul Ediansyah', '$2y$10$oYvhVmso7Ci/cu9qWu4bMeA5gZ19QeV4DnC5A839nl27Zy5gcXflW', 0, 6, 1, 2, '2019-11-06 16:31:49', '2019-11-07 12:45:30'),
(169, NULL, '11900743', 'Muftikhatur Rohmah', '$2y$10$ijVUtxIgFWVQuxi59TzTZ.aXaZ3W2ntZKI412Zfxu9fWlIXHK8BLW', 0, 6, 1, 2, '2019-11-06 16:31:49', '2019-11-07 12:35:37'),
(170, NULL, '11900744', 'Muhammad Akbar Hananto', '$2y$10$yytIk/cUQQg3uJjJruJn5OSoPlUCOlDPHs93QMOqQ626cFNToWUSy', 0, 6, 1, 2, '2019-11-06 16:31:49', '2019-11-07 12:42:59'),
(171, NULL, '11900745', 'Muhammad Alvin Nugraha', '$2y$10$Tx8VgvZ8aIj7SjMjtC0He.QObDvPYPJ4EcHxN07kNbGpgpTvqvVuC', 0, 6, 0, 2, '2019-11-06 16:31:49', NULL),
(172, NULL, '11900746', 'Muhammad Febri Maulana', '$2y$10$DxwzZocW/JO3NxKBvTo1COnJ3ph01QEObeEnudFvy7HqgwKK8bg0G', 0, 6, 1, 2, '2019-11-06 16:31:49', '2019-11-07 11:37:50'),
(173, '', '11900747', 'Muhammad Roqiib', '$2y$10$1rvq.jyNwClDgj20NH1CDeLa0cENvFZKUPC3LdYS4V8Gt584xDPMm', 0, 6, 1, 2, '2019-11-06 16:31:49', '2019-11-07 11:06:02'),
(174, NULL, '11900748', 'Muhammad Zidane Juli Rahayu', '$2y$10$q6YluXqvXlNQOqusQZmvCeDJOwZBQyIhlwZkMdTJDWanbxy9Kn8fO', 0, 6, 1, 2, '2019-11-06 16:31:50', '2019-11-07 11:38:45'),
(175, NULL, '11900749', 'Nolan Agustian Arega', '$2y$10$bBjjrpaoNkebvBOJExuiZuU4YYbMpyd5ZdBMDW4t.E4kQPe1Lnc4q', 0, 6, 1, 2, '2019-11-06 16:31:50', '2019-11-07 12:45:38'),
(176, NULL, '11900750', 'Nurul Ci\'ani', '$2y$10$xZKp0tR7zOJfZ39p27UCpOJT0Q/aLmU/BfW0ow4p9AnnH9irD8mfe', 0, 6, 1, 2, '2019-11-06 16:31:50', '2019-11-07 11:35:38'),
(177, NULL, '11900751', 'Putri Aridhatul Fatmawati', '$2y$10$1XkxMHkHjpFqSNCgDAiP5.lYAx0DQXSUV0r0LKTE9um.mNPGCHrIi', 0, 6, 1, 2, '2019-11-06 16:31:50', '2019-11-07 12:42:14'),
(178, NULL, '11900752', 'Putri Dinda Irfana', '$2y$10$GmX4a1sF.GFDq4SKYsKaR.1S3YxbZ8jBvrfpsj8qr1Ninqi3uLd2G', 0, 6, 1, 2, '2019-11-06 16:31:50', '2019-11-07 12:40:28'),
(179, NULL, '11900753', 'Putri Maradila Azzahra', '$2y$10$4p2dl7HRHQ4PjQjNNboAdO9y7d.tRr0rmj1bCKR9HXW8ll9l/5ozO', 0, 6, 1, 2, '2019-11-06 16:31:50', '2019-11-07 11:34:13'),
(180, NULL, '11900754', 'Reza Ardy Ivanuha', '$2y$10$dD/zVh4vLSTJn3NgsJlHduJantjrVso3ESIwF9TjV9Egr2gUR2y/C', 0, 6, 1, 2, '2019-11-06 16:31:51', '2019-11-07 11:37:44'),
(181, NULL, '11900755', 'Ricko Maulana', '$2y$10$EFAdpnXtWsRnsQXUJG1niuYf4HURcAy6p.3Js/j2Ue2aIu7c.QgAe', 0, 6, 1, 2, '2019-11-06 16:31:51', '2019-11-07 12:42:16'),
(182, NULL, '11900756', 'Riko Afif Affandi', '$2y$10$6cJ6lLv09/flwITeL56ihePWmV5rBLrYGUJiaFjBW5TZxscRUkkpa', 0, 6, 0, 2, '2019-11-06 16:31:51', NULL),
(183, NULL, '11900757', 'Riski Ananda (afk)', '$2y$10$jDxyCEIzWlbIbz/R3H1MNu7kr7KkM8qmRB8vC8qXgr6GH7fuq81NG', 0, 6, 1, 2, '2019-11-06 16:31:51', '2019-11-07 12:45:33'),
(184, NULL, '11900758', 'Saari Afiatun Rodzifah', '$2y$10$jLH.7TO3gp2QjanG7yyQAuSyIaRU7ZKGSBc3Xmy.op0Y/VznW3/dW', 0, 6, 1, 2, '2019-11-06 16:31:51', '2019-11-07 11:35:56'),
(185, NULL, '11900759', 'Safira Saharani', '$2y$10$XJ6l7r9vcorOMACbeNcIne9XmSybhVkISmMzljqix2XjsHkHu316K', 0, 6, 1, 2, '2019-11-06 16:31:51', '2019-11-07 12:45:37'),
(186, NULL, '11900760', 'Salsa Ayu Widya Putri', '$2y$10$MVqHTiIwPa/Mc7usfJ0U4uM2P7GPpCE8scsNwCRlWKCtEfyOdmRrm', 0, 6, 1, 2, '2019-11-06 16:31:52', '2019-11-07 12:41:07'),
(187, NULL, '11900761', 'Selly Novita Sari', '$2y$10$zcJ.WcOj0tUPCY1fQ6AMOu2ed5BjQlo6RCZzt5Ye0VCcb8At5vH2K', 0, 6, 1, 2, '2019-11-06 16:31:52', '2019-11-07 11:35:46'),
(188, NULL, '11900762', 'Setiya Khanifatun Nikmah', '$2y$10$D1nqixn72RX3O/MBtRNPeulS1JftjVyW.Cdsk.XkXeqZMQoelKcwG', 0, 6, 1, 2, '2019-11-06 16:31:52', '2019-11-07 12:39:09'),
(189, NULL, '11900763', 'Shela Desy Arifiani', '$2y$10$cbohaNvB9t66f4GokFxKFuQCMWMA84kwGUc/sMlryyDE8N2D6nYpu', 0, 6, 1, 2, '2019-11-06 16:31:52', '2019-11-07 12:35:50'),
(190, '', '11900764', 'Silvi Yunita Sari', '$2y$10$MbL.Z8iXPbaLfEEg4dbeIu8UW1Av3cjX6PlkGTC372UKiQbOI5dca', 0, 6, 1, 2, '2019-11-06 16:31:52', '2019-11-07 11:42:39'),
(191, NULL, '11900765', 'Sucipto Mulyo', '$2y$10$OjoKtryi.HOzMbpChdoW9.HVDBVTbPK0GWNBtec35HT9F0VyP3n3a', 0, 6, 1, 2, '2019-11-06 16:31:52', '2019-11-07 12:46:38'),
(192, NULL, '11900766', 'Syaiful Backtiar', '$2y$10$6kUbNx.sK.bAweAXoyY3Puh0U5zjyUrhJqkoRwA1V6KgdHfN03C2W', 0, 6, 1, 2, '2019-11-06 16:31:53', '2019-11-07 11:38:13'),
(193, NULL, '11900767', 'Talita Yuna Fusfita', '$2y$10$NXjtDIWcAEgFzBJKbti6KO767Zi.dW70oLM72xQQHYuYAH1EpGHue', 0, 6, 1, 2, '2019-11-06 16:31:53', '2019-11-07 12:36:00'),
(194, '', '11900768', 'Vemas Septiyan Aldy', '$2y$10$EUIJ6bOrSK4k9aRIdghpcuWVDYkoRtMhPs.NzwO1J03kH.6r/Q0UC', 0, 6, 1, 2, '2019-11-06 16:31:53', '2019-11-07 11:38:07'),
(195, '', '11900769', 'Veronicha Novisha R.', '$2y$10$0LzDLvTmN62biveqnIqQjeX3sRhTguiHW47/POzILbqa5yMyL0AVO', 0, 6, 1, 2, '2019-11-06 16:31:53', '2019-11-07 11:38:22'),
(197, NULL, '11900771', 'Virananda Silvia A.', '$2y$10$f/jGAY0FbbvG5m9a.JBqPeiX4DdTBiiZ37TSJ7A8NfBdG8QLUXBNW', 0, 6, 1, 2, '2019-11-06 16:31:54', '2019-11-07 11:39:03'),
(198, NULL, '11900772', 'Widya Setyanintyas', '$2y$10$tYHZuycUf03eyr4Mn1TAbuw757RBQ6wU8r1A5ZNZvSkNqieqiF5ki', 0, 6, 1, 2, '2019-11-06 16:31:54', '2019-11-07 12:37:47'),
(199, NULL, '11900773', 'Wilda Zahrotul Mustafida', '$2y$10$XMHx1p9U5KUoJJPzxSTLqOg5v6f1GeRFLhlMKsGcHopsQrnaDfVeG', 0, 6, 1, 2, '2019-11-06 16:31:54', '2019-11-07 12:41:13'),
(200, NULL, '11900774', 'Wulan Febrianti', '$2y$10$TQGEtmNXKOac8/KGT5hhxe0L9Q3rJXN.RBM3IwOb/CenFIsTV3SHi', 0, 6, 1, 2, '2019-11-06 16:31:54', '2019-11-07 12:38:40'),
(201, NULL, '11900775', 'Yovanda Adi D. S.', '$2y$10$yxPlaMQXJ24kmoxaByNIX.WE3HiS4mayYMGEGCfxH3jkHHqMgJpoK', 0, 6, 1, 2, '2019-11-06 16:31:54', '2019-11-07 12:43:17'),
(202, NULL, '11900776', 'Zakiyana Nur Fathona', '$2y$10$a1ajX0oGgWKC1sDuQ7kFiOhQMC0X2MUqXzqlL4LBqKwiGvdxNzGyy', 0, 6, 1, 2, '2019-11-06 16:31:54', '2019-11-07 12:43:19'),
(203, '', 'jaelani', 'Jaelani', '$2y$10$elLJrMzwsaCx85AJYif3euSPW9DQGHzWX4GTIwCGiOTHp5BDF.KX6', 2, NULL, 0, 2, '2019-11-06 16:33:15', '2019-11-06 21:43:06'),
(204, '', 'sofa', 'Sofa', '$2y$10$r8hZ3AKQN8M1ybsW2f1/G.4.oreymdRiJRcgX/8H9HkzaCJDFd1mC', 2, NULL, 1, 2, '2019-11-06 16:33:42', '2019-11-07 11:10:21'),
(205, '', 'said', 'Ahmad Said', '$2y$10$sG8t4cvDnwWEfWVtMCNMFOsHf.Io4p/Lhz9hy5E/iE2o2E1lujq.a', 2, NULL, 1, 2, '2019-11-06 20:25:12', '2019-11-07 09:42:12'),
(206, NULL, 'jannah', 'Siti Nur Jannah', '$2y$10$MD./1exERB4YGmlTW9i1VekQa2iBaP7iSaNqa1HNQ5T47LcfwYDDW', 2, NULL, 1, 2, '2019-11-06 20:26:36', '2019-11-07 15:57:33'),
(207, NULL, 'zia', 'Kholida Zia Hayati Nufus', '$2y$10$z.QE.8Js/bl2U5tvlAW8iOBKPnYLpBVYMlatI9dalqPW/OZiDmQeO', 2, NULL, 1, 2, '2019-11-06 20:27:17', '2019-11-07 11:37:41'),
(208, NULL, 'wanto', 'Wanto', '$2y$10$Cs9OtqWwqpvOGMfG/V9PEu1ee9s6sHFP3dwvZsxpgQWMAPLkJufv.', 2, NULL, 0, 2, '2019-11-06 20:27:42', NULL),
(209, NULL, 'jono', 'Jono', '$2y$10$EYhHn3tERrXJ3Q0S6yXvoOOYo.ci9foKKphO7I6LSI4MuR4j5vDiS', 2, NULL, 0, 2, '2019-11-06 20:27:54', NULL),
(210, NULL, 'rat', 'Mak Rat', '$2y$10$I3HeYJNqaoovGcDsY2nWR.DnNjkzr/RIcLmi0M4aMr8rJTjLX0WqC', 2, NULL, 0, 2, '2019-11-06 20:28:06', NULL),
(211, NULL, 'A', 'Sholikhin, S. Ag', '$2y$10$oe4wjGm2/Ui7C1CqHGMr1.MLlGBzmGQkf7uvKlJwa1po.fcqU1lbi', 1, NULL, 0, 2, '2019-11-06 20:44:07', '2019-11-07 15:48:39'),
(212, NULL, 'B', 'Sutipah, S. Pd', '$2y$10$oDFASXOcngmjch9GQrsYnudSsm1ITVEP6dhyJcNK7DfCr5ly3/vMy', 1, NULL, 1, 2, '2019-11-06 20:44:07', '2019-11-07 10:36:31'),
(213, NULL, 'C', 'H. Heru Risnanto, S. Pd', '$2y$10$w.lfvTgnNlz/Np9IT8DfjewTidt5womLkiQqHWAC14c0VYUl0JaZS', 1, NULL, 1, 2, '2019-11-06 20:44:07', '2019-11-07 09:44:44'),
(214, NULL, 'D', 'Nova Farida Laili, S. Ag', '$2y$10$Mehs8V7mbhMhVdeeH4LKoegfNJM2pkNIcD4AZu2LmbTWkw5xHIryC', 1, NULL, 1, 2, '2019-11-06 20:44:07', '2019-11-07 09:45:36'),
(215, NULL, 'E', 'Zainal Arifin, S. Pd', '$2y$10$E.iGEongI6XBDNqCLsQeQuv0R4nXrLtA1jzTpwAthah1x6nkO0TzO', 1, NULL, 1, 2, '2019-11-06 20:44:07', '2019-11-07 10:39:21'),
(216, NULL, 'F', 'Muhammad Jamaludin Arizak, S. Pd', '$2y$10$fCzRdI8oMPJASxQ0qF8w..z/LT/JOX/XmYn1FSqpq5M/C7q1IbiGW', 1, NULL, 1, 2, '2019-11-06 20:44:07', '2019-11-07 09:55:06'),
(217, NULL, 'G', 'Fuad Budi Arisandi, S. Kom', '$2y$10$mN1lt1XP07z8oTv05KrI6uA1eXjBWZl.ze80U99zJccuiOmyxTBoC', 1, NULL, 0, 2, '2019-11-06 20:44:07', '2019-11-06 20:45:58'),
(218, NULL, 'H', 'Arismanto, S. Pd', '$2y$10$331lIkyxA96Lf0UQnASgk.IP8g3tQzZsOjfhBoKTeRJ6El8fuRvIG', 1, NULL, 1, 2, '2019-11-06 20:44:07', '2019-11-07 09:11:47'),
(219, NULL, 'I', 'Joko Agung Sayuto, S. Kom', '$2y$10$/kRNDm/JLmryWkgBi.h83uN7rp5aCf4UzLLbdxSJ0BKY3B4ckQbZy', 1, NULL, 1, 2, '2019-11-06 20:44:08', '2019-11-07 10:27:25'),
(220, NULL, 'J', 'Mufarih Niam, S. Pd', '$2y$10$Hx1K2iv/A4ztj9W6z2XShekUVabp71Gce5CA7PwyF7vgRtqUQ92ZS', 1, NULL, 1, 2, '2019-11-06 20:44:08', '2019-11-07 09:12:30'),
(221, '', 'K', 'Etydyah Impun T.p, S. Pd', '$2y$10$1SrmTORNU5tX69dy2m27NeEeSu591KtSVVM1sZ3hMyLKggIxmnTcu', 1, NULL, 1, 2, '2019-11-06 20:44:08', '2019-11-07 09:46:56'),
(222, NULL, 'L', 'Samahir Migdadiyyah, S. Pd', '$2y$10$ddShhpyE8.2LDCZQp7RGT.xYqU5Fj5v2GmQUaBcqQkY/vnBXL0dSa', 1, NULL, 1, 2, '2019-11-06 20:44:08', '2019-11-07 09:40:46'),
(223, NULL, 'M', 'Nisfu Alfamaroh, S. Pd', '$2y$10$E5hciz52e9MpTgUR946N/en3XmEfRPOY4O9g6ejVsqAhas27XgZ0a', 1, NULL, 0, 2, '2019-11-06 20:44:08', '2019-11-06 20:45:58'),
(224, NULL, 'N', 'Ainur Rizqi Kurniasari, S. Pd', '$2y$10$c5r/iyADdabWtA4M9df/CuFZlgBsaZHPyC9nkhM5iJYh3rJBdLQIK', 1, NULL, 1, 2, '2019-11-06 20:44:08', '2019-11-07 10:46:56'),
(225, NULL, 'O', 'Sunandar, S. Pd.i', '$2y$10$LZGBZqyMwP7Q.AI2S6b48..DovZUa98Ks7LxdS6k3xdyb1Bt8b6W6', 1, NULL, 1, 2, '2019-11-06 20:44:08', '2019-11-07 10:46:29'),
(226, NULL, 'P', 'Ahmad Pariyono, S. Pd', '$2y$10$MPliox/8CSlgUvlEvdQfJ.H4Avbx4m8nnjTaFDbgez0eZ36KcOOt.', 1, NULL, 1, 2, '2019-11-06 20:44:09', '2019-11-07 09:09:34'),
(227, NULL, 'Q', 'Dodhy Eko Setiawan, S. Pd', '$2y$10$K.93hcqdLle8QQyfsf7NJOi7xbnGKiRIsBxgtzFDukPtwhxya71Rq', 1, NULL, 1, 2, '2019-11-06 20:44:09', '2019-11-07 09:47:22'),
(228, NULL, 'R', 'Heru Masadi, S. Kom', '$2y$10$Hukn7FcQwyPVWlyAD9fXNOEyuQovIj554tpT.z5nRWTBP.Aom4jdm', 1, NULL, 1, 2, '2019-11-06 20:44:09', '2019-11-07 09:13:13'),
(229, NULL, 'S', 'Sugeng Ariyadi, S. Pd', '$2y$10$juvZZ0T6i0CnS/0TmJ45wO27BAXWPG4DL6NuzpoFYmyWWubpfXnNK', 1, NULL, 1, 2, '2019-11-06 20:44:09', '2019-11-07 09:14:00'),
(230, NULL, 'T', 'Sofiatun, S. Pd', '$2y$10$dZYOXuo5LEQHvRraN9O7vu0NPSS7TcyNIAZzcm7ZauFMXbzCdX6ja', 1, NULL, 1, 2, '2019-11-06 20:44:09', '2019-11-07 10:46:01'),
(231, NULL, 'U', 'Maulida Fitriana, S. Pd', '$2y$10$A47TcgCnnFm7RU7NmYi7xOZoiDzsg7LUaREJ/Q7jbY8PdG.mRaPg.', 1, NULL, 1, 2, '2019-11-06 20:44:09', '2019-11-07 10:45:29'),
(232, NULL, 'V', 'Kristin Mila Sari, S. Kom', '$2y$10$sg2OrrMx4FPVGmrCk7o1z.je3Tz9WlpSkCVGfQwaFSFtyUGFqCe16', 1, NULL, 1, 2, '2019-11-06 20:44:10', '2019-11-07 09:10:49'),
(233, NULL, 'W', 'Muhammad Ilham Syafi\'i', '$2y$10$7enqxtrkkhvixcZOa/6yVOLfRWHs0DU5NPKU1cxn5a6WyAAm26BKS', 1, NULL, 1, 2, '2019-11-06 20:44:10', '2019-11-07 11:42:34'),
(234, NULL, 'X', 'Ifan Setiawan', '$2y$10$dfIR.RrrNEYQG50TBBQcD.6oZa0b0X4vSDLIhHdHUzLnOoJtnxIpS', 1, NULL, 1, 2, '2019-11-06 20:44:10', '2019-11-07 09:12:46'),
(236, 'guru@gmail.com', 'a1', 'Zulita Fatma Sari', '$2y$10$Mtsi0oEu9gX7VWb15EJqhOo2/XMOFuPLnSzl8zJkpL7b9BBDOrh1C', 1, NULL, 1, 2, '2019-11-07 09:14:37', '2019-11-07 09:15:51'),
(237, 'siswa@pilkatos.tech', '11800711', 'Saputra Bagas', '$2y$10$TaXqa4scSzzxKyocYtVD6uvRarc1NvvAjxpLeCTBUWjtpgK5m6kBK', 0, 4, 1, 2, '2019-11-07 11:22:58', '2019-11-07 11:24:39');

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `path` (`path`);

--
-- Indexes for table `election_data`
--
ALTER TABLE `election_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finance`
--
ALTER TABLE `finance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_background`
--
ALTER TABLE `login_background`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_token`
--
ALTER TABLE `password_token`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `election_data`
--
ALTER TABLE `election_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `finance`
--
ALTER TABLE `finance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_background`
--
ALTER TABLE `login_background`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
