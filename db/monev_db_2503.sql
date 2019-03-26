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


-- Membuang struktur basisdata untuk monevtpb
CREATE DATABASE IF NOT EXISTS `monevtpb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `monevtpb`;

-- membuang struktur untuk table monevtpb.monev_cctvit
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel monevtpb.monev_cctvit: ~0 rows (lebih kurang)
DELETE FROM `monev_cctvit`;
/*!40000 ALTER TABLE `monev_cctvit` DISABLE KEYS */;
/*!40000 ALTER TABLE `monev_cctvit` ENABLE KEYS */;

-- membuang struktur untuk table monevtpb.monev_ceisa
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel monevtpb.monev_ceisa: ~0 rows (lebih kurang)
DELETE FROM `monev_ceisa`;
/*!40000 ALTER TABLE `monev_ceisa` DISABLE KEYS */;
/*!40000 ALTER TABLE `monev_ceisa` ENABLE KEYS */;

-- membuang struktur untuk table monevtpb.monev_hanggar
CREATE TABLE IF NOT EXISTS `monev_hanggar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idHanggar` int(11) DEFAULT NULL,
  `idPerusahaan` int(11) NOT NULL,
  `tanggalLaporan` date NOT NULL,
  `keterangan` varchar(1000) DEFAULT NULL,
  `flag` int(11) NOT NULL DEFAULT '0',
  `NipPegawai` varchar(18) NOT NULL,
  `WktRkm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel monevtpb.monev_hanggar: ~1 rows (lebih kurang)
DELETE FROM `monev_hanggar`;
/*!40000 ALTER TABLE `monev_hanggar` DISABLE KEYS */;
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(17, 10, 43, '2019-03-21', 'A', 99, '198109242000121002', '2019-03-21 13:49:33');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(18, 10, 125, '2019-03-25', '', 1, '198109242000121002', '2019-03-25 10:25:45');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(19, 10, 125, '2019-03-25', 'Memenuhi', 1, '198109242000121002', '2019-03-25 11:13:48');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(20, 5, 100, '2019-03-25', '', 0, '198110192009011011', '2019-03-25 11:18:24');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(21, 5, 34, '2019-03-25', '', 0, '198110192009011011', '2019-03-25 11:19:25');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(22, 5, 34, '2019-03-25', '', 0, '198110192009011011', '2019-03-25 11:19:26');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(23, 5, 27, '2019-03-25', '', 0, '198110192009011011', '2019-03-25 11:21:44');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(24, 5, 11, '2019-03-25', '', 0, '198110192009011011', '2019-03-25 11:22:25');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(25, 5, 102, '2019-03-25', '', 0, '198110192009011011', '2019-03-25 11:23:20');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(26, 23, 35, '2019-03-25', 'SECARA KESELURUHAN MONITORING DAN EVALUASI MEMENUHI/SESUAI PER 02/BC/2019 ', 0, '196107081984021001', '2019-03-25 11:34:11');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(27, 10, 43, '2019-03-25', '', 0, '198109242000121002', '2019-03-25 13:43:00');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(28, 22, 33, '2019-03-25', '', 1, '198506012007101001', '2019-03-25 15:07:08');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(29, 22, 33, '2019-03-25', '', 0, '198506012007101001', '2019-03-25 15:07:19');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(30, 22, 33, '2019-03-25', '', 0, '198506012007101001', '2019-03-25 15:07:48');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(31, 22, 33, '2019-03-25', '', 0, '198506012007101001', '2019-03-25 15:09:00');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(32, 22, 33, '2019-03-25', '', 0, '198506012007101001', '2019-03-25 15:09:01');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(33, 22, 33, '2019-03-25', '', 0, '198506012007101001', '2019-03-25 15:09:03');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(34, 22, 33, '2019-03-25', '', 0, '198506012007101001', '2019-03-25 15:09:05');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(35, 22, 33, '2019-03-25', '', 0, '198506012007101001', '2019-03-25 15:09:05');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(36, 22, 33, '2019-03-25', '', 0, '198506012007101001', '2019-03-25 15:09:11');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(37, 22, 33, '2019-03-25', '', 0, '198506012007101001', '2019-03-25 15:09:12');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(38, 22, 33, '2019-03-25', '', 0, '198506012007101001', '2019-03-25 15:09:18');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(39, 22, 33, '2019-03-25', '', 0, '198506012007101001', '2019-03-25 15:09:20');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(40, 22, 33, '2019-03-25', '', 0, '198506012007101001', '2019-03-25 15:09:21');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(41, 22, 33, '2019-03-25', '', 0, '198506012007101001', '2019-03-25 15:09:22');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(42, 22, 33, '2019-03-25', '', 0, '198506012007101001', '2019-03-25 15:09:24');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(43, 22, 33, '2019-03-25', '', 0, '198506012007101001', '2019-03-25 15:09:44');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(44, 22, 33, '2019-03-25', '', 0, '198506012007101001', '2019-03-25 15:09:47');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(45, 22, 33, '2019-03-25', '', 0, '198506012007101001', '2019-03-25 15:09:50');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(46, 22, 33, '2019-03-25', '', 0, '198506012007101001', '2019-03-25 15:09:51');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(47, 22, 33, '2019-03-25', '', 0, '198506012007101001', '2019-03-25 15:09:56');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(48, 22, 33, '2019-03-25', '', 0, '198506012007101001', '2019-03-25 15:09:56');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(49, 22, 33, '2019-03-25', '', 0, '198506012007101001', '2019-03-25 15:09:57');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(50, 22, 33, '2019-03-25', '', 0, '198506012007101001', '2019-03-25 15:09:57');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(51, 22, 33, '2019-03-25', '', 0, '198506012007101001', '2019-03-25 15:10:08');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(52, 22, 33, '2019-03-25', '', 0, '198506012007101001', '2019-03-25 15:10:10');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(53, 22, 33, '2019-03-25', '', 0, '198506012007101001', '2019-03-25 15:10:11');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(54, 22, 33, '2019-03-25', '', 0, '198506012007101001', '2019-03-25 15:10:11');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(55, 22, 33, '2019-03-25', '', 0, '198506012007101001', '2019-03-25 15:10:11');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(56, 22, 33, '2019-03-25', '', 0, '198506012007101001', '2019-03-25 15:10:15');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(57, 22, 33, '2019-03-25', '', 0, '198506012007101001', '2019-03-25 15:10:16');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(58, 22, 33, '2019-03-25', '', 0, '198506012007101001', '2019-03-25 15:10:20');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(59, 22, 33, '2019-03-25', '', 0, '198506012007101001', '2019-03-25 15:11:07');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(60, 22, 33, '2019-03-25', '', 0, '198506012007101001', '2019-03-25 15:11:09');
INSERT INTO `monev_hanggar` (`id`, `idHanggar`, `idPerusahaan`, `tanggalLaporan`, `keterangan`, `flag`, `NipPegawai`, `WktRkm`) VALUES
	(61, 22, 33, '2019-03-25', '', 0, '198506012007101001', '2019-03-25 15:11:12');
