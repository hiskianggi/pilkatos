-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2019 at 12:08 PM
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

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id`, `date`, `time_start`, `time_end`, `title`, `description`, `name`, `file`, `cms_users_id`, `created_at`, `updated_at`) VALUES
(1, '2019-10-14', '10:30:15', '12:30:15', 'Testhrhr', 'hbdhbhrfbfrhfhr', 'jhfbfhbfhfbvf', NULL, 3, '2019-10-14 10:35:52', '2019-10-14 03:45:02'),
(2, '2019-10-15', '06:15:30', '12:15:30', 'Cek 123', 'Cuma Deskripsi', 'Hiskia Anggi Puji Pratama', 'uploads/2019-10/download.jpg', 1, '2019-10-15 06:16:20', '2019-10-15 06:22:53');

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
(1, 'Tegar Miftaqurrohim', 'uploads/2019-09/220px-logo-swiksara.png', 1, 2, '2019-09-24 02:06:49', NULL),
(2, 'Aminuddin Shofi Ashari', 'uploads/2019-09/220px-logo-swiksara.png', 5, 2, '2019-09-24 02:07:14', NULL),
(3, 'Kiki Viola', 'uploads/2019-09/220px-logo-swiksara.png', 6, 2, '2019-09-24 02:07:36', NULL),
(4, 'Hiskia Anggi Puji Pratama', 'uploads/2019-10/220px-logo-swiksara.png', 8, 3, '2019-10-10 05:44:38', NULL);

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
(7, 'X RPL', 2, '2019-09-22 12:20:41', NULL),
(8, 'XII A', 3, '2019-10-03 11:32:13', NULL);

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
(4, 'Password Token', 'password_token', 'PILKATOS.TECH - Undangan Untuk Bergabung', '<!-- ONE COLUMN SECTION -->\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"table-layout: fixed;\">\r\n	<tbody><tr>\r\n		<td bgcolor=\"#ffffff\" align=\"center\" style=\"padding: 70px 15px 70px 15px;\" class=\"section-padding\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"500\" class=\"responsive-table\">\r\n				<tbody><tr>\r\n					<td>\r\n						<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n							<tbody><tr>\r\n								<td>\r\n									<!-- HERO IMAGE -->\r\n									<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n										<tbody>\r\n											<tr>\r\n												<td class=\"padding-copy\">\r\n													<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n														<tbody><tr>\r\n															<td>\r\n																<a href=\"http://alistapart.com/article/can-email-be-responsive/\" target=\"_blank\"><img src=\"https://s3-us-west-2.amazonaws.com/s.cdpn.io/48935/responsive-email.jpg\" width=\"500\" height=\"200\" border=\"0\" alt=\"Can an email really be responsive?\" style=\"display: block; padding: 0; color: #666666; text-decoration: none; font-family: Helvetica, arial, sans-serif; font-size: 16px; width: 500px; height: 200px;\" class=\"img-max\"></a>\r\n															</td>\r\n														</tr>\r\n													</tbody></table>\r\n												</td>\r\n											</tr>\r\n										</tbody>\r\n									</table>\r\n								</td>\r\n							</tr>\r\n							<tr>\r\n								<td>\r\n									<!-- COPY -->\r\n									<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n										<tbody><tr>\r\n											<td align=\"center\" style=\"font-size: 25px; font-family: Helvetica, Arial, sans-serif; color: #333333; padding-top: 30px;\" class=\"padding-copy\">Hai, [name]</td>\r\n										</tr>\r\n										<tr>\r\n											<td align=\"center\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" class=\"padding-copy\"><p>[school] telah megundang Anda untuk bergabung dengan Pilkatos.Tech!</p>\r\n												<p>Pilkatos.Tech adalah sistem pemungutan suara untuk Pemilihan Ketua OSIS yang memudahkan dan memanajemen suara yang masuk. Hanya dalam beberapa menit, Anda dapat menggunakan Pilkatos.tech</p>\r\n												<p align=\"left\">\r\n													Untuk menerima undangan ini, silhkan ikuti langkah - langkah dibawah ini:\r\n												</p>\r\n												<p align=\"left\">\r\n													<b>1. Setting password untuk masuk ke Pilkatos.tech dengan cara klik link berikut:</b><br>\r\n													</p><center>\r\n														<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"responsive-table\">\r\n															<tbody><tr>\r\n																<td align=\"center\"><a href=\"https://app.pilkatos.tech/password-token/[token]\" target=\"_blank\" style=\"font-size: 16px; font-family: Helvetica, Arial, sans-serif; font-weight: normal; color: #ffffff; text-decoration: none; background-color: #5D9CEC; border-top: 15px solid #5D9CEC; border-bottom: 15px solid #5D9CEC; border-left: 25px solid #5D9CEC; border-right: 25px solid #5D9CEC; border-radius: 3px; -webkit-border-radius: 3px; -moz-border-radius: 3px; display: inline-block;\" class=\"mobile-button\">Klik Disini →</a></td>\r\n															</tr>\r\n														</tbody></table>\r\n														<p> Atau Klik Url Dibawah</p>\r\n														<p>\r\n															<a href=\"https://app.pilkatos.tech/password-token/[token]\">https://app.pilkatos.tech/password-token/[token]</a>\r\n														</p>\r\n													</center>\r\n												<p></p>\r\n												<p align=\"left\">\r\n													<b>2. Silahkan login di Website <a href=\"//app.pilkatos.tech/[path]/login\">Pilkatos.tech</a></b><br>\r\n													Username : [username]<br>\r\n													Password : Masukkan password sesuai dengan langkah nomor 1\r\n												</p>\r\n												<p>\r\n													Jika terjadi kendala, silahkan hubungi pusat bantuan kami di whatsapp <b>085712492969</b><br>\r\n													Terimakasih.\r\n												</p></td>\r\n											</tr>\r\n										</tbody></table>\r\n									</td>\r\n								</tr>\r\n							</tbody></table>\r\n						</td>\r\n					</tr>\r\n				</tbody></table>\r\n			</td>\r\n		</tr>\r\n	</tbody></table>', '<p>Pilkatos.Tech adalah sistem pemungutan suara untuk Pemilihan Ketua OSIS yang memudahkan dan memanajemen suara yang masuk. Hanya dalam beberapa menit, Anda dapat menggunakan Pilkatos.tech</p> <p> 1. Setting password untuk masuk ke Pilkatos.tech dengan c', 'Pilkatos.tech System', 'no-reply@pilkatos.tech', '', '2019-10-11 20:04:03', '2019-10-12 09:48:59');

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
(22, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/candidates/add-save', 'Add New Data Tegar Miftaqurrohim at Kandidat', 1, '2019-09-22 13:14:58', NULL),
(23, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/module_generator/delete/18', 'Delete data Background Login at Module Generator', 1, '2019-09-22 13:34:27', NULL),
(24, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', 1, '2019-09-23 09:10:51', NULL),
(25, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', 1, '2019-09-24 00:47:08', NULL),
(26, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/edit-save/17', 'Update data Dashboard at Menu Management', 1, '2019-09-24 00:48:40', NULL),
(27, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/delete/17', 'Delete data Dashboard at Menu Management', 1, '2019-09-24 00:48:55', NULL),
(28, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/add-save', 'Add New Data Dashboard at Menu Management', 1, '2019-09-24 00:49:20', NULL),
(29, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/delete/18', 'Delete data Dashboard at Menu Management', 1, '2019-09-24 00:56:39', NULL),
(30, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/delete/19', 'Delete data Users at Menu Management', 1, '2019-09-24 00:56:47', NULL),
(31, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', 1, '2019-09-24 01:19:25', NULL),
(32, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/client/edit-save/2', 'Update data SMK Wikrama 1 Jepara at Client', 1, '2019-09-24 01:52:20', NULL),
(33, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'admin@crudbooster.com logout', 1, '2019-09-24 01:52:29', NULL),
(34, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'admin@smkwikrama1jepara.sch.id login with IP Address ::1', 2, '2019-09-24 01:52:36', NULL),
(35, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'admin@smkwikrama1jepara.sch.id logout', 2, '2019-09-24 01:53:59', NULL),
(36, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', 1, '2019-09-24 01:54:13', NULL),
(37, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/edit-save/10', 'Update data Data Pemilih at Menu Management', 1, '2019-09-24 01:58:59', NULL),
(38, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/edit-save/20', 'Update data Dashboard at Menu Management', 1, '2019-09-24 01:59:34', NULL),
(39, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'admin@crudbooster.com logout', 1, '2019-09-24 01:59:41', NULL),
(40, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'admin@smkwikrama1jepara.sch.id login with IP Address ::1', 2, '2019-09-24 02:00:08', NULL),
(41, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/candidates/add-save', 'Add New Data Tegar Miftaqurrohim at Kandidat', 2, '2019-09-24 02:06:49', NULL),
(42, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/candidates/add-save', 'Add New Data Aminuddin Shofi Ashari at Kandidat', 2, '2019-09-24 02:07:14', NULL),
(43, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/candidates/add-save', 'Add New Data Kiki Viola at Kandidat', 2, '2019-09-24 02:07:36', NULL),
(44, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'admin@smkwikrama1jepara.sch.id logout', 2, '2019-09-24 02:30:00', NULL),
(45, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', 1, '2019-09-24 02:34:03', NULL),
(46, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/add-save', 'Add New Data Pengaturan at Menu Management', 1, '2019-09-24 02:34:47', NULL),
(47, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', 1, '2019-09-24 07:27:20', NULL),
(48, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost/pilkatos/public/admin/module_generator/delete/23', 'Delete data Golput at Module Generator', 1, '2019-09-24 07:30:35', NULL),
(49, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', 1, '2019-10-01 01:24:48', NULL),
(50, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', 1, '2019-10-01 02:41:21', NULL),
(51, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/student/edit-save/5', 'Update data 11700605 at Siswa', 1, '2019-10-01 02:41:36', NULL),
(52, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', 1, '2019-10-01 23:59:36', NULL),
(53, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/finance/add-save', 'Add New Data 1 at Keuangan', 1, '2019-10-02 01:37:06', NULL),
(54, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/users/edit-save/1', 'Memperbaharui data Admin Pilkatos pada Users', 1, '2019-10-02 08:56:58', NULL),
(55, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'get@hiskia.dev keluar', 1, '2019-10-02 08:57:08', NULL),
(56, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'admin@smkwikrama1jepara.sch.id login dengan IP Address ::1', 2, '2019-10-02 14:42:22', NULL),
(57, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'admin@smkwikrama1jepara.sch.id keluar', 2, '2019-10-02 14:45:19', NULL),
(58, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'get@hiskia.dev login dengan IP Address ::1', 1, '2019-10-02 14:45:29', NULL),
(59, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/settings/add-save', 'Tambah data baru background_login pada Settings', 1, '2019-10-02 14:53:01', NULL),
(60, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'get@hiskia.dev keluar', 1, '2019-10-02 14:59:51', NULL),
(61, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/forgot', 'Seseorang dengan IP ::1 meminta password ulang get@hiskia.dev', NULL, '2019-10-02 15:00:05', NULL),
(62, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'get@hiskia.dev login dengan IP Address ::1', 1, '2019-10-02 15:01:03', NULL),
(63, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/email_templates/edit-save/1', 'Memperbaharui data Email Template Forgot Password Backend pada Email Template', 1, '2019-10-02 15:15:11', NULL),
(64, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'get@hiskia.dev keluar', 1, '2019-10-02 15:15:16', NULL),
(65, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/forgot', 'Seseorang dengan IP ::1 meminta password ulang get@hiskia.dev', NULL, '2019-10-02 15:15:26', NULL),
(66, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'get@hiskia.dev login dengan IP Address ::1', 1, '2019-10-02 15:25:03', NULL),
(67, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'get@hiskia.dev keluar', 1, '2019-10-02 15:28:06', NULL),
(68, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'admin@smkwikrama1jepara.sch.id login dengan IP Address ::1', 2, '2019-10-02 15:28:20', NULL),
(69, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/student/edit-save/1', 'Memperbaharui data 11700599 pada Siswa', 2, '2019-10-02 15:41:23', NULL),
(70, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/student/edit-save/5', 'Memperbaharui data 11700605 pada Siswa', 2, '2019-10-02 15:44:23', NULL),
(71, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/forgot', 'Seseorang dengan IP ::1 meminta password ulang get@hiskia.dev', 2, '2019-10-03 10:59:16', NULL),
(72, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'get@hiskia.dev login dengan IP Address ::1', 1, '2019-10-03 11:01:39', NULL),
(73, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/client/add-save', 'Tambah data baru SMP Negeri 1 Donorojo pada Client', 1, '2019-10-03 11:03:58', NULL),
(74, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/client/edit-save/3', 'Memperbaharui data SMP Negeri 1 Donorojo pada Client', 1, '2019-10-03 11:13:19', NULL),
(75, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/users/edit-save/2', 'Memperbaharui data SMK Wikrama 1 Jepara pada Users', 1, '2019-10-03 11:14:58', NULL),
(76, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/users/edit-save/1', 'Memperbaharui data Super Admin Pilkatos pada Users', 1, '2019-10-03 11:15:24', NULL),
(77, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'get@hiskia.dev login dengan IP Address ::1', 1, '2019-10-03 11:30:39', NULL),
(78, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/class/add-save', 'Tambah data baru XII A pada Kelas', 1, '2019-10-03 11:32:13', NULL),
(79, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'get@hiskia.dev keluar', 1, '2019-10-03 11:33:06', NULL),
(80, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'hiskianggi@gmail.com login dengan IP Address ::1', 3, '2019-10-03 11:33:16', NULL),
(81, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/student/add-save', 'Tambah data baru 11700599 pada Siswa', 3, '2019-10-03 11:33:40', NULL),
(82, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'get@hiskia.dev login dengan IP Address ::1', 1, '2019-10-09 06:33:10', NULL),
(83, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/edit-save/1', 'Memperbaharui data Daftar Sekolah pada Menu Management', 1, '2019-10-09 06:33:39', NULL),
(84, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/edit-save/1', 'Memperbaharui data Daftar Sekolah pada Menu Management', 1, '2019-10-09 06:34:06', NULL),
(85, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/edit-save/8', 'Memperbaharui data Data Pemilih pada Menu Management', 1, '2019-10-09 06:34:25', NULL),
(86, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/edit-save/2', 'Memperbaharui data Siswa pada Menu Management', 1, '2019-10-09 06:34:45', NULL),
(87, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/edit-save/5', 'Memperbaharui data Kelas pada Menu Management', 1, '2019-10-09 06:35:38', NULL),
(88, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/edit-save/6', 'Memperbaharui data Kandidat pada Menu Management', 1, '2019-10-09 06:35:59', NULL),
(89, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/edit-save/23', 'Memperbaharui data Golput pada Menu Management', 1, '2019-10-09 06:36:15', NULL),
(90, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/edit-save/16', 'Memperbaharui data Pengaturan pada Menu Management', 1, '2019-10-09 06:36:29', NULL),
(91, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'get@hiskia.dev keluar', 1, '2019-10-09 06:53:05', NULL),
(92, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'get@hiskia.dev login dengan IP Address ::1', 1, '2019-10-09 06:53:42', NULL),
(93, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'get@hiskia.dev keluar', 1, '2019-10-09 06:53:56', NULL),
(94, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'hiskianggi@gmail.com login dengan IP Address ::1', 3, '2019-10-09 06:54:01', NULL),
(95, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'hiskianggi@gmail.com keluar', 3, '2019-10-09 06:54:13', NULL),
(96, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'admin@smkwikrama1jepara.sch.id login dengan IP Address ::1', 2, '2019-10-09 06:54:24', NULL),
(97, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'admin@smkwikrama1jepara.sch.id keluar', 2, '2019-10-09 06:55:18', NULL),
(98, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'get@hiskia.dev login dengan IP Address ::1', 1, '2019-10-09 06:55:28', NULL),
(99, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/edit-save/10', 'Memperbaharui data Data Pemilih pada Menu Management', 1, '2019-10-09 07:08:43', NULL),
(100, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/edit-save/15', 'Memperbaharui data Siswa pada Menu Management', 1, '2019-10-09 07:08:59', NULL),
(101, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/edit-save/14', 'Memperbaharui data Kelas pada Menu Management', 1, '2019-10-09 07:09:16', NULL),
(102, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/edit-save/12', 'Memperbaharui data Kandidat pada Menu Management', 1, '2019-10-09 07:09:34', NULL),
(103, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/edit-save/21', 'Memperbaharui data Pengaturan pada Menu Management', 1, '2019-10-09 07:09:48', NULL),
(104, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/edit-save/16', 'Memperbaharui data Pengaturan pada Menu Management', 1, '2019-10-09 07:10:22', NULL),
(105, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/delete/24', 'Menghapus data Data Pemilihan pada Menu Management', 1, '2019-10-09 07:12:02', NULL),
(106, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/delete/26', 'Menghapus data Pengaturan pada Menu Management', 1, '2019-10-09 07:12:08', NULL),
(107, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/edit-save/25', 'Memperbaharui data Golput pada Menu Management', 1, '2019-10-09 07:12:24', NULL),
(108, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/add-save', 'Tambah data baru Data Pemilihan pada Menu Management', 1, '2019-10-09 07:13:56', NULL),
(109, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/edit-save/26', 'Memperbaharui data Data Pemilihan pada Menu Management', 1, '2019-10-09 07:24:33', NULL),
(110, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'get@hiskia.dev login dengan IP Address ::1', 1, '2019-10-09 07:40:03', NULL),
(111, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'get@hiskia.dev login dengan IP Address ::1', 1, '2019-10-09 09:30:05', NULL),
(112, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'hiskianggi@gmail.com login dengan IP Address ::1', 3, '2019-10-09 17:09:32', NULL),
(113, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'get@hiskia.dev login dengan IP Address ::1', 1, '2019-10-10 01:18:03', NULL),
(114, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/client/edit-save/3', 'Memperbaharui data SMP Negeri 1 Donorojo pada Client', 1, '2019-10-10 01:19:41', NULL),
(115, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/client/edit-save/2', 'Memperbaharui data SMK Wikrama 1 Jepara pada Client', 1, '2019-10-10 01:19:48', NULL),
(116, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/client/add-save', 'Tambah data baru SMK 1 Ngawur pada Client', 1, '2019-10-10 01:43:15', NULL),
(117, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'get@hiskia.dev keluar', 1, '2019-10-10 01:51:27', NULL),
(118, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'hiskianggi@gmail.com login dengan IP Address ::1', 3, '2019-10-10 01:51:35', NULL),
(119, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'hiskianggi@gmail.com keluar', 3, '2019-10-10 01:51:51', NULL),
(120, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'get@hiskia.dev login dengan IP Address ::1', 1, '2019-10-10 01:52:01', NULL),
(121, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/edit-save/21', 'Memperbaharui data Pengaturan pada Menu Management', 1, '2019-10-10 01:52:28', NULL),
(122, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'get@hiskia.dev keluar', 1, '2019-10-10 01:55:47', NULL),
(123, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'admin@smkwikrama1jepara.sch.id login dengan IP Address ::1', 2, '2019-10-10 01:56:30', NULL),
(124, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'get@hiskia.dev login dengan IP Address ::1', 1, '2019-10-10 03:15:55', NULL),
(125, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'get@hiskia.dev login dengan IP Address ::1', 1, '2019-10-10 03:30:33', NULL),
(126, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/users/edit-save/1', 'Memperbaharui data Super Administrator pada Users', 1, '2019-10-10 04:20:45', NULL),
(127, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/delete/30', 'Menghapus data Dashboard pada Menu Management', 1, '2019-10-10 04:48:33', NULL),
(128, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/delete/31', 'Menghapus data Users pada Menu Management', 1, '2019-10-10 04:48:39', NULL),
(129, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/edit-save/30', 'Memperbaharui data Testimoni pada Menu Management', 1, '2019-10-10 04:59:16', NULL),
(130, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/edit-save/27', 'Memperbaharui data Data Pemilihan pada Menu Management', 1, '2019-10-10 04:59:41', NULL),
(131, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/delete/28', 'Menghapus data Pengaturan pada Menu Management', 1, '2019-10-10 04:59:58', NULL),
(132, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/add-save', 'Tambah data baru Testimoni pada Menu Management', 1, '2019-10-10 05:00:30', NULL),
(133, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/testimonials/delete/1', 'Menghapus data Testing pada Testimoni', 1, '2019-10-10 05:27:33', NULL),
(134, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'get@hiskia.dev keluar', 1, '2019-10-10 05:41:25', NULL),
(135, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'hiskianggi@gmail.com login dengan IP Address ::1', 3, '2019-10-10 05:41:33', NULL),
(136, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/candidates/add-save', 'Tambah data baru Hiskia Anggi Puji Pratama pada Kandidat', 3, '2019-10-10 05:44:38', NULL),
(137, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'get@hiskia.dev login dengan IP Address ::1', 1, '2019-10-10 06:01:36', NULL),
(138, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'get@hiskia.dev login dengan IP Address ::1', 1, '2019-10-10 06:45:33', NULL),
(139, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'get@hiskia.dev login dengan IP Address ::1', 1, '2019-10-11 04:45:27', NULL),
(140, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/client/edit-save/2', 'Memperbaharui data SMK Wikrama 1 Jepara pada Client', 1, '2019-10-11 04:46:22', NULL),
(141, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'get@hiskia.dev login dengan IP Address ::1', 1, '2019-10-11 05:34:18', NULL),
(142, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'get@hiskia.dev keluar', 1, '2019-10-11 08:34:28', NULL),
(143, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'hiskianggi@gmail.com login dengan IP Address ::1', 3, '2019-10-11 08:34:38', NULL),
(144, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'hiskianggi@gmail.com keluar', 3, '2019-10-11 08:34:58', NULL),
(145, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'get@hiskia.dev login dengan IP Address ::1', 1, '2019-10-11 08:35:13', NULL),
(146, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'get@hiskia.dev keluar', 1, '2019-10-11 08:53:56', NULL),
(147, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'get@hiskia.dev login dengan IP Address ::1', 1, '2019-10-11 08:54:39', NULL),
(148, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'get@hiskia.dev keluar', 1, '2019-10-11 09:10:06', NULL),
(149, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/forgot', 'Seseorang dengan IP ::1 meminta password ulang get@hiskia.dev', NULL, '2019-10-11 09:13:43', NULL),
(150, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'get@hiskia.dev login dengan IP Address ::1', 1, '2019-10-11 09:26:26', NULL),
(151, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/users/edit-save/1', 'Memperbaharui data Super Administrator pada Users', 1, '2019-10-11 09:26:39', NULL),
(152, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/client/edit-save/2', 'Memperbaharui data SMK Wikrama 1 Jepara pada Client', 1, '2019-10-11 19:21:05', NULL),
(153, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'get@hiskia.dev keluar', 1, '2019-10-11 19:21:20', NULL),
(154, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'admin@smkwikrama1jepara.sch.id login dengan IP Address ::1', 2, '2019-10-11 19:21:26', NULL),
(155, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'admin@smkwikrama1jepara.sch.id keluar', 2, '2019-10-11 19:21:55', NULL),
(156, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'hiskianggi@gmail.com login dengan IP Address ::1', 3, '2019-10-11 19:22:02', NULL),
(157, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'hiskianggi@gmail.com keluar', 3, '2019-10-11 19:22:14', NULL),
(158, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'get@hiskia.dev login dengan IP Address ::1', 1, '2019-10-11 19:22:23', NULL),
(159, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/student/add-save', 'Tambah data baru 11700605 pada Siswa', 1, '2019-10-11 19:31:49', NULL),
(160, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/student/edit-save/3', 'Memperbaharui data 11700573 pada Siswa', 1, '2019-10-11 19:36:25', NULL),
(161, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/email_templates/add-save', 'Tambah data baru Password Token pada Email Template', 1, '2019-10-11 20:04:03', NULL),
(162, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/email_templates/edit-save/4', 'Memperbaharui data Password Token pada Email Template', 1, '2019-10-11 20:17:17', NULL),
(163, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/email_templates/edit-save/4', 'Memperbaharui data Password Token pada Email Template', 1, '2019-10-11 20:19:25', NULL),
(164, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/email_templates/edit-save/4', 'Memperbaharui data Password Token pada Email Template', 1, '2019-10-11 20:20:36', NULL),
(165, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/email_templates/edit-save/4', 'Memperbaharui data Password Token pada Email Template', 1, '2019-10-11 20:20:51', NULL),
(166, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/email_templates/edit-save/4', 'Memperbaharui data Password Token pada Email Template', 1, '2019-10-11 20:42:22', NULL),
(167, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'get@hiskia.dev keluar', 1, '2019-10-11 20:43:38', NULL),
(168, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'admin@smkwikrama1jepara.sch.id login dengan IP Address ::1', 2, '2019-10-11 20:43:50', NULL),
(169, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'admin@smkwikrama1jepara.sch.id keluar', 2, '2019-10-11 20:46:34', NULL),
(170, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'hiskianggi@gmail.com login dengan IP Address ::1', 3, '2019-10-11 20:46:45', NULL),
(171, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'hiskianggi@gmail.com keluar', 3, '2019-10-11 20:52:15', NULL),
(172, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'get@hiskia.dev login dengan IP Address ::1', 1, '2019-10-11 20:52:25', NULL),
(173, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/teachers/edit-save/2', 'Memperbaharui data A pada Guru', 1, '2019-10-11 21:01:21', NULL),
(174, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'get@hiskia.dev login dengan IP Address ::1', 1, '2019-10-12 05:17:25', NULL),
(175, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/delete/34', 'Menghapus data Users pada Menu Management', 1, '2019-10-12 05:18:28', NULL),
(176, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/delete/33', 'Menghapus data Dashboard pada Menu Management', 1, '2019-10-12 05:18:34', NULL),
(177, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/email_templates/edit-save/4', 'Memperbaharui data Password Token pada Email Template', 1, '2019-10-12 09:48:59', NULL),
(178, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/email_templates/edit-save/1', 'Memperbaharui data Email Template Forgot Password Backend pada Email Template', 1, '2019-10-12 10:05:19', NULL),
(179, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/student/add-save', 'Tambah data baru 11700599 pada Siswa', 1, '2019-10-12 10:27:44', NULL),
(180, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'get@hiskia.dev login dengan IP Address ::1', 1, '2019-10-12 10:38:51', NULL),
(181, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'get@hiskia.dev login dengan IP Address ::1', 1, '2019-10-14 07:04:51', NULL),
(182, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'get@hiskia.dev keluar', 1, '2019-10-14 07:05:05', NULL),
(183, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/forgot', 'Seseorang dengan IP ::1 meminta password ulang ngawur@pilkatos.tech', NULL, '2019-10-14 07:05:14', NULL),
(184, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'get@hiskia.dev login dengan IP Address ::1', 1, '2019-10-14 07:07:11', NULL),
(185, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/finance/add-save', 'Tambah data baru 2 pada Keuangan', 1, '2019-10-14 07:24:14', NULL),
(186, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'get@hiskia.dev keluar', 1, '2019-10-14 09:53:59', NULL),
(187, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'admin@smkwikrama1jepara.sch.id login dengan IP Address ::1', 2, '2019-10-14 09:54:30', NULL),
(188, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'get@hiskia.dev login dengan IP Address ::1', 1, '2019-10-14 10:08:51', NULL),
(189, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/agenda/add-save', 'Tambah data baru Testhrhr pada Agenda', 1, '2019-10-14 10:35:52', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(190, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/add-save', 'Tambah data baru Agenda pada Menu Management', 1, '2019-10-14 10:37:38', NULL),
(191, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/add-save', 'Tambah data baru Laporan pada Menu Management', 1, '2019-10-14 10:38:13', NULL),
(192, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/agenda/edit-save/1', 'Memperbaharui data Testhrhr pada Agenda', 1, '2019-10-14 10:41:22', NULL),
(193, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/agenda/delete-image', 'Menghapus gambar Testhrhr pada Agenda', 1, '2019-10-14 10:45:02', NULL),
(194, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/edit-save/33', 'Memperbaharui data Agenda pada Menu Management', 1, '2019-10-14 10:45:29', NULL),
(195, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'get@hiskia.dev login dengan IP Address ::1', 1, '2019-10-15 03:24:55', NULL),
(196, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'get@hiskia.dev keluar', 1, '2019-10-15 03:30:17', NULL),
(197, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'hiskianggi@gmail.com login dengan IP Address ::1', 3, '2019-10-15 03:30:25', NULL),
(198, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/agenda', 'Mencoba melihat data :name pada Agenda', 3, '2019-10-15 03:30:45', NULL),
(199, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/agenda', 'Mencoba melihat data :name pada Agenda', 3, '2019-10-15 03:34:02', NULL),
(200, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/agenda', 'Mencoba melihat data :name pada Agenda', 3, '2019-10-15 03:34:07', NULL),
(201, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/agenda', 'Mencoba melihat data :name pada Agenda', 3, '2019-10-15 03:34:26', NULL),
(202, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/agenda', 'Mencoba melihat data :name pada Agenda', 3, '2019-10-15 03:34:30', NULL),
(203, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'hiskianggi@gmail.com keluar', 3, '2019-10-15 04:28:53', NULL),
(204, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'admin@smkwikrama1jepara.sch.id login dengan IP Address ::1', 2, '2019-10-15 04:29:17', NULL),
(205, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/agenda', 'Mencoba melihat data :name pada Agenda', 2, '2019-10-15 04:37:06', NULL),
(206, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'admin@smkwikrama1jepara.sch.id keluar', 2, '2019-10-15 04:37:16', NULL),
(207, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'get@hiskia.dev login dengan IP Address ::1', 1, '2019-10-15 04:37:25', NULL),
(208, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'get@hiskia.dev keluar', 1, '2019-10-15 04:38:56', NULL),
(209, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'admin@smkwikrama1jepara.sch.id login dengan IP Address ::1', 2, '2019-10-15 04:39:16', NULL),
(210, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/logout', 'admin@smkwikrama1jepara.sch.id keluar', 2, '2019-10-15 04:45:57', NULL),
(211, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'get@hiskia.dev login dengan IP Address ::1', 1, '2019-10-15 04:46:07', NULL),
(212, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/delete/39', 'Menghapus data Testimoni pada Menu Management', 1, '2019-10-15 04:46:26', NULL),
(213, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/delete/38', 'Menghapus data Pengaturan pada Menu Management', 1, '2019-10-15 04:46:33', NULL),
(214, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/delete/37', 'Menghapus data Laporan pada Menu Management', 1, '2019-10-15 04:46:39', NULL),
(215, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/menu_management/delete/34', 'Menghapus data Agenda pada Menu Management', 1, '2019-10-15 04:46:51', NULL),
(216, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/agenda/add-save', 'Tambah data baru Cek 123 pada Agenda', 1, '2019-10-15 06:16:20', NULL),
(217, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/agenda/edit-save/2', 'Memperbaharui data Cek 123 pada Agenda', 1, '2019-10-15 06:22:53', NULL),
(218, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/pilkatos/public/admin/login', 'get@hiskia.dev login dengan IP Address ::1', 1, '2019-10-15 17:02:02', NULL);

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
(1, 'Daftar Sekolah', 'Route', 'AdminClientControllerGetIndex', 'normal', 'fa fa-home', 0, 1, 0, 1, 3, '2019-09-22 05:15:55', '2019-10-09 06:34:06'),
(2, 'Siswa', 'Route', 'AdminStudentControllerGetIndex', 'normal', 'fa fa-user', 8, 1, 0, 1, 1, '2019-09-22 05:19:04', '2019-10-09 06:34:45'),
(3, 'Guru', 'Route', 'AdminTeachersControllerGetIndex', NULL, 'fa fa-user-plus', 8, 1, 0, 1, 2, '2019-09-22 05:19:45', NULL),
(4, 'Karyawan', 'Route', 'AdminEmployeeControllerGetIndex', NULL, 'fa fa-users', 8, 1, 0, 1, 3, '2019-09-22 05:20:41', NULL),
(5, 'Kelas', 'Route', 'AdminClassControllerGetIndex', 'normal', 'fa fa-css3', 0, 1, 0, 1, 5, '2019-09-22 05:21:21', '2019-10-09 06:35:38'),
(6, 'Kandidat', 'Route', 'AdminCandidatesControllerGetIndex', 'normal', 'fa fa-user-secret', 0, 1, 0, 1, 6, '2019-09-22 05:22:11', '2019-10-09 06:35:59'),
(8, 'Data Pemilih', 'Route', 'AdminElectionDataControllerGetIndex', 'normal', 'fa fa-list-alt', 0, 1, 0, 1, 4, '2019-09-22 05:26:17', '2019-10-09 06:34:25'),
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
(22, 'Keuangan', 'Route', 'AdminFinanceControllerGetIndex', NULL, 'fa fa-money', 0, 1, 0, 1, 8, '2019-09-24 02:36:21', NULL),
(23, 'Golput', 'Route', 'AdminGolputControllerGetIndex', 'normal', 'fa fa-angellist', 0, 1, 0, 1, 7, '2019-09-24 07:31:18', '2019-10-09 06:36:15'),
(25, 'Golput', 'Route', 'AdminGolputControllerGetIndex', 'normal', 'fa fa-angellist', 0, 1, 0, 2, 7, '2019-10-09 07:11:20', '2019-10-09 07:12:24'),
(26, 'Data Pemilihan', 'Module', NULL, 'normal', 'fa fa-css3', 0, 0, 0, 1, 4, '2019-10-09 07:13:56', '2019-10-09 07:24:33'),
(27, 'Data Pemilihan', 'Route', 'AdminElectionDataControllerGetIndex', 'normal', 'fa fa-home', 0, 0, 0, 2, 7, '2019-10-10 01:55:09', '2019-10-10 04:59:41'),
(29, 'Testimoni', 'Route', 'AdminTestimonialsControllerGetIndex', NULL, 'fa fa-columns', 0, 1, 0, 1, 10, '2019-10-10 04:04:01', NULL),
(30, 'Testimoni', 'Route', 'AdminTestimoniControllerGetIndex', 'normal', 'fa fa-home', 0, 0, 0, 1, 10, '2019-10-10 04:49:27', '2019-10-10 04:59:16'),
(31, 'Testimoni', 'Module', 'testimoni', 'normal', 'fa fa-columns', 0, 1, 0, 2, 10, '2019-10-10 05:00:30', NULL),
(32, 'Laporan', 'Route', 'AdminReportControllerGetIndex', NULL, 'fa fa-book', 0, 1, 0, 1, 9, '2019-10-11 07:37:36', NULL),
(33, 'Agenda', 'Route', 'AdminAgendaControllerGetIndex', 'normal', 'fa fa-calendar-times-o', 0, 1, 0, 1, 2, '2019-10-14 10:09:35', '2019-10-14 10:45:29'),
(35, 'Laporan', 'Module', 'report', 'normal', 'fa fa-book', 0, 1, 0, 2, 9, '2019-10-14 10:38:13', NULL),
(36, 'Agenda', 'Route', 'AdminAgendaControllerGetIndex', 'normal', 'fa fa-calendar-times-o', 0, 1, 0, 2, 2, '2019-10-15 04:38:47', NULL);

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
(27, 'Agenda', 'fa fa-calendar-times-o', 'agenda', 'agenda', 'AdminAgendaController', 0, 0, '2019-10-14 10:09:35', NULL);

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
(1, 'Super Administrator', 1, 'skin-purple-light', '2019-09-22 05:14:58', NULL),
(2, 'Sekolah', 0, 'skin-blue-light', NULL, NULL);

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
(42, 1, 1, 1, 1, 1, 2, 25, NULL, NULL);

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
(3, 'login_background_image', 'uploads/2019-10/4e40f82abea3f6046eafad0032f2ee5c.jpg', 'upload_image', NULL, NULL, '2019-09-22 05:14:58', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'no-reply@pilkatos.tech', 'text', NULL, NULL, '2019-09-22 05:14:58', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'smtp', 'select', 'smtp,mail,sendmail', NULL, '2019-09-22 05:14:58', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', 'smtp.mailgun.org', 'text', NULL, NULL, '2019-09-22 05:14:58', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '587', 'text', NULL, 'default 25', '2019-09-22 05:14:58', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', 'postmaster@mg.hiskia.dev', 'text', NULL, NULL, '2019-09-22 05:14:58', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', 'd6f068f207662cd38c0a43b65bcde11d-af6c0cec-37899e0d', 'text', NULL, NULL, '2019-09-22 05:14:58', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'Pilkatos', 'text', NULL, NULL, '2019-09-22 05:14:58', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2019-09-22 05:14:58', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2019-10/cc0570401d969b37384d9d7025260541.png', 'upload_image', NULL, NULL, '2019-09-22 05:14:58', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', NULL, 'upload_image', NULL, NULL, '2019-09-22 05:14:58', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2019-09-22 05:14:58', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2019-09-22 05:14:58', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', 'AAAAJtzOZjY:APA91bGYqd9Wzcc22QYvcZiEBDq4hJ5bPj1ov7u6jHG3ht_d6PiqnWglywZ57RVNJ5ymINTvlJNSOLaq8k-inQBom4vfkcUarIrVknZUmXEzrgB78RYNdGlpF_HgXaB8OWS6vHd07XzM', 'text', NULL, NULL, '2019-09-22 05:14:58', NULL, 'Application Setting', 'Google FCM Key');

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
  `with_email` int(1) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`, `with_email`, `path`) VALUES
