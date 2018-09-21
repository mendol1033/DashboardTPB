-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.30-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for appdashboard
CREATE DATABASE IF NOT EXISTS `appdashboard` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `appdashboard`;

-- Dumping structure for view appdashboard.detail_pegawaist
-- Creating temporary table to overcome VIEW dependency errors
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

-- Dumping structure for table appdashboard.grupmenu
CREATE TABLE IF NOT EXISTS `grupmenu` (
  `IdGrupMenu` int(6) NOT NULL AUTO_INCREMENT,
  `GrupMenu` varchar(100) NOT NULL,
  `unitpengguna_id` tinyint(4) NOT NULL,
  `wktrkm` datetime NOT NULL,
  `niprkm` varchar(9) NOT NULL,
  PRIMARY KEY (`IdGrupMenu`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Level Pengguna Aplikasi';

-- Dumping data for table appdashboard.grupmenu: 12 rows
/*!40000 ALTER TABLE `grupmenu` DISABLE KEYS */;
INSERT INTO `grupmenu` (`IdGrupMenu`, `GrupMenu`, `unitpengguna_id`, `wktrkm`, `niprkm`) VALUES
	(1, 'Admin', 1, '2008-10-27 16:15:12', '060104386');
INSERT INTO `grupmenu` (`IdGrupMenu`, `GrupMenu`, `unitpengguna_id`, `wktrkm`, `niprkm`) VALUES
	(2, 'Informasi', 1, '2008-10-27 16:15:19', '060104386');
INSERT INTO `grupmenu` (`IdGrupMenu`, `GrupMenu`, `unitpengguna_id`, `wktrkm`, `niprkm`) VALUES
	(3, 'Kepala Kantor', 1, '2008-10-27 16:30:16', '060104386');
INSERT INTO `grupmenu` (`IdGrupMenu`, `GrupMenu`, `unitpengguna_id`, `wktrkm`, `niprkm`) VALUES
	(4, 'Subbagian Umum', 1, '2008-10-27 17:03:10', '060104386');
INSERT INTO `grupmenu` (`IdGrupMenu`, `GrupMenu`, `unitpengguna_id`, `wktrkm`, `niprkm`) VALUES
	(5, 'Penindakan', 1, '2008-10-27 16:16:17', '060104386');
INSERT INTO `grupmenu` (`IdGrupMenu`, `GrupMenu`, `unitpengguna_id`, `wktrkm`, `niprkm`) VALUES
	(6, 'PKC', 1, '2008-10-27 16:16:42', '060104386');
INSERT INTO `grupmenu` (`IdGrupMenu`, `GrupMenu`, `unitpengguna_id`, `wktrkm`, `niprkm`) VALUES
	(7, 'Perbendaharaan', 1, '2008-10-27 16:16:50', '060104386');
INSERT INTO `grupmenu` (`IdGrupMenu`, `GrupMenu`, `unitpengguna_id`, `wktrkm`, `niprkm`) VALUES
	(8, 'Penyuluhan dan Layanan Informasi', 1, '2018-01-02 09:30:00', '060104386');
INSERT INTO `grupmenu` (`IdGrupMenu`, `GrupMenu`, `unitpengguna_id`, `wktrkm`, `niprkm`) VALUES
	(9, 'Manifest', 1, '2018-01-02 09:39:54', '060104386');
INSERT INTO `grupmenu` (`IdGrupMenu`, `GrupMenu`, `unitpengguna_id`, `wktrkm`, `niprkm`) VALUES
	(10, 'Kepatuhan Internal', 1, '2018-01-02 09:40:14', '060104386');
INSERT INTO `grupmenu` (`IdGrupMenu`, `GrupMenu`, `unitpengguna_id`, `wktrkm`, `niprkm`) VALUES
	(11, 'PDAD', 1, '2018-01-02 09:40:27', '060104386');
INSERT INTO `grupmenu` (`IdGrupMenu`, `GrupMenu`, `unitpengguna_id`, `wktrkm`, `niprkm`) VALUES
	(12, 'Hanggar', 1, '2018-02-20 19:22:24', '060104386');
/*!40000 ALTER TABLE `grupmenu` ENABLE KEYS */;

-- Dumping structure for table appdashboard.historyuser
CREATE TABLE IF NOT EXISTS `historyuser` (
  `IdHistory` int(11) NOT NULL AUTO_INCREMENT,
  `IdUser` int(11) NOT NULL DEFAULT '0',
  `KdHistory` enum('1','2','3') DEFAULT NULL,
  `History` varchar(255) NOT NULL DEFAULT '0',
  `WktRekam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdHistory`),
  KEY `FK__tbuser_historyuser` (`IdUser`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=latin1;

-- Dumping data for table appdashboard.historyuser: ~211 rows (approximately)
/*!40000 ALTER TABLE `historyuser` DISABLE KEYS */;
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(2, 1, '1', 'User Telah Menambahkan IKU', '2017-11-30 07:12:16');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(3, 1, '1', 'User Telah Menambahkan IKU', '2017-11-30 07:13:20');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(4, 1, '1', 'User Telah Menambahkan IKU', '2017-11-30 07:40:35');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(5, 1, '1', 'User Telah Menambahkan IKU', '2017-11-30 07:41:03');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(6, 1, '1', 'User Telah Menambahkan IKU', '2017-11-30 08:40:22');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(7, 1, '1', 'User Telah Menambahkan IKU', '2017-11-30 10:07:57');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(8, 1, '3', 'User Telah Menghapus IKU', '2017-11-30 10:25:39');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(9, 1, '1', 'User Telah Menambahkan IKU', '2017-11-30 10:28:48');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(10, 1, '3', 'User Telah Menghapus IKU', '2017-11-30 10:29:22');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(11, 1, '3', 'User Telah Menghapus IKU', '2017-11-30 10:29:24');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(12, 1, '3', 'User Telah Menghapus IKU', '2017-11-30 10:29:26');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(13, 1, '3', 'User Telah Menghapus IKU', '2017-11-30 10:29:28');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(14, 1, '1', 'User Telah Menambahkan IKU', '2017-11-30 10:31:04');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(15, 1, '3', 'User Telah Menghapus IKU', '2017-11-30 13:54:51');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(16, 1, '1', 'User Telah Menambahkan IKU', '2017-12-01 19:47:19');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(17, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-01 20:41:43');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(18, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-01 20:43:45');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(19, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 08:17:24');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(20, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 08:18:51');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(21, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 08:18:55');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(22, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 08:32:41');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(23, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 08:32:47');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(24, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 08:32:52');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(25, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 08:35:05');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(26, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 08:35:39');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(27, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 08:35:45');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(28, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 08:35:50');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(29, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 08:37:38');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(30, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 08:40:02');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(31, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 08:40:07');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(32, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 08:40:11');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(33, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 08:41:06');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(34, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 09:22:27');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(35, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 09:22:32');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(36, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 09:22:55');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(37, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 09:23:08');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(38, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 09:24:58');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(39, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 09:25:02');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(40, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 09:25:06');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(41, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 09:25:27');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(42, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 09:25:50');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(43, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 09:51:19');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(44, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 09:51:24');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(45, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 09:51:30');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(46, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 09:52:40');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(47, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 09:54:43');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(48, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 09:54:48');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(49, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 09:55:20');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(50, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 09:56:15');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(51, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 09:57:22');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(52, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 09:57:27');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(53, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 10:14:29');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(54, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 10:14:48');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(55, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 10:15:05');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(56, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 10:15:16');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(57, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 10:20:52');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(58, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 10:23:42');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(59, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 12:15:11');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(60, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 12:20:58');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(61, 1, '3', 'User Telah Menghapus IKU', '2017-12-04 12:27:48');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(62, 1, '1', 'User Telah Menambahkan IKU', '2017-12-04 12:37:30');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(63, 1, '3', 'User Telah Menghapus IKU', '2017-12-04 12:37:38');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(64, 1, '3', 'User Telah Menghapus IKU', '2017-12-04 12:39:00');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(65, 1, '1', 'User Telah Menambahkan IKU', '2017-12-04 12:41:34');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(66, 1, '3', 'User Telah Menghapus IKU', '2017-12-04 12:41:46');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(67, 1, '1', 'User Telah Menambahkan IKU', '2017-12-04 12:44:05');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(68, 1, '3', 'User Telah Menghapus IKU', '2017-12-04 12:44:10');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(69, 1, '1', 'User Telah Menambahkan IKU', '2017-12-04 16:59:01');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(70, 1, '1', 'User Telah Menambah Capaian IKU Kode 123', '2017-12-04 16:59:17');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(71, 1, '1', 'User Telah Menambahkan IKU', '2017-12-04 17:00:17');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(72, 1, '3', 'User Telah Menghapus IKU', '2017-12-04 17:02:13');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(73, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 17:02:24');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(74, 1, '3', 'User Telah Menghapus IKU', '2017-12-04 17:02:33');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(75, 1, '1', 'User Telah Menambahkan IKU', '2017-12-04 17:02:44');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(76, 1, '3', 'User Telah Menghapus IKU', '2017-12-04 17:09:11');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(77, 1, '1', 'User Telah Menambahkan IKU', '2017-12-04 17:09:19');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(78, 1, '1', 'User Telah Menambah Capaian IKU Kode 123', '2017-12-04 17:09:57');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(79, 1, '1', 'User Telah Menambah Capaian IKU Kode 123', '2017-12-04 17:10:14');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(80, 1, '1', 'User Telah Menambah Capaian IKU Kode 123', '2017-12-04 17:10:27');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(81, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 17:10:35');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(82, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 17:10:40');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(83, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 17:10:42');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(84, 1, '3', 'User Telah Menghapus IKU', '2017-12-04 17:10:50');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(85, 1, '3', 'User Telah Menghapus Capaian', '2018-01-02 08:56:04');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(86, 1, '3', 'User Telah Menghapus Capaian', '2018-01-02 08:57:13');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(87, 1, '3', 'User Telah Menghapus Capaian', '2018-01-02 08:57:16');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(88, 2, '1', 'User Telah Menambah Capaian IKU Kode 1a-C', '2018-01-07 14:05:30');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(89, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 16', '2018-01-07 16:26:38');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(90, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 15', '2018-01-07 16:27:19');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(91, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 14', '2018-01-07 16:27:40');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(92, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 13', '2018-01-07 16:27:46');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(93, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 12', '2018-01-07 16:27:51');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(94, 1, '1', 'User Telah Menambah Surat Tugas Nomor ', '2018-01-07 17:39:44');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(95, 1, '1', 'User Telah Menambah Surat Tugas Nomor 18', '2018-01-07 17:43:25');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(96, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 17', '2018-01-07 17:43:52');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(97, 1, '1', 'User Telah Menambah Surat Tugas Nomor 19', '2018-01-07 17:44:26');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(98, 1, '1', 'User Telah Menambah Surat Tugas Nomor 20', '2018-01-07 17:45:08');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(99, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 20', '2018-01-07 17:48:24');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(100, 1, '1', 'User Telah Menambah Surat Tugas Nomor 21', '2018-01-07 17:48:42');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(101, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 21', '2018-01-08 10:12:04');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(102, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 19', '2018-01-08 10:12:23');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(103, 1, '1', 'User Telah Menambah Surat Tugas Nomor 22', '2018-01-08 11:56:33');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(104, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 22', '2018-01-08 13:21:28');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(105, 1, '1', 'User Telah Menambah Surat Tugas Nomor 23', '2018-01-08 16:25:48');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(106, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 23', '2018-01-08 16:28:38');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(107, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 18', '2018-01-08 16:28:42');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(108, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 11', '2018-01-08 16:28:44');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(109, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 10', '2018-01-08 16:28:46');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(110, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 9', '2018-01-08 16:28:47');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(111, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 8', '2018-01-08 16:28:49');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(112, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 7', '2018-01-08 16:28:51');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(113, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 6', '2018-01-08 16:28:52');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(114, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 5', '2018-01-08 16:28:54');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(115, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 4', '2018-01-08 16:28:56');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(116, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 3', '2018-01-08 16:28:58');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(117, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 2', '2018-01-08 16:28:59');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(118, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 1', '2018-01-08 16:29:01');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(119, 1, '1', 'User Telah Menambah Surat Tugas Nomor 24', '2018-01-09 09:37:22');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(120, 1, '1', 'User Telah Menambah Surat Tugas Nomor 25', '2018-01-09 09:39:33');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(121, 1, '1', 'User Telah Menambah Surat Tugas Nomor 26', '2018-01-09 09:43:08');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(122, 1, '1', 'User Telah Menambah Surat Tugas Nomor 27', '2018-01-09 09:50:01');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(123, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 24', '2018-01-09 09:51:00');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(124, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 27', '2018-01-09 09:51:04');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(125, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 26', '2018-01-09 09:51:07');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(126, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 25', '2018-01-09 09:51:10');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(127, 1, '1', 'User Telah Menambah Surat Tugas Nomor 28', '2018-01-09 10:09:25');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(128, 1, '1', 'User Telah Menambah Surat Tugas Nomor 29', '2018-01-11 10:59:48');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(129, 1, '1', 'User Telah Menambah Surat Tugas Nomor 30', '2018-01-16 11:39:01');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(130, 1, '1', 'User Telah Menambah User teguh.ismael', '2018-01-18 11:32:57');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(131, 1, '1', 'User Telah Menambah User lili.andriyani', '2018-01-18 11:34:03');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(132, 1, '1', 'User Telah Menambah User sabrina.latifa', '2018-01-18 11:35:49');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(133, 1, '1', 'User Telah Menambah User vega.agayantri', '2018-01-18 11:36:07');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(134, 1, '1', 'User Telah Menambah User sukmaning.ayu', '2018-01-18 11:36:45');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(135, 1, '1', 'User Telah Menambah User dinda.githa', '2018-01-18 11:38:04');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(136, 1, '2', 'User Telah Merubah User sabrina.latifa', '2018-01-18 13:49:36');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(137, 1, '2', 'User Telah Merubah User dinda.githa', '2018-01-18 13:54:01');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(138, 1, '2', 'User Telah Merubah User dinda.githa', '2018-01-18 13:54:29');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(139, 1, '1', 'User Telah Menambah User akhmad.rofiq', '2018-01-18 13:55:17');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(140, 1, '1', 'User Telah Menambah User bambang.prayoga', '2018-01-18 13:55:38');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(141, 1, '1', 'User Telah Menambah User heru.sudaryanto', '2018-01-18 13:56:02');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(142, 1, '2', 'User Telah Merubah User lili.andriyani', '2018-01-18 15:52:32');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(143, 1, '2', 'User Telah Merubah User lili.andriyani', '2018-01-18 15:53:22');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(144, 1, '2', 'User Telah Merubah User lili.andriyani', '2018-01-18 15:53:41');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(145, 1, '2', 'User Telah Merubah User lili.andriyani', '2018-01-18 15:57:18');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(146, 1, '3', 'User Telah Menghapus User ', '2018-01-18 16:12:02');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(147, 1, '3', 'User Telah Menghapus User vega.agayantri', '2018-01-18 16:12:51');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(148, 1, '3', 'User Telah Menghapus User sukmaning.ayu', '2018-01-18 16:13:25');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(149, 1, '3', 'User Telah Menghapus User teguh.ismael', '2018-01-18 16:13:32');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(150, 1, '3', 'User Telah Menghapus User akhmad.rofiq', '2018-01-18 16:15:10');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(151, 1, '1', 'User Telah Menambah User hammam.yudanto', '2018-01-18 16:23:49');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(152, 1, '3', 'User Telah Menghapus User sabrina.latifa', '2018-01-19 07:50:22');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(153, 1, '1', 'User Telah Menambah User sabrina.latifa', '2018-01-19 07:56:46');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(154, 1, '2', 'User Telah Merubah User ADMIN', '2018-01-19 07:57:39');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(155, 1, '2', 'User Telah Merubah User ADMIN', '2018-01-19 07:59:17');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(156, 1, '2', 'User Telah Merubah User ADMIN', '2018-01-19 08:00:54');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(157, 1, '2', 'User Telah Merubah User hammam.yudanto', '2018-01-19 08:16:06');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(158, 1, '2', 'User Telah Merubah User hammam.yudanto', '2018-01-19 08:16:36');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(159, 1, '2', 'User Telah Merubah User hammam.yudanto', '2018-01-19 08:17:11');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(160, 1, '2', 'User Telah Merubah User hammam.yudanto', '2018-01-19 08:18:44');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(161, 1, '2', 'User Telah Merubah User hammam.yudanto', '2018-01-19 08:19:08');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(162, 1, '2', 'User Telah Merubah User hammam.yudanto', '2018-01-19 08:42:43');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(163, 1, '2', 'User Telah Merubah User hammam.yudanto', '2018-01-19 08:59:23');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(164, 1, '2', 'User Telah Merubah User hammam.yudanto', '2018-01-19 14:34:04');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(165, 1, '2', 'User Telah Merubah User hammam.yudanto', '2018-01-19 14:35:55');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(166, 1, '3', 'User Telah Menghapus User hammam.yudanto', '2018-01-19 15:14:05');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(167, 1, '3', 'User Telah Menghapus User bambang.prayoga', '2018-01-19 15:14:09');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(168, 1, '3', 'User Telah Menghapus User sabrina.latifa', '2018-01-19 15:14:14');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(169, 1, '3', 'User Telah Menghapus User dinda.githa', '2018-01-19 15:14:17');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(170, 1, '3', 'User Telah Menghapus User dulhaedi', '2018-01-19 15:14:21');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(171, 1, '3', 'User Telah Menghapus User heru.sudaryanto', '2018-01-19 15:14:25');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(172, 1, '1', 'User Telah Menambah User akhmad.rofiq', '2018-01-19 16:50:55');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(173, 1, '1', 'User Telah Menambah User sabrina.latifa', '2018-01-19 16:54:39');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(174, 1, '1', 'User Telah Menambah User ravi.raka felani', '2018-01-23 10:44:54');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(175, 1, '2', 'User Telah Merubah User ravi.raka felani', '2018-01-23 10:46:22');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(176, 1, '1', 'User Telah Menambah User yohanes.guraci', '2018-01-24 10:12:31');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(177, 1, '1', 'User Telah Menambah User agung.saputro', '2018-01-24 10:12:50');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(178, 1, '1', 'User Telah Menambah User sulaiman', '2018-01-24 10:13:08');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(179, 1, '1', 'User Telah Menambah User muzakkar', '2018-01-24 10:13:27');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(180, 1, '1', 'User Telah Menambah User dody.firmansah', '2018-01-24 10:13:50');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(181, 1, '1', 'User Telah Menambah User faisal', '2018-01-24 10:14:05');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(182, 18, '2', 'User Telah Merubah User user', '2018-01-24 16:29:51');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(183, 18, '2', 'User Telah Merubah User bc', '2018-01-24 16:51:07');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(184, 18, '2', 'User Telah Merubah User bc', '2018-01-24 16:53:03');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(185, 18, '2', 'User Telah Merubah User bc', '2018-01-24 16:54:43');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(186, 1, '1', 'User Telah Menambah Hak Akses User HERU SUDARYANTO', '2018-01-30 17:22:51');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(187, 1, '1', 'User Telah Menambah Hak Akses User HERU SUDARYANTO', '2018-01-30 17:53:26');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(188, 1, '1', 'User Telah Mengapus Hak Akses User ', '2018-01-30 18:15:30');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(189, 1, '1', 'User Telah Mengapus Hak Akses User ', '2018-01-30 18:16:42');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(190, 1, '1', 'User Telah Mengapus Hak Akses User HERU SUDARYANTO', '2018-01-30 18:18:09');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(191, 1, '1', 'User Telah Mengapus Hak Akses User HERU SUDARYANTO', '2018-01-30 18:20:16');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(192, 1, '1', 'User Telah Menambah Hak Akses User HERU SUDARYANTO', '2018-01-30 18:21:42');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(193, 1, '1', 'User Telah Mengapus Hak Akses User HERU SUDARYANTO', '2018-01-30 19:15:00');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(194, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2018-01-31 10:19:12');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(195, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2018-01-31 10:19:15');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(196, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2018-01-31 10:19:19');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(197, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2018-01-31 10:19:22');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(198, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2018-01-31 10:19:29');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(199, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2018-01-31 10:19:32');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(200, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2018-01-31 10:19:35');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(201, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2018-01-31 10:19:38');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(202, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2018-01-31 10:19:42');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(203, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2018-01-31 10:19:46');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(204, 1, '1', 'User Telah Menambah Hak Akses User RHENA DESANTI', '2018-01-31 10:21:29');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(205, 1, '2', 'User Telah Merubah User ADMIN', '2018-02-20 19:14:50');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(206, 1, '2', 'User Telah Merubah User ADMIN', '2018-02-20 19:14:58');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(207, 1, '2', 'User Telah Merubah User ADMIN', '2018-02-20 19:16:58');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(208, 1, '2', 'User Telah Merubah User ADMIN', '2018-02-20 19:17:53');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(209, 1, '3', 'User Telah Menghapus User STAFF KK', '2018-02-20 19:58:57');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(210, 1, '1', 'User Telah Menambah User novi.setyowati', '2018-02-20 19:59:58');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(211, 1, '1', 'User Telah Menambah Hak Akses User FITHRI KHAIRANI', '2018-02-20 20:00:19');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(212, 1, '1', 'User Telah Menambah Hak Akses User FITHRI KHAIRANI', '2018-02-20 20:00:23');
/*!40000 ALTER TABLE `historyuser` ENABLE KEYS */;

-- Dumping structure for table appdashboard.tbcapaian
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

-- Dumping data for table appdashboard.tbcapaian: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbcapaian` DISABLE KEYS */;
INSERT INTO `tbcapaian` (`IdCapaian`, `IdIku`, `Target`, `Realisasi`, `Capaian`, `WktRekam`, `WktUpdate`, `PtgRekam`) VALUES
	(1, 1, 0.20, 0.15, 0.15, '2018-01-07 14:05:30', '2018-01-07 14:05:30', 2);
/*!40000 ALTER TABLE `tbcapaian` ENABLE KEYS */;

-- Dumping structure for table appdashboard.tbeselon
CREATE TABLE IF NOT EXISTS `tbeselon` (
  `IdEselon` int(11) NOT NULL AUTO_INCREMENT,
  `NmEselon` varchar(50) NOT NULL DEFAULT '0',
  `PtgsRekam` varchar(18) NOT NULL DEFAULT '0',
  `WktRekam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdEselon`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table appdashboard.tbeselon: ~5 rows (approximately)
/*!40000 ALTER TABLE `tbeselon` DISABLE KEYS */;
INSERT INTO `tbeselon` (`IdEselon`, `NmEselon`, `PtgsRekam`, `WktRekam`) VALUES
	(1, 'ESELON III', '199203162014111002', '2018-01-09 08:10:27');
INSERT INTO `tbeselon` (`IdEselon`, `NmEselon`, `PtgsRekam`, `WktRekam`) VALUES
	(2, 'ESELON IV', '199203162014111002', '2018-01-09 08:11:06');
INSERT INTO `tbeselon` (`IdEselon`, `NmEselon`, `PtgsRekam`, `WktRekam`) VALUES
	(3, 'ESELON V', '199203162014111002', '2018-01-09 08:11:51');
INSERT INTO `tbeselon` (`IdEselon`, `NmEselon`, `PtgsRekam`, `WktRekam`) VALUES
	(4, 'FUNGSIONAL', '199203162014111002', '2018-01-09 08:12:13');
INSERT INTO `tbeselon` (`IdEselon`, `NmEselon`, `PtgsRekam`, `WktRekam`) VALUES
	(5, 'PELAKSANA', '199203162014111002', '2018-01-09 08:12:28');
/*!40000 ALTER TABLE `tbeselon` ENABLE KEYS */;

-- Dumping structure for table appdashboard.tbgrupakses
CREATE TABLE IF NOT EXISTS `tbgrupakses` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdUser` int(11) DEFAULT NULL,
  `IdHakAkses` int(11) DEFAULT NULL,
  `PtgsRekam` varchar(18) DEFAULT NULL,
  `WktRekam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Dumping data for table appdashboard.tbgrupakses: ~15 rows (approximately)
/*!40000 ALTER TABLE `tbgrupakses` DISABLE KEYS */;
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(1, 1, 1, '199203162014111002', '2018-01-30 14:08:41');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(2, 16, 3, '199203162014111002', '2018-01-30 17:15:43');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(3, 1, 2, '199203162014111002', '2018-01-31 10:19:12');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(4, 1, 3, '199203162014111002', '2018-01-31 10:19:15');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(5, 1, 4, '199203162014111002', '2018-01-31 10:19:19');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(6, 1, 5, '199203162014111002', '2018-01-31 10:19:22');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(7, 1, 6, '199203162014111002', '2018-01-31 10:19:29');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(8, 1, 7, '199203162014111002', '2018-01-31 10:19:32');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(9, 1, 8, '199203162014111002', '2018-01-31 10:19:35');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(10, 1, 9, '199203162014111002', '2018-01-31 10:19:38');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(11, 1, 10, '199203162014111002', '2018-01-31 10:19:42');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(12, 1, 11, '199203162014111002', '2018-01-31 10:19:46');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(13, 18, 5, '199203162014111002', '2018-01-31 10:21:29');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(14, 26, 12, '199203162014111002', '2018-02-20 20:00:19');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(15, 26, 6, '199203162014111002', '2018-02-20 20:00:23');
/*!40000 ALTER TABLE `tbgrupakses` ENABLE KEYS */;

-- Dumping structure for table appdashboard.tbiku
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

-- Dumping data for table appdashboard.tbiku: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbiku` DISABLE KEYS */;
INSERT INTO `tbiku` (`IdIku`, `KdIku`, `NamaIku`, `DeskripsiIku`, `Target`, `WktRekam`, `PetugasRekam`, `Capaian`) VALUES
	(1, '1a-C', 'Persentase realisasi dari janji layanan penerimaan dan penelitian kelengkapan dokumen BC 2.5', '-', 0.95, '2017-12-01 10:08:15', 1, 0.15);
/*!40000 ALTER TABLE `tbiku` ENABLE KEYS */;

-- Dumping structure for table appdashboard.tbjabatan
CREATE TABLE IF NOT EXISTS `tbjabatan` (
  `IdJabatan` int(5) NOT NULL AUTO_INCREMENT,
  `NamaJabatan` varchar(80) NOT NULL DEFAULT '0',
  `PtgsRekam` varchar(18) NOT NULL DEFAULT '0',
  `WktRekam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdJabatan`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;

-- Dumping data for table appdashboard.tbjabatan: ~77 rows (approximately)
/*!40000 ALTER TABLE `tbjabatan` DISABLE KEYS */;
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(1, 'KEPALA KANTOR', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(2, 'KEPALA SUBBAGIAN UMUM', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(3, 'KEPALA SEKSI PENINDAKAN DAN PENYIDIKAN', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(4, 'KEPALA SEKSI ADMINISTRASI MANIFES', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(5, 'KEPALA SEKSI PERBENDAHARAAN', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(6, 'KEPALA SEKSI PELAYANAN KEPABEANAN DAN CUKAI I', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(7, 'KEPALA SEKSI PELAYANAN KEPABEANAN DAN CUKAI II', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(8, 'KEPALA SEKSI PELAYANAN KEPABEANAN DAN CUKAI III', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(9, 'KEPALA SEKSI PELAYANAN KEPABEANAN DAN CUKAI IV', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(10, 'KEPALA SEKSI PELAYANAN KEPABEANAN DAN CUKAI V', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(11, 'KEPALA SEKSI PELAYANAN KEPABEANAN DAN CUKAI VI', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(12, 'KEPALA SEKSI PELAYANAN KEPABEANAN DAN CUKAI VII', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(13, 'KEPALA SEKSI PELAYANAN KEPABEANAN DAN CUKAI VIII', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(14, 'KEPALA SEKSI PELAYANAN KEPABEANAN DAN CUKAI IX', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(15, 'KEPALA SEKSI PENYULUHAN DAN LAYANAN INFORMASI', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(16, 'KEPALA SEKSI KEPATUHAN INTERNAL', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(17, 'KEPALA SEKSI PENGOLAHAN DATA DAN ADMINISTRASI DOKUMEN', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(18, 'PEMERIKSA BEA DAN CUKAI MUDA', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(19, 'KEPALA URUSAN TATA USAHA DAN KEPEGAWAIAN', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(20, 'KEPALA URUSAN KEUANGAN', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(21, 'KEPALA URUSAN RUMAH TANGGA', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(22, 'KEPALA SUBSEKSI INTELIJEN I', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(23, 'KEPALA SUBSEKSI INTELIJEN II', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(24, 'KEPALA SUBSEKSI PENINDAKAN I', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(25, 'KEPALA SUBSEKSI PENINDAKAN II', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(26, 'KEPALA SUBSEKSI PENYIDIKAN DAN BARANG HASIL PENINDAKAN', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(27, 'KEPALA SUBSEKSI SARANA OPERASI', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(28, 'KEPALA SUBSEKSI PENGADMINISTRASIAN MANIFES', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(29, 'KEPALA SUBSEKSI PENGADMINISTRASIAN PEMBERITAHUAN PENGANGKUTAN BARANG', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(30, 'KEPALA SUBSEKSI ADMINISTRASI PENERIMAAN DAN JAMINAN I', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(31, 'KEPALA SUBSEKSI ADMINISTRASI PENERIMAAN DAN JAMINAN II', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(32, 'KEPALA SUBSEKSI ADMINISTRASI PENAGIHAN DAN PENGEMBALIAN I', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(33, 'KEPALA SUBSEKSI ADMINISTRASI PENAGIHAN DAN PENGEMBALIAN II', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(34, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI I', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(35, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI II', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(36, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI III', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(37, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI IV', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(38, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI V', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(39, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI VI', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(40, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI VII', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(41, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI VIII', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(42, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI IX', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(43, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI X', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(44, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XI', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(45, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XII', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(46, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XIII', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(47, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XIV', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(48, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XV', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(49, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XVI', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(50, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XVII', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(51, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XVIII', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(52, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XIX', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(53, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XX', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(54, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXI', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(55, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXII', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(56, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXIII', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(57, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXIV', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(58, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXV', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(59, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXVI', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(60, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXVII', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(61, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXVIII', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(62, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXIX', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(63, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXX', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(64, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXXI', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(65, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXXII', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(66, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXXIII', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(67, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXXIV', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(68, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXXV', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(69, 'KEPALA SUBSEKSI PENYULUHAN', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(70, 'KEPALA SUBSEKSI LAYANAN INFORMASI', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(71, 'KEPALA SUBSEKSI KEPATUHAN PELAKSANAAN TUGAS PELAYANAN DAN ADMINISTRASI', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(72, 'KEPALA SUBSEKSI KEPATUHAN PELAKSANAAN TUGAS PENGAWASAN', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(73, 'KEPALA SUBSEKSI PENGOLAHAN DATA', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(74, 'KEPALA SUBSEKSI ADMINISTRASI DOKUMEN', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(75, 'PELAKSANA ADMINISTRASI', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(76, 'PELAKSANA PEMERIKSA', '199203162014111002', '2018-01-04 08:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(77, 'PEJABAT FUNGSIONAL PEMERIKSA DOKUMEN', '199203162014111002', '2018-01-04 09:29:22');
/*!40000 ALTER TABLE `tbjabatan` ENABLE KEYS */;

-- Dumping structure for table appdashboard.tbkodesurat
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

-- Dumping data for table appdashboard.tbkodesurat: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbkodesurat` DISABLE KEYS */;
INSERT INTO `tbkodesurat` (`IdKdSurat`, `KdSurat`, `Tahun`, `Nomor`, `PtgsRekam`, `WltRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(1, 'ST', '2018', 31, '199203162014111002', '2018-01-05 07:17:42', '-', '2018-01-16 11:39:01');
/*!40000 ALTER TABLE `tbkodesurat` ENABLE KEYS */;

-- Dumping structure for table appdashboard.tbpangkat
CREATE TABLE IF NOT EXISTS `tbpangkat` (
  `IdPangkat` int(2) NOT NULL AUTO_INCREMENT,
  `KdPangkat` int(2) NOT NULL DEFAULT '0',
  `Gol` varchar(5) DEFAULT '0',
  `Pangkat` varchar(20) DEFAULT '0',
  `PtgsRekam` varchar(18) DEFAULT '0',
  `WaktuRekam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdPangkat`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Dumping data for table appdashboard.tbpangkat: ~13 rows (approximately)
/*!40000 ALTER TABLE `tbpangkat` DISABLE KEYS */;
INSERT INTO `tbpangkat` (`IdPangkat`, `KdPangkat`, `Gol`, `Pangkat`, `PtgsRekam`, `WaktuRekam`) VALUES
	(1, 21, 'II/a', 'PENGATUR MUDA', '199203162014111002', '2018-01-04 07:29:47');
INSERT INTO `tbpangkat` (`IdPangkat`, `KdPangkat`, `Gol`, `Pangkat`, `PtgsRekam`, `WaktuRekam`) VALUES
	(2, 22, 'II/b', 'PENGATUR MUDA TK. I', '199203162014111002', '2018-01-04 07:25:38');
INSERT INTO `tbpangkat` (`IdPangkat`, `KdPangkat`, `Gol`, `Pangkat`, `PtgsRekam`, `WaktuRekam`) VALUES
	(3, 23, 'II/c', 'PENGATUR', '199203162014111002', '2018-01-04 07:25:38');
INSERT INTO `tbpangkat` (`IdPangkat`, `KdPangkat`, `Gol`, `Pangkat`, `PtgsRekam`, `WaktuRekam`) VALUES
	(4, 24, 'II/d', 'PENGATUR TK. I', '199203162014111002', '2018-01-04 07:25:38');
INSERT INTO `tbpangkat` (`IdPangkat`, `KdPangkat`, `Gol`, `Pangkat`, `PtgsRekam`, `WaktuRekam`) VALUES
	(5, 31, 'III/a', 'PENATA MUDA', '199203162014111002', '2018-01-04 07:25:38');
INSERT INTO `tbpangkat` (`IdPangkat`, `KdPangkat`, `Gol`, `Pangkat`, `PtgsRekam`, `WaktuRekam`) VALUES
	(6, 32, 'III/b', 'PENATA MUDA TK.I', '199203162014111002', '2018-01-04 07:25:38');
INSERT INTO `tbpangkat` (`IdPangkat`, `KdPangkat`, `Gol`, `Pangkat`, `PtgsRekam`, `WaktuRekam`) VALUES
	(7, 33, 'III/c', 'PENATA', '199203162014111002', '2018-01-04 07:25:38');
INSERT INTO `tbpangkat` (`IdPangkat`, `KdPangkat`, `Gol`, `Pangkat`, `PtgsRekam`, `WaktuRekam`) VALUES
	(8, 34, 'III/d', 'PENATA TK.I', '199203162014111002', '2018-01-04 07:25:38');
INSERT INTO `tbpangkat` (`IdPangkat`, `KdPangkat`, `Gol`, `Pangkat`, `PtgsRekam`, `WaktuRekam`) VALUES
	(9, 41, 'IV/a', 'PEMBINA', '199203162014111002', '2018-01-04 07:25:38');
INSERT INTO `tbpangkat` (`IdPangkat`, `KdPangkat`, `Gol`, `Pangkat`, `PtgsRekam`, `WaktuRekam`) VALUES
	(10, 42, 'IV/b', 'PEMBINA TK.I', '199203162014111002', '2018-01-04 07:25:38');
INSERT INTO `tbpangkat` (`IdPangkat`, `KdPangkat`, `Gol`, `Pangkat`, `PtgsRekam`, `WaktuRekam`) VALUES
	(11, 43, 'IV/c', 'PEMBINA UTAMA MUDA', '199203162014111002', '2018-01-04 07:25:38');
INSERT INTO `tbpangkat` (`IdPangkat`, `KdPangkat`, `Gol`, `Pangkat`, `PtgsRekam`, `WaktuRekam`) VALUES
	(12, 44, 'IV/d', 'PEMBINA UTAMA MADYA', '199203162014111002', '2018-01-04 07:25:38');
INSERT INTO `tbpangkat` (`IdPangkat`, `KdPangkat`, `Gol`, `Pangkat`, `PtgsRekam`, `WaktuRekam`) VALUES
	(13, 45, 'IV/e', 'PEMBINA UTAMA', '199203162014111002', '2018-01-04 07:25:38');
/*!40000 ALTER TABLE `tbpangkat` ENABLE KEYS */;

-- Dumping structure for table appdashboard.tbpegawai
CREATE TABLE IF NOT EXISTS `tbpegawai` (
  `IdPegawai` int(11) NOT NULL AUTO_INCREMENT,
  `NIPPegawai` varchar(18) NOT NULL,
  `NamaPegawai` varchar(100) NOT NULL,
  `GolPegawai` int(5) DEFAULT NULL,
  `SeksiPegawai` int(5) DEFAULT NULL,
  `Eselon` int(11) DEFAULT NULL,
  `JabatanPegawai` int(5) DEFAULT NULL,
  `PtgsRekam` varchar(18) NOT NULL,
  `WaktuRekam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PtgsUpdate` varchar(18) NOT NULL,
  `WaktuUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdPegawai`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=latin1;

-- Dumping data for table appdashboard.tbpegawai: ~183 rows (approximately)
/*!40000 ALTER TABLE `tbpegawai` DISABLE KEYS */;
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(1, '197011141989121001', 'AKHMAD ROFIQ', 42, 1, 1, 1, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(2, '196601011988101001', 'TEGUH YANUWIARSO', 34, 3, 2, 2, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(3, '197410251996021001', 'BAMBANG PRAYOGA HARYADI, S.E.', 34, 4, 2, 3, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(4, '196908241990121001', 'RINSAN SIAGIAN', 41, 5, 2, 4, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(5, '197004231991101001', 'DAVID PURWOSUSILO', 34, 6, 2, 5, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(6, '196912141990121002', 'TOTOK HERU SUSANTO', 41, 7, 2, 6, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(7, '197206291992121001', 'FUNGKI AWALUDIN', 34, 8, 2, 7, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(8, '196005141980101001', 'SUKIMIN', 34, 9, 2, 8, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(9, '197505261999031001', 'GERALD PRAWIRA HASOLOAN', 41, 10, 2, 9, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(10, '196202251983031004', 'MARLON WONGKAR', 33, 11, 2, 10, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(11, '196904161996031002', 'HENRY SITORUS', 41, 12, 2, 11, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(12, '196510241986011001', 'YAYAN SURYANA', 34, 14, 2, 13, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(13, '197309081994021002', 'MULYANA', 34, 15, 2, 14, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(14, '197501301995031002', 'I GUSTI GDE PERYATNA', 41, 16, 2, 15, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(15, '196909181989121001', 'SETYO KISWANTO', 33, 17, 2, 16, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(16, '196310011983031001', 'HERU SUDARYANTO', 34, 18, 2, 17, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(17, '197807162000121001', 'YUDI HASNAWAN', 34, 2, 4, 77, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(18, '197412021995032001', 'RHENA DESANTI', 34, 2, 4, 77, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(19, '197011121992011001', 'ADI RIZKIARTO', 34, 2, 4, 77, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(20, '197104171992012001', 'NADRA SUVIT', 33, 2, 4, 77, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(21, '197308101993011001', 'SULISTYA NUGRAHA', 33, 2, 4, 77, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(22, '197210081992121001', 'ARIEF RISDIYANTO', 33, 2, 4, 77, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(23, '197208011993021001', 'GUSTIN BUDIARSAH', 33, 2, 4, 77, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(24, '197405071995031001', 'HERU SIGIT JATMIKO', 33, 2, 4, 77, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(25, '198110272001121001', 'SULIS DWI YANTONI', 33, 2, 4, 77, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(26, '198306042003122001', 'FITHRI KHAIRANI', 32, 3, 3, 19, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(27, '197604091996031001', 'RUDI SUPRIANTO', 32, 3, 3, 20, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(28, '198204102003121001', 'ARIES FOURISA', 32, 3, 3, 21, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(29, '197607131998031002', 'DARU ANGGORO', 32, 4, 3, 22, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(30, '197807162003121001', 'AGUNG SAPUTRO', 32, 4, 3, 23, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(31, '197505221998031001', 'SULAIMAN', 31, 4, 3, 24, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(32, '198311122009011007', 'ANDRI NOVERIANTO', 33, 4, 3, 25, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(33, '197911232002121003', 'NOPI YORDANES', 32, 4, 3, 26, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(34, '197603111997031001', 'DEDY SETIAWAN', 33, 5, 3, 28, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(35, '197510021997031002', 'FAERUL HAKIM', 33, 5, 3, 29, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(36, '197712161998031001', 'KURNIAWAN WAHYU HIDAYAT', 32, 6, 3, 30, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(37, '198001232000011001', 'RULIYANA', 31, 6, 3, 31, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(38, '197908162000011001', 'AGUS KURNIAWAN', 31, 6, 3, 32, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(39, '197508221997031002', 'ERI ARIYANA', 32, 6, 3, 33, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(40, '196305021984031003', 'NURYANTO', 32, 0, 3, 34, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(41, '197803102003121001', 'DEDI DWUWI RAHMANTO', 32, 0, 3, 35, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(42, '196901131992031001', 'SLAMET SUBAKTI', 34, 0, 3, 36, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(43, '196011081984031010', 'R. PRATJOYO', 32, 0, 3, 37, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(44, '197901302000011001', 'ADE IRAWAN', 31, 0, 3, 38, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(45, '198506012007101001', 'FAIQ', 32, 0, 3, 40, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(46, '196111021983031002', 'MUKHLIS', 32, 0, 3, 41, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(47, '198007022003122001', 'YULIA DAMAYANTI', 32, 0, 3, 42, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(48, '195912211980031001', 'AKHMAD', 32, 0, 3, 43, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(49, '198110192009011011', 'HILTON OKTO S.', 33, 0, 3, 44, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(50, '197603131997031001', 'DEDY PURNAEDI', 32, 0, 3, 45, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(51, '197608101996021002', 'GERRY GORDON', 34, 0, 3, 46, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(52, '196306081987031002', 'SUBARUS', 34, 0, 3, 47, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(53, '197606011997031001', 'KENTUT BAGUS WIYANA', 32, 0, 3, 48, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(54, '197408311995021001', 'AHMAD NAUDIN', 33, 0, 3, 49, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(55, '196208121983031004', 'SELAMAT SUCIPTO', 33, 0, 3, 50, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(56, '197605121999031003', 'BAMBANG SUHARTONO', 33, 0, 3, 52, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(57, '197806191999031001', 'SUGENG CAHYONO', 31, 0, 3, 53, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(58, '196412311991031210', 'IRBAHARUDDIN', 33, 0, 3, 54, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(59, '197506261997031002', 'SACHRONI', 33, 0, 3, 55, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(60, '196208201982031001', 'RAHMANUDDIN', 33, 0, 3, 56, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(61, '197501181997031001', 'MOH.YUSUF', 32, 0, 3, 57, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(62, '196412211984031001', 'K. A. H. EFFENDY', 32, 0, 3, 58, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(63, '197707281998031001', 'KRISTANTO', 31, 0, 3, 60, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(64, '196406081991011001', 'WIDYO CAHYONO', 33, 0, 3, 61, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(65, '197802111997031001', 'DEDY HARYANTO', 32, 0, 3, 62, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(66, '198203302003121002', 'F.X. DEWO KUSUMO ADRIYANTO', 33, 0, 3, 63, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(67, '197702091997031001', 'AKHMAD KUNCORO', 32, 0, 3, 64, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(68, '197909142002121001', 'LUKMAN NURHAKIM', 32, 0, 3, 65, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(69, '197804051999031001', 'HUSEN ALISUGI', 31, 0, 3, 66, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(70, '197706211997031001', 'JOKO RIYANTO', 32, 0, 3, 67, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(71, '196107081984021001', 'BAMBANG SURYADI', 32, 0, 3, 68, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(72, '198110292003122001', 'NURBAETI HIJRIYANTI', 32, 16, 3, 69, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(73, '197610131997031002', 'RONI AGUNG A. D.', 32, 16, 3, 70, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(74, '197005211992031001', 'RISWANTO KURNIAWAN', 32, 17, 3, 71, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(75, '197812232001121001', 'MAHENDRA DAHOKLORY', 33, 17, 3, 72, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(76, '197802101998031002', 'DULHAEDI', 31, 18, 3, 73, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(77, '196603261990091001', 'ADI SOMA', 24, 3, 5, 75, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(78, '196202021984022001', 'FRANSINA', 34, 0, 5, 75, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(79, '196104191980031001', 'AMIRUDIN', 32, 0, 5, 75, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(80, '196009051983031003', 'DUMA SINAGA', 32, 0, 5, 75, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(81, '196004201984031001', 'SUPRIYONO', 32, 0, 5, 75, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(82, '196012111984031001', 'DJUPRI', 24, 0, 5, 75, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(83, '198303192004121004', 'WIDHODHO PRASETYO', 32, 3, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(84, '199308042013101002', 'ANDIKA HIKMAN FAHRURROZI', 22, 3, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(85, '199204252012101001', 'WAHYU SUBIANTORO', 22, 3, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(86, '199408092015022002', 'HANIK UMMU SULAIM', 21, 3, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(87, '199510182015021002', 'ARYADIKA SURYA CALVIN', 21, 3, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(88, '199506012015021002', 'MOCHAMMAD FADHIL FAHRIZA', 21, 3, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(89, '199404182015021002', 'RIZKY ERVANTO SULISTYO', 21, 3, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(90, '199508132015022001', 'VEGA AGAYANTRI SISWANDI', 21, 3, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(91, '199410192015021001', 'MUCHAMMAD DWI SATOTO NUGROHO', 21, 3, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(92, '199412212015021006', 'MUHAMMAD ROSYID RIDHO', 21, 3, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(93, '199411182015021002', 'ANDI RIZKI SAPUTRA', 21, 3, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(94, '199507262015021003', 'HAMMAM YUDANTO', 21, 3, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(95, '199604132015021001', 'IMAM AFLAH RAFIF', 21, 3, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(96, '199505262015022002', 'MEIDA ANISSA PUTRI', 21, 3, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(97, '199411202015122001', 'NOVI SETYOWATI', 21, 3, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(98, '199601192015122001', 'LILI ANDRIYANI', 21, 3, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(99, '197807121999031001', 'MUZAKKAR', 31, 4, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(100, '198812072007101001', 'FAHRI ARI KURNIAWAN', 24, 4, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(101, '198002212001121002', 'ARIF WICAKSONO', 24, 4, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(102, '198202242001121001', 'FAISAL', 24, 4, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(103, '198401022003121004', 'SURYADI', 24, 4, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(104, '199202282014111001', 'YOHANES GURACI RADITE', 23, 4, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(105, '199107232010121002', 'ALLAMASKI MOCHAMMAD', 22, 4, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(106, '198902282009121003', 'TARIS MAFAZI', 22, 4, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(107, '199402172013101001', 'RAVI RAKA FELANI', 22, 4, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(108, '199506152015021001', 'DODY FIRMANSAH SETYO BUDI', 21, 4, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(109, '197710182003121002', 'FERDIAN', 24, 5, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(110, '198112082003121002', 'ANDI CHAKRA SESSU', 24, 5, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(111, '198306202004121001', 'FACHRIZAL', 24, 5, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(112, '199502012015021003', 'DIMAS ARIF FEBRIYANTO', 21, 5, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(113, '197904042003122001', 'WIDIYA ARYANI', 32, 6, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(114, '198501232003122001', 'MUKTININGSIH', 24, 6, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(115, '199212152012101001', 'DANIEL ANDREO SIAGIAN', 22, 6, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(116, '199508182015021005', 'AHMAD AL HAZMI', 21, 6, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(117, '199512172015122001', 'SUKMANING AYU DWITAMAWATI', 21, 6, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(118, '199502112015022001', 'SABRINA LATIFA', 21, 6, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(119, '199511082015021001', 'ADHITYA REZA MULIA', 21, 6, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(120, '198510052004121004', 'MUHAMMAD ROYHAN', 31, 7, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(121, '198112252001121001', 'IRFAN PURWANTO', 24, 7, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(122, '198711262007101005', 'HEDRON PANDAPOTAN BANJARNAHOR', 24, 7, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(123, '198309102004121001', 'YEREMIA GEA', 24, 7, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(124, '198404052004121001', 'FRADIKA YOAN NURHENDRA', 24, 7, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(125, '198202102003121002', 'ADANG', 24, 7, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(126, '198403252006041009', 'LISUMARNO', 23, 7, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(127, '198412072006021003', 'ANTOK SUDARMAWAN', 23, 7, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(128, '198606042006021002', 'AHMAD WAHYU HIDAYAT', 23, 7, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(129, '198607222006021002', 'DODY SETIA PERDANA', 23, 7, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(130, '198801272007011003', 'WENDY JANUARSYAH', 23, 7, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(131, '199010132012101001', 'IKHSAN BARESI', 22, 7, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(132, '199510022015021007', 'MUHAMMAD FARIZ ZULFIKAR', 21, 7, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(133, '199411082015021002', 'IAN WIGRHA NUGRAHA', 21, 7, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(134, '199508202015021005', 'NURMAWAN AGUS', 21, 7, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(135, '199609052015022001', 'ALTI HARDIANTI', 21, 7, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(136, '199505102015021003', 'BASIT NUGROHO', 21, 7, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(137, '197805141999031002', 'MUHAMMAD AMIN', 32, 8, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(138, '198207092006042027', 'DINI HARDI', 23, 8, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(139, '199205142014111002', 'GINANJAR ADIBOWO', 23, 9, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(140, '196011271979031001', 'KUSMAGIRI', 32, 10, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(141, '198504072004121002', 'MUHAMMAD AFRIZAL', 24, 10, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(142, '198712262007011003', 'ROY TRIE SAPUTRA', 23, 11, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(143, '199208112013101001', 'ROBERTON', 22, 12, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(144, '199410282015021002', 'BENY SUBARJA', 21, 13, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(145, '198307162002121002', 'ANDI MUHAMMAD HENDRA WIRAHADIKUSUMA', 24, 14, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(146, '197507121999031001', 'RIDWAN', 32, 15, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(147, '199510262015022001', 'DINDA GITHA OKTAVIANI', 21, 15, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(148, '198207112001121001', 'RADITYA KURNIAWAN', 24, 16, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(149, '198108112003121001', 'M. RUSDI SALAM', 24, 16, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(150, '199603082015122002', 'INDRI KRISTIYASTUTI UTAMI', 21, 16, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(151, '199502112015022003', 'DINY AULIA PRADIZA', 21, 16, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(152, '198910082008121001', 'DIVO PRATAMA HISKIA', 23, 17, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(153, '199310232015021001', 'DHENY DEWA PUTRA', 21, 17, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(154, '199404062015022001', 'ADDINA FILWA PUTRI', 21, 17, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(155, '199409192015022001', 'FRANSISCA ARUM MAHARANI', 21, 17, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(156, '198504062004121002', 'MUHAMMAD ANGGARI ESTRALEGA', 24, 18, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(157, '199203162014111002', 'FITHORIQIL AZZIZ', 23, 18, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(158, '199209302012101001', 'LUKAS PATTRICK HUTAJULU', 22, 18, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(159, '199110302010121001', 'RIZKI SYAIFUL ANNAS', 22, 18, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(160, '199508092015021003', 'IKHWAN ANSHORI', 21, 18, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(161, '199508222015021004', 'MUHAMMAD TEGUH ISMAEL', 21, 18, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(162, '196205211983032001', 'NURHAIDA TAMBUN', 33, 0, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(163, '196106071983031002', 'LISMAN TAMBUNAN', 32, 0, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(164, '196107241984031001', 'SUDIYONO', 32, 0, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(165, '196309121984031002', 'YOSEPH AGUS SETIJONO', 32, 0, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(166, '196611141992031001', 'HARLAN', 32, 0, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(167, '196205091984031001', 'MURDIJANTO', 32, 0, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(168, '196206061983032001', 'SUHARNI', 32, 0, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(169, '197910071999031002', 'FAHRULI ANSYARI', 31, 0, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(170, '197904182000121002', 'RIDWANSYAH', 24, 0, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(171, '196703091990121001', 'RACHMAN', 24, 0, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(172, '198908232010121004', 'DAVID CHRISMANTO MARPAUNG', 24, 0, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(173, '197708152003122001', 'EVELIN HENI AGUSTINA', 24, 0, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(174, '198402252004121004', 'FERDY MUHAMMAD HATTA', 24, 0, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(175, '198303182004121001', 'ADIL SELAMAT ZEBUA', 24, 0, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(176, '198407082003121001', 'DEDE KADINA', 24, 0, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(177, '198503062007011001', 'MIKAIL DWI MARTANTO', 24, 0, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(178, '198108102002121004', 'SUHARIYANTO', 24, 0, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(179, '198312232003121007', 'DENI GUNAWAN', 24, 0, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(180, '199204022012101001', 'FAJAR NUGROHO BAGUS PANUNTUN', 22, 0, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(181, '199212232013101003', 'AINUL YAQIN', 22, 0, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(182, '199010082010011002', 'TEGUH TRICAHYO', 22, 0, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(183, '199101252010011001', 'CARRY MARTUA BUSH', 22, 0, 5, 76, '199203162014111002', '2018-01-04 13:12:28', '', '2018-01-04 13:12:28');
/*!40000 ALTER TABLE `tbpegawai` ENABLE KEYS */;

-- Dumping structure for table appdashboard.tbpegawaist
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

-- Dumping data for table appdashboard.tbpegawaist: ~10 rows (approximately)
/*!40000 ALTER TABLE `tbpegawaist` DISABLE KEYS */;
INSERT INTO `tbpegawaist` (`Id`, `NIP`, `IdSurat`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(11, '196310011983031001', 5, '199203162014111002', '2018-01-09 10:09:25', '', '2018-01-09 10:09:25');
INSERT INTO `tbpegawaist` (`Id`, `NIP`, `IdSurat`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(12, '199508222015021004', 5, '199203162014111002', '2018-01-09 10:09:25', '', '2018-01-09 10:09:25');
INSERT INTO `tbpegawaist` (`Id`, `NIP`, `IdSurat`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(13, '197011141989121001', 6, '199203162014111002', '2018-01-11 10:59:48', '', '2018-01-11 10:59:48');
INSERT INTO `tbpegawaist` (`Id`, `NIP`, `IdSurat`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(14, '196601011988101001', 6, '199203162014111002', '2018-01-11 10:59:48', '', '2018-01-11 10:59:48');
INSERT INTO `tbpegawaist` (`Id`, `NIP`, `IdSurat`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(15, '197410251996021001', 6, '199203162014111002', '2018-01-11 10:59:48', '', '2018-01-11 10:59:48');
INSERT INTO `tbpegawaist` (`Id`, `NIP`, `IdSurat`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(16, '196912141990121002', 6, '199203162014111002', '2018-01-11 10:59:48', '', '2018-01-11 10:59:48');
INSERT INTO `tbpegawaist` (`Id`, `NIP`, `IdSurat`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(17, '199507262015021003', 6, '199203162014111002', '2018-01-11 10:59:48', '', '2018-01-11 10:59:48');
INSERT INTO `tbpegawaist` (`Id`, `NIP`, `IdSurat`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(18, '197011141989121001', 7, '199203162014111002', '2018-01-16 11:39:01', '', '2018-01-16 11:39:01');
INSERT INTO `tbpegawaist` (`Id`, `NIP`, `IdSurat`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(19, '196601011988101001', 7, '199203162014111002', '2018-01-16 11:39:01', '', '2018-01-16 11:39:01');
INSERT INTO `tbpegawaist` (`Id`, `NIP`, `IdSurat`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(20, '197410251996021001', 7, '199203162014111002', '2018-01-16 11:39:01', '', '2018-01-16 11:39:01');
/*!40000 ALTER TABLE `tbpegawaist` ENABLE KEYS */;

-- Dumping structure for view appdashboard.tbpegawai_detail
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `tbpegawai_detail` (
	`IdPegawai` INT(11) NOT NULL,
	`NIPPegawai` VARCHAR(18) NOT NULL COLLATE 'latin1_swedish_ci',
	`NamaPegawai` VARCHAR(100) NOT NULL COLLATE 'latin1_swedish_ci',
	`GolPegawai` INT(5) NULL,
	`SeksiPegawai` INT(5) NULL,
	`Eselon` INT(11) NULL,
	`JabatanPegawai` INT(5) NULL,
	`PtgsRekam` VARCHAR(18) NOT NULL COLLATE 'latin1_swedish_ci',
	`WaktuRekam` TIMESTAMP NOT NULL,
	`PtgsUpdate` VARCHAR(18) NOT NULL COLLATE 'latin1_swedish_ci',
	`WaktuUpdate` TIMESTAMP NOT NULL,
	`Pangkat` VARCHAR(28) NULL COLLATE 'latin1_swedish_ci',
	`NmEselon` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`NmUnit` VARCHAR(80) NULL COLLATE 'latin1_swedish_ci',
	`NamaJabatan` VARCHAR(80) NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for table appdashboard.tbseksi
CREATE TABLE IF NOT EXISTS `tbseksi` (
  `IdSeksi` int(11) NOT NULL AUTO_INCREMENT,
  `KdUnit` varchar(20) NOT NULL DEFAULT '0',
  `NmUnit` varchar(80) NOT NULL DEFAULT '0',
  `PtgsRekam` varchar(18) NOT NULL DEFAULT '0',
  `WktRekam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdSeksi`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Dumping data for table appdashboard.tbseksi: ~18 rows (approximately)
/*!40000 ALTER TABLE `tbseksi` DISABLE KEYS */;
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(1, 'KPP.MP.07', 'KEPALA KANTOR', '199203162014111002', '2018-01-04 09:17:48');
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(2, 'KPP.MP.0700', 'FUNGSIONAL', '199203162014111002', '2018-01-04 09:17:48');
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(3, 'KPP.MP.0701', 'SUBBAGIAN UMUM', '199203162014111002', '2018-01-04 09:17:48');
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(4, 'KPP.MP.0702', 'SEKSI PENINDAKAN DAN PENYIDIKAN', '199203162014111002', '2018-01-04 09:17:48');
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(5, 'KPP.MP.0703', 'SEKSI ADMINISTRASI MANIFES', '199203162014111002', '2018-01-04 09:17:48');
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(6, 'KPP.MP.0704', 'SEKSI PERBENDAHARAAN', '199203162014111002', '2018-01-04 09:17:48');
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(7, 'KPP.MP.0705', 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI I', '199203162014111002', '2018-01-04 09:17:48');
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(8, 'KPP.MP.0706', 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI II', '199203162014111002', '2018-01-04 09:17:48');
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(9, 'KPP.MP.0707', 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI III', '199203162014111002', '2018-01-04 09:17:48');
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(10, 'KPP.MP.0708', 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI IV', '199203162014111002', '2018-01-04 09:17:48');
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(11, 'KPP.MP.0709', 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI V', '199203162014111002', '2018-01-04 09:17:48');
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(12, 'KPP.MP.0710', 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI VI', '199203162014111002', '2018-01-04 09:17:48');
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(13, 'KPP.MP.0711', 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI VII', '199203162014111002', '2018-01-04 09:17:48');
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(14, 'KPP.MP.0712', 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI VIII', '199203162014111002', '2018-01-04 09:17:48');
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(15, 'KPP.MP.0713', 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI IX', '199203162014111002', '2018-01-04 09:17:48');
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(16, 'KPP.MP.0714', 'SEKSI PENYULUHAN DAN LAYANAN INFORMASI', '199203162014111002', '2018-01-04 09:17:48');
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(17, 'KPP.MP.0715', 'SEKSI KEPATUHAN INTERNAL', '199203162014111002', '2018-01-04 09:17:48');
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(18, 'KPP.MP.0716', 'SEKSI PENGOLAHAN DATA DAN ADMINISTRASI DOKUMEN', '199203162014111002', '2018-01-04 09:17:48');
/*!40000 ALTER TABLE `tbseksi` ENABLE KEYS */;

-- Dumping structure for table appdashboard.tbsurat
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

-- Dumping data for table appdashboard.tbsurat: ~3 rows (approximately)
/*!40000 ALTER TABLE `tbsurat` DISABLE KEYS */;
INSERT INTO `tbsurat` (`IdSurat`, `KdSurat`, `NmrSurat`, `TglSurat`, `Tujuan`, `Perihal`, `TglMulai`, `TglSelesai`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(5, 1, 28, '2018-01-09', '213', '132', '2018-01-09', '2018-01-09', '199203162014111002', '2018-01-09 10:09:25', '', NULL);
INSERT INTO `tbsurat` (`IdSurat`, `KdSurat`, `NmrSurat`, `TglSurat`, `Tujuan`, `Perihal`, `TglMulai`, `TglSelesai`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(6, 1, 29, '2018-01-11', 'Jakarta', 'Menghadiri Rapat Koordinasi Pengawasan', '2018-01-11', '2018-01-12', '199203162014111002', '2018-01-11 10:59:48', '', NULL);
INSERT INTO `tbsurat` (`IdSurat`, `KdSurat`, `NmrSurat`, `TglSurat`, `Tujuan`, `Perihal`, `TglMulai`, `TglSelesai`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(7, 1, 30, '2018-01-16', 'BANDUNG', 'RAKORWAS', '2018-01-02', '2018-01-18', '', '2018-01-16 11:39:01', '', NULL);
/*!40000 ALTER TABLE `tbsurat` ENABLE KEYS */;

-- Dumping structure for table appdashboard.tbuser
CREATE TABLE IF NOT EXISTS `tbuser` (
  `IdUser` int(11) NOT NULL AUTO_INCREMENT,
  `NipUser` varchar(18) NOT NULL,
  `NmUser` varchar(80) NOT NULL,
  `Password` varchar(80) NOT NULL,
  `GrupMenu` tinyint(4) NOT NULL,
  `WktRekam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `PtgsRekam` varchar(18) NOT NULL,
  `StatusUser` enum('Y','N') NOT NULL,
  PRIMARY KEY (`IdUser`),
  UNIQUE KEY `NipUser` (`NipUser`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- Dumping data for table appdashboard.tbuser: ~11 rows (approximately)
/*!40000 ALTER TABLE `tbuser` DISABLE KEYS */;
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `StatusUser`) VALUES
	(1, '199203162014111002', 'ADMIN', '$2y$09$8jeaifpU.12NzL8D615fzuK6iEkdCq.EDZlkk3KTKpkMbeX3SJCOe', 1, '2018-02-20 19:17:53', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `StatusUser`) VALUES
	(16, '197011141989121001', 'akhmad.rofiq', '$2y$09$NVYSpBkXvUqPnitdCiX3W.m/W0.2u0oIyPU18i0R1SeRYJHe1T9Jy', 3, '2018-01-19 16:50:55', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `StatusUser`) VALUES
	(17, '199502112015022001', 'sabrina.latifa', '$2y$09$tDtnbklU6UdVIe20cEwv8uqTgwyANvF.KeS.FmI.gSWa3Ybrojgp.', 7, '2018-01-19 16:54:39', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `StatusUser`) VALUES
	(18, '199402172013101001', 'ravi.raka felani', '$2y$09$p4ydzxaJzgmmlosZEsHw/OZBzN.HFVhJ89qB2pkAq6x3udoIVTQFe', 5, '2018-01-23 10:46:22', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `StatusUser`) VALUES
	(19, '199202282014111001', 'yohanes.guraci', '$2y$09$sJlxxR/JYr8VS5RFn1agh.TqDzsKDDBXZeXuf64WWlmjNs4KndsYe', 5, '2018-01-24 10:12:31', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `StatusUser`) VALUES
	(20, '197807162003121001', 'agung.saputro', '$2y$09$2pbHmNIDis.MYKe9Gvp/lOckzlMRpIvmYgQ32umGexmvNNmWz.XuC', 5, '2018-01-24 10:12:50', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `StatusUser`) VALUES
	(21, '197505221998031001', 'sulaiman', '$2y$09$vKHbcxiAJ6EuqlSl6XlYC.oRSbRSzARE6BxQFQDjhPsdaS1yTgwzW', 5, '2018-01-24 10:13:08', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `StatusUser`) VALUES
	(22, '197807121999031001', 'muzakkar', '$2y$09$zJbUgmXpLYBIY23MUdvsEeSGaR.5oYHDIihbQilmeWN7Y614IBKaC', 5, '2018-01-24 10:13:27', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `StatusUser`) VALUES
	(23, '199506152015021001', 'dody.firmansah', '$2y$09$pEehomNyHhHJCvK8BebeLegqDdwl4RCmKaKvfjL5cbjE61qybpbJK', 5, '2018-01-24 10:13:50', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `StatusUser`) VALUES
	(24, '198202242001121001', 'faisal', '$2y$09$74M4cHhojkwNS0Jt.3jhGugGKZiuQzZdHWUUtm2EjX7/5rA0vInI2', 5, '2018-01-24 10:14:05', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `StatusUser`) VALUES
	(26, '199411202015122001', 'novi.setyowati', '$2y$09$uTDEnJcKKzizH5GTj2EL6.E2yc7iGsD1D4IoJD8DUNvhHbB4NVHiK', 12, '2018-02-20 19:59:58', '199203162014111002', 'Y');
/*!40000 ALTER TABLE `tbuser` ENABLE KEYS */;

-- Dumping structure for view appdashboard.tbuser_detail
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `tbuser_detail` (
	`IdUser` INT(11) NOT NULL,
	`NipUser` VARCHAR(18) NOT NULL COLLATE 'latin1_swedish_ci',
	`NmUser` VARCHAR(80) NOT NULL COLLATE 'latin1_swedish_ci',
	`Password` VARCHAR(80) NOT NULL COLLATE 'latin1_swedish_ci',
	`GrupMenu` TINYINT(4) NOT NULL,
	`StatusUser` ENUM('Y','N') NOT NULL COLLATE 'latin1_swedish_ci',
	`NamaPegawai` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`NIPPegawai` VARCHAR(18) NULL COLLATE 'latin1_swedish_ci',
	`SeksiPegawai` INT(5) NULL,
	`NamaJabatan` VARCHAR(80) NULL COLLATE 'latin1_swedish_ci',
	`IdSeksi` INT(11) NULL,
	`KdUnit` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`NmUnit` VARCHAR(80) NULL COLLATE 'latin1_swedish_ci',
	`Pangkat` VARCHAR(28) NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view appdashboard.tbview_grupakses
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `tbview_grupakses` (
	`Id` INT(11) NOT NULL,
	`IdUser` INT(11) NULL,
	`IdHakAkses` INT(11) NULL,
	`PtgsRekam` VARCHAR(18) NULL COLLATE 'latin1_swedish_ci',
	`WktRekam` TIMESTAMP NOT NULL,
	`GrupMenu` VARCHAR(100) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view appdashboard.tb_detail_plh
-- Creating temporary table to overcome VIEW dependency errors
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

-- Dumping structure for table appdashboard.tb_petugas_hanggar
CREATE TABLE IF NOT EXISTS `tb_petugas_hanggar` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdPegawai` int(11) NOT NULL DEFAULT '0',
  `IdHanggar` int(11) NOT NULL DEFAULT '0',
  `PtgsRkm` varchar(18) NOT NULL,
  `WktRkm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PtgsUpdate` varchar(18) NOT NULL,
  `WktUpdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `IdPegawai` (`IdPegawai`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table appdashboard.tb_petugas_hanggar: ~0 rows (approximately)
/*!40000 ALTER TABLE `tb_petugas_hanggar` DISABLE KEYS */;
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdPegawai`, `IdHanggar`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(1, 26, 1, '199203162014111002', '2018-02-26 00:00:00', '', '2018-02-26 22:22:11');
/*!40000 ALTER TABLE `tb_petugas_hanggar` ENABLE KEYS */;

-- Dumping structure for table appdashboard.tb_plh
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

-- Dumping data for table appdashboard.tb_plh: ~9 rows (approximately)
/*!40000 ALTER TABLE `tb_plh` DISABLE KEYS */;
INSERT INTO `tb_plh` (`IdPlh`, `NmrSprint`, `TglSprint`, `IdLeave`, `KdLeave`, `NIPPejabatLeave`, `NIPPejabatPengganti`, `TglMulai`, `TglSelesai`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(10, 1, '2018-01-11', 5, 1, '196310011983031001', '197410251996021001', '2018-01-11', '2018-01-11', '199203162014111002', '2018-01-09 10:09:25', '199203162014111002', '2018-01-11 10:31:56');
INSERT INTO `tb_plh` (`IdPlh`, `NmrSprint`, `TglSprint`, `IdLeave`, `KdLeave`, `NIPPejabatLeave`, `NIPPejabatPengganti`, `TglMulai`, `TglSelesai`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(11, 2, '2018-01-11', 5, 1, '197011141989121001', '196908241990121001', '2018-01-11', '2018-01-11', '199203162014111002', '2018-01-11 10:42:27', NULL, '2018-01-11 10:42:27');
INSERT INTO `tb_plh` (`IdPlh`, `NmrSprint`, `TglSprint`, `IdLeave`, `KdLeave`, `NIPPejabatLeave`, `NIPPejabatPengganti`, `TglMulai`, `TglSelesai`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(12, NULL, NULL, 6, 1, '197011141989121001', NULL, NULL, NULL, '199203162014111002', '2018-01-11 10:59:48', '0', '2018-01-11 10:59:48');
INSERT INTO `tb_plh` (`IdPlh`, `NmrSprint`, `TglSprint`, `IdLeave`, `KdLeave`, `NIPPejabatLeave`, `NIPPejabatPengganti`, `TglMulai`, `TglSelesai`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(13, 10, '2018-01-16', 6, 1, '196601011988101001', '198306042003122001', '2018-01-16', '2018-01-16', '199203162014111002', '2018-01-11 10:59:48', '199203162014111002', '2018-01-16 08:24:13');
INSERT INTO `tb_plh` (`IdPlh`, `NmrSprint`, `TglSprint`, `IdLeave`, `KdLeave`, `NIPPejabatLeave`, `NIPPejabatPengganti`, `TglMulai`, `TglSelesai`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(14, NULL, NULL, 6, 1, '197410251996021001', NULL, NULL, NULL, '199203162014111002', '2018-01-11 10:59:48', '0', '2018-01-11 10:59:48');
INSERT INTO `tb_plh` (`IdPlh`, `NmrSprint`, `TglSprint`, `IdLeave`, `KdLeave`, `NIPPejabatLeave`, `NIPPejabatPengganti`, `TglMulai`, `TglSelesai`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(15, NULL, NULL, 6, 1, '196912141990121002', NULL, NULL, NULL, '199203162014111002', '2018-01-11 10:59:48', '0', '2018-01-11 10:59:48');
INSERT INTO `tb_plh` (`IdPlh`, `NmrSprint`, `TglSprint`, `IdLeave`, `KdLeave`, `NIPPejabatLeave`, `NIPPejabatPengganti`, `TglMulai`, `TglSelesai`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(16, NULL, NULL, 7, 1, '197011141989121001', NULL, NULL, NULL, '199203162014111002', '2018-01-16 11:39:01', '0', '2018-01-16 11:39:01');
INSERT INTO `tb_plh` (`IdPlh`, `NmrSprint`, `TglSprint`, `IdLeave`, `KdLeave`, `NIPPejabatLeave`, `NIPPejabatPengganti`, `TglMulai`, `TglSelesai`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(17, NULL, NULL, 7, 1, '196601011988101001', NULL, NULL, NULL, '199203162014111002', '2018-01-16 11:39:01', '0', '2018-01-16 11:39:01');
INSERT INTO `tb_plh` (`IdPlh`, `NmrSprint`, `TglSprint`, `IdLeave`, `KdLeave`, `NIPPejabatLeave`, `NIPPejabatPengganti`, `TglMulai`, `TglSelesai`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(18, NULL, NULL, 7, 1, '197410251996021001', NULL, NULL, NULL, '199203162014111002', '2018-01-16 11:39:01', '0', '2018-01-16 11:39:01');
/*!40000 ALTER TABLE `tb_plh` ENABLE KEYS */;

-- Dumping structure for trigger appdashboard.tbcapaian_after_insert
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tbcapaian_after_insert` AFTER INSERT ON `tbcapaian` FOR EACH ROW BEGIN
	UPDATE tbiku
	SET tbiku.Capaian = (SELECT tbcapaian.Capaian FROM tbcapaian ORDER BY tbcapaian.IdCapaian DESC LIMIT 1)
	WHERE tbiku.IdIku = (SELECT tbcapaian.IdIku FROM tbcapaian ORDER BY tbcapaian.IdCapaian DESC LIMIT 1);
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for view appdashboard.detail_pegawaist
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `detail_pegawaist`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `detail_pegawaist` AS SELECT tbpegawaist.id, tbpegawai.IdPegawai, tbpegawai.NIPPegawai, tbpegawai.NamaPegawai, tbpegawai.GolPegawai, tbpegawai.SeksiPegawai, tbpegawai.JabatanPegawai, tbsurat.* FROM tbpegawaist 
LEFT JOIN tbpegawai ON tbpegawaist.NIP = tbpegawai.NIPPegawai
LEFT JOIN tbsurat ON tbpegawaist.IdSurat = tbsurat.IdSurat ;

-- Dumping structure for view appdashboard.tbpegawai_detail
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `tbpegawai_detail`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tbpegawai_detail` AS SELECT a.*, CONCAT(d.Pangkat," / ",d.Gol) AS Pangkat, b.NmEselon, e.NmUnit, c.NamaJabatan  FROM tbpegawai a
LEFT JOIN tbeselon b ON a.Eselon=b.IdEselon
LEFT JOIN tbjabatan c ON a.JabatanPegawai=c.IdJabatan
LEFT JOIN tbpangkat d ON a.GolPegawai=d.KdPangkat
LEFT JOIN tbseksi e ON a.SeksiPegawai=e.IdSeksi ;

-- Dumping structure for view appdashboard.tbuser_detail
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `tbuser_detail`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tbuser_detail` AS SELECT a.IdUser,a.NipUser, a.NmUser, a.Password, a.GrupMenu, a.StatusUser, b.NamaPegawai, b.NIPPegawai , b.SeksiPegawai, c.NamaJabatan, d.IdSeksi, d.KdUnit, d.NmUnit, CONCAT(e.Pangkat," - ",e.Gol) AS Pangkat FROM tbuser a
LEFT JOIN tbpegawai b ON a.NipUser = b.NIPPegawai
LEFT JOIN tbjabatan c ON b.JabatanPegawai=c.IdJabatan
LEFT JOIN tbseksi d ON b.SeksiPegawai=d.IdSeksi
LEFT JOIN tbpangkat e ON b.GolPegawai=e.KdPangkat ;

-- Dumping structure for view appdashboard.tbview_grupakses
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `tbview_grupakses`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tbview_grupakses` AS SELECT a.*, b.GrupMenu FROM tbgrupakses a
LEFT JOIN grupmenu b ON a.IdHakAkses=b.IdGrupMenu ;

-- Dumping structure for view appdashboard.tb_detail_plh
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `tb_detail_plh`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_detail_plh` AS SELECT tb_plh.*, tbsurat.NmrSurat, tbsurat.TglSurat, a.NamaPegawai AS NamaPejabat, b.NamaPegawai AS NamaPengganti FROM tb_plh
LEFT JOIN tbsurat ON tb_plh.IdLeave = tbsurat.IdSurat
LEFT JOIN tbpegawai a ON tb_plh.NIPPejabatLeave = a.NIPPegawai
LEFT JOIN tbpegawai b ON tb_plh.NIPPejabatPengganti = b.NIPPegawai ;


-- Dumping database structure for apppeloro
CREATE DATABASE IF NOT EXISTS `apppeloro` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `apppeloro`;

-- Dumping structure for table apppeloro.tb_cctv
CREATE TABLE IF NOT EXISTS `tb_cctv` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdPerusahaan` int(11) NOT NULL,
  `IpAddress` varchar(40) DEFAULT NULL,
  `Username` varchar(80) DEFAULT NULL,
  `Password` varchar(80) DEFAULT NULL,
  `Browser` varchar(80) DEFAULT NULL,
  `CctvType` varchar(80) DEFAULT NULL,
  `Playback` varchar(80) DEFAULT NULL,
  `Status` enum('Y','N') NOT NULL DEFAULT 'N',
  `Keterangan` varchar(255) DEFAULT NULL,
  `PtgsRekam` varchar(18) NOT NULL,
  `WktRekam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

-- Dumping data for table apppeloro.tb_cctv: ~103 rows (approximately)
/*!40000 ALTER TABLE `tb_cctv` DISABLE KEYS */;
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(1, 76, '119.252.160.211:5150', 'bc', 'beacukai1', 'Aplikasi Dekstop', NULL, '214 Hari', 'Y', 'Akses Kamera 2, 3, 4, 5, 7 dan 9\r\nAkses CCTV Menggunakan Aplikasi Live Viewer di Komputer HP Pavilion', '199203162014111002', '2018-05-30 11:15:43');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(2, 1, '202.182.48.122:8000', 'admin', 'admin', 'Mozilla Firefox', NULL, '-', 'N', 'Tidak Aktif', '199203162014111002', '2018-05-31 09:04:12');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(3, 2, '103.232.65.142', 'bc', 'bc', 'Internet Explorer', 'KRISVIEW', '5 Hari', 'N', '-', '199203162014111002', '2018-05-31 09:42:10');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(4, 3, '103.232.65.142', 'bc', 'bc', 'Internet Explorer', 'KRISVIEW', '5 Hari', 'N', '', '199203162014111002', '2018-05-31 09:44:34');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(5, 4, '36.68.150.251:8080', 'beacukai', 'beacukai', 'Internet Explorer', 'WebCMS', '5 Hari', 'N', 'Akses Menggunakan Aplikasi CMS / Internet explorer', '199203162014111002', '2018-05-31 09:49:25');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(6, 5, '36.78.179.57:81', 'beacukai', 'beacukai', 'Internet Explorer', 'NetSurveilenceWeb', '30 Hari', 'Y', 'Akses 3 Kamera', '199203162014111002', '2018-05-31 09:52:58');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(7, 32, '36.68.151.102:2002', 'admin', 'admin', 'Internet Explorer', NULL, '8 Hari', 'Y', 'Akses 15 Kamera', '199203162014111002', '2018-05-31 10:05:09');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(8, 31, '36.68.151.102:2001', 'admin', 'admin', 'Internet Explorer', NULL, '20 Hari', 'Y', 'Akses 4 Kamera', '199203162014111002', '2018-05-31 10:52:45');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(9, 33, 'idncctv1.frigoglass.com', 'custom', 'cust1234', 'Internet Explorer', NULL, '60 Hari', 'Y', 'Akses 4 Kamera', '199203162014111002', '2018-05-31 11:05:22');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(10, 34, '27.123.4.10:81', 'admin', 'fuji', 'Internet Explorer', NULL, '17 Hari', 'Y', 'Akses 8 Kamera', '199203162014111002', '2018-05-31 11:08:12');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(11, 35, 'Y55F772.dvrhost.com:7000', 'admin', '000000', 'Internet Explorer', NULL, '-', 'N', 'Tidak Dapat Diakses', '199203162014111002', '2018-05-31 11:12:50');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(12, 36, '27.123.3.46', 'admin', 'gayasteel12345', 'Internet Explorer', NULL, '30 Hari', 'Y', 'Akses 16 Kamera', '199203162014111002', '2018-05-31 11:16:24');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(13, 61, '112.78.129.114:8080', 'admin', 'admin', 'Internet Explorer', '', '-', 'N', 'Akses 4 Kamera\r\nTidak ada playback', '199203162014111002', '2018-05-31 15:44:39');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(14, 6, '36.66.126.101:9000', 'admin', '(kosong)', 'Internet Explorer', 'NetworkVideoClient', '10 Hari', 'Y', 'Akses 15 Kamera', '199203162014111002', '2018-06-04 09:31:46');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(15, 7, '203.160.60.75', 'exim01', 'exim', 'Internet Explorer', '', '-', 'Y', '- Akses Kamera Satu Persatu\r\n- Akses ditolak', '199203162014111002', '2018-06-04 09:37:07');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(16, 8, '202.43.114.62:81', 'admin', '1111', 'Internet Explorer', 'HIKVISION', '14 Hari', 'Y', 'Akses 13 Kamera', '199203162014111002', '2018-06-04 09:42:10');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(17, 9, '27.123.4.78', 'admin', 'injection', 'Internet Explorer', '', '11 Hari', 'Y', 'Password Tidak Ada', '199203162014111002', '2018-06-04 10:08:48');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(18, 10, 'www.dddns.org', 'admin', '123456', 'Internet Explorer', '', '-', 'N', 'ID : m23792594', '199203162014111002', '2018-06-04 10:16:27');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(19, 11, '103.232.65.150:88', 'admin', 'admin', 'Internet Explorer', '', '-', 'Y', '', '199203162014111002', '2018-06-04 10:17:36');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(20, 12, '182.253.6.2:8081', 'admin', '123456', 'Internet Explorer', 'NetSurveilenceWeb', '14 Hari', 'Y', 'Akses 4 Kamera', '199203162014111002', '2018-06-04 10:18:51');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(21, 14, '182.253.81.132:8181', 'kpbc', 'kpbc', 'Internet Explorer', '', '-', 'Y', '', '199203162014111002', '2018-06-04 10:20:44');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(22, 13, '182.253.81.132:8181', 'kpbc', 'kpbc', 'Internet Explorer', 'CMS', '-', 'Y', '', '199203162014111002', '2018-06-04 10:23:08');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(23, 16, '36.68.150.181', 'beacukai', 'bc4321', 'Internet Explorer', '', '-', 'N', 'Tidak dapat memutar playback', '199203162014111002', '2018-06-04 10:24:21');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(24, 17, '27.123.5.29:81', 'admin', 'daelim12345', 'Internet Explorer', 'INFINITY', '14 Hari', 'Y', 'Akses 16 Kamera', '199203162014111002', '2018-06-04 10:26:01');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(25, 18, '45.112.127.170:8000', 'admin', 'abcd1234', 'Internet Explorer', 'CMS', '-', 'Y', '', '199203162014111002', '2018-06-04 10:28:50');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(26, 19, '36.68.151.20:81', 'admin', '-', 'Internet Explorer', '', '-', 'N', 'Tidak Aktif', '199203162014111002', '2018-06-04 11:08:41');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(27, 20, '203.160.60.139:8081', 'admin', '-', 'Aplikasi Dekstop', 'CMS', '30 Hari', 'Y', 'Apliaksi CMS di Komputer HP Pavilion\r\n', '199203162014111002', '2018-06-04 11:09:22');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(28, 21, '36.77.20.157:4000', 'beacukai', 'beacukai', 'Internet Explorer', NULL, '-', 'N', 'Tidak Aktif', '199203162014111002', '2018-06-04 11:31:14');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(29, 22, '143469233', 'beacukai', 'dmcti', 'Team Viewer', '', '-', 'N', 'Aplikasi Teamviewer\r\nTeamviewer ID : 143469233\r\npassword : beacukai123', '199203162014111002', '2018-06-04 11:32:37');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(30, 23, '203.160.60.20', 'dsicctv', 'dongsan123', 'Internet Explorer', '', '-', 'Y', 'Login Website dongsan-indonesia.com\r\nUser : beacukai\r\nPassword : Beacukai', '199203162014111002', '2018-06-04 11:36:01');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(31, 24, '118.96.31.173:8842', 'admin', 'admin', 'Palemoon', NULL, '-', 'N', 'Website Tidak dapat diakses', '199203162014111002', '2018-06-04 11:38:30');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(32, 25, 'xmeye.net', 'admin', '(Tanpa Password)', 'Internet Explorer', '', '14 Hari', 'N', 'device id : f48202007ed77e20\r\n\r\npassword tidak ada', '199203162014111002', '2018-06-04 11:39:52');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(33, 26, '113.20.137.154:90', 'beacukai', 'beacukai123', 'Internet Explorer', NULL, '14 Hari', 'Y', 'Akses 4 Kamera', '199203162014111002', '2018-06-04 11:40:56');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(34, 27, '36.67.190.157:81', 'admin', 'adm@enplas', 'Internet Explorer', 'CMS', '30 Hari', 'Y', 'Akses 5 Kamera\r\nPlayback menggunakan aplikasi Actech CMS Lite menu remote dekstop', '199203162014111002', '2018-06-04 11:45:54');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(35, 28, '114.141.49.5:8000', 'beacukai', '1234', 'Internet Explorer', NULL, '20 Hari', 'Y', 'Akses menggunakan Aplikasi CMS Dekstop di komputer HP Pavilion', '199203162014111002', '2018-06-04 11:48:45');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(36, 29, '27.123.4.6:8080', 'admin', 'admin', 'Internet Explorer', '', '-', 'Y', 'Akses 16 Kamera\r\nTidak dapat memutar playback', '199203162014111002', '2018-06-04 11:51:15');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(37, 30, 'SP36034155', '-', '-', 'Aplikasi Dekstop', NULL, '-', 'Y', 'Aplikasi APK Cloudse di komputer HP Pavilion', '199203162014111002', '2018-06-04 13:17:22');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(38, 37, 'gcp-mis.ddns.net:3636', 'epte', '1234', 'Internet Explorer', NULL, '44 Hari', 'Y', 'Akses 4 Kamera', '199203162014111002', '2018-06-04 14:04:33');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(39, 38, '43.252.73.34:8080', 'iino', 'iinobc', 'Aplikasi Dekstop', NULL, '30 Hari', 'Y', 'Akses dengan aplikas CMS Dekstop di Komputer HP Pavilion\r\nAkses 4 Kamera', '199203162014111002', '2018-06-04 14:10:32');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(40, 39, '202.150.145.164', 'bcikpi', '**bcikpi2020#', 'Internet Explorer', NULL, '-', 'Y', 'Akses 4 Kamera', '199203162014111002', '2018-06-04 14:19:51');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(41, 62, '36.68.151.99', 'admin', 'desire65', 'Internet Explorer', NULL, '-', 'Y', '-', '199203162014111002', '2018-07-02 18:54:56');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(42, 40, '36.89.49.237', 'user1', '1111', 'Internet Explorer', '', '-', 'Y', '-', '199203162014111002', '2018-07-03 08:37:24');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(43, 41, '36.68.151.20:81', '-', '-', 'Internet Explorer', '', '-', 'Y', '-', '199203162014111002', '2018-07-03 08:44:59');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(44, 42, 'innotechrubber.dyndns.org', 'custom', 'custom', 'Internet Explorer', NULL, '-', 'N', '-', '199203162014111002', '2018-07-03 08:46:18');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(45, 43, '36.71.134.192', 'iretech', 'iretech123', 'Internet Explorer', '', '-', 'N', '-', '199203162014111002', '2018-07-03 09:12:43');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(46, 44, '113.20.138.46:8080', 'beacukai', 'custom18', 'Internet Explorer', NULL, '-', 'Y', '-', '199203162014111002', '2018-07-03 09:16:41');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(47, 45, '203.160.60.6:8184', 'admin', '1447', 'Internet Explorer', NULL, '14 Hari', 'Y', '-', '199203162014111002', '2018-07-03 09:18:39');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(48, 46, '36.68.150.35:81', 'BC', '123', 'Internet Explorer', NULL, '9 Hari', 'Y', '-', '199203162014111002', '2018-07-03 09:19:25');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(49, 48, 'koformcikarang17.dahuaddns.com:8000', 'customs', 'customs', 'Internet Explorer', '', '-', 'N', '-', '199203162014111002', '2018-07-03 09:22:20');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(50, 49, 'korrioindustri.dyndns.org:8001', 'custom', '2014', 'Internet Explorer', NULL, '14 Hari', 'Y', '-', '199203162014111002', '2018-07-03 09:23:34');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(51, 50, '36.68.151.74:8080', 'beacukai', 'beacukai', 'Internet Explorer', NULL, '24 Hari', 'Y', '-', '199203162014111002', '2018-07-03 09:34:26');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(52, 52, '202.169.45.130:8080', 'customs', 'customs1', 'Internet Explorer', 'HIKVISION', '14 Hari', 'Y', '-', '199203162014111002', '2018-07-03 09:36:37');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(53, 53, 'xmeye.net', 'bc', 'bc', 'Internet Explorer', NULL, '-', 'Y', 'device ID : 8b47b8211a51b838', '199203162014111002', '2018-07-03 09:40:45');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(54, 54, '113.20.140.99:88', 'malugo', 'ptm17854', 'Internet Explorer', 'HIKVISION', '21 Hari', 'Y', '-', '199203162014111002', '2018-07-03 09:45:16');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(55, 55, '113.20.140.99:88', 'malugo', 'ptm17854', 'Internet Explorer', 'HIKVISION', '21 Hari', 'Y', '-', '199203162014111002', '2018-07-03 09:48:35');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(56, 57, '202.179.187.246:8081', 'Customs East', 'customs2', 'Internet Explorer', '', '14 Hari', 'N', '-', '199203162014111002', '2018-07-03 10:15:05');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(57, 56, '103.76.168.147', 'admin', 'admin123', 'Internet Explorer', NULL, '7 Hari', 'Y', '-', '199203162014111002', '2018-07-03 10:17:34');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(58, 58, '36.77.23.95:89', 'customs', '2014', 'Internet Explorer', NULL, '-', 'N', '-', '199203162014111002', '2018-07-03 10:33:19');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(59, 59, '36.45.179.111:8400', 'bc', '1234', 'Internet Explorer', NULL, '-', 'N', '-', '199203162014111002', '2018-07-03 10:34:19');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(60, 64, 'MxCC', 'guest', 'guest', 'Aplikasi Dekstop', NULL, '14 Hari', 'Y', 'Koneksi ke VPN multistrada dengan aplikasi Forticlient\r\nusername : bea.cukai\r\npassword : beacukai', '199203162014111002', '2018-07-03 10:37:32');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(61, 65, '36.68.151.252', 'admin', 'admin123', 'Internet Explorer', 'HIKVISION', '-', 'Y', '-', '199203162014111002', '2018-07-03 10:38:27');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(62, 66, 'ckr.pelangi-cimandiri.co.id:2223', 'bc', 'cikarang', 'Internet Explorer', NULL, '-', 'Y', '', '199203162014111002', '2018-07-03 13:32:41');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(63, 67, 'platech16.dyndns.org:8000', 'custom', '-', 'Internet Explorer', NULL, '-', 'N', '', '199203162014111002', '2018-07-03 13:36:37');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(64, 69, '115.124.79.246', 'admin', 'mUt14r4', 'Internet Explorer', '', '-', 'N', 'tidak bisa login', '199203162014111002', '2018-07-03 13:39:01');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(65, 70, '980072690 ', 'bc', 'bc', 'Team Viewer', '', '-', 'Y', 'ID: 980072690 Pasw : PB@R89638 \r\nkemudian login into system dengan user code/password : beacukai\r\nlogin cctv dengan user/pass : bc\r\n', '199203162014111002', '2018-07-03 13:40:33');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(66, 71, '27.123.1.110:88', 'admin', '080805', 'Mozilla Firefox', NULL, '-', 'Y', '', '199203162014111002', '2018-07-03 13:43:38');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(67, 72, '182.253.81.66:82', 'admin', 'admin', 'Internet Explorer', '', '-', 'Y', 'www.ptrbc.com', '199203162014111002', '2018-07-03 13:45:44');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(68, 73, '203.160.60.148:8282', 'ricind', 'rlc12345', 'Internet Explorer', '', '-', 'Y', '', '199203162014111002', '2018-07-03 13:48:54');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(69, 74, '115.124.76.66:5000', 'dmc', 'samplus', 'Internet Explorer', NULL, '-', 'Y', '', '199203162014111002', '2018-07-03 13:50:35');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(70, 75, '203.160.60.51', 'samoin1', 'samoin1', 'Mozilla Firefox', '', '-', 'N', 'Ip / Port Invalid', '199203162014111002', '2018-07-03 13:53:16');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(71, 78, '203.160.60.148:8282', 'ricind', 'rlc12345', 'Internet Explorer', '', '-', 'Y', '', '199203162014111002', '2018-07-03 13:56:42');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(72, 77, '36.66.126.101:8002', 'customs', 'customs', 'Internet Explorer', NULL, '-', 'Y', '', '199203162014111002', '2018-07-03 14:00:08');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(73, 79, 'samuderaocean.dvrdns.org:8001', 'custom', '2014', 'Internet Explorer', NULL, '-', 'Y', '', '199203162014111002', '2018-07-03 14:03:13');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(74, 80, '203.160.60.25:1113', 'beacukai', '@beacukai123', 'Internet Explorer', 'HIKVISION', '14 Hari', 'Y', '', '199203162014111002', '2018-07-03 14:05:36');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(75, 81, '27.123.4.74:8000', 'beacukai', 'cukai', 'Internet Explorer', NULL, '-', 'Y', '', '199203162014111002', '2018-07-03 14:07:21');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(76, 82, 'www.shinheung.id', 'bc', '1111', 'Internet Explorer', NULL, '-', 'N', '', '199203162014111002', '2018-07-03 14:08:21');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(77, 83, '203.160.60.29:8000/', 'bcp2', 'bc123', 'Internet Explorer', NULL, '-', 'Y', '', '199203162014111002', '2018-07-03 14:09:58');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(78, 84, '36.82.116.141 ', 'bc', '1111', 'Internet Explorer', NULL, '-', 'N', '', '199203162014111002', '2018-07-03 14:10:58');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(79, 85, '203.160.60.27:89', 'admin', 'admin', 'Internet Explorer', NULL, '-', 'Y', '', '199203162014111002', '2018-07-03 14:13:12');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(80, 86, '36.68.150.36:8000', 'bc', 'bc', 'Internet Explorer', '', '-', 'Y', '', '199203162014111002', '2018-07-03 14:14:11');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(81, 87, '202.162.203.10:8080', 'admin', 'admin123', 'Internet Explorer', NULL, '-', 'N', '', '199203162014111002', '2018-07-03 14:17:36');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(82, 88, '203.160.60.50:8000', 'eximsi', '123456', 'Internet Explorer', '', '-', 'N', 'tidak bisa login', '199203162014111002', '2018-07-03 14:23:35');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(83, 89, 'cbef3c1cad1ac3de', 'admin', '3333', 'Internet Explorer', NULL, '-', 'N', '', '199203162014111002', '2018-07-03 14:26:20');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(84, 90, '27.123.1.102:8080', 'admin', '-', 'Internet Explorer', NULL, '-', 'N', '', '199203162014111002', '2018-07-03 14:33:22');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(85, 91, '36.78.179.181:88', 'beacukai', 'systech02', 'Internet Explorer', NULL, '-', 'N', '', '199203162014111002', '2018-07-03 14:36:19');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(86, 92, 'xmeye.net ', 'bcckr', '-', 'Internet Explorer', '', '-', 'N', '', '199203162014111002', '2018-07-03 14:39:16');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(87, 93, '36.89.51.233', 'bc', 'bc123', 'Internet Explorer', NULL, '-', 'Y', '', '199203162014111002', '2018-07-03 14:50:24');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(88, 94, '36.89.51.233:4', 'bc', 'bc123', 'Internet Explorer', '', '-', 'Y', '', '199203162014111002', '2018-07-03 14:51:50');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(89, 95, 'Aplikasi CMS3', 'av50e38ec6', '-', 'Aplikasi Dekstop', NULL, '-', 'N', '', '199203162014111002', '2018-07-03 14:53:03');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(90, 97, '113.20.139.186:8001', 'beacukai', 'beacukai', 'Internet Explorer', NULL, '-', 'Y', '', '199203162014111002', '2018-07-03 14:54:50');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(91, 98, '202.162.203.37:3535', 'bea cukai', 'Tosin123', 'Mozilla Firefox', '', '-', 'N', '', '199203162014111002', '2018-07-03 14:56:48');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(92, 99, '36.68.151.33:8020', 'beacukai', 'bcr54321', 'Internet Explorer', NULL, '-', 'N', '', '199203162014111002', '2018-07-03 14:57:47');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(93, 100, '36.68.150.25:9000', 'bc', 'bc', 'Internet Explorer', NULL, '-', 'Y', '', '199203162014111002', '2018-07-03 14:59:29');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(94, 101, '36.66.103.193', '1', '-', 'Aplikasi Dekstop', 'NetworkVideoClient', '7 Hari', 'Y', 'Menggunakan aplikasi NetDVR di komputer HP Pavilion\r\n', '199203162014111002', '2018-07-03 15:03:29');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(95, 102, '27.123.4.142:88', 'bea_cukai', '123456', 'Internet Explorer', NULL, '-', 'Y', '', '199203162014111002', '2018-07-03 15:05:46');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(96, 103, '139.5.152.81:8081', 'custom', 'custom', 'Internet Explorer', NULL, '-', 'Y', '', '199203162014111002', '2018-07-03 15:07:00');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(97, 104, '36.68.150.42:6666', 'bea cukai', 'winsheng', 'Internet Explorer', NULL, '-', 'Y', '', '199203162014111002', '2018-07-03 15:08:03');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(98, 105, '36.67.188.161:8080', 'beacukai', 'beacukai1234', 'Internet Explorer', NULL, '7 hari', 'Y', '-', '199203162014111002', '2018-07-03 15:09:19');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(99, 106, '36.67.188.161:8080', 'beacukai', 'beacukai1234', 'Internet Explorer', 'HIKVISION', '7 Hari', 'Y', '-', '199203162014111002', '2018-07-03 15:10:17');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(100, 107, '36.67.211.193:8001', 'beacukai', '123456', 'Internet Explorer', NULL, '-', 'Y', '', '199203162014111002', '2018-07-03 15:12:34');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(101, 108, '36.68.150.178:8001', 'GB', 'gb', 'Internet Explorer', '', '-', 'N', 'IP or Pot Invalid', '199203162014111002', '2018-07-03 15:13:37');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(102, 109, '36.67.57.153', 'beacukai', 'bc', 'Internet Explorer', 'NetSurveilenceWeb', '-', 'Y', '', '199203162014111002', '2018-07-03 15:14:45');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`) VALUES
	(103, 96, '180.253.192.58', 'admin', 'admin123456', 'Internet Explorer', '', '-', 'Y', '5dd94bdcc90bed07', '199203162014111002', '2018-07-05 11:37:12');
/*!40000 ALTER TABLE `tb_cctv` ENABLE KEYS */;

-- Dumping structure for view apppeloro.tb_cctv_detail
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `tb_cctv_detail` (
	`Id` INT(11) NOT NULL,
	`IdPerusahaan` INT(11) NOT NULL,
	`IpAddress` VARCHAR(40) NULL COLLATE 'latin1_swedish_ci',
	`Username` VARCHAR(80) NULL COLLATE 'latin1_swedish_ci',
	`Password` VARCHAR(80) NULL COLLATE 'latin1_swedish_ci',
	`Browser` VARCHAR(80) NULL COLLATE 'latin1_swedish_ci',
	`CctvType` VARCHAR(80) NULL COLLATE 'latin1_swedish_ci',
	`Playback` VARCHAR(80) NULL COLLATE 'latin1_swedish_ci',
	`Status` ENUM('Y','N') NOT NULL COLLATE 'latin1_swedish_ci',
	`Keterangan` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`PtgsRekam` VARCHAR(18) NOT NULL COLLATE 'latin1_swedish_ci',
	`WktRekam` TIMESTAMP NOT NULL,
	`NmPerusahaan` VARCHAR(80) NULL COLLATE 'latin1_swedish_ci',
	`NPWP` VARCHAR(15) NULL COLLATE 'latin1_swedish_ci',
	`AlamatPabrik` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`NoSkepAkhir` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`Fasilitas` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`Jenis` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`ProfilResiko` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view apppeloro.tb_non_cctv
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `tb_non_cctv` (
	`IdPerusahaan` INT(11) NOT NULL,
	`NPWP` VARCHAR(15) NOT NULL COLLATE 'latin1_swedish_ci',
	`NmPerusahaan` VARCHAR(80) NOT NULL COLLATE 'latin1_swedish_ci',
	`Fasilitas` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`Jenis` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`AlamatPabrik` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`AlamatKantor` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`ProfilResiko` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`NoSkepPendirian` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`TglSkepPendirian` DATE NOT NULL,
	`NoSkepAkhir` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`TglSkepAkhir` DATE NOT NULL,
	`TglJatuhTempo` DATE NOT NULL,
	`KategoriUsaha` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`NamaPenanggungJawab` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`WNPenanggungJawab` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`Luas` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`Status` ENUM('Y','N') NOT NULL COLLATE 'latin1_swedish_ci',
	`Lokasi` TINYINT(4) NOT NULL,
	`PtgsRekam` VARCHAR(18) NULL COLLATE 'latin1_swedish_ci',
	`WktRekam` TIMESTAMP NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for table apppeloro.tb_perusahaan
CREATE TABLE IF NOT EXISTS `tb_perusahaan` (
  `IdPerusahaan` int(11) NOT NULL AUTO_INCREMENT,
  `NPWP` varchar(15) NOT NULL,
  `NmPerusahaan` varchar(80) NOT NULL,
  `Fasilitas` int(3) NOT NULL,
  `Jenis` int(3) NOT NULL,
  `AlamatPabrik` varchar(255) NOT NULL,
  `AlamatKantor` varchar(255) NOT NULL,
  `ProfilResiko` int(3) NOT NULL,
  `NoSkepPendirian` varchar(50) NOT NULL,
  `TglSkepPendirian` date NOT NULL,
  `NoSkepAkhir` varchar(50) NOT NULL,
  `TglSkepAkhir` date NOT NULL,
  `TglJatuhTempo` date NOT NULL,
  `KategoriUsaha` varchar(255) NOT NULL,
  `NamaPenanggungJawab` varchar(255) NOT NULL,
  `WNPenanggungJawab` varchar(255) NOT NULL,
  `Luas` varchar(255) NOT NULL,
  `Status` enum('Y','N') NOT NULL,
  `Lokasi` tinyint(4) NOT NULL,
  `PtgsRekam` varchar(18) DEFAULT NULL,
  `WktRekam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdPerusahaan`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;

-- Dumping data for table apppeloro.tb_perusahaan: ~109 rows (approximately)
/*!40000 ALTER TABLE `tb_perusahaan` DISABLE KEYS */;
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(1, '024862534403000', 'ADIPERKASA EKABAKTI INDUSTRY', 2, 3, 'JALAN JABABEKA V BLOK V NO. 34-36, KAWASAN INDUSTRI JABABEKA, DESA PASIR GOMBONG, KEC. CIKARANG UTARA', 'Jalan Raya Golf Gunung Geulis RT. 001 RW 001 Desa Gunung Geulis, Kec. Sukaraja Kab. Bogor', 6, '897/KM.4/2017', '2017-04-25', '897/KM.4/2017', '2017-04-25', '2020-04-20', 'Metal Product', 'JASON SURJANA TANUWIDJAJA', 'Indonesia', '1.884', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(2, '018692616055000', 'ARVICO ELECTRONICS INDONESIA', 1, 4, 'Kws Ind. JABABEKA I, Jl. JABABEKA XIV SFB BLOK J 12F, CIKARANG, BEKASI, JW BRT', 'Kws Ind. JABABEKA I, Jl. JABABEKA XIV SFB BLOK J 12F, CIKARANG, BEKASI, JW BRT', 5, '537/KMK.05/1999', '1999-11-12', '190/WBC.08/2015', '2015-12-01', '3000-12-31', 'Other Manufacturing', 'BANG MYUNG SOO', 'Korea Selatan', '1.580', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(3, '018692616055000', 'ARVICO ELECTRONICS INDONESIA', 2, 3, 'DI DALAM AREA KAWASAN BERIKAT PT ARVICO ELECTRONICS INDONESIA, KAWASAN INDUSTRI JABABEKA I, JALAN JABABEKA XIV, SFB BLOK J 12 F, CIKARANG, BEKASI, JAWA BARAT', 'DI DALAM AREA KAWASAN BERIKAT PT ARVICO ELECTRONICS INDONESIA, KAWASAN INDUSTRI JABABEKA I, JALAN JABABEKA XIV, SFB BLOK J 12 F, CIKARANG, BEKASI, JAWA BARAT', 6, '138/KMK.05/2000', '2000-02-03', '2020/KM.4/2015', '2015-10-02', '2018-04-14', 'Other Manufacturing', 'BANG MYUNG SOO', 'Korea Selatan', '600', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(4, '018245514055000', 'ASIANET SPRING INDONESIA', 1, 4, 'Kws Ind. JABABEKA, Jl. INDUSTRI KAWASAN JABABEKA TAHAP II BLOK RR 3D, 3E, Ds. PASIRSARI, LEMAHABANG, BEKASI, JW BRT', 'Kws Ind. JABABEKA, Jl. INDUSTRI KAWASAN JABABEKA TAHAP II BLOK RR 3D, 3E, Ds. PASIRSARI, LEMAHABANG, BEKASI, JW BRT', 5, '392/KMK.04/2002', '2002-08-30', '1503/KM.4/2012', '2012-05-11', '3000-12-31', 'Sampai Ijin Usaha dicabit', 'LEE CHIN CHIEH', 'Taiwan', '2.637', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(5, '020265682052000', 'ASTECH INDONESIA', 1, 4, 'Jl. JABABEKA RAYA BLOK C-18N, PASIR GOMBONG, LEMAHABANG, BEKASI, JW BRT', 'Jl. JABABEKA RAYA BLOK C-18N, PASIR GOMBONG, LEMAHABANG, BEKASI, JW BRT', 5, '430/KMK.4/2004', '2004-09-21', '1670/KM.4/2012', '2012-05-21', '2035-12-31', 'Other Manufacturing', 'HIRAKAWA HIROICHI', 'JEPANG', '1.272', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(6, '021989769414000', 'ATOZZ JAYA INDONESIA', 2, 3, 'Jl. JABABEKA III BLOK C-34, Kws Ind. JABABEKA, Ds. PASIRGOMBONG, Kec. CIKARANG SELATAN, KABUPATEN BEKASI, JW BRT', 'Jl. JABABEKA III BLOK C-34, Kws Ind. JABABEKA, Ds. PASIRGOMBONG, Kec. CIKARANG SELATAN, KABUPATEN BEKASI, JW BRT', 6, '911/KM.4/2017', '2017-04-27', '911/KM.4/2017', '2017-04-27', '3000-12-31', 'INDUSTRI KOMPONEN ELEKTRONIK', 'KWON YOUNG YEOL', 'KOREA', '2.208', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(7, '311859862414000', 'BUMJIN ELECTRONICS INDONESIA', 1, 4, 'Kws Ind. JABABEKA TAHAP 3, BLOK A5B, PASIR GOMBONG, CIKARANG UTARA, BEKASI, JW BRT 17530', 'Kws Ind. JABABEKA TAHAP 3, BLOK A5B, PASIR GOMBONG, CIKARANG UTARA, BEKASI, JW BRT 17530', 6, '1664/KMK.04/2010', '2010-08-27', '102/KM.8/2017', '2017-06-07', '3000-12-31', 'Other Manufacturing\n(Industri Barang plastik lainnya YTDL, industri peralatan perekam, penerima dan pengganda audio dan video, industri mesin dan perkakas mesin untuk pekerjaan logam, industri suku cadang dan aksesori kendaraan bermotor roda empat atau le', 'LEE YOUNG SUN', 'KOREA', '30.000', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(8, '018692541055000', 'BYUNG HWA INDONESIA I', 1, 4, 'Kws Ind. JABABEKA, Jl. JABABEKA VI, SFB BLOK J4A, Ds. HARJAMEKAR, CIBITUNG BEKASI, JW BRT', 'Kws Ind. JABABEKA, Jl. JABABEKA VI, SFB BLOK J4A, Ds. HARJAMEKAR, CIBITUNG BEKASI, JW BRT', 5, '452/KMK.05/1999', '1999-07-01', '1401/KM.4/2014', '2014-08-08', '2017-12-31', 'automotive &component', 'SON BYUNG WOOK', 'KOREA', '1.728', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(9, '018692541055000', 'BYUNG HWA INDONESIA II', 1, 4, 'Kawasan Industri Jababeka V, Jl. Science TImur 1 B.3/K, Sertajaya, Cikarang', 'Kawasan Industri Jababeka V, Jl. Science TImur 1 B.3/K, Sertajaya, Cikarang', 5, '902/KM.4/2016', '2016-05-18', '902/KM.4/2016', '2016-05-18', '3000-12-31', 'Automotive & Component', 'SON BYUNG WOOK', 'KOREA', '11.200', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(10, '020054169059000', 'CAPCOM', 2, 3, 'KAWASAN JABABEKA I, JALAN IX B BLOK P7 D, DESA WANGUNHARJA, KECAMATAN CIKARANG UTARA, JAWA BARAT', 'KAWASAN JABABEKA I', 6, '2162/KM.4/2013', '2013-10-30', '1845/KM.4/2016', '2016-09-27', '2019-10-18', 'Other Manufacturing', 'HENNY', 'Indonesia', '408', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(11, '018694950414001', 'CHON POONG INDONESIA', 1, 4, 'Jl. JABABEKA II G BLOK C 16 Q, Kws Ind. JABABEKA, KELURAHAN PASIR GOMBONG, Kec. CIKARANG UTARA, BEKASI, JW BRT', 'Jl. JABABEKA II G BLOK C 16 Q, Kws Ind. JABABEKA, KELURAHAN PASIR GOMBONG, Kec. CIKARANG UTARA, BEKASI, JW BRT', 5, '1962/KM.4/2017', '2017-08-18', 'KEP-66/WBC.08/KPP.MP.07/2017', '2017-06-12', '3000-12-31', 'Other manufacturing', 'LEE KANG JAE', 'Korea', '2.978', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(12, '312453277414000', 'CRAZE INDONESIA', 1, 4, 'JABABEKA TECHNOPARK / JABABEKA TAHAP III, Ds. BLOK D 3 G, Ds. PASIR GOMBONG, Kec. CIKARANG UTARA, BEKASI, JW BRT', 'JABABEKA TECHNOPARK / JABABEKA TAHAP III, Ds. BLOK D 3 G, Ds. PASIR GOMBONG, Kec. CIKARANG UTARA, BEKASI, JW BRT', 5, '662/ KM.4/ 2011', '2011-04-08', '1213/ KM.41/ 2012', '2012-04-24', '3000-12-31', 'Industri Alat Pancing dan Barang/peralatan Teknik dari plastic, Suku cadang dan aksesories kendaraan bermotor', 'ISHIHARA TAKAHIRO', 'Jepang', '2.523', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(13, '018687103055000', 'DAE HWA INDONESIA', 2, 3, 'Kws Ind. JABABEKA, Jl. JABABEKA II TOB BLOK CC-21, CIKARANG, BEKASI, JW BRT', 'Kws Ind. JABABEKA, Jl. JABABEKA II TOB BLOK CC-21, CIKARANG, BEKASI, JW BRT', 6, '1236/KM.04/2012', '2012-04-25', '1039/KM.4/2017', '2017-05-15', '2018-04-24', 'GB Pendukung kegiatan Industri', 'YOO YONG SUN', 'Indonesia', '20', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(14, '018687103055000', 'DAE HWA INDONESIA', 1, 4, 'KAWASAN BERIKAT PT DAE HWA INDONESIA, CIKARANG INDUSTRIAL ESTATE II, JALAN INDUSTRI UTARA 4 BLOK SS-6B, DESA MEKAR MUKTI, KECAMATAN LEMAHABANG, BEKASI, JAWA BARAT', 'KAWASAN BERIKAT PT DAE HWA INDONESIA, CIKARANG INDUSTRIAL ESTATE II, JALAN INDUSTRI UTARA 4 BLOK SS-6B, DESA MEKAR MUKTI, KECAMATAN LEMAHABANG, BEKASI, JAWA BARAT', 6, '172/KMK.04/2001', '2001-04-06', '79/WBC.08/2016', '2016-03-28', '3000-12-31', 'Other Manufacturing', 'YOO YONG SUN', 'Indonesia', '5.400', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(15, '314134370414000', 'DAE MYUNG HIGHNESS INDONESIA', 1, 4, 'Kws Ind. JABABEKA I, Jl. JABABEKA II E BLOK C NO. 16 D-E, PASIR GOMBONG, CIKARANG UTARA, BEKASI, JW BRT', 'Kws Ind. JABABEKA I, Jl. JABABEKA II E BLOK C NO. 16 D-E, PASIR GOMBONG, CIKARANG UTARA, BEKASI, JW BRT', 7, '1445/KM.4/2012', '2012-05-08', '1445/KM.4/2012', '2012-05-08', '3000-12-31', 'Electrical Equipment', 'KIM JONG MIN', 'KOREA', '1.848', 'N', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(16, '211139860414000', 'DAEHYUN BOBBIN INDONESIA', 1, 4, 'Kws Ind. JABABEKA I, Jl. INDUSTRI JABABEKA BLOK C, NO. 17P, PASIR GOMBONG, CIKARANG UTARA, BEKASI, JW BRT', 'Kws Ind. JABABEKA I, Jl. INDUSTRI JABABEKA BLOK C, NO. 17P, PASIR GOMBONG, CIKARANG UTARA, BEKASI, JW BRT', 5, '50/KM.4/2010', '2010-01-13', '769/KM.4/2012', '2012-02-04', '3000-12-31', 'Industri Komponen Eektronika', 'LEE YOUNG HA', 'Korea', '1.092', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(17, '010692572055000', 'DAELIM INDONESIA', 1, 4, 'Kws Ind. JABABEKA, Jl. JABABEKA RAYA BLOK E NO.  6-8, CIBITUNG, BEKASI, JW BRT', 'Kws Ind. JABABEKA, Jl. JABABEKA RAYA BLOK E NO.  6-8, CIBITUNG, BEKASI, JW BRT', 5, '91/KMK.05/1999', '1999-03-08', '652/KM.4/2012', '2012-03-22', '2022-06-30', 'INDUSTRI BARANG DARI LOGAM (BESI, BAJA, ALUMINIUM DLL)', 'LEE JOON HA', 'KOREA', '33.760', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(18, '022735005073000', 'DALZON CHEMICALS INDONESIA', 2, 3, 'RUKO CEMPAKA MAS BLOK K NO. 22, SUMUR BATU, KEMAYORAN, JAKARTA PUSAT 10640', 'JALAN RAYA TEGAL GEDE, BANGKOREANG, DESA WANGUN HARJA, KECAMATAN CIKARANG, BEKASI, JAWA BARAT', 6, '480/KM.4/2016', '2016-03-17', '480/KM.4/2016', '2016-03-17', '3000-12-31', 'Chemical & Chemical Product', 'DARYANTO WIJAYA', 'Indonesia', '553,18', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(19, '018696328414000', 'DAWEE CNC INDONESIA', 1, 4, 'ALAN JABABEKA XVII BLOK U-20 D, Kws Ind. JABABEKA I, HARJA MEKAR, Kec. CIKARANG UTARA, BEKASI, JW BRT', 'ALAN JABABEKA XVII BLOK U-20 D, Kws Ind. JABABEKA I, HARJA MEKAR, Kec. CIKARANG UTARA, BEKASI, JW BRT', 5, '170/KMK.04/2005', '0000-00-00', '1621/KM.4/2012', '2012-05-16', '2034-12-31', 'Computer and Electronic', 'MR. LEE JONG KEUN', 'KOREA', '1.830', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(20, '021080924055000', 'DAWEE ELECTRONIC INDONESIA', 1, 4, 'Jl. JABABEKA XVI BLOK U 3C, Kws Ind. JABABEKA, CIKARANG, BEKASI, JW BRT', 'Jl. JABABEKA XVI BLOK U 3C, Kws Ind. JABABEKA, CIKARANG, BEKASI, JW BRT', 5, '378/KMK.04/2002', '2002-08-13', '03/WBC.08/KPP.MP.01/2013', '2013-01-04', '3000-12-31', 'Computer and Electronic', 'MR. LEE JONG KEUN', 'KOREA', '20.000', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(21, '016506891414000', 'DINAR MAKMUR CIKARANG', 1, 4, 'Jl. JABABEKA V BLOK I-2 CIKARANG, PASIR GOMBONG, LEMAH ABANG, BEKASI, JW BRT', 'Jl. PALMERAH NO. 71, JAKARTA', 5, '535/KMK.05/1994', '1994-10-24', '899/KM.4/2015', '2015-04-24', '3000-12-31', 'Other Manufacturing', 'ICHWAN HARTONO', 'Indonesia', '11', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(22, '010715811055000', 'DMC TEKNOLOGI INDONESIA', 1, 4, 'JABABEKA INDUSTRIAL ESTATE, JL INDUSTRI UTAMA BLOK RR-7, CIKARANG, BEKASI DAN JABABEKA INDUSTRIAL ESTATE, JL INDUSTRI UTAMA BLOK RR-3H, CIKARANG, BEKASI', 'JABABEKA INDUSTRIAL ESTATE, JL INDUSTRI UTAMA BLOK RR-7, CIKARANG, BEKASI DAN JABABEKA INDUSTRIAL ESTATE, JL INDUSTRI UTAMA BLOK RR-3H, CIKARANG, BEKASI', 5, '62/KMK.04/2003', '2003-02-10', '132/WBC.08/2013', '2013-07-30', '2027-01-31', 'Electrical Equipment', 'MASAAKI YAGIHASHI', 'Jepang', '7.671', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(23, '018693499055000', 'DONG SAN IND. / IND. PLASTIC ENGINEERING', 1, 4, 'CIKARANG INDUSTRIAL ESTATE, Jl. JABABEKA III G BLOK C-17 AS, CIKARANG, BEKASI, JW BRT-17550', 'CIKARANG INDUSTRIAL ESTATE, Jl. JABABEKA III G BLOK C-17 AS, CIKARANG, BEKASI, JW BRT-17550', 6, '100/KMK.04/2001', '2001-02-28', '105/WBC.08/2016', '2016-06-03', '2031-02-28', 'Plastic Product', 'KIM JAE HO', 'Korea', '1.748', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(24, '018692624055000', 'DOO WON PRECISION INDONESIA', 1, 4, 'Kws Ind. JABABEKA, Jl. JABABEKA IV, SFB BLOK C2E-C2D, CIKARANG, BEKASI, JW BRT', 'Kws Ind. JABABEKA, Jl. JABABEKA IV, SFB BLOK C2E-C2D, CIKARANG, BEKASI, JW BRT', 5, '20/KM.05/2000', '2000-01-26', '1347/KM.4/2012', '2017-05-02', '3000-12-31', 'Other Manufacturing', 'KIM JOO WON', 'KOREA', '3.448', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(25, '313507089413000', 'EBARA ELECTRIC WIRE INDONESIA', 1, 4, 'Jl. INDUSTRI SELATAN 8, BLOK EE 8F, Kws Ind. JABABEKA II, KELURAHAN PASIR SARI, Kec. CIKARANG SELATAN, KABUPATEN BEKASI, JW BRT', 'Jl. INDUSTRI SELATAN 8, BLOK EE 8F, Kws Ind. JABABEKA II, KELURAHAN PASIR SARI, Kec. CIKARANG SELATAN, KABUPATEN BEKASI, JW BRT', 5, '8/KM.4/2012', '2012-01-02', '3009/KM.4/2014', '2014-12-18', '3000-12-31', 'Electrical Equipment', 'RAHMAD ABDUL KODER', 'Indonesia', '2.451', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(26, '018696740413000', 'ELECTRON PARTS TECHNOLOGY INDONESIA', 1, 4, 'Jl. INDUSTRI SELATAN BLOK HH NOMOR 5, Kws Ind. JABABEKA, CIKARANG SELATAN, BEKASI, JW BRT', 'Jl. INDUSTRI SELATAN BLOK HH NOMOR 5, Kws Ind. JABABEKA, CIKARANG SELATAN, BEKASI, JW BRT', 5, '468/KMK.04/2005', '2005-10-05', '114/WBC.08/2012', '2012-10-17', '3000-12-31', 'ELECTRICAL EQUIPMENT', 'JU YOUNG MIN', 'KOREA', '576', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(27, '313305526414000', 'ENPLAS INDONESIA', 1, 4, 'Kws Ind. JABABEKA TAHAP III, Jl. TEKNO BOULEVARD BLOK B 6F, PASIRGOMBONG, CIKARANG UTARA, BEKASI, JW BRT', 'KAWASAN IDNUSTRI JABABEKA TAHAP III, Jl. TEKNO BOULEVARD BLOK B 6F, PASIRGOMBONG, CIKARANG UTARA, BEKASI, JW BRT', 5, '2900/KM.4/2011', '2011-11-09', '2638/KM.4/2014', '2014-12-24', '2014-10-22', 'Manufacturing', 'MR YOSHIHIKO SATO', 'JEPANG', '4.463', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(28, '018829234052000', 'EPS INDONESIA', 1, 4, 'Jl. INDUSTRI RT. 03 RW. 03, Ds. KARANG BARU, Kec. CIKARANG UTARA, KABUPATEN BEKASI, JW BRT', 'Jl. INDUSTRI RT. 03 RW. 03, Ds. KARANG BARU, Kec. CIKARANG UTARA, KABUPATEN BEKASI, JW BRT', 6, '527/KMK.04/2005', '2005-11-11', '2634/KM.4/2014', '2014-11-21', '2017-12-31', 'Manufacturing', 'BAMBANG WIRJAWAN SOENDORO', 'Indonesia', '6.128', 'Y', 9, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(29, '018694083055000', 'EUN SUNG INDONESIA', 1, 4, 'Kws Ind. JABABEKA III, BLOK B 6-B, Ds. PASIR GOMBONG, Kec. CIKARANG UTARA, BEKASI, JW BRT', 'Kws Ind. JABABEKA III, BLOK B 6-B, Ds. PASIR GOMBONG, Kec. CIKARANG UTARA, BEKASI, JW BRT', 5, '1167/KM.4/2011', '2011-06-01', '1017/KM.4/2012', '2012-04-13', '2031-09-30', 'INDUSTRI KOMPONEN ELEKTRONIK', 'KIM YOUNG YOON', 'KOREA', '2.052', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(30, '017621806414001', 'FANINDO CHIPTRONIC', 2, 3, 'KAWASAN INDUSTRI JABABEKA III, JALAN TECHNO I BLOK C2B, DESA PASIR GOMBONG, KECAMATAN CIKARANG UTARA, KABUPATEN BEKASI, JAWA BARAT', 'KAWASAN INDUSTRI JABABEKA III, J123750ALAN TECHNO I BLOK C2B, DESA PASIR GOMBONG, KECAMATAN CIKARANG UTARA, KABUPATEN BEKASI, JAWA BARAT', 6, '693/KM.4/2011', '2011-04-13', '2618/KM.4/2016', '2016-12-19', '2020-01-24', 'Other Manufactur', 'USMAN FAN', 'Indonesia', '349,7', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(31, '010718773055000', 'FEELUX INDONESIA', 2, 3, 'Jl. JABABEKA RAYA BLOK F-34 CIKARANG INDUSTRIAL ESTATE, BEKASI, JW BRT', 'KAWASAN BERIKAT PT ANSER, JALAN JABABEKA RAYA BLOK F-34, CIKARANG INDUSTRIAL ESTATE, CIKARANG, BEKASI, JAWA BARAT', 6, '301/KM.4/2002', '2002-03-13', '1336/KM.4/2016', '2016-07-19', '2018-05-21', 'Other Manufacturing', 'MR. JIN YONGHUI', 'Korea', '377', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(32, '010718773055000', 'FEELUX INDONESIA', 1, 4, 'Jl. JABABEKA RAYA BLOK F-34 CIKARANG INDUSTRIAL ESTATE, BEKASI, JW BRT', 'Jl. JABABEKA RAYA BLOK F-34 CIKARANG INDUSTRI ESTATE, BEKASI, JW BRT', 5, '333/KM4.05/1997', '1997-07-21', '1674/KM.4/2012', '2012-05-21', '2027-07-21', 'Other Manufacturing', 'MR. JIN YONGHUI', 'Korea', '5.753', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(33, '010717593055000', 'FRIGOGLASS INDONESIA', 1, 4, 'Kws Ind. JABABEKA I, Jl. JABABEKA VIBLOK P NOMOR 1, Ds. WANGUNHARJA, Kec. CIKARANG UTARA, BEKASI, JW BRT 17530', 'Kws Ind. JABABEKA I, Jl. JABABEKA VIBLOK P NOMOR 1, Ds. WANGUNHARJA, Kec. CIKARANG UTARA, BEKASI, JW BRT 17530', 5, '761/KM.4/2008', '2008-04-08', '1392/KM.4/2012', '2012-05-04', '2027-06-30', 'Other Manufacturing', 'IR ARMYN RIZAL HARAHAP', 'Indonesia', '29.910', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(34, '018693093055000', 'FUJI SEIMITSU INDONESIA', 1, 4, 'Kws Ind. JABABEKA, Jl. INDUSTRI UTAMA BLOK RR 10, CIKARANG, BEKASI, JW BRT', 'Kws Ind. JABABEKA, Jl. INDUSTRI UTAMA BLOK RR 10, CIKARANG, BEKASI, JW BRT', 5, '425/KMK.05/2000', '2000-10-16', '116/WBC.08/2017', '2017-07-24', '3000-12-31', 'Automotive & Component', 'SAKAMOTO YUKI', 'WARGA NEGARA ASING', '4.275', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(35, '023848211414000', 'G & B INDONESIA', 1, 4, 'Kws Ind. JABABEKA III BLOK B 2-1, PASIR GOMBONG, CIKARANG UTARA, BEKASI, JW BRT', 'Kws Ind. JABABEKA III BLOK B 2-1, PASIR GOMBONG, CIKARANG UTARA, BEKASI, JW BRT', 5, '694/KM.4/2011', '2011-04-13', '1654/KM.4/2012', '2012-05-21', '3000-12-31', 'Musical Instrument', 'BOK RAE KIM', 'KOREA', '864', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(36, '025198185055000', 'GAYA STEEL', 2, 3, 'JALAN SAMSUNG I BLOK B-10 UKM CENTRE SEGITIGA EMAS, LEMAHABANG, CIKARANG, BEKASI, JAWA BARAT', 'JALAN SAMSUNG I BLOK B-10 UKM CENTRE SEGITIGA EMAS, LEMAHABANG, CIKARANG, BEKASI, JAWA BARAT', 6, '1924/KMK.04/2009', '2009-08-20', '1584/KM.4/2015', '2015-07-24', '2018-07-23', 'Other Manufacturing', 'KANG HEE JONG', 'Korea', '108', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(37, '015047608414000', 'GRAFITECINDO CIPTAPRIMA', 1, 4, 'Kws Ind. JABABEKA, Jl. JABABEKA XVII BLOK V KAV. 92-93, Ds. KARANG BARU, Kec. CIKARANG UTARA, KABUPATEN BEKASI, JW BRT', 'Kws Ind. JABABEKA, Jl. JABABEKA XVII BLOK V KAV. 92-93, Ds. KARANG BARU, Kec. CIKARANG UTARA, KABUPATEN BEKASI, JW BRT', 5, '254/KMK.05/1995', '1995-06-06', '317/KM.4/2015', '2015-05-02', '3000-12-31', 'PAPER & PAPER PRODUCT', 'RUDY GHOZALI', 'INDONESIA', '10.248', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(38, '024144446414000', 'IINO INDONESIA', 2, 3, 'KAWASAN INDUSTRI JABABEKA INNOVATION CENTER, JALAN SAMSUNG 2A BLOK C-2C MEKAR MUKTI, CIKARANG UTARA, JAWA BARAT', 'KAWASAN INDUSTRI JABABEKA INNOVATION CENTER, JALAN SAMSUNG 2A BLOK C-2C MEKAR MUKTI, CIKARANG UTARA, JAWA BARAT', 7, '1482/KM.4/2017 ', '2017-07-03', '1482/KM.4/2017 ', '2017-07-03', '2020-02-28', 'Other Manufactur', 'SEKIGUCHI SUMIO', 'JEPANG', '920', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(39, '018692350055000', 'IK PRECISION INDONESIA', 1, 4, 'KAWASAN. INDUSTRI CIKARANG, Jl. JABABEKA XVII F SFB BLOK U 23 C, D, CIKARANG, BEKASI, JW BRT', 'KAWASAN. INDUSTRI CIKARANG, Jl. JABABEKA XVII F SFB BLOK U 23 C, D, CIKARANG, BEKASI, JW BRT', 5, '319/KMK.05/1999', '1999-06-18', '53/WBC.08/2013', '2013-03-21', '2029-05-31', 'Other Manufacturing', 'KIYOTAKE FUJIMORI', 'JEPANG', '6', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(40, '018825851052000', 'ILSAM GLOBAL INDONESIA', 1, 4, 'Kws Ind. JABABEKA II BLOK RR NO. 3 C PASIRSARI LEMAHABANG BEKASI, JW BRT', 'Kws Ind. JABABEKA II BLOK RR NO. 3 C PASIRSARI LEMAHABANG BEKASI, JW BRT', 5, '452/KMK.04/2005', '2005-09-21', '482/KM.4/2012', '2012-03-08', '3000-12-31', 'Chemical & Chemical Product', 'KIM JONG HOON', 'Korea', '2.420', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(41, '744058462016000', 'INDO SULTAN', 1, 4, 'Jl. Jababeka XVI Blok W 28, Kawasan Industri Jababeka I, Desa Harjamekar, Cikarang Utara', 'Jl. Jababeka XVI Blok W 28, Kawasan Industri Jababeka I, Desa Harjamekar, Cikarang Utara', 7, '1721/KM.4/2017', '2017-07-26', '1721/KM.4/2017', '2017-07-26', '3000-12-31', 'Other Manufactur', 'AHMED SULTAN', 'Pakistan', '15.175', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(42, '025592593414000', 'INNO TECH INDONESIA', 1, 4, 'Kws Ind. JABABEKA I, Jl. JABABEKA III H BLOK C-17F,', 'Kws Ind. JABABEKA I, Jl. JABABEKA III H BLOK C-17F,', 5, '2124/KM.4/2007', '2007-09-06', 'KEP-69/WBC.08/KPP.MP.01/2013', '2013-04-18', '3000-12-31', 'Other manufacturing', 'HA SANG SOO', 'Korea', '864', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(43, '020266748052000', 'IRE TECH', 1, 4, 'Kws Ind. JABABEKA, Jl. INDUSTRI SELATAN 4, BLOK GG NOMOR 3G, Ds. PASIRSARI, Kec. CIKARANG SELATAN, BEKASI, JW BRT', 'Kws Ind. JABABEKA, Jl. INDUSTRI SELATAN 4, BLOK GG NOMOR 3G, Ds. PASIRSARI, Kec. CIKARANG SELATAN, BEKASI, JW BRT', 5, '192/KM.4/2011', '2011-02-01', '117/WBC.08/2017', '2017-07-24', '3000-12-31', 'INDUSTRI KOMPONEN ELEKTRONIC', 'LEE BYUNG KYU', 'Korea', '2', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(44, '020267134052000', 'K & D ELECTRONICS INDONESIA', 1, 4, 'Jl. INDUSTRI SELATAN I, BLOK PP 2 D, Kws Ind. JABABEKA, KELURAHAN PASIRSARI, Kec. CIKARANG SELATAN, KABUPATEN BEKASI, JW BRT 17550', 'Jl. INDUSTRI SELATAN I, BLOK PP 2 D, Kws Ind. JABABEKA, KELURAHAN PASIRSARI, Kec. CIKARANG SELATAN, KABUPATEN BEKASI, JW BRT 17550', 5, '1802/KM.4/2012', '2012-05-23', '1802/KM.4/2012', '2012-05-23', '3000-12-31', 'Other Manufacturing', 'SATOSHI ABE', 'Jepang', '576', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(45, '025198615055000', 'KEO SAN INDONESIA', 1, 4, 'Jl. INDUSTRI SELATAN V BLOEE-5C, SFB, Kws Ind. JABABEKA II, CIKARANG, BEKASI, JW BRT', 'Jl. INDUSTRI SELATAN V BLOEE-5C, SFB, Kws Ind. JABABEKA II, CIKARANG, BEKASI, JW BRT', 5, '1086/KM.4/2008', '2008-05-15', '14/WBC.08/2012', '2012-11-21', '3000-12-31', 'Other Manufacturing', 'NO GOO TACK', 'KOREA', '1.000', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(46, '018695957055000', 'KEUM SU TECH', 1, 4, 'Kws Ind. JABABEKA, Jl. JABABEKA XIA BLOK K 7 D, KELURAHAN HARJA MEKAR, Kec. CIKARANG UTARA, BEKASI, JW BRT', 'Kws Ind. JABABEKA, Jl. JABABEKA XIA BLOK K 7 D, KELURAHAN HARJA MEKAR, Kec. CIKARANG UTARA, BEKASI, JW BRT', 5, '70/KMK.04/2005', '2005-01-17', '2107/KM04/2012', '2012-03-26', '3000-12-31', 'Other Manufacturing', 'SEON HONG KYU', 'Korea Selatan', '854', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(47, '018696591055000', 'KGEO ELECTRONICS INDONESIA', 1, 4, 'Kws Ind. JABABEKA, Jl. INDUSTRI SELATAN BLOK LL 4-5, Ds. PASIR SARI, Kec. CIKARANG UTARA, BEKASI, JW BRT', 'Jl. JABABEKA RAYA BLOK R1 M-N, KWSN INDUSTRI JABABEKA, CIKARANG, BEKASI, JABAR', 7, '1833/KM.4/2012', '2012-05-24', '1833/KM.4/2012', '2012-05-24', '3000-12-31', 'Electrical Equipment', 'JEONG JAEHWAN', 'KOREA', '9.460', 'N', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(48, '211367164414000', 'KOFORM INDONESIA', 1, 4, 'DI Kws Ind. JABABEKA I, Jl. JABABEKA IV E BLOK V NO. 78-I, Kec. CIKARANG SELATAN, KABUPATEN BEKASI, JW BRT', 'DI Kws Ind. JABABEKA I, Jl. JABABEKA IV E BLOK V NO. 78-I, Kec. CIKARANG SELATAN, KABUPATEN BEKASI, JW BRT', 5, '1779/KM.4/2014', '2014-09-17', '1779/KM.4/2014', '2014-09-17', '3000-12-31', 'Plastic Product', 'YOUNG SUK SEO', 'KOREA', '2.520', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(49, '023217235414000', 'KORRYO INDUSTRY', 1, 4, 'Kws Ind. JABABEKA II, Jl. JABABEKA BLOK CC-26, PASIR GOMBONG, CIKARANG UTARA, BEKASI, JW BRT', 'Kws Ind. JABABEKA II, Jl. JABABEKA BLOK CC-26, PASIR GOMBONG, CIKARANG UTARA, BEKASI, JW BRT', 5, '489/KMK.04/2003', '2003-10-30', '1024/KM.4/2012', '2012-04-13', '3000-12-31', 'INDUSTRI KOMPONEN ELEKTRONIC', 'SEO YOUNG SUK', 'Korea', '984', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(50, '018693085055000', 'KOSTEC INDONESIA', 1, 4, 'Jl. JABABEKA XI SFB BLOK K NOMOR 4-D, Kws Ind. JABABEKA I, Ds. HARJA MEKAR, Kec. CIKARANG UTARA, BEKASI, JW BRT', 'Jl. JABABEKA XI SFB BLOK K NOMOR 4-D, Kws Ind. JABABEKA I, Ds. HARJA MEKAR, Kec. CIKARANG UTARA, BEKASI, JW BRT', 5, '287/KMK.05/2000', '2000-07-13', '65/WBC.08/2016', '2016-03-29', '2020-03-28', 'Other Manufacturing', 'JHONG YOUNG KYU', 'KOREA', '1.740', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(51, '010714087055000', 'KWANG SUNG ELECTRONICS', 1, 4, 'Kawasan Industri Jababeka II, Jl. Industri Selatan I Blok OO No. 1E RT 001/ RW 001 Pasirsari, Cikarang Selatan', 'Kawasan Industri Jababeka II, Jl. Industri Selatan I Blok OO No. 1E RT 001/ RW 001 Pasirsari, Cikarang Selatan', 5, '300/KM.4/2017', '2017-02-07', '300/KM.4/2017', '2017-02-07', '3000-12-31', 'Other Manufacturing', 'SONG JAE YOUNG', 'Korea Selatan', '576', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(52, '313191983414000', 'KYOEI DENKI TRADING INDONESIA', 2, 3, 'CIKARANG INDUSTRIAL ESTATE, JALAN JABABEKA II BLOK C NO 18 P, PASIR GOMBONG, LEMAHABANG, BEKASI, JAWA BARAT', 'CIKARANG INDUSTRIAL ESTATE, JALAN JABABEKA II BLOK C NO 18 P, PASIR GOMBONG, LEMAHABANG, BEKASI, JAWA BARAT', 6, '1242/KM.4/2015', '2015-06-11', '2038/KM.4/2017', '2017-08-24', '2018-06-04', 'TRADING', 'CHIHARU MUKAI', 'JAPAN', '1152/462', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(53, '312241987413000', 'LIMANTARA INDAH MAKMUR', 1, 4, 'Jl. FATAHILLAH NO. 8, KM. 50,1, Ds. KALI JAYA RT.003 RW.004, Kec. CIKARANG BARAT, KABUPATEN BEKASI 17520', 'Jl. FATAHILLAH NO. 8, KM. 50,1, Ds. KALI JAYA RT.003 RW.004, Kec. CIKARANG BARAT, KABUPATEN BEKASI 17520', 6, '2652/KM.4/2011', '2011-11-22', '1984/KM.4/2014', '2014-10-02', '2017-11-03', 'Tekstil', 'KIM YONG MAN', 'KOREA', '15.352', 'Y', 9, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(54, '018244871414000', 'MALUGO INDONESIA', 1, 4, 'Kws Ind. JABABEKA II TOB BLOK 00 NO.3B, PASIR GEMBONG, LEMAHABANG, BEKASI, JW BRT', 'Kws Ind. JABABEKA II TOB BLOK 00 NO.3B, PASIR GEMBONG, LEMAHABANG, BEKASI, JW BRT', 5, '206/KMK.05/1998', '1998-04-08', '1206/KM.4/2012', '2012-04-24', '2028-08-31', 'Other Manufacturing', 'SRI SUNARSIH', 'Indonesia', '576', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(55, '018244871414000', 'MALUGO INDONESIA', 2, 3, 'DI DALAM KAWASAN BERIKAT PT MALUGO INDONESIA ( LANTAI 2 ) KAWASAN INDUSTRI JABABEKA II TOB BLOK OO NOMOR 3B, KELURAHAN PASIR GOMBONG, KECAMATAN LEMAHABANG, BEKASI, JAWA BARAT', 'DI DALAM KAWASAN BERIKAT PT MALUGO INDONESIA ( LANTAI 2 ) KAWASAN INDUSTRI JABABEKA II TOB BLOK OO NOMOR 3B, KELURAHAN PASIR GOMBONG, KECAMATAN LEMAHABANG, BEKASI, JAWA BARAT', 6, '1415/KM.4/2003', '2003-08-26', '958/KM.4/2016', '2016-05-24', '2018-04-03', 'Other Manufacturing', 'SRI SUNARSIH', 'Indonesia', '24', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(56, '010695054052000', 'MATTEL INDONESIA', 1, 4, 'Kws Ind. JABABEKA, BLOK SS 1, 2, 3 CIKARANG, BEKASI, JW BRT', 'Kws Ind. JABABEKA, BLOK SS 1, 2, 3 CIKARANG, BEKASI, JW BRT', 5, '70/KMK.05/1997', '1997-02-12', '113/WBC.08/2017', '2017-07-07', '2022-07-31', 'Toys', 'ROY A TANDEAN', 'Indonesia', '88.121', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(57, '010695054052000', 'MATTEL INDONESIA', 1, 4, 'Jl. JABABEKAN V BLOK G 4-6, Kws Ind. JABABEKA, Ds. HARJA MEKAR, Kec. CIKARANG UTARA, KABUPATEN BEKASI, JW BRT', 'KJl. JABABEKAN V BLOK G 4-6, Kws Ind. JABABEKA, Ds. HARJA MEKAR, Kec. CIKARANG UTARA, KABUPATEN BEKASI, JW BRT', 5, '18/KMK.05/1994', '1994-01-14', '220/WBC.08/2016', '2016-11-28', '2022-07-31', 'Toys', 'ROY A TANDEAN', 'Indonesia', '37.539', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(58, '010695054052000', 'MATTEL INDONESIA', 1, 4, 'DI KAWASAN BERIKAT PT MATTEL INDONESIA II, Jl. INDUSTRI UTAMA BLOK SS KAV. 1, 2, 3, Kws Ind. CIKARANG TAHAP II, BEKASI, JW BRT', 'DI KAWASAN BERIKAT PT MATTEL INDONESIA II, Jl. INDUSTRI UTAMA BLOK SS KAV. 1, 2, 3, Kws Ind. CIKARANG TAHAP II, BEKASI, JW BRT', 5, 'S-873/BC/1998', '1998-10-27', '622/KM.4/2015', '2015-03-20', '2022-07-31', 'Other Manufacturing', 'ROY A TANDEAN', 'Indonesia', '1.150', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(59, '010816213414000', 'MEIJI RUBBER INDONESIA', 1, 4, 'CIKARANG INDUSTRIAL ESTATE, Jl. JABABEKA SFB BLOK C NO. 14 H, Ds. PASIR GOMBONG, Kec. LEMAHABANG, BEKASI, JW BRT', 'CIKARANG INDUSTRIAL ESTATE, Jl. JABABEKA SFB BLOK C NO. 14 H, Ds. PASIR GOMBONG, Kec. LEMAHABANG, BEKASI, JW BRT', 5, '638/KM.5/2000', '2000-04-18', '69/WBC.08/2017', '2017-05-05', '2017-12-31', 'RUBBER', 'TOSHIHIRO OKADA', 'JAPAN', '3.288', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(60, '020267514056000', 'MIRAE TECH INDONESIA', 2, 3, 'JALAN JABABEKA III BLOK C 45 A, KAWASAN INDUSTRI JABABEKA, DESA PASIR SARI, CIKARANG UTARA, BEKASI', 'JALAN JABABEKA III BLOK C 45 A, KAWASAN INDUSTRI JABABEKA, DESA PASIR SARI, CIKARANG UTARA, BEKASI', 6, '1887/KM.4/2008', '2008-08-21', '991/KM.4/2015', '2015-05-07', '2018-01-31', 'Plastic Product', 'LEE YOUNG WOOK', 'KOREA', '80', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(61, '010716298055000', 'MITSUYOSHI MANUFACTURING INDONESIA', 1, 4, 'DI Kws Ind. JABABEKA, SFB BLOK V 86 A-B, CIKARANG, BEKASI, JW BRT', 'DI Kws Ind. JABABEKA, SFB BLOK V 86 A-B, CIKARANG, BEKASI, JW BRT', 5, '634/kmk.05/1996', '1996-11-08', 'KEP-190/WBC.08/KPP.MP.01/2013', '2013-12-04', '3000-12-31', 'Other Manufacturing', 'KIMURA MASARU', 'Jepang', '4.703', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(62, '010720100055000', 'MMC METAL FABRICATION', 1, 4, 'CIKARANG INDUSTRIAL ESTATE, Jl. JABABEKA XII BLOK W NO.26, CIKARANG, BEKASI, JW BRT', 'CIKARANG INDUSTRIAL ESTATE, Jl. JABABEKA XII BLOK W NO.26, CIKARANG, BEKASI, JW BRT', 5, '652/KMK.05/1997', '1997-12-29', '1658/KM.4/2012', '1933-08-31', '3000-12-31', 'Machinery & Equipment', 'RIVALDI HARAHAP', 'Indonesia', '15.117', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(63, '018695213055000', 'MTEK INTERNATIONAL INDONESIA', 2, 3, 'JALAN INDUSTRI SELATAN 1A BLOK NN 3C, KAWASAN INDUSTRI JABABEKA II, CIKARANG SELATAN, BEKASI, JAWA BARAT', 'JALAN INDUSTRI SELATAN 1A BLOK NN 3C, KAWASAN INDUSTRI JABABEKA II, CIKARANG SELATAN, BEKASI, JAWA BARAT', 6, '749/KM.4/2016', '2016-04-21', '1811/KM.4/2016', '2016-09-22', '2019-04-21', 'INDUSTRI KOMPONEN ELEKTRONIK', 'LEE KUGJONG', 'KOREA', '1.092', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(64, '013301320054000', 'MULTI STRADA ARAH SARANA', 1, 4, 'KAWASAN PERUNTUKAN INDUSTRI, Jl. RAYA LEMAHABANG KM 58,3 Ds. KARANGSARI, Kec. KEDUNGWARINGIN, KABUPATEN BEKASI, JW BRT', 'KAWASAN PERUNTUKAN INDUSTRI, Jl. RAYA LEMAHABANG KM 58,3 Ds. KARANGSARI, Kec. KEDUNGWARINGIN, KABUPATEN BEKASI, JW BRT', 5, '22/KMK.05/2000', '2000-01-27', '1678/KM.4/2017', '2017-07-20', '2020-11-01', 'Rubber Product', 'PIETER TANURI', 'Indonesia', '542.995', 'Y', 9, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(65, '021159728056000', 'NOBLE CHEM INDONESIA', 2, 3, 'JALAN JABABEKA II, TOB C 16 H, DESA PASIR GOMBONG, KECAMATAN CIKARANG UTARA, BEKASI, JAWA BARAT', 'JALAN JABABEKA II, TOB C 16 H, DESA PASIR GOMBONG, KECAMATAN CIKARANG UTARA, BEKASI, JAWA BARAT', 6, '507/KM.04/2003', '2003-03-24', '1017/KM.4/2017', '2017-05-15', '2018-03-13', 'Other Manufacturing', 'YU HEUNG SIK', 'KOREA', '336 M', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(66, '016110249414000', 'PELANGI CIMANDIRI TEXTILE', 1, 4, 'Jl. JABABEKA VI CIKARANG INDUSTRIAL ESTATE BLOK W NO. 1 & 2, BEKASI, JW BRT', 'Jl. JABABEKA VI CIKARANG IBDUSTRIAL ESTATE BLOK W NO. 1 & 2, BEKASI, JW BRT', 7, '22/KMK.05/1993', '1993-07-17', 'KEP-49/WBC.08/KPP.MP.07/2016', '2016-04-27', '3000-12-31', 'Tekstil', 'ARIEF GUNAWAN', 'Indonesia', '20.969', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(67, '317388270414000', 'PLATECH INDONESIA', 1, 4, 'Jl. JABABEBKA XIV BLOK J NO 11G Ds. HARJAMEKAR Kec. CIKARANG UTARA KABUPATEN BEKASI JW BRT', 'Jl. JABABEBKA XIV BLOK J NO 11G Ds. HARJAMEKAR Kec. CIKARANG UTARA KABUPATEN BEKASI JW BRT', 5, '605/KM.4/2014', '2014-04-08', '605/KM.4/2014', '2014-04-08', '3000-12-31', 'Rubber and Plastic Product', 'KIM DONG SOO', 'Korea', '1.380', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(68, '669024176042000', 'PRAWIRA BINTANG SEMESTA', 2, 3, 'JALAN SAMSUNG 2C BLOK C.3A, KAWASAN INDUSTRI JABABEKA, CIKARANG, BEKASI, JAWA BARAT', 'JALAN ENGGANO RAYA RUKO ENGGANO MEGAH BLOK AA NOMOR 52, JAKARTA UTARA', 6, '2049/KM.4/2016', '2016-10-18', '2049/KM.4/2016', '2016-10-18', '2019-10-14', 'INDUSTRI KOMPONEN ELEKTRONIK', 'YURDHI PRAWIRA NOVIAWAN', 'Indonesia', '600', 'N', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(69, '015285588414001', 'PRINTEC PERKASA', 1, 4, 'Kws Ind. JABABEKA II KAV. SS 4-5, CIKARANG, BEKASI, JW BRT', 'Kws Ind. JABABEKA II KAV. SS 4-5, CIKARANG, BEKASI, JW BRT', 5, '335/KMK.05/1997', '1997-07-21', '35/WBC.08/2017', '2017-03-01', '3000-12-31', 'Paper & Paper Produk, Plastic Product', 'KASIM GHOZALI', 'Indonesia', '33.613', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(70, '018246678057000', 'PT. HANES SUPPLY CHAIN INDONESIA', 1, 4, 'Jl. JABABEKA XII B BLOK W NO. 39, Kws Ind. JABABEKA, HARJA MEKAR, CIKARANG UTARA, BEKASI, JW BRT 17530', 'Jl. JABABEKA XII B BLOK W NO. 39, Kws Ind. JABABEKA, HARJA MEKAR, CIKARANG UTARA, BEKASI, JW BRT 17530', 6, '130/KMK.04/2001', '2001-03-19', '93/WBC.08/2017', '2017-05-31', '2031-05-31', 'MANUFACTURING', 'CARL DAVID TAYLOR', 'NEW ZEALAND', '5,174M', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(71, '018696716055000', 'PYO JOON MOLD INDONESIA', 1, 4, 'Jl. INDUSTRI SELATAN BLOK RR 10A, Kws Ind. JABABEKA II, Ds. PASIE SARI, Kec. CIKARANG SELATAN, BEKASI, JW BRT 17520', 'Jl. INDUSTRI SELATAN BLOK RR 10A, Kws Ind. JABABEKA II, Ds. PASIE SARI, Kec. CIKARANG SELATAN, BEKASI, JW BRT 17520', 5, '1085/KM.04/2010', '2010-06-21', '125/WBC.08/2013', '2013-07-22', '3000-12-31', 'Other Manufacturing', 'LEE HONG KYU', 'KOREA', '4.295', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(72, '024221087414000', 'RATU BERLIAN CHRONICLE', 1, 4, 'Kws Ind. JABABEKA, Jl. JABABEKA IXB BLOK P.7 I-H,KELURAHAN WANGUN HARJA, Kec. CIKARANG UTARA, KABUPATEN BEKASI, JW BRT', 'Kws Ind. JABABEKA, Jl. JABABEKA IXB BLOK P.7 I-H,KELURAHAN WANGUN HARJA, Kec. CIKARANG UTARA, KABUPATEN BEKASI, JW BRT', 5, '1383/KM.4/2012', '2012-05-04', '496/KM.4/2014', '2014-03-24', '3000-12-31', 'INJECTION MOULDING PLASTICK', 'IMNAJAMUDIN BERLIAN', 'INDONESIA', '1.051', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(73, '019577865056000', 'RLC INDONESIA', 2, 3, 'JALAN JABABEKA XVII B BLOK U NO. 20, KAWASAN INDUSTRI JABABEKA, KELURAHAN HARJAMEKAR, KECAMATAN CIKARANG UTARA, BEKASI, JAWA BARAT', 'JALAN JABABEKA XVII B BLOK U NO. 20, KAWASAN INDUSTRI JABABEKA, KELURAHAN HARJAMEKAR, KECAMATAN CIKARANG UTARA, BEKASI, JAWA BARAT', 7, '427/KMK.5/2000', '2000-03-17', '1633/KM.4/2017', '2017-07-18', '2018-04-17', 'GB PENDUKUNG KEGIATAN INDUSTRI', 'KIM JONG WOOK', 'KOREA', '6.162', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(74, '018829333052000', 'SAM PLUS INDOTAMA INDUSTRY', 1, 4, 'Kws Ind. JABABEKA II, Jl. INDUSTRI SELATAN 2 BLOK MM NO. 11, Ds. PASIR SARI, Kec. CIKARANG UTARA, BEKASI, JW BRT 17530', 'Kws Ind. JABABEKA II, Jl. INDUSTRI SELATAN 2 BLOK MM NO. 11, Ds. PASIR SARI, Kec. CIKARANG UTARA, BEKASI, JW BRT 17530', 6, '470/KMK.04/2001', '2001-09-03', '961/KM.4/2013', '2013-05-20', '3000-12-31', 'Rubber and Plastic Product', 'RITCHIE GLEN YAPRANADI', 'Indonesia', '1.380', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(75, '018693705055000', 'SAMOIN (SAMHONGSA MOTOR INDONESIA)', 1, 4, 'Jl. JABABEKA INDUSTRI IV BLOK C1-A,B, Kws Ind. JABABEKA, Ds. PASIR GEMBONG, Kec. LEMAHABANG, BEKASI, JW BRT', 'Jl. JABABEKA INDUSTRI IV BLOK C1-A,B, Kws Ind. JABABEKA, Ds. PASIR GEMBONG, Kec. LEMAHABANG, BEKASI, JW BRT', 5, '237/KMK.04/2001', '2001-04-30', '58/WBC.08/2013', '2013-03-27', '3000-12-31', 'ELECTRONIC COMPONENT', 'LEE SANG YOUNG', 'KOREA SELATAN', '7.082', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(76, '010694677092000', 'SAMSUNG ELECTRONICS INDONESIA', 1, 4, 'KAWASAN INDUSTRI JABABEKA, JL. JABABEKA RAYA BLOK F 29-33, CIKARANG-BEKASI 17530', 'DI DALAM GUDANG BERIKAT PT. RLC INDONESIA, KAWASAN INDUSTRI JABABEKA, JL. JABABEKA XVII BLOK U NO.20, HARJAMEKAR CIKARANG UTARA, BEKASI', 6, '17/KMK.05/1994', '1994-01-14', 'KEP-12/WBC.08/KPP.MP.07/2017', '2017-01-30', '3000-12-31', 'ELECTRONICS MANUFACTURING', 'JI TAE KIM', 'KOREA', '76.149', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(77, '010694677092000', 'SAMSUNG ELECTRONICS INDONESIA (GB ATOZZ)', 2, 3, 'Di Gudang Berikat PT. Atozz Jaya Indonesia, Kawasan Industri Jababeka I, Jl. Jababeka III Blok C34, Pasir Gombong, Cikarang Utara', 'Kawasan Industri Jababeka, Jl. Jababeka Raya Blok F No. 29-33 Cikarang', 6, '1483/KM.4/2017', '2017-07-03', '1483/KM.4/2017', '2017-07-03', '3000-12-31', 'INDUSTRI KOMPONEN ELEKTRONIK', 'KIM JI TAE', 'KOREA', '1.008', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(78, '010694677092000', 'SAMSUNG ELECTRONICS INDONESIA (GB rlc)', 2, 3, 'Di dalam Gudang Berikat PT. RLC Indonesia, Kawasan Industri Jababeka, Jalan Jababeka XVII Blok U No. 20, Cikarang Utara', 'Kawasan Industri Jababeka, Jl. Jababeka Raya Blok F No. 29-33 Cikarang', 6, '2379/KM.4/2015', '2015-11-19', '2379/KM.4/2015', '2015-11-19', '3000-12-31', 'INDUSTRI KOMPONEN ELEKTRONIK', 'KIM YOO YOUNG', 'KOREA', '1.640', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(79, '316701523414000', 'SAMUDRA OCEAN PERKASA INDONESIA', 1, 4, 'Jl. JABABEKA XI BLOK K NO. 4E, Kws Ind. JABABEKA, HARJAMEKAR, CIKARANG UTARA, BEKASI, JW BRT, 17530', 'Jl. JABABEKA XI BLOK K NO. 4E, Kws Ind. JABABEKA, HARJAMEKAR, CIKARANG UTARA, BEKASI, JW BRT, 17530', 5, '2155/KM.4/2013', '2013-10-30', '2155/KM.4/2013', '2013-10-30', '3000-12-31', 'Manufacturing', 'KWON JEOUNG SEUL', 'Korea Selatan', '1.986', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(80, '018827295052000', 'SANGWAN DINASINDO', 1, 4, 'Kws Ind. JABABEKA I, Jl. JABABEKA II E BLOK C-15 M-N, Kec. CIKARANG, BEKASI, JW BRT', 'Kws Ind. JABABEKA I, Jl. JABABEKA II E BLOK C-15 M-N, Kec. CIKARANG, BEKASI, JW BRT', 5, '172/KMK.05/2000', '2000-05-23', '1521/KM.4/2012', '2012-05-11', '3000-12-31', 'ELECTRONICS MANUFACTURING', 'WOO HAN SIK', 'KOREA ', '5', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(81, '018693333055000', 'SEOUL PRECISION METAL', 1, 4, 'Jl. JABABEKA VII B BLOK K2P - K2Q, Kws Ind. JABABEKA, Ds. WANGUNHARJA, Kec. CIKARANG UTARA, BEKASI, JW BRT', 'Jl. JABABEKA VII B BLOK K2P - K2Q, Kws Ind. JABABEKA, Ds. WANGUNHARJA, Kec. CIKARANG UTARA, BEKASI, JW BRT', 5, '502/KMK.05/2000', '2000-11-29', '20/WBC.08/2013', '2013-01-25', '3000-12-31', 'Other Manufacturing', 'PARK YONG SUB', 'KOREA', '2.042', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(82, '010816007431000', 'SHIN HEUNG INDONESIA', 1, 4, 'Kws Ind. JABABEKA III-CIKARANG, Jl. TECHNO RAYA BLOK A 5 A, Ds. PASIR GOMBONG, Kec. CIKARANG UTARA, BEKASI, JW BRT', 'Kws Ind. JABABEKA III-CIKARANG, Jl. TECHNO RAYA BLOK A 5 A, Ds. PASIR GOMBONG, Kec. CIKARANG UTARA, BEKASI, JW BRT', 5, '465/KM.4/2012', '2012-03-05', '465/KM.4/2012', '2012-03-05', '3000-12-31', 'Other Manufactur', 'KIM TAE KWON', 'KOREA', '60.000', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(83, '018826917052000', 'SHINSUNG IND. / OSUNG ELECTRIC & CHEMICAL', 1, 4, 'JALAN PILAR SUKATANI RT 01/03 KAMPUNG SUKAMANTRI, DESA SUKARAYA, KECAMATAN KARANG BAHAGIA, BEKASI, JAWA BARAT', 'JALAN PILAR SUKATANI RT 01/03 KAMPUNG SUKAMANTRI, DESA SUKARAYA, KECAMATAN KARANG BAHAGIA, BEKASI, JAWA BARAT', 6, '174/KMK.05/2000', '2000-05-24', '2089/KM.4/2014', '2014-10-13', '2017-12-31', 'Automotive & Component(Industri Komponen elektronika)', 'KANG DONG KIL', 'KOREA', '6.322', 'Y', 9, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(84, '018693150413000', 'SI TECH INDONESIA', 1, 4, 'Jl. INDUSTRI UTAMA I BLOK RR 5J, Kws Ind. JABABEKA TAHAP II, CIKARANG, BEKASI, JW BRT', 'Jl. INDUSTRI UTAMA I BLOK RR 5J, Kws Ind. JABABEKA TAHAP II, CIKARANG, BEKASI, JW BRT', 5, '350/KMK.05/2000', '2000-08-23', '06/WBC.08/2015', '2015-01-21', '3000-12-31', 'Other Manufacturing', 'JEFFY DEMAC NABABAN', 'Indonesia', '1.914', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(85, '025198433413000', 'SI-HEART', 1, 4, 'Kws Ind. JABABEKA II, Jl. INDUSTRI SELATAN NO. 1 BLOK QQ 9D, Ds. PASIRSARI, Kec. CIKARANG SELATAN, KABUPATEN BEKASI, JW BRT', 'Kws Ind. JABABEKA II, Jl. INDUSTRI SELATAN NO. 1 BLOK QQ 9D, Ds. PASIRSARI, Kec. CIKARANG SELATAN, KABUPATEN BEKASI, JW BRT', 5, '1/KMK.04/2006', '2007-01-03', '115/WBC.08/2016', '2016-07-13', '3000-12-31', 'Automotive & Component', 'MUKSON PRASETYO', 'Indonesia', '576', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(86, '312456676414000', 'SIN JIN TECH INDONESIA', 1, 4, 'Kws Ind. JABABEKA II, Jl. INDUSTRI UTARA I BLOK TT NO. 3, Ds. MEKAR MUKTI, Kec. CIKARANG UTARA, KABUPATEN BEKASI, JW BRT 17550', 'Kws Ind. JABABEKA II, Jl. INDUSTRI UTARA I BLOK TT NO. 3, Ds. MEKAR MUKTI, Kec. CIKARANG UTARA, KABUPATEN BEKASI, JW BRT 17550', 5, '1880/KM.04/2012', '2015-05-24', '900/KM.04/2015', '2015-04-24', '3000-12-31', 'Computer and Electronic', 'JANG IM OK', 'KOREA', '1.247', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(87, '018692194055000', 'SINTERTECH', 1, 4, 'Jl. JABABEKA VI BLOK J 6-M, Kws Ind. CIKARANG, Ds. HARJAMEKAR, Kec. CIBITUNG, BEKASI, JW BRT', 'Jl. JABABEKA VI BLOK J 6-M, Kws Ind. CIKARANG, Ds. HARJAMEKAR, Kec. CIBITUNG, BEKASI, JW BRT', 5, '198/KMK.04/2001', '2001-04-19', '1770/KM.4/2012', '2012-05-23', '2029-02-28', 'Other Manufacturing', 'CHONG CHAI KOK', 'Singapore', '1.740', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(88, '312948276414000', 'SUNGNAM ELECTRONIC INDONESIA', 1, 4, 'Kws Ind. JABABEKA TAHAP III BLOK A 8 C, Ds. PASIR GOMBONG, Kec. CIKARANG UTARA, BEKASI, JW BRT', 'Kws Ind. JABABEKA TAHAP III BLOK A 8 C, Ds. PASIR GOMBONG, Kec. CIKARANG UTARA, BEKASI, JW BRT', 5, '861/KM.4/2012', '2011-04-09', '175/WBC.08/2014', '2014-11-14', '3000-12-31', 'INDUSTRI SEMI KONDUKTOR DAN KOMPONEN ELECTRONIK LAINNYA', 'HWANG KEUN SUNG', 'KOREA', '2.512', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(89, '023564735414000', 'SUPRA SUKSES TRINUSA', 1, 4, 'Kws Ind. JABABEKA, Jl. JABABEKA VI B BLOK J NO. 7 E, Ds. HARJAMEKAR, Kec. CIKARANG UTARA, KABUPATEN BEKASI, JW BRT', 'Kws Ind. JABABEKA, Jl. JABABEKA VI B BLOK J NO. 7 E, Ds. HARJAMEKAR, Kec. CIKARANG UTARA, KABUPATEN BEKASI, JW BRT', 5, '1034/KM.4/2013', '2013-05-31', '1034/KM.4/2013', '2013-05-31', '3000-12-31', 'Other Manufacturing', 'JEFFY D. NABABAN', 'Indonesia', '1.740', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(90, '018693697055000', 'SURYA MULTINDO INDUSTRY', 1, 4, 'Jl. JABABEKA IV BLOK C2-A, B, PASIR GOMBONG, LEMAHABANG, BEKASI', 'Jl. JABABEKA IV BLOK C2-A, B, PASIR GOMBONG, LEMAHABANG, BEKASI', 5, '322/KM.04/2001', '2001-05-21', '1082/KM.04/2012', '2012-04-17', '3000-12-31', 'Other Manufacturing', 'CHOI KYUNG SOO', 'KOREA', '22.380', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(91, '010712099055000', 'SYSTECH INDONESIA', 1, 4, 'Kws Ind. JABABEKA, Jl. JABABEKA 4E BLOK V-78A & 78B, Ds. PASIR GOMBONG, Kec. CIKARANG UTARA, KANUPATEN BEKASI, JW BRT', 'Jl. Ds. NOMOR 1, KAMPUNG CIBEUREUM RT/RW.17/07, Ds. WANTILAN, KEC. CIPENDEUY, SUBANG, JW BRT', 5, '1883/KMK.04/2010', '2010-10-04', '572/KM.4/2012', '2017-03-15', '2023-09-24', 'Computer and Electronic', 'ANG KOK LIAN', 'Malaysia', '3.648', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(92, '010816049414000', 'TAE BONG INDONESIA', 1, 4, 'CIKARANG INDUSTRIAL ESTATE, Jl. JABABEKA IX-A (SFB) BLOK P2C, Ds. WANGUN HARJA, Kec. CIKARANG UTARA, BEKASI, JW BRT', 'CIKARANG INDUSTRIAL ESTATE, Jl. JABABEKA IX-A (SFB) BLOK P2C, Ds. WANGUN HARJA, Kec. CIKARANG UTARA, BEKASI, JW BRT', 5, '264/KMK.04/2003', '2003-12-24', '170/WBC.08/2015', '2015-10-21', '2026-01-31', 'Manufacturing', 'CHANG KYU PARK', 'Korea Selatan', '1.048', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(93, '010718468055000', 'TAI ELECTRONIC INDONESIA', 2, 3, 'Jl. JABABEKA IV BLOK T-1 E F, Kws Ind. CIKARANG LEMAHABANG, BEKASI, JW BRT', 'Jl. JABABEKA IV BLOK T-1 E F, Kws Ind. CIKARANG LEMAHABANG, BEKASI, JW BRT', 6, '1572/KM.4/2004', '2004-08-09', '1554/KM.4/2017', '2017-07-10', '2017-11-25', 'GB Pendukung Kegiatan Industri', 'OAH TEIKHEONG', 'Malaysia', '420', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(94, '010718468055000', 'TAI ELECTRONIC INDONESIA', 1, 4, 'KAWASAN BERIKAT PT TAI ELECTRONIC INDONESIA, JALAN JABABEKA IV BLOK T-1 E F KAWASAN INDUSTRI CIKARANG, LEMAHABANG, BEKASI, JAWA BARAT', 'KAWASAN BERIKAT PT TAI ELECTRONIC INDONESIA, JALAN JABABEKA IV BLOK T-1 E F KAWASAN INDUSTRI CIKARANG, LEMAHABANG, BEKASI, JAWA BARAT', 5, '404/KMK.05/2000', '2000-09-27', 'KEP-119/WBC.08/KPP.MP.07/2016', '2016-11-10', '3000-12-31', 'Other Manufacturing', 'OAH TEIKHEONG', 'Malaysia', '8.205', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(95, '313566150413000', 'TECH MASTER INDONESIA', 1, 4, 'Kws Ind. JABABEKA II, Jl. INDUSTRI SELATAN V BLOK EE-3K, PASIRSARI, CIKARANG SELATAN, BEKASI, JW BRT', 'Kws Ind. JABABEKA II, Jl. INDUSTRI SELATAN V BLOK EE-3K, PASIRSARI, CIKARANG SELATAN, BEKASI, JW BRT', 5, '321/KMK.04/2012', '2012-02-16', '321/KMK.04/2012', '2012-02-16', '3000-12-31', 'Other Manufacturing', 'NOH JOUNG KEE', 'KOREA', '1.403', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(96, '010714392052000', 'TEKPAK INDONESIA', 1, 4, 'Jl. JABABEKA IV C BLOK T2D, CIKARANG INDUSTRIAL ESTATE, Ds. PASIR GOMBONG,Kec. CIKARANG UTARA, BEKASI, JW BRT', 'Jl. JABABEKA IV C BLOK T2D, CIKARANG INDUSTRIAL ESTATE, Ds. PASIR GOMBONG,Kec. CIKARANG UTARA, BEKASI, JW BRT', 5, '1105 / KM.4 / 2012', '2012-04-18', '73/WBC.08/2015', '2015-05-19', '3000-12-31', 'Plastic Product', 'MADE SHINTA WATI DEWI', 'Indonesia', '10.449', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(97, '015934953414000', 'TEKUN ASAS SUMBER MAKMUR', 1, 4, 'Jl. JABABEKA II BLOK C-23, Kws Ind. CIKARANG, LEMAHABANG, BEKASI, JW BRT', 'Jl. JABABEKA II BLOK C-23, Kws Ind. CIKARANG, LEMAHABANG, BEKASI, JW BRT', 5, '1973/KM.4/2003', '2003-06-11', 'KEP-54/WBC.08/KPP.MP.07/2017', '2017-02-06', '3000-12-31', 'OTHER MANUFACTURING', 'MASAHITO MUROYA', 'JEPANG', '3.680', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(98, '010714616052000', 'TOSIN PLASTIK INDONESIA', 1, 4, 'CIKARANG INDUSTRIAL ESTATE JABABEKA BLOK T-2A, BEKASI, JW BRT', 'CIKARANG INDUSTRIAL ESTATE JABABEKA BLOK T-2A, BEKASI, JW BRT', 5, '599/KMK.05/1996', '1996-09-25', '1528/KM.4/2012', '2012-05-11', '2026-10-31', 'Rubber and plastik product', 'KOAY SEE TEONG', 'Malaysia', '2.338', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(99, '023565997414000', 'TOTAN GLOBAL INDONESIA', 1, 4, 'Jl. JABABEKA IIG BLOK C-16T Kws Ind. JABABEKA, Ds. PASIR GOMBONG, Kec. CIKARANG UTARA, BEKASI, JW BRT', 'Jl. JABABEKA IIG BLOK C-16T Kws Ind. JABABEKA, Ds. PASIR GOMBONG, Kec. CIKARANG UTARA, BEKASI, JW BRT', 5, '505/KM.4/2013', '2013-03-22', '505/KM.4/2013', '2013-03-22', '3000-12-31', 'Electrical Equipment', 'TOMMY RIZKY GUNAWAN', 'Indonesia', '1.152', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(100, '211402235414000', 'TRIPLE CIRCLE TECHNOLOGY INDONESIA', 1, 4, 'Kws Ind. JABABEKA II, Jl. INDUSTRI UTARA I, BLOK TT NO. 6, Ds. MEKARMUKTI, CIKARANG UTARA, BEKASI, JW BRT', 'Kws Ind. JABABEKA II, Jl. INDUSTRI UTARA I, BLOK TT NO. 6, Ds. MEKARMUKTI, CIKARANG UTARA, BEKASI, JW BRT', 5, '604/KM.4/2010', '2010-04-12', '416/KM.4/2013', '2013-03-08', '3000-12-31', 'Electrical Equipment', 'PARK SEONG IN', 'KOREA', '1.247', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(101, '018244244055000', 'VOESTALPINE BOHLER WELDING ASIA PACIFIC', 1, 4, 'DI SFB BLOK JJ NOMOR 7-8, Kws Ind. INDOCARGOMAS PERSADA, Ds. PASIRSARI, Kec. LEMAHABANG, KABUPATEN BEKASI, JW BRT', 'DI SFB BLOK JJ NOMOR 7-8, Kws Ind. INDOCARGOMAS PERSADA, Ds. PASIRSARI, Kec. LEMAHABANG, KABUPATEN BEKASI, JW BRT', 5, '393/KM.4/2007', '2007-02-20', '19/WBC.08/2016', '2016-02-10', '2031-10-06', 'Other Manufacturing', 'BENGT MARTIN LAREN', 'Swedia', '6.290', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(102, '025199175413000', 'WAKO KOGYO INDONESIA', 1, 4, 'Kws Ind. JABABEKA CIKARANG, Jl. INDUSTRI SELATAN 5 BLOK EE-5A, Ds. PASISARI, Kec. CIKARANG SELATAN, BEKASI, JW BRT', 'Kws Ind. JABABEKA CIKARANG, Jl. INDUSTRI SELATAN 5 BLOK EE-5A, Ds. PASISARI, Kec. CIKARANG SELATAN, BEKASI, JW BRT', 5, '136/KM.4/2008', '2008-01-23', '1633/KM.4/2012', '2012-05-16', '3000-12-31', 'Other Manufacturing', 'YUKI SAKAMOTO', 'Japan', '3.124', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(103, '018694521055000', 'WE TECH', 1, 4, 'Kws Ind. JABABEKA BLOK C NOMOR 16 AC, BEKASI, JW BRT', 'Kws Ind. JABABEKA BLOK C NOMOR 16 AC, BEKASI, JW BRT', 5, '94/KMK.04/2002', '2002-03-14', '52/WBC.08/2017', '2017-03-22', '3000-12-31', 'Other Manufacturing', 'LEE JAE HYOUNG', 'KOREA', '864', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(104, '700383912414000', 'WINSHENG PLASTIC AND TOOLING INDUSTRY', 1, 4, 'Kws Ind. JABABEKA PHASE 3, Jl. TEKNO RAYA BLOK B1 KAVLING E, Ds. PASIR GOMBONG, Kec. CIKARANG UTARA, KABUPATEN BEKASI', 'Kws Ind. JABABEKA PHASE 3, Jl. TEKNO RAYA BLOK B1 KAVLING E, Ds. PASIR GOMBONG, Kec. CIKARANG UTARA, KABUPATEN BEKASI', 5, '535/KM.4/2015', '2015-03-10', '535/KM.4/2015', '2015-03-10', '3000-12-31', 'Other Manufacturing', 'TAN CHEN WEI', 'MALAYSIA', '2.158', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(105, '018694927413001', 'YEONHO INDONESIA', 1, 4, 'Jl. INDUSTRI SELATAN 3A SFB BLOK GG-3 C,D,E, Kws Ind. JABABEKA II CIKARANG, BEKASI, JABAR', 'Jl. INDUSTRI SELATAN 3A SFB BLOK GG-3 C,D,E, Kws Ind. JABABEKA II CIKARANG, BEKASI, JABAR', 5, '441/KMK.04/2002', '2002-10-21', 'KEP-35/WBC.08/KPP.MP.07/2017', '2017-03-16', '3000-12-31', 'INDUSTRI KOMPONEN ELEKTRONIK', 'YOUNG CHUL MOON', 'Indonesia', '3.570', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(106, '018694927413000', 'YEONHO INDONESIA', 2, 3, 'KAWASAN INDUSTRI JABABEKA II, JALAN INDUSTRI SELATAN 3A BLOK GG-3C, D, E, DESA LEMAHABANG, KECAMATAN CIKARANG, BEKASI, JAWA BARAT', 'KAWASAN INDUSTRI JABABEKA II, JALAN INDUSTRI SELATAN 3A BLOK GG-3C, D, E, DESA LEMAHABANG, KECAMATAN CIKARANG, BEKASI, JAWA BARAT', 6, '1211/KM.4/2002', '2002-10-21', '869/KM.4/2017', '2017-04-20', '2018-04-16', 'INDUSTRI KOMPONEN ELEKTRONIK', 'YOUNG CHUL MOON', 'Indonesia', '828', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(107, '018694059055000', 'YONG SHIN INDONESIA', 1, 4, 'Kws Ind. JABABEKA, Jl. JABABEKA XVII B  BLOK U 18 A, KELURAHAN KARANG BARU, Kec. CIKARANG UTARA, BEKASI, JW BRT', 'Kws Ind. JABABEKA, Jl. JABABEKA IV BLOK V 78 R, Ds. PASIR GOMBONG, LEMAHABANG, BEKASI, JW BRT', 5, '519/KMK. 4/2001', '2001-09-17', '109/WBC.08/2015', '2015-07-07', '3000-12-31', 'INDUSTRI KOMPONEN ELEKTRONIK', 'CHOI BYUNG DUCK', 'KOREA', '10.363', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(108, '018696211055000', 'YQ TEK INDONESIA', 2, 3, 'KAWASAN INDUSTRI JABABEKA II, JALAN INDUSTRI UTAMA I BLOK RR NOMOR 5 H, DESA PASIRSARI, CIKARANG, BEKASI, JAWA BARAT', 'KAWASAN INDUSTRI JABABEKA II, JALAN INDUSTRI UTAMA I BLOK RR NOMOR 5 H, DESA PASIRSARI, CIKARANG, BEKASI, JAWA BARAT', 6, '2042/KM.4/2004', '2004-10-25', '1117/KM.4/2016', '2016-06-14', '2018-04-20', 'Electrical Equipment', 'BACK YOUNG CHEOL', 'KOREA', '1.380', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`) VALUES
	(109, '018694042055000', 'YU PRO INDONESIA', 2, 3, 'DI KAWASAN BERIKAT PT YU PRO INDONESIA, JALAN JABABEKA IV BLOK V 78G, KAWASAN INDUSTRI JABABEKA, DESA PASIR GOMBONG, KECAMATAN LEMAHABANG, BEKASI, JAWA BARAT', 'DI KAWASAN BERIKAT PT YU PRO INDONESIA, JALAN JABABEKA IV BLOK V 78G, KAWASAN INDUSTRI JABABEKA, DESA PASIR GOMBONG, KECAMATAN LEMAHABANG, BEKASI, JAWA BARAT', 6, '1799/KMK.04/2001', '2001-11-23', '1500/KM.4/2017', '2017-07-04', '2018-04-14', 'Pendukung Kegiatan Industri Komponen Electronika', 'HEON SHIK KIM', 'KOREA', '1.518', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42');
/*!40000 ALTER TABLE `tb_perusahaan` ENABLE KEYS */;

-- Dumping structure for table apppeloro.tb_referensi
CREATE TABLE IF NOT EXISTS `tb_referensi` (
  `IdReferensi` int(11) NOT NULL AUTO_INCREMENT,
  `KdReferensi` varchar(50) NOT NULL,
  `NmReferensi` varchar(50) NOT NULL,
  `Detail Referensi` varchar(255) NOT NULL,
  `WktRekam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PtgsRekam` varchar(18) NOT NULL,
  PRIMARY KEY (`IdReferensi`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table apppeloro.tb_referensi: ~9 rows (approximately)
/*!40000 ALTER TABLE `tb_referensi` DISABLE KEYS */;
INSERT INTO `tb_referensi` (`IdReferensi`, `KdReferensi`, `NmReferensi`, `Detail Referensi`, `WktRekam`, `PtgsRekam`) VALUES
	(1, 'Fasilitas', 'KB', 'Kawasan Berikat', '2018-01-24 11:15:29', '199203162014111002');
INSERT INTO `tb_referensi` (`IdReferensi`, `KdReferensi`, `NmReferensi`, `Detail Referensi`, `WktRekam`, `PtgsRekam`) VALUES
	(2, 'Fasilitas', 'GB', 'Gudang Berikat', '2018-01-24 11:15:56', '199203162014111002');
INSERT INTO `tb_referensi` (`IdReferensi`, `KdReferensi`, `NmReferensi`, `Detail Referensi`, `WktRekam`, `PtgsRekam`) VALUES
	(3, 'Jenis', 'PGB & PPGB', 'Pengusaha Gudang Berikat Merangkap Sebagai Pengusaha Pada Gudang Berikat', '2018-01-24 11:17:59', '199203162014111002');
INSERT INTO `tb_referensi` (`IdReferensi`, `KdReferensi`, `NmReferensi`, `Detail Referensi`, `WktRekam`, `PtgsRekam`) VALUES
	(4, 'Jenis', 'PKB & PDKB', 'Pengusaha Kawasan Berikat Merangkap Sebagai Pengusaha Dalam Kawasan Berikat', '2018-01-24 11:18:41', '199203162014111002');
INSERT INTO `tb_referensi` (`IdReferensi`, `KdReferensi`, `NmReferensi`, `Detail Referensi`, `WktRekam`, `PtgsRekam`) VALUES
	(5, 'ProfilResiko', 'Low Risk / Hijau', '', '2018-01-24 11:21:59', '199203162014111002');
INSERT INTO `tb_referensi` (`IdReferensi`, `KdReferensi`, `NmReferensi`, `Detail Referensi`, `WktRekam`, `PtgsRekam`) VALUES
	(6, 'ProfilResiko', 'Medium Risk / Kuning', '', '2018-01-24 11:22:26', '199203162014111002');
INSERT INTO `tb_referensi` (`IdReferensi`, `KdReferensi`, `NmReferensi`, `Detail Referensi`, `WktRekam`, `PtgsRekam`) VALUES
	(7, 'ProfilResiko', 'High Risk / Merah', '', '2018-01-24 11:22:57', '199203162014111002');
INSERT INTO `tb_referensi` (`IdReferensi`, `KdReferensi`, `NmReferensi`, `Detail Referensi`, `WktRekam`, `PtgsRekam`) VALUES
	(8, 'Lokasi', 'Di Dalam Kawasan Industri', 'Di dalam kawasan industri atau di dalam bandara / pelabuhan laut', '2018-07-06 11:12:12', '199203162014111002');
INSERT INTO `tb_referensi` (`IdReferensi`, `KdReferensi`, `NmReferensi`, `Detail Referensi`, `WktRekam`, `PtgsRekam`) VALUES
	(9, 'Lokasi', 'Di Luar Kawasan Industri', 'Di luar kawasan industri atau di dalam kota (down town)', '2018-07-06 11:12:50', '');
/*!40000 ALTER TABLE `tb_referensi` ENABLE KEYS */;

-- Dumping structure for view apppeloro.tb_cctv_detail
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `tb_cctv_detail`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_cctv_detail` AS SELECT tb_cctv.*, tb_perusahaan.NmPerusahaan, tb_perusahaan.NPWP, tb_perusahaan.AlamatPabrik, tb_perusahaan.NoSkepAkhir, a.NmReferensi AS Fasilitas, b.NmReferensi AS Jenis, c.NmReferensi AS ProfilResiko FROM tb_cctv
LEFT JOIN tb_perusahaan ON tb_cctv.IdPerusahaan=tb_perusahaan.IdPerusahaan
LEFT JOIN tb_referensi a ON tb_perusahaan.Fasilitas=a.IdReferensi
LEFT JOIN tb_referensi b ON tb_perusahaan.Jenis=b.IdReferensi
LEFT JOIN tb_referensi c ON tb_perusahaan.ProfilResiko=c.IdReferensi ;

-- Dumping structure for view apppeloro.tb_non_cctv
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `tb_non_cctv`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_non_cctv` AS SELECT a.IdPerusahaan, a.NPWP, a.NmPerusahaan, b.NmReferensi AS Fasilitas, c.NmReferensi AS Jenis, a.AlamatPabrik, a.AlamatKantor, 
d.NmReferensi AS ProfilResiko, a.NoSkepPendirian, a.TglSkepPendirian, a.NoSkepAkhir, a.TglSkepAkhir, a.TglJatuhTempo, a.KategoriUsaha,
a.NamaPenanggungJawab, a.WNPenanggungJawab, a.Luas, a.`Status`, a.Lokasi, a.PtgsRekam, a.WktRekam  FROM tb_perusahaan a 
LEFT JOIN tb_referensi b ON a.Fasilitas = b.IdReferensi
LEFT JOIN tb_referensi c ON a.Jenis = c.IdReferensi
LEFT JOIN tb_referensi d ON a.ProfilResiko = d.IdReferensi
WHERE NOT(a.IdPerusahaan IN(SELECT IdPerusahaan FROM tb_cctv)) ORDER BY IdPerusahaan ;


-- Dumping database structure for monevtpb
CREATE DATABASE IF NOT EXISTS `monevtpb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `monevtpb`;

-- Dumping structure for table monevtpb.monev_cctvit
CREATE TABLE IF NOT EXISTS `monev_cctvit` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdHanggar` int(11) NOT NULL DEFAULT '0',
  `IdPerusahaan` int(11) NOT NULL DEFAULT '0',
  `Tanggal` date NOT NULL,
  `statusCCTV` enum('Y','N') NOT NULL,
  `realtimeCCTV` enum('Y','N') NOT NULL,
  `statusIT` enum('Y','N') NOT NULL,
  `realtimeIT` enum('Y','N') NOT NULL,
  `Keterangan` varchar(500) NOT NULL,
  `WktRkm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PtgsRkm` varchar(18) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table monevtpb.monev_cctvit: ~6 rows (approximately)
/*!40000 ALTER TABLE `monev_cctvit` DISABLE KEYS */;
INSERT INTO `monev_cctvit` (`Id`, `IdHanggar`, `IdPerusahaan`, `Tanggal`, `statusCCTV`, `realtimeCCTV`, `statusIT`, `realtimeIT`, `Keterangan`, `WktRkm`, `PtgsRkm`) VALUES
	(1, 0, 30, '2018-02-26', 'Y', 'Y', 'Y', 'Y', '', '2018-02-26 13:37:57', '199203162014111002');
INSERT INTO `monev_cctvit` (`Id`, `IdHanggar`, `IdPerusahaan`, `Tanggal`, `statusCCTV`, `realtimeCCTV`, `statusIT`, `realtimeIT`, `Keterangan`, `WktRkm`, `PtgsRkm`) VALUES
	(2, 0, 57, '2018-02-26', 'Y', 'N', 'Y', 'N', '', '2018-02-26 13:39:36', '199203162014111002');
INSERT INTO `monev_cctvit` (`Id`, `IdHanggar`, `IdPerusahaan`, `Tanggal`, `statusCCTV`, `realtimeCCTV`, `statusIT`, `realtimeIT`, `Keterangan`, `WktRkm`, `PtgsRkm`) VALUES
	(3, 0, 80, '2018-02-26', 'N', 'N', 'N', 'N', '', '2018-02-26 13:40:33', '199203162014111002');
INSERT INTO `monev_cctvit` (`Id`, `IdHanggar`, `IdPerusahaan`, `Tanggal`, `statusCCTV`, `realtimeCCTV`, `statusIT`, `realtimeIT`, `Keterangan`, `WktRkm`, `PtgsRkm`) VALUES
	(4, 0, 29, '2018-02-26', 'Y', 'N', 'Y', 'N', '', '2018-02-26 14:36:07', '199203162014111002');
INSERT INTO `monev_cctvit` (`Id`, `IdHanggar`, `IdPerusahaan`, `Tanggal`, `statusCCTV`, `realtimeCCTV`, `statusIT`, `realtimeIT`, `Keterangan`, `WktRkm`, `PtgsRkm`) VALUES
	(5, 0, 8, '2018-02-26', 'Y', 'Y', 'Y', 'Y', '', '2018-02-26 16:34:25', '199203162014111002');
INSERT INTO `monev_cctvit` (`Id`, `IdHanggar`, `IdPerusahaan`, `Tanggal`, `statusCCTV`, `realtimeCCTV`, `statusIT`, `realtimeIT`, `Keterangan`, `WktRkm`, `PtgsRkm`) VALUES
	(6, 1, 64, '2018-02-26', 'Y', 'Y', 'Y', 'Y', '', '2018-02-26 22:07:14', '199203162014111002');
/*!40000 ALTER TABLE `monev_cctvit` ENABLE KEYS */;

-- Dumping structure for table monevtpb.monev_ceisa
CREATE TABLE IF NOT EXISTS `monev_ceisa` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdHanggar` int(11) NOT NULL DEFAULT '0',
  `IdPerusahaan` int(11) NOT NULL DEFAULT '0',
  `Kendala` int(11) NOT NULL DEFAULT '0',
  `DetailKendala` text NOT NULL,
  `WktMulai` datetime DEFAULT NULL,
  `WktSelesai` datetime DEFAULT NULL,
  `PtgsRkm` varchar(18) NOT NULL DEFAULT '0',
  `WktRkm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table monevtpb.monev_ceisa: ~0 rows (approximately)
/*!40000 ALTER TABLE `monev_ceisa` DISABLE KEYS */;
INSERT INTO `monev_ceisa` (`Id`, `IdHanggar`, `IdPerusahaan`, `Kendala`, `DetailKendala`, `WktMulai`, `WktSelesai`, `PtgsRkm`, `WktRkm`) VALUES
	(1, 0, 64, 3, 'Tidak bisa connect VPN', '2018-02-27 08:00:00', '2018-02-27 15:00:00', '199203162014111002', '2018-02-27 20:23:57');
/*!40000 ALTER TABLE `monev_ceisa` ENABLE KEYS */;

-- Dumping structure for table monevtpb.monev_pembatalan
CREATE TABLE IF NOT EXISTS `monev_pembatalan` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdHanggar` int(11) NOT NULL,
  `IdPerusahaan` int(11) NOT NULL,
  `JnsDok` int(11) NOT NULL,
  `NmrDok` varchar(10) NOT NULL,
  `TglDok` date NOT NULL,
  `NoPembatalan` varchar(50) NOT NULL,
  `TglPembatalan` date NOT NULL,
  `Alasan` varchar(255) NOT NULL,
  `NoPersetujuan` varchar(50) DEFAULT NULL,
  `TglPersetujuan` date DEFAULT NULL,
  `PtgsRkm` varchar(18) NOT NULL,
  `WktRkm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PtgsUpdate` varchar(18) DEFAULT NULL,
  `WktUpdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table monevtpb.monev_pembatalan: ~6 rows (approximately)
/*!40000 ALTER TABLE `monev_pembatalan` DISABLE KEYS */;
INSERT INTO `monev_pembatalan` (`Id`, `IdHanggar`, `IdPerusahaan`, `JnsDok`, `NmrDok`, `TglDok`, `NoPembatalan`, `TglPembatalan`, `Alasan`, `NoPersetujuan`, `TglPersetujuan`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(1, 1, 64, 23, '000236', '2018-02-03', '01/SEIN/EXIM/II/2018', '2018-02-05', 'Salah No Invoice', NULL, NULL, '199203162014111002', '2018-02-21 17:13:40', '199203162014111002', '2018-02-21 21:14:49');
INSERT INTO `monev_pembatalan` (`Id`, `IdHanggar`, `IdPerusahaan`, `JnsDok`, `NmrDok`, `TglDok`, `NoPembatalan`, `TglPembatalan`, `Alasan`, `NoPersetujuan`, `TglPersetujuan`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(2, 18, 4, 23, '000666', '2018-02-14', '01/DMC/EXIM/II/2018', '2018-02-19', 'Salah No Kontainer', NULL, NULL, '199203162014111002', '2018-02-21 17:40:46', NULL, NULL);
INSERT INTO `monev_pembatalan` (`Id`, `IdHanggar`, `IdPerusahaan`, `JnsDok`, `NmrDok`, `TglDok`, `NoPembatalan`, `TglPembatalan`, `Alasan`, `NoPersetujuan`, `TglPersetujuan`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(3, 18, 4, 25, '000555', '2018-02-14', '000654', '2018-02-22', 'Salah Input Invoice', NULL, NULL, '199203162014111002', '2018-02-21 19:09:25', '199203162014111002', '2018-02-21 21:16:15');
INSERT INTO `monev_pembatalan` (`Id`, `IdHanggar`, `IdPerusahaan`, `JnsDok`, `NmrDok`, `TglDok`, `NoPembatalan`, `TglPembatalan`, `Alasan`, `NoPersetujuan`, `TglPersetujuan`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(4, 18, 4, 27, '000888', '2018-02-13', '25654', '2018-02-13', 'Salah Perusahaan Tujuan', NULL, NULL, '199203162014111002', '2018-02-21 19:13:16', NULL, NULL);
INSERT INTO `monev_pembatalan` (`Id`, `IdHanggar`, `IdPerusahaan`, `JnsDok`, `NmrDok`, `TglDok`, `NoPembatalan`, `TglPembatalan`, `Alasan`, `NoPersetujuan`, `TglPersetujuan`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(5, 0, 30, 25, '123', '2018-02-13', '123', '2018-02-19', 'salah surat jalan', NULL, NULL, '199203162014111002', '2018-02-26 10:59:07', NULL, NULL);
INSERT INTO `monev_pembatalan` (`Id`, `IdHanggar`, `IdPerusahaan`, `JnsDok`, `NmrDok`, `TglDok`, `NoPembatalan`, `TglPembatalan`, `Alasan`, `NoPersetujuan`, `TglPersetujuan`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(6, 1, 4, 27, '32123', '2018-02-06', '32155', '2018-02-21', 'Salah pokoknya', NULL, NULL, '199203162014111002', '2018-02-26 22:09:29', NULL, NULL);
/*!40000 ALTER TABLE `monev_pembatalan` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
