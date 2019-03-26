-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 5.6.25 - MySQL Community Server (GPL)
-- OS Server:                    Win32
-- HeidiSQL Versi:               9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Membuang struktur basisdata untuk appdashboard
DROP DATABASE IF EXISTS `appdashboard`;
CREATE DATABASE IF NOT EXISTS `appdashboard` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `appdashboard`;

-- membuang struktur untuk view appdashboard.detail_pegawaist
DROP VIEW IF EXISTS `detail_pegawaist`;
-- Membuat tabel sementara untuk menangani kesalahan ketergantungan VIEW
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

-- membuang struktur untuk table appdashboard.grupmenu
DROP TABLE IF EXISTS `grupmenu`;
CREATE TABLE IF NOT EXISTS `grupmenu` (
  `IdGrupMenu` int(6) NOT NULL AUTO_INCREMENT,
  `GrupMenu` varchar(100) NOT NULL,
  `unitpengguna_id` tinyint(4) NOT NULL,
  `wktrkm` datetime NOT NULL,
  `niprkm` varchar(9) NOT NULL,
  PRIMARY KEY (`IdGrupMenu`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Level Pengguna Aplikasi';

-- Membuang data untuk tabel appdashboard.grupmenu: 12 rows
DELETE FROM `grupmenu`;
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

-- membuang struktur untuk table appdashboard.historyuser
DROP TABLE IF EXISTS `historyuser`;
CREATE TABLE IF NOT EXISTS `historyuser` (
  `IdHistory` int(11) NOT NULL AUTO_INCREMENT,
  `IdUser` int(11) NOT NULL DEFAULT '0',
  `KdHistory` enum('1','2','3') DEFAULT NULL,
  `History` varchar(255) NOT NULL DEFAULT '0',
  `WktRekam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdHistory`),
  KEY `FK__tbuser_historyuser` (`IdUser`)
) ENGINE=InnoDB AUTO_INCREMENT=323 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel appdashboard.historyuser: ~320 rows (lebih kurang)
DELETE FROM `historyuser`;
/*!40000 ALTER TABLE `historyuser` DISABLE KEYS */;
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(2, 1, '1', 'User Telah Menambahkan IKU', '2017-11-30 14:12:16');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(3, 1, '1', 'User Telah Menambahkan IKU', '2017-11-30 14:13:20');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(4, 1, '1', 'User Telah Menambahkan IKU', '2017-11-30 14:40:35');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(5, 1, '1', 'User Telah Menambahkan IKU', '2017-11-30 14:41:03');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(6, 1, '1', 'User Telah Menambahkan IKU', '2017-11-30 15:40:22');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(7, 1, '1', 'User Telah Menambahkan IKU', '2017-11-30 17:07:57');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(8, 1, '3', 'User Telah Menghapus IKU', '2017-11-30 17:25:39');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(9, 1, '1', 'User Telah Menambahkan IKU', '2017-11-30 17:28:48');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(10, 1, '3', 'User Telah Menghapus IKU', '2017-11-30 17:29:22');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(11, 1, '3', 'User Telah Menghapus IKU', '2017-11-30 17:29:24');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(12, 1, '3', 'User Telah Menghapus IKU', '2017-11-30 17:29:26');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(13, 1, '3', 'User Telah Menghapus IKU', '2017-11-30 17:29:28');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(14, 1, '1', 'User Telah Menambahkan IKU', '2017-11-30 17:31:04');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(15, 1, '3', 'User Telah Menghapus IKU', '2017-11-30 20:54:51');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(16, 1, '1', 'User Telah Menambahkan IKU', '2017-12-02 02:47:19');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(17, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-02 03:41:43');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(18, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-02 03:43:45');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(19, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 15:17:24');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(20, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 15:18:51');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(21, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 15:18:55');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(22, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 15:32:41');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(23, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 15:32:47');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(24, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 15:32:52');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(25, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 15:35:05');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(26, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 15:35:39');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(27, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 15:35:45');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(28, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 15:35:50');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(29, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 15:37:38');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(30, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 15:40:02');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(31, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 15:40:07');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(32, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 15:40:11');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(33, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 15:41:06');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(34, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 16:22:27');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(35, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 16:22:32');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(36, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 16:22:55');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(37, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 16:23:08');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(38, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 16:24:58');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(39, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 16:25:02');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(40, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 16:25:06');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(41, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 16:25:27');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(42, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 16:25:50');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(43, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 16:51:19');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(44, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 16:51:24');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(45, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 16:51:30');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(46, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 16:52:40');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(47, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 16:54:43');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(48, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 16:54:48');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(49, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 16:55:20');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(50, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 16:56:15');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(51, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 16:57:22');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(52, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 16:57:27');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(53, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 17:14:29');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(54, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 17:14:48');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(55, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 17:15:05');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(56, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 17:15:16');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(57, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 17:20:52');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(58, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 17:23:42');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(59, 1, '1', 'User Telah Menambah Capaian IKU Kode 1b-C', '2017-12-04 19:15:11');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(60, 1, '3', 'User Telah Menghapus Capaian', '2017-12-04 19:20:58');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(61, 1, '3', 'User Telah Menghapus IKU', '2017-12-04 19:27:48');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(62, 1, '1', 'User Telah Menambahkan IKU', '2017-12-04 19:37:30');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(63, 1, '3', 'User Telah Menghapus IKU', '2017-12-04 19:37:38');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(64, 1, '3', 'User Telah Menghapus IKU', '2017-12-04 19:39:00');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(65, 1, '1', 'User Telah Menambahkan IKU', '2017-12-04 19:41:34');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(66, 1, '3', 'User Telah Menghapus IKU', '2017-12-04 19:41:46');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(67, 1, '1', 'User Telah Menambahkan IKU', '2017-12-04 19:44:05');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(68, 1, '3', 'User Telah Menghapus IKU', '2017-12-04 19:44:10');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(69, 1, '1', 'User Telah Menambahkan IKU', '2017-12-04 23:59:01');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(70, 1, '1', 'User Telah Menambah Capaian IKU Kode 123', '2017-12-04 23:59:17');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(71, 1, '1', 'User Telah Menambahkan IKU', '2017-12-05 00:00:17');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(72, 1, '3', 'User Telah Menghapus IKU', '2017-12-05 00:02:13');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(73, 1, '3', 'User Telah Menghapus Capaian', '2017-12-05 00:02:24');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(74, 1, '3', 'User Telah Menghapus IKU', '2017-12-05 00:02:33');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(75, 1, '1', 'User Telah Menambahkan IKU', '2017-12-05 00:02:44');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(76, 1, '3', 'User Telah Menghapus IKU', '2017-12-05 00:09:11');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(77, 1, '1', 'User Telah Menambahkan IKU', '2017-12-05 00:09:19');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(78, 1, '1', 'User Telah Menambah Capaian IKU Kode 123', '2017-12-05 00:09:57');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(79, 1, '1', 'User Telah Menambah Capaian IKU Kode 123', '2017-12-05 00:10:14');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(80, 1, '1', 'User Telah Menambah Capaian IKU Kode 123', '2017-12-05 00:10:27');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(81, 1, '3', 'User Telah Menghapus Capaian', '2017-12-05 00:10:35');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(82, 1, '3', 'User Telah Menghapus Capaian', '2017-12-05 00:10:40');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(83, 1, '3', 'User Telah Menghapus Capaian', '2017-12-05 00:10:42');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(84, 1, '3', 'User Telah Menghapus IKU', '2017-12-05 00:10:50');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(85, 1, '3', 'User Telah Menghapus Capaian', '2018-01-02 15:56:04');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(86, 1, '3', 'User Telah Menghapus Capaian', '2018-01-02 15:57:13');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(87, 1, '3', 'User Telah Menghapus Capaian', '2018-01-02 15:57:16');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(88, 2, '1', 'User Telah Menambah Capaian IKU Kode 1a-C', '2018-01-07 21:05:30');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(89, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 16', '2018-01-07 23:26:38');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(90, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 15', '2018-01-07 23:27:19');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(91, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 14', '2018-01-07 23:27:40');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(92, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 13', '2018-01-07 23:27:46');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(93, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 12', '2018-01-07 23:27:51');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(94, 1, '1', 'User Telah Menambah Surat Tugas Nomor ', '2018-01-08 00:39:44');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(95, 1, '1', 'User Telah Menambah Surat Tugas Nomor 18', '2018-01-08 00:43:25');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(96, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 17', '2018-01-08 00:43:52');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(97, 1, '1', 'User Telah Menambah Surat Tugas Nomor 19', '2018-01-08 00:44:26');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(98, 1, '1', 'User Telah Menambah Surat Tugas Nomor 20', '2018-01-08 00:45:08');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(99, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 20', '2018-01-08 00:48:24');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(100, 1, '1', 'User Telah Menambah Surat Tugas Nomor 21', '2018-01-08 00:48:42');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(101, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 21', '2018-01-08 17:12:04');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(102, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 19', '2018-01-08 17:12:23');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(103, 1, '1', 'User Telah Menambah Surat Tugas Nomor 22', '2018-01-08 18:56:33');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(104, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 22', '2018-01-08 20:21:28');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(105, 1, '1', 'User Telah Menambah Surat Tugas Nomor 23', '2018-01-08 23:25:48');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(106, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 23', '2018-01-08 23:28:38');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(107, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 18', '2018-01-08 23:28:42');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(108, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 11', '2018-01-08 23:28:44');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(109, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 10', '2018-01-08 23:28:46');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(110, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 9', '2018-01-08 23:28:47');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(111, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 8', '2018-01-08 23:28:49');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(112, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 7', '2018-01-08 23:28:51');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(113, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 6', '2018-01-08 23:28:52');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(114, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 5', '2018-01-08 23:28:54');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(115, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 4', '2018-01-08 23:28:56');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(116, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 3', '2018-01-08 23:28:58');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(117, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 2', '2018-01-08 23:28:59');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(118, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 1', '2018-01-08 23:29:01');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(119, 1, '1', 'User Telah Menambah Surat Tugas Nomor 24', '2018-01-09 16:37:22');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(120, 1, '1', 'User Telah Menambah Surat Tugas Nomor 25', '2018-01-09 16:39:33');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(121, 1, '1', 'User Telah Menambah Surat Tugas Nomor 26', '2018-01-09 16:43:08');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(122, 1, '1', 'User Telah Menambah Surat Tugas Nomor 27', '2018-01-09 16:50:01');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(123, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 24', '2018-01-09 16:51:00');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(124, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 27', '2018-01-09 16:51:04');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(125, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 26', '2018-01-09 16:51:07');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(126, 1, '3', 'User Telah Menghapus Surat Tugas Nomor 25', '2018-01-09 16:51:10');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(127, 1, '1', 'User Telah Menambah Surat Tugas Nomor 28', '2018-01-09 17:09:25');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(128, 1, '1', 'User Telah Menambah Surat Tugas Nomor 29', '2018-01-11 17:59:48');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(129, 1, '1', 'User Telah Menambah Surat Tugas Nomor 30', '2018-01-16 18:39:01');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(130, 1, '1', 'User Telah Menambah User teguh.ismael', '2018-01-18 18:32:57');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(131, 1, '1', 'User Telah Menambah User lili.andriyani', '2018-01-18 18:34:03');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(132, 1, '1', 'User Telah Menambah User sabrina.latifa', '2018-01-18 18:35:49');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(133, 1, '1', 'User Telah Menambah User vega.agayantri', '2018-01-18 18:36:07');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(134, 1, '1', 'User Telah Menambah User sukmaning.ayu', '2018-01-18 18:36:45');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(135, 1, '1', 'User Telah Menambah User dinda.githa', '2018-01-18 18:38:04');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(136, 1, '2', 'User Telah Merubah User sabrina.latifa', '2018-01-18 20:49:36');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(137, 1, '2', 'User Telah Merubah User dinda.githa', '2018-01-18 20:54:01');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(138, 1, '2', 'User Telah Merubah User dinda.githa', '2018-01-18 20:54:29');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(139, 1, '1', 'User Telah Menambah User akhmad.rofiq', '2018-01-18 20:55:17');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(140, 1, '1', 'User Telah Menambah User bambang.prayoga', '2018-01-18 20:55:38');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(141, 1, '1', 'User Telah Menambah User heru.sudaryanto', '2018-01-18 20:56:02');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(142, 1, '2', 'User Telah Merubah User lili.andriyani', '2018-01-18 22:52:32');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(143, 1, '2', 'User Telah Merubah User lili.andriyani', '2018-01-18 22:53:22');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(144, 1, '2', 'User Telah Merubah User lili.andriyani', '2018-01-18 22:53:41');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(145, 1, '2', 'User Telah Merubah User lili.andriyani', '2018-01-18 22:57:18');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(146, 1, '3', 'User Telah Menghapus User ', '2018-01-18 23:12:02');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(147, 1, '3', 'User Telah Menghapus User vega.agayantri', '2018-01-18 23:12:51');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(148, 1, '3', 'User Telah Menghapus User sukmaning.ayu', '2018-01-18 23:13:25');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(149, 1, '3', 'User Telah Menghapus User teguh.ismael', '2018-01-18 23:13:32');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(150, 1, '3', 'User Telah Menghapus User akhmad.rofiq', '2018-01-18 23:15:10');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(151, 1, '1', 'User Telah Menambah User hammam.yudanto', '2018-01-18 23:23:49');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(152, 1, '3', 'User Telah Menghapus User sabrina.latifa', '2018-01-19 14:50:22');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(153, 1, '1', 'User Telah Menambah User sabrina.latifa', '2018-01-19 14:56:46');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(154, 1, '2', 'User Telah Merubah User ADMIN', '2018-01-19 14:57:39');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(155, 1, '2', 'User Telah Merubah User ADMIN', '2018-01-19 14:59:17');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(156, 1, '2', 'User Telah Merubah User ADMIN', '2018-01-19 15:00:54');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(157, 1, '2', 'User Telah Merubah User hammam.yudanto', '2018-01-19 15:16:06');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(158, 1, '2', 'User Telah Merubah User hammam.yudanto', '2018-01-19 15:16:36');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(159, 1, '2', 'User Telah Merubah User hammam.yudanto', '2018-01-19 15:17:11');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(160, 1, '2', 'User Telah Merubah User hammam.yudanto', '2018-01-19 15:18:44');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(161, 1, '2', 'User Telah Merubah User hammam.yudanto', '2018-01-19 15:19:08');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(162, 1, '2', 'User Telah Merubah User hammam.yudanto', '2018-01-19 15:42:43');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(163, 1, '2', 'User Telah Merubah User hammam.yudanto', '2018-01-19 15:59:23');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(164, 1, '2', 'User Telah Merubah User hammam.yudanto', '2018-01-19 21:34:04');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(165, 1, '2', 'User Telah Merubah User hammam.yudanto', '2018-01-19 21:35:55');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(166, 1, '3', 'User Telah Menghapus User hammam.yudanto', '2018-01-19 22:14:05');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(167, 1, '3', 'User Telah Menghapus User bambang.prayoga', '2018-01-19 22:14:09');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(168, 1, '3', 'User Telah Menghapus User sabrina.latifa', '2018-01-19 22:14:14');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(169, 1, '3', 'User Telah Menghapus User dinda.githa', '2018-01-19 22:14:17');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(170, 1, '3', 'User Telah Menghapus User dulhaedi', '2018-01-19 22:14:21');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(171, 1, '3', 'User Telah Menghapus User heru.sudaryanto', '2018-01-19 22:14:25');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(172, 1, '1', 'User Telah Menambah User akhmad.rofiq', '2018-01-19 23:50:55');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(173, 1, '1', 'User Telah Menambah User sabrina.latifa', '2018-01-19 23:54:39');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(174, 1, '1', 'User Telah Menambah User ravi.raka felani', '2018-01-23 17:44:54');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(175, 1, '2', 'User Telah Merubah User ravi.raka felani', '2018-01-23 17:46:22');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(176, 1, '1', 'User Telah Menambah User yohanes.guraci', '2018-01-24 17:12:31');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(177, 1, '1', 'User Telah Menambah User agung.saputro', '2018-01-24 17:12:50');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(178, 1, '1', 'User Telah Menambah User sulaiman', '2018-01-24 17:13:08');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(179, 1, '1', 'User Telah Menambah User muzakkar', '2018-01-24 17:13:27');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(180, 1, '1', 'User Telah Menambah User dody.firmansah', '2018-01-24 17:13:50');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(181, 1, '1', 'User Telah Menambah User faisal', '2018-01-24 17:14:05');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(182, 18, '2', 'User Telah Merubah User user', '2018-01-24 23:29:51');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(183, 18, '2', 'User Telah Merubah User bc', '2018-01-24 23:51:07');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(184, 18, '2', 'User Telah Merubah User bc', '2018-01-24 23:53:03');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(185, 18, '2', 'User Telah Merubah User bc', '2018-01-24 23:54:43');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(186, 1, '1', 'User Telah Menambah Hak Akses User HERU SUDARYANTO', '2018-01-31 00:22:51');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(187, 1, '1', 'User Telah Menambah Hak Akses User HERU SUDARYANTO', '2018-01-31 00:53:26');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(188, 1, '1', 'User Telah Mengapus Hak Akses User ', '2018-01-31 01:15:30');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(189, 1, '1', 'User Telah Mengapus Hak Akses User ', '2018-01-31 01:16:42');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(190, 1, '1', 'User Telah Mengapus Hak Akses User HERU SUDARYANTO', '2018-01-31 01:18:09');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(191, 1, '1', 'User Telah Mengapus Hak Akses User HERU SUDARYANTO', '2018-01-31 01:20:16');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(192, 1, '1', 'User Telah Menambah Hak Akses User HERU SUDARYANTO', '2018-01-31 01:21:42');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(193, 1, '1', 'User Telah Mengapus Hak Akses User HERU SUDARYANTO', '2018-01-31 02:15:00');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(194, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2018-01-31 17:19:12');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(195, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2018-01-31 17:19:15');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(196, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2018-01-31 17:19:19');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(197, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2018-01-31 17:19:22');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(198, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2018-01-31 17:19:29');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(199, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2018-01-31 17:19:32');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(200, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2018-01-31 17:19:35');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(201, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2018-01-31 17:19:38');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(202, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2018-01-31 17:19:42');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(203, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2018-01-31 17:19:46');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(204, 1, '1', 'User Telah Menambah Hak Akses User RHENA DESANTI', '2018-01-31 17:21:29');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(205, 1, '2', 'User Telah Merubah User ADMIN', '2018-02-21 02:14:50');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(206, 1, '2', 'User Telah Merubah User ADMIN', '2018-02-21 02:14:58');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(207, 1, '2', 'User Telah Merubah User ADMIN', '2018-02-21 02:16:58');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(208, 1, '2', 'User Telah Merubah User ADMIN', '2018-02-21 02:17:53');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(209, 1, '3', 'User Telah Menghapus User STAFF KK', '2018-02-21 02:58:57');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(210, 1, '1', 'User Telah Menambah User novi.setyowati', '2018-02-21 02:59:58');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(211, 1, '1', 'User Telah Menambah Hak Akses User FITHRI KHAIRANI', '2018-02-21 03:00:19');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(212, 1, '1', 'User Telah Menambah Hak Akses User FITHRI KHAIRANI', '2018-02-21 03:00:23');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(213, 1, '2', 'User Telah Merubah User fithoriqil.azziz', '2018-09-27 21:21:05');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(214, 1, '1', 'User Telah Menambah User ahmad.wahyu', '2018-10-02 21:55:21');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(215, 1, '1', 'User Telah Menambah Hak Akses User RUDI SUPRIANTO', '2018-10-02 22:04:12');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(216, 1, '2', 'User Telah Merubah User ahmad.wahyu', '2018-10-02 22:06:50');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(217, 1, '1', 'User Telah Menambah User allamaski.mochammad', '2019-01-14 20:36:12');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(218, 1, '1', 'User Telah Menambah Hak Akses User DARU ANGGORO', '2019-01-14 20:36:34');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(219, 1, '1', 'User telah menambah pegawaiENGGAR FATIMA DAMAYANTI', '2019-01-18 03:21:05');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(220, 1, '3', 'User telah menghapus pegawai ', '2019-01-18 15:53:16');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(221, 1, '3', 'User telah menghapus pegawai ', '2019-01-18 15:55:27');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(222, 1, '3', 'User telah menghapus pegawai ', '2019-01-18 15:56:47');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(223, 1, '3', 'User telah menghapus pegawai ', '2019-01-18 15:56:58');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(224, 1, '3', 'User telah menghapus pegawai ', '2019-01-18 15:58:45');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(225, 1, '3', 'User telah menghapus pegawai ', '2019-01-18 16:00:48');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(226, 1, '3', 'User telah menghapus pegawai ', '2019-01-18 16:03:17');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(227, 1, '2', 'User telah mengubah pegawai ENGGAR FATIMA DAMAYANTI', '2019-01-18 16:06:48');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(228, 1, '3', 'User telah menghapus pegawai ', '2019-01-18 16:06:57');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(229, 1, '3', 'User telah menghapus pegawai ENGGAR FATIMA DAMAYANTI', '2019-01-18 16:09:41');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(230, 1, '3', 'User telah menghapus pegawai SULAIMAN', '2019-01-18 16:13:28');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(231, 1, '2', 'User telah mengubah pegawai SUGENG CAHYONO', '2019-03-14 18:33:47');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(232, 1, '1', 'User Telah Menambah User sugeng.cahyono', '2019-03-14 18:36:35');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(233, 1, '1', 'User Telah Menambah Hak Akses User ', '2019-03-14 18:36:54');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(234, 1, '1', 'User Telah Menambah Hak Akses User ', '2019-03-14 18:36:57');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(235, 1, '1', 'User Telah Menambah Hak Akses User ', '2019-03-14 18:40:54');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(236, 1, '1', 'User Telah Menambah Hak Akses User ', '2019-03-14 18:41:19');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(237, 1, '1', 'User Telah Menambah Hak Akses User ', '2019-03-14 18:43:40');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(238, 1, '1', 'User Telah Mengapus Hak Akses User AKHMAD ROFIQ', '2019-03-14 18:43:48');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(239, 1, '1', 'User Telah Mengapus Hak Akses User AKHMAD ROFIQ', '2019-03-14 18:46:59');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(240, 1, '1', 'User Telah Mengapus Hak Akses User AGUNG SAPUTRO', '2019-03-14 18:51:36');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(241, 1, '1', 'User Telah Mengapus Hak Akses User AGUNG SAPUTRO', '2019-03-14 18:51:51');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(242, 1, '1', 'User Telah Menambah User fungki.awaludin', '2019-03-18 20:36:24');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(243, 1, '1', 'User Telah Menambah Hak Akses User ', '2019-03-18 20:42:17');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(244, 1, '1', 'User Telah Menambah User fakhrul.rozi', '2019-03-21 09:13:00');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(245, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-21 09:13:19');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(246, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-21 09:16:07');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(247, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-21 09:21:56');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(248, 1, '1', 'User Telah Mengapus Hak Akses User AKHMAD ROFIQ', '2019-03-21 09:22:18');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(249, 1, '1', 'User Telah Mengapus Hak Akses User AKHMAD ROFIQ', '2019-03-21 09:22:24');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(250, 1, '1', 'User Telah Mengapus Hak Akses User FAKHRUL ROZI', '2019-03-21 09:23:25');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(251, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-21 09:23:30');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(252, 1, '1', 'User Telah Mengapus Hak Akses User FAKHRUL ROZI', '2019-03-21 09:23:51');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(253, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-21 09:23:56');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(254, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-21 09:24:50');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(255, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-21 09:24:57');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(256, 1, '1', 'User Telah Mengapus Hak Akses User FAKHRUL ROZI', '2019-03-21 09:25:12');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(257, 1, '1', 'User Telah Mengapus Hak Akses User FAKHRUL ROZI', '2019-03-21 09:25:15');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(258, 1, '1', 'User Telah Menambah User pontas.ojahan aritonang', '2019-03-21 09:28:53');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(259, 1, '1', 'User Telah Menambah User fajar.toto kristianto', '2019-03-25 08:13:36');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(260, 1, '1', 'User Telah Menambah User dedy.purnaedi', '2019-03-25 08:14:44');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(261, 1, '1', 'User Telah Menambah User kentut.bagus', '2019-03-25 08:15:02');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(262, 1, '1', 'User Telah Menambah User subarus', '2019-03-25 08:15:14');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(263, 1, '1', 'User Telah Menambah User hilton.okto', '2019-03-25 08:15:33');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(264, 1, '1', 'User Telah Menambah User sachroni', '2019-03-25 08:15:50');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(265, 1, '1', 'User Telah Menambah User ahmad.naudin', '2019-03-25 08:16:15');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(266, 1, '1', 'User Telah Menambah User setiyo.wibowo', '2019-03-25 08:16:31');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(267, 1, '1', 'User Telah Menambah User irbaharuddin', '2019-03-25 08:16:48');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(268, 1, '1', 'User Telah Menambah User dewo.kusumo', '2019-03-25 08:17:13');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(269, 1, '1', 'User Telah Menambah User adhi.ciptana', '2019-03-25 08:17:32');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(270, 1, '1', 'User Telah Menambah User akhmad.kuncoro', '2019-03-25 08:17:51');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(271, 1, '1', 'User Telah Menambah User widyo.cahyono', '2019-03-25 08:18:12');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(272, 1, '1', 'User Telah Menambah User dedi.dwuwi', '2019-03-25 08:18:31');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(273, 1, '1', 'User Telah Menambah User ade.irawan', '2019-03-25 08:18:44');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(274, 1, '1', 'User Telah Menambah User sujiwo.budianto', '2019-03-25 08:18:59');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(275, 1, '1', 'User Telah Menambah User alimsyah', '2019-03-25 08:19:50');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(276, 1, '1', 'User Telah Menambah User lukman.nurhakim', '2019-03-25 08:20:06');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(277, 1, '1', 'User Telah Menambah User moh.yusuf', '2019-03-25 08:20:20');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(278, 1, '1', 'User Telah Menambah User bambang.suryadi', '2019-03-25 08:21:17');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(279, 1, '1', 'User Telah Menambah User haris', '2019-03-25 08:21:30');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(280, 1, '1', 'User Telah Menambah User gerry.gordon', '2019-03-25 08:21:43');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(281, 1, '1', 'User Telah Menambah User slamet.subakti', '2019-03-25 08:21:55');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(282, 1, '1', 'User Telah Menambah User k.a.h.effendy', '2019-03-25 08:22:42');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(283, 1, '1', 'User Telah Menambah User husen.alisugi', '2019-03-25 08:23:01');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(284, 1, '1', 'User Telah Menambah User bambang.suhartono', '2019-03-25 08:23:13');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(285, 1, '1', 'User Telah Menambah User joko.riyanto', '2019-03-25 08:23:25');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(286, 1, '1', 'User Telah Menambah User selamat.sucipto', '2019-03-25 08:23:46');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(287, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-25 08:23:58');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(288, 1, '1', 'User Telah Menambah User faiq', '2019-03-25 08:28:07');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(289, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-25 08:28:27');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(290, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-25 08:28:39');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(291, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-25 08:28:49');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(292, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-25 08:29:04');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(293, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-25 08:29:24');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(294, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-25 08:29:35');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(295, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-25 08:29:45');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(296, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-25 08:30:04');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(297, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-25 08:30:14');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(298, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-25 08:30:58');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(299, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-25 08:31:25');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(300, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-25 08:31:36');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(301, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-25 08:31:51');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(302, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-25 08:32:04');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(303, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-25 08:32:20');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(304, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-25 08:32:35');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(305, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-25 08:32:45');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(306, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-25 08:32:56');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(307, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-25 08:33:10');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(308, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-25 08:33:20');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(309, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-25 08:33:33');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(310, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-25 08:33:45');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(311, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-25 08:33:53');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(312, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-25 08:34:05');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(313, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-25 08:34:14');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(314, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-25 08:34:24');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(315, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-25 08:34:24');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(316, 1, '1', 'User Telah Mengapus Hak Akses User WIDYO CAHYONO', '2019-03-25 08:34:30');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(317, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-25 08:34:40');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(318, 1, '1', 'User Telah Menambah Hak Akses User AKHMAD ROFIQ', '2019-03-25 08:34:58');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(319, 1, '2', 'User telah mengubah pegawai FITHORIQIL AZZIZ', '2019-03-25 08:35:30');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(320, 1, '3', 'User telah menghapus pegawai ERI ARIYANA', '2019-03-25 10:45:37');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(321, 1, '2', 'User Telah Merubah User sugeng.cahyono', '2019-03-26 08:32:18');
INSERT INTO `historyuser` (`IdHistory`, `IdUser`, `KdHistory`, `History`, `WktRekam`) VALUES
	(322, 1, '2', 'User Telah Merubah User haris', '2019-03-26 13:06:54');
/*!40000 ALTER TABLE `historyuser` ENABLE KEYS */;

-- membuang struktur untuk view appdashboard.jumlah_perusahaan_hanggar
DROP VIEW IF EXISTS `jumlah_perusahaan_hanggar`;
-- Membuat tabel sementara untuk menangani kesalahan ketergantungan VIEW
CREATE TABLE `jumlah_perusahaan_hanggar` (
	`idHanggar` INT(11) NOT NULL COMMENT 'tbhanggar -> appdashboard',
	`jumlahTPB` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- membuang struktur untuk view appdashboard.jumlah_petugas_hanggar
DROP VIEW IF EXISTS `jumlah_petugas_hanggar`;
-- Membuat tabel sementara untuk menangani kesalahan ketergantungan VIEW
CREATE TABLE `jumlah_petugas_hanggar` (
	`IdHanggar` INT(11) NOT NULL,
	`jumlahPetugas` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- membuang struktur untuk view appdashboard.sikabayan
DROP VIEW IF EXISTS `sikabayan`;
-- Membuat tabel sementara untuk menangani kesalahan ketergantungan VIEW
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
	`nama_hanggar` VARCHAR(100) NULL COLLATE 'utf8_unicode_ci',
	`IdHanggar` INT(11) NULL COMMENT 'tbhanggar -> appdashboard'
) ENGINE=MyISAM;

-- membuang struktur untuk table appdashboard.tbcapaian
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

-- Membuang data untuk tabel appdashboard.tbcapaian: ~0 rows (lebih kurang)
DELETE FROM `tbcapaian`;
/*!40000 ALTER TABLE `tbcapaian` DISABLE KEYS */;
INSERT INTO `tbcapaian` (`IdCapaian`, `IdIku`, `Target`, `Realisasi`, `Capaian`, `WktRekam`, `WktUpdate`, `PtgRekam`) VALUES
	(1, 1, 0.20, 0.15, 0.15, '2018-01-07 21:05:30', '2018-01-07 21:05:30', 2);
/*!40000 ALTER TABLE `tbcapaian` ENABLE KEYS */;

-- membuang struktur untuk table appdashboard.tbeselon
DROP TABLE IF EXISTS `tbeselon`;
CREATE TABLE IF NOT EXISTS `tbeselon` (
  `IdEselon` int(11) NOT NULL AUTO_INCREMENT,
  `NmEselon` varchar(50) NOT NULL DEFAULT '0',
  `PtgsRekam` varchar(18) NOT NULL DEFAULT '0',
  `WktRekam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdEselon`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel appdashboard.tbeselon: ~5 rows (lebih kurang)
DELETE FROM `tbeselon`;
/*!40000 ALTER TABLE `tbeselon` DISABLE KEYS */;
INSERT INTO `tbeselon` (`IdEselon`, `NmEselon`, `PtgsRekam`, `WktRekam`) VALUES
	(1, 'ESELON III', '199203162014111002', '2018-01-09 15:10:27');
INSERT INTO `tbeselon` (`IdEselon`, `NmEselon`, `PtgsRekam`, `WktRekam`) VALUES
	(2, 'ESELON IV', '199203162014111002', '2018-01-09 15:11:06');
INSERT INTO `tbeselon` (`IdEselon`, `NmEselon`, `PtgsRekam`, `WktRekam`) VALUES
	(3, 'ESELON V', '199203162014111002', '2018-01-09 15:11:51');
INSERT INTO `tbeselon` (`IdEselon`, `NmEselon`, `PtgsRekam`, `WktRekam`) VALUES
	(4, 'FUNGSIONAL', '199203162014111002', '2018-01-09 15:12:13');
INSERT INTO `tbeselon` (`IdEselon`, `NmEselon`, `PtgsRekam`, `WktRekam`) VALUES
	(5, 'PELAKSANA', '199203162014111002', '2018-01-09 15:12:28');
/*!40000 ALTER TABLE `tbeselon` ENABLE KEYS */;

-- membuang struktur untuk table appdashboard.tbgrupakses
DROP TABLE IF EXISTS `tbgrupakses`;
CREATE TABLE IF NOT EXISTS `tbgrupakses` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdUser` int(11) DEFAULT NULL,
  `IdHakAkses` int(11) DEFAULT NULL,
  `PtgsRekam` varchar(18) DEFAULT NULL,
  `WktRekam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel appdashboard.tbgrupakses: ~49 rows (lebih kurang)
DELETE FROM `tbgrupakses`;
/*!40000 ALTER TABLE `tbgrupakses` DISABLE KEYS */;
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(1, 1, 1, NULL, '2019-03-14 20:15:51');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(2, 16, 3, '199203162014111002', '2018-01-31 00:15:43');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(3, 1, 2, '199203162014111002', '2018-01-31 17:19:12');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(4, 1, 3, '199203162014111002', '2018-01-31 17:19:15');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(5, 1, 4, '199203162014111002', '2018-01-31 17:19:19');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(6, 1, 5, '199203162014111002', '2018-01-31 17:19:22');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(7, 1, 6, '199203162014111002', '2018-01-31 17:19:29');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(8, 1, 7, '199203162014111002', '2018-01-31 17:19:32');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(9, 1, 8, '199203162014111002', '2018-01-31 17:19:35');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(10, 1, 9, '199203162014111002', '2018-01-31 17:19:38');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(11, 1, 10, '199203162014111002', '2018-01-31 17:19:42');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(12, 1, 11, '199203162014111002', '2018-01-31 17:19:46');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(13, 18, 5, '199203162014111002', '2018-01-31 17:21:29');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(14, 26, 12, '199203162014111002', '2018-02-21 03:00:19');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(15, 26, 6, '199203162014111002', '2018-02-21 03:00:23');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(16, 27, 5, '199203162014111002', '2018-10-02 22:04:12');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(17, 29, 5, '199203162014111002', '2019-01-14 20:36:34');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(18, 30, 12, '199203162014111002', '2019-03-14 18:36:54');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(23, 31, 6, '199203162014111002', '2019-03-18 20:46:27');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(30, 32, 12, '199203162014111002', '2019-03-21 09:24:57');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(31, 40, 12, '199203162014111002', '2019-03-25 08:23:58');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(32, 37, 12, '199203162014111002', '2019-03-25 08:28:27');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(33, 35, 12, '199203162014111002', '2019-03-25 08:28:39');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(34, 41, 12, '199203162014111002', '2019-03-25 08:28:49');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(35, 48, 12, '199203162014111002', '2019-03-25 08:29:04');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(36, 36, 12, '199203162014111002', '2019-03-25 08:29:24');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(37, 38, 12, '199203162014111002', '2019-03-25 08:29:35');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(38, 43, 12, '199203162014111002', '2019-03-25 08:29:45');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(39, 34, 12, '199203162014111002', '2019-03-25 08:30:04');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(40, 62, 12, '199203162014111002', '2019-03-25 08:30:13');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(41, 53, 12, '199203162014111002', '2019-03-25 08:30:58');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(42, 60, 12, '199203162014111002', '2019-03-25 08:31:25');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(43, 42, 12, '199203162014111002', '2019-03-25 08:31:36');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(44, 58, 12, '199203162014111002', '2019-03-25 08:31:51');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(45, 45, 12, '199203162014111002', '2019-03-25 08:32:04');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(46, 39, 12, '199203162014111002', '2019-03-25 08:32:20');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(47, 47, 12, '199203162014111002', '2019-03-25 08:32:35');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(48, 52, 12, '199203162014111002', '2019-03-25 08:32:45');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(49, 46, 12, '199203162014111002', '2019-03-25 08:32:56');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(50, 55, 12, '199203162014111002', '2019-03-25 08:33:10');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(51, 59, 12, '199203162014111002', '2019-03-25 08:33:20');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(52, 51, 12, '199203162014111002', '2019-03-25 08:33:33');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(53, 61, 12, '199203162014111002', '2019-03-25 08:33:45');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(54, 57, 12, '199203162014111002', '2019-03-25 08:33:53');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(55, 54, 12, '199203162014111002', '2019-03-25 08:34:05');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(56, 49, 12, '199203162014111002', '2019-03-25 08:34:14');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(57, 56, 12, '199203162014111002', '2019-03-25 08:34:24');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(59, 44, 12, '199203162014111002', '2019-03-25 08:34:40');
INSERT INTO `tbgrupakses` (`Id`, `IdUser`, `IdHakAkses`, `PtgsRekam`, `WktRekam`) VALUES
	(60, 63, 12, '199203162014111002', '2019-03-25 08:34:58');
/*!40000 ALTER TABLE `tbgrupakses` ENABLE KEYS */;

-- membuang struktur untuk table appdashboard.tbhanggar
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel appdashboard.tbhanggar: ~31 rows (lebih kurang)
DELETE FROM `tbhanggar`;
/*!40000 ALTER TABLE `tbhanggar` DISABLE KEYS */;
INSERT INTO `tbhanggar` (`id`, `idSeksiPKC`, `grupHanggar`, `lokasiHanggar`, `ptgsRkm`, `wktRkm`, `ptgsUpdate`, `wktUpdate`) VALUES
	(1, 9, 'HANGGAR TPB 01', 134, '199203162014111002', '2019-03-14 21:46:23', '199203162014111002', '2019-03-25 13:56:53');
INSERT INTO `tbhanggar` (`id`, `idSeksiPKC`, `grupHanggar`, `lokasiHanggar`, `ptgsRkm`, `wktRkm`, `ptgsUpdate`, `wktUpdate`) VALUES
	(2, 4, 'HANGGAR TPB 02', 73, '199203162014111002', '2019-03-14 21:47:35', '199203162014111002', '2019-03-25 13:46:21');
INSERT INTO `tbhanggar` (`id`, `idSeksiPKC`, `grupHanggar`, `lokasiHanggar`, `ptgsRkm`, `wktRkm`, `ptgsUpdate`, `wktUpdate`) VALUES
	(3, 9, 'HANGGAR TPB 03', 101, '199203162014111002', '2019-03-14 21:51:14', '199203162014111002', '2019-03-25 13:46:52');
INSERT INTO `tbhanggar` (`id`, `idSeksiPKC`, `grupHanggar`, `lokasiHanggar`, `ptgsRkm`, `wktRkm`, `ptgsUpdate`, `wktUpdate`) VALUES
	(4, 9, 'HANGGAR TPB 04', 51, '199203162014111002', '2019-03-14 21:52:26', '199203162014111002', '2019-03-25 13:47:06');
INSERT INTO `tbhanggar` (`id`, `idSeksiPKC`, `grupHanggar`, `lokasiHanggar`, `ptgsRkm`, `wktRkm`, `ptgsUpdate`, `wktUpdate`) VALUES
	(5, 2, 'HANGGAR TPB 05', 100, '199203162014111002', '2019-03-14 21:53:07', '199203162014111002', '2019-03-25 13:47:26');
INSERT INTO `tbhanggar` (`id`, `idSeksiPKC`, `grupHanggar`, `lokasiHanggar`, `ptgsRkm`, `wktRkm`, `ptgsUpdate`, `wktUpdate`) VALUES
	(6, 2, 'HANGGAR TPB 06', 9, '199203162014111002', '2019-03-14 21:53:27', '199203162014111002', '2019-03-25 13:47:32');
INSERT INTO `tbhanggar` (`id`, `idSeksiPKC`, `grupHanggar`, `lokasiHanggar`, `ptgsRkm`, `wktRkm`, `ptgsUpdate`, `wktUpdate`) VALUES
	(7, 2, 'HANGGAR TPB 07', 57, '199203162014111002', '2019-03-15 17:37:00', '199203162014111002', '2019-03-25 13:47:49');
INSERT INTO `tbhanggar` (`id`, `idSeksiPKC`, `grupHanggar`, `lokasiHanggar`, `ptgsRkm`, `wktRkm`, `ptgsUpdate`, `wktUpdate`) VALUES
	(8, 2, 'HANGGAR TPB 08', 86, '199203162014111002', '2019-03-15 17:37:23', '199203162014111002', '2019-03-25 13:48:03');
INSERT INTO `tbhanggar` (`id`, `idSeksiPKC`, `grupHanggar`, `lokasiHanggar`, `ptgsRkm`, `wktRkm`, `ptgsUpdate`, `wktUpdate`) VALUES
	(9, 3, 'HANGGAR TPB 09', 39, '199203162014111002', '2019-03-15 17:38:45', '199203162014111002', '2019-03-25 13:48:23');
INSERT INTO `tbhanggar` (`id`, `idSeksiPKC`, `grupHanggar`, `lokasiHanggar`, `ptgsRkm`, `wktRkm`, `ptgsUpdate`, `wktUpdate`) VALUES
	(10, 3, 'HANGGAR TPB 10', 43, '199203162014111002', '2019-03-15 17:39:28', '199203162014111002', '2019-03-25 13:48:33');
INSERT INTO `tbhanggar` (`id`, `idSeksiPKC`, `grupHanggar`, `lokasiHanggar`, `ptgsRkm`, `wktRkm`, `ptgsUpdate`, `wktUpdate`) VALUES
	(11, 3, 'HANGGAR TPB 11', 85, '199203162014111002', '2019-03-15 17:40:01', '199203162014111002', '2019-03-25 13:48:48');
INSERT INTO `tbhanggar` (`id`, `idSeksiPKC`, `grupHanggar`, `lokasiHanggar`, `ptgsRkm`, `wktRkm`, `ptgsUpdate`, `wktUpdate`) VALUES
	(12, 1, 'HANGGAR TPB 12', 76, '199203162014111002', '2019-03-15 17:40:47', '199203162014111002', '2019-03-25 08:48:08');
INSERT INTO `tbhanggar` (`id`, `idSeksiPKC`, `grupHanggar`, `lokasiHanggar`, `ptgsRkm`, `wktRkm`, `ptgsUpdate`, `wktUpdate`) VALUES
	(13, 4, 'HANGGAR TPB 13', 53, '199203162014111002', '2019-03-15 17:41:31', '199203162014111002', '2019-03-25 13:49:04');
INSERT INTO `tbhanggar` (`id`, `idSeksiPKC`, `grupHanggar`, `lokasiHanggar`, `ptgsRkm`, `wktRkm`, `ptgsUpdate`, `wktUpdate`) VALUES
	(14, 4, 'HANGGAR TPB 14', 87, '199203162014111002', '2019-03-15 17:41:48', '199203162014111002', '2019-03-25 13:49:21');
INSERT INTO `tbhanggar` (`id`, `idSeksiPKC`, `grupHanggar`, `lokasiHanggar`, `ptgsRkm`, `wktRkm`, `ptgsUpdate`, `wktUpdate`) VALUES
	(15, 4, 'HANGGAR TPB 15', 83, '199203162014111002', '2019-03-25 08:51:25', '199203162014111002', '2019-03-25 08:52:35');
INSERT INTO `tbhanggar` (`id`, `idSeksiPKC`, `grupHanggar`, `lokasiHanggar`, `ptgsRkm`, `wktRkm`, `ptgsUpdate`, `wktUpdate`) VALUES
	(16, 5, 'HANGGAR TPB 16', 64, '199203162014111002', '2019-03-25 08:52:28', '', NULL);
INSERT INTO `tbhanggar` (`id`, `idSeksiPKC`, `grupHanggar`, `lokasiHanggar`, `ptgsRkm`, `wktRkm`, `ptgsUpdate`, `wktUpdate`) VALUES
	(17, 5, 'HANGGAR TPB 17', 74, '199203162014111002', '2019-03-25 08:53:40', '', NULL);
INSERT INTO `tbhanggar` (`id`, `idSeksiPKC`, `grupHanggar`, `lokasiHanggar`, `ptgsRkm`, `wktRkm`, `ptgsUpdate`, `wktUpdate`) VALUES
	(18, 1, 'HANGGAR TPB 18', 10, '199203162014111002', '2019-03-25 08:55:05', '', NULL);
INSERT INTO `tbhanggar` (`id`, `idSeksiPKC`, `grupHanggar`, `lokasiHanggar`, `ptgsRkm`, `wktRkm`, `ptgsUpdate`, `wktUpdate`) VALUES
	(19, 5, 'HANGGAR TPB 19', 112, '199203162014111002', '2019-03-25 08:56:04', '', NULL);
INSERT INTO `tbhanggar` (`id`, `idSeksiPKC`, `grupHanggar`, `lokasiHanggar`, `ptgsRkm`, `wktRkm`, `ptgsUpdate`, `wktUpdate`) VALUES
	(20, 5, 'HANGGAR TPB 20', 81, '199203162014111002', '2019-03-25 08:57:43', '199203162014111002', '2019-03-25 13:50:03');
INSERT INTO `tbhanggar` (`id`, `idSeksiPKC`, `grupHanggar`, `lokasiHanggar`, `ptgsRkm`, `wktRkm`, `ptgsUpdate`, `wktUpdate`) VALUES
	(21, 6, 'HANGGAR TPB 21', 69, '199203162014111002', '2019-03-25 08:58:50', '', NULL);
INSERT INTO `tbhanggar` (`id`, `idSeksiPKC`, `grupHanggar`, `lokasiHanggar`, `ptgsRkm`, `wktRkm`, `ptgsUpdate`, `wktUpdate`) VALUES
	(22, 6, 'HANGGAR TPB 22', 33, '199203162014111002', '2019-03-25 09:01:13', '199203162014111002', '2019-03-25 13:50:30');
INSERT INTO `tbhanggar` (`id`, `idSeksiPKC`, `grupHanggar`, `lokasiHanggar`, `ptgsRkm`, `wktRkm`, `ptgsUpdate`, `wktUpdate`) VALUES
	(23, 6, 'HANGGAR TPB 23', 35, '199203162014111002', '2019-03-25 09:08:51', '', NULL);
INSERT INTO `tbhanggar` (`id`, `idSeksiPKC`, `grupHanggar`, `lokasiHanggar`, `ptgsRkm`, `wktRkm`, `ptgsUpdate`, `wktUpdate`) VALUES
	(24, 7, 'HANGGAR TPB 24', 20, '199203162014111002', '2019-03-25 09:11:04', '', NULL);
INSERT INTO `tbhanggar` (`id`, `idSeksiPKC`, `grupHanggar`, `lokasiHanggar`, `ptgsRkm`, `wktRkm`, `ptgsUpdate`, `wktUpdate`) VALUES
	(25, 7, 'HANGGAR TPB 25', 21, '199203162014111002', '2019-03-25 09:14:08', '199203162014111002', '2019-03-25 13:51:11');
INSERT INTO `tbhanggar` (`id`, `idSeksiPKC`, `grupHanggar`, `lokasiHanggar`, `ptgsRkm`, `wktRkm`, `ptgsUpdate`, `wktUpdate`) VALUES
	(26, 6, 'HANGGAR TPB 26', 61, '199203162014111002', '2019-03-25 09:16:46', '199203162014111002', '2019-03-25 13:51:25');
INSERT INTO `tbhanggar` (`id`, `idSeksiPKC`, `grupHanggar`, `lokasiHanggar`, `ptgsRkm`, `wktRkm`, `ptgsUpdate`, `wktUpdate`) VALUES
	(27, 1, 'HANGGAR TPB 27', 89, '199203162014111002', '2019-03-25 13:25:10', '', '2019-03-25 13:25:40');
INSERT INTO `tbhanggar` (`id`, `idSeksiPKC`, `grupHanggar`, `lokasiHanggar`, `ptgsRkm`, `wktRkm`, `ptgsUpdate`, `wktUpdate`) VALUES
	(28, 8, 'HANGGAE TPB 28', 12, '199203162014111002', '2019-03-25 09:18:42', '', '2019-03-25 13:23:57');
INSERT INTO `tbhanggar` (`id`, `idSeksiPKC`, `grupHanggar`, `lokasiHanggar`, `ptgsRkm`, `wktRkm`, `ptgsUpdate`, `wktUpdate`) VALUES
	(29, 8, 'HANGGAR TPB 29', 30, '199203162014111002', '2019-03-25 09:24:31', '199203162014111002', '2019-03-25 13:51:44');
INSERT INTO `tbhanggar` (`id`, `idSeksiPKC`, `grupHanggar`, `lokasiHanggar`, `ptgsRkm`, `wktRkm`, `ptgsUpdate`, `wktUpdate`) VALUES
	(30, 8, 'HANGGAR TPB 30', 13, '199203162014111002', '2019-03-25 09:26:05', '199203162014111002', '2019-03-25 13:51:54');
INSERT INTO `tbhanggar` (`id`, `idSeksiPKC`, `grupHanggar`, `lokasiHanggar`, `ptgsRkm`, `wktRkm`, `ptgsUpdate`, `wktUpdate`) VALUES
	(31, 9, 'HANGGAR TPB 31', 42, '199203162014111002', '2019-03-25 10:46:19', '', '2019-03-25 13:21:09');
/*!40000 ALTER TABLE `tbhanggar` ENABLE KEYS */;

-- membuang struktur untuk view appdashboard.tbhanggar_detail
DROP VIEW IF EXISTS `tbhanggar_detail`;
-- Membuat tabel sementara untuk menangani kesalahan ketergantungan VIEW
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
	`jumlahPetugas` BIGINT(21) NULL,
	`jumlahTPB` BIGINT(21) NULL
) ENGINE=MyISAM;

-- membuang struktur untuk table appdashboard.tbiku
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

-- Membuang data untuk tabel appdashboard.tbiku: ~0 rows (lebih kurang)
DELETE FROM `tbiku`;
/*!40000 ALTER TABLE `tbiku` DISABLE KEYS */;
INSERT INTO `tbiku` (`IdIku`, `KdIku`, `NamaIku`, `DeskripsiIku`, `Target`, `WktRekam`, `PetugasRekam`, `Capaian`) VALUES
	(1, '1a-C', 'Persentase realisasi dari janji layanan penerimaan dan penelitian kelengkapan dokumen BC 2.5', '-', 0.95, '2017-12-01 17:08:15', 1, 0.15);
/*!40000 ALTER TABLE `tbiku` ENABLE KEYS */;

-- membuang struktur untuk table appdashboard.tbjabatan
DROP TABLE IF EXISTS `tbjabatan`;
CREATE TABLE IF NOT EXISTS `tbjabatan` (
  `IdJabatan` int(5) NOT NULL AUTO_INCREMENT,
  `NamaJabatan` varchar(80) NOT NULL DEFAULT '0',
  `PtgsRekam` varchar(18) NOT NULL DEFAULT '0',
  `WktRekam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdJabatan`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel appdashboard.tbjabatan: ~77 rows (lebih kurang)
DELETE FROM `tbjabatan`;
/*!40000 ALTER TABLE `tbjabatan` DISABLE KEYS */;
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(1, 'KEPALA KANTOR', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(2, 'KEPALA SUBBAGIAN UMUM', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(3, 'KEPALA SEKSI PENINDAKAN DAN PENYIDIKAN', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(4, 'KEPALA SEKSI ADMINISTRASI MANIFES', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(5, 'KEPALA SEKSI PERBENDAHARAAN', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(6, 'KEPALA SEKSI PELAYANAN KEPABEANAN DAN CUKAI I', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(7, 'KEPALA SEKSI PELAYANAN KEPABEANAN DAN CUKAI II', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(8, 'KEPALA SEKSI PELAYANAN KEPABEANAN DAN CUKAI III', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(9, 'KEPALA SEKSI PELAYANAN KEPABEANAN DAN CUKAI IV', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(10, 'KEPALA SEKSI PELAYANAN KEPABEANAN DAN CUKAI V', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(11, 'KEPALA SEKSI PELAYANAN KEPABEANAN DAN CUKAI VI', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(12, 'KEPALA SEKSI PELAYANAN KEPABEANAN DAN CUKAI VII', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(13, 'KEPALA SEKSI PELAYANAN KEPABEANAN DAN CUKAI VIII', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(14, 'KEPALA SEKSI PELAYANAN KEPABEANAN DAN CUKAI IX', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(15, 'KEPALA SEKSI PENYULUHAN DAN LAYANAN INFORMASI', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(16, 'KEPALA SEKSI KEPATUHAN INTERNAL', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(17, 'KEPALA SEKSI PENGOLAHAN DATA DAN ADMINISTRASI DOKUMEN', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(18, 'PEMERIKSA BEA DAN CUKAI MUDA', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(19, 'KEPALA URUSAN TATA USAHA DAN KEPEGAWAIAN', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(20, 'KEPALA URUSAN KEUANGAN', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(21, 'KEPALA URUSAN RUMAH TANGGA', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(22, 'KEPALA SUBSEKSI INTELIJEN I', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(23, 'KEPALA SUBSEKSI INTELIJEN II', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(24, 'KEPALA SUBSEKSI PENINDAKAN I', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(25, 'KEPALA SUBSEKSI PENINDAKAN II', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(26, 'KEPALA SUBSEKSI PENYIDIKAN DAN BARANG HASIL PENINDAKAN', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(27, 'KEPALA SUBSEKSI SARANA OPERASI', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(28, 'KEPALA SUBSEKSI PENGADMINISTRASIAN MANIFES', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(29, 'KEPALA SUBSEKSI PENGADMINISTRASIAN PEMBERITAHUAN PENGANGKUTAN BARANG', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(30, 'KEPALA SUBSEKSI ADMINISTRASI PENERIMAAN DAN JAMINAN I', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(31, 'KEPALA SUBSEKSI ADMINISTRASI PENERIMAAN DAN JAMINAN II', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(32, 'KEPALA SUBSEKSI ADMINISTRASI PENAGIHAN DAN PENGEMBALIAN I', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(33, 'KEPALA SUBSEKSI ADMINISTRASI PENAGIHAN DAN PENGEMBALIAN II', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(34, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI I', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(35, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI II', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(36, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI III', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(37, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI IV', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(38, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI V', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(39, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI VI', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(40, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI VII', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(41, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI VIII', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(42, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI IX', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(43, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI X', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(44, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XI', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(45, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XII', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(46, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XIII', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(47, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XIV', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(48, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XV', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(49, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XVI', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(50, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XVII', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(51, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XVIII', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(52, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XIX', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(53, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XX', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(54, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXI', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(55, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXII', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(56, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXIII', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(57, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXIV', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(58, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXV', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(59, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXVI', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(60, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXVII', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(61, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXVIII', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(62, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXIX', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(63, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXX', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(64, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXXI', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(65, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXXII', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(66, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXXIII', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(67, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXXIV', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(68, 'KEPALA SUBSEKSI HANGGAR PABEAN DAN CUKAI XXXV', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(69, 'KEPALA SUBSEKSI PENYULUHAN', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(70, 'KEPALA SUBSEKSI LAYANAN INFORMASI', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(71, 'KEPALA SUBSEKSI KEPATUHAN PELAKSANAAN TUGAS PELAYANAN DAN ADMINISTRASI', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(72, 'KEPALA SUBSEKSI KEPATUHAN PELAKSANAAN TUGAS PENGAWASAN', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(73, 'KEPALA SUBSEKSI PENGOLAHAN DATA', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(74, 'KEPALA SUBSEKSI ADMINISTRASI DOKUMEN', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(75, 'PELAKSANA ADMINISTRASI', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(76, 'PELAKSANA PEMERIKSA', '199203162014111002', '2018-01-04 15:42:02');
INSERT INTO `tbjabatan` (`IdJabatan`, `NamaJabatan`, `PtgsRekam`, `WktRekam`) VALUES
	(77, 'PEJABAT FUNGSIONAL PEMERIKSA DOKUMEN', '199203162014111002', '2018-01-04 16:29:22');
/*!40000 ALTER TABLE `tbjabatan` ENABLE KEYS */;

-- membuang struktur untuk table appdashboard.tbkodesurat
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

-- Membuang data untuk tabel appdashboard.tbkodesurat: ~0 rows (lebih kurang)
DELETE FROM `tbkodesurat`;
/*!40000 ALTER TABLE `tbkodesurat` DISABLE KEYS */;
INSERT INTO `tbkodesurat` (`IdKdSurat`, `KdSurat`, `Tahun`, `Nomor`, `PtgsRekam`, `WltRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(1, 'ST', '2018', 31, '199203162014111002', '2018-01-05 14:17:42', '-', '2018-01-16 18:39:01');
/*!40000 ALTER TABLE `tbkodesurat` ENABLE KEYS */;

-- membuang struktur untuk table appdashboard.tbpangkat
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

-- Membuang data untuk tabel appdashboard.tbpangkat: ~13 rows (lebih kurang)
DELETE FROM `tbpangkat`;
/*!40000 ALTER TABLE `tbpangkat` DISABLE KEYS */;
INSERT INTO `tbpangkat` (`IdPangkat`, `KdPangkat`, `Gol`, `Pangkat`, `PtgsRekam`, `WaktuRekam`) VALUES
	(1, 21, 'II/a', 'PENGATUR MUDA', '199203162014111002', '2018-01-04 14:29:47');
INSERT INTO `tbpangkat` (`IdPangkat`, `KdPangkat`, `Gol`, `Pangkat`, `PtgsRekam`, `WaktuRekam`) VALUES
	(2, 22, 'II/b', 'PENGATUR MUDA TK. I', '199203162014111002', '2018-01-04 14:25:38');
INSERT INTO `tbpangkat` (`IdPangkat`, `KdPangkat`, `Gol`, `Pangkat`, `PtgsRekam`, `WaktuRekam`) VALUES
	(3, 23, 'II/c', 'PENGATUR', '199203162014111002', '2018-01-04 14:25:38');
INSERT INTO `tbpangkat` (`IdPangkat`, `KdPangkat`, `Gol`, `Pangkat`, `PtgsRekam`, `WaktuRekam`) VALUES
	(4, 24, 'II/d', 'PENGATUR TK. I', '199203162014111002', '2018-01-04 14:25:38');
INSERT INTO `tbpangkat` (`IdPangkat`, `KdPangkat`, `Gol`, `Pangkat`, `PtgsRekam`, `WaktuRekam`) VALUES
	(5, 31, 'III/a', 'PENATA MUDA', '199203162014111002', '2018-01-04 14:25:38');
INSERT INTO `tbpangkat` (`IdPangkat`, `KdPangkat`, `Gol`, `Pangkat`, `PtgsRekam`, `WaktuRekam`) VALUES
	(6, 32, 'III/b', 'PENATA MUDA TK.I', '199203162014111002', '2018-01-04 14:25:38');
INSERT INTO `tbpangkat` (`IdPangkat`, `KdPangkat`, `Gol`, `Pangkat`, `PtgsRekam`, `WaktuRekam`) VALUES
	(7, 33, 'III/c', 'PENATA', '199203162014111002', '2018-01-04 14:25:38');
INSERT INTO `tbpangkat` (`IdPangkat`, `KdPangkat`, `Gol`, `Pangkat`, `PtgsRekam`, `WaktuRekam`) VALUES
	(8, 34, 'III/d', 'PENATA TK.I', '199203162014111002', '2018-01-04 14:25:38');
INSERT INTO `tbpangkat` (`IdPangkat`, `KdPangkat`, `Gol`, `Pangkat`, `PtgsRekam`, `WaktuRekam`) VALUES
	(9, 41, 'IV/a', 'PEMBINA', '199203162014111002', '2018-01-04 14:25:38');
INSERT INTO `tbpangkat` (`IdPangkat`, `KdPangkat`, `Gol`, `Pangkat`, `PtgsRekam`, `WaktuRekam`) VALUES
	(10, 42, 'IV/b', 'PEMBINA TK.I', '199203162014111002', '2018-01-04 14:25:38');
INSERT INTO `tbpangkat` (`IdPangkat`, `KdPangkat`, `Gol`, `Pangkat`, `PtgsRekam`, `WaktuRekam`) VALUES
	(11, 43, 'IV/c', 'PEMBINA UTAMA MUDA', '199203162014111002', '2018-01-04 14:25:38');
INSERT INTO `tbpangkat` (`IdPangkat`, `KdPangkat`, `Gol`, `Pangkat`, `PtgsRekam`, `WaktuRekam`) VALUES
	(12, 44, 'IV/d', 'PEMBINA UTAMA MADYA', '199203162014111002', '2018-01-04 14:25:38');
INSERT INTO `tbpangkat` (`IdPangkat`, `KdPangkat`, `Gol`, `Pangkat`, `PtgsRekam`, `WaktuRekam`) VALUES
	(13, 45, 'IV/e', 'PEMBINA UTAMA', '199203162014111002', '2018-01-04 14:25:38');
/*!40000 ALTER TABLE `tbpangkat` ENABLE KEYS */;

-- membuang struktur untuk table appdashboard.tbpegawai
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
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel appdashboard.tbpegawai: ~176 rows (lebih kurang)
DELETE FROM `tbpegawai`;
/*!40000 ALTER TABLE `tbpegawai` DISABLE KEYS */;
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(1, '197011141989121001', 'AKHMAD ROFIQ', 42, 1, 3, 1, 'N', '199203162014111002', '2019-04-12 18:17:55', '', '2019-04-12 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(2, '196601011988101001', 'TEGUH YANUWIARSO', 34, 3, 4, 2, 'Y', '199203162014111002', '2019-04-12 18:17:55', '', '2019-04-12 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(3, '197410251996021001', 'BAMBANG PRAYOGA HARYADI', 34, 4, 4, 3, 'Y', '199203162014111002', '2019-04-09 18:17:55', '', '2019-04-09 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(4, '197209301998031004', 'SURYAWAN PRIHATIN', 41, 5, 4, 4, 'Y', '199203162014111002', '2019-03-27 18:17:55', '', '2019-03-27 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(5, '197004231991101001', 'DAVID PURWOSUSILO', 34, 6, 4, 5, 'Y', '199203162014111002', '2019-04-11 18:17:55', '', '2019-04-11 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(6, '196608151991022001', 'NUR ISMOYOWATI', 41, 7, 4, 6, 'Y', '199203162014111002', '2019-03-29 18:17:55', '', '2019-03-29 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(7, '197109141992011001', 'PONTAS OJAHAN ARITONANG', 41, 9, 4, 7, 'Y', '199203162014111002', '2019-03-31 18:17:55', '', '2019-03-31 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(8, '197206291992121001', 'FUNGKI AWALUDIN', 34, 8, 4, 7, 'Y', '199203162014111002', '2019-03-30 18:17:55', '', '2019-03-30 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(9, '197505261999031001', 'GERALD PRAWIRA HASOLOAN', 41, 10, 4, 9, 'Y', '199203162014111002', '2019-04-01 18:17:55', '', '2019-04-01 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(10, '196202251983031004', 'MARLON WONGKAR', 33, 11, 4, 10, 'Y', '199203162014111002', '2019-04-04 18:17:55', '', '2019-04-04 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(11, '196904161996031002', 'HENRY SITORUS', 41, 12, 4, 11, 'Y', '199203162014111002', '2019-04-05 18:17:55', '', '2019-04-05 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(12, '196305021986011001', 'NANANG SUPRIATNA', 34, 13, 4, 12, 'Y', '199203162014111002', '2019-04-06 18:17:55', '', '2019-04-06 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(13, '197112161992011002', 'ANUNG TRIWIBOWO', 34, 14, 4, 13, 'Y', '199203162014111002', '2019-04-07 18:17:55', '', '2019-04-07 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(14, '197309081994021002', 'MULYANA', 34, 15, 4, 14, 'Y', '199203162014111002', '2019-04-03 18:17:55', '', '2019-04-03 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(15, '197501301995031002', 'I GUSTI GDE PERYATNA', 41, 16, 4, 15, 'Y', '199203162014111002', '2019-04-10 18:17:55', '', '2019-04-10 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(16, '196909181989121001', 'SETYO KISWANTO', 33, 17, 4, 16, 'Y', '199203162014111002', '2019-03-28 18:17:55', '', '2019-03-28 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(17, '196310011983031001', 'HERU SUDARYANTO', 34, 18, 4, 17, 'Y', '199203162014111002', '2019-04-08 18:17:55', '', '2019-04-08 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(18, '198306042003122001', 'FITHRI KHAIRANI', 32, 3, 5, 19, 'Y', '199203162014111002', '2019-05-31 18:17:55', '', '2019-05-31 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(19, '197608141999031001', 'ALIWAN LATU HATAPAYO', 32, 3, 5, 20, 'Y', '199203162014111002', '2019-05-29 18:17:55', '', '2019-05-29 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(20, '198204102003121001', 'ARIES FOURISA', 32, 3, 5, 21, 'Y', '199203162014111002', '2019-05-30 18:17:55', '', '2019-05-30 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(21, '197807162003121001', 'AGUNG SAPUTRO', 32, 4, 5, 23, 'Y', '199203162014111002', '2019-05-18 18:17:55', '', '2019-05-18 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(22, '197911232002121003', 'NOPI YORDANES', 32, 4, 5, 24, 'Y', '199203162014111002', '2019-05-25 18:17:55', '', '2019-05-25 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(23, '198311122009011007', 'ANDRI NOVERIANTO', 33, 4, 5, 25, 'Y', '199203162014111002', '2019-05-26 18:17:55', '', '2019-05-26 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(24, '197712191998031001', 'TUMBUR ABARHAM JONATHAN HUTABARAT', 32, 4, 5, 26, 'Y', '199203162014111002', '2019-05-27 18:17:55', '', '2019-05-27 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(25, '197901251998031001', 'MUHAMMAD IHSAN', 32, 4, 5, 27, 'Y', '199203162014111002', '2019-05-28 18:17:55', '', '2019-05-28 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(26, '196308201984031002', 'ALI ZAINAL ABIDIN', 32, 5, 5, 28, 'Y', '199203162014111002', '2019-05-22 18:17:55', '', '2019-05-22 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(27, '197510021997031002', 'FAERUL HAKIM', 33, 5, 5, 29, 'Y', '199203162014111002', '2019-05-23 18:17:55', '', '2019-05-23 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(28, '197712161998031001', 'KURNIAWAN WAHYU HIDAYAT', 32, 6, 5, 30, 'Y', '199203162014111002', '2019-04-16 18:17:55', '', '2019-04-16 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(29, '196301171983031002', 'SURIANO', 32, 6, 5, 31, 'Y', '199203162014111002', '2019-04-17 18:17:55', '', '2019-04-17 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(30, '197908162000011001', 'AGUS KURNIAWAN', 31, 6, 5, 32, 'Y', '199203162014111002', '2019-04-14 18:17:55', '', '2019-04-14 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(32, '198109242000121002', 'FAKHRUL ROZI', 31, 0, 5, 34, 'Y', '199203162014111002', '2019-04-18 18:17:55', '', '2019-04-18 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(33, '197803102003121001', 'DEDI DWUWI RAHMANTO', 32, 0, 5, 35, 'Y', '199203162014111002', '2019-04-19 18:17:55', '', '2019-04-19 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(34, '196901131992031001', 'SLAMET SUBAKTI', 34, 0, 5, 36, 'Y', '199203162014111002', '2019-04-20 18:17:55', '', '2019-04-20 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(35, '197510311998031001', 'HARIS', 32, 0, 5, 37, 'Y', '199203162014111002', '2019-04-21 18:17:55', '', '2019-04-21 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(36, '197901302000011001', 'ADE IRAWAN', 31, 0, 5, 38, 'Y', '199203162014111002', '2019-04-23 18:17:55', '', '2019-04-23 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(37, '198107132002121002', 'ALIMSYAH', 32, 0, 5, 39, 'Y', '199203162014111002', '2019-04-24 18:17:55', '', '2019-04-24 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(38, '198506012007101001', 'FAIQ', 33, 0, 5, 40, 'Y', '199203162014111002', '2019-04-25 18:17:55', '', '2019-04-25 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(39, '197907152003121001', 'SUJIWO BUDIANTO', 32, 0, 5, 41, 'Y', '199203162014111002', '2019-04-26 18:17:55', '', '2019-04-26 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(40, '197911292001121001', 'ADHI CIPTANA', 32, 0, 5, 42, 'Y', '199203162014111002', '2019-04-22 18:17:55', '', '2019-04-22 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(41, '197805021997031002', 'SETIYO WIBOWO', 33, 0, 5, 43, 'Y', '199203162014111002', '2019-04-27 18:17:55', '', '2019-04-27 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(42, '198110192009011011', 'HILTON OKTO S.', 33, 0, 5, 44, 'Y', '199203162014111002', '2019-04-28 18:17:55', '', '2019-04-28 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(43, '197603131997031001', 'DEDY PURNAEDI', 32, 0, 5, 45, 'Y', '199203162014111002', '2019-04-29 18:17:55', '', '2019-04-29 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(44, '197608101996021002', 'GERRY GORDON', 34, 0, 5, 46, 'Y', '199203162014111002', '2019-04-30 18:17:55', '', '2019-04-30 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(45, '196306081987031002', 'SUBARUS', 34, 0, 5, 47, 'Y', '199203162014111002', '2019-05-01 18:17:55', '', '2019-05-01 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(46, '197606011997031001', 'KENTUT BAGUS WIYANA', 32, 0, 5, 48, 'Y', '199203162014111002', '2019-05-03 18:17:55', '', '2019-05-03 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(47, '197408311995021001', 'AHMAD NAUDIN', 34, 0, 5, 49, 'Y', '199203162014111002', '2019-05-04 18:17:55', '', '2019-05-04 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(48, '196208121983031004', 'SELAMAT SUCIPTO', 33, 0, 5, 50, 'Y', '199203162014111002', '2019-05-05 18:17:55', '', '2019-05-05 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(49, '197605121999031003', 'BAMBANG SUHARTONO', 33, 0, 5, 52, 'Y', '199203162014111002', '2019-05-02 18:17:55', '', '2019-05-02 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(50, '197806191999031001', 'SUGENG CAHYONO', 31, 0, 5, 53, 'Y', '199203162014111002', '2019-05-06 18:17:55', '', '2019-05-06 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(51, '196412311991031210', 'IRBAHARUDDIN', 33, 0, 5, 54, 'Y', '199203162014111002', '2019-05-07 18:17:55', '', '2019-05-07 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(52, '197506261997031002', 'SACHRONI', 33, 0, 5, 55, 'Y', '199203162014111002', '2019-05-08 18:17:55', '', '2019-05-08 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(53, '197512301996031001', 'FAJAR TOTO KRISTIANTO', 32, 0, 5, 56, 'Y', '199203162014111002', '2019-05-09 18:17:55', '', '2019-05-09 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(54, '197501181997031001', 'MOH.YUSUF', 32, 0, 5, 57, 'Y', '199203162014111002', '2019-05-10 18:17:55', '', '2019-05-10 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(55, '196412211984031001', 'K. A. H. EFFENDY', 32, 0, 5, 58, 'Y', '199203162014111002', '2019-05-11 18:17:55', '', '2019-05-11 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(56, '196406081991011001', 'WIDYO CAHYONO', 33, 0, 5, 61, 'Y', '199203162014111002', '2019-04-02 18:17:55', '', '2019-04-02 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(57, '198203302003121002', 'F.X. DEWO KUSUMO ADRIYANTO', 34, 0, 5, 63, 'Y', '199203162014111002', '2019-05-12 18:17:55', '', '2019-05-12 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(58, '197702091997031001', 'AKHMAD KUNCORO', 32, 0, 5, 64, 'Y', '199203162014111002', '2019-05-13 18:17:55', '', '2019-05-13 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(59, '197909142002121001', 'LUKMAN NURHAKIM', 32, 0, 5, 65, 'Y', '199203162014111002', '2019-05-14 18:17:55', '', '2019-05-14 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(60, '197804051999031001', 'HUSEN ALISUGI', 32, 0, 5, 66, 'Y', '199203162014111002', '2019-05-15 18:17:55', '', '2019-05-15 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(61, '197706211997031001', 'JOKO RIYANTO', 32, 0, 5, 67, 'Y', '199203162014111002', '2019-05-16 18:17:55', '', '2019-05-16 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(62, '196107081984021001', 'BAMBANG SURYADI', 32, 0, 5, 68, 'Y', '199203162014111002', '2019-05-17 18:17:55', '', '2019-05-17 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(63, '197610131997031002', 'RONI AGUNG A. D.', 32, 16, 5, 70, 'Y', '199203162014111002', '2019-05-21 18:17:55', '', '2019-05-21 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(64, '197005211992031001', 'RISWANTO KURNIAWAN', 32, 17, 5, 71, 'Y', '199203162014111002', '2019-05-19 18:17:55', '', '2019-05-19 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(65, '197812232001121001', 'MAHENDRA DAHOKLORY', 33, 17, 5, 72, 'Y', '199203162014111002', '2019-05-20 18:17:55', '', '2019-05-20 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(66, '197912312003121001', 'DANI LISMANTO', 32, 18, 5, 73, 'Y', '199203162014111002', '2019-05-24 18:17:55', '', '2019-05-24 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(67, '196212311983031023', 'SAFRI', 33, 18, 5, 74, 'Y', '199203162014111002', '2019-04-13 18:17:55', '', '2019-04-13 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(68, '196202021984022001', 'FRANSINA', 34, 0, 7, 75, 'Y', '199203162014111002', '2019-03-22 18:17:55', '', '2019-03-22 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(69, '196104191980031001', 'AMIRUDIN', 32, 0, 7, 75, 'Y', '199203162014111002', '2019-08-21 18:17:55', '', '2019-08-21 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(70, '196012111984031001', 'DJUPRI', 24, 0, 7, 75, 'Y', '199203162014111002', '2019-08-05 18:17:55', '', '2019-08-05 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(71, '196603261990091001', 'ADI SOMA', 24, 3, 7, 75, 'Y', '199203162014111002', '2019-08-20 18:17:55', '', '2019-08-20 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(72, '196205091984031001', 'MURDIJANTO', 33, 0, 7, 76, 'Y', '199203162014111002', '2019-03-21 18:17:55', '', '2019-03-21 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(73, '196205211983032001', 'NURHAIDA TAMBUN', 33, 0, 7, 76, 'Y', '199203162014111002', '2019-03-23 18:17:55', '', '2019-03-23 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(74, '196309121984031002', 'YOSEPH AGUS SETIJONO', 32, 0, 7, 76, 'Y', '199203162014111002', '2019-03-18 18:17:55', '', '2019-03-18 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(75, '196106071983031002', 'LISMAN TAMBUNAN', 32, 0, 7, 76, 'Y', '199203162014111002', '2019-03-19 18:17:55', '', '2019-03-19 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(76, '196206061983032001', 'SUHARNI', 32, 0, 7, 76, 'Y', '199203162014111002', '2019-03-20 18:17:55', '', '2019-03-20 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(77, '197904042003122001', 'WIDIYA ARYANI', 32, 0, 7, 76, 'Y', '199203162014111002', '2019-03-24 18:17:55', '', '2019-03-24 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(78, '196611141992031001', 'HARLAN', 32, 0, 7, 76, 'Y', '199203162014111002', '2019-08-16 18:17:55', '', '2019-08-16 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(79, '196107241984031001', 'SUDIYONO', 32, 0, 7, 76, 'Y', '199203162014111002', '2019-08-17 18:17:55', '', '2019-08-17 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(80, '198207112001121001', 'RADITYA KURNIAWAN', 31, 16, 7, 76, 'Y', '199203162014111002', '2019-06-14 18:17:55', '', '2019-06-14 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(81, '198108102002121004', 'SUHARIYANTO', 31, 18, 7, 76, 'Y', '199203162014111002', '2019-06-16 18:17:55', '', '2019-06-16 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(82, '198510052004121004', 'MUHAMMAD ROYHAN', 31, 0, 7, 76, 'Y', '199203162014111002', '2019-07-29 18:17:55', '', '2019-07-29 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(83, '197904182000121002', 'RIDWANSYAH', 31, 0, 7, 76, 'Y', '199203162014111002', '2019-07-31 18:17:55', '', '2019-07-31 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(84, '197910071999031002', 'FAHRULI ANSYARI', 31, 0, 7, 76, 'Y', '199203162014111002', '2019-08-15 18:17:55', '', '2019-08-15 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(85, '198202242001121001', 'FAISAL', 31, 4, 7, 76, 'Y', '199203162014111002', '2019-08-18 18:17:55', '', '2019-08-18 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(86, '197807121999031001', 'MUZAKKAR', 31, 4, 7, 76, 'Y', '199203162014111002', '2019-08-19 18:17:55', '', '2019-08-19 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(87, '198112252001121001', 'IRFAN PURWANTO', 31, 0, 7, 76, 'Y', '199203162014111002', '2019-09-02 18:17:55', '', '2019-09-02 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(88, '198307302003121006', 'SRIYANTO', 24, 3, 7, 76, 'Y', '199203162014111002', '2019-06-01 18:17:55', '', '2019-06-01 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(89, '198108112003121001', 'M. RUSDI SALAM', 24, 16, 7, 76, 'Y', '199203162014111002', '2019-06-15 18:17:55', '', '2019-06-15 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(90, '198501232003122001', 'MUKTININGSIH', 24, 0, 7, 76, 'Y', '199203162014111002', '2019-07-30 18:17:55', '', '2019-07-30 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(91, '198309102004121001', 'YEREMIA GEA', 24, 0, 7, 76, 'Y', '199203162014111002', '2019-08-01 18:17:55', '', '2019-08-01 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(92, '198503062007011001', 'MIKAIL DWI MARTANTO', 24, 5, 7, 76, 'Y', '199203162014111002', '2019-08-02 18:17:55', '', '2019-08-02 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(93, '198303182004121001', 'ADIL SELAMAT ZEBUA', 24, 0, 7, 76, 'Y', '199203162014111002', '2019-08-03 18:17:55', '', '2019-08-03 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(94, '198711262007101005', 'HEDRON PANDAPOTAN BANJARNAHOR', 24, 7, 7, 76, 'Y', '199203162014111002', '2019-08-04 18:17:55', '', '2019-08-04 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(95, '198607222006021002', 'DODY SETIA PERDANA', 24, 0, 7, 76, 'Y', '199203162014111002', '2019-08-06 18:17:55', '', '2019-08-06 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(96, '198407082003121001', 'DEDE KADINA', 24, 0, 7, 76, 'Y', '199203162014111002', '2019-08-07 18:17:55', '', '2019-08-07 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(97, '198504072004121002', 'MUHAMMAD AFRIZAL', 24, 0, 7, 76, 'Y', '199203162014111002', '2019-08-08 18:17:55', '', '2019-08-08 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(98, '196703091990121001', 'RACHMAN', 24, 0, 7, 76, 'Y', '199203162014111002', '2019-08-09 18:17:55', '', '2019-08-09 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(99, '197710182003121002', 'FERDIAN', 24, 5, 7, 76, 'Y', '199203162014111002', '2019-08-10 18:17:55', '', '2019-08-10 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(100, '198908232010121004', 'DAVID CHRISMANTO MARPAUNG', 24, 0, 7, 76, 'Y', '199203162014111002', '2019-08-11 18:17:55', '', '2019-08-11 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(101, '198402252004121004', 'FERDY MUHAMMAD HATTA', 24, 0, 7, 76, 'Y', '199203162014111002', '2019-08-12 18:17:55', '', '2019-08-12 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(102, '198306202004121001', 'FACHRIZAL', 24, 0, 7, 76, 'Y', '199203162014111002', '2019-08-13 18:17:55', '', '2019-08-13 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(103, '198404052004121001', 'FRADIKA YOAN NURHENDRA', 24, 7, 7, 76, 'Y', '199203162014111002', '2019-08-14 18:17:55', '', '2019-08-14 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(104, '197708152003122001', 'EVELIN HENI AGUSTINA', 24, 0, 7, 76, 'Y', '199203162014111002', '2019-08-24 18:17:55', '', '2019-08-24 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(105, '198312232003121007', 'DENI GUNAWAN', 24, 0, 7, 76, 'Y', '199203162014111002', '2019-08-25 18:17:55', '', '2019-08-25 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(106, '198202102003121002', 'ADANG', 24, 0, 7, 76, 'Y', '199203162014111002', '2019-08-26 18:17:55', '', '2019-08-26 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(107, '198403252006041009', 'LISUMARNO', 24, 7, 7, 76, 'Y', '199203162014111002', '2019-08-27 18:17:55', '', '2019-08-27 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(108, '198307162002121002', 'ANDI MUHAMMAD HENDRA WIRAHADIKUSUMA', 24, 14, 7, 76, 'Y', '199203162014111002', '2019-08-30 18:17:55', '', '2019-08-30 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(109, '198207092006042027', 'DINI HARDI', 24, 8, 7, 76, 'Y', '199203162014111002', '2019-08-31 18:17:55', '', '2019-08-31 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(110, '198812072007101001', 'FAHRI ARI KURNIAWAN', 24, 4, 7, 76, 'Y', '199203162014111002', '2019-09-03 18:17:55', '', '2019-09-03 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(111, '198606042006021002', 'AHMAD WAHYU HIDAYAT', 24, 7, 7, 76, 'Y', '199203162014111002', '2019-09-04 18:17:55', '', '2019-09-04 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(112, '198112082003121002', 'ANDI CHAKRA SESSU', 24, 0, 7, 76, 'Y', '199203162014111002', '2019-09-05 18:17:55', '', '2019-09-05 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(113, '198002212001121002', 'ARIF WICAKSONO', 24, 4, 7, 76, 'Y', '199203162014111002', '2019-09-08 18:17:55', '', '2019-09-08 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(114, '198412072006021003', 'ANTOK SUDARMAWAN', 24, 7, 7, 76, 'Y', '199203162014111002', '2019-09-09 18:17:55', '', '2019-09-09 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(115, '199107232010121002', 'ALLAMASKI MOCHAMMAD', 23, 4, 7, 76, 'Y', '199203162014111002', '2019-06-26 18:17:55', '', '2019-06-26 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(116, '198910082008121001', 'DIVO PRATAMA HISKIA', 23, 17, 7, 76, 'Y', '199203162014111002', '2019-07-21 18:17:55', '', '2019-07-21 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(117, '198902282009121003', 'TARIS MAFAZI', 23, 4, 7, 76, 'Y', '199203162014111002', '2019-07-23 18:17:55', '', '2019-07-23 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(118, '199702102018011003', 'M. NUGRAHA', 23, 3, 7, 76, 'Y', '199203162014111002', '2019-07-28 18:17:55', '', '2019-07-28 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(119, '198801272007011003', 'WENDY JANUARSYAH', 23, 7, 7, 76, 'Y', '199203162014111002', '2019-08-22 18:17:55', '', '2019-08-22 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(120, '199010082010011002', 'TEGUH TRICAHYO', 23, 0, 7, 76, 'Y', '199203162014111002', '2019-08-23 18:17:55', '', '2019-08-23 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(121, '199205142014111002', 'GINANJAR ADIBOWO', 23, 9, 7, 76, 'Y', '199203162014111002', '2019-08-28 18:17:55', '', '2019-08-28 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(122, '199101252010011001', 'CARRY MARTUA BUSH', 23, 0, 7, 76, 'Y', '199203162014111002', '2019-08-29 18:17:55', '', '2019-08-29 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(123, '198712262007011003', 'ROY TRIE SAPUTRA', 23, 11, 7, 76, 'Y', '199203162014111002', '2019-09-01 18:17:55', '', '2019-09-01 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(124, '199202282014111001', 'YOHANES GURACI RADITE', 23, 4, 7, 76, 'Y', '199203162014111002', '2019-09-06 18:17:55', '', '2019-09-06 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(125, '199203162014111002', 'FITHORIQIL AZZIZ', 23, 4, 5, 76, 'Y', '199203162014111002', '2019-09-07 18:17:55', '', '2019-03-25 08:35:30');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(126, '199212232013101003', 'AINUL YAQIN', 22, 0, 7, 76, 'Y', '199203162014111002', '2019-06-02 18:17:55', '', '2019-06-02 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(127, '199208112013101001', 'ROBERTON', 22, 0, 7, 76, 'Y', '199203162014111002', '2019-06-25 18:17:55', '', '2019-06-25 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(128, '199402172013101001', 'RAVI RAKA FELANI', 22, 4, 7, 76, 'Y', '199203162014111002', '2019-07-01 18:17:55', '', '2019-07-01 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(129, '199308042013101002', 'ANDIKA HIKMAN FAHRURROZI', 22, 3, 7, 76, 'Y', '199203162014111002', '2019-07-06 18:17:55', '', '2019-07-06 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(130, '199110302010121001', 'RIZKI SYAIFUL ANNAS', 22, 18, 7, 76, 'Y', '199203162014111002', '2019-07-16 18:17:55', '', '2019-07-16 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(131, '199209302012101001', 'LUKAS PATTRICK HUTAJULU', 22, 18, 7, 76, 'Y', '199203162014111002', '2019-07-17 18:17:55', '', '2019-07-17 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(132, '199204252012101001', 'WAHYU SUBIANTORO', 22, 3, 7, 76, 'Y', '199203162014111002', '2019-07-18 18:17:55', '', '2019-07-18 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(133, '199212152012101001', 'DANIEL ANDREO SIAGIAN', 22, 6, 7, 76, 'Y', '199203162014111002', '2019-07-19 18:17:55', '', '2019-07-19 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(134, '199010132012101001', 'IKHSAN BARESI', 22, 7, 7, 76, 'Y', '199203162014111002', '2019-07-20 18:17:55', '', '2019-07-20 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(135, '199204022012101001', 'FAJAR NUGROHO BAGUS PANUNTUN', 22, 5, 7, 76, 'Y', '199203162014111002', '2019-07-22 18:17:55', '', '2019-07-22 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(136, '199511082015021001', 'ADHITYA REZA MULIA', 21, 6, 7, 76, 'Y', '199203162014111002', '2019-03-25 18:17:55', '', '2019-03-25 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(137, '199410192015021001', 'MUCHAMMAD DWI SATOTO NUGROHO', 21, 3, 7, 76, 'Y', '199203162014111002', '2019-03-26 18:17:55', '', '2019-03-26 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(138, '199609052015022001', 'ALTI HARDIANTI', 21, 7, 7, 76, 'Y', '199203162014111002', '2019-06-03 18:17:55', '', '2019-06-03 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(139, '199411082015021002', 'IAN WIGRHA NUGRAHA', 21, 7, 7, 76, 'Y', '199203162014111002', '2019-06-04 18:17:55', '', '2019-06-04 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(140, '199505102015021003', 'BASIT NUGROHO', 21, 7, 7, 76, 'Y', '199203162014111002', '2019-06-05 18:17:55', '', '2019-06-05 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(141, '199408092015022002', 'HANIK UMMU SULAIM', 21, 3, 7, 76, 'Y', '199203162014111002', '2019-06-06 18:17:55', '', '2019-06-06 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(142, '199510182015021002', 'ARYADIKA SURYA CALVIN', 21, 3, 7, 76, 'Y', '199203162014111002', '2019-06-07 18:17:55', '', '2019-06-07 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(143, '199510262015022001', 'DINDA GITHA OKTAVIANI', 21, 15, 7, 76, 'Y', '199203162014111002', '2019-06-17 18:17:55', '', '2019-06-17 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(144, '199506012015021002', 'MOCHAMMAD FADHIL FAHRIZA', 21, 3, 7, 76, 'Y', '199203162014111002', '2019-06-18 18:17:55', '', '2019-06-18 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(145, '199508222015021004', 'MUHAMMAD TEGUH ISMAEL', 21, 18, 7, 76, 'Y', '199203162014111002', '2019-06-19 18:17:55', '', '2019-06-19 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(146, '199508202015021005', 'NURMAWAN AGUS', 21, 7, 7, 76, 'Y', '199203162014111002', '2019-06-20 18:17:55', '', '2019-06-20 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(147, '199410282015021002', 'BENY SUBARJA', 21, 13, 7, 76, 'Y', '199203162014111002', '2019-06-21 18:17:55', '', '2019-06-21 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(148, '199508092015021003', 'IKHWAN ANSHORI', 21, 18, 7, 76, 'Y', '199203162014111002', '2019-06-22 18:17:55', '', '2019-06-22 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(149, '199310232015021001', 'DHENY DEWA PUTRA', 21, 17, 7, 76, 'Y', '199203162014111002', '2019-06-23 18:17:55', '', '2019-06-23 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(150, '199502112015022001', 'SABRINA LATIFA', 21, 6, 7, 76, 'Y', '199203162014111002', '2019-06-24 18:17:55', '', '2019-06-24 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(151, '199404062015022001', 'ADDINA FILWA PUTRI', 21, 17, 7, 76, 'Y', '199203162014111002', '2019-06-27 18:17:55', '', '2019-06-27 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(152, '199505262015022002', 'MEIDA ANISSA PUTRI', 21, 3, 7, 76, 'Y', '199203162014111002', '2019-06-28 18:17:55', '', '2019-06-28 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(153, '199502012015021003', 'DIMAS ARIF FEBRIYANTO', 21, 5, 7, 76, 'Y', '199203162014111002', '2019-06-29 18:17:55', '', '2019-06-29 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(154, '199507262015021003', 'HAMMAM YUDANTO', 21, 3, 7, 76, 'Y', '199203162014111002', '2019-06-30 18:17:55', '', '2019-06-30 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(155, '199502112015022003', 'DINY AULIA PRADIZA', 21, 16, 7, 76, 'Y', '199203162014111002', '2019-07-02 18:17:55', '', '2019-07-02 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(156, '199506152015021001', 'DODY FIRMANSAH SETYO BUDI', 21, 4, 7, 76, 'Y', '199203162014111002', '2019-07-03 18:17:55', '', '2019-07-03 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(157, '199404182015021002', 'RIZKY ERVANTO SULISTYO', 21, 3, 7, 76, 'Y', '199203162014111002', '2019-07-04 18:17:55', '', '2019-07-04 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(158, '199508132015022001', 'VEGA AGAYANTRI SISWANDI', 21, 3, 7, 76, 'Y', '199203162014111002', '2019-07-05 18:17:55', '', '2019-07-05 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(159, '199411182015021002', 'ANDI RIZKI SAPUTRA', 21, 3, 7, 76, 'Y', '199203162014111002', '2019-07-07 18:17:55', '', '2019-07-07 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(160, '199412212015021006', 'MUHAMMAD ROSYID RIDHO', 21, 3, 7, 76, 'Y', '199203162014111002', '2019-07-08 18:17:55', '', '2019-07-08 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(161, '199409192015022001', 'FRANSISCA ARUM MAHARANI', 21, 17, 7, 76, 'Y', '199203162014111002', '2019-07-09 18:17:55', '', '2019-07-09 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(162, '199604132015021001', 'IMAM AFLAH RAFIF', 21, 3, 7, 76, 'Y', '199203162014111002', '2019-07-10 18:17:55', '', '2019-07-10 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(163, '199603082015122002', 'INDRI KRISTIYASTUTI UTAMI', 21, 16, 7, 76, 'Y', '199203162014111002', '2019-07-11 18:17:55', '', '2019-07-11 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(164, '199510022015021007', 'MUHAMMAD FARIZ ZULFIKAR', 21, 7, 7, 76, 'Y', '199203162014111002', '2019-07-12 18:17:55', '', '2019-07-12 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(165, '199512172015122001', 'SUKMANING AYU DWITAMAWATI', 21, 6, 7, 76, 'Y', '199203162014111002', '2019-07-13 18:17:55', '', '2019-07-13 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(166, '199411202015122001', 'NOVI SETYOWATI', 21, 3, 7, 76, 'Y', '199203162014111002', '2019-07-14 18:17:55', '', '2019-07-14 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(167, '199601192015122001', 'LILI ANDRIYANI', 21, 3, 7, 76, 'Y', '199203162014111002', '2019-07-15 18:17:55', '', '2019-07-15 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(168, '199811072018011001', 'HASAN SUHARDIMAN', 21, 18, 7, 76, 'Y', '199203162014111002', '2019-07-24 18:17:55', '', '2019-07-24 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(169, '199809022018011002', 'AKHMAD FARKHAN BAKHTIAR', 21, 6, 7, 76, 'Y', '199203162014111002', '2019-07-25 18:17:55', '', '2019-07-25 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(170, '199702062018011001', 'RAMDANI FEBRIANSYAH', 21, 16, 7, 76, 'Y', '199203162014111002', '2019-07-26 18:17:55', '', '2019-07-26 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(171, '199805312018011002', 'MUHAMMAD ILHAM FATAHILLAH', 21, 4, 7, 76, 'Y', '199203162014111002', '2019-07-27 18:17:55', '', '2019-07-27 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(172, '197807162000121001', 'YUDI HASNAWAN', 34, 2, 6, 77, 'Y', '199203162014111002', '2019-06-08 18:17:55', '', '2019-06-08 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(173, '197412021995032001', 'RHENA DESANTI', 34, 2, 6, 77, 'Y', '199203162014111002', '2019-06-11 18:17:55', '', '2019-06-11 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(174, '197208011993021001', 'GUSTIN BUDIARSAH', 33, 2, 6, 77, 'Y', '199203162014111002', '2019-06-09 18:17:55', '', '2019-06-09 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(175, '198110272001121001', 'SULIS DWI YANTONI', 33, 2, 6, 77, 'Y', '199203162014111002', '2019-06-10 18:17:55', '', '2019-06-10 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(176, '197210081992121001', 'ARIEF RISDIYANTO', 33, 2, 6, 77, 'Y', '199203162014111002', '2019-06-12 18:17:55', '', '2019-06-12 18:17:55');
INSERT INTO `tbpegawai` (`IdPegawai`, `NIPPegawai`, `NamaPegawai`, `GolPegawai`, `SeksiPegawai`, `Eselon`, `JabatanPegawai`, `Status`, `PtgsRekam`, `WaktuRekam`, `PtgsUpdate`, `WaktuUpdate`) VALUES
	(177, '197308101993011001', 'SULISTYA NUGRAHA', 33, 2, 6, 77, 'Y', '199203162014111002', '2019-06-13 18:17:55', '', '2019-06-13 18:17:55');
/*!40000 ALTER TABLE `tbpegawai` ENABLE KEYS */;

-- membuang struktur untuk table appdashboard.tbpegawaist
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

-- Membuang data untuk tabel appdashboard.tbpegawaist: ~10 rows (lebih kurang)
DELETE FROM `tbpegawaist`;
/*!40000 ALTER TABLE `tbpegawaist` DISABLE KEYS */;
INSERT INTO `tbpegawaist` (`Id`, `NIP`, `IdSurat`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(11, '196310011983031001', 5, '199203162014111002', '2018-01-09 17:09:25', '', '2018-01-09 17:09:25');
INSERT INTO `tbpegawaist` (`Id`, `NIP`, `IdSurat`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(12, '199508222015021004', 5, '199203162014111002', '2018-01-09 17:09:25', '', '2018-01-09 17:09:25');
INSERT INTO `tbpegawaist` (`Id`, `NIP`, `IdSurat`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(13, '197011141989121001', 6, '199203162014111002', '2018-01-11 17:59:48', '', '2018-01-11 17:59:48');
INSERT INTO `tbpegawaist` (`Id`, `NIP`, `IdSurat`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(14, '196601011988101001', 6, '199203162014111002', '2018-01-11 17:59:48', '', '2018-01-11 17:59:48');
INSERT INTO `tbpegawaist` (`Id`, `NIP`, `IdSurat`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(15, '197410251996021001', 6, '199203162014111002', '2018-01-11 17:59:48', '', '2018-01-11 17:59:48');
INSERT INTO `tbpegawaist` (`Id`, `NIP`, `IdSurat`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(16, '196912141990121002', 6, '199203162014111002', '2018-01-11 17:59:48', '', '2018-01-11 17:59:48');
INSERT INTO `tbpegawaist` (`Id`, `NIP`, `IdSurat`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(17, '199507262015021003', 6, '199203162014111002', '2018-01-11 17:59:48', '', '2018-01-11 17:59:48');
INSERT INTO `tbpegawaist` (`Id`, `NIP`, `IdSurat`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(18, '197011141989121001', 7, '199203162014111002', '2018-01-16 18:39:01', '', '2018-01-16 18:39:01');
INSERT INTO `tbpegawaist` (`Id`, `NIP`, `IdSurat`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(19, '196601011988101001', 7, '199203162014111002', '2018-01-16 18:39:01', '', '2018-01-16 18:39:01');
INSERT INTO `tbpegawaist` (`Id`, `NIP`, `IdSurat`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(20, '197410251996021001', 7, '199203162014111002', '2018-01-16 18:39:01', '', '2018-01-16 18:39:01');
/*!40000 ALTER TABLE `tbpegawaist` ENABLE KEYS */;

-- membuang struktur untuk view appdashboard.tbpegawai_detail
DROP VIEW IF EXISTS `tbpegawai_detail`;
-- Membuat tabel sementara untuk menangani kesalahan ketergantungan VIEW
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

-- membuang struktur untuk table appdashboard.tbseksi
DROP TABLE IF EXISTS `tbseksi`;
CREATE TABLE IF NOT EXISTS `tbseksi` (
  `IdSeksi` int(11) NOT NULL AUTO_INCREMENT,
  `KdUnit` varchar(20) NOT NULL DEFAULT '0',
  `NmUnit` varchar(80) NOT NULL DEFAULT '0',
  `PtgsRekam` varchar(18) NOT NULL DEFAULT '0',
  `WktRekam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdSeksi`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel appdashboard.tbseksi: ~18 rows (lebih kurang)
DELETE FROM `tbseksi`;
/*!40000 ALTER TABLE `tbseksi` DISABLE KEYS */;
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(1, 'KPP.MP.07', 'KEPALA KANTOR', '199203162014111002', '2018-01-04 16:17:48');
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(2, 'KPP.MP.0700', 'FUNGSIONAL', '199203162014111002', '2018-01-04 16:17:48');
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(3, 'KPP.MP.0701', 'SUBBAGIAN UMUM', '199203162014111002', '2018-01-04 16:17:48');
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(4, 'KPP.MP.0702', 'SEKSI PENINDAKAN DAN PENYIDIKAN', '199203162014111002', '2018-01-04 16:17:48');
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(5, 'KPP.MP.0703', 'SEKSI ADMINISTRASI MANIFES', '199203162014111002', '2018-01-04 16:17:48');
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(6, 'KPP.MP.0704', 'SEKSI PERBENDAHARAAN', '199203162014111002', '2018-01-04 16:17:48');
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(7, 'KPP.MP.0705', 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI I', '199203162014111002', '2018-01-04 16:17:48');
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(8, 'KPP.MP.0706', 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI II', '199203162014111002', '2018-01-04 16:17:48');
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(9, 'KPP.MP.0707', 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI III', '199203162014111002', '2018-01-04 16:17:48');
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(10, 'KPP.MP.0708', 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI IV', '199203162014111002', '2018-01-04 16:17:48');
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(11, 'KPP.MP.0709', 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI V', '199203162014111002', '2018-01-04 16:17:48');
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(12, 'KPP.MP.0710', 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI VI', '199203162014111002', '2018-01-04 16:17:48');
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(13, 'KPP.MP.0711', 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI VII', '199203162014111002', '2018-01-04 16:17:48');
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(14, 'KPP.MP.0712', 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI VIII', '199203162014111002', '2018-01-04 16:17:48');
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(15, 'KPP.MP.0713', 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI IX', '199203162014111002', '2018-01-04 16:17:48');
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(16, 'KPP.MP.0714', 'SEKSI PENYULUHAN DAN LAYANAN INFORMASI', '199203162014111002', '2018-01-04 16:17:48');
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(17, 'KPP.MP.0715', 'SEKSI KEPATUHAN INTERNAL', '199203162014111002', '2018-01-04 16:17:48');
INSERT INTO `tbseksi` (`IdSeksi`, `KdUnit`, `NmUnit`, `PtgsRekam`, `WktRekam`) VALUES
	(18, 'KPP.MP.0716', 'SEKSI PENGOLAHAN DATA DAN ADMINISTRASI DOKUMEN', '199203162014111002', '2018-01-04 16:17:48');
/*!40000 ALTER TABLE `tbseksi` ENABLE KEYS */;

-- membuang struktur untuk table appdashboard.tbsurat
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

-- Membuang data untuk tabel appdashboard.tbsurat: ~3 rows (lebih kurang)
DELETE FROM `tbsurat`;
/*!40000 ALTER TABLE `tbsurat` DISABLE KEYS */;
INSERT INTO `tbsurat` (`IdSurat`, `KdSurat`, `NmrSurat`, `TglSurat`, `Tujuan`, `Perihal`, `TglMulai`, `TglSelesai`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(5, 1, 28, '2018-01-09', '213', '132', '2018-01-09', '2018-01-09', '199203162014111002', '2018-01-09 17:09:25', '', NULL);
INSERT INTO `tbsurat` (`IdSurat`, `KdSurat`, `NmrSurat`, `TglSurat`, `Tujuan`, `Perihal`, `TglMulai`, `TglSelesai`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(6, 1, 29, '2018-01-11', 'Jakarta', 'Menghadiri Rapat Koordinasi Pengawasan', '2018-01-11', '2018-01-12', '199203162014111002', '2018-01-11 17:59:48', '', NULL);
INSERT INTO `tbsurat` (`IdSurat`, `KdSurat`, `NmrSurat`, `TglSurat`, `Tujuan`, `Perihal`, `TglMulai`, `TglSelesai`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(7, 1, 30, '2018-01-16', 'BANDUNG', 'RAKORWAS', '2018-01-02', '2018-01-18', '', '2018-01-16 18:39:01', '', NULL);
/*!40000 ALTER TABLE `tbsurat` ENABLE KEYS */;

-- membuang struktur untuk table appdashboard.tbuser
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel appdashboard.tbuser: ~45 rows (lebih kurang)
DELETE FROM `tbuser`;
/*!40000 ALTER TABLE `tbuser` DISABLE KEYS */;
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(1, '199203162014111002', 'fithoriqil.azziz', '$2y$09$AfdiODddZMgUENeBp5HN9ezumFFgL1UHwXpdcTbBBgxI.PegE37bW', 1, '2018-09-27 21:21:04', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(16, '197011141989121001', 'akhmad.rofiq', '$2y$09$NVYSpBkXvUqPnitdCiX3W.m/W0.2u0oIyPU18i0R1SeRYJHe1T9Jy', 3, '2019-03-18 18:17:55', '199203162014111002', 'N');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(17, '199502112015022001', 'sabrina.latifa', '$2y$09$tDtnbklU6UdVIe20cEwv8uqTgwyANvF.KeS.FmI.gSWa3Ybrojgp.', 7, '2018-01-19 23:54:39', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(18, '199402172013101001', 'ravi.raka felani', '$2y$09$p4ydzxaJzgmmlosZEsHw/OZBzN.HFVhJ89qB2pkAq6x3udoIVTQFe', 5, '2018-01-23 17:46:22', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(19, '199202282014111001', 'yohanes.guraci', '$2y$09$sJlxxR/JYr8VS5RFn1agh.TqDzsKDDBXZeXuf64WWlmjNs4KndsYe', 5, '2018-01-24 17:12:31', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(20, '197807162003121001', 'agung.saputro', '$2y$09$2pbHmNIDis.MYKe9Gvp/lOckzlMRpIvmYgQ32umGexmvNNmWz.XuC', 5, '2018-01-24 17:12:50', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(22, '197807121999031001', 'muzakkar', '$2y$09$zJbUgmXpLYBIY23MUdvsEeSGaR.5oYHDIihbQilmeWN7Y614IBKaC', 5, '2018-01-24 17:13:27', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(23, '199506152015021001', 'dody.firmansah', '$2y$09$pEehomNyHhHJCvK8BebeLegqDdwl4RCmKaKvfjL5cbjE61qybpbJK', 5, '2018-01-24 17:13:50', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(24, '198202242001121001', 'faisal', '$2y$09$74M4cHhojkwNS0Jt.3jhGugGKZiuQzZdHWUUtm2EjX7/5rA0vInI2', 5, '2018-01-24 17:14:05', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(26, '199411202015122001', 'novi.setyowati', '$2y$09$uTDEnJcKKzizH5GTj2EL6.E2yc7iGsD1D4IoJD8DUNvhHbB4NVHiK', 12, '2018-02-21 02:59:58', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(27, '198606042006021002', 'ahmad.wahyu', '$2y$09$HB4Xen1zXNm/xAN8KeqvA.4wkZKw9vSUKcWgAHoEl/ERtUbyj3vFm', 5, '2018-10-02 22:06:50', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(29, '199107232010121002', 'allamaski.mochammad', '$2y$09$qiKppoR3tiSGkiMEj0QfJOWbTGHM.GF00oUH6Kxyl2iv7Qsg01NdW', 4, '2019-01-14 20:36:12', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(30, '197806191999031001', 'sugeng.cahyono', '$2y$09$h97xCdpiIC.Xer7uFv2ju.z9epbZSk8jV/TfW1UHY8Cvts2faT6.C', 12, '2019-03-26 08:32:18', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(31, '197206291992121001', 'fungki.awaludin', '$2y$09$LLilcw97sDhlk7GF99E3F.YywOurphkSgtAMAb7jtWh4.cTyk8f12', 6, '2019-03-18 20:36:24', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(32, '198109242000121002', 'fakhrul.rozi', '$2y$09$MlKUEm2KXCh.RG03Zj0zlukmO1bZ6T/zribOZnx93kaLLbIaPdyUy', 12, '2019-03-21 09:13:00', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(33, '197109141992011001', 'pontas.ojahan aritonang', '$2y$09$kre9g31N6myLzC46JODAUOJtbyg9JL4UyUVNnURYucPHPMib1tj0C', 6, '2019-03-21 09:28:53', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(34, '197512301996031001', 'fajar.toto kristianto', '$2y$09$mtBr9sluaPQPYy0QJM3nt.8y9yZTg3pQMk4uG6UVkaz/r9UVrZckO', 12, '2019-03-25 08:13:36', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(35, '197603131997031001', 'dedy.purnaedi', '$2y$09$iwFiv6aPtNRxQF8DG5tHMef4MQ.tiFr9aYGavZAhDP5m6nO2G87QK', 12, '2019-03-25 08:14:44', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(36, '197606011997031001', 'kentut.bagus', '$2y$09$ZF84ao2TK6K8x6KUksbLV.kINMlZZnr9/HGyDtuy0hPw1rR6B2JSi', 12, '2019-03-25 08:15:02', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(37, '196306081987031002', 'subarus', '$2y$09$YkRKt64W93xpeKN/BJgaW.wq2.kp5Wv1LcKGQ9kKFD1nIctJMoRVe', 12, '2019-03-25 08:15:14', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(38, '198110192009011011', 'hilton.okto', '$2y$09$N1Bv2uuPk41.9DGVO84VCur36pukj4qHMcWzNH/2d2CC5ob/yoHkO', 12, '2019-03-25 08:15:33', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(39, '197506261997031002', 'sachroni', '$2y$09$Znp3ibXSRVAmQ6ilUZDy6uKRlLecu14LTOZVhgjJqv0FQYcTNixmm', 12, '2019-03-25 08:15:50', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(40, '197408311995021001', 'ahmad.naudin', '$2y$09$AdLPJeltJ/mJ9JgFNISsw.x8OEstFXh4Fltl5qdvPmTWh.ETKnEvi', 12, '2019-03-25 08:16:15', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(41, '197805021997031002', 'setiyo.wibowo', '$2y$09$dh5FRPWhGel.38EwjnmrUuFgT/IgGHK3T.F/sNxmWkGl2IQ1Oa2Cy', 12, '2019-03-25 08:16:31', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(42, '196412311991031210', 'irbaharuddin', '$2y$09$mDIHk2oxkiUL6ZXlmDbTxuOgMnm4X8A/iSBfKr5bmjHpIeDi0XfE2', 12, '2019-03-25 08:16:48', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(43, '198203302003121002', 'dewo.kusumo', '$2y$09$eRIiKoTSqlCEOeGS3.R8qOD6DaohTTfPRDirNsFVNaZk9RXM1VsUW', 12, '2019-03-25 08:17:13', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(44, '197911292001121001', 'adhi.ciptana', '$2y$09$za63M.c1ehhF..VK9IvkQeZWq9WlbXUh1qp9GOfq0FxAwJOAvQ2tS', 12, '2019-03-25 08:17:32', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(45, '197702091997031001', 'akhmad.kuncoro', '$2y$09$lB0V/LUX3QPDZupqZqwbO.UfXAFV/u8./2urlkmED8RkDzWveDhhW', 12, '2019-03-25 08:17:51', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(46, '196406081991011001', 'widyo.cahyono', '$2y$09$ne0yPCDIa6lUxdEwvvC1uuyouHk1KK64NFgJs3Z7sYmzG3cBq8vke', 12, '2019-03-25 08:18:12', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(47, '197803102003121001', 'dedi.dwuwi', '$2y$09$l.9WePrEUtUI6zQ9qauQmeHVh3IzrDF9/vz9/xbSwZISYKE8dm34.', 12, '2019-03-25 08:18:31', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(48, '197901302000011001', 'ade.irawan', '$2y$09$NPsaf8KtsZzXUzoL5Y2jqOHnshn37ohxPY3eHl5a89i1qZYLPAdbe', 12, '2019-03-25 08:18:44', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(49, '197907152003121001', 'sujiwo.budianto', '$2y$09$G9XtfFBz23jgEd9yNibnJu.60qc6AbMXrEkHrNbRXb3P5g9ggnPjW', 12, '2019-03-25 08:18:59', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(51, '198107132002121002', 'alimsyah', '$2y$09$VYYI.CaIi/ogAV5FqseGPuT/FIc9VgkLfvazbO/bS195wnDudwn2S', 12, '2019-03-25 08:19:50', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(52, '197909142002121001', 'lukman.nurhakim', '$2y$09$jKcOxX/8nEAyf0TC3XOo4uM4keKmYMCi9sSVWjJMrtjmNxUfrnhZm', 12, '2019-03-25 08:20:06', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(53, '197501181997031001', 'moh.yusuf', '$2y$09$WiAUqeVumxSJ6MrD2JFhKe9YwZFFKItRQCuiL7w8DQ3hHHZftwZgG', 12, '2019-03-25 08:20:20', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(54, '196107081984021001', 'bambang.suryadi', '$2y$09$fEvLHsROp07gzDzVoxpM4uad7st1guAMkZzDnpaHUqwNDeMkYn5dC', 12, '2019-03-25 08:21:17', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(55, '197510311998031001', 'haris', '$2y$09$YvfhzVtP8sAUPXr/Bs1Hwe.Mh1/CScncWZfKb9vaHpzWtiBg19lrW', 12, '2019-03-26 13:06:54', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(56, '197608101996021002', 'gerry.gordon', '$2y$09$qCanMWNiyTKlTSSQtKxEQeO4RfA/27OLUt90YIfSnLcc2cpFjw6zy', 12, '2019-03-25 08:21:43', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(57, '196901131992031001', 'slamet.subakti', '$2y$09$wZW/y1LV0CSj7BL886oITO5.7sXbF5ilMi/zUAkza22qGedQSn2RW', 12, '2019-03-25 08:21:55', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(58, '196412211984031001', 'k.a.h.effendy', '$2y$09$yPX8xlEZ84d0EUhNj/JQ1eNAaakzB3bwIe/kjh7mNmwT3a1x1MQqO', 12, '2019-03-25 08:22:42', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(59, '197804051999031001', 'husen.alisugi', '$2y$09$UJ/Jf9N9Zr/On4slQH.SiOi3dFfqz1ZeD.8oD27vntnUTaHjIKVki', 12, '2019-03-25 08:23:01', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(60, '197605121999031003', 'bambang.suhartono', '$2y$09$Vff34BZGlRFFc./p7mWWlOxia.Kg41sQwqOtxI9ubRIIH8Er5t7am', 12, '2019-03-25 08:23:13', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(61, '197706211997031001', 'joko.riyanto', '$2y$09$wAzu6anO.tzPoolYGxUzI.J35I3g4S/xQKJrDbMnJAmBuhwHYboIW', 12, '2019-03-25 08:23:25', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(62, '196208121983031004', 'selamat.sucipto', '$2y$09$scTU5eapegmGF0zTZCNQw.kRyM.im4FkQaGAqYLZUCKtURGMaUJau', 12, '2019-03-25 08:23:46', '199203162014111002', 'Y');
INSERT INTO `tbuser` (`IdUser`, `NipUser`, `NmUser`, `Password`, `GrupMenu`, `WktRekam`, `PtgsRekam`, `Status`) VALUES
	(63, '198506012007101001', 'faiq', '$2y$09$2WYOU7UbNsGH0.WXRJK5lu3ZKCJnDWYUHOKa6WGXeinApziMX3i5q', 12, '2019-03-25 08:28:07', '199203162014111002', 'Y');
/*!40000 ALTER TABLE `tbuser` ENABLE KEYS */;

-- membuang struktur untuk view appdashboard.tbuser_detail
DROP VIEW IF EXISTS `tbuser_detail`;
-- Membuat tabel sementara untuk menangani kesalahan ketergantungan VIEW
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

-- membuang struktur untuk view appdashboard.tbview_grupakses
DROP VIEW IF EXISTS `tbview_grupakses`;
-- Membuat tabel sementara untuk menangani kesalahan ketergantungan VIEW
CREATE TABLE `tbview_grupakses` (
	`Id` INT(11) NOT NULL,
	`IdUser` INT(11) NULL,
	`IdHakAkses` INT(11) NULL,
	`PtgsRekam` VARCHAR(18) NULL COLLATE 'latin1_swedish_ci',
	`WktRekam` TIMESTAMP NOT NULL,
	`NamaPegawai` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`GrupMenu` VARCHAR(100) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- membuang struktur untuk view appdashboard.tb_detail_plh
DROP VIEW IF EXISTS `tb_detail_plh`;
-- Membuat tabel sementara untuk menangani kesalahan ketergantungan VIEW
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

-- membuang struktur untuk view appdashboard.tb_hanggar_tpb
DROP VIEW IF EXISTS `tb_hanggar_tpb`;
-- Membuat tabel sementara untuk menangani kesalahan ketergantungan VIEW
CREATE TABLE `tb_hanggar_tpb` (
	`Id` INT(11) NOT NULL,
	`idPerusahaan` INT(11) NOT NULL,
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
	`IdHanggar` INT(11) NULL COMMENT 'tbhanggar -> appdashboard',
	`grupHanggar` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`lokasiHanggar` INT(11) NULL
) ENGINE=MyISAM;

-- membuang struktur untuk view appdashboard.tb_non_user
DROP VIEW IF EXISTS `tb_non_user`;
-- Membuat tabel sementara untuk menangani kesalahan ketergantungan VIEW
CREATE TABLE `tb_non_user` (
	`IdPegawai` INT(11) NOT NULL,
	`NIPPegawai` VARCHAR(18) NOT NULL COLLATE 'latin1_swedish_ci',
	`NamaPegawai` VARCHAR(100) NOT NULL COLLATE 'latin1_swedish_ci',
	`GolPegawai` INT(5) NOT NULL,
	`SeksiPegawai` INT(5) NOT NULL,
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

-- membuang struktur untuk table appdashboard.tb_petugas_hanggar
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel appdashboard.tb_petugas_hanggar: ~58 rows (lebih kurang)
DELETE FROM `tb_petugas_hanggar`;
/*!40000 ALTER TABLE `tb_petugas_hanggar` DISABLE KEYS */;
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(9, 10, 32, '199203162014111002', '2019-03-20 16:05:43', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(10, 10, 100, '199203162014111002', '2019-03-20 16:05:52', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(11, 6, 50, '199203162014111002', '2019-03-20 16:06:23', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(12, 6, 102, '199203162014111002', '2019-03-20 16:06:32', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(13, 2, 43, '199203162014111002', '2019-03-25 08:36:49', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(14, 2, 101, '199203162014111002', '2019-03-25 08:36:57', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(15, 3, 46, '199203162014111002', '2019-03-25 08:37:55', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(16, 3, 106, '199203162014111002', '2019-03-25 08:38:01', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(17, 4, 45, '199203162014111002', '2019-03-25 08:39:17', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(18, 4, 83, '199203162014111002', '2019-03-25 08:39:25', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(19, 5, 42, '199203162014111002', '2019-03-25 08:39:48', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(20, 5, 79, '199203162014111002', '2019-03-25 08:39:57', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(21, 7, 52, '199203162014111002', '2019-03-25 08:41:05', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(22, 7, 74, '199203162014111002', '2019-03-25 08:41:16', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(23, 8, 41, '199203162014111002', '2019-03-25 08:42:23', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(24, 9, 47, '199203162014111002', '2019-03-25 08:42:59', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(25, 9, 68, '199203162014111002', '2019-03-25 08:43:12', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(26, 11, 51, '199203162014111002', '2019-03-25 08:44:39', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(27, 11, 84, '199203162014111002', '2019-03-25 08:44:46', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(28, 12, 57, '199203162014111002', '2019-03-25 08:47:29', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(29, 12, 91, '199203162014111002', '2019-03-25 08:47:37', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(30, 13, 40, '199203162014111002', '2019-03-25 08:49:17', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(31, 14, 58, '199203162014111002', '2019-03-25 08:50:32', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(32, 14, 75, '199203162014111002', '2019-03-25 08:50:46', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(33, 15, 56, '199203162014111002', '2019-03-25 08:51:34', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(34, 15, 73, '199203162014111002', '2019-03-25 08:51:46', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(35, 16, 33, '199203162014111002', '2019-03-25 08:53:01', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(36, 16, 82, '199203162014111002', '2019-03-25 08:53:07', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(37, 16, 127, '199203162014111002', '2019-03-25 08:53:13', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(38, 17, 36, '199203162014111002', '2019-03-25 08:54:09', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(39, 17, 112, '199203162014111002', '2019-03-25 08:54:32', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(40, 18, 39, '199203162014111002', '2019-03-25 08:55:15', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(41, 19, 37, '199203162014111002', '2019-03-25 08:56:13', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(42, 19, 72, '199203162014111002', '2019-03-25 08:56:20', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(43, 20, 59, '199203162014111002', '2019-03-25 08:58:18', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(44, 20, 78, '199203162014111002', '2019-03-25 08:58:23', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(45, 21, 54, '199203162014111002', '2019-03-25 08:59:01', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(46, 21, 98, '199203162014111002', '2019-03-25 08:59:08', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(47, 22, 95, '199203162014111002', '2019-03-25 09:01:42', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(48, 22, 38, '199203162014111002', '2019-03-25 09:08:24', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(49, 23, 62, '199203162014111002', '2019-03-25 09:09:10', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(50, 23, 105, '199203162014111002', '2019-03-25 09:09:17', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(51, 24, 35, '199203162014111002', '2019-03-25 09:12:50', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(52, 24, 90, '199203162014111002', '2019-03-25 09:13:05', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(53, 25, 44, '199203162014111002', '2019-03-25 09:14:22', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(54, 26, 34, '199203162014111002', '2019-03-25 09:17:12', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(55, 26, 104, '199203162014111002', '2019-03-25 09:17:20', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(56, 28, 60, '199203162014111002', '2019-03-25 09:23:27', '', '2019-03-25 13:27:08');
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(57, 28, 76, '199203162014111002', '2019-03-25 09:23:39', '', '2019-03-25 13:27:06');
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(58, 29, 49, '199203162014111002', '2019-03-25 09:24:46', '', '2019-03-25 13:27:02');
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(59, 29, 96, '199203162014111002', '2019-03-25 09:24:55', '', '2019-03-25 13:27:00');
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(60, 30, 61, '199203162014111002', '2019-03-25 09:26:24', '', '2019-03-25 13:26:58');
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(61, 30, 77, '199203162014111002', '2019-03-25 09:26:32', '', '2019-03-25 13:26:55');
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(62, 31, 48, '199203162014111002', '2019-03-25 10:46:35', '', '2019-03-25 13:26:42');
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(63, 31, 97, '199203162014111002', '2019-03-25 10:46:47', '', '2019-03-25 13:26:45');
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(64, 27, 55, '199203162014111002', '2019-03-25 13:27:34', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(65, 27, 87, '199203162014111002', '2019-03-25 13:27:49', '', NULL);
INSERT INTO `tb_petugas_hanggar` (`Id`, `IdHanggar`, `IdPegawai`, `PtgsRkm`, `WktRkm`, `PtgsUpdate`, `WktUpdate`) VALUES
	(66, 1, 53, '199203162014111002', '2019-03-25 13:57:08', '', NULL);
/*!40000 ALTER TABLE `tb_petugas_hanggar` ENABLE KEYS */;

-- membuang struktur untuk view appdashboard.tb_petugas_hanggar_detail
DROP VIEW IF EXISTS `tb_petugas_hanggar_detail`;
-- Membuat tabel sementara untuk menangani kesalahan ketergantungan VIEW
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

-- membuang struktur untuk table appdashboard.tb_plh
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

-- Membuang data untuk tabel appdashboard.tb_plh: ~9 rows (lebih kurang)
DELETE FROM `tb_plh`;
/*!40000 ALTER TABLE `tb_plh` DISABLE KEYS */;
INSERT INTO `tb_plh` (`IdPlh`, `NmrSprint`, `TglSprint`, `IdLeave`, `KdLeave`, `NIPPejabatLeave`, `NIPPejabatPengganti`, `TglMulai`, `TglSelesai`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(10, 1, '2018-01-11', 5, 1, '196310011983031001', '197410251996021001', '2018-01-11', '2018-01-11', '199203162014111002', '2018-01-09 17:09:25', '199203162014111002', '2018-01-11 17:31:56');
INSERT INTO `tb_plh` (`IdPlh`, `NmrSprint`, `TglSprint`, `IdLeave`, `KdLeave`, `NIPPejabatLeave`, `NIPPejabatPengganti`, `TglMulai`, `TglSelesai`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(11, 2, '2018-01-11', 5, 1, '197011141989121001', '196908241990121001', '2018-01-11', '2018-01-11', '199203162014111002', '2018-01-11 17:42:27', NULL, '2018-01-11 17:42:27');
INSERT INTO `tb_plh` (`IdPlh`, `NmrSprint`, `TglSprint`, `IdLeave`, `KdLeave`, `NIPPejabatLeave`, `NIPPejabatPengganti`, `TglMulai`, `TglSelesai`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(12, NULL, NULL, 6, 1, '197011141989121001', NULL, NULL, NULL, '199203162014111002', '2018-01-11 17:59:48', '0', '2018-01-11 17:59:48');
INSERT INTO `tb_plh` (`IdPlh`, `NmrSprint`, `TglSprint`, `IdLeave`, `KdLeave`, `NIPPejabatLeave`, `NIPPejabatPengganti`, `TglMulai`, `TglSelesai`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(13, 10, '2018-01-16', 6, 1, '196601011988101001', '198306042003122001', '2018-01-16', '2018-01-16', '199203162014111002', '2018-01-11 17:59:48', '199203162014111002', '2018-01-16 15:24:13');
INSERT INTO `tb_plh` (`IdPlh`, `NmrSprint`, `TglSprint`, `IdLeave`, `KdLeave`, `NIPPejabatLeave`, `NIPPejabatPengganti`, `TglMulai`, `TglSelesai`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(14, NULL, NULL, 6, 1, '197410251996021001', NULL, NULL, NULL, '199203162014111002', '2018-01-11 17:59:48', '0', '2018-01-11 17:59:48');
INSERT INTO `tb_plh` (`IdPlh`, `NmrSprint`, `TglSprint`, `IdLeave`, `KdLeave`, `NIPPejabatLeave`, `NIPPejabatPengganti`, `TglMulai`, `TglSelesai`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(15, NULL, NULL, 6, 1, '196912141990121002', NULL, NULL, NULL, '199203162014111002', '2018-01-11 17:59:48', '0', '2018-01-11 17:59:48');
INSERT INTO `tb_plh` (`IdPlh`, `NmrSprint`, `TglSprint`, `IdLeave`, `KdLeave`, `NIPPejabatLeave`, `NIPPejabatPengganti`, `TglMulai`, `TglSelesai`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(16, NULL, NULL, 7, 1, '197011141989121001', NULL, NULL, NULL, '199203162014111002', '2018-01-16 18:39:01', '0', '2018-01-16 18:39:01');
INSERT INTO `tb_plh` (`IdPlh`, `NmrSprint`, `TglSprint`, `IdLeave`, `KdLeave`, `NIPPejabatLeave`, `NIPPejabatPengganti`, `TglMulai`, `TglSelesai`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(17, NULL, NULL, 7, 1, '196601011988101001', NULL, NULL, NULL, '199203162014111002', '2018-01-16 18:39:01', '0', '2018-01-16 18:39:01');
INSERT INTO `tb_plh` (`IdPlh`, `NmrSprint`, `TglSprint`, `IdLeave`, `KdLeave`, `NIPPejabatLeave`, `NIPPejabatPengganti`, `TglMulai`, `TglSelesai`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(18, NULL, NULL, 7, 1, '197410251996021001', NULL, NULL, NULL, '199203162014111002', '2018-01-16 18:39:01', '0', '2018-01-16 18:39:01');
/*!40000 ALTER TABLE `tb_plh` ENABLE KEYS */;

-- membuang struktur untuk table appdashboard.tb_setting_seksi_pkc
DROP TABLE IF EXISTS `tb_setting_seksi_pkc`;
CREATE TABLE IF NOT EXISTS `tb_setting_seksi_pkc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namaJabatan` varchar(50) NOT NULL,
  `idJabatan` int(11) DEFAULT NULL,
  `ptgsUpdate` varchar(18) NOT NULL,
  `wktUpdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel appdashboard.tb_setting_seksi_pkc: ~9 rows (lebih kurang)
DELETE FROM `tb_setting_seksi_pkc`;
/*!40000 ALTER TABLE `tb_setting_seksi_pkc` DISABLE KEYS */;
INSERT INTO `tb_setting_seksi_pkc` (`id`, `namaJabatan`, `idJabatan`, `ptgsUpdate`, `wktUpdate`) VALUES
	(1, 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI I', 6, '', '2019-03-18 20:32:33');
INSERT INTO `tb_setting_seksi_pkc` (`id`, `namaJabatan`, `idJabatan`, `ptgsUpdate`, `wktUpdate`) VALUES
	(2, 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI II', 7, '', '2019-03-18 20:32:36');
INSERT INTO `tb_setting_seksi_pkc` (`id`, `namaJabatan`, `idJabatan`, `ptgsUpdate`, `wktUpdate`) VALUES
	(3, 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI III', 8, '', '2019-03-18 20:32:38');
INSERT INTO `tb_setting_seksi_pkc` (`id`, `namaJabatan`, `idJabatan`, `ptgsUpdate`, `wktUpdate`) VALUES
	(4, 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI IV', 9, '', '2019-03-18 20:32:41');
INSERT INTO `tb_setting_seksi_pkc` (`id`, `namaJabatan`, `idJabatan`, `ptgsUpdate`, `wktUpdate`) VALUES
	(5, 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI V', 10, '', '2019-03-18 20:32:44');
INSERT INTO `tb_setting_seksi_pkc` (`id`, `namaJabatan`, `idJabatan`, `ptgsUpdate`, `wktUpdate`) VALUES
	(6, 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI VI', 11, '', '2019-03-18 20:32:47');
INSERT INTO `tb_setting_seksi_pkc` (`id`, `namaJabatan`, `idJabatan`, `ptgsUpdate`, `wktUpdate`) VALUES
	(7, 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI VII', 12, '', '2019-03-18 20:32:50');
INSERT INTO `tb_setting_seksi_pkc` (`id`, `namaJabatan`, `idJabatan`, `ptgsUpdate`, `wktUpdate`) VALUES
	(8, 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI VIII', 13, '', '2019-03-18 20:32:51');
INSERT INTO `tb_setting_seksi_pkc` (`id`, `namaJabatan`, `idJabatan`, `ptgsUpdate`, `wktUpdate`) VALUES
	(9, 'SEKSI PELAYANAN KEPABEANAN DAN CUKAI IX', 14, '', '2019-03-18 20:32:53');
/*!40000 ALTER TABLE `tb_setting_seksi_pkc` ENABLE KEYS */;

-- membuang struktur untuk trigger appdashboard.tbcapaian_after_insert
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

-- membuang struktur untuk view appdashboard.detail_pegawaist
DROP VIEW IF EXISTS `detail_pegawaist`;
-- Menghapus tabel sementara dan menciptakan struktur VIEW terakhir
DROP TABLE IF EXISTS `detail_pegawaist`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `detail_pegawaist` AS SELECT tbpegawaist.id, tbpegawai.IdPegawai, tbpegawai.NIPPegawai, tbpegawai.NamaPegawai, tbpegawai.GolPegawai, tbpegawai.SeksiPegawai, tbpegawai.JabatanPegawai, tbsurat.* FROM tbpegawaist 
LEFT JOIN tbpegawai ON tbpegawaist.NIP = tbpegawai.NIPPegawai
LEFT JOIN tbsurat ON tbpegawaist.IdSurat = tbsurat.IdSurat ;

-- membuang struktur untuk view appdashboard.jumlah_perusahaan_hanggar
DROP VIEW IF EXISTS `jumlah_perusahaan_hanggar`;
-- Menghapus tabel sementara dan menciptakan struktur VIEW terakhir
DROP TABLE IF EXISTS `jumlah_perusahaan_hanggar`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `jumlah_perusahaan_hanggar` AS SELECT a.idHanggar, COUNT(a.idPerusahaan) AS jumlahTPB FROM `sikabayan_app`.`tb_hanggar_tpb` a GROUP BY a.idHanggar ;

-- membuang struktur untuk view appdashboard.jumlah_petugas_hanggar
DROP VIEW IF EXISTS `jumlah_petugas_hanggar`;
-- Menghapus tabel sementara dan menciptakan struktur VIEW terakhir
DROP TABLE IF EXISTS `jumlah_petugas_hanggar`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `jumlah_petugas_hanggar` AS SELECT IdHanggar, COUNT(IdPegawai) AS jumlahPetugas FROM tb_petugas_hanggar group by IdHanggar ;

-- membuang struktur untuk view appdashboard.sikabayan
DROP VIEW IF EXISTS `sikabayan`;
-- Menghapus tabel sementara dan menciptakan struktur VIEW terakhir
DROP TABLE IF EXISTS `sikabayan`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sikabayan` AS SELECT * FROM sikabayan_app.tpbdetail ;

-- membuang struktur untuk view appdashboard.tbhanggar_detail
DROP VIEW IF EXISTS `tbhanggar_detail`;
-- Menghapus tabel sementara dan menciptakan struktur VIEW terakhir
DROP TABLE IF EXISTS `tbhanggar_detail`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tbhanggar_detail` AS SELECT 
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
        `c`.`jumlahPetugas` AS `jumlahPetugas`,
        `d`.`jumlahTPB` AS `jumlahTPB`
    FROM
        (((`appdashboard`.`tbhanggar` `a`
        LEFT JOIN `sikabayan_app`.`tb_perusahaan` `b` ON ((`a`.`lokasiHanggar` = `b`.`id_perusahaan`)))
        LEFT JOIN `appdashboard`.`jumlah_petugas_hanggar` `c` ON ((`a`.`id` = `c`.`IdHanggar`)))
        LEFT JOIN `appdashboard`.`jumlah_perusahaan_hanggar` `d` ON ((`a`.`id` = `d`.`idHanggar`))) ;

-- membuang struktur untuk view appdashboard.tbpegawai_detail
DROP VIEW IF EXISTS `tbpegawai_detail`;
-- Menghapus tabel sementara dan menciptakan struktur VIEW terakhir
DROP TABLE IF EXISTS `tbpegawai_detail`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tbpegawai_detail` AS SELECT 
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

-- membuang struktur untuk view appdashboard.tbuser_detail
DROP VIEW IF EXISTS `tbuser_detail`;
-- Menghapus tabel sementara dan menciptakan struktur VIEW terakhir
DROP TABLE IF EXISTS `tbuser_detail`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tbuser_detail` AS SELECT a.IdUser,a.NipUser, a.NmUser, a.`Password`, a.`GrupMenu`, a.`Status`,b.IdPegawai, b.NamaPegawai, b.NIPPegawai , b.SeksiPegawai, c.NamaJabatan, d.IdSeksi, d.KdUnit, d.NmUnit, CONCAT(e.Pangkat," - ",e.Gol) AS Pangkat FROM tbuser a
LEFT JOIN tbpegawai b ON a.NipUser = b.NIPPegawai
LEFT JOIN tbjabatan c ON b.JabatanPegawai=c.IdJabatan
LEFT JOIN tbseksi d ON b.SeksiPegawai=d.IdSeksi
LEFT JOIN tbpangkat e ON b.GolPegawai=e.KdPangkat ;

-- membuang struktur untuk view appdashboard.tbview_grupakses
DROP VIEW IF EXISTS `tbview_grupakses`;
-- Menghapus tabel sementara dan menciptakan struktur VIEW terakhir
DROP TABLE IF EXISTS `tbview_grupakses`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tbview_grupakses` AS SELECT a.*, c.NamaPegawai , b.GrupMenu FROM tbgrupakses a
LEFT JOIN grupmenu b ON a.IdHakAkses=b.IdGrupMenu
LEFT JOIN tbuser_detail c ON a.IdUser = c.IdUser ;

-- membuang struktur untuk view appdashboard.tb_detail_plh
DROP VIEW IF EXISTS `tb_detail_plh`;
-- Menghapus tabel sementara dan menciptakan struktur VIEW terakhir
DROP TABLE IF EXISTS `tb_detail_plh`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_detail_plh` AS SELECT tb_plh.*, tbsurat.NmrSurat, tbsurat.TglSurat, a.NamaPegawai AS NamaPejabat, b.NamaPegawai AS NamaPengganti FROM tb_plh
LEFT JOIN tbsurat ON tb_plh.IdLeave = tbsurat.IdSurat
LEFT JOIN tbpegawai a ON tb_plh.NIPPejabatLeave = a.NIPPegawai
LEFT JOIN tbpegawai b ON tb_plh.NIPPejabatPengganti = b.NIPPegawai ;

-- membuang struktur untuk view appdashboard.tb_hanggar_tpb
DROP VIEW IF EXISTS `tb_hanggar_tpb`;
-- Menghapus tabel sementara dan menciptakan struktur VIEW terakhir
DROP TABLE IF EXISTS `tb_hanggar_tpb`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_hanggar_tpb` AS SELECT `a`.Id,`a`.idPerusahaan,`a`.ptgsRekam,`a`.wktRekam,`b`.*,`c`.`grupHanggar`,`c`.`lokasiHanggar` FROM `sikabayan_app`.`tb_hanggar_tpb` `a`
LEFT JOIN `sikabayan_app`.`tpbdetail` `b` ON `a`.`idPerusahaan` = `b`.`id_perusahaan`
LEFT JOIN `appdashboard`.`tbhanggar` `c` ON `a`.`idHanggar` = `c`.`id` ;

-- membuang struktur untuk view appdashboard.tb_non_user
DROP VIEW IF EXISTS `tb_non_user`;
-- Menghapus tabel sementara dan menciptakan struktur VIEW terakhir
DROP TABLE IF EXISTS `tb_non_user`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_non_user` AS SELECT a.*, CONCAT(d.Pangkat," / ",d.Gol) AS Pangkat, b.NmEselon, e.NmUnit, c.NamaJabatan  FROM tbpegawai a
LEFT JOIN tbeselon b ON a.Eselon=b.IdEselon
LEFT JOIN tbjabatan c ON a.JabatanPegawai=c.IdJabatan
LEFT JOIN tbpangkat d ON a.GolPegawai=d.KdPangkat
LEFT JOIN tbseksi e ON a.SeksiPegawai=e.IdSeksi
WHERE NOT(a.NIPPegawai IN(SELECT NipUser FROM tbuser)) ORDER BY a.IdPegawai ;

-- membuang struktur untuk view appdashboard.tb_petugas_hanggar_detail
DROP VIEW IF EXISTS `tb_petugas_hanggar_detail`;
-- Menghapus tabel sementara dan menciptakan struktur VIEW terakhir
DROP TABLE IF EXISTS `tb_petugas_hanggar_detail`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_petugas_hanggar_detail` AS SELECT 
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