(1, 'Super Administrator', 'uploads/2019-10/user.jpg', 'get@hiskia.dev', '$2y$10$U5a7FXqtvL3eqEmrL7jH.uGQkB4Q.q5P.8W2BrXItOWv5Tc6I0.kK', 1, '2019-09-22 05:14:58', '2019-10-11 09:26:39', 'Active', 0, NULL),
(2, 'SMK Wikrama 1 Jepara', 'uploads/2019-09/220px-logo-swiksara.png', 'admin@smkwikrama1jepara.sch.id', '$2y$10$LTaPABWnbohJGK4Xrfd1HOxcD5KhCbix3MZdKF7BcsYde2FRDaWBC', 2, '2019-09-22 12:19:31', '2019-10-11 19:21:05', 'Active', 1, 'wikrama'),
(3, 'SMP Negeri 1 Donorojo', 'uploads/2019-10/download.jpg', 'hiskianggi@gmail.com', '$2y$10$4VWWeh.pyVDcyyEnf1JvYu2oKnObhvz69yg25HuRLe.TrCvWdIZD2', 2, '2019-10-03 11:03:58', '2019-10-10 01:19:41', 'Active', 0, 'essado'),
(4, 'SMK 1 Ngawur', 'uploads/2019-10/27eeb996cfc149f2f4a26acfe75540da.png', 'ngawur@pilkatos.tech', '$2y$10$iEwMy3ClFeweDEI4WukJyuwK26k0QFKXrcZeVNaXxK9aS5NWggUuO', 2, '2019-10-10 01:43:15', NULL, 'Non Active', 0, 'ngawur');

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
(1, 2, 2, 2, '2019-10-14 21:33:36', NULL),
(2, 3, 3, 2, '2019-10-14 21:34:11', NULL),
(3, 4, 1, 2, '2019-10-14 21:35:24', NULL),
(4, 5, 2, 2, '2019-10-14 21:36:24', NULL);

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

