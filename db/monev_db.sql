/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

DROP DATABASE IF EXISTS `monevtpb`;
CREATE DATABASE IF NOT EXISTS `monevtpb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `monevtpb`;

DROP TABLE IF EXISTS `monev_cctvit`;
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

DROP TABLE IF EXISTS `monev_ceisa`;
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

DROP TABLE IF EXISTS `monev_hanggar`;
CREATE TABLE IF NOT EXISTS `monev_hanggar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idPerusahaan` int(11) NOT NULL,
  `tanggalLaporan` date NOT NULL,
  `keterangan` varchar(1000) DEFAULT NULL,
  `flag` int(11) NOT NULL DEFAULT '0',
  `NipPegawai` varchar(18) NOT NULL,
  `WktRkm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

DROP VIEW IF EXISTS `monev_hanggar_detail`;
CREATE TABLE `monev_hanggar_detail` (
	`NPWP` VARCHAR(50) NULL COLLATE 'utf8_unicode_ci',
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

DROP TABLE IF EXISTS `monev_hanggar_file`;
CREATE TABLE IF NOT EXISTS `monev_hanggar_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idLaporan` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `namaFile` varchar(100) NOT NULL,
  `typeFile` varchar(100) NOT NULL,
  `lokasi` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `monev_hanggar_isi`;
CREATE TABLE IF NOT EXISTS `monev_hanggar_isi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idLaporan` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `kondisi` enum('Y','N') NOT NULL,
  `keterangan` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=305 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `monev_pembatalan`;
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

DROP VIEW IF EXISTS `monev_hanggar_detail`;
DROP TABLE IF EXISTS `monev_hanggar_detail`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `monev_hanggar_detail` AS SELECT 
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
