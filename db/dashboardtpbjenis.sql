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

-- Dumping structure for table dashboardtpb.tb_jenis_dokumen
CREATE TABLE IF NOT EXISTS `tb_jenis_dokumen` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Kd_Dok` int(11) NOT NULL DEFAULT '0',
  `Nm_Dok` varchar(50) NOT NULL DEFAULT '0',
  `Ket` varchar(255) NOT NULL DEFAULT '0',
  `Ptgs_Rkm` varchar(18) NOT NULL DEFAULT '0',
  `Wkt_Rkm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- Dumping data for table dashboardtpb.tb_jenis_dokumen: ~17 rows (approximately)
/*!40000 ALTER TABLE `tb_jenis_dokumen` DISABLE KEYS */;
INSERT INTO `tb_jenis_dokumen` (`Id`, `Kd_Dok`, `Nm_Dok`, `Ket`, `Ptgs_Rkm`, `Wkt_Rkm`) VALUES
	(1, 10, 'BC 1.0', 'Rencana Kedatangan Sarana Pengangkut', '199203162014111002', '2018-02-20 18:01:43'),
	(2, 11, 'BC 1.1', 'Pemberitahuan barang kargo/niaga yang diangkut dalam sarana pengangkut', '199203162014111002', '2018-02-20 18:01:43'),
	(3, 12, 'BC 1.2', 'Pemberitahuan barang impor yang diangkut lanjut', '199203162014111002', '2018-02-20 18:01:43'),
	(4, 16, 'BC 1.6', 'Pemberitahuan Impor Barang ke PLB', '199203162014111002', '2018-02-20 18:01:43'),
	(5, 20, 'BC 2.0', 'Pemberitahuan Impor Barang', '199203162014111002', '2018-02-20 18:01:43'),
	(6, 21, 'BC 2.1', 'Pemberitahuan Impor Barang Tertentu', '199203162014111002', '2018-02-20 18:01:43'),
	(7, 22, 'BC 2.2', 'Pemberitahuan Impor Barang penumpang/awak sarana pengangkut', '199203162014111002', '2018-02-20 18:01:43'),
	(8, 23, 'BC 2.3', 'Pemberitahuan pemasukan barang impor ke Tempat Penimbunan Berikat', '199203162014111002', '2018-02-20 18:01:43'),
	(9, 25, 'BC 2.5', 'Pemberitahuan pengeluaran barang dari Tempat Penimbunan Berikat ke TLDDP', '199203162014111002', '2018-02-20 18:01:43'),
	(10, 261, 'BC 2.6.1', 'Pengeluaran Barang Tujuan Subkon TLDDP', '199203162014111002', '2018-02-20 18:01:43'),
	(11, 262, 'BC 2.6.2', 'Pemasukan Barang Hasil Subkon TLDDP', '199203162014111002', '2018-02-20 18:01:43'),
	(12, 27, 'BC 2.7', 'Pemberitahuan Pengeluaran Tujuan Tempat Penimbunan Berikat', '199203162014111002', '2018-02-20 18:01:43'),
	(13, 28, 'BC 2.8', 'Pemberitahuan Impor Barang dari PLB', '199203162014111002', '2018-02-20 18:01:43'),
	(14, 30, 'BC 3.0', 'Pemberitahuan Ekspor Barang', '199203162014111002', '2018-02-20 18:01:43'),
	(15, 33, 'BC 3.3', 'Pemberutahuan Ekspor Barang dari PLB', '199203162014111002', '2018-02-20 18:01:43'),
	(16, 40, 'BC 4.0', 'Pemberitahuan pemasukan barang asal daerah pabean ke Kawasan Berikat', '199203162014111002', '2018-02-20 18:01:43'),
	(17, 41, 'BC 4.1', 'Pemberitahuan pengeluaran barang asal daerah pabean ke tempat lain dalam daerah pabean', '199203162014111002', '2018-02-20 18:01:43');
/*!40000 ALTER TABLE `tb_jenis_dokumen` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
