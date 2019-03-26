/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

DROP DATABASE IF EXISTS `appdashboard`;
CREATE DATABASE IF NOT EXISTS `appdashboard` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `appdashboard`;

DROP VIEW IF EXISTS `detail_pegawaist`;
CREATE TABLE `detail_pegawaist` (
	`id` INT(11) NOT NULL,
	`IdPegawai` INT(11) NULL,
	`NIPPegawai` VARCHAR(18) NULL COLLATE 'latin1_swedish_ci',
	`NamaPegawai` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`GolPegawai` INT(5) NULL,
	`SeksiPegawai` INT(5) NULL,
	`JabatanPegawai` INT(5) NULL,
	`IdSurat` INT(11) NULL,
	`KdSurat` INT(11) NULL COMMENT 'Id Kode Surat',
	`NmrSurat` INT(11) NULL,
	`TglSurat` DATE NULL,
	`Tujuan` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`Perihal` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`TglMulai` DATE NULL,
	`TglSelesai` DATE NULL,
	`PtgsRekam` VARCHAR(18) NULL COLLATE 'latin1_swedish_ci',
	`WktRekam` TIMESTAMP NULL,
	`PtgsUpdate` VARCHAR(18) NULL COLLATE 'latin1_swedish_ci',
	`WktUpdate` TIMESTAMP NULL
) ENGINE=MyISAM;

