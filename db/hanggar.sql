/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

DROP TABLE IF EXISTS `tbhanggar`;
CREATE TABLE IF NOT EXISTS `tbhanggar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grupHanggar` varchar(50) NOT NULL,
  `lokasiHanggar` int(11) NOT NULL,
  `ptgsRkm` varchar(18) NOT NULL,
  `wktRkm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ptgsUpdate` varchar(18) NOT NULL,
  `wktUpdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

DROP VIEW IF EXISTS `tbhanggar_detail`;
CREATE TABLE `tbhanggar_detail` (
	`id` INT(11) NOT NULL,
	`grupHanggar` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`lokasiHanggar` INT(11) NOT NULL,
	`ptgsRkm` VARCHAR(18) NOT NULL COLLATE 'latin1_swedish_ci',
	`wktRkm` TIMESTAMP NOT NULL,
	`id_perusahaan` INT(10) UNSIGNED NULL,
	`NPWP` VARCHAR(50) NULL COLLATE 'utf8_unicode_ci',
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

DROP TABLE IF EXISTS `tb_petugas_hanggar`;
CREATE TABLE IF NOT EXISTS `tb_petugas_hanggar` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdHanggar` int(11) NOT NULL DEFAULT '0',
  `IdPegawai` int(11) NOT NULL DEFAULT '0',
  `PtgsRkm` varchar(18) NOT NULL,
  `WktRkm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PtgsUpdate` varchar(18) NOT NULL,
  `WktUpdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

DROP VIEW IF EXISTS `tb_petugas_hanggar_detail`;
CREATE TABLE `tb_petugas_hanggar_detail` (
	`Id` INT(11) NOT NULL,
	`IdHanggar` INT(11) NOT NULL,
	`IdPegawai` INT(11) NULL,
	`NIPPegawai` VARCHAR(18) NULL COLLATE 'latin1_swedish_ci',
	`NamaPegawai` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`GolPegawai` INT(5) NULL,
	`SeksiPegawai` INT(5) NULL,
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

DROP VIEW IF EXISTS `tbhanggar_detail`;
DROP TABLE IF EXISTS `tbhanggar_detail`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `tbhanggar_detail` AS SELECT 
        `a`.`id` AS `id`,
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

DROP VIEW IF EXISTS `tb_petugas_hanggar_detail`;
DROP TABLE IF EXISTS `tb_petugas_hanggar_detail`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `tb_petugas_hanggar_detail` AS SELECT a.Id, a.IdHanggar,b.* FROM tb_petugas_hanggar a
LEFT JOIN tbpegawai_detail b ON a.IdPegawai = b.IdPegawai ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