/*!40000 ALTER TABLE `monev_hanggar` ENABLE KEYS */;

-- membuang struktur untuk view monevtpb.monev_hanggar_detail
-- Membuat tabel sementara untuk menangani kesalahan ketergantungan VIEW
CREATE TABLE `monev_hanggar_detail` (
	`NPWP` VARCHAR(15) NULL COLLATE 'utf8_unicode_ci',
	`id` INT(11) NOT NULL,
	`idPerusahaan` INT(11) NOT NULL,
	`tanggalLaporan` DATE NOT NULL,
	`keterangan` VARCHAR(1000) NULL COLLATE 'latin1_swedish_ci',
	`flag` INT(11) NOT NULL,
	`NipPegawai` VARCHAR(18) NOT NULL COLLATE 'latin1_swedish_ci',
	`WktRkm` TIMESTAMP NOT NULL,
	`nama_perusahaan` VARCHAR(100) NULL COLLATE 'utf8_unicode_ci',
	`alamat` VARCHAR(150) NULL COLLATE 'utf8_unicode_ci',
	`ijin_kelola_tpb` VARCHAR(100) NULL COLLATE 'utf8_unicode_ci',
	`IdHanggar` INT(10) UNSIGNED NULL,
	`NamaPegawai` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- membuang struktur untuk table monevtpb.monev_hanggar_file
CREATE TABLE IF NOT EXISTS `monev_hanggar_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idLaporan` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `namaFile` varchar(100) NOT NULL,
  `typeFile` varchar(100) NOT NULL,
  `lokasi` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel monevtpb.monev_hanggar_file: ~0 rows (lebih kurang)
DELETE FROM `monev_hanggar_file`;
/*!40000 ALTER TABLE `monev_hanggar_file` DISABLE KEYS */;
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(1, 18, 1, 'Ijin Usaha Blok FF 1 P.pdf', 'application/pdf', 'assets/upload/monev/pdf/Ijin Usaha Blok FF 1 P.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(2, 18, 8, 'PopulasiDokBC_Chiyoda.jpg', 'image/jpeg', 'assets/upload/monev/img/PopulasiDokBC_Chiyoda.jpg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(3, 18, 9, 'print scren IT Chiyoda.jpg', 'image/jpeg', 'assets/upload/monev/img/print scren IT Chiyoda.jpg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(4, 19, 8, 'PopulasiDokBC_Chiyoda.jpg', 'image/jpeg', 'assets/upload/monev/img/PopulasiDokBC_Chiyoda.jpg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(5, 19, 9, 'print scren IT Chiyoda.jpg', 'image/jpeg', 'assets/upload/monev/img/print scren IT Chiyoda.jpg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(6, 26, 1, 'IUI Printec 2_1.jpg', 'image/jpeg', 'assets/upload/monev/img/IUI Printec 2_1.jpg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(7, 26, 2, 'IUI Printec 2_1.jpg', 'image/jpeg', 'assets/upload/monev/img/IUI Printec 2_1.jpg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(8, 28, 1, '2. IUI.pdf', 'application/pdf', 'assets/upload/monev/pdf/2. IUI.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(9, 28, 2, '7. Akte Pendirian Perusahan.pdf', 'application/pdf', 'assets/upload/monev/pdf/7. Akte Pendirian Perusahan.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(10, 28, 3, 'Tanda Nama Perusahaan.jpeg', 'image/jpeg', 'assets/upload/monev/img/Tanda Nama Perusahaan.jpeg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(11, 29, 1, '2. IUI.pdf', 'application/pdf', 'assets/upload/monev/pdf/2. IUI.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(12, 29, 2, '7. Akte Pendirian Perusahan.pdf', 'application/pdf', 'assets/upload/monev/pdf/7. Akte Pendirian Perusahan.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(13, 29, 3, 'Tanda Nama Perusahaan.jpeg', 'image/jpeg', 'assets/upload/monev/img/Tanda Nama Perusahaan.jpeg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(14, 30, 1, '2. IUI.pdf', 'application/pdf', 'assets/upload/monev/pdf/2. IUI.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(15, 30, 2, '7. Akte Pendirian Perusahan.pdf', 'application/pdf', 'assets/upload/monev/pdf/7. Akte Pendirian Perusahan.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(16, 30, 3, 'Tanda Nama Perusahaan.jpeg', 'image/jpeg', 'assets/upload/monev/img/Tanda Nama Perusahaan.jpeg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(17, 31, 1, '2. IUI.pdf', 'application/pdf', 'assets/upload/monev/pdf/2. IUI.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(18, 31, 2, '7. Akte Pendirian Perusahan.pdf', 'application/pdf', 'assets/upload/monev/pdf/7. Akte Pendirian Perusahan.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(19, 31, 3, 'Tanda Nama Perusahaan.jpeg', 'image/jpeg', 'assets/upload/monev/img/Tanda Nama Perusahaan.jpeg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(20, 32, 1, '2. IUI.pdf', 'application/pdf', 'assets/upload/monev/pdf/2. IUI.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(21, 32, 2, '7. Akte Pendirian Perusahan.pdf', 'application/pdf', 'assets/upload/monev/pdf/7. Akte Pendirian Perusahan.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(22, 32, 3, 'Tanda Nama Perusahaan.jpeg', 'image/jpeg', 'assets/upload/monev/img/Tanda Nama Perusahaan.jpeg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(23, 33, 1, '2. IUI.pdf', 'application/pdf', 'assets/upload/monev/pdf/2. IUI.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(24, 33, 2, '7. Akte Pendirian Perusahan.pdf', 'application/pdf', 'assets/upload/monev/pdf/7. Akte Pendirian Perusahan.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(25, 33, 3, 'Tanda Nama Perusahaan.jpeg', 'image/jpeg', 'assets/upload/monev/img/Tanda Nama Perusahaan.jpeg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(26, 34, 1, '2. IUI.pdf', 'application/pdf', 'assets/upload/monev/pdf/2. IUI.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(27, 34, 2, '7. Akte Pendirian Perusahan.pdf', 'application/pdf', 'assets/upload/monev/pdf/7. Akte Pendirian Perusahan.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(28, 34, 3, 'Tanda Nama Perusahaan.jpeg', 'image/jpeg', 'assets/upload/monev/img/Tanda Nama Perusahaan.jpeg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(29, 35, 1, '2. IUI.pdf', 'application/pdf', 'assets/upload/monev/pdf/2. IUI.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(30, 35, 2, '7. Akte Pendirian Perusahan.pdf', 'application/pdf', 'assets/upload/monev/pdf/7. Akte Pendirian Perusahan.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(31, 35, 3, 'Tanda Nama Perusahaan.jpeg', 'image/jpeg', 'assets/upload/monev/img/Tanda Nama Perusahaan.jpeg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(32, 36, 1, '2. IUI.pdf', 'application/pdf', 'assets/upload/monev/pdf/2. IUI.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(33, 36, 2, '7. Akte Pendirian Perusahan.pdf', 'application/pdf', 'assets/upload/monev/pdf/7. Akte Pendirian Perusahan.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(34, 36, 3, 'Tanda Nama Perusahaan.jpeg', 'image/jpeg', 'assets/upload/monev/img/Tanda Nama Perusahaan.jpeg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(35, 37, 1, '2. IUI.pdf', 'application/pdf', 'assets/upload/monev/pdf/2. IUI.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(36, 37, 2, '7. Akte Pendirian Perusahan.pdf', 'application/pdf', 'assets/upload/monev/pdf/7. Akte Pendirian Perusahan.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(37, 37, 3, 'Tanda Nama Perusahaan.jpeg', 'image/jpeg', 'assets/upload/monev/img/Tanda Nama Perusahaan.jpeg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(38, 38, 1, '2. IUI.pdf', 'application/pdf', 'assets/upload/monev/pdf/2. IUI.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(39, 38, 2, '7. Akte Pendirian Perusahan.pdf', 'application/pdf', 'assets/upload/monev/pdf/7. Akte Pendirian Perusahan.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(40, 38, 3, 'Tanda Nama Perusahaan.jpeg', 'image/jpeg', 'assets/upload/monev/img/Tanda Nama Perusahaan.jpeg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(41, 39, 1, '2. IUI.pdf', 'application/pdf', 'assets/upload/monev/pdf/2. IUI.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(42, 39, 2, '7. Akte Pendirian Perusahan.pdf', 'application/pdf', 'assets/upload/monev/pdf/7. Akte Pendirian Perusahan.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(43, 39, 3, 'Tanda Nama Perusahaan.jpeg', 'image/jpeg', 'assets/upload/monev/img/Tanda Nama Perusahaan.jpeg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(44, 40, 1, '2. IUI.pdf', 'application/pdf', 'assets/upload/monev/pdf/2. IUI.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(45, 40, 2, '7. Akte Pendirian Perusahan.pdf', 'application/pdf', 'assets/upload/monev/pdf/7. Akte Pendirian Perusahan.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(46, 40, 3, 'Tanda Nama Perusahaan.jpeg', 'image/jpeg', 'assets/upload/monev/img/Tanda Nama Perusahaan.jpeg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(47, 41, 1, '2. IUI.pdf', 'application/pdf', 'assets/upload/monev/pdf/2. IUI.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(48, 41, 2, '7. Akte Pendirian Perusahan.pdf', 'application/pdf', 'assets/upload/monev/pdf/7. Akte Pendirian Perusahan.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(49, 41, 3, 'Tanda Nama Perusahaan.jpeg', 'image/jpeg', 'assets/upload/monev/img/Tanda Nama Perusahaan.jpeg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(50, 42, 1, '2. IUI.pdf', 'application/pdf', 'assets/upload/monev/pdf/2. IUI.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(51, 42, 2, '7. Akte Pendirian Perusahan.pdf', 'application/pdf', 'assets/upload/monev/pdf/7. Akte Pendirian Perusahan.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(52, 42, 3, 'Tanda Nama Perusahaan.jpeg', 'image/jpeg', 'assets/upload/monev/img/Tanda Nama Perusahaan.jpeg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(53, 43, 1, '2. IUI.pdf', 'application/pdf', 'assets/upload/monev/pdf/2. IUI.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(54, 43, 2, '7. Akte Pendirian Perusahan.pdf', 'application/pdf', 'assets/upload/monev/pdf/7. Akte Pendirian Perusahan.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(55, 43, 3, 'Tanda Nama Perusahaan.jpeg', 'image/jpeg', 'assets/upload/monev/img/Tanda Nama Perusahaan.jpeg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(56, 44, 1, '2. IUI.pdf', 'application/pdf', 'assets/upload/monev/pdf/2. IUI.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(57, 44, 2, '7. Akte Pendirian Perusahan.pdf', 'application/pdf', 'assets/upload/monev/pdf/7. Akte Pendirian Perusahan.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(58, 44, 3, 'Tanda Nama Perusahaan.jpeg', 'image/jpeg', 'assets/upload/monev/img/Tanda Nama Perusahaan.jpeg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(59, 45, 1, '2. IUI.pdf', 'application/pdf', 'assets/upload/monev/pdf/2. IUI.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(60, 45, 2, '7. Akte Pendirian Perusahan.pdf', 'application/pdf', 'assets/upload/monev/pdf/7. Akte Pendirian Perusahan.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(61, 45, 3, 'Tanda Nama Perusahaan.jpeg', 'image/jpeg', 'assets/upload/monev/img/Tanda Nama Perusahaan.jpeg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(62, 46, 1, '2. IUI.pdf', 'application/pdf', 'assets/upload/monev/pdf/2. IUI.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(63, 46, 2, '7. Akte Pendirian Perusahan.pdf', 'application/pdf', 'assets/upload/monev/pdf/7. Akte Pendirian Perusahan.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(64, 46, 3, 'Tanda Nama Perusahaan.jpeg', 'image/jpeg', 'assets/upload/monev/img/Tanda Nama Perusahaan.jpeg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(65, 47, 1, '2. IUI.pdf', 'application/pdf', 'assets/upload/monev/pdf/2. IUI.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(66, 47, 2, '7. Akte Pendirian Perusahan.pdf', 'application/pdf', 'assets/upload/monev/pdf/7. Akte Pendirian Perusahan.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(67, 47, 3, 'Tanda Nama Perusahaan.jpeg', 'image/jpeg', 'assets/upload/monev/img/Tanda Nama Perusahaan.jpeg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(68, 48, 1, '2. IUI.pdf', 'application/pdf', 'assets/upload/monev/pdf/2. IUI.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(69, 48, 2, '7. Akte Pendirian Perusahan.pdf', 'application/pdf', 'assets/upload/monev/pdf/7. Akte Pendirian Perusahan.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(70, 48, 3, 'Tanda Nama Perusahaan.jpeg', 'image/jpeg', 'assets/upload/monev/img/Tanda Nama Perusahaan.jpeg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(71, 49, 1, '2. IUI.pdf', 'application/pdf', 'assets/upload/monev/pdf/2. IUI.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(72, 49, 2, '7. Akte Pendirian Perusahan.pdf', 'application/pdf', 'assets/upload/monev/pdf/7. Akte Pendirian Perusahan.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(73, 49, 3, 'Tanda Nama Perusahaan.jpeg', 'image/jpeg', 'assets/upload/monev/img/Tanda Nama Perusahaan.jpeg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(74, 50, 1, '2. IUI.pdf', 'application/pdf', 'assets/upload/monev/pdf/2. IUI.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(75, 50, 2, '7. Akte Pendirian Perusahan.pdf', 'application/pdf', 'assets/upload/monev/pdf/7. Akte Pendirian Perusahan.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(76, 50, 3, 'Tanda Nama Perusahaan.jpeg', 'image/jpeg', 'assets/upload/monev/img/Tanda Nama Perusahaan.jpeg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(77, 51, 1, '2. IUI.pdf', 'application/pdf', 'assets/upload/monev/pdf/2. IUI.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(78, 51, 2, '7. Akte Pendirian Perusahan.pdf', 'application/pdf', 'assets/upload/monev/pdf/7. Akte Pendirian Perusahan.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(79, 51, 3, 'Tanda Nama Perusahaan.jpeg', 'image/jpeg', 'assets/upload/monev/img/Tanda Nama Perusahaan.jpeg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(80, 52, 1, '2. IUI.pdf', 'application/pdf', 'assets/upload/monev/pdf/2. IUI.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(81, 52, 2, '7. Akte Pendirian Perusahan.pdf', 'application/pdf', 'assets/upload/monev/pdf/7. Akte Pendirian Perusahan.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(82, 52, 3, 'Tanda Nama Perusahaan.jpeg', 'image/jpeg', 'assets/upload/monev/img/Tanda Nama Perusahaan.jpeg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(83, 53, 1, '2. IUI.pdf', 'application/pdf', 'assets/upload/monev/pdf/2. IUI.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(84, 53, 2, '7. Akte Pendirian Perusahan.pdf', 'application/pdf', 'assets/upload/monev/pdf/7. Akte Pendirian Perusahan.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(85, 53, 3, 'Tanda Nama Perusahaan.jpeg', 'image/jpeg', 'assets/upload/monev/img/Tanda Nama Perusahaan.jpeg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(86, 54, 1, '2. IUI.pdf', 'application/pdf', 'assets/upload/monev/pdf/2. IUI.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(87, 54, 2, '7. Akte Pendirian Perusahan.pdf', 'application/pdf', 'assets/upload/monev/pdf/7. Akte Pendirian Perusahan.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(88, 54, 3, 'Tanda Nama Perusahaan.jpeg', 'image/jpeg', 'assets/upload/monev/img/Tanda Nama Perusahaan.jpeg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(89, 55, 1, '2. IUI.pdf', 'application/pdf', 'assets/upload/monev/pdf/2. IUI.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(90, 55, 2, '7. Akte Pendirian Perusahan.pdf', 'application/pdf', 'assets/upload/monev/pdf/7. Akte Pendirian Perusahan.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(91, 55, 3, 'Tanda Nama Perusahaan.jpeg', 'image/jpeg', 'assets/upload/monev/img/Tanda Nama Perusahaan.jpeg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(92, 56, 1, '2. IUI.pdf', 'application/pdf', 'assets/upload/monev/pdf/2. IUI.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(93, 56, 2, '7. Akte Pendirian Perusahan.pdf', 'application/pdf', 'assets/upload/monev/pdf/7. Akte Pendirian Perusahan.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(94, 56, 3, 'Tanda Nama Perusahaan.jpeg', 'image/jpeg', 'assets/upload/monev/img/Tanda Nama Perusahaan.jpeg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(95, 57, 1, '2. IUI.pdf', 'application/pdf', 'assets/upload/monev/pdf/2. IUI.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(96, 57, 2, '7. Akte Pendirian Perusahan.pdf', 'application/pdf', 'assets/upload/monev/pdf/7. Akte Pendirian Perusahan.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(97, 57, 3, 'Tanda Nama Perusahaan.jpeg', 'image/jpeg', 'assets/upload/monev/img/Tanda Nama Perusahaan.jpeg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(98, 58, 1, '2. IUI.pdf', 'application/pdf', 'assets/upload/monev/pdf/2. IUI.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(99, 58, 2, '7. Akte Pendirian Perusahan.pdf', 'application/pdf', 'assets/upload/monev/pdf/7. Akte Pendirian Perusahan.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(100, 58, 3, 'Tanda Nama Perusahaan.jpeg', 'image/jpeg', 'assets/upload/monev/img/Tanda Nama Perusahaan.jpeg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(101, 59, 1, '2. IUI.pdf', 'application/pdf', 'assets/upload/monev/pdf/2. IUI.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(102, 59, 2, '7. Akte Pendirian Perusahan.pdf', 'application/pdf', 'assets/upload/monev/pdf/7. Akte Pendirian Perusahan.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(103, 59, 3, 'Tanda Nama Perusahaan.jpeg', 'image/jpeg', 'assets/upload/monev/img/Tanda Nama Perusahaan.jpeg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(104, 60, 1, '2. IUI.pdf', 'application/pdf', 'assets/upload/monev/pdf/2. IUI.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(105, 60, 2, '7. Akte Pendirian Perusahan.pdf', 'application/pdf', 'assets/upload/monev/pdf/7. Akte Pendirian Perusahan.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(106, 60, 3, 'Tanda Nama Perusahaan.jpeg', 'image/jpeg', 'assets/upload/monev/img/Tanda Nama Perusahaan.jpeg');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(107, 61, 1, '2. IUI.pdf', 'application/pdf', 'assets/upload/monev/pdf/2. IUI.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(108, 61, 2, '7. Akte Pendirian Perusahan.pdf', 'application/pdf', 'assets/upload/monev/pdf/7. Akte Pendirian Perusahan.pdf');
INSERT INTO `monev_hanggar_file` (`id`, `idLaporan`, `item`, `namaFile`, `typeFile`, `lokasi`) VALUES
	(109, 61, 3, 'Tanda Nama Perusahaan.jpeg', 'image/jpeg', 'assets/upload/monev/img/Tanda Nama Perusahaan.jpeg');
/*!40000 ALTER TABLE `monev_hanggar_file` ENABLE KEYS */;

-- membuang struktur untuk table monevtpb.monev_hanggar_isi
CREATE TABLE IF NOT EXISTS `monev_hanggar_isi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idLaporan` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `kondisi` enum('Y','N') NOT NULL,
  `keterangan` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=324 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel monevtpb.monev_hanggar_isi: ~19 rows (lebih kurang)
DELETE FROM `monev_hanggar_isi`;
/*!40000 ALTER TABLE `monev_hanggar_isi` DISABLE KEYS */;
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(305, 17, 1, 'Y', 'selama perusahaan beroperasi');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(306, 17, 2, 'Y', 'Ate Satoshi Abe');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(307, 17, 3, 'Y', 'A');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(308, 17, 4, 'Y', 'A');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(309, 17, 5, 'Y', 'A');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(310, 17, 6, 'Y', 'A');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(311, 17, 7, 'Y', 'A');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(312, 17, 8, 'Y', 'A');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(313, 17, 9, 'Y', 'A');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(314, 17, 10, 'Y', 'A');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(315, 17, 11, 'Y', 'A');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(316, 17, 12, 'Y', 'A');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(317, 17, 13, 'Y', 'A');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(318, 17, 14, 'Y', 'A');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(319, 17, 15, 'Y', 'A');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(320, 17, 16, 'Y', 'A');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(321, 17, 17, 'Y', 'A');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(322, 17, 18, 'Y', 'A');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(323, 17, 19, 'Y', 'A');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(324, 18, 1, 'Y', 'No. 539/1/IU/PMA/2018\r\nMasa berlaku: Selama perusahaan Beroperasi ');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(325, 18, 2, 'Y', 'Andrizal');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(326, 18, 3, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(327, 18, 4, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(328, 18, 5, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(329, 18, 6, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(330, 18, 7, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(331, 18, 8, 'Y', '1) BC 2.3 Nopen:  004159 tgl.20/03/2019\r\n2) BC 4.0 Nopen: 011200 tgl.06/03/2019\r\n3) BC 3.0 Nopen: 115963 tgl.18/03/2019');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(332, 18, 9, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(333, 18, 10, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(334, 18, 11, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(335, 18, 12, 'Y', 'Tidak dalam pembekuan');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(336, 18, 13, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(337, 18, 14, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(338, 18, 15, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(339, 18, 16, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(340, 18, 17, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(341, 18, 18, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(342, 18, 19, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(343, 19, 1, 'Y', 'Nomor : 539/1/IU/PMA/2018\r\nBerlaku selama perusahaan beroperasi');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(344, 19, 2, 'Y', 'Andrizal');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(345, 19, 3, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(346, 19, 4, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(347, 19, 5, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(348, 19, 6, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(349, 19, 7, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(350, 19, 8, 'Y', 'BC 2.3 Nopen:  004159 tgl.20/03/2019\r\nBC 4.0 Nopen: 011200 tgl.06/03/2019\r\nBC 3.0 Nopen: 115963 tgl.18/03/2019');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(351, 19, 9, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(352, 19, 10, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(353, 19, 11, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(354, 19, 12, 'Y', 'Tidak dalam pembekuan izin TPB');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(355, 19, 13, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(356, 19, 14, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(357, 19, 15, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(358, 19, 16, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(359, 19, 17, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(360, 19, 18, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(361, 19, 19, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(362, 20, 1, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(363, 20, 2, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(364, 20, 3, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(365, 20, 4, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(366, 20, 5, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(367, 20, 6, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(368, 20, 7, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(369, 20, 8, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(370, 20, 9, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(371, 20, 10, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(372, 20, 11, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(373, 20, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(374, 20, 13, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(375, 20, 14, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(376, 20, 15, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(377, 20, 16, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(378, 20, 17, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(379, 20, 18, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(380, 20, 19, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(381, 21, 1, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(382, 21, 2, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(383, 21, 3, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(384, 21, 4, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(385, 21, 5, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(386, 21, 6, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(387, 21, 7, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(388, 21, 8, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(389, 21, 9, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(390, 21, 10, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(391, 21, 11, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(392, 21, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(393, 21, 13, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(394, 21, 14, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(395, 21, 15, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(396, 21, 16, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(397, 21, 17, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(398, 21, 18, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(399, 21, 19, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(400, 22, 1, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(401, 22, 2, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(402, 22, 3, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(403, 22, 4, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(404, 22, 5, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(405, 22, 6, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(406, 22, 7, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(407, 22, 8, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(408, 22, 9, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(409, 22, 10, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(410, 22, 11, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(411, 22, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(412, 22, 13, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(413, 22, 14, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(414, 22, 15, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(415, 22, 16, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(416, 22, 17, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(417, 22, 18, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(418, 22, 19, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(419, 23, 1, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(420, 23, 2, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(421, 23, 3, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(422, 23, 4, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(423, 23, 5, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(424, 23, 6, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(425, 23, 7, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(426, 23, 8, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(427, 23, 9, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(428, 23, 10, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(429, 23, 11, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(430, 23, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(431, 23, 13, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(432, 23, 14, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(433, 23, 15, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(434, 23, 16, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(435, 23, 17, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(436, 23, 18, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(437, 23, 19, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(438, 24, 1, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(439, 24, 2, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(440, 24, 3, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(441, 24, 4, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(442, 24, 5, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(443, 24, 6, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(444, 24, 7, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(445, 24, 8, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(446, 24, 9, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(447, 24, 10, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(448, 24, 11, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(449, 24, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(450, 24, 13, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(451, 24, 14, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(452, 24, 15, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(453, 24, 16, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(454, 24, 17, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(455, 24, 18, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(456, 24, 19, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(457, 25, 1, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(458, 25, 2, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(459, 25, 3, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(460, 25, 4, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(461, 25, 5, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(462, 25, 6, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(463, 25, 7, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(464, 25, 8, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(465, 25, 9, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(466, 25, 10, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(467, 25, 11, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(468, 25, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(469, 25, 13, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(470, 25, 14, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(471, 25, 15, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(472, 25, 16, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(473, 25, 17, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(474, 25, 18, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(475, 25, 19, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(476, 26, 1, 'Y', 'Ya');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(477, 26, 2, 'Y', 'Ya');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(478, 26, 3, 'Y', 'Ya');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(479, 26, 4, 'Y', 'Ya');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(480, 26, 5, 'Y', 'YA');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(481, 26, 6, 'Y', 'YA');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(482, 26, 7, 'Y', 'YA');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(483, 26, 8, 'Y', 'YA');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(484, 26, 9, 'Y', 'YA');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(485, 26, 10, 'Y', 'YA');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(486, 26, 11, 'Y', 'YA');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(487, 26, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(488, 26, 13, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(489, 26, 14, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(490, 26, 15, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(491, 26, 16, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(492, 26, 17, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(493, 26, 18, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(494, 26, 19, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(495, 27, 1, 'Y', 'No 22/T/INDUSTRI/2008\r\nBerlaku: Selama perusahaan beroperasi');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(496, 27, 2, 'Y', 'ate satoshi abe');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(497, 27, 3, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(498, 27, 4, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(499, 27, 5, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(500, 27, 6, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(501, 27, 7, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(502, 27, 8, 'Y', 'Dok.Pabean yang diuji petik:\r\nBC 2.3 Nopen: 003928 tgl. 18/03/2019\r\nBC 2.5 Nopen: 001829 tgl.13/03/2019\r\nBC 2.6.1 Nopen: 002407 tgl. 19/03/2019\r\nBC 2.6.2 Nopen: 005490 tgl. 25/03/2019\r\nBC 3.0 Nopen: 125338 tgl. 22/03/2019\r\nBC 4.0 Nopen: 013557 tgl. 20/03/2019\r\nBC 4.1 Nopen:  005122 tgl. 12/03/2019');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(503, 27, 9, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(504, 27, 10, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(505, 27, 11, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(506, 27, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(507, 27, 13, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(508, 27, 14, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(509, 27, 15, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(510, 27, 16, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(511, 27, 17, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(512, 27, 18, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(513, 27, 19, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(514, 28, 1, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(515, 28, 2, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(516, 28, 3, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(517, 28, 4, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(518, 28, 5, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(519, 28, 6, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(520, 28, 7, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(521, 28, 8, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(522, 28, 9, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(523, 28, 10, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(524, 28, 11, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(525, 28, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(526, 28, 13, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(527, 28, 14, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(528, 28, 15, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(529, 28, 16, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(530, 28, 17, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(531, 28, 18, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(532, 28, 19, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(533, 29, 1, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(534, 29, 2, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(535, 29, 3, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(536, 29, 4, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(537, 29, 5, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(538, 29, 6, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(539, 29, 7, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(540, 29, 8, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(541, 29, 9, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(542, 29, 10, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(543, 29, 11, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(544, 29, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(545, 29, 13, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(546, 29, 14, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(547, 29, 15, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(548, 29, 16, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(549, 29, 17, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(550, 29, 18, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(551, 29, 19, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(552, 30, 1, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(553, 30, 2, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(554, 30, 3, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(555, 30, 4, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(556, 30, 5, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(557, 30, 6, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(558, 30, 7, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(559, 30, 8, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(560, 30, 9, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(561, 30, 10, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(562, 30, 11, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(563, 30, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(564, 30, 13, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(565, 30, 14, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(566, 30, 15, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(567, 30, 16, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(568, 30, 17, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(569, 30, 18, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(570, 30, 19, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(571, 31, 1, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(572, 31, 2, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(573, 31, 3, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(574, 31, 4, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(575, 31, 5, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(576, 31, 6, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(577, 31, 7, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(578, 31, 8, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(579, 31, 9, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(580, 31, 10, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(581, 31, 11, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(582, 31, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(583, 31, 13, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(584, 31, 14, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(585, 31, 15, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(586, 31, 16, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(587, 31, 17, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(588, 31, 18, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(589, 31, 19, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(590, 32, 1, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(591, 32, 2, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(592, 32, 3, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(593, 32, 4, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(594, 32, 5, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(595, 32, 6, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(596, 32, 7, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(597, 32, 8, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(598, 32, 9, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(599, 32, 10, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(600, 32, 11, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(601, 32, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(602, 32, 13, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(603, 32, 14, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(604, 32, 15, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(605, 32, 16, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(606, 32, 17, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(607, 32, 18, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(608, 32, 19, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(609, 33, 1, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(610, 33, 2, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(611, 33, 3, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(612, 33, 4, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(613, 33, 5, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(614, 33, 6, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(615, 33, 7, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(616, 33, 8, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(617, 33, 9, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(618, 33, 10, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(619, 33, 11, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(620, 33, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(621, 33, 13, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(622, 33, 14, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(623, 33, 15, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(624, 33, 16, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(625, 33, 17, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(626, 33, 18, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(627, 33, 19, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(628, 34, 1, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(629, 34, 2, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(630, 34, 3, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(631, 34, 4, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(632, 34, 5, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(633, 34, 6, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(634, 34, 7, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(635, 34, 8, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(636, 34, 9, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(637, 34, 10, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(638, 34, 11, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(639, 34, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(640, 34, 13, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(641, 34, 14, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(642, 34, 15, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(643, 34, 16, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(644, 34, 17, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(645, 34, 18, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(646, 34, 19, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(647, 35, 1, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(648, 35, 2, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(649, 35, 3, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(650, 35, 4, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(651, 35, 5, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(652, 35, 6, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(653, 35, 7, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(654, 35, 8, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(655, 35, 9, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(656, 35, 10, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(657, 35, 11, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(658, 35, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(659, 35, 13, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(660, 35, 14, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(661, 35, 15, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(662, 35, 16, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(663, 35, 17, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(664, 35, 18, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(665, 35, 19, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(666, 36, 1, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(667, 36, 2, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(668, 36, 3, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(669, 36, 4, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(670, 36, 5, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(671, 36, 6, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(672, 36, 7, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(673, 36, 8, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(674, 36, 9, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(675, 36, 10, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(676, 36, 11, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(677, 36, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(678, 36, 13, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(679, 36, 14, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(680, 36, 15, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(681, 36, 16, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(682, 36, 17, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(683, 36, 18, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(684, 36, 19, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(685, 37, 1, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(686, 37, 2, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(687, 37, 3, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(688, 37, 4, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(689, 37, 5, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(690, 37, 6, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(691, 37, 7, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(692, 37, 8, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(693, 37, 9, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(694, 37, 10, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(695, 37, 11, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(696, 37, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(697, 37, 13, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(698, 37, 14, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(699, 37, 15, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(700, 37, 16, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(701, 37, 17, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(702, 37, 18, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(703, 37, 19, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(704, 38, 1, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(705, 38, 2, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(706, 38, 3, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(707, 38, 4, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(708, 38, 5, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(709, 38, 6, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(710, 38, 7, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(711, 38, 8, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(712, 38, 9, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(713, 38, 10, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(714, 38, 11, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(715, 38, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(716, 38, 13, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(717, 38, 14, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(718, 38, 15, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(719, 38, 16, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(720, 38, 17, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(721, 38, 18, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(722, 38, 19, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(723, 39, 1, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(724, 39, 2, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(725, 39, 3, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(726, 39, 4, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(727, 39, 5, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(728, 39, 6, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(729, 39, 7, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(730, 39, 8, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(731, 39, 9, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(732, 39, 10, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(733, 39, 11, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(734, 39, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(735, 39, 13, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(736, 39, 14, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(737, 39, 15, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(738, 39, 16, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(739, 39, 17, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(740, 39, 18, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(741, 39, 19, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(742, 40, 1, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(743, 40, 2, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(744, 40, 3, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(745, 40, 4, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(746, 40, 5, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(747, 40, 6, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(748, 40, 7, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(749, 40, 8, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(750, 40, 9, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(751, 40, 10, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(752, 40, 11, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(753, 40, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(754, 40, 13, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(755, 40, 14, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(756, 40, 15, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(757, 40, 16, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(758, 40, 17, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(759, 40, 18, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(760, 40, 19, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(761, 41, 1, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(762, 41, 2, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(763, 41, 3, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(764, 41, 4, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(765, 41, 5, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(766, 41, 6, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(767, 41, 7, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(768, 41, 8, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(769, 41, 9, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(770, 41, 10, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(771, 41, 11, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(772, 41, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(773, 41, 13, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(774, 41, 14, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(775, 41, 15, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(776, 41, 16, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(777, 41, 17, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(778, 41, 18, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(779, 41, 19, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(780, 42, 1, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(781, 42, 2, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(782, 42, 3, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(783, 42, 4, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(784, 42, 5, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(785, 42, 6, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(786, 42, 7, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(787, 42, 8, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(788, 42, 9, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(789, 42, 10, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(790, 42, 11, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(791, 42, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(792, 42, 13, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(793, 42, 14, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(794, 42, 15, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(795, 42, 16, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(796, 42, 17, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(797, 42, 18, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(798, 42, 19, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(799, 43, 1, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(800, 43, 2, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(801, 43, 3, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(802, 43, 4, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(803, 43, 5, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(804, 43, 6, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(805, 43, 7, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(806, 43, 8, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(807, 43, 9, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(808, 43, 10, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(809, 43, 11, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(810, 43, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(811, 43, 13, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(812, 43, 14, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(813, 43, 15, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(814, 43, 16, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(815, 43, 17, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(816, 43, 18, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(817, 43, 19, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(818, 44, 1, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(819, 44, 2, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(820, 44, 3, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(821, 44, 4, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(822, 44, 5, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(823, 44, 6, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(824, 44, 7, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(825, 44, 8, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(826, 44, 9, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(827, 44, 10, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(828, 44, 11, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(829, 44, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(830, 44, 13, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(831, 44, 14, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(832, 44, 15, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(833, 44, 16, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(834, 44, 17, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(835, 44, 18, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(836, 44, 19, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(837, 45, 1, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(838, 45, 2, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(839, 45, 3, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(840, 45, 4, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(841, 45, 5, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(842, 45, 6, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(843, 45, 7, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(844, 45, 8, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(845, 45, 9, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(846, 45, 10, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(847, 45, 11, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(848, 45, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(849, 45, 13, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(850, 45, 14, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(851, 45, 15, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(852, 45, 16, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(853, 45, 17, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(854, 45, 18, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(855, 45, 19, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(856, 46, 1, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(857, 46, 2, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(858, 46, 3, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(859, 46, 4, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(860, 46, 5, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(861, 46, 6, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(862, 46, 7, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(863, 46, 8, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(864, 46, 9, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(865, 46, 10, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(866, 46, 11, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(867, 46, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(868, 46, 13, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(869, 46, 14, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(870, 46, 15, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(871, 46, 16, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(872, 46, 17, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(873, 46, 18, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(874, 46, 19, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(875, 47, 1, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(876, 47, 2, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(877, 47, 3, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(878, 47, 4, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(879, 47, 5, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(880, 47, 6, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(881, 47, 7, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(882, 47, 8, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(883, 47, 9, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(884, 47, 10, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(885, 47, 11, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(886, 47, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(887, 47, 13, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(888, 47, 14, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(889, 47, 15, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(890, 47, 16, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(891, 47, 17, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(892, 47, 18, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(893, 47, 19, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(894, 48, 1, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(895, 48, 2, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(896, 48, 3, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(897, 48, 4, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(898, 48, 5, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(899, 48, 6, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(900, 48, 7, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(901, 48, 8, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(902, 48, 9, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(903, 48, 10, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(904, 48, 11, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(905, 48, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(906, 48, 13, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(907, 48, 14, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(908, 48, 15, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(909, 48, 16, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(910, 48, 17, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(911, 48, 18, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(912, 48, 19, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(913, 49, 1, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(914, 49, 2, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(915, 49, 3, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(916, 49, 4, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(917, 49, 5, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(918, 49, 6, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(919, 49, 7, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(920, 49, 8, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(921, 49, 9, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(922, 49, 10, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(923, 49, 11, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(924, 49, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(925, 49, 13, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(926, 49, 14, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(927, 49, 15, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(928, 49, 16, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(929, 49, 17, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(930, 49, 18, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(931, 49, 19, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(932, 50, 1, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(933, 50, 2, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(934, 50, 3, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(935, 50, 4, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(936, 50, 5, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(937, 50, 6, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(938, 50, 7, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(939, 50, 8, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(940, 50, 9, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(941, 50, 10, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(942, 50, 11, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(943, 50, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(944, 50, 13, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(945, 50, 14, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(946, 50, 15, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(947, 50, 16, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(948, 50, 17, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(949, 50, 18, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(950, 50, 19, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(951, 51, 1, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(952, 51, 2, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(953, 51, 3, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(954, 51, 4, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(955, 51, 5, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(956, 51, 6, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(957, 51, 7, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(958, 51, 8, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(959, 51, 9, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(960, 51, 10, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(961, 51, 11, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(962, 51, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(963, 51, 13, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(964, 51, 14, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(965, 51, 15, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(966, 51, 16, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(967, 51, 17, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(968, 51, 18, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(969, 51, 19, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(970, 52, 1, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(971, 52, 2, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(972, 52, 3, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(973, 52, 4, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(974, 52, 5, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(975, 52, 6, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(976, 52, 7, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(977, 52, 8, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(978, 52, 9, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(979, 52, 10, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(980, 52, 11, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(981, 52, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(982, 52, 13, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(983, 52, 14, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(984, 52, 15, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(985, 52, 16, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(986, 52, 17, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(987, 52, 18, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(988, 52, 19, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(989, 53, 1, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(990, 53, 2, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(991, 53, 3, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(992, 53, 4, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(993, 53, 5, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(994, 53, 6, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(995, 53, 7, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(996, 53, 8, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(997, 53, 9, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(998, 53, 10, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(999, 53, 11, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1000, 53, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1001, 53, 13, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1002, 53, 14, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1003, 53, 15, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1004, 53, 16, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1005, 53, 17, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1006, 53, 18, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1007, 53, 19, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1008, 54, 1, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1009, 54, 2, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1010, 54, 3, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1011, 54, 4, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1012, 54, 5, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1013, 54, 6, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1014, 54, 7, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1015, 54, 8, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1016, 54, 9, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1017, 54, 10, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1018, 54, 11, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1019, 54, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1020, 54, 13, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1021, 54, 14, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1022, 54, 15, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1023, 54, 16, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1024, 54, 17, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1025, 54, 18, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1026, 54, 19, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1027, 55, 1, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1028, 55, 2, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1029, 55, 3, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1030, 55, 4, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1031, 55, 5, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1032, 55, 6, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1033, 55, 7, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1034, 55, 8, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1035, 55, 9, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1036, 55, 10, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1037, 55, 11, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1038, 55, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1039, 55, 13, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1040, 55, 14, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1041, 55, 15, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1042, 55, 16, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1043, 55, 17, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1044, 55, 18, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1045, 55, 19, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1046, 56, 1, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1047, 56, 2, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1048, 56, 3, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1049, 56, 4, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1050, 56, 5, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1051, 56, 6, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1052, 56, 7, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1053, 56, 8, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1054, 56, 9, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1055, 56, 10, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1056, 56, 11, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1057, 56, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1058, 56, 13, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1059, 56, 14, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1060, 56, 15, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1061, 56, 16, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1062, 56, 17, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1063, 56, 18, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1064, 56, 19, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1065, 57, 1, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1066, 57, 2, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1067, 57, 3, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1068, 57, 4, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1069, 57, 5, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1070, 57, 6, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1071, 57, 7, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1072, 57, 8, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1073, 57, 9, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1074, 57, 10, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1075, 57, 11, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1076, 57, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1077, 57, 13, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1078, 57, 14, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1079, 57, 15, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1080, 57, 16, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1081, 57, 17, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1082, 57, 18, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1083, 57, 19, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1084, 58, 1, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1085, 58, 2, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1086, 58, 3, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1087, 58, 4, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1088, 58, 5, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1089, 58, 6, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1090, 58, 7, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1091, 58, 8, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1092, 58, 9, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1093, 58, 10, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1094, 58, 11, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1095, 58, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1096, 58, 13, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1097, 58, 14, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1098, 58, 15, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1099, 58, 16, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1100, 58, 17, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1101, 58, 18, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1102, 58, 19, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1103, 59, 1, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1104, 59, 2, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1105, 59, 3, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1106, 59, 4, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1107, 59, 5, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1108, 59, 6, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1109, 59, 7, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1110, 59, 8, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1111, 59, 9, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1112, 59, 10, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1113, 59, 11, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1114, 59, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1115, 59, 13, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1116, 59, 14, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1117, 59, 15, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1118, 59, 16, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1119, 59, 17, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1120, 59, 18, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1121, 59, 19, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1122, 60, 1, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1123, 60, 2, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1124, 60, 3, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1125, 60, 4, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1126, 60, 5, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1127, 60, 6, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1128, 60, 7, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1129, 60, 8, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1130, 60, 9, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1131, 60, 10, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1132, 60, 11, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1133, 60, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1134, 60, 13, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1135, 60, 14, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1136, 60, 15, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1137, 60, 16, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1138, 60, 17, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1139, 60, 18, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1140, 60, 19, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1141, 61, 1, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1142, 61, 2, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1143, 61, 3, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1144, 61, 4, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1145, 61, 5, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1146, 61, 6, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1147, 61, 7, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1148, 61, 8, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1149, 61, 9, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1150, 61, 10, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1151, 61, 11, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1152, 61, 12, 'Y', '');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1153, 61, 13, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1154, 61, 14, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1155, 61, 15, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1156, 61, 16, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1157, 61, 17, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1158, 61, 18, 'Y', 'v');
INSERT INTO `monev_hanggar_isi` (`id`, `idLaporan`, `item`, `kondisi`, `keterangan`) VALUES
	(1159, 61, 19, 'Y', 'v');
/*!40000 ALTER TABLE `monev_hanggar_isi` ENABLE KEYS */;

-- membuang struktur untuk table monevtpb.monev_pembatalan
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel monevtpb.monev_pembatalan: ~0 rows (lebih kurang)
DELETE FROM `monev_pembatalan`;
/*!40000 ALTER TABLE `monev_pembatalan` DISABLE KEYS */;
/*!40000 ALTER TABLE `monev_pembatalan` ENABLE KEYS */;

-- membuang struktur untuk view monevtpb.monev_hanggar_detail
-- Menghapus tabel sementara dan menciptakan struktur VIEW terakhir
DROP TABLE IF EXISTS `monev_hanggar_detail`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `monev_hanggar_detail` AS SELECT 
        `b`.`NPWP` AS `NPWP`,
        `a`.`id` AS `id`,
        `a`.`idPerusahaan` AS `idPerusahaan`,
        `a`.`tanggalLaporan` AS `tanggalLaporan`,
        `a`.`keterangan` AS `keterangan`,
        `a`.`flag` AS `flag`,
        `a`.`NipPegawai` AS `NipPegawai`,
        `a`.`WktRkm` AS `WktRkm`,
        `b`.`nama_perusahaan` AS `nama_perusahaan`,
        `b`.`alamat` AS `alamat`,
        `b`.`ijin_kelola_tpb` AS `ijin_kelola_tpb`,
        `b`.`id_hanggar` AS `IdHanggar`,
        `c`.`NamaPegawai` AS `NamaPegawai`
    FROM
        (`monevtpb`.`monev_hanggar` `a`
        LEFT JOIN `sikabayan_app`.`tpbdetail` `b` ON ((`a`.`idPerusahaan` = `b`.`id_perusahaan`))
        LEFT JOIN `appdashboard`.`tbpegawai` `c` ON  (( `a`.`NipPegawai` = `c`.`NIPPegawai` ))) ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
