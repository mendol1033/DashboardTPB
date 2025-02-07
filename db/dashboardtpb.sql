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


-- Membuang struktur basisdata untuk dashboardtpb
DROP DATABASE IF EXISTS `dashboardtpb`;
CREATE DATABASE IF NOT EXISTS `dashboardtpb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dashboardtpb`;

-- membuang struktur untuk view dashboardtpb.bc_40_detail_barang
DROP VIEW IF EXISTS `bc_40_detail_barang`;
-- Membuat tabel sementara untuk menangani kesalahan ketergantungan VIEW
CREATE TABLE `bc_40_detail_barang` (
	`NPWP` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`NAMA_PENGUSAHA` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`KODE_DOKUMEN` VARCHAR(6) NULL COLLATE 'latin1_swedish_ci',
	`HS_CODE` VARCHAR(12) NOT NULL COLLATE 'latin1_swedish_ci',
	`NAMA_BARANG` VARCHAR(500) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- membuang struktur untuk table dashboardtpb.tb_jenis_dokumen
DROP TABLE IF EXISTS `tb_jenis_dokumen`;
CREATE TABLE IF NOT EXISTS `tb_jenis_dokumen` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Kd_Dok` int(11) NOT NULL DEFAULT '0',
  `Nm_Dok` varchar(50) NOT NULL DEFAULT '0',
  `Ket` varchar(255) NOT NULL DEFAULT '0',
  `Ptgs_Rkm` varchar(18) NOT NULL DEFAULT '0',
  `Wkt_Rkm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel dashboardtpb.tb_jenis_dokumen: ~17 rows (lebih kurang)
DELETE FROM `tb_jenis_dokumen`;
/*!40000 ALTER TABLE `tb_jenis_dokumen` DISABLE KEYS */;
INSERT INTO `tb_jenis_dokumen` (`Id`, `Kd_Dok`, `Nm_Dok`, `Ket`, `Ptgs_Rkm`, `Wkt_Rkm`) VALUES
	(1, 10, 'BC 1.0', 'Rencana Kedatangan Sarana Pengangkut', '199203162014111002', '2018-02-20 18:01:43');
INSERT INTO `tb_jenis_dokumen` (`Id`, `Kd_Dok`, `Nm_Dok`, `Ket`, `Ptgs_Rkm`, `Wkt_Rkm`) VALUES
	(2, 11, 'BC 1.1', 'Pemberitahuan barang kargo/niaga yang diangkut dalam sarana pengangkut', '199203162014111002', '2018-02-20 18:01:43');
INSERT INTO `tb_jenis_dokumen` (`Id`, `Kd_Dok`, `Nm_Dok`, `Ket`, `Ptgs_Rkm`, `Wkt_Rkm`) VALUES
	(3, 12, 'BC 1.2', 'Pemberitahuan barang impor yang diangkut lanjut', '199203162014111002', '2018-02-20 18:01:43');
INSERT INTO `tb_jenis_dokumen` (`Id`, `Kd_Dok`, `Nm_Dok`, `Ket`, `Ptgs_Rkm`, `Wkt_Rkm`) VALUES
	(4, 16, 'BC 1.6', 'Pemberitahuan Impor Barang ke PLB', '199203162014111002', '2018-02-20 18:01:43');
INSERT INTO `tb_jenis_dokumen` (`Id`, `Kd_Dok`, `Nm_Dok`, `Ket`, `Ptgs_Rkm`, `Wkt_Rkm`) VALUES
	(5, 20, 'BC 2.0', 'Pemberitahuan Impor Barang', '199203162014111002', '2018-02-20 18:01:43');
INSERT INTO `tb_jenis_dokumen` (`Id`, `Kd_Dok`, `Nm_Dok`, `Ket`, `Ptgs_Rkm`, `Wkt_Rkm`) VALUES
	(6, 21, 'BC 2.1', 'Pemberitahuan Impor Barang Tertentu', '199203162014111002', '2018-02-20 18:01:43');
INSERT INTO `tb_jenis_dokumen` (`Id`, `Kd_Dok`, `Nm_Dok`, `Ket`, `Ptgs_Rkm`, `Wkt_Rkm`) VALUES
	(7, 22, 'BC 2.2', 'Pemberitahuan Impor Barang penumpang/awak sarana pengangkut', '199203162014111002', '2018-02-20 18:01:43');
INSERT INTO `tb_jenis_dokumen` (`Id`, `Kd_Dok`, `Nm_Dok`, `Ket`, `Ptgs_Rkm`, `Wkt_Rkm`) VALUES
	(8, 23, 'BC 2.3', 'Pemberitahuan pemasukan barang impor ke Tempat Penimbunan Berikat', '199203162014111002', '2018-02-20 18:01:43');
INSERT INTO `tb_jenis_dokumen` (`Id`, `Kd_Dok`, `Nm_Dok`, `Ket`, `Ptgs_Rkm`, `Wkt_Rkm`) VALUES
	(9, 25, 'BC 2.5', 'Pemberitahuan pengeluaran barang dari Tempat Penimbunan Berikat ke TLDDP', '199203162014111002', '2018-02-20 18:01:43');
INSERT INTO `tb_jenis_dokumen` (`Id`, `Kd_Dok`, `Nm_Dok`, `Ket`, `Ptgs_Rkm`, `Wkt_Rkm`) VALUES
	(10, 261, 'BC 2.6.1', 'Pengeluaran Barang Tujuan Subkon TLDDP', '199203162014111002', '2018-02-20 18:01:43');
INSERT INTO `tb_jenis_dokumen` (`Id`, `Kd_Dok`, `Nm_Dok`, `Ket`, `Ptgs_Rkm`, `Wkt_Rkm`) VALUES
	(11, 262, 'BC 2.6.2', 'Pemasukan Barang Hasil Subkon TLDDP', '199203162014111002', '2018-02-20 18:01:43');
INSERT INTO `tb_jenis_dokumen` (`Id`, `Kd_Dok`, `Nm_Dok`, `Ket`, `Ptgs_Rkm`, `Wkt_Rkm`) VALUES
	(12, 27, 'BC 2.7', 'Pemberitahuan Pengeluaran Tujuan Tempat Penimbunan Berikat', '199203162014111002', '2018-02-20 18:01:43');
INSERT INTO `tb_jenis_dokumen` (`Id`, `Kd_Dok`, `Nm_Dok`, `Ket`, `Ptgs_Rkm`, `Wkt_Rkm`) VALUES
	(13, 28, 'BC 2.8', 'Pemberitahuan Impor Barang dari PLB', '199203162014111002', '2018-02-20 18:01:43');
INSERT INTO `tb_jenis_dokumen` (`Id`, `Kd_Dok`, `Nm_Dok`, `Ket`, `Ptgs_Rkm`, `Wkt_Rkm`) VALUES
	(14, 30, 'BC 3.0', 'Pemberitahuan Ekspor Barang', '199203162014111002', '2018-02-20 18:01:43');
INSERT INTO `tb_jenis_dokumen` (`Id`, `Kd_Dok`, `Nm_Dok`, `Ket`, `Ptgs_Rkm`, `Wkt_Rkm`) VALUES
	(15, 33, 'BC 3.3', 'Pemberutahuan Ekspor Barang dari PLB', '199203162014111002', '2018-02-20 18:01:43');
INSERT INTO `tb_jenis_dokumen` (`Id`, `Kd_Dok`, `Nm_Dok`, `Ket`, `Ptgs_Rkm`, `Wkt_Rkm`) VALUES
	(16, 40, 'BC 4.0', 'Pemberitahuan pemasukan barang asal daerah pabean ke Kawasan Berikat', '199203162014111002', '2018-02-20 18:01:43');
INSERT INTO `tb_jenis_dokumen` (`Id`, `Kd_Dok`, `Nm_Dok`, `Ket`, `Ptgs_Rkm`, `Wkt_Rkm`) VALUES
	(17, 41, 'BC 4.1', 'Pemberitahuan pengeluaran barang asal daerah pabean ke tempat lain dalam daerah pabean', '199203162014111002', '2018-02-20 18:01:43');
/*!40000 ALTER TABLE `tb_jenis_dokumen` ENABLE KEYS */;

-- membuang struktur untuk table dashboardtpb.tpb_bahan_baku
DROP TABLE IF EXISTS `tpb_bahan_baku`;
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

-- Membuang data untuk tabel dashboardtpb.tpb_bahan_baku: ~0 rows (lebih kurang)
DELETE FROM `tpb_bahan_baku`;
/*!40000 ALTER TABLE `tpb_bahan_baku` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpb_bahan_baku` ENABLE KEYS */;

-- membuang struktur untuk table dashboardtpb.tpb_barang
DROP TABLE IF EXISTS `tpb_barang`;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel dashboardtpb.tpb_barang: ~0 rows (lebih kurang)
DELETE FROM `tpb_barang`;
/*!40000 ALTER TABLE `tpb_barang` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpb_barang` ENABLE KEYS */;

-- membuang struktur untuk table dashboardtpb.tpb_barang_tarif
DROP TABLE IF EXISTS `tpb_barang_tarif`;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel dashboardtpb.tpb_barang_tarif: ~0 rows (lebih kurang)
DELETE FROM `tpb_barang_tarif`;
/*!40000 ALTER TABLE `tpb_barang_tarif` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpb_barang_tarif` ENABLE KEYS */;

-- membuang struktur untuk table dashboardtpb.tpb_dokumen_pelengkap
DROP TABLE IF EXISTS `tpb_dokumen_pelengkap`;
CREATE TABLE IF NOT EXISTS `tpb_dokumen_pelengkap` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOMOR_AJU` varchar(26) NOT NULL,
  `SERI_DOKUMEN` int(11) DEFAULT NULL,
  `JENIS_DOKUMEN` varchar(500) DEFAULT NULL,
  `NOMOR_DOKUMEN` varchar(100) DEFAULT NULL,
  `TANGGAL_DOKUMEN` date DEFAULT NULL,
  `FLAG_TERIMA` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel dashboardtpb.tpb_dokumen_pelengkap: ~0 rows (lebih kurang)
DELETE FROM `tpb_dokumen_pelengkap`;
/*!40000 ALTER TABLE `tpb_dokumen_pelengkap` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpb_dokumen_pelengkap` ENABLE KEYS */;

-- membuang struktur untuk table dashboardtpb.tpb_header
DROP TABLE IF EXISTS `tpb_header`;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel dashboardtpb.tpb_header: ~0 rows (lebih kurang)
DELETE FROM `tpb_header`;
/*!40000 ALTER TABLE `tpb_header` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpb_header` ENABLE KEYS */;

-- membuang struktur untuk table dashboardtpb.tpb_kemasan
DROP TABLE IF EXISTS `tpb_kemasan`;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel dashboardtpb.tpb_kemasan: ~0 rows (lebih kurang)
DELETE FROM `tpb_kemasan`;
/*!40000 ALTER TABLE `tpb_kemasan` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpb_kemasan` ENABLE KEYS */;

-- membuang struktur untuk table dashboardtpb.tpb_kontainer
DROP TABLE IF EXISTS `tpb_kontainer`;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel dashboardtpb.tpb_kontainer: ~0 rows (lebih kurang)
DELETE FROM `tpb_kontainer`;
/*!40000 ALTER TABLE `tpb_kontainer` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpb_kontainer` ENABLE KEYS */;

-- membuang struktur untuk table dashboardtpb.tpb_nopen
DROP TABLE IF EXISTS `tpb_nopen`;
CREATE TABLE IF NOT EXISTS `tpb_nopen` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `KODE` smallint(3) NOT NULL,
  `NOMOR_DAFTAR` varchar(6) NOT NULL,
  `TANGGAL_DAFTAR` date NOT NULL,
  `NOMOR_AJU` varchar(26) NOT NULL,
  `NAMA_PERUSAHAAN` varchar(100) NOT NULL,
  `NAMA_HANGGAR` varchar(10) NOT NULL,
  `NPWP` varchar(50) NOT NULL,
  `STATUS` varchar(140) NOT NULL,
  `FLAG_SKA` varchar(140) NOT NULL,
  `WAKTU_REKAM` datetime NOT NULL,
  `ASAL_DATA` varchar(50) NOT NULL,
  `JALUR` varchar(50) NOT NULL,
  `KATEGORI_LAYANAN` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NOMOR_AJU` (`NOMOR_AJU`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel dashboardtpb.tpb_nopen: ~0 rows (lebih kurang)
DELETE FROM `tpb_nopen`;
/*!40000 ALTER TABLE `tpb_nopen` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpb_nopen` ENABLE KEYS */;

-- membuang struktur untuk table dashboardtpb.tpb_pungutan_dokumen
DROP TABLE IF EXISTS `tpb_pungutan_dokumen`;
CREATE TABLE IF NOT EXISTS `tpb_pungutan_dokumen` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOMOR_AJU` varchar(26) NOT NULL,
  `JENIS_TARIF` varchar(10) NOT NULL DEFAULT '0',
  `NILAI_PUNGUTAN` decimal(18,2) NOT NULL DEFAULT '0.00',
  `KODE_FASILITAS` varchar(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel dashboardtpb.tpb_pungutan_dokumen: ~0 rows (lebih kurang)
DELETE FROM `tpb_pungutan_dokumen`;
/*!40000 ALTER TABLE `tpb_pungutan_dokumen` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpb_pungutan_dokumen` ENABLE KEYS */;

-- membuang struktur untuk view dashboardtpb.bc_40_detail_barang
DROP VIEW IF EXISTS `bc_40_detail_barang`;
-- Menghapus tabel sementara dan menciptakan struktur VIEW terakhir
DROP TABLE IF EXISTS `bc_40_detail_barang`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bc_40_detail_barang` AS SELECT B.NPWP, B.NAMA_PENGUSAHA, B.KODE_DOKUMEN, A.HS_CODE, A.NAMA_BARANG FROM tpb_barang A
LEFT JOIN tpb_header B ON A.NOMOR_AJU = B.NOMOR_AJU
WHERE B.KODE_DOKUMEN = '40'
GROUP BY A.NAMA_BARANG
ORDER BY B.NPWP ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