--
-- Dumping data for table `finance`
--

INSERT INTO `finance` (`id`, `price`, `keterangan`, `type`, `created_at`, `updated_at`) VALUES
(1, 1000000, 'Dari SMK WIkrama 1 Jepara', 'IN', '2019-10-02 01:37:06', '2019-10-14 00:20:55'),
(2, 200000, 'Peduli Tsunami Ujungwatu', 'OUT', '2019-10-14 07:24:14', NULL);

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
(1, NULL, 3, '2019-10-09 18:19:41', NULL),
(2, '2/2019-10/27eeb996cfc149f2f4a26acfe75540da.png', 2, '2019-10-09 18:19:48', '2019-10-09 20:06:39'),
(3, NULL, 4, '2019-10-09 18:43:15', NULL);

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
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `password_token`
--

INSERT INTO `password_token` (`email`, `token`, `created_at`) VALUES
('get@hiskia.dev', '56JRT82YCqUgDCFIrbGMmOdScJJXnnRkbQWkDM7hGGq7mooM7axBJ6Q6xkSloCq4', '2019-10-14 07:39:20');

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

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `cms_users_id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(4, 3, 'Suharto, S.Pd', 'Awkwkwkwk', '2019-10-09 22:41:54', NULL);

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
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `name`, `password`, `type`, `class_id`, `status`, `cms_users_id`, `created_at`, `updated_at`) VALUES
(2, 'sholikhin@smkwikrama1jepara.sch.id', 'A', 'Sholikhin', '$2y$10$W7FB5vIrDkaZh1QO5tTU9uHckKbBmjc6jUt54sL1V1sojX3cMw2cy', 1, NULL, 0, 2, '2019-09-22 12:30:06', '2019-10-11 21:01:21'),
(3, 'get@hiskia.dev', '11700573', 'Aminuddin Shofi Ashari', NULL, 0, 7, 0, 2, '2019-09-22 12:33:24', '2019-10-11 19:36:25'),
(4, NULL, 'sofa', 'Sofa', '$2y$10$.MJKDhNNw2uVzDE9nWqXFeDm82q72soMWaC6P6lErFx16Huw0SUVK', 2, NULL, 0, 2, '2019-09-22 12:39:35', NULL),
(5, NULL, '11700605', 'Irvan Aldi Pratama', '$2y$10$hJjPHUIrk5RiU0OOyXnFE.0a7yBqq3wO8C3fAz4YTFWfbR1SC0TAW', 0, 2, 0, 2, '2019-09-22 12:42:29', '2019-10-02 15:44:23'),
(6, NULL, '11700599', 'Hiskia Anggi Puji Pratama', '$2y$10$DznTcRu10xPPabWfQwv2cO/NRUk/lsaTZc9LBRUrOJ5pNn3w7Asxm', 0, 8, 0, 3, '2019-10-03 11:33:40', NULL),
(7, '', '11700605', 'Testing Students', '$2y$10$a1fECcAI2bXYpduazF4UyeVFUwOoW0RbQcjkw9AOotOTTO9yNXbW2', 0, 8, 0, 3, '2019-10-11 19:31:49', NULL),
(8, '', '11700599', 'Hiskia', '$2y$10$1WozhdblnWDvYt6FVrMokuSJ7VBNLmyEAOssb1vcECiIYZr.OHjN2', 0, 2, 0, 2, '2019-10-12 10:27:44', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `election_data`
--
ALTER TABLE `election_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `finance`
--
ALTER TABLE `finance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login_background`
--
ALTER TABLE `login_background`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