DROP TABLE IF EXISTS `grupmenu`;
CREATE TABLE IF NOT EXISTS `grupmenu` (
  `IdGrupMenu` int(6) NOT NULL AUTO_INCREMENT,
  `GrupMenu` varchar(100) NOT NULL,
  `unitpengguna_id` tinyint(4) NOT NULL,
  `wktrkm` datetime NOT NULL,
  `niprkm` varchar(9) NOT NULL,
  PRIMARY KEY (`IdGrupMenu`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Level Pengguna Aplikasi';

DELETE FROM `grupmenu`;
/*!40000 ALTER TABLE `grupmenu` DISABLE KEYS */;
INSERT INTO `grupmenu` (`IdGrupMenu`, `GrupMenu`, `unitpengguna_id`, `wktrkm`, `niprkm`) VALUES
	(1, 'Admin', 1, '2008-10-27 16:15:12', '060104386'),
	(2, 'Informasi', 1, '2008-10-27 16:15:19', '060104386'),
	(3, 'Kepala Kantor', 1, '2008-10-27 16:30:16', '060104386'),
	(4, 'Subbagian Umum', 1, '2008-10-27 17:03:10', '060104386'),
	(5, 'Penindakan', 1, '2008-10-27 16:16:17', '060104386'),
	(6, 'PKC', 1, '2008-10-27 16:16:42', '060104386'),
	(7, 'Perbendaharaan', 1, '2008-10-27 16:16:50', '060104386'),
	(8, 'Penyuluhan dan Layanan Informasi', 1, '2018-01-02 09:30:00', '060104386'),
	(9, 'Manifest', 1, '2018-01-02 09:39:54', '060104386'),
	(10, 'Kepatuhan Internal', 1, '2018-01-02 09:40:14', '060104386'),
	(11, 'PDAD', 1, '2018-01-02 09:40:27', '060104386'),
	(12, 'Hanggar', 1, '2018-02-20 19:22:24', '060104386');
/*!40000 ALTER TABLE `grupmenu` ENABLE KEYS */;

DROP TABLE IF EXISTS `historyuser`;
CREATE TABLE IF NOT EXISTS `historyuser` (
  `IdHistory` int(11) NOT NULL AUTO_INCREMENT,
  `IdUser` int(11) NOT NULL DEFAULT '0',
  `KdHistory` enum('1','2','3') DEFAULT NULL,
  `History` varchar(255) NOT NULL DEFAULT '0',
  `WktRekam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdHistory`),
  KEY `FK__tbuser_historyuser` (`IdUser`)
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=latin1;

DELETE FROM `historyuser`;
/*!40000 ALTER TABLE `historyuser` DISABLE KEYS */;
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(2, 1, '1', 'User Telah Menambahkan IKU', '2017-11-30 07:12:16'),
	(3, 1, '1', 'User Telah Menambahkan IKU', '2017-11-30 07:13:20'),
	(4, 1, '1', 'User Telah Menambahkan IKU', '2017-11-30 07:40:35'),
	(5, 1, '1', 'User Telah Menambahkan IKU', '2017-11-30 07:41:03'),
	(6, 1, '1', 'User Telah Menambahkan IKU', '2017-11-30 08:40:22'),
	(7, 1, '1', 'User Telah Menambahkan IKU', '2017-11-30 10:07:57'),
	(8, 1, '3', 'User Telah Menghapus IKU', '2017-11-30 10:25:39'),
	(9, 1, '1', 'User Telah Menambahkan IKU', '2017-11-30 10:28:48'),
	(10, 1, '3', 'User Telah Menghapus IKU', '2017-11-30 10:29:22'),
	(11, 1, '3', 'User Telah Menghapus IKU', '2017-11-30 10:29:24'),
	(12, 1, '3', 'User Telah Menghapus IKU', '2017-11-30 10:29:26'),
	(13, 1, '3', 'User Telah Menghapus IKU', '2017-11-30 10:29:28'),
	(14, 1, '1', 'User Telah Menambahkan IKU', '2017-11-30 10:31:04'),
	(15, 1, '3', 'User Telah Menghapus IKU', '2017-11-30 13:54:51'),
	(16, 1, '1', 'User Telah Menambahkan IKU', '2017-12-01 19:47:19'),
	(17, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-01 20:41:43'),
	(18, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-01 20:43:45'),
	(19, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 08:17:24'),
	(20, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 08:18:51'),
	(21, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 08:18:55'),
	(22, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 08:32:41'),
	(23, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 08:32:47'),
	(24, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 08:32:52'),
	(25, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 08:35:05'),
	(26, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 08:35:39'),
	(27, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 08:35:45'),
	(28, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 08:35:50'),
	(29, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 08:37:38'),
	(30, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 08:40:02'),
	(31, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 08:40:07'),
	(32, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 08:40:11'),
	(33, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 08:41:06'),
	(34, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 09:22:27'),
	(35, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 09:22:32'),
	(36, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 09:22:55'),
	(37, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 09:23:08'),
	(38, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 09:24:58'),
	(39, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 09:25:02'),
	(40, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 09:25:06'),
	(41, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 09:25:27'),
	(42, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 09:25:50'),
	(43, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 09:51:19'),
	(44, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 09:51:24'),
	(45, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 09:51:30'),
	(46, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 09:52:40'),
	(47, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 09:54:43'),
	(48, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 09:54:48'),
	(49, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 09:55:20'),
	(50, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 09:56:15'),
	(51, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 09:57:22'),
	(52, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 09:57:27'),
	(53, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 10:14:29'),
	(54, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 10:14:48'),
	(55, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 10:15:05'),
	(56, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 10:15:16'),
	(57, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 10:20:52'),
	(58, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 10:23:42'),
	(59, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 12:15:11'),
	(60, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 12:20:58'),
	(61, 1, '3', 'User Telah Menghapus IKU', '2017-12-04 12:27:48'),
	(62, 1, '1', 'User Telah Menambahkan IKU', '2017-12-04 12:37:30'),
	(63, 1, '3', 'User Telah Menghapus IKU', '2017-12-04 12:37:38'),
	(64, 1, '3', 'User Telah Menghapus IKU', '2017-12-04 12:39:00'),
	(65, 1, '1', 'User Telah Menambahkan IKU', '2017-12-04 12:41:34'),
	(66, 1, '3', 'User Telah Menghapus IKU', '2017-12-04 12:41:46'),
	(67, 1, '1', 'User Telah Menambahkan IKU', '2017-12-04 12:44:05'),
	(68, 1, '3', 'User Telah Menghapus IKU', '2017-12-04 12:44:10'),
	(69, 1, '1', 'User Telah Menambahkan IKU', '2017-12-04 16:59:01'),
	(70, 1, '1', 'User Telah Menambah Capaian IKU Kode 123', '2017-12-04 16:59:17'),
	(71, 1, '1', 'User Telah Menambahkan IKU', '2017-12-04 17:00:17'),
	(72, 1, '3', 'User Telah Menghapus IKU', '2017-12-04 17:02:13'),
	(73, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 17:02:24'),
	(74, 1, '3', 'User Telah Menghapus IKU', '2017-12-04 17:02:33'),
	(75, 1, '1', 'User Telah Menambahkan IKU', '2017-12-04 17:02:44'),
	(76, 1, '3', 'User Telah Menghapus IKU', '2017-12-04 17:09:11'),
	(77, 1, '1', 'User Telah Menambahkan IKU', '2017-12-04 17:09:19'),
	(78, 1, '1', 'User Telah Menambah Capaian IKU Kode 123', '2017-12-04 17:09:57'),
	(79, 1, '1', 'User Telah Menambah Capaian IKU Kode 123', '2017-12-04 17:10:14'),
	(80, 1, '1', 'User Telah Menambah Capaian IKU Kode 123', '2017-12-04 17:10:27'),
	(81, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 17:10:35'),
	(82, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 17:10:40'),
	(83, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 17:10:42'),
	(84, 1, '3', 'User Telah Menghapus IKU', '2017-12-04 17:10:50'),
	(85, 1, '3', 'User Telah Menghapus Capaian', '2018-01-02 08:56:04'),
	(86, 1, '3', 'User Telah Menghapus Capaian', '2018-01-02 08:57:13'),
	(87, 1, '3', 'User Telah Menghapus Capaian', '2018-01-02 08:57:16'),
	(88, 2, '1', 'User Telah Menambah Capaian IKU Kode 1a-C', '2018-01-07 14:05:30'),
	(89, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 16', '2018-01-07 16:26:38'),
	(90, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 15', '2018-01-07 16:27:19'),
	(91, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 14', '2018-01-07 16:27:40'),
	(92, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 13', '2018-01-07 16:27:46'),
	(93, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 12', '2018-01-07 16:27:51'),
	(94, 1, '1', 'User Telah Menambah Surat Tugas Nomor ', '2018-01-07 17:39:44'),
	(95, 1, '1', 'User Telah Menambah Surat Tugas Nomor 18', '2018-01-07 17:43:25'),
	(96, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 17', '2018-01-07 17:43:52'),
	(97, 1, '1', 'User Telah Menambah Surat Tugas Nomor 19', '2018-01-07 17:44:26'),
	(98, 1, '1', 'User Telah Menambah Surat Tugas Nomor 20', '2018-01-07 17:45:08'),
	(99, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 20', '2018-01-07 17:48:24'),
	(100, 1, '1', 'User Telah Menambah Surat Tugas Nomor 21', '2018-01-07 17:48:42'),
	(101, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 21', '2018-01-08 10:12:04'),
	(102, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 19', '2018-01-08 10:12:23'),
	(103, 1, '1', 'User Telah Menambah Surat Tugas Nomor 22', '2018-01-08 11:56:33'),
	(104, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 22', '2018-01-08 13:21:28'),
	(105, 1, '1', 'User Telah Menambah Surat Tugas Nomor 23', '2018-01-08 16:25:48'),
	(106, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 23', '2018-01-08 16:28:38'),
	(107, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 18', '2018-01-08 16:28:42'),
	(108, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 11', '2018-01-08 16:28:44'),
	(109, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 10', '2018-01-08 16:28:46'),
	(110, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 9', '2018-01-08 16:28:47'),
	(111, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 8', '2018-01-08 16:28:49'),
	(112, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 7', '2018-01-08 16:28:51'),
	(113, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 6', '2018-01-08 16:28:52'),
	(114, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 5', '2018-01-08 16:28:54'),
	(115, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 4', '2018-01-08 16:28:56'),
	(116, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 3', '2018-01-08 16:28:58'),
	(117, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 2', '2018-01-08 16:28:59'),
	(118, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 1', '2018-01-08 16:29:01'),
	(119, 1, '1', 'User Telah Menambah Surat Tugas Nomor 24', '2018-01-09 09:37:22'),
	(120, 1, '1', 'User Telah Menambah Surat Tugas Nomor 25', '2018-01-09 09:39:33'),
	(121, 1, '1', 'User Telah Menambah Surat Tugas Nomor 26', '2018-01-09 09:43:08'),
	(122, 1, '1', 'User Telah Menambah Surat Tugas Nomor 27', '2018-01-09 09:50:01'),
	(123, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 24', '2018-01-09 09:51:00'),
	(124, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 27', '2018-01-09 09:51:04'),
	(125, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 26', '2018-01-09 09:51:07'),
	(126, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 25', '2018-01-09 09:51:10'),
	(127, 1, '1', 'User Telah Menambah Surat Tugas Nomor 28', '2018-01-09 10:09:25'),
	(128, 1, '1', 'User Telah Menambah Surat Tugas Nomor 29', '2018-01-11 10:59:48'),
	(129, 1, '1', 'User Telah Menambah Surat Tugas Nomor 30', '2018-01-16 11:39:01'),
	(130, 1, '1', 'User Telah Menambah User teguh.ismael', '2018-01-18 11:32:57'),
	(131, 1, '1', 'User Telah Menambah User lili.andriyani', '2018-01-18 11:34:03'),
	(132, 1, '1', 'User Telah Menambah User sabrina.latifa', '2018-01-18 11:35:49'),
	(133, 1, '1', 'User Telah Menambah User vega.agayantri', '2018-01-18 11:36:07'),
	(134, 1, '1', 'User Telah Menambah User sukmaning.ayu', '2018-01-18 11:36:45'),
	(135, 1, '1', 'User Telah Menambah User dinda.githa', '2018-01-18 11:38:04'),
	(136, 1, '2', 'User Telah Merubah User sabrina.latifa', '2018-01-18 13:49:36'),
	(137, 1, '2', 'User Telah Merubah User dinda.githa', '2018-01-18 13:54:01'),
	(138, 1, '2', 'User Telah Merubah User dinda.githa', '2018-01-18 13:54:29'),
	(139, 1, '1', 'User Telah Menambah User akhmad.rofiq', '2018-01-18 13:55:17'),
	(140, 1, '1', 'User Telah Menambah User bambang.prayoga', '2018-01-18 13:55:38'),
	(141, 1, '1', 'User Telah Menambah User heru.sudaryanto', '2018-01-18 13:56:02'),
	(142, 1, '2', 'User Telah Merubah User lili.andriyani', '2018-01-18 15:52:32'),
	(143, 1, '2', 'User Telah Merubah User lili.andriyani', '2018-01-18 15:53:22'),
	(144, 1, '2', 'User Telah Merubah User lili.andriyani', '2018-01-18 15:53:41'),
	(145, 1, '2', 'User Telah Merubah User lili.andriyani', '2018-01-18 15:57:18'),
	(146, 1, '3', 'User Telah Menghapus User ', '2018-01-18 16:12:02'),
	(147, 1, '3', 'User Telah Menghapus User vega.agayantri', '2018-01-18 16:12:51'),
	(148, 1, '3', 'User Telah Menghapus User sukmaning.ayu', '2018-01-18 16:13:25'),
	(149, 1, '3', 'User Telah Menghapus User teguh.ismael', '2018-01-18 16:13:32'),
	(150, 1, '3', 'User Telah Menghapus User akhmad.rofiq', '2018-01-18 16:15:10'),
	(151, 1, '1', 'User Telah Menambah User hammam.yudanto', '2018-01-18 16:23:49'),
	(152, 1, '3', 'User Telah Menghapus User sabrina.latifa', '2018-01-19 07:50:22'),
	(153, 1, '1', 'User Telah Menambah User sabrina.latifa', '2018-01-19 07:56:46'),
	(154, 1, '2', 'User Telah Merubah User ADMIN', '2018-01-19 07:57:39'),
	(155, 1, '2', 'User Telah Merubah User ADMIN', '2018-01-19 07:59:17'),
	(156, 1, '2', 'User Telah Merubah User ADMIN', '2018-01-19 08:00:54'),
	(157, 1, '2', 'User Telah Merubah User hammam.yudanto', '2018-01-19 08:16:06'),
	(158, 1, '2', 'User Telah Merubah User hammam.yudanto', '2018-01-19 08:16:36'),
	(159, 1, '2', 'User Telah Merubah User hammam.yudanto', '2018-01-19 08:17:11'),
	(160, 1, '2', 'User Telah Merubah User hammam.yudanto', '2018-01-19 08:18:44'),
	(161, 1, '2', 'User Telah Merubah User hammam.yudanto', '2018-01-19 08:19:08'),
	(162, 1, '2', 'User Telah Merubah User hammam.yudanto', '2018-01-19 08:42:43'),
	(163, 1, '2', 'User Telah Merubah User hammam.yudanto', '2018-01-19 08:59:23'),
	(164, 1, '2', 'User Telah Merubah User hammam.yudanto', '2018-01-19 14:34:04'),
	(165, 1, '2', 'User Telah Merubah User hammam.yudanto', '2018-01-19 14:35:55'),
	(166, 1, '3', 'User Telah Menghapus User hammam.yudanto', '2018-01-19 15:14:05'),
	(167, 1, '3', 'User Telah Menghapus User bambang.prayoga', '2018-01-19 15:14:09'),
	(168, 1, '3', 'User Telah Menghapus User sabrina.latifa', '2018-01-19 15:14:14'),
	(169, 1, '3', 'User Telah Menghapus User dinda.githa', '2018-01-19 15:14:17'),
	(170, 1, '3', 'User Telah Menghapus User dulhaedi', '2018-01-19 15:14:21'),
	(171, 1, '3', 'User Telah Menghapus User heru.sudaryanto', '2018-01-19 15:14:25'),
	(172, 1, '1', 'User Telah Menambah User akhmad.rofiq', '2018-01-19 16:50:55'),
	(173, 1, '1', 'User Telah Menambah User sabrina.latifa', '2018-01-19 16:54:39'),
	(174, 1, '1', 'User Telah Menambah User ravi.raka felani', '2018-01-23 10:44:54'),
	(175, 1, '2', 'User Telah Merubah User ravi.raka felani', '2018-01-23 10:46:22'),
	(176, 1, '1', 'User Telah Menambah User yohanes.guraci', '2018-01-24 10:12:31'),
	(177, 1, '1', 'User Telah Menambah User agung.saputro', '2018-01-24 10:12:50'),
	(178, 1, '1', 'User Telah Menambah User sulaiman', '2018-01-24 10:13:08'),
	(179, 1, '1', 'User Telah Menambah User muzakkar', '2018-01-24 10:13:27'),
	(180, 1, '1', 'User Telah Menambah User dody.firmansah', '2018-01-24 10:13:50'),
	(181, 1, '1', 'User Telah Menambah User faisal', '2018-01-24 10:14:05'),
	(182, 18, '2', 'User Telah Merubah User user', '2018-01-24 16:29:51'),
	(183, 18, '2', 'User Telah Merubah User bc', '2018-01-24 16:51:07'),
	(184, 18, '2', 'User Telah Merubah User bc', '2018-01-24 16:53:03'),
	(185, 18, '2', 'User Telah Merubah User bc', '2018-01-24 16:54:43'),
	(186, 1, '1', 'User Telah Menambah Hak Akses User HERU SUDARYANTO', '2018-01-30 17:22:51'),
	(187, 1, '1', 'User Telah Menambah Hak Akses User HERU SUDARYANTO', '2018-01-30 17:53:26'),
	(188, 1, '1', 'User Telah Mengapus Hak Akses User ', '2018-01-30 18:15:30'),
	(189, 1, '1', 'User Telah Mengapus Hak Akses User ', '2018-01-30 18:16:42'),
	(190, 1, '1', 'User Telah Mengapus Hak Akses User HERU SUDARYANTO', '2018-01-30 18:18:09'),
	(191, 1, '1', 'User Telah Mengapus Hak Akses User HERU SUDARYANTO', '2018-01-30 18:20:16'),
	(192, 1, '1', 'User Telah Menambah Hak Akses User HERU SUDARYANTO', '2018-01-30 18:21:42'),
	(193, 1, '1', 'User Telah Mengapus Hak Akses User HERU SUDARYANTO', '2018-01-30 19:15:00'),
	(194, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2018-01-31 10:19:12'),
	(195, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2018-01-31 10:19:15'),
	(196, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2018-01-31 10:19:19'),
	(197, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2018-01-31 10:19:22'),
	(198, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2018-01-31 10:19:29'),
	(199, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2018-01-31 10:19:32'),
	(200, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2018-01-31 10:19:35'),
	(201, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2018-01-31 10:19:38'),
	(202, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2018-01-31 10:19:42'),
	(203, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2018-01-31 10:19:46'),
	(204, 1, '1', 'User Telah Menambah Hak Akses User RHENA DESANTI', '2018-01-31 10:21:29'),
	(205, 1, '2', 'User Telah Merubah User ADMIN', '2018-02-20 19:14:50'),
	(206, 1, '2', 'User Telah Merubah User ADMIN', '2018-02-20 19:14:58'),
	(207, 1, '2', 'User Telah Merubah User ADMIN', '2018-02-20 19:16:58'),
	(208, 1, '2', 'User Telah Merubah User ADMIN', '2018-02-20 19:17:53'),
	(209, 1, '3', 'User Telah Menghapus User STAFF KK', '2018-02-20 19:58:57'),
	(210, 1, '1', 'User Telah Menambah User novi.setyowati', '2018-02-20 19:59:58'),
	(211, 1, '1', 'User Telah Menambah Hak Akses User FITHRI KHAIRANI', '2018-02-20 20:00:19'),
	(212, 1, '1', 'User Telah Menambah Hak Akses User FITHRI KHAIRANI', '2018-02-20 20:00:23'),
	(213, 1, '2', 'User Telah Merubah User fithoriqil.azziz', '2018-09-27 14:21:05'),
	(214, 1, '1', 'User Telah Menambah User ahmad.wahyu', '2018-10-02 14:55:21'),
	(215, 1, '1', 'User Telah Menambah Hak Akses User RUDI SUPRIANTO', '2018-10-02 15:04:12'),
	(216, 1, '2', 'User Telah Merubah User ahmad.wahyu', '2018-10-02 15:06:50'),
	(217, 1, '1', 'User Telah Menambah User allamaski.mochammad', '2019-01-14 13:36:12'),
	(218, 1, '1', 'User Telah Menambah Hak Akses User DARU ANGGORO', '2019-01-14 13:36:34'),
	(219, 1, '1', 'User telah menambah pegawaiENGGAR FATIMA DAMAYANTI', '2019-01-17 20:21:05'),
	(220, 1, '3', 'User telah menghapus pegawai ', '2019-01-18 08:53:16'),
	(221, 1, '3', 'User telah menghapus pegawai ', '2019-01-18 08:55:27'),
	(222, 1, '3', 'User telah menghapus pegawai ', '2019-01-18 08:56:47'),
	(223, 1, '3', 'User telah menghapus pegawai ', '2019-01-18 08:56:58'),
	(224, 1, '3', 'User telah menghapus pegawai ', '2019-01-18 08:58:45'),
	(225, 1, '3', 'User telah menghapus pegawai ', '2019-01-18 09:00:48'),
	(226, 1, '3', 'User telah menghapus pegawai ', '2019-01-18 09:03:17'),
	(227, 1, '2', 'User telah mengubah pegawai ENGGAR FATIMA DAMAYANTI', '2019-01-18 09:06:48'),
	(228, 1, '3', 'User telah menghapus pegawai ', '2019-01-18 09:06:57'),
	(229, 1, '3', 'User telah menghapus pegawai ENGGAR FATIMA DAMAYANTI', '2019-01-18 09:09:41'),
	(230, 1, '3', 'User telah menghapus pegawai SULAIMAN', '2019-01-18 09:13:28'),
	(231, 1, '2', 'User telah mengubah pegawai SUGENG CAHYONO', '2019-03-14 11:33:47'),
	(232, 1, '1', 'User Telah Menambah User sugeng.cahyono', '2019-03-14 11:36:35'),
	(233, 1, '1', 'User Telah Menambah Hak Akses User ', '2019-03-14 11:36:54'),
	(234, 1, '1', 'User Telah Menambah Hak Akses User ', '2019-03-14 11:36:57'),
	(235, 1, '1', 'User Telah Menambah Hak Akses User ', '2019-03-14 11:40:54'),
	(236, 1, '1', 'User Telah Menambah Hak Akses User ', '2019-03-14 11:41:19'),
	(237, 1, '1', 'User Telah Menambah Hak Akses User ', '2019-03-14 11:43:40'),
	(238, 1, '1', 'User Telah Mengapus Hak Akses User AKHMAD ROFIQ', '2019-03-14 11:43:48'),
	(239, 1, '1', 'User Telah Mengapus Hak Akses User AKHMAD ROFIQ', '2019-03-14 11:46:59'),
	(240, 1, '1', 'User Telah Mengapus Hak Akses User AGUNG SAPUTRO', '2019-03-14 11:51:36'),
	(241, 1, '1', 'User Telah Mengapus Hak Akses User AGUNG SAPUTRO', '2019-03-14 11:51:51'),
	(242, 1, '1', 'User Telah Menambah User fungki.awaludin', '2019-03-18 13:36:24'),
	(243, 1, '1', 'User Telah Menambah Hak Akses User ', '2019-03-18 13:42:17');
/*!40000 ALTER TABLE `historyuser` ENABLE KEYS */;

DROP VIEW IF EXISTS `jumlah_petugas_hanggar`;
CREATE TABLE `jumlah_petugas_hanggar` (
	`IdHanggar` INT(11) NOT NULL,
	`jumlahPetugas` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

DROP VIEW IF EXISTS `sikabayan`;
CREATE TABLE `sikabayan` (
	`id_perusahaan` INT(10) UNSIGNED NOT NULL,
	`NPWP` VARCHAR(15) NOT NULL COLLATE 'utf8_unicode_ci',
	`nama_perusahaan` VARCHAR(100) NOT NULL COLLATE 'utf8_unicode_ci',
	`telepon` VARCHAR(25) NULL COLLATE 'utf8_unicode_ci',
	`fax` VARCHAR(50) NULL COLLATE 'utf8_unicode_ci',
	`alamat` VARCHAR(150) NULL COLLATE 'utf8_unicode_ci',
	`provinsi` VARCHAR(50) NULL COLLATE 'utf8_unicode_ci',
	`kota` VARCHAR(50) NULL COLLATE 'utf8_unicode_ci',
	`kecamatan` VARCHAR(50) NULL COLLATE 'utf8_unicode_ci',
	`kelurahan` VARCHAR(50) NULL COLLATE 'utf8_unicode_ci',
	`kode_pos` VARCHAR(10) NULL COLLATE 'utf8_unicode_ci',
	`id_tpb` INT(10) UNSIGNED NULL,
	`id_hanggar` INT(10) UNSIGNED NULL,
	`lokasi_tpb` VARCHAR(100) NULL COLLATE 'utf8_unicode_ci',
	`ijin_kelola_tpb` VARCHAR(100) NULL COLLATE 'utf8_unicode_ci',
	`latitude` VARCHAR(50) NULL COLLATE 'utf8_unicode_ci',
	`longitude` VARCHAR(50) NULL COLLATE 'utf8_unicode_ci',
	`directory_file` VARCHAR(191) NULL COLLATE 'utf8_unicode_ci',
	`status` VARCHAR(191) NULL COLLATE 'utf8_unicode_ci',
	`profil_resiko` VARCHAR(191) NULL COLLATE 'utf8_unicode_ci',
	`foto_perusahaan` VARCHAR(230) NULL COLLATE 'utf8_unicode_ci',
	`created_at` TIMESTAMP NOT NULL,
	`updated_at` TIMESTAMP NULL,
	`nama_tpb` VARCHAR(150) NULL COLLATE 'utf8_unicode_ci',
	`id_seksi_pkc` INT(10) UNSIGNED NULL,
	`nama_hanggar` VARCHAR(100) NULL COLLATE 'utf8_unicode_ci'
) ENGINE=MyISAM;

DROP TABLE IF EXISTS `tbcapaian`;
CREATE TABLE IF NOT EXISTS `tbcapaian` (
  `IdCapaian` int(11) NOT NULL AUTO_INCREMENT,
  `IdIku` int(11) NOT NULL DEFAULT '0',
  `Target` decimal(20,2) NOT NULL DEFAULT '0.00',
  `Realisasi` decimal(20,2) NOT NULL DEFAULT '0.00',
  `Capaian` decimal(4,2) NOT NULL DEFAULT '0.00',
  `WktRekam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `WktUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `PtgRekam` int(11) NOT NULL,
  PRIMARY KEY (`IdCapaian`),
  KEY `FK__tbiku_tbcapaian` (`IdIku`),
  KEY `FK__tbuser` (`PtgRekam`),
  CONSTRAINT `FK__tbiku_tbcapaian` FOREIGN KEY (`IdIku`) REFERENCES `tbiku` (`IdIku`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

DELETE FROM `tbcapaian`;
/*!40000 ALTER TABLE `tbcapaian` DISABLE KEYS */;
INSERT INTO `tbcapaian` (`IdCapaian`, `IdIku`, `Target`, `Realisasi`, `Capaian`, `WktRekam`, `WktUpdate`, `PtgRekam`) VALUES
	(1, 1, 0.20, 0.15, 0.15, '2018-01-07 14:05:30', '2018-01-07 14:05:30', 2);
/*!40000 ALTER TABLE `tbcapaian` ENABLE KEYS */;

DROP TABLE IF EXISTS `tbeselon`;
CREATE TABLE IF NOT EXISTS `tbeselon` (
  `IdEselon` int(11) NOT NULL AUTO_INCREMENT,
  `NmEselon` varchar(50) NOT NULL DEFAULT '0',
  `PtgsRekam` varchar(18) NOT NULL DEFAULT '0',
  `WktRekam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdEselon`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

DELETE FROM `tbeselon`;
/*!40000 ALTER TABLE `tbeselon` DISABLE KEYS */;
INSERT INTO `tbeselon` (`IdEselon`, `NmEselon`, `PtgsRekam`, `WktRekam`) VALUES
	(1, 'ESELON III', '199203162014111002', '2018-01-09 08:10:27'),
	(2, 'ESELON IV', '199203162014111002', '2018-01-09 08:11:06'),
	(3, 'ESELON V', '199203162014111002', '2018-01-09 08:11:51'),
	(4, 'FUNGSIONAL', '199203162014111002', '2018-01-09 08:12:13'),
	(5, 'PELAKSANA', '199203162014111002', '2018-01-09 08:12:28');
/*!40000 ALTER TABLE `tbeselon` ENABLE KEYS */;

DROP TABLE IF EXISTS `tbgrupakses`;
CREATE TABLE IF NOT EXISTS `tbgrupakses` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdUser` int(11) DEFAULT NULL,
  `IdHakAkses` int(11) DEFAULT NULL,
  `PtgsRekam` varchar(18) DEFAULT NULL,
  `WktRekam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

DELETE FROM `tbgrupakses`;
/*!40000 ALTER TABLE `tbgrupakses` DISABLE KEYS */;
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(1, 1, 1, NULL, '2019-03-14 13:15:51'),
	(2, 16, 3, '199203162014111002', '2018-01-30 17:15:43'),
	(3, 1, 2, '199203162014111002', '2018-01-31 10:19:12'),
	(4, 1, 3, '199203162014111002', '2018-01-31 10:19:15'),
	(5, 1, 4, '199203162014111002', '2018-01-31 10:19:19'),
	(6, 1, 5, '199203162014111002', '2018-01-31 10:19:22'),
	(7, 1, 6, '199203162014111002', '2018-01-31 10:19:29'),
	(8, 1, 7, '199203162014111002', '2018-01-31 10:19:32'),
	(9, 1, 8, '199203162014111002', '2018-01-31 10:19:35'),
	(10, 1, 9, '199203162014111002', '2018-01-31 10:19:38'),
	(11, 1, 10, '199203162014111002', '2018-01-31 10:19:42'),
	(12, 1, 11, '199203162014111002', '2018-01-31 10:19:46'),
	(13, 18, 5, '199203162014111002', '2018-01-31 10:21:29'),
	(14, 26, 12, '199203162014111002', '2018-02-20 20:00:19'),
	(15, 26, 6, '199203162014111002', '2018-02-20 20:00:23'),
	(16, 27, 5, '199203162014111002', '2018-10-02 15:04:12'),
	(17, 29, 5, '199203162014111002', '2019-01-14 13:36:34'),
	(18, 30, 12, '199203162014111002', '2019-03-14 11:36:54'),
	(23, 31, 6, '199203162014111002', '2019-03-18 13:46:27');
/*!40000 ALTER TABLE `tbgrupakses` ENABLE KEYS */;

DROP TABLE IF EXISTS `tbhanggar`;
CREATE TABLE IF NOT EXISTS `tbhanggar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idSeksiPKC` int(11) NOT NULL,
  `grupHanggar` varchar(50) NOT NULL,
  `lokasiHanggar` int(11) NOT NULL,
  `ptgsRkm` varchar(18) NOT NULL,
  `wktRkm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ptgsUpdate` varchar(18) NOT NULL,
  `wktUpdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

DELETE FROM `tbhanggar`;
/*!40000 ALTER TABLE `tbhanggar` DISABLE KEYS */;
INSERT INTO `tbhanggar` (`id`, `idSeksiPKC`, `grupHanggar`, `lokasiHanggar`, `ptgsRkm`, `wktRkm`, `ptgsUpdate`, `wktUpdate`) VALUES
	(1, 9, 'HANGGAR TPB 01', 11, '199203162014111002', '2019-03-14 14:46:23', '199203162014111002', '2019-03-17 13:51:30'),
	(2, 0, 'HANGGAR TPB 02', 73, '199203162014111002', '2019-03-14 14:47:35', '199203162014111002', '2019-03-15 10:34:36'),
	(3, 0, 'HANGGAR TPB 03', 101, '199203162014111002', '2019-03-14 14:51:14', '', NULL),
	(4, 0, 'HANGGAR TPB 04', 51, '199203162014111002', '2019-03-14 14:52:26', '', NULL),
	(5, 0, 'HANGGAR TPB 05', 100, '199203162014111002', '2019-03-14 14:53:07', '', NULL),
	(6, 0, 'HANGGAR TPB 06', 9, '199203162014111002', '2019-03-14 14:53:27', '', NULL),
	(7, 0, 'HANGGAR TPB 07', 57, '199203162014111002', '2019-03-15 10:37:00', '', NULL),
	(8, 0, 'HANGGAR TPB 08', 86, '199203162014111002', '2019-03-15 10:37:23', '', NULL),
	(9, 0, 'HANGGAR TPB 09', 39, '199203162014111002', '2019-03-15 10:38:45', '', NULL),
	(10, 0, 'HANGGAR TPB 10', 43, '199203162014111002', '2019-03-15 10:39:28', '', NULL),
	(11, 0, 'HANGGAR TPB 11', 85, '199203162014111002', '2019-03-15 10:40:01', '', NULL),
	(12, 0, 'HANGGAR TPB 12', 116, '199203162014111002', '2019-03-15 10:40:47', '', NULL),
	(13, 0, 'HANGGAR TPB 13', 53, '199203162014111002', '2019-03-15 10:41:31', '', NULL),
	(14, 0, 'HANGGAR TPB 14', 87, '199203162014111002', '2019-03-15 10:41:48', '', NULL);
/*!40000 ALTER TABLE `tbhanggar` ENABLE KEYS */;

DROP VIEW IF EXISTS `tbhanggar_detail`;
CREATE TABLE `tbhanggar_detail` (
	`id` INT(11) NOT NULL,
	`idSeksiPKC` INT(11) NOT NULL,
	`grupHanggar` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`lokasiHanggar` INT(11) NOT NULL,
	`ptgsRkm` VARCHAR(18) NOT NULL COLLATE 'latin1_swedish_ci',
	`wktRkm` TIMESTAMP NOT NULL,
	`id_perusahaan` INT(10) UNSIGNED NULL,
	`NPWP` VARCHAR(15) NULL COLLATE 'utf8_unicode_ci',
	`nama_perusahaan` VARCHAR(100) NULL COLLATE 'utf8_unicode_ci',
	`telepon` VARCHAR(25) NULL COLLATE 'utf8_unicode_ci',
	`fax` VARCHAR(50) NULL COLLATE 'utf8_unicode_ci',
	`alamat` VARCHAR(150) NULL COLLATE 'utf8_unicode_ci',
	`provinsi` VARCHAR(50) NULL COLLATE 'utf8_unicode_ci',
	`kota` VARCHAR(50) NULL COLLATE 'utf8_unicode_ci',
	`kecamatan` VARCHAR(50) NULL COLLATE 'utf8_unicode_ci',
	`kelurahan` VARCHAR(50) NULL COLLATE 'utf8_unicode_ci',
	`kode_pos` VARCHAR(10) NULL COLLATE 'utf8_unicode_ci',
	`id_tpb` INT(10) UNSIGNED NULL,
	`id_hanggar` INT(10) UNSIGNED NULL,
	`lokasi_tpb` VARCHAR(100) NULL COLLATE 'utf8_unicode_ci',
	`ijin_kelola_tpb` VARCHAR(100) NULL COLLATE 'utf8_unicode_ci',
	`latitude` VARCHAR(50) NULL COLLATE 'utf8_unicode_ci',
	`longitude` VARCHAR(50) NULL COLLATE 'utf8_unicode_ci',
	`directory_file` VARCHAR(191) NULL COLLATE 'utf8_unicode_ci',
	`status` VARCHAR(191) NULL COLLATE 'utf8_unicode_ci',
	`profil_resiko` VARCHAR(191) NULL COLLATE 'utf8_unicode_ci',
	`foto_perusahaan` VARCHAR(230) NULL COLLATE 'utf8_unicode_ci',
	`created_at` TIMESTAMP NULL,
	`updated_at` TIMESTAMP NULL,
	`jumlahPetugas` BIGINT(21) NULL
) ENGINE=MyISAM;

DROP TABLE IF EXISTS `tbiku`;
CREATE TABLE IF NOT EXISTS `tbiku` (
  `IdIku` int(11) NOT NULL AUTO_INCREMENT,
  `KdIku` varchar(10) NOT NULL,
  `NamaIku` varchar(255) NOT NULL,
  `DeskripsiIku` varchar(255) NOT NULL,
  `Target` decimal(20,2) NOT NULL,
  `WktRekam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PetugasRekam` int(11) NOT NULL,
  `Capaian` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`IdIku`),
  UNIQUE KEY `KdIku_UNIQUE` (`KdIku`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

DELETE FROM `tbiku`;
/*!40000 ALTER TABLE `tbiku` DISABLE KEYS */;
INSERT INTO `tbiku` (`IdIku`, `KdIku`, `NamaIku`, `DeskripsiIku`, `Target`, `WktRekam`, `PetugasRekam`, `Capaian`) VALUES
	(1, '1a-C', 'Persentase realisasi dari janji layanan penerimaan dan penelitian kelengkapan dokumen BC 2.5', '-', 0.95, '2017-12-01 10:08:15', 1, 0.15);
/*!40000 ALTER TABLE `tbiku` ENABLE KEYS */;

DROP TABLE IF EXISTS `tbjabatan`;
CREATE TABLE IF NOT EXISTS `tbjabatan` (
  `IdJabatan` int(5) NOT NULL AUTO_INCREMENT,
  `NamaJabatan` varchar(80) NOT NULL DEFAULT '0',
  `PtgsRekam` varchar(18) NOT NULL DEFAULT '0',
  `WktRekam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdJabatan`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;

DELETE FROM `tbjabatan`;
/*!40000 ALTER TABLE `tbjabatan` DISABLE KEYS */;
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(1, 'KEPALA KANTOR', '199203162014111002', '2018-01-04 08:42:02'),
	(2, 'KEPALA SUBBAGIAN UMUM', '199203162014111002', '2018-01-04 08:42:02'),
	(3, 'KEPALA SEKSI PENINDAKAN DAN PENYIDIKAN', '199203162014111002', '2018-01-04 08:42:02'),
	(4, 'KEPALA SEKSI ADMINISTRASI MANIFES', '199203162014111002', '2018-01-04 08:42:02'),
	(5, 'KEPALA SEKSI PERBENDAHARAAN', '199203162014111002', '2018-01-04 08:42:02'),
	(6, 'KEPALA SEKSI PELAYANAN KEPABEANAN DAN CUKAI I', '199203162014111002', '2018-01-04 08:42:02'),
	(7, 'KEPALA SEKSI PELAYANAN KEPABEANAN DAN CUKAI II', '199203162014111002', '2018-01-04 08:42:02'),
	(8, 'KEPALA SEKSI PELAYANAN KEPABEANAN DAN CUKAI III', '199203162014111002', '2018-01-04 08:42:02'),
	(9, 'KEPALA SEKSI PELAYANAN KEPABEANAN DAN CUKAI IV', '199203162014111002', '2018-01-04 08:42:02'),
	(10, 'KEPALA SEKSI PELAYANAN KEPABEANAN DAN CUKAI V', '199203162014111002', '2018-01-04 08:42:02'),
	(11, 'KEPALA SEKSI PELAYANAN KEPABEANAN DAN CUKAI VI', '199203162014111002', '2018-01-04 08:42:02'),
	(12, 'KEPALA SEKSI PELAYANAN KEPABEANAN DAN CUKAI VII', '199203162014111002', '2018-01-04 08:42:02'),
	(13, 'KEPALA SEKSI PELAYANAN KEPABEANAN DAN CUKAI VIII', '199203162014111002', '2018-01-04 08:42:02'),
	(14, 'KEPALA SEKSI PELAYANAN KEPABEANAN DAN CUKAI IX', '199203162014111002', '2018-01-04 08:42:02'),
	(15, 'KEPALA SEKSI PENYULUHAN DAN LAYANAN INFORMASI', '199203162014111002', '2018-01-04 08:42:02'),
	(16, 'KEPALA SEKSI KEPATUHAN INTERNAL', '199203162014111002', '2018-01-04 08:42:02'),
	(17, 'KEPALA SEKSI PENGOLAHAN DATA DAN ADMINISTRASI DOKUMEN', '199203162014111002', '2018-01-04 08:42:02'),
	(18, 'PEMERIKSA BEA DAN CUKAI MUDA', '199203162014111002', '2018-01-04 08:42:02'),
	(19, 'KEPALA URUSAN TATA USAHA DAN KEPEGAWAIAN', '199203162014111002', '2018-01-04 08:42:02'),
	(20, 'KEPALA URUSAN KEUANGAN', '199203162014111002', '2018-01-04 08:42:02'),
	(21, 'KEPALA URUSAN RUMAH TANGGA', '199203162014111002', '2018-01-04 08:42:02'),
	(22, 'KEPALA SUBSEKSI INTELIJEN I', '199203162014111002', '2018-01-04 08:42:02'),
	(23, 'KEPALA SUBSEKSI INTELIJEN II', '199203162014111002', '2018-01-04 08:42:02'),
	(24, 'KEPALA SUBSEKSI PENINDAKAN I', '199203162014111002', '2018-01-04 08:42:02'),
	(25, 'KEPALA SUBSEKSI PENINDAKAN II', '199203162014111002', '2018-01-04 08:42:02'),
	(26, 'KEPALA SUBSEKSI PENYIDIKAN DAN BARANG HASIL PENINDAKAN', '199203162014111002', '2018-01-04 08:42:02'),
	(27, 'KEPALA SUBSEKSI SARANA OPERASI', '199203162014111002', '2018-01-04 08:42:02'),
	(28, 'KEPALA SUBSEKSI PENGADMINISTRASIAN MANIFES', '199203162014111002', '2018-01-04 08:42:02'),
	(29, 'KEPALA SUBSEKSI PENGADMINISTRASIAN PEMBERITAHUAN PENGANGKUTAN BARANG', '199203162014111002', '2018-01-04 08:42:02'),
	(30, 'KEPALA SUBSEKSI ADMINISTRASI PENERIMAAN DAN JAMINAN I', '199203162014111002', '2018-01-04 08:42:02'),
	(31, 'KEPALA SUBSEKSI ADMINISTRASI PENERIMAAN DAN JAMINAN II', '199203162014111002', '2018-01-04 08:42:02'),
	(32, 'KEPALA SUBSEKSI ADMINISTRASI PENAGIHAN DAN PENGEMBALIAN I', '199203162014111002', '2018-01-04 08:42:02'),
	(33, 'KEPALA SUBSEKSI ADMINISTRASI PENAGIHAN DAN PENGEMBALIAN II', '199203162014111002', '2018-01-04 08:42:02'),
	(34, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI I', '199203162014111002', '2018-01-04 08:42:02'),
	(35, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI II', '199203162014111002', '2018-01-04 08:42:02'),
	(36, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI III', '199203162014111002', '2018-01-04 08:42:02'),
	(37, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI IV', '199203162014111002', '2018-01-04 08:42:02'),
	(38, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI V', '199203162014111002', '2018-01-04 08:42:02'),
	(39, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI VI', '199203162014111002', '2018-01-04 08:42:02'),
	(40, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI VII', '199203162014111002', '2018-01-04 08:42:02'),
	(41, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI VIII', '199203162014111002', '2018-01-04 08:42:02'),
	(42, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI IX', '199203162014111002', '2018-01-04 08:42:02'),
	(43, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI X', '199203162014111002', '2018-01-04 08:42:02'),
	(44, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XI', '199203162014111002', '2018-01-04 08:42:02'),
	(45, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XII', '199203162014111002', '2018-01-04 08:42:02'),
	(46, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XIII', '199203162014111002', '2018-01-04 08:42:02'),
	(47, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XIV', '199203162014111002', '2018-01-04 08:42:02'),
	(48, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XV', '199203162014111002', '2018-01-04 08:42:02'),
	(49, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XVI', '199203162014111002', '2018-01-04 08:42:02'),
	(50, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XVII', '199203162014111002', '2018-01-04 08:42:02'),
	(51, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XVIII', '199203162014111002', '2018-01-04 08:42:02'),
	(52, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XIX', '199203162014111002', '2018-01-04 08:42:02'),
	(53, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XX', '199203162014111002', '2018-01-04 08:42:02'),
	(54, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXI', '199203162014111002', '2018-01-04 08:42:02'),
	(55, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXII', '199203162014111002', '2018-01-04 08:42:02'),
	(56, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXIII', '199203162014111002', '2018-01-04 08:42:02'),
	(57, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXIV', '199203162014111002', '2018-01-04 08:42:02'),
	(58, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXV', '199203162014111002', '2018-01-04 08:42:02'),
	(59, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXVI', '199203162014111002', '2018-01-04 08:42:02'),
	(60, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXVII', '199203162014111002', '2018-01-04 08:42:02'),
	(61, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXVIII', '199203162014111002', '2018-01-04 08:42:02'),
	(62, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXIX', '199203162014111002', '2018-01-04 08:42:02'),
	(63, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXX', '199203162014111002', '2018-01-04 08:42:02'),
	(64, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXXI', '199203162014111002', '2018-01-04 08:42:02'),
	(65, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXXII', '199203162014111002', '2018-01-04 08:42:02'),
	(66, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXXIII', '199203162014111002', '2018-01-04 08:42:02'),
	(67, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXXIV', '199203162014111002', '2018-01-04 08:42:02'),
	(68, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXXV', '199203162014111002', '2018-01-04 08:42:02'),
	(69, 'KEPALA SUBSEKSI PENYULUHAN', '199203162014111002', '2018-01-04 08:42:02'),
	(70, 'KEPALA SUBSEKSI LAYANAN INFORMASI', '199203162014111002', '2018-01-04 08:42:02'),
	(71, 'KEPALA SUBSEKSI KEPATUHAN PELAKSANAAN TUGAS PELAYANAN DAN ADMINISTRASI', '199203162014111002', '2018-01-04 08:42:02'),
	(72, 'KEPALA SUBSEKSI KEPATUHAN PELAKSANAAN TUGAS PENGAWASAN', '199203162014111002', '2018-01-04 08:42:02'),
	(73, 'KEPALA SUBSEKSI PENGOLAHAN DATA', '199203162014111002', '2018-01-04 08:42:02'),
	(74, 'KEPALA SUBSEKSI ADMINISTRASI DOKUMEN', '199203162014111002', '2018-01-04 08:42:02'),
	(75, 'PELAKSANA ADMINISTRASI', '199203162014111002', '2018-01-04 08:42:02'),
	(76, 'PELAKSANA PEMERIKSA', '199203162014111002', '2018-01-04 08:42:02'),
	(77, 'PEJABAT FUNGSIONAL PEMERIKSA DOKUMEN', '199203162014111002', '2018-01-04 09:29:22');
/*!40000 ALTER TABLE `tbjabatan` ENABLE KEYS */;

DROP TABLE IF EXISTS `tbkodesurat`;
CREATE TABLE IF NOT EXISTS `tbkodesurat` (
  `IdKdSurat` int(11) NOT NULL AUTO_INCREMENT,
  `KdSurat` varchar(10) NOT NULL DEFAULT '0',
  `Tahun` varchar(4) NOT NULL DEFAULT '0',
  `Nomor` int(11) NOT NULL DEFAULT '1',
  `PtgsRekam` varchar(18) NOT NULL DEFAULT '-',
  `WltRekam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PtgsUpdate` varchar(50) NOT NULL DEFAULT '-',
  `WktUpdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdKdSurat`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

DELETE FROM `tbkodesurat`;
/*!40000 ALTER TABLE `tbkodesurat` DISABLE KEYS */;
INSERT INTO `tbkodesurat` (`IdKdSurat`, `KdSurat`, `Tahun`, `Nomor`, `PtgsRekam`, `WltRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(1, 'ST', '2018', 31, '199203162014111002', '2018-01-05 07:17:42', '-', '2018-01-16 11:39:01');
/*!40000 ALTER TABLE `tbkodesurat` ENABLE KEYS */;

DROP TABLE IF EXISTS `tbpangkat`;
CREATE TABLE IF NOT EXISTS `tbpangkat` (
  `IdPangkat` int(2) NOT NULL AUTO_INCREMENT,
  `KdPangkat` int(2) NOT NULL DEFAULT '0',
  `Gol` varchar(5) DEFAULT '0',
  `Pangkat` varchar(20) DEFAULT '0',
  `PtgsRekam` varchar(18) DEFAULT '0',
  `WaktuRekam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdPangkat`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

DELETE FROM `tbpangkat`;
/*!40000 ALTER TABLE `tbpangkat` DISABLE KEYS */;
INSERT INTO `tbpangkat` (`IdPangkat`, `KdPangkat`, `Gol`, `Pangkat`, `PtgsRekam`, `WaktuRekam`) VALUES
	(1, 21, 'II/a', 'PENGATUR MUDA', '199203162014111002', '2018-01-04 07:29:47'),
	(2, 22, 'II/b', 'PENGATUR MUDA TK. I', '199203162014111002', '2018-01-04 07:25:38'),
	(3, 23, 'II/c', 'PENGATUR', '199203162014111002', '2018-01-04 07:25:38'),
	(4, 24, 'II/d', 'PENGATUR TK. I', '199203162014111002', '2018-01-04 07:25:38'),
	(5, 31, 'III/a', 'PENATA MUDA', '199203162014111002', '2018-01-04 07:25:38'),
	(6, 32, 'III/b', 'PENATA MUDA TK.I', '199203162014111002', '2018-01-04 07:25:38'),
	(7, 33, 'III/c', 'PENATA', '199203162014111002', '2018-01-04 07:25:38'),
	(8, 34, 'III/d', 'PENATA TK.I', '199203162014111002', '2018-01-04 07:25:38'),
	(9, 41, 'IV/a', 'PEMBINA', '199203162014111002', '2018-01-04 07:25:38'),
	(10, 42, 'IV/b', 'PEMBINA TK.I', '199203162014111002', '2018-01-04 07:25:38'),
	(11, 43, 'IV/c', 'PEMBINA UTAMA MUDA', '199203162014111002', '2018-01-04 07:25:38'),
	(12, 44, 'IV/d', 'PEMBINA UTAMA MADYA', '199203162014111002', '2018-01-04 07:25:38'),
	(13, 45, 'IV/e', 'PEMBINA UTAMA', '199203162014111002', '2018-01-04 07:25:38');
/*!40000 ALTER TABLE `tbpangkat` ENABLE KEYS */;

DROP TABLE IF EXISTS `tbpegawai`;
CREATE TABLE IF NOT EXISTS `tbpegawai` (
  `IdPegawai` int(11) NOT NULL AUTO_INCREMENT,
  `NIPPegawai` varchar(18) NOT NULL,
  `NamaPegawai` varchar(100) NOT NULL,
  `GolPegawai` int(5) NOT NULL,
  `SeksiPegawai` int(5) NOT NULL,
  `Eselon` int(11) NOT NULL,
  `JabatanPegawai` int(5) NOT NULL,
  `Status` enum('Y','N') NOT NULL DEFAULT 'Y',
  `PtgsRekam` varchar(18) NOT NULL,
  `WaktuRekam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PtgsUpdate` varchar(18) NOT NULL,
  `WaktuUpdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdPegawai`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=latin1;

DELETE FROM `tbpegawai`;
/*!40000 ALTER TABLE `tbpegawai` DISABLE KEYS */;
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(1, '197011141989121001', 'AKHMAD ROFIQ', 42, 1, 1, 1, 'N', '199203162014111002', '2018-01-04 13:12:28', '', '2019-03-18 11:17:55'),
	(2, '196601011988101001', 'TEGUH YANUWIARSO', 34, 3, 2, 2, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(3, '197410251996021001', 'BAMBANG PRAYOGA HARYADI, S.E.', 34, 4, 2, 3, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(4, '196908241990121001', 'RINSAN SIAGIAN', 41, 5, 2, 4, 'N', '199203162014111002', '2018-01-04 13:12:28', '', '2019-03-18 11:18:00'),
	(5, '197004231991101001', 'DAVID PURWOSUSILO', 34, 6, 2, 5, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(6, '196912141990121002', 'TOTOK HERU SUSANTO', 41, 7, 2, 6, 'N', '199203162014111002', '2018-01-04 13:12:28', '', '2019-03-18 11:18:04'),
	(7, '197206291992121001', 'FUNGKI AWALUDIN', 34, 8, 2, 7, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(8, '196005141980101001', 'SUKIMIN', 34, 9, 2, 8, 'N', '199203162014111002', '2018-01-04 13:12:28', '', '2019-03-18 11:18:08'),
	(9, '197505261999031001', 'GERALD PRAWIRA HASOLOAN', 41, 10, 2, 9, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(10, '196202251983031004', 'MARLON WONGKAR', 33, 11, 2, 10, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(11, '196904161996031002', 'HENRY SITORUS', 41, 12, 2, 11, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(12, '196510241986011001', 'YAYAN SURYANA', 34, 14, 2, 13, 'N', '199203162014111002', '2018-01-04 13:12:28', '', '2019-03-18 11:18:13'),
	(13, '197309081994021002', 'MULYANA', 34, 15, 2, 14, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(14, '197501301995031002', 'I GUSTI GDE PERYATNA', 41, 16, 2, 15, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(15, '196909181989121001', 'SETYO KISWANTO', 33, 17, 2, 16, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(16, '196310011983031001', 'HERU SUDARYANTO', 34, 18, 2, 17, 'N', '199203162014111002', '2018-01-04 13:12:28', '', '2019-03-18 11:18:26'),
	(17, '197807162000121001', 'YUDI HASNAWAN', 34, 2, 4, 77, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(18, '197412021995032001', 'RHENA DESANTI', 34, 2, 4, 77, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(19, '197011121992011001', 'ADI RIZKIARTO', 34, 2, 4, 77, 'N', '199203162014111002', '2018-01-04 13:12:28', '', '2019-03-18 11:18:36'),
	(20, '197104171992012001', 'NADRA SUVIT', 33, 2, 4, 77, 'N', '199203162014111002', '2018-01-04 13:12:28', '', '2019-03-18 11:18:44'),
	(21, '197308101993011001', 'SULISTYA NUGRAHA', 33, 2, 4, 77, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(22, '197210081992121001', 'ARIEF RISDIYANTO', 33, 2, 4, 77, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(23, '197208011993021001', 'GUSTIN BUDIARSAH', 33, 2, 4, 77, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(24, '197405071995031001', 'HERU SIGIT JATMIKO', 33, 2, 4, 77, 'N', '199203162014111002', '2018-01-04 13:12:28', '', '2019-03-18 11:18:48'),
	(25, '198110272001121001', 'SULIS DWI YANTONI', 33, 2, 4, 77, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(26, '198306042003122001', 'FITHRI KHAIRANI', 32, 3, 3, 19, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(27, '197604091996031001', 'RUDI SUPRIANTO', 32, 3, 3, 20, 'N', '199203162014111002', '2018-01-04 13:12:28', '', '2019-03-18 11:18:52'),
	(28, '198204102003121001', 'ARIES FOURISA', 32, 3, 3, 21, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(29, '197607131998031002', 'DARU ANGGORO', 32, 4, 3, 22, 'N', '199203162014111002', '2018-01-04 13:12:28', '', '2019-03-18 11:18:55'),
	(30, '197807162003121001', 'AGUNG SAPUTRO', 32, 4, 3, 23, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(32, '198311122009011007', 'ANDRI NOVERIANTO', 33, 4, 3, 25, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(33, '197911232002121003', 'NOPI YORDANES', 32, 4, 3, 26, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(34, '197603111997031001', 'DEDY SETIAWAN', 33, 5, 3, 28, 'N', '199203162014111002', '2018-01-04 13:12:28', '', '2019-03-18 11:19:04'),
	(35, '197510021997031002', 'FAERUL HAKIM', 33, 5, 3, 29, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(36, '197712161998031001', 'KURNIAWAN WAHYU HIDAYAT', 32, 6, 3, 30, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(37, '198001232000011001', 'RULIYANA', 31, 6, 3, 31, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(38, '197908162000011001', 'AGUS KURNIAWAN', 31, 6, 3, 32, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(39, '197508221997031002', 'ERI ARIYANA', 32, 6, 3, 33, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(40, '196305021984031003', 'NURYANTO', 32, 0, 3, 34, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(41, '197803102003121001', 'DEDI DWUWI RAHMANTO', 32, 0, 3, 35, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(42, '196901131992031001', 'SLAMET SUBAKTI', 34, 0, 3, 36, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(43, '196011081984031010', 'R. PRATJOYO', 32, 0, 3, 37, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(44, '197901302000011001', 'ADE IRAWAN', 31, 0, 3, 38, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(45, '198506012007101001', 'FAIQ', 32, 0, 3, 40, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(46, '196111021983031002', 'MUKHLIS', 32, 0, 3, 41, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(47, '198007022003122001', 'YULIA DAMAYANTI', 32, 0, 3, 42, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(48, '195912211980031001', 'AKHMAD', 32, 0, 3, 43, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(49, '198110192009011011', 'HILTON OKTO S.', 33, 0, 3, 44, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(50, '197603131997031001', 'DEDY PURNAEDI', 32, 0, 3, 45, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(51, '197608101996021002', 'GERRY GORDON', 34, 0, 3, 46, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(52, '196306081987031002', 'SUBARUS', 34, 0, 3, 47, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(53, '197606011997031001', 'KENTUT BAGUS WIYANA', 32, 0, 3, 48, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(54, '197408311995021001', 'AHMAD NAUDIN', 33, 0, 3, 49, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(55, '196208121983031004', 'SELAMAT SUCIPTO', 33, 0, 3, 50, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(56, '197605121999031003', 'BAMBANG SUHARTONO', 33, 0, 3, 52, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(57, '197806191999031001', 'SUGENG CAHYONO', 31, 8, 3, 53, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2019-03-14 11:33:46'),
	(58, '196412311991031210', 'IRBAHARUDDIN', 33, 0, 3, 54, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(59, '197506261997031002', 'SACHRONI', 33, 0, 3, 55, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(60, '196208201982031001', 'RAHMANUDDIN', 33, 0, 3, 56, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(61, '197501181997031001', 'MOH.YUSUF', 32, 0, 3, 57, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(62, '196412211984031001', 'K. A. H. EFFENDY', 32, 0, 3, 58, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(63, '197707281998031001', 'KRISTANTO', 31, 0, 3, 60, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(64, '196406081991011001', 'WIDYO CAHYONO', 33, 0, 3, 61, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(65, '197802111997031001', 'DEDY HARYANTO', 32, 0, 3, 62, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(66, '198203302003121002', 'F.X. DEWO KUSUMO ADRIYANTO', 33, 0, 3, 63, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(67, '197702091997031001', 'AKHMAD KUNCORO', 32, 0, 3, 64, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(68, '197909142002121001', 'LUKMAN NURHAKIM', 32, 0, 3, 65, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(69, '197804051999031001', 'HUSEN ALISUGI', 31, 0, 3, 66, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(70, '197706211997031001', 'JOKO RIYANTO', 32, 0, 3, 67, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(71, '196107081984021001', 'BAMBANG SURYADI', 32, 0, 3, 68, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(72, '198110292003122001', 'NURBAETI HIJRIYANTI', 32, 16, 3, 69, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(73, '197610131997031002', 'RONI AGUNG A. D.', 32, 16, 3, 70, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(74, '197005211992031001', 'RISWANTO KURNIAWAN', 32, 17, 3, 71, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(75, '197812232001121001', 'MAHENDRA DAHOKLORY', 33, 17, 3, 72, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(76, '197802101998031002', 'DULHAEDI', 31, 18, 3, 73, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(77, '196603261990091001', 'ADI SOMA', 24, 3, 5, 75, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(78, '196202021984022001', 'FRANSINA', 34, 0, 5, 75, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(79, '196104191980031001', 'AMIRUDIN', 32, 0, 5, 75, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(80, '196009051983031003', 'DUMA SINAGA', 32, 0, 5, 75, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(81, '196004201984031001', 'SUPRIYONO', 32, 0, 5, 75, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(82, '196012111984031001', 'DJUPRI', 24, 0, 5, 75, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(83, '198303192004121004', 'WIDHODHO PRASETYO', 32, 3, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(84, '199308042013101002', 'ANDIKA HIKMAN FAHRURROZI', 22, 3, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(85, '199204252012101001', 'WAHYU SUBIANTORO', 22, 3, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(86, '199408092015022002', 'HANIK UMMU SULAIM', 21, 3, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(87, '199510182015021002', 'ARYADIKA SURYA CALVIN', 21, 3, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(88, '199506012015021002', 'MOCHAMMAD FADHIL FAHRIZA', 21, 3, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(89, '199404182015021002', 'RIZKY ERVANTO SULISTYO', 21, 3, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(90, '199508132015022001', 'VEGA AGAYANTRI SISWANDI', 21, 3, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(91, '199410192015021001', 'MUCHAMMAD DWI SATOTO NUGROHO', 21, 3, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(92, '199412212015021006', 'MUHAMMAD ROSYID RIDHO', 21, 3, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(93, '199411182015021002', 'ANDI RIZKI SAPUTRA', 21, 3, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(94, '199507262015021003', 'HAMMAM YUDANTO', 21, 3, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(95, '199604132015021001', 'IMAM AFLAH RAFIF', 21, 3, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(96, '199505262015022002', 'MEIDA ANISSA PUTRI', 21, 3, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(97, '199411202015122001', 'NOVI SETYOWATI', 21, 3, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(98, '199601192015122001', 'LILI ANDRIYANI', 21, 3, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(99, '197807121999031001', 'MUZAKKAR', 31, 4, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(100, '198812072007101001', 'FAHRI ARI KURNIAWAN', 24, 4, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(101, '198002212001121002', 'ARIF WICAKSONO', 24, 4, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(102, '198202242001121001', 'FAISAL', 24, 4, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(103, '198401022003121004', 'SURYADI', 24, 4, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(104, '199202282014111001', 'YOHANES GURACI RADITE', 23, 4, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(105, '199107232010121002', 'ALLAMASKI MOCHAMMAD', 22, 4, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(106, '198902282009121003', 'TARIS MAFAZI', 22, 4, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(107, '199402172013101001', 'RAVI RAKA FELANI', 22, 4, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(108, '199506152015021001', 'DODY FIRMANSAH SETYO BUDI', 21, 4, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(109, '197710182003121002', 'FERDIAN', 24, 5, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(110, '198112082003121002', 'ANDI CHAKRA SESSU', 24, 5, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(111, '198306202004121001', 'FACHRIZAL', 24, 5, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(112, '199502012015021003', 'DIMAS ARIF FEBRIYANTO', 21, 5, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(113, '197904042003122001', 'WIDIYA ARYANI', 32, 6, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(114, '198501232003122001', 'MUKTININGSIH', 24, 6, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(115, '199212152012101001', 'DANIEL ANDREO SIAGIAN', 22, 6, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(116, '199508182015021005', 'AHMAD AL HAZMI', 21, 6, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(117, '199512172015122001', 'SUKMANING AYU DWITAMAWATI', 21, 6, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(118, '199502112015022001', 'SABRINA LATIFA', 21, 6, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(119, '199511082015021001', 'ADHITYA REZA MULIA', 21, 6, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(120, '198510052004121004', 'MUHAMMAD ROYHAN', 31, 7, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(121, '198112252001121001', 'IRFAN PURWANTO', 24, 7, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(122, '198711262007101005', 'HEDRON PANDAPOTAN BANJARNAHOR', 24, 7, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(123, '198309102004121001', 'YEREMIA GEA', 24, 7, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(124, '198404052004121001', 'FRADIKA YOAN NURHENDRA', 24, 7, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(125, '198202102003121002', 'ADANG', 24, 7, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2019-01-18 09:08:50'),
	(126, '198403252006041009', 'LISUMARNO', 23, 7, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(127, '198412072006021003', 'ANTOK SUDARMAWAN', 23, 7, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(128, '198606042006021002', 'AHMAD WAHYU HIDAYAT', 23, 7, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(129, '198607222006021002', 'DODY SETIA PERDANA', 23, 7, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(130, '198801272007011003', 'WENDY JANUARSYAH', 23, 7, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(131, '199010132012101001', 'IKHSAN BARESI', 22, 7, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(132, '199510022015021007', 'MUHAMMAD FARIZ ZULFIKAR', 21, 7, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(133, '199411082015021002', 'IAN WIGRHA NUGRAHA', 21, 7, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(134, '199508202015021005', 'NURMAWAN AGUS', 21, 7, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(135, '199609052015022001', 'ALTI HARDIANTI', 21, 7, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(136, '199505102015021003', 'BASIT NUGROHO', 21, 7, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(137, '197805141999031002', 'MUHAMMAD AMIN', 32, 8, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(138, '198207092006042027', 'DINI HARDI', 23, 8, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(139, '199205142014111002', 'GINANJAR ADIBOWO', 23, 9, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(140, '196011271979031001', 'KUSMAGIRI', 32, 10, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(141, '198504072004121002', 'MUHAMMAD AFRIZAL', 24, 10, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(142, '198712262007011003', 'ROY TRIE SAPUTRA', 23, 11, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(143, '199208112013101001', 'ROBERTON', 22, 12, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(144, '199410282015021002', 'BENY SUBARJA', 21, 13, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(145, '198307162002121002', 'ANDI MUHAMMAD HENDRA WIRAHADIKUSUMA', 24, 14, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(146, '197507121999031001', 'RIDWAN', 32, 15, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(147, '199510262015022001', 'DINDA GITHA OKTAVIANI', 21, 15, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(148, '198207112001121001', 'RADITYA KURNIAWAN', 24, 16, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(149, '198108112003121001', 'M. RUSDI SALAM', 24, 16, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(150, '199603082015122002', 'INDRI KRISTIYASTUTI UTAMI', 21, 16, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(151, '199502112015022003', 'DINY AULIA PRADIZA', 21, 16, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(152, '198910082008121001', 'DIVO PRATAMA HISKIA', 23, 17, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(153, '199310232015021001', 'DHENY DEWA PUTRA', 21, 17, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(154, '199404062015022001', 'ADDINA FILWA PUTRI', 21, 17, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(155, '199409192015022001', 'FRANSISCA ARUM MAHARANI', 21, 17, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(156, '198504062004121002', 'MUHAMMAD ANGGARI ESTRALEGA', 24, 18, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(157, '199203162014111002', 'FITHORIQIL AZZIZ', 23, 18, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(158, '199209302012101001', 'LUKAS PATTRICK HUTAJULU', 22, 18, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(159, '199110302010121001', 'RIZKI SYAIFUL ANNAS', 22, 18, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(160, '199508092015021003', 'IKHWAN ANSHORI', 21, 18, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(161, '199508222015021004', 'MUHAMMAD TEGUH ISMAEL', 21, 18, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(162, '196205211983032001', 'NURHAIDA TAMBUN', 33, 0, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(163, '196106071983031002', 'LISMAN TAMBUNAN', 32, 0, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(164, '196107241984031001', 'SUDIYONO', 32, 0, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(165, '196309121984031002', 'YOSEPH AGUS SETIJONO', 32, 0, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(166, '196611141992031001', 'HARLAN', 32, 0, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(167, '196205091984031001', 'MURDIJANTO', 32, 0, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(168, '196206061983032001', 'SUHARNI', 32, 0, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(169, '197910071999031002', 'FAHRULI ANSYARI', 31, 0, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(170, '197904182000121002', 'RIDWANSYAH', 24, 0, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(171, '196703091990121001', 'RACHMAN', 24, 0, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(172, '198908232010121004', 'DAVID CHRISMANTO MARPAUNG', 24, 0, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(173, '197708152003122001', 'EVELIN HENI AGUSTINA', 24, 0, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(174, '198402252004121004', 'FERDY MUHAMMAD HATTA', 24, 0, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(175, '198303182004121001', 'ADIL SELAMAT ZEBUA', 24, 0, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(176, '198407082003121001', 'DEDE KADINA', 24, 0, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(177, '198503062007011001', 'MIKAIL DWI MARTANTO', 24, 0, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(178, '198108102002121004', 'SUHARIYANTO', 24, 0, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(179, '198312232003121007', 'DENI GUNAWAN', 24, 0, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(180, '199204022012101001', 'FAJAR NUGROHO BAGUS PANUNTUN', 22, 0, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(181, '199212232013101003', 'AINUL YAQIN', 22, 0, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(182, '199010082010011002', 'TEGUH TRICAHYO', 22, 0, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28'),
	(183, '199101252010011001', 'CARRY MARTUA BUSH', 22, 0, 5, 76, 'Y', '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
/*!40000 ALTER TABLE `tbpegawai` ENABLE KEYS */;

DROP TABLE IF EXISTS `tbpegawaist`;
CREATE TABLE IF NOT EXISTS `tbpegawaist` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `NIP` varchar(18) NOT NULL,
  `IdSurat` int(11) NOT NULL,
  `PtgsRekam` varchar(18) NOT NULL,
  `WktRekam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PtgsUpdate` varchar(18) NOT NULL,
  `WktUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  KEY `IdSurat` (`IdSurat`),
  CONSTRAINT `FK_PegawaiST_TbSurat` FOREIGN KEY (`IdSurat`) REFERENCES `tbsurat` (`IdSurat`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

DELETE FROM `tbpegawaist`;
/*!40000 ALTER TABLE `tbpegawaist` DISABLE KEYS */;
INSERT INTO `tbpegawaist` (`Id`, `NIP`, `IdSurat`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(11, '196310011983031001', 5, '199203162014111002', '2018-01-09 10:09:25', '', '2018-01-09 10:09:25'),
	(12, '199508222015021004', 5, '199203162014111002', '2018-01-09 10:09:25', '', '2018-01-09 10:09:25'),
	(13, '197011141989121001', 6, '199203162014111002', '2018-01-11 10:59:48', '', '2018-01-11 10:59:48'),
	(14, '196601011988101001', 6, '199203162014111002', '2018-01-11 10:59:48', '', '2018-01-11 10:59:48'),
	(15, '197410251996021001', 6, '199203162014111002', '2018-01-11 10:59:48', '', '2018-01-11 10:59:48'),
	(16, '196912141990121002', 6, '199203162014111002', '2018-01-11 10:59:48', '', '2018-01-11 10:59:48'),
	(17, '199507262015021003', 6, '199203162014111002', '2018-01-11 10:59:48', '', '2018-01-11 10:59:48'),
	(18, '197011141989121001', 7, '199203162014111002', '2018-01-16 11:39:01', '', '2018-01-16 11:39:01'),
	(19, '196601011988101001', 7, '199203162014111002', '2018-01-16 11:39:01', '', '2018-01-16 11:39:01'),
	(20, '197410251996021001', 7, '199203162014111002', '2018-01-16 11:39:01', '', '2018-01-16 11:39:01');
/*!40000 ALTER TABLE `tbpegawaist` ENABLE KEYS */;

DROP VIEW IF EXISTS `tbpegawai_detail`;
CREATE TABLE `tbpegawai_detail` (
	`IdPegawai` INT(11) NOT NULL,
	`NIPPegawai` VARCHAR(18) NOT NULL COLLATE 'latin1_swedish_ci',
	`NamaPegawai` VARCHAR(100) NOT NULL COLLATE 'latin1_swedish_ci',
	`GolPegawai` INT(5) NOT NULL,
	`Seksi` INT(5) NOT NULL,
	`Eselon` INT(11) NOT NULL,
	`JabatanPegawai` INT(5) NOT NULL,
	`Status` ENUM('Y','N') NOT NULL COLLATE 'latin1_swedish_ci',
	`PtgsRekam` VARCHAR(18) NOT NULL COLLATE 'latin1_swedish_ci',
	`WaktuRekam` TIMESTAMP NOT NULL,
	`PtgsUpdate` VARCHAR(18) NOT NULL COLLATE 'latin1_swedish_ci',
	`WaktuUpdate` TIMESTAMP NULL,
	`Pangkat` VARCHAR(28) NULL COLLATE 'latin1_swedish_ci',
	`NmEselon` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`NmUnit` VARCHAR(80) NULL COLLATE 'latin1_swedish_ci',
	`NamaJabatan` VARCHAR(80) NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

DROP TABLE IF EXISTS `tbseksi`;
CREATE TABLE IF NOT EXISTS `tbseksi` (
  `IdSeksi` int(11) NOT NULL AUTO_INCREMENT,
  `KdUnit` varchar(20) NOT NULL DEFAULT '0',
  `NmUnit` varchar(80) NOT NULL DEFAULT '0',
  `PtgsRekam` varchar(18) NOT NULL DEFAULT '0',
  `WktRekam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdSeksi`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

DELETE FROM `tbseksi`;
/*!40000 ALTER TABLE `tbseksi` DISABLE KEYS */;
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(1, 'KPP.MP.07', 'KEPALA KANTOR', '199203162014111002', '2018-01-04 09:17:48'),
	(2, 'KPP.MP.0700', 'FUNGSIONAL', '199203162014111002', '2018-01-04 09:17:48'),
	(3, 'KPP.MP.0701', 'SUBBAGIAN UMUM', '199203162014111002', '2018-01-04 09:17:48'),
	(4, 'KPP.MP.0702', 'SEKSI PENINDAKAN DAN PENYIDIKAN', '199203162014111002', '2018-01-04 09:17:48'),
	(5, 'KPP.MP.0703', 'SEKSI ADMINISTRASI MANIFES', '199203162014111002', '2018-01-04 09:17:48'),
	(6, 'KPP.MP.0704', 'SEKSI PERBENDAHARAAN', '199203162014111002', '2018-01-04 09:17:48'),
	(7, 'KPP.MP.0705', 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI I', '199203162014111002', '2018-01-04 09:17:48'),
	(8, 'KPP.MP.0706', 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI II', '199203162014111002', '2018-01-04 09:17:48'),
	(9, 'KPP.MP.0707', 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI III', '199203162014111002', '2018-01-04 09:17:48'),
	(10, 'KPP.MP.0708', 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI IV', '199203162014111002', '2018-01-04 09:17:48'),
	(11, 'KPP.MP.0709', 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI V', '199203162014111002', '2018-01-04 09:17:48'),
	(12, 'KPP.MP.0710', 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI VI', '199203162014111002', '2018-01-04 09:17:48'),
	(13, 'KPP.MP.0711', 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI VII', '199203162014111002', '2018-01-04 09:17:48'),
	(14, 'KPP.MP.0712', 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI VIII', '199203162014111002', '2018-01-04 09:17:48'),
	(15, 'KPP.MP.0713', 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI IX', '199203162014111002', '2018-01-04 09:17:48'),
	(16, 'KPP.MP.0714', 'SEKSI PENYULUHAN DAN LAYANAN INFORMASI', '199203162014111002', '2018-01-04 09:17:48'),
	(17, 'KPP.MP.0715', 'SEKSI KEPATUHAN INTERNAL', '199203162014111002', '2018-01-04 09:17:48'),
	(18, 'KPP.MP.0716', 'SEKSI PENGOLAHAN DATA DAN ADMINISTRASI DOKUMEN', '199203162014111002', '2018-01-04 09:17:48');
/*!40000 ALTER TABLE `tbseksi` ENABLE KEYS */;

DROP TABLE IF EXISTS `tbsurat`;
CREATE TABLE IF NOT EXISTS `tbsurat` (
  `IdSurat` int(11) NOT NULL AUTO_INCREMENT,
  `KdSurat` int(11) NOT NULL DEFAULT '0' COMMENT 'Id Kode Surat',
  `NmrSurat` int(11) NOT NULL DEFAULT '0',
  `TglSurat` date NOT NULL,
  `Tujuan` varchar(100) DEFAULT NULL,
  `Perihal` varchar(255) NOT NULL,
  `TglMulai` date DEFAULT NULL,
  `TglSelesai` date DEFAULT NULL,
  `PtgsRekam` varchar(18) NOT NULL,
  `WktRekam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PtgsUpdate` varchar(18) NOT NULL,
  `WktUpdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdSurat`),
  KEY `IdKdSurat` (`KdSurat`),
  CONSTRAINT `FK_Surat_KdSurat` FOREIGN KEY (`KdSurat`) REFERENCES `tbkodesurat` (`IdKdSurat`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

DELETE FROM `tbsurat`;
/*!40000 ALTER TABLE `tbsurat` DISABLE KEYS */;
INSERT INTO `tbsurat` (`IdSurat`, `KdSurat`, `NmrSurat`, `TglSurat`, `Tujuan`, `Perihal`, `TglMulai`, `TglSelesai`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(5, 1, 28, '2018-01-09', '213', '132', '2018-01-09', '2018-01-09', '199203162014111002', '2018-01-09 10:09:25', '', NULL),
	(6, 1, 29, '2018-01-11', 'Jakarta', 'Menghadiri Rapat Koordinasi Pengawasan', '2018-01-11', '2018-01-12', '199203162014111002', '2018-01-11 10:59:48', '', NULL),
	(7, 1, 30, '2018-01-16', 'BANDUNG', 'RAKORWAS', '2018-01-02', '2018-01-18', '', '2018-01-16 11:39:01', '', NULL);
/*!40000 ALTER TABLE `tbsurat` ENABLE KEYS */;

DROP TABLE IF EXISTS `tbuser`;
CREATE TABLE IF NOT EXISTS `tbuser` (
  `IdUser` int(11) NOT NULL AUTO_INCREMENT,
  `NipUser` varchar(18) NOT NULL,
  `NmUser` varchar(80) NOT NULL,
  `Password` varchar(80) NOT NULL,
  `GrupMenu` tinyint(4) NOT NULL,
  `WktRekam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `PtgsRekam` varchar(18) NOT NULL,
  `Status` enum('Y','N') NOT NULL,
  PRIMARY KEY (`IdUser`),
  UNIQUE KEY `NipUser` (`NipUser`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

DELETE FROM `tbuser`;
/*!40000 ALTER TABLE `tbuser` DISABLE KEYS */;
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(1, '199203162014111002', 'fithoriqil.azziz', '$2y$09$AfdiODddZMgUENeBp5HN9ezumFFgL1UHwXpdcTbBBgxI.PegE37bW', 1, '2018-09-27 14:21:04', '199203162014111002', 'Y'),
	(16, '197011141989121001', 'akhmad.rofiq', '$2y$09$NVYSpBkXvUqPnitdCiX3W.m/W0.2u0oIyPU18i0R1SeRYJHe1T9Jy', 3, '2019-03-18 11:17:55', '199203162014111002', 'N'),
	(17, '199502112015022001', 'sabrina.latifa', '$2y$09$tDtnbklU6UdVIe20cEwv8uqTgwyANvF.KeS.FmI.gSWa3Ybrojgp.', 7, '2018-01-19 16:54:39', '199203162014111002', 'Y'),
	(18, '199402172013101001', 'ravi.raka felani', '$2y$09$p4ydzxaJzgmmlosZEsHw/OZBzN.HFVhJ89qB2pkAq6x3udoIVTQFe', 5, '2018-01-23 10:46:22', '199203162014111002', 'Y'),
	(19, '199202282014111001', 'yohanes.guraci', '$2y$09$sJlxxR/JYr8VS5RFn1agh.TqDzsKDDBXZeXuf64WWlmjNs4KndsYe', 5, '2018-01-24 10:12:31', '199203162014111002', 'Y'),
	(20, '197807162003121001', 'agung.saputro', '$2y$09$2pbHmNIDis.MYKe9Gvp/lOckzlMRpIvmYgQ32umGexmvNNmWz.XuC', 5, '2018-01-24 10:12:50', '199203162014111002', 'Y'),
	(22, '197807121999031001', 'muzakkar', '$2y$09$zJbUgmXpLYBIY23MUdvsEeSGaR.5oYHDIihbQilmeWN7Y614IBKaC', 5, '2018-01-24 10:13:27', '199203162014111002', 'Y'),
	(23, '199506152015021001', 'dody.firmansah', '$2y$09$pEehomNyHhHJCvK8BebeLegqDdwl4RCmKaKvfjL5cbjE61qybpbJK', 5, '2018-01-24 10:13:50', '199203162014111002', 'Y'),
	(24, '198202242001121001', 'faisal', '$2y$09$74M4cHhojkwNS0Jt.3jhGugGKZiuQzZdHWUUtm2EjX7/5rA0vInI2', 5, '2018-01-24 10:14:05', '199203162014111002', 'Y'),
	(26, '199411202015122001', 'novi.setyowati', '$2y$09$uTDEnJcKKzizH5GTj2EL6.E2yc7iGsD1D4IoJD8DUNvhHbB4NVHiK', 12, '2018-02-20 19:59:58', '199203162014111002', 'Y'),
	(27, '198606042006021002', 'ahmad.wahyu', '$2y$09$HB4Xen1zXNm/xAN8KeqvA.4wkZKw9vSUKcWgAHoEl/ERtUbyj3vFm', 5, '2018-10-02 15:06:50', '199203162014111002', 'Y'),
	(29, '199107232010121002', 'allamaski.mochammad', '$2y$09$qiKppoR3tiSGkiMEj0QfJOWbTGHM.GF00oUH6Kxyl2iv7Qsg01NdW', 4, '2019-01-14 13:36:12', '199203162014111002', 'Y'),
	(30, '197806191999031001', 'sugeng.cahyono', '$2y$09$jBLInAHdq2rODkoWKY5LBOM7Ik5xRyEfL84qtre4j0dqR47f8hem2', 12, '2019-03-14 11:36:35', '199203162014111002', 'Y'),
	(31, '197206291992121001', 'fungki.awaludin', '$2y$09$LLilcw97sDhlk7GF99E3F.YywOurphkSgtAMAb7jtWh4.cTyk8f12', 6, '2019-03-18 13:36:24', '199203162014111002', 'Y');
/*!40000 ALTER TABLE `tbuser` ENABLE KEYS */;

DROP VIEW IF EXISTS `tbuser_detail`;
CREATE TABLE `tbuser_detail` (
	`IdUser` INT(11) NOT NULL,
	`NipUser` VARCHAR(18) NOT NULL COLLATE 'latin1_swedish_ci',
	`NmUser` VARCHAR(80) NOT NULL COLLATE 'latin1_swedish_ci',
	`Password` VARCHAR(80) NOT NULL COLLATE 'latin1_swedish_ci',
	`GrupMenu` TINYINT(4) NOT NULL,
	`Status` ENUM('Y','N') NOT NULL COLLATE 'latin1_swedish_ci',
	`IdPegawai` INT(11) NULL,
	`NamaPegawai` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`NIPPegawai` VARCHAR(18) NULL COLLATE 'latin1_swedish_ci',
	`SeksiPegawai` INT(5) NULL,
	`NamaJabatan` VARCHAR(80) NULL COLLATE 'latin1_swedish_ci',
	`IdSeksi` INT(11) NULL,
	`KdUnit` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`NmUnit` VARCHAR(80) NULL COLLATE 'latin1_swedish_ci',
	`Pangkat` VARCHAR(28) NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

DROP VIEW IF EXISTS `tbview_grupakses`;
CREATE TABLE `tbview_grupakses` (
	`Id` INT(11) NOT NULL,
	`IdUser` INT(11) NULL,
	`IdHakAkses` INT(11) NULL,
	`PtgsRekam` VARCHAR(18) NULL COLLATE 'latin1_swedish_ci',
	`WktRekam` TIMESTAMP NOT NULL,
	`NamaPegawai` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`GrupMenu` VARCHAR(100) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

DROP VIEW IF EXISTS `tb_detail_plh`;
CREATE TABLE `tb_detail_plh` (
	`IdPlh` INT(11) NOT NULL,
	`NmrSprint` INT(11) NULL,
	`TglSprint` DATE NULL,
	`IdLeave` INT(11) NOT NULL COMMENT 'Id Surat Tugas / Id Surat Cuti ',
	`KdLeave` INT(11) NOT NULL COMMENT 'Kode Surat Dasar PLH',
	`NIPPejabatLeave` VARCHAR(18) NOT NULL COMMENT 'NIP Pejabat ST atau Cuti' COLLATE 'latin1_swedish_ci',
	`NIPPejabatPengganti` VARCHAR(18) NULL COMMENT 'NIP PLH' COLLATE 'latin1_swedish_ci',
	`TglMulai` DATE NULL,
	`TglSelesai` DATE NULL,
	`PtgsRekam` VARCHAR(18) NULL COLLATE 'latin1_swedish_ci',
	`WktRekam` TIMESTAMP NULL,
	`PtgsUpdate` VARCHAR(18) NULL COLLATE 'latin1_swedish_ci',
	`WktUpdate` TIMESTAMP NULL,
	`NmrSurat` INT(11) NULL,
	`TglSurat` DATE NULL,
	`NamaPejabat` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`NamaPengganti` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

DROP VIEW IF EXISTS `tb_hanggar_tpb`;
CREATE TABLE `tb_hanggar_tpb` (
	`Id` INT(11) NOT NULL,
	`idPerusahaan` INT(11) NOT NULL,
	`idHanggar` INT(11) NOT NULL COMMENT 'tbhanggar -> appdashboard',
	`ptgsRekam` VARCHAR(18) NOT NULL COLLATE 'latin1_swedish_ci',
	`wktRekam` TIMESTAMP NOT NULL,
	`id_perusahaan` INT(10) UNSIGNED NULL,
	`NPWP` VARCHAR(15) NULL COLLATE 'utf8_unicode_ci',
	`nama_perusahaan` VARCHAR(100) NULL COLLATE 'utf8_unicode_ci',
	`telepon` VARCHAR(25) NULL COLLATE 'utf8_unicode_ci',
	`fax` VARCHAR(50) NULL COLLATE 'utf8_unicode_ci',
	`alamat` VARCHAR(150) NULL COLLATE 'utf8_unicode_ci',
	`provinsi` VARCHAR(50) NULL COLLATE 'utf8_unicode_ci',
	`kota` VARCHAR(50) NULL COLLATE 'utf8_unicode_ci',
	`kecamatan` VARCHAR(50) NULL COLLATE 'utf8_unicode_ci',
	`kelurahan` VARCHAR(50) NULL COLLATE 'utf8_unicode_ci',
	`kode_pos` VARCHAR(10) NULL COLLATE 'utf8_unicode_ci',
	`id_tpb` INT(10) UNSIGNED NULL,
	`id_hanggar` INT(10) UNSIGNED NULL,
	`lokasi_tpb` VARCHAR(100) NULL COLLATE 'utf8_unicode_ci',
	`ijin_kelola_tpb` VARCHAR(100) NULL COLLATE 'utf8_unicode_ci',
	`latitude` VARCHAR(50) NULL COLLATE 'utf8_unicode_ci',
	`longitude` VARCHAR(50) NULL COLLATE 'utf8_unicode_ci',
	`directory_file` VARCHAR(191) NULL COLLATE 'utf8_unicode_ci',
	`status` VARCHAR(191) NULL COLLATE 'utf8_unicode_ci',
	`profil_resiko` VARCHAR(191) NULL COLLATE 'utf8_unicode_ci',
	`foto_perusahaan` VARCHAR(230) NULL COLLATE 'utf8_unicode_ci',
	`created_at` TIMESTAMP NULL,
	`updated_at` TIMESTAMP NULL,
	`nama_tpb` VARCHAR(150) NULL COLLATE 'utf8_unicode_ci',
	`id_seksi_pkc` INT(10) UNSIGNED NULL,
	`nama_hanggar` VARCHAR(100) NULL COLLATE 'utf8_unicode_ci',
	`grupHanggar` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`lokasiHanggar` INT(11) NULL
) ENGINE=MyISAM;

DROP VIEW IF EXISTS `tb_non_user`;
CREATE TABLE `tb_non_user` (
	`IdPegawai` INT(11) NOT NULL,
	`NIPPegawai` VARCHAR(18) NOT NULL COLLATE 'latin1_swedish_ci',
	`NamaPegawai` VARCHAR(100) NOT NULL COLLATE 'latin1_swedish_ci',
	`GolPegawai` INT(5) NOT NULL,
	`SeksiPegawai` INT(5) NOT NULL,
	`Eselon` INT(11) NOT NULL,
	`JabatanPegawai` INT(5) NOT NULL,
	`PtgsRekam` VARCHAR(18) NOT NULL COLLATE 'latin1_swedish_ci',
	`WaktuRekam` TIMESTAMP NOT NULL,
	`PtgsUpdate` VARCHAR(18) NOT NULL COLLATE 'latin1_swedish_ci',
	`WaktuUpdate` TIMESTAMP NULL,
	`Pangkat` VARCHAR(28) NULL COLLATE 'latin1_swedish_ci',
	`NmEselon` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`NmUnit` VARCHAR(80) NULL COLLATE 'latin1_swedish_ci',
	`NamaJabatan` VARCHAR(80) NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

DROP TABLE IF EXISTS `tb_petugas_hanggar`;
CREATE TABLE IF NOT EXISTS `tb_petugas_hanggar` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdHanggar` int(11) NOT NULL,
  `IdPegawai` int(11) NOT NULL,
  `PtgsRkm` varchar(18) NOT NULL,
  `WktRkm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PtgsUpdate` varchar(18) NOT NULL,
  `WktUpdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

DELETE FROM `tb_petugas_hanggar`;
/*!40000 ALTER TABLE `tb_petugas_hanggar` DISABLE KEYS */;
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(5, 6, 57, '199203162014111002', '2019-03-16 07:43:13', '', NULL),
	(6, 6, 111, '199203162014111002', '2019-03-16 10:47:42', '', NULL);
/*!40000 ALTER TABLE `tb_petugas_hanggar` ENABLE KEYS */;

DROP VIEW IF EXISTS `tb_petugas_hanggar_detail`;
CREATE TABLE `tb_petugas_hanggar_detail` (
	`Id` INT(11) NOT NULL,
	`IdHanggar` INT(11) NOT NULL,
	`IdPegawai` INT(11) NULL,
	`NIPPegawai` VARCHAR(18) NULL COLLATE 'latin1_swedish_ci',
	`NamaPegawai` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`GolPegawai` INT(5) NULL,
	`Seksi` INT(5) NULL,
	`Eselon` INT(11) NULL,
	`JabatanPegawai` INT(5) NULL,
	`Status` ENUM('Y','N') NULL COLLATE 'latin1_swedish_ci',
	`PtgsRekam` VARCHAR(18) NULL COLLATE 'latin1_swedish_ci',
	`WaktuRekam` TIMESTAMP NULL,
	`PtgsUpdate` VARCHAR(18) NULL COLLATE 'latin1_swedish_ci',
	`WaktuUpdate` TIMESTAMP NULL,
	`Pangkat` VARCHAR(28) NULL COLLATE 'latin1_swedish_ci',
	`NmEselon` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`NmUnit` VARCHAR(80) NULL COLLATE 'latin1_swedish_ci',
	`NamaJabatan` VARCHAR(80) NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

DROP TABLE IF EXISTS `tb_plh`;
CREATE TABLE IF NOT EXISTS `tb_plh` (
  `IdPlh` int(11) NOT NULL AUTO_INCREMENT,
  `NmrSprint` int(11) DEFAULT NULL,
  `TglSprint` date DEFAULT NULL,
  `IdLeave` int(11) NOT NULL DEFAULT '0' COMMENT 'Id Surat Tugas / Id Surat Cuti ',
  `KdLeave` int(11) NOT NULL DEFAULT '0' COMMENT 'Kode Surat Dasar PLH',
  `NIPPejabatLeave` varchar(18) NOT NULL DEFAULT '0' COMMENT 'NIP Pejabat ST atau Cuti',
  `NIPPejabatPengganti` varchar(18) DEFAULT NULL COMMENT 'NIP PLH',
  `TglMulai` date DEFAULT NULL,
  `TglSelesai` date DEFAULT NULL,
  `PtgsRekam` varchar(18) DEFAULT '0',
  `WktRekam` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `PtgsUpdate` varchar(18) DEFAULT '0',
  `WktUpdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdPlh`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

DELETE FROM `tb_plh`;
/*!40000 ALTER TABLE `tb_plh` DISABLE KEYS */;
INSERT INTO `tb_plh` (`IdPlh`, `NmrSprint`, `TglSprint`, `IdLeave`, `KdLeave`, `NIPPejabatLeave`, `NIPPejabatPengganti`, `TglMulai`, `TglSelesai`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(10, 1, '2018-01-11', 5, 1, '196310011983031001', '197410251996021001', '2018-01-11', '2018-01-11', '199203162014111002', '2018-01-09 10:09:25', '199203162014111002', '2018-01-11 10:31:56'),
	(11, 2, '2018-01-11', 5, 1, '197011141989121001', '196908241990121001', '2018-01-11', '2018-01-11', '199203162014111002', '2018-01-11 10:42:27', NULL, '2018-01-11 10:42:27'),
	(12, NULL, NULL, 6, 1, '197011141989121001', NULL, NULL, NULL, '199203162014111002', '2018-01-11 10:59:48', '0', '2018-01-11 10:59:48'),
	(13, 10, '2018-01-16', 6, 1, '196601011988101001', '198306042003122001', '2018-01-16', '2018-01-16', '199203162014111002', '2018-01-11 10:59:48', '199203162014111002', '2018-01-16 08:24:13'),
	(14, NULL, NULL, 6, 1, '197410251996021001', NULL, NULL, NULL, '199203162014111002', '2018-01-11 10:59:48', '0', '2018-01-11 10:59:48'),
	(15, NULL, NULL, 6, 1, '196912141990121002', NULL, NULL, NULL, '199203162014111002', '2018-01-11 10:59:48', '0', '2018-01-11 10:59:48'),
	(16, NULL, NULL, 7, 1, '197011141989121001', NULL, NULL, NULL, '199203162014111002', '2018-01-16 11:39:01', '0', '2018-01-16 11:39:01'),
	(17, NULL, NULL, 7, 1, '196601011988101001', NULL, NULL, NULL, '199203162014111002', '2018-01-16 11:39:01', '0', '2018-01-16 11:39:01'),
	(18, NULL, NULL, 7, 1, '197410251996021001', NULL, NULL, NULL, '199203162014111002', '2018-01-16 11:39:01', '0', '2018-01-16 11:39:01');
/*!40000 ALTER TABLE `tb_plh` ENABLE KEYS */;

DROP TABLE IF EXISTS `tb_setting_seksi_pkc`;
CREATE TABLE IF NOT EXISTS `tb_setting_seksi_pkc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namaJabatan` varchar(50) NOT NULL,
  `idJabatan` int(11) DEFAULT NULL,
  `ptgsUpdate` varchar(18) NOT NULL,
  `wktUpdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

DELETE FROM `tb_setting_seksi_pkc`;
/*!40000 ALTER TABLE `tb_setting_seksi_pkc` DISABLE KEYS */;
INSERT INTO `tb_setting_seksi_pkc` (`id`, `namaJabatan`, `idJabatan`, `ptgsUpdate`, `wktUpdate`) VALUES
	(1, 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI I', 6, '', '2019-03-18 13:32:33'),
	(2, 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI II', 7, '', '2019-03-18 13:32:36'),
	(3, 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI III', 8, '', '2019-03-18 13:32:38'),
	(4, 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI IV', 9, '', '2019-03-18 13:32:41'),
	(5, 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI V', 10, '', '2019-03-18 13:32:44'),
	(6, 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI VI', 11, '', '2019-03-18 13:32:47'),
	(7, 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI VII', 12, '', '2019-03-18 13:32:50'),
	(8, 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI VIII', 13, '', '2019-03-18 13:32:51'),
	(9, 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI IX', 14, '', '2019-03-18 13:32:53');
/*!40000 ALTER TABLE `tb_setting_seksi_pkc` ENABLE KEYS */;

DROP TRIGGER IF EXISTS `tbcapaian_after_insert`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tbcapaian_after_insert` AFTER INSERT ON `tbcapaian` FOR EACH ROW BEGIN
	UPDATE tbiku
	SET tbiku.Capaian = (SELECT tbcapaian.Capaian FROM tbcapaian ORDER BY tbcapaian.IdCapaian DESC LIMIT 1)
	WHERE tbiku.IdIku = (SELECT tbcapaian.IdIku FROM tbcapaian ORDER BY tbcapaian.IdCapaian DESC LIMIT 1);
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

DROP VIEW IF EXISTS `detail_pegawaist`;
DROP TABLE IF EXISTS `detail_pegawaist`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `detail_pegawaist` AS SELECT tbpegawaist.id, tbpegawai.IdPegawai, tbpegawai.NIPPegawai, tbpegawai.NamaPegawai, tbpegawai.GolPegawai, tbpegawai.SeksiPegawai, tbpegawai.JabatanPegawai, tbsurat.* FROM tbpegawaist 
LEFT JOIN tbpegawai ON tbpegawaist.NIP = tbpegawai.NIPPegawai
LEFT JOIN tbsurat ON tbpegawaist.IdSurat = tbsurat.IdSurat ;

DROP VIEW IF EXISTS `jumlah_petugas_hanggar`;
DROP TABLE IF EXISTS `jumlah_petugas_hanggar`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `jumlah_petugas_hanggar` AS SELECT IdHanggar, COUNT(IdPegawai) AS jumlahPetugas FROM tb_petugas_hanggar group by IdHanggar ;

DROP VIEW IF EXISTS `sikabayan`;
DROP TABLE IF EXISTS `sikabayan`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `sikabayan` AS SELECT * FROM sikabayan_app.tpbdetail ;

DROP VIEW IF EXISTS `tbhanggar_detail`;
DROP TABLE IF EXISTS `tbhanggar_detail`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `tbhanggar_detail` AS SELECT 
        `a`.`id` AS `id`,
        `a`.`idSeksiPKC` AS `idSeksiPKC`,
        `a`.`grupHanggar` AS `grupHanggar`,
        `a`.`lokasiHanggar` AS `lokasiHanggar`,
        `a`.`ptgsRkm` AS `ptgsRkm`,
        `a`.`wktRkm` AS `wktRkm`,
        `b`.`id_perusahaan` AS `id_perusahaan`,
        `b`.`NPWP` AS `NPWP`,
        `b`.`nama_perusahaan` AS `nama_perusahaan`,
        `b`.`telepon` AS `telepon`,
        `b`.`fax` AS `fax`,
        `b`.`alamat` AS `alamat`,
        `b`.`provinsi` AS `provinsi`,
        `b`.`kota` AS `kota`,
        `b`.`kecamatan` AS `kecamatan`,
        `b`.`kelurahan` AS `kelurahan`,
        `b`.`kode_pos` AS `kode_pos`,
        `b`.`id_tpb` AS `id_tpb`,
        `b`.`id_hanggar` AS `id_hanggar`,
        `b`.`lokasi_tpb` AS `lokasi_tpb`,
        `b`.`ijin_kelola_tpb` AS `ijin_kelola_tpb`,
        `b`.`latitude` AS `latitude`,
        `b`.`longitude` AS `longitude`,
        `b`.`directory_file` AS `directory_file`,
        `b`.`status` AS `status`,
        `b`.`profil_resiko` AS `profil_resiko`,
        `b`.`foto_perusahaan` AS `foto_perusahaan`,
        `b`.`created_at` AS `created_at`,
        `b`.`updated_at` AS `updated_at`,
        `c`.`jumlahPetugas` AS `jumlahPetugas`
    FROM
        ((`appdashboard`.`tbhanggar` `a`
        LEFT JOIN `sikabayan_app`.`tb_perusahaan` `b` ON ((`a`.`lokasiHanggar` = `b`.`id_perusahaan`)))
        LEFT JOIN `appdashboard`.`jumlah_petugas_hanggar` `c` ON ((`a`.`id` = `c`.`IdHanggar`))) ;

DROP VIEW IF EXISTS `tbpegawai_detail`;
DROP TABLE IF EXISTS `tbpegawai_detail`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `tbpegawai_detail` AS SELECT 
        `a`.`IdPegawai` AS `IdPegawai`,
        `a`.`NIPPegawai` AS `NIPPegawai`,
        `a`.`NamaPegawai` AS `NamaPegawai`,
        `a`.`GolPegawai` AS `GolPegawai`,
        `a`.`SeksiPegawai` AS `Seksi`,
        `a`.`Eselon` AS `Eselon`,
        `a`.`JabatanPegawai` AS `JabatanPegawai`,
        `a`.`Status` AS `Status`,
        `a`.`PtgsRekam` AS `PtgsRekam`,
        `a`.`WaktuRekam` AS `WaktuRekam`,
        `a`.`PtgsUpdate` AS `PtgsUpdate`,
        `a`.`WaktuUpdate` AS `WaktuUpdate`,
        CONCAT(`d`.`Pangkat`, ' / ', `d`.`Gol`) AS `Pangkat`,
        `b`.`NmEselon` AS `NmEselon`,
        `e`.`NmUnit` AS `NmUnit`,
        `c`.`NamaJabatan` AS `NamaJabatan`
    FROM
        ((((`appdashboard`.`tbpegawai` `a`
        LEFT JOIN `appdashboard`.`tbeselon` `b` ON ((`a`.`Eselon` = `b`.`IdEselon`)))
        LEFT JOIN `appdashboard`.`tbjabatan` `c` ON ((`a`.`JabatanPegawai` = `c`.`IdJabatan`)))
        LEFT JOIN `appdashboard`.`tbpangkat` `d` ON ((`a`.`GolPegawai` = `d`.`KdPangkat`)))
        LEFT JOIN `appdashboard`.`tbseksi` `e` ON ((`a`.`SeksiPegawai` = `e`.`IdSeksi`))) ;

DROP VIEW IF EXISTS `tbuser_detail`;
DROP TABLE IF EXISTS `tbuser_detail`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `tbuser_detail` AS SELECT a.IdUser,a.NipUser, a.NmUser, a.`Password`, a.`GrupMenu`, a.`Status`,b.IdPegawai, b.NamaPegawai, b.NIPPegawai , b.SeksiPegawai, c.NamaJabatan, d.IdSeksi, d.KdUnit, d.NmUnit, CONCAT(e.Pangkat," - ",e.Gol) AS Pangkat FROM tbuser a
LEFT JOIN tbpegawai b ON a.NipUser = b.NIPPegawai
LEFT JOIN tbjabatan c ON b.JabatanPegawai=c.IdJabatan
LEFT JOIN tbseksi d ON b.SeksiPegawai=d.IdSeksi
LEFT JOIN tbpangkat e ON b.GolPegawai=e.KdPangkat ;

DROP VIEW IF EXISTS `tbview_grupakses`;
DROP TABLE IF EXISTS `tbview_grupakses`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `tbview_grupakses` AS SELECT a.*, c.NamaPegawai , b.GrupMenu FROM tbgrupakses a
LEFT JOIN grupmenu b ON a.IdHakAkses=b.IdGrupMenu
LEFT JOIN tbuser_detail c ON a.IdUser = c.IdUser ;

DROP VIEW IF EXISTS `tb_detail_plh`;
DROP TABLE IF EXISTS `tb_detail_plh`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `tb_detail_plh` AS SELECT tb_plh.*, tbsurat.NmrSurat, tbsurat.TglSurat, a.NamaPegawai AS NamaPejabat, b.NamaPegawai AS NamaPengganti FROM tb_plh
LEFT JOIN tbsurat ON tb_plh.IdLeave = tbsurat.IdSurat
LEFT JOIN tbpegawai a ON tb_plh.NIPPejabatLeave = a.NIPPegawai
LEFT JOIN tbpegawai b ON tb_plh.NIPPejabatPengganti = b.NIPPegawai ;

DROP VIEW IF EXISTS `tb_hanggar_tpb`;
DROP TABLE IF EXISTS `tb_hanggar_tpb`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `tb_hanggar_tpb` AS SELECT `a`.*,`b`.*,`c`.`grupHanggar`,`c`.`lokasiHanggar` FROM `sikabayan_app`.`tb_hanggar_tpb` `a`
LEFT JOIN `sikabayan_app`.`tpbdetail` `b` ON `a`.`idPerusahaan` = `b`.`id_perusahaan`
LEFT JOIN `appdashboard`.`tbhanggar` `c` ON `a`.`idHanggar` = `c`.`id` ;

DROP VIEW IF EXISTS `tb_non_user`;
DROP TABLE IF EXISTS `tb_non_user`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `tb_non_user` AS SELECT a.*, CONCAT(d.Pangkat," / ",d.Gol) AS Pangkat, b.NmEselon, e.NmUnit, c.NamaJabatan  FROM tbpegawai a
LEFT JOIN tbeselon b ON a.Eselon=b.IdEselon
LEFT JOIN tbjabatan c ON a.JabatanPegawai=c.IdJabatan
LEFT JOIN tbpangkat d ON a.GolPegawai=d.KdPangkat
LEFT JOIN tbseksi e ON a.SeksiPegawai=e.IdSeksi
WHERE NOT(a.NIPPegawai IN(SELECT NipUser FROM tbuser)) ORDER BY a.IdPegawai ;

DROP VIEW IF EXISTS `tb_petugas_hanggar_detail`;
DROP TABLE IF EXISTS `tb_petugas_hanggar_detail`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `tb_petugas_hanggar_detail` AS SELECT 
        `a`.`Id` AS `Id`,
        `a`.`IdHanggar` AS `IdHanggar`,
        `b`.`IdPegawai` AS `IdPegawai`,
        `b`.`NIPPegawai` AS `NIPPegawai`,
        `b`.`NamaPegawai` AS `NamaPegawai`,
        `b`.`GolPegawai` AS `GolPegawai`,
        `b`.`Seksi` AS `Seksi`,
        `b`.`Eselon` AS `Eselon`,
        `b`.`JabatanPegawai` AS `JabatanPegawai`,
        `b`.`Status` AS `Status`,
        `b`.`PtgsRekam` AS `PtgsRekam`,
        `b`.`WaktuRekam` AS `WaktuRekam`,
        `b`.`PtgsUpdate` AS `PtgsUpdate`,
        `b`.`WaktuUpdate` AS `WaktuUpdate`,
        `b`.`Pangkat` AS `Pangkat`,
        `b`.`NmEselon` AS `NmEselon`,
        `b`.`NmUnit` AS `NmUnit`,
        `b`.`NamaJabatan` AS `NamaJabatan`
    FROM
        (`appdashboard`.`tb_petugas_hanggar` `a`
        LEFT JOIN `appdashboard`.`tbpegawai_detail` `b` ON ((`a`.`IdPegawai` = `b`.`IdPegawai`))) ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
