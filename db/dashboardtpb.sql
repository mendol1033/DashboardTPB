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


-- Dumping database structure for dashboardtpb
CREATE DATABASE IF NOT EXISTS `dashboardtpb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dashboardtpb`;

-- Dumping structure for view dashboardtpb.bc_40_detail_barang
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `bc_40_detail_barang` (
	`NPWP` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`NAMA_PENGUSAHA` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`KODE_DOKUMEN` VARCHAR(6) NULL COLLATE 'latin1_swedish_ci',
	`HS_CODE` VARCHAR(12) NOT NULL COLLATE 'latin1_swedish_ci',
	`NAMA_BARANG` VARCHAR(500) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for table dashboardtpb.tpb_bahan_baku
CREATE TABLE IF NOT EXISTS `tpb_bahan_baku` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOMOR_AJU` varchar(26) NOT NULL,
  `SERI_BARANG` int(11) NOT NULL,
  `KODE_BARANG` varchar(100) DEFAULT NULL,
  `HS_CODE` varchar(12) DEFAULT NULL,
  `JENIS_SATUAN` varchar(3) DEFAULT NULL,
  `JUMLAH_SATUAN` decimal(18,2) DEFAULT NULL,
  `CIF` decimal(18,2) DEFAULT NULL,
  `CIF_RUPIAH` decimal(18,2) DEFAULT NULL,
  `HARGA_PENYERAHAN` decimal(18,2) DEFAULT NULL,
  `JENIS_DOK_ASAL` varchar(3) DEFAULT NULL,
  `NOMOR_AJU_DOK_ASAL` varchar(26) DEFAULT NULL,
  `TANGGAL_DAFTAR_DOK_ASAL` date DEFAULT NULL,
  `KODE_KANTOR` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table dashboardtpb.tpb_barang
CREATE TABLE IF NOT EXISTS `tpb_barang` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOMOR_AJU` varchar(26) NOT NULL,
  `HS_CODE` varchar(12) NOT NULL,
  `SERI_BARANG` int(11) NOT NULL,
  `NAMA_BARANG` varchar(500) NOT NULL,
  `MERK` varchar(140) NOT NULL,
  `TIPE` varchar(140) NOT NULL,
  `KODE_BARANG` varchar(140) NOT NULL,
  `JUMLAH_SATUAN` decimal(18,2) NOT NULL,
  `KODE_SATUAN` varchar(3) NOT NULL,
  `HARGA_SATUAN` decimal(18,2) NOT NULL,
  `CIF` decimal(18,2) NOT NULL,
  `CIF_RUPIAH` decimal(18,2) NOT NULL,
  `JUMLAH_KEMASAN` varchar(140) NOT NULL,
  `KODE_KEMASAN` varchar(2) NOT NULL,
  `KODE_NEGARA_ASAL` varchar(2) NOT NULL,
  `KODE_JENIS_NILAI` varchar(3) NOT NULL,
  `SKA` varchar(26) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=131567 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table dashboardtpb.tpb_barang_tarif
CREATE TABLE IF NOT EXISTS `tpb_barang_tarif` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOMOR_AJU` varchar(26) NOT NULL,
  `SERI_BARANG` int(11) NOT NULL,
  `KODE_BARANG` varchar(140) NOT NULL,
  `NAMA_BARANG` varchar(500) NOT NULL,
  `JENIS_TARIF` varchar(10) NOT NULL,
  `TARIF` decimal(18,2) NOT NULL,
  `NILAI_BAYAR` decimal(18,2) NOT NULL,
  `KODE_FASILITAS` varchar(1) NOT NULL,
  `TARIF_FASILITAS` int(11) NOT NULL,
  `NILAI_FASILITAS` decimal(18,2) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=401047 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table dashboardtpb.tpb_dokumen_pelengkap
CREATE TABLE IF NOT EXISTS `tpb_dokumen_pelengkap` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOMOR_AJU` varchar(26) NOT NULL,
  `SERI_DOKUMEN` int(11) DEFAULT NULL,
  `JENIS_DOKUMEN` varchar(500) DEFAULT NULL,
  `NOMOR_DOKUMEN` varchar(100) DEFAULT NULL,
  `TANGGAL_DOKUMEN` date DEFAULT NULL,
  `FLAG_TERIMA` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=100204 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table dashboardtpb.tpb_header
CREATE TABLE IF NOT EXISTS `tpb_header` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOMOR_AJU` varchar(26) NOT NULL,
  `NOMOR_DAFTAR` varchar(6) NOT NULL,
  `TANGGAL_DAFTAR` datetime DEFAULT NULL,
  `STATUS_DOKUMEN` varchar(50) NOT NULL,
  `KODE_DOKUMEN` varchar(6) NOT NULL,
  `KODE_KANTOR` varchar(6) NOT NULL,
  `KODE_KANTOR_BONGKAR` varchar(6) DEFAULT NULL,
  `NAMA_PEMASOK` varchar(100) DEFAULT NULL,
  `ALAMAT_PEMASOK` varchar(300) DEFAULT NULL,
  `KODE_NEGARA_PEMASOK` varchar(2) DEFAULT NULL,
  `NOMOR_IJIN_TPB` varchar(50) DEFAULT NULL,
  `TANGGAL_IJIN_TPB` date DEFAULT NULL,
  `NPWP` varchar(50) DEFAULT NULL,
  `NAMA_PENGUSAHA` varchar(100) DEFAULT NULL,
  `ALAMAT_PENGUSAHA` varchar(300) DEFAULT NULL,
  `ID_PPJK` varchar(50) DEFAULT NULL,
  `NAMA_PPJK` varchar(100) DEFAULT NULL,
  `ALAMAT_PPJK` varchar(300) DEFAULT NULL,
  `NPPPJK` varchar(50) DEFAULT NULL,
  `TANGGAL_NPPPJK` date DEFAULT NULL,
  `NAMA_PENGANGKUT` varchar(100) DEFAULT NULL,
  `NOMOR_VOY_FLIGHT` varchar(20) DEFAULT NULL,
  `NOMOR_BC11` varchar(20) DEFAULT NULL,
  `TANGGAL_BC11` date DEFAULT NULL,
  `POS_BC11` varchar(20) DEFAULT NULL,
  `KODE_TPS` varchar(4) DEFAULT NULL,
  `KODE_VALUTA` varchar(3) DEFAULT NULL,
  `KURS` decimal(18,2) DEFAULT NULL,
  `FOB` decimal(18,2) DEFAULT NULL,
  `CIF` decimal(18,2) DEFAULT NULL,
  `CIF_RUPIAH` decimal(18,2) DEFAULT NULL,
  `BRUTO` decimal(18,2) DEFAULT NULL,
  `NETTO` decimal(18,2) DEFAULT NULL,
  `JUMLAH_BARANG` int(11) DEFAULT NULL,
  `KODE_TUJUAN_TPB` varchar(255) DEFAULT NULL,
  `JUMLAH_KONTAINER` int(11) DEFAULT NULL,
  `JUMLAH_KEMASAN` int(11) DEFAULT NULL,
  `ID_PENERIMA` varchar(50) DEFAULT NULL,
  `NAMA_PENERIMA` varchar(100) DEFAULT NULL,
  `ALAMAT_PENERIMA` varchar(300) DEFAULT NULL,
  `NOMOR_API_PENERIMA` varchar(100) DEFAULT NULL,
  `NOMOR_API_PEMILIK` varchar(100) DEFAULT NULL,
  `KODE_KANTOR_TUJUAN` varchar(6) DEFAULT NULL,
  `NOMOR_IZIN_TPB_PENERIMA` varchar(50) DEFAULT NULL,
  `ID_PENGIRIM` varchar(50) DEFAULT NULL,
  `NAMA_PENGIRIM` varchar(100) DEFAULT NULL,
  `ALAMAT_PENGIRIM` varchar(300) DEFAULT NULL,
  `ID_IMPORTIR` varchar(50) DEFAULT NULL,
  `NAMA_IMPORTIR` varchar(100) DEFAULT NULL,
  `ALAMAT_IMPORTIR` varchar(300) DEFAULT NULL,
  `NOMOR_API_IMPORTIR` varchar(50) DEFAULT NULL,
  `NIK` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NOMOR_AJU` (`NOMOR_AJU`)
) ENGINE=InnoDB AUTO_INCREMENT=26117 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table dashboardtpb.tpb_kemasan
CREATE TABLE IF NOT EXISTS `tpb_kemasan` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOMOR_AJU` varchar(26) NOT NULL,
  `JUMLAH_KEMASAN` varchar(50) DEFAULT NULL,
  `KODE_JENIS_KEMASAN` varchar(3) DEFAULT NULL,
  `MERK_KEMASAN` varchar(50) DEFAULT NULL,
  `KETERANGAN` varchar(300) DEFAULT NULL,
  `NOMOR_POLISI` varchar(50) DEFAULT NULL,
  `NOMOR_SEGEL` varchar(50) DEFAULT NULL,
  `WAKTU_GATE_IN` datetime DEFAULT NULL,
  `NIP_GATE_IN` varchar(18) DEFAULT NULL,
  `WAKTU_GATE_OUT` datetime DEFAULT NULL,
  `NIP_GATE_OUT` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26127 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table dashboardtpb.tpb_kontainer
CREATE TABLE IF NOT EXISTS `tpb_kontainer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOMOR_AJU` varchar(26) NOT NULL,
  `NOMOR_KONTAINER` varchar(20) DEFAULT NULL,
  `KODE_UKURAN_KONTAINER` varchar(5) DEFAULT NULL,
  `KODE_TIPE_KONTAINER` varchar(5) DEFAULT NULL,
  `NOMOR_POLISI` varchar(50) DEFAULT NULL,
  `NOMOR_SEGEL` varchar(50) DEFAULT NULL,
  `WAKTU_GATE_IN` datetime DEFAULT NULL,
  `NIP_GATE_IN` varchar(18) DEFAULT NULL,
  `WAKTU_GATE_OUT` datetime DEFAULT NULL,
  `NIP_GATE_OUT` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12043 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table dashboardtpb.tpb_nopen
CREATE TABLE IF NOT EXISTS `tpb_nopen` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOMOR_AJU` varchar(26) NOT NULL,
  `NPWP` varchar(50) NOT NULL,
  `NAMA_PERUSAHAAN` varchar(100) NOT NULL,
  `SKEP` varchar(140) NOT NULL,
  `DOKUMEN` varchar(20) NOT NULL,
  `NOMOR_DAFTAR` varchar(6) NOT NULL,
  `TANGGAL_DAFTAR` date NOT NULL,
  `STATUS` varchar(140) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NOMOR_AJU` (`NOMOR_AJU`)
) ENGINE=InnoDB AUTO_INCREMENT=26088 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table dashboardtpb.tpb_pungutan_dokumen
CREATE TABLE IF NOT EXISTS `tpb_pungutan_dokumen` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOMOR_AJU` varchar(26) NOT NULL,
  `JENIS_TARIF` varchar(10) NOT NULL DEFAULT '0',
  `NILAI_PUNGUTAN` decimal(18,2) NOT NULL DEFAULT '0.00',
  `KODE_FASILITAS` varchar(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=79581 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for view dashboardtpb.bc_40_detail_barang
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `bc_40_detail_barang`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bc_40_detail_barang` AS SELECT B.NPWP, B.NAMA_PENGUSAHA, B.KODE_DOKUMEN, A.HS_CODE, A.NAMA_BARANG FROM tpb_barang A
LEFT JOIN tpb_header B ON A.NOMOR_AJU = B.NOMOR_AJU
WHERE B.KODE_DOKUMEN = '40'
GROUP BY A.NAMA_BARANG
ORDER BY B.NPWP ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
