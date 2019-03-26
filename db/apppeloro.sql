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


-- Membuang struktur basisdata untuk apppeloro
CREATE DATABASE IF NOT EXISTS `apppeloro` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `apppeloro`;

-- membuang struktur untuk table apppeloro.tb_cctv
CREATE TABLE IF NOT EXISTS `tb_cctv` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdPerusahaan` int(11) NOT NULL,
  `IdTpbSikabayan` int(11) NOT NULL,
  `IpAddress` varchar(100) DEFAULT NULL,
  `Username` varchar(80) DEFAULT NULL,
  `Password` varchar(80) DEFAULT NULL,
  `Browser` varchar(80) DEFAULT NULL,
  `CctvType` varchar(80) DEFAULT NULL,
  `Playback` varchar(80) DEFAULT NULL,
  `Status` enum('Y','N') NOT NULL DEFAULT 'N',
  `Keterangan` varchar(255) DEFAULT NULL,
  `PtgsRekam` varchar(18) NOT NULL,
  `WktRekam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PtgsUpdate` varchar(18) NOT NULL,
  `WktUpdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel apppeloro.tb_cctv: ~104 rows (lebih kurang)
DELETE FROM `tb_cctv`;
/*!40000 ALTER TABLE `tb_cctv` DISABLE KEYS */;
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(1, 76, 0, '119.252.160.211:5150', 'bc', 'beacukai1', 'Aplikasi Dekstop', NULL, '214 Hari', 'Y', 'Akses Kamera 2, 3, 4, 5, 7 dan 9\r\nAkses CCTV Menggunakan Aplikasi Live Viewer di Komputer HP Pavilion', '199203162014111002', '2018-05-30 11:15:43', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(2, 1, 0, '202.182.48.122:8000', 'admin', 'admin', 'Mozilla Firefox', NULL, '-', 'N', 'Tidak Aktif', '199203162014111002', '2018-05-31 09:04:12', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(3, 2, 0, '103.232.65.142', 'bc', 'bc', 'Internet Explorer', 'KRISVIEW', '5 Hari', 'N', '-', '199203162014111002', '2018-05-31 09:42:10', '199203162014111002', '2018-11-30 08:59:15');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(4, 3, 0, '103.232.65.142', 'bc', 'bc', 'Internet Explorer', 'KRISVIEW', '5 Hari', 'Y', '', '199203162014111002', '2018-05-31 09:44:34', '199203162014111002', '2018-10-01 09:11:54');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(5, 4, 0, '36.68.150.251:8080', 'beacukai', 'beacukai', 'Internet Explorer', 'WebCMS', '5 Hari', 'Y', 'Akses Menggunakan Aplikasi CMS / Internet explorer', '199203162014111002', '2018-05-31 09:49:25', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(6, 5, 0, '36.78.179.57:81', 'beacukai', 'beacukai', 'Internet Explorer', 'NetSurveilenceWeb', '30 Hari', 'Y', 'Akses 3 Kamera', '199203162014111002', '2018-05-31 09:52:58', '199203162014111002', '2018-11-23 13:07:52');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(7, 32, 0, '36.68.151.102:2002', 'admin', 'admin', 'Internet Explorer', '', '8 Hari', 'Y', 'Akses 15 Kamera', '199203162014111002', '2018-05-31 10:05:09', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(8, 31, 0, '36.68.151.102:2001', 'admin', 'admin', 'Internet Explorer', NULL, '20 Hari', 'Y', 'Akses 4 Kamera', '199203162014111002', '2018-05-31 10:52:45', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(9, 33, 0, 'idncctv1.frigoglass.com', 'custom', 'cust1234', 'Internet Explorer', NULL, '60 Hari', 'Y', 'Akses 4 Kamera', '199203162014111002', '2018-05-31 11:05:22', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(10, 34, 0, '27.123.4.10:81', 'admin', 'fuji', 'Internet Explorer', NULL, '17 Hari', 'Y', 'Akses 8 Kamera', '199203162014111002', '2018-05-31 11:08:12', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(11, 35, 0, 'Y55F772.dvrhost.com:7000', 'admin', '000000', 'Internet Explorer', NULL, '-', 'N', 'Tidak Dapat Diakses', '199203162014111002', '2018-05-31 11:12:50', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(12, 36, 0, '27.123.3.46', 'admin', 'gayasteel12345', 'Internet Explorer', NULL, '30 Hari', 'Y', 'Akses 16 Kamera', '199203162014111002', '2018-05-31 11:16:24', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(13, 61, 0, '112.78.129.114:8080', 'admin', 'admin', 'Internet Explorer', '', '-', 'N', 'password error', '199203162014111002', '2018-05-31 15:44:39', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(14, 6, 0, '36.66.126.101:9000', 'admin', '(kosong)', 'Internet Explorer', 'NetworkVideoClient', '10 Hari', 'N', 'Akses 15 Kamera', '199203162014111002', '2018-06-04 09:31:46', '199203162014111002', '2018-11-23 12:50:59');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(15, 7, 0, '203.160.60.75', 'exim01', 'exim', 'Internet Explorer', '', '-', 'Y', '- Akses Kamera Satu Persatu\r\n- Akses ditolak', '199203162014111002', '2018-06-04 09:37:07', '199203162014111002', '2018-10-01 09:11:54');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(16, 8, 0, '202.43.114.62:81', 'admin', '1111', 'Internet Explorer', 'HIKVISION', '14 Hari', 'Y', 'Akses 13 Kamera', '199203162014111002', '2018-06-04 09:42:10', '199203162014111002', '2018-10-01 09:11:54');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(17, 9, 0, '27.123.4.78', 'admin', 'injection', 'Internet Explorer', '', '11 Hari', 'Y', '', '199203162014111002', '2018-06-04 10:08:48', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(18, 10, 0, 'www.dddns.org/', 'admin', '123456', 'Internet Explorer', '', '-', 'Y', 'ID : m23792594', '199203162014111002', '2018-06-04 10:16:27', '199203162014111002', '2018-09-27 14:53:37');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(19, 11, 0, '103.232.65.150:88', 'admin', 'admin', 'Internet Explorer', '', '-', 'Y', '', '199203162014111002', '2018-06-04 10:17:36', '199203162014111002', '2018-11-29 16:15:33');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(20, 12, 0, '182.253.6.2:8081', 'admin', '123456', 'Internet Explorer', 'NetSurveilenceWeb', '14 Hari', 'Y', 'Akses 4 Kamera', '199203162014111002', '2018-06-04 10:18:51', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(21, 14, 0, '182.253.81.132:8181', 'kpbc', 'kpbc', 'Internet Explorer', '', '-', 'Y', '', '199203162014111002', '2018-06-04 10:20:44', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(22, 13, 0, '182.253.81.132:8181', 'kpbc', 'kpbc', 'Internet Explorer', 'CMS', '-', 'Y', '', '199203162014111002', '2018-06-04 10:23:08', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(23, 16, 0, '36.68.150.181', 'beacukai', 'bc4321', 'Internet Explorer', '', '-', 'Y', 'Tidak dapat memutar playback', '199203162014111002', '2018-06-04 10:24:21', '199203162014111002', '2018-10-01 09:11:54');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(24, 17, 0, '27.123.5.29:81', 'admin', 'daelim12345', 'Internet Explorer', 'INFINITY', '14 Hari', 'Y', 'Akses 16 Kamera', '199203162014111002', '2018-06-04 10:26:01', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(25, 18, 0, '45.112.127.170:8000', 'admin', 'admin', 'Internet Explorer', 'CMS', '-', 'Y', '', '199203162014111002', '2018-06-04 10:28:50', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(26, 19, 0, '36.68.151.20:81', 'admin', '-', 'Internet Explorer', '', '-', 'N', 'Tidak Aktif', '199203162014111002', '2018-06-04 11:08:41', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(27, 20, 0, '203.160.60.139:8081', 'admin', '-', 'Aplikasi Dekstop', 'CMS', '30 Hari', 'Y', 'Apliaksi CMS di Komputer HP Pavilion\r\n', '199203162014111002', '2018-06-04 11:09:22', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(28, 21, 0, '36.77.20.157:4000', 'beacukai', 'beacukai', 'Internet Explorer', NULL, '-', 'N', 'Tidak Aktif', '199203162014111002', '2018-06-04 11:31:14', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(29, 22, 0, '143469233', 'beacukai', 'dmcti', 'Team Viewer', '', '-', 'N', 'Aplikasi Teamviewer\r\nTeamviewer ID : 143469233\r\npassword : beacukai123', '199203162014111002', '2018-06-04 11:32:37', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(30, 23, 0, '203.160.60.20', 'dsicctv', 'dongsan123', 'Internet Explorer', '', '-', 'Y', 'Login Website dongsan-indonesia.com\r\nUser : beacukai\r\nPassword : Beacukai', '199203162014111002', '2018-06-04 11:36:01', '199203162014111002', '2018-10-01 09:11:54');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(31, 24, 0, '118.96.31.173:8842', 'admin', 'admin', 'Palemoon', NULL, '-', 'N', 'Website Tidak dapat diakses', '199203162014111002', '2018-06-04 11:38:30', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(32, 25, 0, 'xmeye.net', 'admin', '(Tanpa Password)', 'Internet Explorer', '', '14 Hari', 'N', 'device id : f48202007ed77e20\r\n\r\npassword tidak ada', '199203162014111002', '2018-06-04 11:39:52', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(33, 26, 0, '113.20.137.154:90', 'beacukai', 'beacukai123', 'Internet Explorer', NULL, '14 Hari', 'Y', 'Akses 4 Kamera', '199203162014111002', '2018-06-04 11:40:56', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(34, 27, 0, '36.67.190.157:81', 'admin', 'adm@enplas', 'Internet Explorer', 'CMS', '30 Hari', 'Y', 'Akses 5 Kamera\r\nPlayback menggunakan aplikasi Actech CMS Lite menu remote dekstop', '199203162014111002', '2018-06-04 11:45:54', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(35, 28, 0, '114.141.49.5', 'bc', 'beacukai01', 'Internet Explorer', '', '20 Hari', 'Y', 'Akses menggunakan Aplikasi CMS Dekstop di komputer HP Pavilion', '199203162014111002', '2018-06-04 11:48:45', '199203162014111002', '2019-03-25 10:01:53');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(36, 29, 0, '27.123.4.6:8080', 'admin', 'admin', 'Internet Explorer', '', '-', 'Y', 'Akses 16 Kamera\r\nTidak dapat memutar playback', '199203162014111002', '2018-06-04 11:51:15', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(37, 30, 0, 'SP36034155', '-', '-', 'Aplikasi Dekstop', NULL, '-', 'Y', 'Aplikasi APK Cloudse di komputer HP Pavilion', '199203162014111002', '2018-06-04 13:17:22', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(38, 37, 0, 'gcp-mis.ddns.net:3636', 'epte', '1234', 'Internet Explorer', NULL, '44 Hari', 'Y', 'Akses 4 Kamera', '199203162014111002', '2018-06-04 14:04:33', '199203162014111002', '2018-10-01 09:11:54');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(39, 38, 0, '43.252.73.34:8080', 'iino', 'iinobc', 'Aplikasi Dekstop', NULL, '30 Hari', 'Y', 'Akses dengan aplikas CMS Dekstop di Komputer HP Pavilion\r\nAkses 4 Kamera', '199203162014111002', '2018-06-04 14:10:32', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(40, 39, 0, '202.150.145.164', 'bcikpi', '**bcikpi2020#', 'Internet Explorer', NULL, '-', 'Y', 'Akses 4 Kamera', '199203162014111002', '2018-06-04 14:19:51', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(41, 62, 0, '36.68.151.99', 'admin', 'desire65', 'Internet Explorer', NULL, '-', 'Y', '-', '199203162014111002', '2018-07-02 18:54:56', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(42, 40, 0, '36.89.49.237', 'user1', '1111', 'Internet Explorer', '', '-', 'Y', '-', '199203162014111002', '2018-07-03 08:37:24', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(43, 41, 0, '36.68.151.20:81', '-', '-', 'Internet Explorer', '', '-', 'Y', '-', '199203162014111002', '2018-07-03 08:44:59', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(44, 42, 0, 'innotechrubber16.dyndns.org:81', 'custom', 'custom', 'Internet Explorer', '', '-', 'Y', '-', '199203162014111002', '2018-07-03 08:46:18', '199203162014111002', '2018-11-29 10:59:58');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(45, 43, 0, 'xmeye.net', 'iretech', 'iretech123', 'Internet Explorer', 'CMS', '-', 'Y', '-', '199203162014111002', '2018-07-03 09:12:43', '199203162014111002', '2018-10-24 16:56:18');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(46, 44, 0, '113.20.138.46:8080', 'beacukai', 'custom18', 'Internet Explorer', NULL, '-', 'Y', '-', '199203162014111002', '2018-07-03 09:16:41', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(47, 45, 0, '203.160.60.6:8184', 'admin', '1447', 'Internet Explorer', NULL, '14 Hari', 'Y', '-', '199203162014111002', '2018-07-03 09:18:39', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(48, 46, 0, '36.68.150.35:81', 'BC', '123', 'Internet Explorer', NULL, '9 Hari', 'Y', '-', '199203162014111002', '2018-07-03 09:19:25', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(49, 48, 0, 'koformcikarang17.dahuaddns.com:8000', 'customs', 'customs', 'Internet Explorer', '', '-', 'N', '-', '199203162014111002', '2018-07-03 09:22:20', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(50, 49, 0, 'korrioindustri.dyndns.org:8001', 'custom', '2014', 'Internet Explorer', NULL, '14 Hari', 'Y', '-', '199203162014111002', '2018-07-03 09:23:34', '199203162014111002', '2018-10-01 09:11:54');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(51, 50, 0, '36.68.151.74:8080', 'beacukai', 'beacukai', 'Internet Explorer', NULL, '24 Hari', 'Y', '-', '199203162014111002', '2018-07-03 09:34:26', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(52, 52, 0, '202.169.45.130:8080', 'customs', 'customs1', 'Internet Explorer', 'HIKVISION', '14 Hari', 'Y', '-', '199203162014111002', '2018-07-03 09:36:37', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(53, 53, 0, 'xmeye.net', 'bc', 'bc', 'Internet Explorer', NULL, '-', 'Y', 'device ID : 8b47b8211a51b838', '199203162014111002', '2018-07-03 09:40:45', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(54, 54, 0, '113.20.140.99:88', 'malugo', 'ptm17854', 'Internet Explorer', 'HIKVISION', '21 Hari', 'Y', '-', '199203162014111002', '2018-07-03 09:45:16', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(55, 55, 0, '113.20.140.99:88', 'malugo', 'ptm17854', 'Internet Explorer', 'HIKVISION', '21 Hari', 'Y', '-', '199203162014111002', '2018-07-03 09:48:35', '199203162014111002', '2018-10-01 09:11:54');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(56, 57, 0, '202.179.187.246:8081', 'Customs East', 'customs2', 'Internet Explorer', '', '14 Hari', 'Y', '-', '199203162014111002', '2018-07-03 10:15:05', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(57, 56, 0, '103.76.168.147', 'admin', 'admin123', 'Internet Explorer', NULL, '7 Hari', 'Y', '-', '199203162014111002', '2018-07-03 10:17:34', '199203162014111002', '2018-10-01 09:11:54');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(58, 58, 0, '36.77.23.95:89', 'customs', '2014', 'Internet Explorer', NULL, '-', 'Y', '-', '199203162014111002', '2018-07-03 10:33:19', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(59, 59, 0, '36.45.179.111:8400', 'bc', '1234', 'Internet Explorer', NULL, '-', 'N', '-', '199203162014111002', '2018-07-03 10:34:19', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(60, 64, 0, 'MxCC', 'guest', 'guest', 'Aplikasi Dekstop', NULL, '14 Hari', 'Y', 'Koneksi ke VPN multistrada dengan aplikasi Forticlient\r\nusername : bea.cukai\r\npassword : beacukai', '199203162014111002', '2018-07-03 10:37:32', '199203162014111002', '2018-10-01 09:11:54');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(61, 65, 0, '36.68.151.252', 'admin', 'admin123', 'Internet Explorer', 'HIKVISION', '-', 'Y', '-', '199203162014111002', '2018-07-03 10:38:27', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(62, 66, 0, 'ckr.pelangi-cimandiri.co.id:2223', 'bc', 'cikarang', 'Internet Explorer', NULL, '-', 'Y', '', '199203162014111002', '2018-07-03 13:32:41', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(63, 67, 0, 'platech16.dyndns.org:8000', 'custom', '-', 'Internet Explorer', NULL, '-', 'N', '', '199203162014111002', '2018-07-03 13:36:37', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(64, 69, 0, '115.124.79.246', 'admin', 'mUt14r4', 'Internet Explorer', '', '-', 'Y', 'tidak bisa login', '199203162014111002', '2018-07-03 13:39:01', '199203162014111002', '2018-10-01 09:11:54');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(65, 70, 0, '980072690 ', 'bc', 'bc', 'Team Viewer', '', '-', 'Y', 'ID: 980072690 Pasw : PB@R89638 \r\nkemudian login into system dengan user code/password : beacukai\r\nlogin cctv dengan user/pass : bc\r\n', '199203162014111002', '2018-07-03 13:40:33', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(66, 71, 0, '27.123.1.110:88', 'admin', '080805', 'Mozilla Firefox', NULL, '-', 'Y', '', '199203162014111002', '2018-07-03 13:43:38', '199203162014111002', '2018-10-01 09:11:54');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(67, 72, 0, '182.253.81.66:82', 'admin', 'admin', 'Internet Explorer', '', '-', 'Y', 'www.ptrbc.com', '199203162014111002', '2018-07-03 13:45:44', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(68, 73, 0, '203.160.60.148:8282', 'rlcind', 'rlc12345', 'Internet Explorer', '', '-', 'Y', '', '199203162014111002', '2018-07-03 13:48:54', '199203162014111002', '2018-11-27 16:32:37');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(69, 74, 0, '115.124.76.66:5000', 'DMC', 'samplus', 'Internet Explorer', '', '-', 'Y', '', '199203162014111002', '2018-07-03 13:50:35', '199203162014111002', '2018-09-27 15:47:07');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(70, 75, 0, '203.160.60.51', 'samoin1', 'samoin1', 'Mozilla Firefox', '', '-', 'N', 'Ip / Port Invalid', '199203162014111002', '2018-07-03 13:53:16', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(71, 78, 0, '203.160.60.148:8282', 'ricind', 'rlc12345', 'Internet Explorer', '', '-', 'Y', '', '199203162014111002', '2018-07-03 13:56:42', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(72, 77, 0, '36.66.126.101:8002', 'customs', 'customs', 'Internet Explorer', NULL, '-', 'Y', '', '199203162014111002', '2018-07-03 14:00:08', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(73, 79, 0, 'samuderaocean.dvrdns.org:8001', 'custom', '2014', 'Internet Explorer', NULL, '-', 'Y', '', '199203162014111002', '2018-07-03 14:03:13', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(74, 80, 0, '203.160.60.25:1113', 'beacukai', '@beacukai123', 'Internet Explorer', 'HIKVISION', '14 Hari', 'Y', '', '199203162014111002', '2018-07-03 14:05:36', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(75, 81, 0, '27.123.4.74:8000', 'beacukai', 'cukai', 'Internet Explorer', NULL, '-', 'Y', '', '199203162014111002', '2018-07-03 14:07:21', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(76, 82, 0, 'www.shinheung.id', 'bc', '1111', 'Internet Explorer', NULL, '-', 'N', '', '199203162014111002', '2018-07-03 14:08:21', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(77, 83, 0, '203.160.60.29:8000/', 'bcp2', 'bc123', 'Internet Explorer', NULL, '-', 'Y', '', '199203162014111002', '2018-07-03 14:09:58', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(78, 84, 0, '36.82.116.141 ', 'bc', '1111', 'Internet Explorer', NULL, '-', 'N', '', '199203162014111002', '2018-07-03 14:10:58', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(79, 85, 0, '203.160.60.27:89', 'admin', 'admin', 'Internet Explorer', NULL, '-', 'Y', '', '199203162014111002', '2018-07-03 14:13:12', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(80, 86, 0, '36.68.150.36:8000', 'bc', 'bc', 'Internet Explorer', '', '-', 'Y', '', '199203162014111002', '2018-07-03 14:14:11', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(81, 87, 0, '202.162.203.10:8080', 'admin', 'admin123', 'Internet Explorer', NULL, '-', 'N', '', '199203162014111002', '2018-07-03 14:17:36', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(82, 88, 0, '203.160.60.50:8000', 'eximsi', '123456', 'Internet Explorer', '', '-', 'N', 'tidak bisa login', '199203162014111002', '2018-07-03 14:23:35', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(83, 89, 0, 'cbef3c1cad1ac3de', 'admin', '3333', 'Aplikasi Dekstop', 'CMS', '-', 'N', 'Aplikasi CMS', '199203162014111002', '2018-07-03 14:26:20', '199203162014111002', '2018-09-27 14:39:49');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(84, 90, 0, '27.123.1.102:8080', 'admin', '-', 'Internet Explorer', NULL, '-', 'Y', '', '199203162014111002', '2018-07-03 14:33:22', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(85, 91, 0, '36.78.179.181:88', 'beacukai', 'systech02', 'Internet Explorer', NULL, '-', 'Y', '', '199203162014111002', '2018-07-03 14:36:19', '199203162014111002', '2018-10-01 09:11:54');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(86, 92, 0, 'xmeye.net ', 'bcckr', '-', 'Internet Explorer', '', '-', 'Y', '', '199203162014111002', '2018-07-03 14:39:16', '199203162014111002', '2018-10-01 09:11:54');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(87, 93, 0, '36.89.51.233', 'bc', 'bc123', 'Aplikasi Dekstop', '', '-', 'Y', 'Aplikasi dalam folder Aplikasi CCTV di DEKSTOP', '199203162014111002', '2018-07-03 14:50:24', '199203162014111002', '2018-09-27 14:49:33');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(88, 94, 0, '36.89.51.233:4', 'bc', 'bc123', 'Aplikasi Dekstop', '', '-', 'Y', 'Aplikasi dalam folder Aplikasi CCTV di DEKSTOP', '199203162014111002', '2018-07-03 14:51:50', '199203162014111002', '2018-09-27 14:49:18');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(89, 95, 0, 'Aplikasi CMS3', 'av50e38ec6', '123456', 'Aplikasi Dekstop', '', '-', 'N', '', '199203162014111002', '2018-07-03 14:53:03', '199203162014111002', '2018-11-05 09:13:09');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(90, 97, 0, '113.20.139.186:8001', 'beacukai', 'beacukai', 'Internet Explorer', NULL, '-', 'Y', '', '199203162014111002', '2018-07-03 14:54:50', '199203162014111002', '2018-10-01 09:11:54');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(91, 98, 0, '202.162.203.37:3535', 'bea cukai', 'Tosin123', 'Aplikasi Dekstop', 'HIKVISION', '7 Hari', 'Y', 'CCTV dapat dibuka dengan aplikasi iVMS-4200', '199203162014111002', '2018-07-03 14:56:48', '199203162014111002', '2018-10-03 09:24:35');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(92, 99, 0, '36.68.151.33:8020', 'beacukai', 'bcr54321', 'Internet Explorer', NULL, '-', 'N', '', '199203162014111002', '2018-07-03 14:57:47', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(93, 100, 0, '36.68.150.25:9000', 'bc', 'bc', 'Internet Explorer', NULL, '-', 'Y', '', '199203162014111002', '2018-07-03 14:59:29', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(94, 101, 0, '36.66.103.193', '1', '-', 'Aplikasi Dekstop', 'NetworkVideoClient', '7 Hari', 'Y', 'Menggunakan aplikasi NetDVR di komputer HP Pavilion\r\n', '199203162014111002', '2018-07-03 15:03:29', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(95, 102, 0, '27.123.4.142:88', 'bea_cukai', '123456', 'Internet Explorer', NULL, '-', 'Y', '', '199203162014111002', '2018-07-03 15:05:46', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(96, 103, 0, '139.5.152.81:8081', 'custom', 'custom', 'Internet Explorer', NULL, '-', 'N', '', '199203162014111002', '2018-07-03 15:07:00', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(97, 104, 0, '36.68.150.42:6666', 'bea cukai', 'winsheng', 'Internet Explorer', NULL, '-', 'Y', '', '199203162014111002', '2018-07-03 15:08:03', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(98, 105, 0, '36.67.188.161:8080', 'beacukai', 'beacukai1234', 'Internet Explorer', NULL, '7 hari', 'Y', '-', '199203162014111002', '2018-07-03 15:09:19', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(99, 106, 0, '36.67.188.161:8080', 'beacukai', 'beacukai1234', 'Internet Explorer', 'HIKVISION', '7 Hari', 'Y', '-', '199203162014111002', '2018-07-03 15:10:17', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(100, 107, 0, '36.67.211.193:8001', 'beacukai', '123456', 'Internet Explorer', NULL, '-', 'Y', '', '199203162014111002', '2018-07-03 15:12:34', '', NULL);
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(101, 108, 0, '36.68.150.178:8001', 'GB', 'gb', 'Internet Explorer', '', '-', 'Y', 'IP or Pot Invalid', '199203162014111002', '2018-07-03 15:13:37', '199203162014111002', '2018-10-03 09:09:25');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(102, 109, 0, '36.67.57.153', 'beacukai', 'bc', 'Internet Explorer', 'NetSurveilenceWeb', '-', 'Y', '', '199203162014111002', '2018-07-03 15:14:45', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(103, 96, 0, '180.253.192.58', 'admin', 'admin123456', 'Internet Explorer', '', '-', 'Y', '5dd94bdcc90bed07', '199203162014111002', '2018-07-05 11:37:12', '199203162014111002', '2018-10-01 09:11:54');
INSERT INTO `tb_cctv` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `CctvType`, `Playback`, `Status`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(104, 110, 0, 'xmeye.net', 'admin', '12345', 'Internet Explorer', 'NetSurveilenceWeb', '-', 'Y', 'Device ID : d4fdaef1bd516f22\r\nMasih Error', '199203162014111002', '2018-09-27 14:28:51', '199203162014111002', '2018-10-08 09:49:05');
/*!40000 ALTER TABLE `tb_cctv` ENABLE KEYS */;

-- membuang struktur untuk view apppeloro.tb_cctv_detail
-- Membuat tabel sementara untuk menangani kesalahan ketergantungan VIEW
CREATE TABLE `tb_cctv_detail` (
	`Id` INT(11) NOT NULL,
	`IdPerusahaan` INT(11) NOT NULL,
	`IdTpbSikabayan` INT(11) NOT NULL,
	`IpAddress` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`Username` VARCHAR(80) NULL COLLATE 'latin1_swedish_ci',
	`Password` VARCHAR(80) NULL COLLATE 'latin1_swedish_ci',
	`Browser` VARCHAR(80) NULL COLLATE 'latin1_swedish_ci',
	`CctvType` VARCHAR(80) NULL COLLATE 'latin1_swedish_ci',
	`Playback` VARCHAR(80) NULL COLLATE 'latin1_swedish_ci',
	`Status` ENUM('Y','N') NOT NULL COLLATE 'latin1_swedish_ci',
	`Keterangan` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`PtgsRekam` VARCHAR(18) NOT NULL COLLATE 'latin1_swedish_ci',
	`WktRekam` TIMESTAMP NOT NULL,
	`PtgsUpdate` VARCHAR(18) NOT NULL COLLATE 'latin1_swedish_ci',
	`WktUpdate` TIMESTAMP NULL,
	`NmPerusahaan` VARCHAR(80) NULL COLLATE 'latin1_swedish_ci',
	`NPWP` VARCHAR(15) NULL COLLATE 'latin1_swedish_ci',
	`AlamatPabrik` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`NoSkepAkhir` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`Status_TPB` ENUM('Y','N') NULL COLLATE 'latin1_swedish_ci',
	`Fasilitas` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`Jenis` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`ProfilResiko` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- membuang struktur untuk table apppeloro.tb_cek_cctv
CREATE TABLE IF NOT EXISTS `tb_cek_cctv` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdPerusahaan` int(11) NOT NULL,
  `IdCCTV` int(11) NOT NULL,
  `StatusCCTV` enum('Y','N') NOT NULL DEFAULT 'N',
  `IdInventory` int(11) NOT NULL,
  `StatusInventory` enum('Y','N') NOT NULL DEFAULT 'N',
  `TindakLanjut` varchar(500) DEFAULT NULL,
  `PtgsRekam` varchar(18) NOT NULL,
  `WktRekam` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel apppeloro.tb_cek_cctv: ~124 rows (lebih kurang)
DELETE FROM `tb_cek_cctv`;
/*!40000 ALTER TABLE `tb_cek_cctv` DISABLE KEYS */;
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(1, 79, 73, 'Y', 58, 'Y', '', '199203162014111002', '2018-09-27 16:58:11');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(2, 32, 7, 'Y', 48, 'Y', '', '199203162014111002', '2018-09-27 16:58:11');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(3, 57, 56, 'Y', 83, 'Y', '', '199203162014111002', '2018-09-27 16:58:11');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(4, 74, 69, 'Y', 64, 'N', 'Target Surveilance\r\nIT Inventory tidak dapat diakses (Password Salah)', '199203162014111002', '2018-09-27 16:58:11');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(5, 89, 83, 'N', 38, 'N', 'Target Surveilance\r\nCCTV dan IT Inventory Tidak dapat di akses', '199203162014111002', '2018-09-27 16:58:11');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(6, 37, 38, 'Y', 59, 'Y', '', '199203162014111002', '2018-09-27 16:58:11');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(7, 100, 93, 'N', 22, 'N', 'Target Surveilance\r\nCCTV dan IT Inventory Tidak dapat di akses', '199203162014111002', '2018-09-27 16:58:11');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(8, 43, 45, 'N', 70, 'N', 'Target Surveilance\r\nCCTV dan IT Inventory Tidak dapat di akses\r\nUser Password IT Salah', '199203162014111002', '2018-09-27 16:58:11');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(9, 28, 35, 'Y', 43, 'Y', 'Target Surveilance\r\n2 Kamera Mati', '199203162014111002', '2018-09-27 16:58:11');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(10, 92, 86, 'N', 33, 'N', 'Target Surveilance\r\nCCTV dan IT Inventory Tidak dapat di akses', '199203162014111002', '2018-09-27 16:58:11');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(11, 101, 94, 'Y', 20, 'Y', '', '199203162014111002', '2018-09-27 16:58:11');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(12, 104, 97, 'Y', 14, 'Y', '', '199203162014111002', '2018-09-27 16:58:11');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(13, 107, 100, 'Y', 11, 'Y', '', '199203162014111002', '2018-09-27 16:58:11');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(14, 93, 87, 'Y', 98, 'N', 'Target Sureilance\r\nIT Inventory tidak dapat diakses ', '199203162014111002', '2018-09-27 16:58:11');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(15, 69, 64, 'Y', 78, 'Y', '', '199203162014111002', '2018-09-27 16:58:11');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(16, 3, 4, 'Y', 2, 'Y', '', '199203162014111002', '2018-09-27 16:58:11');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(17, 82, 76, 'N', 51, 'N', 'Target Surveilance\r\nCCTV dan IT Inventory Tidak dapat di akses', '199203162014111002', '2018-09-27 16:58:11');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(18, 91, 85, 'N', 36, 'N', 'Target Surveilance\r\nCCTV dan IT Inventory Tidak dapat di akses', '199203162014111002', '2018-09-27 16:58:11');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(19, 5, 6, 'Y', 4, 'Y', '', '199203162014111002', '2018-09-27 16:58:11');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(20, 87, 81, 'N', 42, 'N', 'Target Surveilance\r\nCCTV dan IT Inventory Tidak dapat di akses', '199203162014111002', '2018-09-27 16:58:11');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(21, 6, 14, 'Y', 5, 'Y', '', '199203162014111002', '2018-09-27 16:58:11');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(22, 110, 104, 'Y', 99, 'Y', '', '199203162014111002', '2018-09-28 13:41:14');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(23, 42, 44, 'N', 68, 'Y', 'Patroli', '199203162014111002', '2018-09-28 13:41:14');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(24, 86, 80, 'N', 44, 'Y', 'Patroli', '199203162014111002', '2018-09-28 13:41:14');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(25, 4, 5, 'Y', 3, 'Y', '', '199203162014111002', '2018-09-28 13:41:14');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(26, 108, 101, 'N', 93, 'Y', 'Patroli', '199203162014111002', '2018-09-28 13:41:14');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(27, 67, 63, 'N', 84, 'Y', 'Patroli', '199203162014111002', '2018-09-28 13:41:14');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(28, 46, 48, 'N', 74, 'N', 'Patroli', '199203162014111002', '2018-09-28 13:41:14');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(29, 38, 39, 'Y', 61, 'Y', '', '199203162014111002', '2018-09-28 13:41:14');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(30, 77, 72, 'Y', 95, 'Y', '', '199203162014111002', '2018-09-28 13:41:14');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(31, 17, 24, 'Y', 19, 'Y', '', '199203162014111002', '2018-09-28 13:41:14');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(32, 53, 53, 'Y', 79, 'Y', '', '199203162014111002', '2018-09-28 13:41:14');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(33, 44, 46, 'Y', 72, 'Y', '', '199203162014111002', '2018-09-28 13:41:14');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(34, 2, 3, 'Y', 1, 'Y', '', '199203162014111002', '2018-09-28 13:41:14');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(35, 61, 13, 'N', 88, 'Y', 'Patroli', '199203162014111002', '2018-09-28 13:41:14');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(36, 10, 18, 'Y', 9, 'N', 'Patroli', '199203162014111002', '2018-09-28 13:41:14');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(37, 102, 95, 'Y', 17, 'N', 'Patroli', '199203162014111002', '2018-09-28 13:41:14');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(38, 80, 74, 'Y', 54, 'Y', '', '199203162014111002', '2018-09-28 13:41:14');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(39, 56, 57, 'Y', 82, 'Y', '', '199203162014111002', '2018-09-28 13:41:14');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(40, 72, 67, 'Y', 67, 'Y', '', '199203162014111002', '2018-09-28 13:41:14');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(41, 20, 27, 'Y', 24, 'Y', '', '199203162014111002', '2018-09-28 13:41:14');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(42, 34, 10, 'Y', 55, 'Y', '', '199203162014111002', '2018-09-28 13:41:14');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(43, 45, 47, 'Y', 73, 'N', 'Patroli', '199203162014111002', '2018-10-01 14:51:43');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(44, 89, 83, 'N', 38, 'N', 'Patroli', '199203162014111002', '2018-10-01 14:51:43');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(45, 102, 95, 'Y', 17, 'N', 'Patroli', '199203162014111002', '2018-10-01 14:51:43');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(46, 39, 40, 'Y', 63, 'N', 'Patroli', '199203162014111002', '2018-10-01 14:51:43');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(47, 18, 25, 'Y', 21, 'Y', '', '199203162014111002', '2018-10-01 14:51:43');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(48, 90, 84, 'Y', 35, 'Y', '', '199203162014111002', '2018-10-01 14:51:43');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(49, 2, 3, 'Y', 1, 'Y', '', '199203162014111002', '2018-10-01 14:51:43');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(50, 88, 82, 'Y', 41, 'Y', '', '199203162014111002', '2018-10-01 14:51:43');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(51, 86, 80, 'N', 44, 'Y', 'Patroli', '199203162014111002', '2018-10-01 14:51:43');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(52, 52, 52, 'Y', 0, 'N', 'Patroli', '199203162014111002', '2018-10-01 14:51:43');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(53, 35, 11, 'N', 56, 'N', 'Patroli', '199203162014111002', '2018-10-01 14:51:43');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(54, 36, 12, 'Y', 57, 'Y', '', '199203162014111002', '2018-10-01 14:51:43');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(55, 50, 51, 'Y', 77, 'Y', '', '199203162014111002', '2018-10-01 14:51:43');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(56, 101, 94, 'Y', 20, 'Y', '', '199203162014111002', '2018-10-01 14:51:43');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(57, 43, 45, 'N', 70, 'N', 'Patroli', '199203162014111002', '2018-10-01 14:51:43');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(58, 34, 10, 'Y', 55, 'Y', '', '199203162014111002', '2018-10-01 14:51:43');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(59, 74, 69, 'Y', 64, 'N', '', '199203162014111002', '2018-10-01 14:51:43');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(60, 29, 36, 'N', 45, 'Y', 'Patroli', '199203162014111002', '2018-10-01 14:51:43');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(61, 22, 29, 'N', 27, 'Y', 'Patroli', '199203162014111002', '2018-10-01 14:51:43');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(62, 105, 98, 'Y', 13, 'Y', '', '199203162014111002', '2018-10-01 14:51:43');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(63, 25, 32, 'N', 37, 'Y', 'Patroli', '199203162014111002', '2018-10-01 14:51:43');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(64, 13, 22, 'Y', 16, 'Y', '', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(65, 106, 99, 'Y', 97, 'Y', '', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(66, 109, 102, 'Y', 92, 'Y', '', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(67, 4, 5, 'Y', 3, 'N', 'Patroli', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(68, 66, 62, 'Y', 87, 'Y', '', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(69, 6, 14, 'Y', 5, 'Y', '', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(70, 70, 65, 'Y', 71, 'Y', '', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(71, 32, 7, 'Y', 48, 'Y', '', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(72, 27, 34, 'Y', 40, 'Y', '', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(73, 76, 1, 'Y', 60, 'Y', '', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(74, 17, 24, 'Y', 19, 'Y', '', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(75, 28, 35, 'Y', 43, 'Y', '', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(76, 108, 101, 'N', 93, 'Y', 'Patroli', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(77, 44, 46, 'Y', 72, 'Y', '', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(78, 100, 93, 'Y', 22, 'Y', '', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(79, 12, 20, 'Y', 12, 'Y', '', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(80, 40, 42, 'Y', 65, 'Y', '', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(81, 62, 41, 'Y', 89, 'Y', '', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(82, 57, 56, 'Y', 83, 'Y', '', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(83, 11, 19, 'Y', 10, 'N', 'Patroli', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(84, 98, 91, 'N', 28, 'N', 'Patroli', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(85, 40, 42, 'Y', 65, 'Y', '', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(86, 95, 89, 'N', 31, 'Y', 'Patroli', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(87, 59, 59, 'N', 86, 'Y', 'Patroli', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(88, 110, 104, 'Y', 99, 'Y', '', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(89, 28, 35, 'Y', 43, 'Y', 'Analisa Intelijen', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(90, 5, 6, 'N', 4, 'Y', 'Patroli', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(91, 13, 22, 'Y', 16, 'N', 'Patroli', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(92, 103, 96, 'N', 100, 'N', 'Patroli', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(93, 26, 33, 'Y', 39, 'Y', '', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(94, 54, 54, 'Y', 80, 'Y', 'Analisa Intelijen', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(95, 76, 1, 'Y', 60, 'Y', '', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(96, 92, 86, 'N', 33, 'N', 'Patroli', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(97, 104, 97, 'Y', 14, 'Y', '', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(98, 35, 11, 'N', 56, 'Y', 'Patroli', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(99, 11, 19, 'N', 10, 'N', 'Patroli', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(100, 90, 84, 'Y', 35, 'Y', '', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(101, 84, 78, 'N', 50, 'Y', 'Patroli', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(102, 58, 58, 'Y', 85, 'Y', '', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(103, 31, 8, 'Y', 49, 'Y', '', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(104, 42, 44, 'N', 68, 'Y', 'Analisa Intelijen', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(105, 26, 33, 'Y', 39, 'Y', '', '199203162014111002', '2018-10-03 09:11:54');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(106, 91, 85, 'Y', 36, 'Y', '', '199203162014111002', '2018-10-03 09:11:54');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(107, 8, 16, 'Y', 7, 'Y', '', '199203162014111002', '2018-10-03 09:11:54');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(108, 55, 55, 'Y', 81, 'Y', '', '199203162014111002', '2018-10-03 09:11:54');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(109, 3, 4, 'Y', 2, 'Y', '', '199203162014111002', '2018-10-03 09:11:54');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(110, 92, 86, 'Y', 33, 'Y', '', '199203162014111002', '2018-10-03 09:11:54');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(111, 37, 38, 'Y', 59, 'Y', '', '199203162014111002', '2018-10-03 09:11:54');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(112, 56, 57, 'Y', 82, 'Y', '', '199203162014111002', '2018-10-03 09:11:54');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(113, 23, 30, 'Y', 29, 'Y', '', '199203162014111002', '2018-10-03 09:11:54');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(114, 49, 50, 'Y', 76, 'Y', '', '199203162014111002', '2018-10-03 09:11:54');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(115, 64, 60, 'Y', 90, 'Y', '', '199203162014111002', '2018-10-03 09:11:54');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(116, 16, 23, 'Y', 18, 'Y', '', '199203162014111002', '2018-10-03 09:11:54');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(117, 7, 15, 'Y', 6, 'Y', '', '199203162014111002', '2018-10-03 09:11:54');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(118, 96, 103, 'Y', 91, 'Y', '', '199203162014111002', '2018-10-03 09:11:54');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(119, 73, 68, 'Y', 103, 'Y', '', '199203162014111002', '2018-10-03 09:11:54');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(120, 104, 97, 'Y', 14, 'Y', '', '199203162014111002', '2018-10-03 09:11:54');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(121, 69, 64, 'Y', 78, 'Y', '', '199203162014111002', '2018-10-03 09:11:54');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(122, 97, 90, 'Y', 30, 'Y', '', '199203162014111002', '2018-10-03 09:11:54');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(123, 71, 66, 'Y', 69, 'Y', '', '199203162014111002', '2018-10-03 09:11:54');
INSERT INTO `tb_cek_cctv` (`Id`, `IdPerusahaan`, `IdCCTV`, `StatusCCTV`, `IdInventory`, `StatusInventory`, `TindakLanjut`, `PtgsRekam`, `WktRekam`) VALUES
	(124, 42, 44, 'Y', 68, 'Y', '', '199203162014111002', '2018-10-03 09:11:54');
/*!40000 ALTER TABLE `tb_cek_cctv` ENABLE KEYS */;

-- membuang struktur untuk view apppeloro.tb_cek_cctv_detail
-- Membuat tabel sementara untuk menangani kesalahan ketergantungan VIEW
CREATE TABLE `tb_cek_cctv_detail` (
	`Id` INT(11) NOT NULL,
	`IdPerusahaan` INT(11) NOT NULL,
	`NPWP` VARCHAR(15) NULL COLLATE 'latin1_swedish_ci',
	`NmPerusahaan` VARCHAR(80) NULL COLLATE 'latin1_swedish_ci',
	`Fasilitas` INT(3) NULL,
	`Jenis` INT(3) NULL,
	`NoSkepAkhir` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`TglSkepAkhir` DATE NULL,
	`IdCCTV` INT(11) NOT NULL,
	`IpCCTV` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`UserCCTV` VARCHAR(80) NULL COLLATE 'latin1_swedish_ci',
	`PassCCTV` VARCHAR(80) NULL COLLATE 'latin1_swedish_ci',
	`StatusCCTV` ENUM('Y','N') NOT NULL COLLATE 'latin1_swedish_ci',
	`IdInventory` INT(11) NOT NULL,
	`IpIT` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`UserIT` VARCHAR(80) NULL COLLATE 'latin1_swedish_ci',
	`PassIT` VARCHAR(80) NULL COLLATE 'latin1_swedish_ci',
	`StatusInventory` ENUM('Y','N') NOT NULL COLLATE 'latin1_swedish_ci',
	`TindakLanjut` VARCHAR(500) NULL COLLATE 'latin1_swedish_ci',
	`PtgsRekam` VARCHAR(18) NOT NULL COLLATE 'latin1_swedish_ci',
	`WktRekam` DATETIME NOT NULL
) ENGINE=MyISAM;

-- membuang struktur untuk table apppeloro.tb_history
CREATE TABLE IF NOT EXISTS `tb_history` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdUser` int(11) NOT NULL,
  `KdHistory` int(11) NOT NULL,
  `DetailHistory` varchar(255) NOT NULL,
  `WktRekam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel apppeloro.tb_history: ~3 rows (lebih kurang)
DELETE FROM `tb_history`;
/*!40000 ALTER TABLE `tb_history` DISABLE KEYS */;
INSERT INTO `tb_history` (`Id`, `IdUser`, `KdHistory`, `DetailHistory`, `WktRekam`) VALUES
	(2, 1, 1, 'Berhasil Tambah data Random Check CCTV dan IT Inventory', '2018-10-02 23:39:50');
INSERT INTO `tb_history` (`Id`, `IdUser`, `KdHistory`, `DetailHistory`, `WktRekam`) VALUES
	(3, 1, 1, 'Berhasil Tambah data Random Check CCTV dan IT Inventory', '2018-10-08 09:49:05');
INSERT INTO `tb_history` (`Id`, `IdUser`, `KdHistory`, `DetailHistory`, `WktRekam`) VALUES
	(4, 1, 1, 'Berhasil Tambah data Random Check CCTV dan IT Inventory', '2018-10-01 09:11:54');
/*!40000 ALTER TABLE `tb_history` ENABLE KEYS */;

-- membuang struktur untuk table apppeloro.tb_it
CREATE TABLE IF NOT EXISTS `tb_it` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdPerusahaan` int(11) NOT NULL DEFAULT '0',
  `IdTpbSikabayan` int(11) NOT NULL DEFAULT '0',
  `IpAddress` varchar(100) NOT NULL DEFAULT '0',
  `Username` varchar(80) NOT NULL DEFAULT '0',
  `Password` varchar(80) NOT NULL DEFAULT '0',
  `Browser` varchar(80) NOT NULL DEFAULT '0',
  `Status` enum('Y','N') DEFAULT NULL,
  `Realtime` enum('Y','N') DEFAULT NULL,
  `Keterangan` varchar(255) NOT NULL DEFAULT '0',
  `PtgsRekam` varchar(18) NOT NULL DEFAULT '0',
  `WktRekam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PtgsUpdate` varchar(18) DEFAULT NULL,
  `WktUpdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel apppeloro.tb_it: ~103 rows (lebih kurang)
DELETE FROM `tb_it`;
/*!40000 ALTER TABLE `tb_it` DISABLE KEYS */;
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(1, 2, 0, '103.232.65.137:81', 'beacukai', 'arvico', 'Mozilla Firefox', 'Y', 'Y', 'Aktif', '199203162014111002', '2018-09-13 10:28:42', '199203162014111002', '2018-09-22 12:59:07');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(2, 3, 0, '103.232.65.137:81/inventorygb', 'beacukai', 'arvicogb', 'Mozilla Firefox', 'Y', 'Y', 'Aktif', '199203162014111002', '2018-09-13 10:30:48', '199203162014111002', '2018-10-01 09:11:54');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(3, 4, 0, '36.68.150.251', 'beacukai', 'beacukai', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 10:31:14', '199203162014111002', '2018-10-03 08:55:44');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(4, 5, 0, '36.78.179.57', 'beacukai', 'beacukai', 'Mozilla Firefox', 'Y', 'N', '', '199203162014111002', '2018-09-13 10:32:10', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(5, 6, 0, 'atozzjayaindonesia.com', 'beacukai', 'beacukai123', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 10:34:00', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(6, 7, 0, 'www.bumjin-indonesia.com', 'Bea cukai bji', '123456', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 10:35:52', '199203162014111002', '2018-10-01 09:11:54');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(7, 8, 0, '202.43.114.62/login', 'bcbekasi', 'beacukai', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 10:37:29', '199203162014111002', '2018-10-01 09:11:54');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(8, 9, 0, '202.43.114.62/byunghwa2/login', 'admin', 'admin', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 10:54:03', NULL, NULL);
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(9, 10, 0, 'inventory.capcom.co.id', 'beacukai', 'bc123', 'Mozilla Firefox', 'N', 'N', '', '199203162014111002', '2018-09-13 10:55:27', '199203162014111002', '2018-12-03 09:41:15');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(10, 11, 0, '36.71.132.139', 'beacukai', 'beacukai', 'Mozilla Firefox', 'N', 'N', '', '199203162014111002', '2018-09-13 10:58:51', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(11, 107, 0, 'yongshinindonesia.indonesiacore.com', 'yongshinindonesia@yahoo.com', 'yongshin', 'Internet Explorer', 'Y', 'Y', '', '199203162014111002', '2018-09-13 11:00:28', NULL, NULL);
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(12, 12, 0, 'craze-indonesia.com', 'beacukai_crazeindonesia', 'craze', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 11:01:24', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(13, 105, 0, 'www.yeonhoindonesia.com ', 'beacukai@yeonhoindonesia.com', 'yhi1234', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 11:01:37', NULL, NULL);
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(14, 104, 0, '36.68.150.42', 'bc', '1', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 11:03:07', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(15, 14, 0, 'daehwa-bc.elixirsys.com', 'user', 'resu', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 11:03:11', NULL, NULL);
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(16, 13, 0, '183.81.156.52/gbdhi', 'kpbc', 'kpbc123', 'Mozilla Firefox', 'N', 'N', '', '199203162014111002', '2018-09-13 11:05:09', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(17, 102, 0, 'www.wakokogyoindonesia.com', 'beacukai_wakokogyo', 'cibitung', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 11:05:35', NULL, NULL);
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(18, 16, 0, 'www.daehyunbobbin.com', 'beacukai_dhi', '1234', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 11:06:00', '199203162014111002', '2018-10-01 09:11:54');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(19, 17, 0, 'www.daelimindonesia.com', 'beacukai_daelim', '12345', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 11:06:38', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(20, 101, 0, 'www.bwgapac.com', 'bohlerbeacukai@gmail.com', 'desember', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 11:06:43', NULL, NULL);
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(21, 18, 0, 'www.dalzonchemicalsindonesia.com', 'beacukai@dalzon.com', 'beacukai123', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 11:07:34', NULL, NULL);
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(22, 100, 0, '36.82.117.229', 'beacukai', 'beacukai', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 11:07:46', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(23, 19, 0, '203.160.60.142:8080', 'bc', '1', 'Mozilla Firefox', 'N', 'N', '', '199203162014111002', '2018-09-13 11:08:10', NULL, NULL);
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(24, 20, 0, '203.160.60.142', 'bc', '1', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 11:08:36', NULL, NULL);
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(25, 99, 0, 'www.totan-global.com/inventory', 'beacukai', 'exim', 'Mozilla Firefox', 'N', 'Y', '', '199203162014111002', '2018-09-13 11:08:40', NULL, NULL);
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(26, 21, 0, '396036225', '-', '-', 'Team Viewer', 'N', 'N', 'TeamViewer ID : 396036225\r\nPassword : cikarang2829', '199203162014111002', '2018-09-13 11:18:07', NULL, NULL);
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(27, 22, 0, 'dmcti-inventory.com', 'bc@dmcti.co.id', 'beacukai123', 'Mozilla Firefox', 'Y', 'N', 'Dalam Proses Maintenance', '199203162014111002', '2018-09-13 11:18:38', '199203162014111002', '2018-10-30 16:23:57');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(28, 98, 0, '620335937', 'bea cukai', 'tosin', 'Team Viewer', 'N', 'Y', 'Team Viewer (ID : 620335937, pass : Tosin123) \r\npasw desktop : 123456\r\n', '199203162014111002', '2018-09-13 11:22:37', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(29, 23, 0, 'dongsan-indonesia.com/index.php?page=inventory', 'dsiinventory', 'dsiinventory', 'Mozilla Firefox', 'Y', 'N', '', '199203162014111002', '2018-09-13 11:28:21', '199203162014111002', '2018-10-01 09:11:54');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(30, 97, 0, 'beacukaitasm.ddns.net', 'Bea Cukai', 'beacukai', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 11:28:36', '199203162014111002', '2018-10-01 09:11:54');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(31, 95, 0, 'techmasterindonesia.com', 'beacukai@techmaster.com', 'beacukai123', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 11:30:55', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(32, 94, 0, '36.89.51.233', 'bc', 'bc123', 'Remote Dekstop', 'N', 'N', 'remote dekstop\r\nIP : 36.89.51.233\r\nid: bc\r\npasswrod : bc123"', '199203162014111002', '2018-09-13 13:19:22', '199203162014111002', '2018-09-27 14:50:03');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(33, 92, 0, 'www.taebongbconline.swifectexample.com', 'bctaebong', 'beacukai', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:21:37', '199203162014111002', '2018-10-01 09:11:54');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(34, 24, 0, 'www.e-inkaber.com', 'bcdoowonpi', 'bcdoowon', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:22:51', NULL, NULL);
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(35, 90, 0, 'suryamultindoindustri.com', 'beacukaihanggar31', 'hanggar31', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:23:03', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(36, 91, 0, '36.78.179.181', 'beacukai', 'systech02', 'Remote Dekstop', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:23:45', '199203162014111002', '2018-12-07 10:15:32');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(37, 25, 0, 'www.ebara-indonesia.com', 'beacukai@ebara.com', 'pt ebara', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:24:17', NULL, NULL);
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(38, 89, 0, '118.96.19.171:8787', 'bc-supra', 'suprahanda', 'Mozilla Firefox', 'N', 'Y', '', '199203162014111002', '2018-09-13 13:25:01', NULL, NULL);
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(39, 26, 0, 'www.electronpartstechnology.com', 'beacukai@electronparts.com', 'beacukai123', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:25:09', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(40, 27, 0, '36.67.190.157', 'beacukai', 'beacukai', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:25:45', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(41, 88, 0, '203.160.60.50', 'exim1234', '1234', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:25:51', NULL, NULL);
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(42, 87, 0, 'mpicloud.web.id/sintertech/app_Login', 'bccikarang', 'customs', 'Mozilla Firefox', 'Y', 'Y', '\r\n', '199203162014111002', '2018-09-13 13:27:20', '199203162014111002', '2018-10-30 15:38:32');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(43, 28, 0, 'www.eps-indonesia.com', 'eximeps@yahoo.com', '123456789', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:29:21', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(44, 86, 0, '36.68.150.36/inventory/', 'beacukai', 'beacukai', 'Mozilla Firefox', 'N', 'Y', '\r\n', '199203162014111002', '2018-09-13 13:29:22', NULL, '2018-09-13 13:32:43');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(45, 29, 0, 'www.eunsungindonesia.com', 'beacukai', '1234', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:30:39', NULL, NULL);
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(46, 85, 0, '203.160.60.28:80/siheart/interface', 'bc', 'beacukai', 'Mozilla Firefox', 'N', 'Y', 'Untuk Password\r\nbeacukai (pada Kolom Kawasan Berikat, Isikata :bekasi)\r\n', '199203162014111002', '2018-09-13 13:32:15', NULL, '2018-09-14 16:55:25');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(47, 30, 0, '642876756', 'Beacukai', '123456', 'Team Viewer', 'Y', 'Y', 'Team Viewer ID : 642876756\r\nPassword : 123456\r\n', '199203162014111002', '2018-09-13 13:32:44', NULL, '2018-09-13 13:34:20');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(48, 32, 0, '36.68.151.102/index.php', 'beacukai', '1234', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:33:10', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(49, 31, 0, '36.68.151.102/FEELUX_GB/index.php', 'beacukai', '1234', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:33:32', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(50, 84, 0, 'www.sitechindonesia.com', 'bc@sitech.com', 'bcsitech', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:34:06', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(51, 82, 0, 'shinheungindonesia.co.id:8080           ', 'beacukai@shinheung.co.id', 'bc', 'Mozilla Firefox', 'N', 'Y', '', '199203162014111002', '2018-09-13 13:35:26', NULL, '2018-09-13 13:35:53');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(52, 81, 0, 'seoulprecisionmetal.com', 'Beacukaispm', 'Spm008', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:36:20', NULL, NULL);
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(53, 33, 0, '192.168.120.125', 'customs', 'c@stom!#', 'Mozilla Firefox', 'N', 'N', '', '199203162014111002', '2018-09-13 13:36:31', NULL, NULL);
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(54, 80, 0, '203.160.60.25', 'beacukai', 'beacukai', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:37:12', NULL, '2018-09-13 13:39:07');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(55, 34, 0, 'www.fujiseimitsuindonesia.com', 'beacukai@fujiseimitsuindonesia.com', 'bcfsi123', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:37:58', NULL, NULL);
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(56, 35, 0, '36.82.117.222/inventory', 'beacukai', 'beacukai', 'Mozilla Firefox', 'Y', 'N', '', '199203162014111002', '2018-09-13 13:39:20', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(57, 36, 0, 'gayasteel.elixirsys.com', 'user', 'resu', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:39:49', NULL, NULL);
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(58, 79, 0, 'samudera.swiapps.com', 'adminsmd', 'admin', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:40:01', NULL, NULL);
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(59, 37, 0, 'beacukai.sansico.com:8080/beacukaigcp', 'akuanakbangsa6', 'nakal', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:40:45', '199203162014111002', '2018-11-05 14:09:18');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(60, 76, 0, '107.102.8.48/cdm', 'sein.customs', 'sein123', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:41:01', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(61, 38, 0, 'www.iinoindonesia.com', 'iinoindonesia_02@yahoo.co.id', 'iinoexim', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:41:16', NULL, '2018-09-13 13:41:57');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(62, 75, 0, 'www.e-inkaber.com', 'BEA CUKAI SAMOIN1', 'beacukai111', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:43:41', NULL, NULL);
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(63, 39, 0, '1004931282', 'custom', '**bcikpi2020', 'Team Viewer', 'Y', 'Y', 'TeamViewer (ID : 1004931282)\r\nPassword : **bcikpi2020\r\nPassword komputer : **bcikpi2020', '199203162014111002', '2018-09-13 13:43:43', NULL, '2018-09-13 13:45:03');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(64, 74, 0, '115.124.76.66 ', 'User', '123', 'Mozilla Firefox', 'N', 'Y', '115.124.76.66 \r\n(User : adm2, Pass : Intersoft19)\r\n', '199203162014111002', '2018-09-13 13:45:02', NULL, '2018-09-13 13:45:47');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(65, 40, 0, 'www.ilsamindonesia.com', 'beacukai@ilsam.com', '1234', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:45:30', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(66, 41, 0, 'indosultanjaya.com/index', 'beacukai', 'beacukai123', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:46:22', NULL, '2018-09-13 13:46:35');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(67, 72, 0, 'ptrbc.com', 'beacukai', 'beacukai', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:46:54', NULL, NULL);
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(68, 42, 0, 'www.innotechindonesia.com', 'beacukai_innotech', '@beacukai', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:47:06', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(69, 71, 0, 'pyojoonmoldindonesia.com', 'beacukai', 'pjmbc', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:47:47', '199203162014111002', '2018-10-01 09:11:54');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(70, 43, 0, 'www.iretechindonesia.com', 'beacukai', 'bciretech', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:48:32', '199203162014111002', '2018-10-24 16:56:35');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(71, 70, 0, '980072690', 'beacukai', 'beacukai', 'Team Viewer', 'Y', 'Y', 'Team Viewer \r\n(ID : 980072690 Pass : PB@R89638)', '199203162014111002', '2018-09-13 13:48:34', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(72, 44, 0, 'www.kdelectronicsindonesia.com', 'beacukai', 'beacukai', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:50:20', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(73, 45, 0, 'www.keosanindonesia.com', 'beacukai', '1357', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:50:58', NULL, NULL);
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(74, 46, 0, '36.68.150.35', 'beacukai', 'beacukai', 'Mozilla Firefox', 'N', 'N', '', '199203162014111002', '2018-09-13 13:52:12', NULL, NULL);
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(75, 48, 0, 'www.koformindonesia.com', 'koform@yahoo.com', 'koform', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:52:41', NULL, NULL);
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(76, 49, 0, 'www.korryo-industry.com', 'beacukai_korryo', 'beacukai', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:53:07', '199203162014111002', '2018-10-01 09:11:54');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(77, 50, 0, '36.68.151.74/mrpkostec_ckr', 'bc', 'bc', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:53:37', NULL, NULL);
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(78, 69, 0, 'beacukai.sansico.com:8080/beacukaipp2/', 'beacukai', 'abcf', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:54:39', '199203162014111002', '2018-10-01 09:11:54');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(79, 53, 0, 'lim123.sytes.net', 'bc', 'bc', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 13:59:52', NULL, NULL);
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(80, 54, 0, 'www.malugo-indonesia.com ', 'beacukai', 'bcmalugo', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 14:00:21', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(81, 55, 0, 'www.malugo-indonesia.com ', 'sri@malugo.com.sg', 'malugo3B', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 14:00:43', '199203162014111002', '2018-10-01 09:11:54');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(82, 56, 0, 'Aplikasi CRONOS', '-', '-', 'Aplikasi Dekstop', 'Y', 'Y', 'Menggunakan Komputer khusus dari PT Mattel\r\nPetunjuk akses ada di komputer', '199203162014111002', '2018-09-13 14:01:55', '199203162014111002', '2018-10-01 09:11:54');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(83, 57, 0, 'Aplikasi CRONOS', '-', '-', 'Aplikasi Dekstop', 'Y', 'Y', 'Menggunakan Komputer khusus dari PT Mattel\r\nPetunjuk akses ada di komputer', '199203162014111002', '2018-09-13 14:02:21', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(84, 67, 0, 'www.platechindonesia.com', 'platech@yahoo.com', 'platech', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 14:02:35', NULL, NULL);
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(85, 58, 0, 'Aplikasi CRONOS', '-', '-', 'Aplikasi Dekstop', 'Y', 'Y', 'Menggunakan Komputer khusus dari PT Mattel\r\nPetunjuk akses ada di komputer', '199203162014111002', '2018-09-13 14:02:47', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(86, 59, 0, '36.78.179.111:8081/Sinarbc', 'BC', 'meiji', 'Mozilla Firefox', 'Y', 'N', '', '199203162014111002', '2018-09-13 14:03:36', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(87, 66, 0, 'inventory.pelangi-cimandiri.co.id', 'beacukai', 'beacukai', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 14:03:57', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(88, 61, 0, '112.78.129.114:8585/mitsuyoshi', 'admin', '123456', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 14:04:24', NULL, '2018-09-14 16:22:31');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(89, 62, 0, '67.227.183.95/~inkaberonline/mmc1', 'beacukai', 'beacukai123', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 14:04:48', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(90, 64, 0, 'http://192.168.2.102/qlikview/login2.htm', 'bi.beacukai1', 'MASAbibea1', 'Mozilla Firefox', 'Y', 'Y', 'Sebelum akses IT Inventory, lakukan koneksi VPN Forticlient', '199203162014111002', '2018-09-13 14:06:19', '199203162014111002', '2018-10-01 09:11:54');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(91, 96, 0, '146.196.98.156', 'BEACUKAI', 'beacukai', 'Remote Dekstop', 'Y', 'Y', '', '199203162014111002', '2018-09-13 14:08:39', '199203162014111002', '2018-10-30 16:12:42');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(92, 109, 0, 'http://www.yupro.swiapps.com', 'adminypr', 'admin', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 14:20:16', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(93, 108, 0, 'http://36.68.150.178/Inventorygb/', 'Bea Cukai', 'gb', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 14:21:17', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(94, 78, 0, '203.160.60.149/sein', 'beacukai', 'bea2016cukai', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 14:22:48', NULL, NULL);
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(95, 77, 0, 'www.samsungelectronicsindonesia.com', 'beacukai', 'beacukaisamsung123', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 14:23:36', NULL, NULL);
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(96, 65, 0, 'noblechem-indo.com', 'admin', 'admin', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 14:27:50', NULL, NULL);
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(97, 106, 0, 'www.yeonhoindonesia.com ', 'beacukai@yeonhoindonesia.com', 'yhi1234', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-09-13 14:28:55', '199203162014111002', '2018-10-02 23:39:50');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(98, 93, 0, '36.89.51.233', 'bc', 'bc123', 'Remote Dekstop', 'N', 'N', 'remote dekstop IP : 36.89.51.233 id: bc passwrod : bc123"', '199203162014111002', '2018-09-13 14:30:48', '199203162014111002', '2018-09-27 14:50:00');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(99, 110, 0, '222.165.222.218:8888/csreport1.4', '007', '-', 'Mozilla Firefox', 'Y', 'Y', '-', '199203162014111002', '2018-09-27 14:34:54', '199203162014111002', '2018-09-27 14:35:14');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(100, 103, 0, '139.5.152.81/inventory', 'beacukai', 'beacukai', 'Mozilla Firefox', 'N', 'Y', '-', '199203162014111002', '2018-09-27 14:59:34', '199203162014111002', '2018-10-08 09:49:05');
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(101, 83, 0, 'apps.ptshinsungindonesia.com', 'beacukai', 'cek', 'Mozilla Firefox', 'Y', 'Y', '-', '199203162014111002', '2018-09-27 15:43:17', NULL, NULL);
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(102, 52, 0, '202.169.45.131/customs', 'customs', '123', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-10-02 16:21:26', NULL, NULL);
INSERT INTO `tb_it` (`Id`, `IdPerusahaan`, `IdTpbSikabayan`, `IpAddress`, `Username`, `Password`, `Browser`, `Status`, `Realtime`, `Keterangan`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(103, 73, 0, '203.160.60.149/rlc', 'beacukai', 'bea2016cukai', 'Mozilla Firefox', 'Y', 'Y', '', '199203162014111002', '2018-10-04 11:14:27', '199203162014111002', '2018-10-01 09:11:54');
/*!40000 ALTER TABLE `tb_it` ENABLE KEYS */;

-- membuang struktur untuk view apppeloro.tb_it_detail
-- Membuat tabel sementara untuk menangani kesalahan ketergantungan VIEW
CREATE TABLE `tb_it_detail` (
	`Id` INT(11) NOT NULL,
	`IdPerusahaan` INT(11) NOT NULL,
	`IdTpbSikabayan` INT(11) NOT NULL,
	`IpAddress` VARCHAR(100) NOT NULL COLLATE 'latin1_swedish_ci',
	`Username` VARCHAR(80) NOT NULL COLLATE 'latin1_swedish_ci',
	`Password` VARCHAR(80) NOT NULL COLLATE 'latin1_swedish_ci',
	`Browser` VARCHAR(80) NOT NULL COLLATE 'latin1_swedish_ci',
	`Status` ENUM('Y','N') NULL COLLATE 'latin1_swedish_ci',
	`Realtime` ENUM('Y','N') NULL COLLATE 'latin1_swedish_ci',
	`Keterangan` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`PtgsRekam` VARCHAR(18) NOT NULL COLLATE 'latin1_swedish_ci',
	`WktRekam` TIMESTAMP NOT NULL,
	`PtgsUpdate` VARCHAR(18) NULL COLLATE 'latin1_swedish_ci',
	`WktUpdate` TIMESTAMP NULL,
	`NmPerusahaan` VARCHAR(80) NULL COLLATE 'latin1_swedish_ci',
	`NPWP` VARCHAR(15) NULL COLLATE 'latin1_swedish_ci',
	`AlamatPabrik` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`NoSkepAkhir` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`Status_TPB` ENUM('Y','N') NULL COLLATE 'latin1_swedish_ci',
	`Fasilitas` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`Jenis` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`ProfilResiko` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- membuang struktur untuk view apppeloro.tb_non_cctv
-- Membuat tabel sementara untuk menangani kesalahan ketergantungan VIEW
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
	`PtgsRekam` VARCHAR(18) NOT NULL COLLATE 'latin1_swedish_ci',
	`WktRekam` TIMESTAMP NOT NULL
) ENGINE=MyISAM;

-- membuang struktur untuk view apppeloro.tb_non_it
-- Membuat tabel sementara untuk menangani kesalahan ketergantungan VIEW
CREATE TABLE `tb_non_it` (
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
	`PtgsRekam` VARCHAR(18) NOT NULL COLLATE 'latin1_swedish_ci',
	`WktRekam` TIMESTAMP NOT NULL
) ENGINE=MyISAM;

-- membuang struktur untuk table apppeloro.tb_perusahaan
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
  `PtgsRekam` varchar(18) NOT NULL,
  `WktRekam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PtgsUpdate` varchar(18) DEFAULT NULL,
  `WktUpdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdPerusahaan`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel apppeloro.tb_perusahaan: ~110 rows (lebih kurang)
DELETE FROM `tb_perusahaan`;
/*!40000 ALTER TABLE `tb_perusahaan` DISABLE KEYS */;
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(1, '024862534403000', 'ADIPERKASA EKABAKTI INDUSTRY', 2, 3, 'JALAN JABABEKA V BLOK V NO. 34-36, KAWASAN INDUSTRI JABABEKA, DESA PASIR GOMBONG, KEC. CIKARANG UTARA', 'Jalan Raya Golf Gunung Geulis RT. 001 RW 001 Desa Gunung Geulis, Kec. Sukaraja Kab. Bogor', 6, '897/KM.4/2017', '2017-04-25', '897/KM.4/2017', '2017-04-25', '2020-04-20', 'Metal Product', 'JASON SURJANA TANUWIDJAJA', 'Indonesia', '1.884', 'N', 8, '199203162014111002', '2018-01-24 14:33:42', '199203162014111002', '2018-09-12 19:08:48');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(2, '018692616055000', 'ARVICO ELECTRONICS INDONESIA', 1, 4, 'Kws Ind. JABABEKA I, Jl. JABABEKA XIV SFB BLOK J 12F, CIKARANG, BEKASI, JW BRT', 'Kws Ind. JABABEKA I, Jl. JABABEKA XIV SFB BLOK J 12F, CIKARANG, BEKASI, JW BRT', 5, '537/KMK.05/1999', '1999-11-12', '190/WBC.08/2015', '2015-12-01', '3000-12-31', 'Other Manufacturing', 'BANG MYUNG SOO', 'Korea Selatan', '1.580', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(3, '018692616055000', 'ARVICO ELECTRONICS INDONESIA', 2, 3, 'DI DALAM AREA KAWASAN BERIKAT PT ARVICO ELECTRONICS INDONESIA, KAWASAN INDUSTRI JABABEKA I, JALAN JABABEKA XIV, SFB BLOK J 12 F, CIKARANG, BEKASI, JAWA BARAT', 'DI DALAM AREA KAWASAN BERIKAT PT ARVICO ELECTRONICS INDONESIA, KAWASAN INDUSTRI JABABEKA I, JALAN JABABEKA XIV, SFB BLOK J 12 F, CIKARANG, BEKASI, JAWA BARAT', 6, '138/KMK.05/2000', '2000-02-03', '2020/KM.4/2015', '2015-10-02', '2018-04-14', 'Other Manufacturing', 'BANG MYUNG SOO', 'Korea Selatan', '600', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(4, '018245514055000', 'ASIANET SPRING INDONESIA', 1, 4, 'Kws Ind. JABABEKA, Jl. INDUSTRI KAWASAN JABABEKA TAHAP II BLOK RR 3D, 3E, Ds. PASIRSARI, LEMAHABANG, BEKASI, JW BRT', 'Kws Ind. JABABEKA, Jl. INDUSTRI KAWASAN JABABEKA TAHAP II BLOK RR 3D, 3E, Ds. PASIRSARI, LEMAHABANG, BEKASI, JW BRT', 5, '392/KMK.04/2002', '2002-08-30', '1503/KM.4/2012', '2012-05-11', '3000-12-31', 'Sampai Ijin Usaha dicabit', 'LEE CHIN CHIEH', 'Taiwan', '2.637', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(5, '020265682052000', 'ASTECH INDONESIA', 1, 4, 'Jl. JABABEKA RAYA BLOK C-18N, PASIR GOMBONG, LEMAHABANG, BEKASI, JW BRT', 'Jl. JABABEKA RAYA BLOK C-18N, PASIR GOMBONG, LEMAHABANG, BEKASI, JW BRT', 5, '430/KMK.4/2004', '2004-09-21', '1670/KM.4/2012', '2012-05-21', '2035-12-31', 'Other Manufacturing', 'HIRAKAWA HIROICHI', 'JEPANG', '1.272', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(6, '021989769414000', 'ATOZZ JAYA INDONESIA', 2, 3, 'Jl. JABABEKA III BLOK C-34, Kws Ind. JABABEKA, Ds. PASIRGOMBONG, Kec. CIKARANG SELATAN, KABUPATEN BEKASI, JW BRT', 'Jl. JABABEKA III BLOK C-34, Kws Ind. JABABEKA, Ds. PASIRGOMBONG, Kec. CIKARANG SELATAN, KABUPATEN BEKASI, JW BRT', 6, '911/KM.4/2017', '2017-04-27', '911/KM.4/2017', '2017-04-27', '3000-12-31', 'INDUSTRI KOMPONEN ELEKTRONIK', 'KWON YOUNG YEOL', 'KOREA', '2.208', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(7, '311859862414000', 'BUMJIN ELECTRONICS INDONESIA', 1, 4, 'Kws Ind. JABABEKA TAHAP 3, BLOK A5B, PASIR GOMBONG, CIKARANG UTARA, BEKASI, JW BRT 17530', 'Kws Ind. JABABEKA TAHAP 3, BLOK A5B, PASIR GOMBONG, CIKARANG UTARA, BEKASI, JW BRT 17530', 6, '1664/KMK.04/2010', '2010-08-27', '102/KM.8/2017', '2017-06-07', '3000-12-31', 'Other Manufacturing\n(Industri Barang plastik lainnya YTDL, industri peralatan perekam, penerima dan pengganda audio dan video, industri mesin dan perkakas mesin untuk pekerjaan logam, industri suku cadang dan aksesori kendaraan bermotor roda empat atau le', 'LEE YOUNG SUN', 'KOREA', '30.000', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(8, '018692541055000', 'BYUNG HWA INDONESIA I', 1, 4, 'Kws Ind. JABABEKA, Jl. JABABEKA VI, SFB BLOK J4A, Ds. HARJAMEKAR, CIBITUNG BEKASI, JW BRT', 'Kws Ind. JABABEKA, Jl. JABABEKA VI, SFB BLOK J4A, Ds. HARJAMEKAR, CIBITUNG BEKASI, JW BRT', 5, '452/KMK.05/1999', '1999-07-01', '1401/KM.4/2014', '2014-08-08', '2017-12-31', 'automotive &component', 'SON BYUNG WOOK', 'KOREA', '1.728', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(9, '018692541055000', 'BYUNG HWA INDONESIA II', 1, 4, 'Kawasan Industri Jababeka V, Jl. Science TImur 1 B.3/K, Sertajaya, Cikarang', 'Kawasan Industri Jababeka V, Jl. Science TImur 1 B.3/K, Sertajaya, Cikarang', 5, '902/KM.4/2016', '2016-05-18', '902/KM.4/2016', '2016-05-18', '3000-12-31', 'Automotive & Component', 'SON BYUNG WOOK', 'KOREA', '11.200', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(10, '020054169059000', 'CAPCOM', 2, 3, 'KAWASAN JABABEKA I, JALAN IX B BLOK P7 D, DESA WANGUNHARJA, KECAMATAN CIKARANG UTARA, JAWA BARAT', 'KAWASAN JABABEKA I', 6, '2162/KM.4/2013', '2013-10-30', '1845/KM.4/2016', '2016-09-27', '2019-10-18', 'Other Manufacturing', 'HENNY', 'Indonesia', '408', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(11, '018694950414001', 'CHON POONG INDONESIA', 1, 4, 'Jl. JABABEKA II G BLOK C 16 Q, Kws Ind. JABABEKA, KELURAHAN PASIR GOMBONG, Kec. CIKARANG UTARA, BEKASI, JW BRT', 'Jl. JABABEKA II G BLOK C 16 Q, Kws Ind. JABABEKA, KELURAHAN PASIR GOMBONG, Kec. CIKARANG UTARA, BEKASI, JW BRT', 5, '1962/KM.4/2017', '2017-08-18', 'KEP-66/WBC.08/KPP.MP.07/2017', '2017-06-12', '3000-12-31', 'Other manufacturing', 'LEE KANG JAE', 'Korea', '2.978', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(12, '312453277414000', 'CRAZE INDONESIA', 1, 4, 'JABABEKA TECHNOPARK / JABABEKA TAHAP III, Ds. BLOK D 3 G, Ds. PASIR GOMBONG, Kec. CIKARANG UTARA, BEKASI, JW BRT', 'JABABEKA TECHNOPARK / JABABEKA TAHAP III, Ds. BLOK D 3 G, Ds. PASIR GOMBONG, Kec. CIKARANG UTARA, BEKASI, JW BRT', 5, '662/ KM.4/ 2011', '2011-04-08', '1213/ KM.41/ 2012', '2012-04-24', '3000-12-31', 'Industri Alat Pancing dan Barang/peralatan Teknik dari plastic, Suku cadang dan aksesories kendaraan bermotor', 'ISHIHARA TAKAHIRO', 'Jepang', '2.523', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(13, '018687103055000', 'DAE HWA INDONESIA', 2, 3, 'Kws Ind. JABABEKA, Jl. JABABEKA II TOB BLOK CC-21, CIKARANG, BEKASI, JW BRT', 'Kws Ind. JABABEKA, Jl. JABABEKA II TOB BLOK CC-21, CIKARANG, BEKASI, JW BRT', 6, '1236/KM.04/2012', '2012-04-25', '1039/KM.4/2017', '2017-05-15', '2018-04-24', 'GB Pendukung kegiatan Industri', 'YOO YONG SUN', 'Indonesia', '20', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(14, '018687103055000', 'DAE HWA INDONESIA', 1, 4, 'KAWASAN BERIKAT PT DAE HWA INDONESIA, CIKARANG INDUSTRIAL ESTATE II, JALAN INDUSTRI UTARA 4 BLOK SS-6B, DESA MEKAR MUKTI, KECAMATAN LEMAHABANG, BEKASI, JAWA BARAT', 'KAWASAN BERIKAT PT DAE HWA INDONESIA, CIKARANG INDUSTRIAL ESTATE II, JALAN INDUSTRI UTARA 4 BLOK SS-6B, DESA MEKAR MUKTI, KECAMATAN LEMAHABANG, BEKASI, JAWA BARAT', 6, '172/KMK.04/2001', '2001-04-06', '79/WBC.08/2016', '2016-03-28', '3000-12-31', 'Other Manufacturing', 'YOO YONG SUN', 'Indonesia', '5.400', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(15, '314134370414000', 'DAE MYUNG HIGHNESS INDONESIA', 1, 4, 'Kws Ind. JABABEKA I, Jl. JABABEKA II E BLOK C NO. 16 D-E, PASIR GOMBONG, CIKARANG UTARA, BEKASI, JW BRT', 'Kws Ind. JABABEKA I, Jl. JABABEKA II E BLOK C NO. 16 D-E, PASIR GOMBONG, CIKARANG UTARA, BEKASI, JW BRT', 7, '1445/KM.4/2012', '2012-05-08', '1445/KM.4/2012', '2012-05-08', '3000-12-31', 'Electrical Equipment', 'KIM JONG MIN', 'KOREA', '1.848', 'N', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(16, '211139860414000', 'DAEHYUN BOBBIN INDONESIA', 1, 4, 'Kws Ind. JABABEKA I, Jl. INDUSTRI JABABEKA BLOK C, NO. 17P, PASIR GOMBONG, CIKARANG UTARA, BEKASI, JW BRT', 'Kws Ind. JABABEKA I, Jl. INDUSTRI JABABEKA BLOK C, NO. 17P, PASIR GOMBONG, CIKARANG UTARA, BEKASI, JW BRT', 5, '50/KM.4/2010', '2010-01-13', '769/KM.4/2012', '2012-02-04', '3000-12-31', 'Industri Komponen Eektronika', 'LEE YOUNG HA', 'Korea', '1.092', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(17, '010692572055000', 'DAELIM INDONESIA', 1, 4, 'Kws Ind. JABABEKA, Jl. JABABEKA RAYA BLOK E NO.  6-8, CIBITUNG, BEKASI, JW BRT', 'Kws Ind. JABABEKA, Jl. JABABEKA RAYA BLOK E NO.  6-8, CIBITUNG, BEKASI, JW BRT', 5, '91/KMK.05/1999', '1999-03-08', '652/KM.4/2012', '2012-03-22', '2022-06-30', 'INDUSTRI BARANG DARI LOGAM (BESI, BAJA, ALUMINIUM DLL)', 'LEE JOON HA', 'KOREA', '33.760', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(18, '022735005073000', 'DALZON CHEMICALS INDONESIA', 2, 3, 'RUKO CEMPAKA MAS BLOK K NO. 22, SUMUR BATU, KEMAYORAN, JAKARTA PUSAT 10640', 'JALAN RAYA TEGAL GEDE, BANGKOREANG, DESA WANGUN HARJA, KECAMATAN CIKARANG, BEKASI, JAWA BARAT', 6, '480/KM.4/2016', '2016-03-17', '480/KM.4/2016', '2016-03-17', '3000-12-31', 'Chemical & Chemical Product', 'DARYANTO WIJAYA', 'Indonesia', '553,18', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(19, '018696328414000', 'DAWEE CNC INDONESIA', 1, 4, 'ALAN JABABEKA XVII BLOK U-20 D, Kws Ind. JABABEKA I, HARJA MEKAR, Kec. CIKARANG UTARA, BEKASI, JW BRT', 'ALAN JABABEKA XVII BLOK U-20 D, Kws Ind. JABABEKA I, HARJA MEKAR, Kec. CIKARANG UTARA, BEKASI, JW BRT', 5, '170/KMK.04/2005', '0000-00-00', '1621/KM.4/2012', '2012-05-16', '2034-12-31', 'Computer and Electronic', 'MR. LEE JONG KEUN', 'KOREA', '1.830', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(20, '021080924055000', 'DAWEE ELECTRONIC INDONESIA', 1, 4, 'Jl. JABABEKA XVI BLOK U 3C, Kws Ind. JABABEKA, CIKARANG, BEKASI, JW BRT', 'Jl. JABABEKA XVI BLOK U 3C, Kws Ind. JABABEKA, CIKARANG, BEKASI, JW BRT', 5, '378/KMK.04/2002', '2002-08-13', '03/WBC.08/KPP.MP.01/2013', '2013-01-04', '3000-12-31', 'Computer and Electronic', 'MR. LEE JONG KEUN', 'KOREA', '20.000', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(21, '016506891414000', 'DINAR MAKMUR CIKARANG', 1, 4, 'Jl. JABABEKA V BLOK I-2 CIKARANG, PASIR GOMBONG, LEMAH ABANG, BEKASI, JW BRT', 'Jl. PALMERAH NO. 71, JAKARTA', 5, '535/KMK.05/1994', '1994-10-24', '899/KM.4/2015', '2015-04-24', '3000-12-31', 'Other Manufacturing', 'ICHWAN HARTONO', 'Indonesia', '11', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(22, '010715811055000', 'DMC TEKNOLOGI INDONESIA', 1, 4, 'JABABEKA INDUSTRIAL ESTATE, JL INDUSTRI UTAMA BLOK RR-7, CIKARANG, BEKASI DAN JABABEKA INDUSTRIAL ESTATE, JL INDUSTRI UTAMA BLOK RR-3H, CIKARANG, BEKASI', 'JABABEKA INDUSTRIAL ESTATE, JL INDUSTRI UTAMA BLOK RR-7, CIKARANG, BEKASI DAN JABABEKA INDUSTRIAL ESTATE, JL INDUSTRI UTAMA BLOK RR-3H, CIKARANG, BEKASI', 5, '62/KMK.04/2003', '2003-02-10', '132/WBC.08/2013', '2013-07-30', '2027-01-31', 'Electrical Equipment', 'MASAAKI YAGIHASHI', 'Jepang', '7.671', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(23, '018693499055000', 'DONG SAN IND. / IND. PLASTIC ENGINEERING', 1, 4, 'CIKARANG INDUSTRIAL ESTATE, Jl. JABABEKA III G BLOK C-17 AS, CIKARANG, BEKASI, JW BRT-17550', 'CIKARANG INDUSTRIAL ESTATE, Jl. JABABEKA III G BLOK C-17 AS, CIKARANG, BEKASI, JW BRT-17550', 6, '100/KMK.04/2001', '2001-02-28', '105/WBC.08/2016', '2016-06-03', '2031-02-28', 'Plastic Product', 'KIM JAE HO', 'Korea', '1.748', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(24, '018692624055000', 'DOO WON PRECISION INDONESIA', 1, 4, 'Kws Ind. JABABEKA, Jl. JABABEKA IV, SFB BLOK C2E-C2D, CIKARANG, BEKASI, JW BRT', 'Kws Ind. JABABEKA, Jl. JABABEKA IV, SFB BLOK C2E-C2D, CIKARANG, BEKASI, JW BRT', 5, '20/KM.05/2000', '2000-01-26', '1347/KM.4/2012', '2017-05-02', '2030-01-02', 'Other Manufacturing', 'KIM JOO WON', 'KOREA', '3.448', 'N', 8, '199203162014111002', '2018-01-24 14:33:42', '199203162014111002', '2018-09-26 09:55:29');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(25, '313507089413000', 'EBARA ELECTRIC WIRE INDONESIA', 1, 4, 'Jl. INDUSTRI SELATAN 8, BLOK EE 8F, Kws Ind. JABABEKA II, KELURAHAN PASIR SARI, Kec. CIKARANG SELATAN, KABUPATEN BEKASI, JW BRT', 'Jl. INDUSTRI SELATAN 8, BLOK EE 8F, Kws Ind. JABABEKA II, KELURAHAN PASIR SARI, Kec. CIKARANG SELATAN, KABUPATEN BEKASI, JW BRT', 5, '8/KM.4/2012', '2012-01-02', '3009/KM.4/2014', '2014-12-18', '3000-12-31', 'Electrical Equipment', 'RAHMAD ABDUL KODER', 'Indonesia', '2.451', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(26, '018696740413000', 'ELECTRON PARTS TECHNOLOGY INDONESIA', 1, 4, 'Jl. INDUSTRI SELATAN BLOK HH NOMOR 5, Kws Ind. JABABEKA, CIKARANG SELATAN, BEKASI, JW BRT', 'Jl. INDUSTRI SELATAN BLOK HH NOMOR 5, Kws Ind. JABABEKA, CIKARANG SELATAN, BEKASI, JW BRT', 5, '468/KMK.04/2005', '2005-10-05', '114/WBC.08/2012', '2012-10-17', '3000-12-31', 'ELECTRICAL EQUIPMENT', 'JU YOUNG MIN', 'KOREA', '576', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(27, '313305526414000', 'ENPLAS INDONESIA', 1, 4, 'Kws Ind. JABABEKA TAHAP III, Jl. TEKNO BOULEVARD BLOK B 6F, PASIRGOMBONG, CIKARANG UTARA, BEKASI, JW BRT', 'KAWASAN IDNUSTRI JABABEKA TAHAP III, Jl. TEKNO BOULEVARD BLOK B 6F, PASIRGOMBONG, CIKARANG UTARA, BEKASI, JW BRT', 5, '2900/KM.4/2011', '2011-11-09', '2638/KM.4/2014', '2014-12-24', '2014-10-22', 'Manufacturing', 'MR YOSHIHIKO SATO', 'JEPANG', '4.463', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(28, '018829234052000', 'EPS INDONESIA', 1, 4, 'Jl. INDUSTRI RT. 03 RW. 03, Ds. KARANG BARU, Kec. CIKARANG UTARA, KABUPATEN BEKASI, JW BRT', 'Jl. INDUSTRI RT. 03 RW. 03, Ds. KARANG BARU, Kec. CIKARANG UTARA, KABUPATEN BEKASI, JW BRT', 6, '527/KMK.04/2005', '2005-11-11', '2634/KM.4/2014', '2014-11-21', '2017-12-31', 'Manufacturing', 'BAMBANG WIRJAWAN SOENDORO', 'Indonesia', '6.128', 'Y', 9, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(29, '018694083055000', 'EUN SUNG INDONESIA', 1, 4, 'Kws Ind. JABABEKA III, BLOK B 6-B, Ds. PASIR GOMBONG, Kec. CIKARANG UTARA, BEKASI, JW BRT', 'Kws Ind. JABABEKA III, BLOK B 6-B, Ds. PASIR GOMBONG, Kec. CIKARANG UTARA, BEKASI, JW BRT', 5, '1167/KM.4/2011', '2011-06-01', '1017/KM.4/2012', '2012-04-13', '2031-09-30', 'INDUSTRI KOMPONEN ELEKTRONIK', 'KIM YOUNG YOON', 'KOREA', '2.052', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(30, '017621806414001', 'FANINDO CHIPTRONIC', 2, 3, 'KAWASAN INDUSTRI JABABEKA III, JALAN TECHNO I BLOK C2B, DESA PASIR GOMBONG, KECAMATAN CIKARANG UTARA, KABUPATEN BEKASI, JAWA BARAT', 'KAWASAN INDUSTRI JABABEKA III, J123750ALAN TECHNO I BLOK C2B, DESA PASIR GOMBONG, KECAMATAN CIKARANG UTARA, KABUPATEN BEKASI, JAWA BARAT', 6, '693/KM.4/2011', '2011-04-13', '2618/KM.4/2016', '2016-12-19', '2020-01-24', 'Other Manufactur', 'USMAN FAN', 'Indonesia', '349,7', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(31, '010718773055000', 'FEELUX INDONESIA', 2, 3, 'Jl. JABABEKA RAYA BLOK F-34 CIKARANG INDUSTRIAL ESTATE, BEKASI, JW BRT', 'KAWASAN BERIKAT PT ANSER, JALAN JABABEKA RAYA BLOK F-34, CIKARANG INDUSTRIAL ESTATE, CIKARANG, BEKASI, JAWA BARAT', 6, '301/KM.4/2002', '2002-03-13', '1336/KM.4/2016', '2016-07-19', '2018-05-21', 'Other Manufacturing', 'MR. JIN YONGHUI', 'Korea', '377', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(32, '010718773055000', 'FEELUX INDONESIA', 1, 4, 'Jl. JABABEKA RAYA BLOK F-34 CIKARANG INDUSTRIAL ESTATE, BEKASI, JW BRT', 'Jl. JABABEKA RAYA BLOK F-34 CIKARANG INDUSTRI ESTATE, BEKASI, JW BRT', 5, '333/KM4.05/1997', '1997-07-21', '1674/KM.4/2012', '2012-05-21', '2027-07-21', 'Other Manufacturing', 'MR. JIN YONGHUI', 'Korea', '5.753', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(33, '010717593055000', 'FRIGOGLASS INDONESIA', 1, 4, 'Kws Ind. JABABEKA I, Jl. JABABEKA VIBLOK P NOMOR 1, Ds. WANGUNHARJA, Kec. CIKARANG UTARA, BEKASI, JW BRT 17530', 'Kws Ind. JABABEKA I, Jl. JABABEKA VIBLOK P NOMOR 1, Ds. WANGUNHARJA, Kec. CIKARANG UTARA, BEKASI, JW BRT 17530', 5, '761/KM.4/2008', '2008-04-08', '1392/KM.4/2012', '2012-05-04', '2027-06-30', 'Other Manufacturing', 'IR ARMYN RIZAL HARAHAP', 'Indonesia', '29.910', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(34, '018693093055000', 'FUJI SEIMITSU INDONESIA', 1, 4, 'Kws Ind. JABABEKA, Jl. INDUSTRI UTAMA BLOK RR 10, CIKARANG, BEKASI, JW BRT', 'Kws Ind. JABABEKA, Jl. INDUSTRI UTAMA BLOK RR 10, CIKARANG, BEKASI, JW BRT', 5, '425/KMK.05/2000', '2000-10-16', '116/WBC.08/2017', '2017-07-24', '3000-12-31', 'Automotive & Component', 'SAKAMOTO YUKI', 'WARGA NEGARA ASING', '4.275', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(35, '023848211414000', 'G & B INDONESIA', 1, 4, 'Kws Ind. JABABEKA III BLOK B 2-1, PASIR GOMBONG, CIKARANG UTARA, BEKASI, JW BRT', 'Kws Ind. JABABEKA III BLOK B 2-1, PASIR GOMBONG, CIKARANG UTARA, BEKASI, JW BRT', 5, '694/KM.4/2011', '2011-04-13', '1654/KM.4/2012', '2012-05-21', '3000-12-31', 'Musical Instrument', 'BOK RAE KIM', 'KOREA', '864', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(36, '025198185055000', 'GAYA STEEL', 2, 3, 'JALAN SAMSUNG I BLOK B-10 UKM CENTRE SEGITIGA EMAS, LEMAHABANG, CIKARANG, BEKASI, JAWA BARAT', 'JALAN SAMSUNG I BLOK B-10 UKM CENTRE SEGITIGA EMAS, LEMAHABANG, CIKARANG, BEKASI, JAWA BARAT', 6, '1924/KMK.04/2009', '2009-08-20', '1584/KM.4/2015', '2015-07-24', '2018-07-23', 'Other Manufacturing', 'KANG HEE JONG', 'Korea', '108', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(37, '015047608414000', 'GRAFITECINDO CIPTAPRIMA', 1, 4, 'Kws Ind. JABABEKA, Jl. JABABEKA XVII BLOK V KAV. 92-93, Ds. KARANG BARU, Kec. CIKARANG UTARA, KABUPATEN BEKASI, JW BRT', 'Kws Ind. JABABEKA, Jl. JABABEKA XVII BLOK V KAV. 92-93, Ds. KARANG BARU, Kec. CIKARANG UTARA, KABUPATEN BEKASI, JW BRT', 5, '254/KMK.05/1995', '1995-06-06', '317/KM.4/2015', '2015-05-02', '3000-12-31', 'PAPER & PAPER PRODUCT', 'RUDY GHOZALI', 'INDONESIA', '10.248', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(38, '024144446414000', 'IINO INDONESIA', 2, 3, 'KAWASAN INDUSTRI JABABEKA INNOVATION CENTER, JALAN SAMSUNG 2A BLOK C-2C MEKAR MUKTI, CIKARANG UTARA, JAWA BARAT', 'KAWASAN INDUSTRI JABABEKA INNOVATION CENTER, JALAN SAMSUNG 2A BLOK C-2C MEKAR MUKTI, CIKARANG UTARA, JAWA BARAT', 7, '1482/KM.4/2017 ', '2017-07-03', '1482/KM.4/2017 ', '2017-07-03', '2020-02-28', 'Other Manufactur', 'SEKIGUCHI SUMIO', 'JEPANG', '920', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(39, '018692350055000', 'IK PRECISION INDONESIA', 1, 4, 'KAWASAN. INDUSTRI CIKARANG, Jl. JABABEKA XVII F SFB BLOK U 23 C, D, CIKARANG, BEKASI, JW BRT', 'KAWASAN. INDUSTRI CIKARANG, Jl. JABABEKA XVII F SFB BLOK U 23 C, D, CIKARANG, BEKASI, JW BRT', 5, '319/KMK.05/1999', '1999-06-18', '53/WBC.08/2013', '2013-03-21', '2029-05-31', 'Other Manufacturing', 'KIYOTAKE FUJIMORI', 'JEPANG', '6', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(40, '018825851052000', 'ILSAM GLOBAL INDONESIA', 1, 4, 'Kws Ind. JABABEKA II BLOK RR NO. 3 C PASIRSARI LEMAHABANG BEKASI, JW BRT', 'Kws Ind. JABABEKA II BLOK RR NO. 3 C PASIRSARI LEMAHABANG BEKASI, JW BRT', 5, '452/KMK.04/2005', '2005-09-21', '482/KM.4/2012', '2012-03-08', '3000-12-31', 'Chemical & Chemical Product', 'KIM JONG HOON', 'Korea', '2.420', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(41, '744058462016000', 'INDO SULTAN', 1, 4, 'Jl. Jababeka XVI Blok W 28, Kawasan Industri Jababeka I, Desa Harjamekar, Cikarang Utara', 'Jl. Jababeka XVI Blok W 28, Kawasan Industri Jababeka I, Desa Harjamekar, Cikarang Utara', 7, '1721/KM.4/2017', '2017-07-26', '1721/KM.4/2017', '2017-07-26', '3000-12-31', 'Other Manufactur', 'AHMED SULTAN', 'Pakistan', '15.175', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(42, '025592593414000', 'INNO TECH INDONESIA', 1, 4, 'Kws Ind. JABABEKA I, Jl. JABABEKA III H BLOK C-17F,', 'Kws Ind. JABABEKA I, Jl. JABABEKA III H BLOK C-17F,', 5, '2124/KM.4/2007', '2007-09-06', 'KEP-69/WBC.08/KPP.MP.01/2013', '2013-04-18', '3000-12-31', 'Other manufacturing', 'HA SANG SOO', 'Korea', '864', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(43, '020266748052000', 'IRE TECH', 1, 4, 'Kws Ind. JABABEKA, Jl. INDUSTRI SELATAN 4, BLOK GG NOMOR 3G, Ds. PASIRSARI, Kec. CIKARANG SELATAN, BEKASI, JW BRT', 'Kws Ind. JABABEKA, Jl. INDUSTRI SELATAN 4, BLOK GG NOMOR 3G, Ds. PASIRSARI, Kec. CIKARANG SELATAN, BEKASI, JW BRT', 5, '192/KM.4/2011', '2011-02-01', '117/WBC.08/2017', '2017-07-24', '3000-12-31', 'INDUSTRI KOMPONEN ELEKTRONIC', 'LEE BYUNG KYU', 'Korea', '2', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(44, '020267134052000', 'K & D ELECTRONICS INDONESIA', 1, 4, 'Jl. INDUSTRI SELATAN I, BLOK PP 2 D, Kws Ind. JABABEKA, KELURAHAN PASIRSARI, Kec. CIKARANG SELATAN, KABUPATEN BEKASI, JW BRT 17550', 'Jl. INDUSTRI SELATAN I, BLOK PP 2 D, Kws Ind. JABABEKA, KELURAHAN PASIRSARI, Kec. CIKARANG SELATAN, KABUPATEN BEKASI, JW BRT 17550', 5, '1802/KM.4/2012', '2012-05-23', '1802/KM.4/2012', '2012-05-23', '3000-12-31', 'Other Manufacturing', 'SATOSHI ABE', 'Jepang', '576', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(45, '025198615055000', 'KEO SAN INDONESIA', 1, 4, 'Jl. INDUSTRI SELATAN V BLOEE-5C, SFB, Kws Ind. JABABEKA II, CIKARANG, BEKASI, JW BRT', 'Jl. INDUSTRI SELATAN V BLOEE-5C, SFB, Kws Ind. JABABEKA II, CIKARANG, BEKASI, JW BRT', 5, '1086/KM.4/2008', '2008-05-15', '14/WBC.08/2012', '2012-11-21', '3000-12-31', 'Other Manufacturing', 'NO GOO TACK', 'KOREA', '1.000', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(46, '018695957055000', 'KEUM SU TECH', 1, 4, 'Kws Ind. JABABEKA, Jl. JABABEKA XIA BLOK K 7 D, KELURAHAN HARJA MEKAR, Kec. CIKARANG UTARA, BEKASI, JW BRT', 'Kws Ind. JABABEKA, Jl. JABABEKA XIA BLOK K 7 D, KELURAHAN HARJA MEKAR, Kec. CIKARANG UTARA, BEKASI, JW BRT', 5, '70/KMK.04/2005', '2005-01-17', '2107/KM04/2012', '2012-03-26', '3000-12-31', 'Other Manufacturing', 'SEON HONG KYU', 'Korea Selatan', '854', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(47, '018696591055000', 'KGEO ELECTRONICS INDONESIA', 1, 4, 'Kws Ind. JABABEKA, Jl. INDUSTRI SELATAN BLOK LL 4-5, Ds. PASIR SARI, Kec. CIKARANG UTARA, BEKASI, JW BRT', 'Jl. JABABEKA RAYA BLOK R1 M-N, KWSN INDUSTRI JABABEKA, CIKARANG, BEKASI, JABAR', 7, '1833/KM.4/2012', '2012-05-24', '1833/KM.4/2012', '2012-05-24', '3000-12-31', 'Electrical Equipment', 'JEONG JAEHWAN', 'KOREA', '9.460', 'N', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(48, '211367164414000', 'KOFORM INDONESIA', 1, 4, 'DI Kws Ind. JABABEKA I, Jl. JABABEKA IV E BLOK V NO. 78-I, Kec. CIKARANG SELATAN, KABUPATEN BEKASI, JW BRT', 'DI Kws Ind. JABABEKA I, Jl. JABABEKA IV E BLOK V NO. 78-I, Kec. CIKARANG SELATAN, KABUPATEN BEKASI, JW BRT', 5, '1779/KM.4/2014', '2014-09-17', '1779/KM.4/2014', '2014-09-17', '3000-12-31', 'Plastic Product', 'YOUNG SUK SEO', 'KOREA', '2.520', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(49, '023217235414000', 'KORRYO INDUSTRY', 1, 4, 'Kws Ind. JABABEKA II, Jl. JABABEKA BLOK CC-26, PASIR GOMBONG, CIKARANG UTARA, BEKASI, JW BRT', 'Kws Ind. JABABEKA II, Jl. JABABEKA BLOK CC-26, PASIR GOMBONG, CIKARANG UTARA, BEKASI, JW BRT', 5, '489/KMK.04/2003', '2003-10-30', '1024/KM.4/2012', '2012-04-13', '3000-12-31', 'INDUSTRI KOMPONEN ELEKTRONIC', 'SEO YOUNG SUK', 'Korea', '984', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(50, '018693085055000', 'KOSTEC INDONESIA', 1, 4, 'Jl. JABABEKA XI SFB BLOK K NOMOR 4-D, Kws Ind. JABABEKA I, Ds. HARJA MEKAR, Kec. CIKARANG UTARA, BEKASI, JW BRT', 'Jl. JABABEKA XI SFB BLOK K NOMOR 4-D, Kws Ind. JABABEKA I, Ds. HARJA MEKAR, Kec. CIKARANG UTARA, BEKASI, JW BRT', 5, '287/KMK.05/2000', '2000-07-13', '65/WBC.08/2016', '2016-03-29', '2020-03-28', 'Other Manufacturing', 'JHONG YOUNG KYU', 'KOREA', '1.740', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(51, '010714087055000', 'KWANG SUNG ELECTRONICS', 1, 4, 'Kawasan Industri Jababeka II, Jl. Industri Selatan I Blok OO No. 1E RT 001/ RW 001 Pasirsari, Cikarang Selatan', 'Kawasan Industri Jababeka II, Jl. Industri Selatan I Blok OO No. 1E RT 001/ RW 001 Pasirsari, Cikarang Selatan', 5, '300/KM.4/2017', '2017-02-07', '300/KM.4/2017', '2017-02-07', '2030-01-02', 'Other Manufacturing', 'SONG JAE YOUNG', 'Korea Selatan', '576', 'N', 8, '199203162014111002', '2018-01-24 14:33:42', '199203162014111002', '2018-09-26 09:54:27');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(52, '313191983414000', 'KYOEI DENKI TRADING INDONESIA', 2, 3, 'CIKARANG INDUSTRIAL ESTATE, JALAN JABABEKA II BLOK C NO 18 P, PASIR GOMBONG, LEMAHABANG, BEKASI, JAWA BARAT', 'CIKARANG INDUSTRIAL ESTATE, JALAN JABABEKA II BLOK C NO 18 P, PASIR GOMBONG, LEMAHABANG, BEKASI, JAWA BARAT', 6, '1242/KM.4/2015', '2015-06-11', '2038/KM.4/2017', '2017-08-24', '2018-06-04', 'TRADING', 'CHIHARU MUKAI', 'JAPAN', '1152/462', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(53, '312241987413000', 'LIMANTARA INDAH MAKMUR', 1, 4, 'Jl. FATAHILLAH NO. 8, KM. 50,1, Ds. KALI JAYA RT.003 RW.004, Kec. CIKARANG BARAT, KABUPATEN BEKASI 17520', 'Jl. FATAHILLAH NO. 8, KM. 50,1, Ds. KALI JAYA RT.003 RW.004, Kec. CIKARANG BARAT, KABUPATEN BEKASI 17520', 6, '2652/KM.4/2011', '2011-11-22', '1984/KM.4/2014', '2014-10-02', '2017-11-03', 'Tekstil', 'KIM YONG MAN', 'KOREA', '15.352', 'Y', 9, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(54, '018244871414000', 'MALUGO INDONESIA', 1, 4, 'Kws Ind. JABABEKA II TOB BLOK 00 NO.3B, PASIR GEMBONG, LEMAHABANG, BEKASI, JW BRT', 'Kws Ind. JABABEKA II TOB BLOK 00 NO.3B, PASIR GEMBONG, LEMAHABANG, BEKASI, JW BRT', 5, '206/KMK.05/1998', '1998-04-08', '1206/KM.4/2012', '2012-04-24', '2028-08-31', 'Other Manufacturing', 'SRI SUNARSIH', 'Indonesia', '576', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(55, '018244871414000', 'MALUGO INDONESIA', 2, 3, 'DI DALAM KAWASAN BERIKAT PT MALUGO INDONESIA ( LANTAI 2 ) KAWASAN INDUSTRI JABABEKA II TOB BLOK OO NOMOR 3B, KELURAHAN PASIR GOMBONG, KECAMATAN LEMAHABANG, BEKASI, JAWA BARAT', 'DI DALAM KAWASAN BERIKAT PT MALUGO INDONESIA ( LANTAI 2 ) KAWASAN INDUSTRI JABABEKA II TOB BLOK OO NOMOR 3B, KELURAHAN PASIR GOMBONG, KECAMATAN LEMAHABANG, BEKASI, JAWA BARAT', 6, '1415/KM.4/2003', '2003-08-26', '958/KM.4/2016', '2016-05-24', '2018-04-03', 'Other Manufacturing', 'SRI SUNARSIH', 'Indonesia', '24', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(56, '010695054052000', 'MATTEL INDONESIA', 1, 4, 'Kws Ind. JABABEKA, BLOK SS 1, 2, 3 CIKARANG, BEKASI, JW BRT', 'Kws Ind. JABABEKA, BLOK SS 1, 2, 3 CIKARANG, BEKASI, JW BRT', 5, '70/KMK.05/1997', '1997-02-12', '113/WBC.08/2017', '2017-07-07', '2022-07-31', 'Toys', 'ROY A TANDEAN', 'Indonesia', '88.121', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(57, '010695054052000', 'MATTEL INDONESIA', 1, 4, 'Jl. JABABEKAN V BLOK G 4-6, Kws Ind. JABABEKA, Ds. HARJA MEKAR, Kec. CIKARANG UTARA, KABUPATEN BEKASI, JW BRT', 'KJl. JABABEKAN V BLOK G 4-6, Kws Ind. JABABEKA, Ds. HARJA MEKAR, Kec. CIKARANG UTARA, KABUPATEN BEKASI, JW BRT', 5, '18/KMK.05/1994', '1994-01-14', '220/WBC.08/2016', '2016-11-28', '2022-07-31', 'Toys', 'ROY A TANDEAN', 'Indonesia', '37.539', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(58, '010695054052000', 'MATTEL INDONESIA', 1, 4, 'DI KAWASAN BERIKAT PT MATTEL INDONESIA II, Jl. INDUSTRI UTAMA BLOK SS KAV. 1, 2, 3, Kws Ind. CIKARANG TAHAP II, BEKASI, JW BRT', 'DI KAWASAN BERIKAT PT MATTEL INDONESIA II, Jl. INDUSTRI UTAMA BLOK SS KAV. 1, 2, 3, Kws Ind. CIKARANG TAHAP II, BEKASI, JW BRT', 5, 'S-873/BC/1998', '1998-10-27', '622/KM.4/2015', '2015-03-20', '2022-07-31', 'Other Manufacturing', 'ROY A TANDEAN', 'Indonesia', '1.150', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(59, '010816213414000', 'MEIJI RUBBER INDONESIA', 1, 4, 'CIKARANG INDUSTRIAL ESTATE, Jl. JABABEKA SFB BLOK C NO. 14 H, Ds. PASIR GOMBONG, Kec. LEMAHABANG, BEKASI, JW BRT', 'CIKARANG INDUSTRIAL ESTATE, Jl. JABABEKA SFB BLOK C NO. 14 H, Ds. PASIR GOMBONG, Kec. LEMAHABANG, BEKASI, JW BRT', 5, '638/KM.5/2000', '2000-04-18', '69/WBC.08/2017', '2017-05-05', '2017-12-31', 'RUBBER', 'TOSHIHIRO OKADA', 'JAPAN', '3.288', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(60, '020267514056000', 'MIRAE TECH INDONESIA', 2, 3, 'JALAN JABABEKA III BLOK C 45 A, KAWASAN INDUSTRI JABABEKA, DESA PASIR SARI, CIKARANG UTARA, BEKASI', 'JALAN JABABEKA III BLOK C 45 A, KAWASAN INDUSTRI JABABEKA, DESA PASIR SARI, CIKARANG UTARA, BEKASI', 6, '1887/KM.4/2008', '2008-08-21', '991/KM.4/2015', '2015-05-07', '2018-01-31', 'Plastic Product', 'LEE YOUNG WOOK', 'KOREA', '80', 'N', 8, '199203162014111002', '2018-01-24 14:33:42', '199203162014111002', '2018-09-26 09:54:39');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(61, '010716298055000', 'MITSUYOSHI MANUFACTURING INDONESIA', 1, 4, 'DI Kws Ind. JABABEKA, SFB BLOK V 86 A-B, CIKARANG, BEKASI, JW BRT', 'DI Kws Ind. JABABEKA, SFB BLOK V 86 A-B, CIKARANG, BEKASI, JW BRT', 5, '634/kmk.05/1996', '1996-11-08', 'KEP-190/WBC.08/KPP.MP.01/2013', '2013-12-04', '3000-12-31', 'Other Manufacturing', 'KIMURA MASARU', 'Jepang', '4.703', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(62, '010720100055000', 'MMC METAL FABRICATION', 1, 4, 'CIKARANG INDUSTRIAL ESTATE, Jl. JABABEKA XII BLOK W NO.26, CIKARANG, BEKASI, JW BRT', 'CIKARANG INDUSTRIAL ESTATE, Jl. JABABEKA XII BLOK W NO.26, CIKARANG, BEKASI, JW BRT', 5, '652/KMK.05/1997', '1997-12-29', '1658/KM.4/2012', '1933-08-31', '3000-12-31', 'Machinery & Equipment', 'RIVALDI HARAHAP', 'Indonesia', '15.117', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(63, '018695213055000', 'MTEK INTERNATIONAL INDONESIA', 2, 3, 'JALAN INDUSTRI SELATAN 1A BLOK NN 3C, KAWASAN INDUSTRI JABABEKA II, CIKARANG SELATAN, BEKASI, JAWA BARAT', 'JALAN INDUSTRI SELATAN 1A BLOK NN 3C, KAWASAN INDUSTRI JABABEKA II, CIKARANG SELATAN, BEKASI, JAWA BARAT', 6, '749/KM.4/2016', '2016-04-21', '1811/KM.4/2016', '2016-09-22', '2019-04-21', 'INDUSTRI KOMPONEN ELEKTRONIK', 'LEE KUGJONG', 'KOREA', '1.092', 'N', 8, '199203162014111002', '2018-01-24 14:33:42', '199203162014111002', '2018-09-26 09:53:55');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(64, '013301320054000', 'MULTI STRADA ARAH SARANA', 1, 4, 'KAWASAN PERUNTUKAN INDUSTRI, Jl. RAYA LEMAHABANG KM 58,3 Ds. KARANGSARI, Kec. KEDUNGWARINGIN, KABUPATEN BEKASI, JW BRT', 'KAWASAN PERUNTUKAN INDUSTRI, Jl. RAYA LEMAHABANG KM 58,3 Ds. KARANGSARI, Kec. KEDUNGWARINGIN, KABUPATEN BEKASI, JW BRT', 5, '22/KMK.05/2000', '2000-01-27', '1678/KM.4/2017', '2017-07-20', '2020-11-01', 'Rubber Product', 'PIETER TANURI', 'Indonesia', '542.995', 'Y', 9, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(65, '021159728056000', 'NOBLE CHEM INDONESIA', 2, 3, 'JALAN JABABEKA II, TOB C 16 H, DESA PASIR GOMBONG, KECAMATAN CIKARANG UTARA, BEKASI, JAWA BARAT', 'JALAN JABABEKA II, TOB C 16 H, DESA PASIR GOMBONG, KECAMATAN CIKARANG UTARA, BEKASI, JAWA BARAT', 6, '507/KM.04/2003', '2003-03-24', '1017/KM.4/2017', '2017-05-15', '2018-03-13', 'Other Manufacturing', 'YU HEUNG SIK', 'KOREA', '336 M', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(66, '016110249414000', 'PELANGI CIMANDIRI TEXTILE', 1, 4, 'Jl. JABABEKA VI CIKARANG INDUSTRIAL ESTATE BLOK W NO. 1 & 2, BEKASI, JW BRT', 'Jl. JABABEKA VI CIKARANG IBDUSTRIAL ESTATE BLOK W NO. 1 & 2, BEKASI, JW BRT', 7, '22/KMK.05/1993', '1993-07-17', 'KEP-49/WBC.08/KPP.MP.07/2016', '2016-04-27', '3000-12-31', 'Tekstil', 'ARIEF GUNAWAN', 'Indonesia', '20.969', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(67, '317388270414000', 'PLATECH INDONESIA', 1, 4, 'Jl. JABABEBKA XIV BLOK J NO 11G Ds. HARJAMEKAR Kec. CIKARANG UTARA KABUPATEN BEKASI JW BRT', 'Jl. JABABEBKA XIV BLOK J NO 11G Ds. HARJAMEKAR Kec. CIKARANG UTARA KABUPATEN BEKASI JW BRT', 5, '605/KM.4/2014', '2014-04-08', '605/KM.4/2014', '2014-04-08', '3000-12-31', 'Rubber and Plastic Product', 'KIM DONG SOO', 'Korea', '1.380', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(68, '669024176042000', 'PRAWIRA BINTANG SEMESTA', 2, 3, 'JALAN SAMSUNG 2C BLOK C.3A, KAWASAN INDUSTRI JABABEKA, CIKARANG, BEKASI, JAWA BARAT', 'JALAN ENGGANO RAYA RUKO ENGGANO MEGAH BLOK AA NOMOR 52, JAKARTA UTARA', 6, '2049/KM.4/2016', '2016-10-18', '2049/KM.4/2016', '2016-10-18', '2019-10-14', 'INDUSTRI KOMPONEN ELEKTRONIK', 'YURDHI PRAWIRA NOVIAWAN', 'Indonesia', '600', 'N', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(69, '015285588414001', 'PRINTEC PERKASA', 1, 4, 'Kws Ind. JABABEKA II KAV. SS 4-5, CIKARANG, BEKASI, JW BRT', 'Kws Ind. JABABEKA II KAV. SS 4-5, CIKARANG, BEKASI, JW BRT', 5, '335/KMK.05/1997', '1997-07-21', '35/WBC.08/2017', '2017-03-01', '3000-12-31', 'Paper & Paper Produk, Plastic Product', 'KASIM GHOZALI', 'Indonesia', '33.613', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(70, '018246678057000', 'PT. HANES SUPPLY CHAIN INDONESIA', 1, 4, 'Jl. JABABEKA XII B BLOK W NO. 39, Kws Ind. JABABEKA, HARJA MEKAR, CIKARANG UTARA, BEKASI, JW BRT 17530', 'Jl. JABABEKA XII B BLOK W NO. 39, Kws Ind. JABABEKA, HARJA MEKAR, CIKARANG UTARA, BEKASI, JW BRT 17530', 6, '130/KMK.04/2001', '2001-03-19', '93/WBC.08/2017', '2017-05-31', '2031-05-31', 'MANUFACTURING', 'CARL DAVID TAYLOR', 'NEW ZEALAND', '5,174M', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(71, '018696716055000', 'PYO JOON MOLD INDONESIA', 1, 4, 'Jl. INDUSTRI SELATAN BLOK RR 10A, Kws Ind. JABABEKA II, Ds. PASIE SARI, Kec. CIKARANG SELATAN, BEKASI, JW BRT 17520', 'Jl. INDUSTRI SELATAN BLOK RR 10A, Kws Ind. JABABEKA II, Ds. PASIE SARI, Kec. CIKARANG SELATAN, BEKASI, JW BRT 17520', 5, '1085/KM.04/2010', '2010-06-21', '125/WBC.08/2013', '2013-07-22', '3000-12-31', 'Other Manufacturing', 'LEE HONG KYU', 'KOREA', '4.295', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(72, '024221087414000', 'RATU BERLIAN CHRONICLE', 1, 4, 'Kws Ind. JABABEKA, Jl. JABABEKA IXB BLOK P.7 I-H,KELURAHAN WANGUN HARJA, Kec. CIKARANG UTARA, KABUPATEN BEKASI, JW BRT', 'Kws Ind. JABABEKA, Jl. JABABEKA IXB BLOK P.7 I-H,KELURAHAN WANGUN HARJA, Kec. CIKARANG UTARA, KABUPATEN BEKASI, JW BRT', 5, '1383/KM.4/2012', '2012-05-04', '496/KM.4/2014', '2014-03-24', '3000-12-31', 'INJECTION MOULDING PLASTICK', 'IMNAJAMUDIN BERLIAN', 'INDONESIA', '1.051', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(73, '019577865056000', 'RLC INDONESIA', 2, 3, 'JALAN JABABEKA XVII B BLOK U NO. 20, KAWASAN INDUSTRI JABABEKA, KELURAHAN HARJAMEKAR, KECAMATAN CIKARANG UTARA, BEKASI, JAWA BARAT', 'JALAN JABABEKA XVII B BLOK U NO. 20, KAWASAN INDUSTRI JABABEKA, KELURAHAN HARJAMEKAR, KECAMATAN CIKARANG UTARA, BEKASI, JAWA BARAT', 7, '427/KMK.5/2000', '2000-03-17', '1633/KM.4/2017', '2017-07-18', '2018-04-17', 'GB PENDUKUNG KEGIATAN INDUSTRI', 'KIM JONG WOOK', 'KOREA', '6.162', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(74, '018829333052000', 'SAM PLUS INDOTAMA INDUSTRY', 1, 4, 'Kws Ind. JABABEKA II, Jl. INDUSTRI SELATAN 2 BLOK MM NO. 11, Ds. PASIR SARI, Kec. CIKARANG UTARA, BEKASI, JW BRT 17530', 'Kws Ind. JABABEKA II, Jl. INDUSTRI SELATAN 2 BLOK MM NO. 11, Ds. PASIR SARI, Kec. CIKARANG UTARA, BEKASI, JW BRT 17530', 6, '470/KMK.04/2001', '2001-09-03', '961/KM.4/2013', '2013-05-20', '3000-12-31', 'Rubber and Plastic Product', 'RITCHIE GLEN YAPRANADI', 'Indonesia', '1.380', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(75, '018693705055000', 'SAMOIN (SAMHONGSA MOTOR INDONESIA)', 1, 4, 'Jl. JABABEKA INDUSTRI IV BLOK C1-A,B, Kws Ind. JABABEKA, Ds. PASIR GEMBONG, Kec. LEMAHABANG, BEKASI, JW BRT', 'Jl. JABABEKA INDUSTRI IV BLOK C1-A,B, Kws Ind. JABABEKA, Ds. PASIR GEMBONG, Kec. LEMAHABANG, BEKASI, JW BRT', 5, '237/KMK.04/2001', '2001-04-30', '58/WBC.08/2013', '2013-03-27', '3000-12-31', 'ELECTRONIC COMPONENT', 'LEE SANG YOUNG', 'KOREA SELATAN', '7.082', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(76, '010694677092000', 'SAMSUNG ELECTRONICS INDONESIA', 1, 4, 'KAWASAN INDUSTRI JABABEKA, JL. JABABEKA RAYA BLOK F 29-33, CIKARANG-BEKASI 17530', 'KAWASAN INDUSTRI JABABEKA, JL. JABABEKA RAYA BLOK F 29-33, CIKARANG-BEKASI 17530', 6, '17/KMK.05/1994', '1994-01-14', 'KEP-12/WBC.08/KPP.MP.07/2017', '2017-01-30', '2030-01-02', 'ELECTRONICS MANUFACTURING', 'JI TAE KIM', 'KOREA', '76.149', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', '199203162014111002', '2018-09-13 20:08:35');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(77, '010694677092000', 'SAMSUNG ELECTRONICS INDONESIA (GB ATOZZ)', 2, 3, 'Di Gudang Berikat PT. Atozz Jaya Indonesia, Kawasan Industri Jababeka I, Jl. Jababeka III Blok C34, Pasir Gombong, Cikarang Utara', 'Kawasan Industri Jababeka, Jl. Jababeka Raya Blok F No. 29-33 Cikarang', 6, '1483/KM.4/2017', '2017-07-03', '1483/KM.4/2017', '2017-07-03', '3000-12-31', 'INDUSTRI KOMPONEN ELEKTRONIK', 'KIM JI TAE', 'KOREA', '1.008', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(78, '010694677092000', 'SAMSUNG ELECTRONICS INDONESIA (GB rlc)', 2, 3, 'Di dalam Gudang Berikat PT. RLC Indonesia, Kawasan Industri Jababeka, Jalan Jababeka XVII Blok U No. 20, Cikarang Utara', 'Kawasan Industri Jababeka, Jl. Jababeka Raya Blok F No. 29-33 Cikarang', 6, '2379/KM.4/2015', '2015-11-19', '2379/KM.4/2015', '2015-11-19', '3000-12-31', 'INDUSTRI KOMPONEN ELEKTRONIK', 'KIM YOO YOUNG', 'KOREA', '1.640', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(79, '316701523414000', 'SAMUDRA OCEAN PERKASA INDONESIA', 1, 4, 'Jl. JABABEKA XI BLOK K NO. 4E, Kws Ind. JABABEKA, HARJAMEKAR, CIKARANG UTARA, BEKASI, JW BRT, 17530', 'Jl. JABABEKA XI BLOK K NO. 4E, Kws Ind. JABABEKA, HARJAMEKAR, CIKARANG UTARA, BEKASI, JW BRT, 17530', 5, '2155/KM.4/2013', '2013-10-30', '2155/KM.4/2013', '2013-10-30', '3000-12-31', 'Manufacturing', 'KWON JEOUNG SEUL', 'Korea Selatan', '1.986', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(80, '018827295052000', 'SANGWAN DINASINDO', 1, 4, 'Kws Ind. JABABEKA I, Jl. JABABEKA II E BLOK C-15 M-N, Kec. CIKARANG, BEKASI, JW BRT', 'Kws Ind. JABABEKA I, Jl. JABABEKA II E BLOK C-15 M-N, Kec. CIKARANG, BEKASI, JW BRT', 5, '172/KMK.05/2000', '2000-05-23', '1521/KM.4/2012', '2012-05-11', '3000-12-31', 'ELECTRONICS MANUFACTURING', 'WOO HAN SIK', 'KOREA ', '5', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(81, '018693333055000', 'SEOUL PRECISION METAL', 1, 4, 'Jl. JABABEKA VII B BLOK K2P - K2Q, Kws Ind. JABABEKA, Ds. WANGUNHARJA, Kec. CIKARANG UTARA, BEKASI, JW BRT', 'Jl. JABABEKA VII B BLOK K2P - K2Q, Kws Ind. JABABEKA, Ds. WANGUNHARJA, Kec. CIKARANG UTARA, BEKASI, JW BRT', 5, '502/KMK.05/2000', '2000-11-29', '20/WBC.08/2013', '2013-01-25', '3000-12-31', 'Other Manufacturing', 'PARK YONG SUB', 'KOREA', '2.042', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(82, '010816007431000', 'SHIN HEUNG INDONESIA', 1, 4, 'Kws Ind. JABABEKA III-CIKARANG, Jl. TECHNO RAYA BLOK A 5 A, Ds. PASIR GOMBONG, Kec. CIKARANG UTARA, BEKASI, JW BRT', 'Kws Ind. JABABEKA III-CIKARANG, Jl. TECHNO RAYA BLOK A 5 A, Ds. PASIR GOMBONG, Kec. CIKARANG UTARA, BEKASI, JW BRT', 5, '465/KM.4/2012', '2012-03-05', '465/KM.4/2012', '2012-03-05', '3000-12-31', 'Other Manufactur', 'KIM TAE KWON', 'KOREA', '60.000', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(83, '018826917052000', 'SHINSUNG IND. / OSUNG ELECTRIC & CHEMICAL', 1, 4, 'JALAN PILAR SUKATANI RT 01/03 KAMPUNG SUKAMANTRI, DESA SUKARAYA, KECAMATAN KARANG BAHAGIA, BEKASI, JAWA BARAT', 'JALAN PILAR SUKATANI RT 01/03 KAMPUNG SUKAMANTRI, DESA SUKARAYA, KECAMATAN KARANG BAHAGIA, BEKASI, JAWA BARAT', 6, '174/KMK.05/2000', '2000-05-24', '2089/KM.4/2014', '2014-10-13', '2017-12-31', 'Automotive & Component(Industri Komponen elektronika)', 'KANG DONG KIL', 'KOREA', '6.322', 'Y', 9, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(84, '018693150413000', 'SI TECH INDONESIA', 1, 4, 'Jl. INDUSTRI UTAMA I BLOK RR 5J, Kws Ind. JABABEKA TAHAP II, CIKARANG, BEKASI, JW BRT', 'Jl. INDUSTRI UTAMA I BLOK RR 5J, Kws Ind. JABABEKA TAHAP II, CIKARANG, BEKASI, JW BRT', 5, '350/KMK.05/2000', '2000-08-23', '06/WBC.08/2015', '2015-01-21', '3000-12-31', 'Other Manufacturing', 'JEFFY DEMAC NABABAN', 'Indonesia', '1.914', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(85, '025198433413000', 'SI-HEART', 1, 4, 'Kws Ind. JABABEKA II, Jl. INDUSTRI SELATAN NO. 1 BLOK QQ 9D, Ds. PASIRSARI, Kec. CIKARANG SELATAN, KABUPATEN BEKASI, JW BRT', 'Kws Ind. JABABEKA II, Jl. INDUSTRI SELATAN NO. 1 BLOK QQ 9D, Ds. PASIRSARI, Kec. CIKARANG SELATAN, KABUPATEN BEKASI, JW BRT', 5, '1/KMK.04/2006', '2007-01-03', '115/WBC.08/2016', '2016-07-13', '3000-12-31', 'Automotive & Component', 'MUKSON PRASETYO', 'Indonesia', '576', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(86, '312456676414000', 'SIN JIN TECH INDONESIA', 1, 4, 'Kws Ind. JABABEKA II, Jl. INDUSTRI UTARA I BLOK TT NO. 3, Ds. MEKAR MUKTI, Kec. CIKARANG UTARA, KABUPATEN BEKASI, JW BRT 17550', 'Kws Ind. JABABEKA II, Jl. INDUSTRI UTARA I BLOK TT NO. 3, Ds. MEKAR MUKTI, Kec. CIKARANG UTARA, KABUPATEN BEKASI, JW BRT 17550', 5, '1880/KM.04/2012', '2015-05-24', '900/KM.04/2015', '2015-04-24', '3000-12-31', 'Computer and Electronic', 'JANG IM OK', 'KOREA', '1.247', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(87, '018692194055000', 'SINTERTECH', 1, 4, 'Jl. JABABEKA VI BLOK J 6-M, Kws Ind. CIKARANG, Ds. HARJAMEKAR, Kec. CIBITUNG, BEKASI, JW BRT', 'Jl. JABABEKA VI BLOK J 6-M, Kws Ind. CIKARANG, Ds. HARJAMEKAR, Kec. CIBITUNG, BEKASI, JW BRT', 5, '198/KMK.04/2001', '2001-04-19', '1770/KM.4/2012', '2012-05-23', '2029-02-28', 'Other Manufacturing', 'CHONG CHAI KOK', 'Singapore', '1.740', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(88, '312948276414000', 'SUNGNAM ELECTRONIC INDONESIA', 1, 4, 'Kws Ind. JABABEKA TAHAP III BLOK A 8 C, Ds. PASIR GOMBONG, Kec. CIKARANG UTARA, BEKASI, JW BRT', 'Kws Ind. JABABEKA TAHAP III BLOK A 8 C, Ds. PASIR GOMBONG, Kec. CIKARANG UTARA, BEKASI, JW BRT', 5, '861/KM.4/2012', '2011-04-09', '175/WBC.08/2014', '2014-11-14', '3000-12-31', 'INDUSTRI SEMI KONDUKTOR DAN KOMPONEN ELECTRONIK LAINNYA', 'HWANG KEUN SUNG', 'KOREA', '2.512', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(89, '023564735414000', 'SUPRA SUKSES TRINUSA', 1, 4, 'Kws Ind. JABABEKA, Jl. JABABEKA VI B BLOK J NO. 7 E, Ds. HARJAMEKAR, Kec. CIKARANG UTARA, KABUPATEN BEKASI, JW BRT', 'Kws Ind. JABABEKA, Jl. JABABEKA VI B BLOK J NO. 7 E, Ds. HARJAMEKAR, Kec. CIKARANG UTARA, KABUPATEN BEKASI, JW BRT', 5, '1034/KM.4/2013', '2013-05-31', '1034/KM.4/2013', '2013-05-31', '2030-01-02', 'Other Manufacturing', 'JEFFY D. NABABAN', 'Indonesia', '1.740', 'N', 8, '199203162014111002', '2018-01-24 14:33:42', '199203162014111002', '2018-10-03 08:36:14');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(90, '018693697055000', 'SURYA MULTINDO INDUSTRY', 1, 4, 'Jl. JABABEKA IV BLOK C2-A, B, PASIR GOMBONG, LEMAHABANG, BEKASI', 'Jl. JABABEKA IV BLOK C2-A, B, PASIR GOMBONG, LEMAHABANG, BEKASI', 5, '322/KM.04/2001', '2001-05-21', '1082/KM.04/2012', '2012-04-17', '3000-12-31', 'Other Manufacturing', 'CHOI KYUNG SOO', 'KOREA', '22.380', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(91, '010712099055000', 'SYSTECH INDONESIA', 1, 4, 'Kws Ind. JABABEKA, Jl. JABABEKA 4E BLOK V-78A & 78B, Ds. PASIR GOMBONG, Kec. CIKARANG UTARA, KANUPATEN BEKASI, JW BRT', 'Jl. Ds. NOMOR 1, KAMPUNG CIBEUREUM RT/RW.17/07, Ds. WANTILAN, KEC. CIPENDEUY, SUBANG, JW BRT', 5, '1883/KMK.04/2010', '2010-10-04', '572/KM.4/2012', '2017-03-15', '2023-09-24', 'Computer and Electronic', 'ANG KOK LIAN', 'Malaysia', '3.648', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(92, '010816049414000', 'TAE BONG INDONESIA', 1, 4, 'CIKARANG INDUSTRIAL ESTATE, Jl. JABABEKA IX-A (SFB) BLOK P2C, Ds. WANGUN HARJA, Kec. CIKARANG UTARA, BEKASI, JW BRT', 'CIKARANG INDUSTRIAL ESTATE, Jl. JABABEKA IX-A (SFB) BLOK P2C, Ds. WANGUN HARJA, Kec. CIKARANG UTARA, BEKASI, JW BRT', 5, '264/KMK.04/2003', '2003-12-24', '170/WBC.08/2015', '2015-10-21', '2026-01-31', 'Manufacturing', 'CHANG KYU PARK', 'Korea Selatan', '1.048', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(93, '010718468055000', 'TAI ELECTRONIC INDONESIA', 2, 3, 'Jl. JABABEKA IV BLOK T-1 E F, Kws Ind. CIKARANG LEMAHABANG, BEKASI, JW BRT', 'Jl. JABABEKA IV BLOK T-1 E F, Kws Ind. CIKARANG LEMAHABANG, BEKASI, JW BRT', 6, '1572/KM.4/2004', '2004-08-09', '1554/KM.4/2017', '2017-07-10', '2017-11-25', 'GB Pendukung Kegiatan Industri', 'OAH TEIKHEONG', 'Malaysia', '420', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(94, '010718468055000', 'TAI ELECTRONIC INDONESIA', 1, 4, 'KAWASAN BERIKAT PT TAI ELECTRONIC INDONESIA, JALAN JABABEKA IV BLOK T-1 E F KAWASAN INDUSTRI CIKARANG, LEMAHABANG, BEKASI, JAWA BARAT', 'KAWASAN BERIKAT PT TAI ELECTRONIC INDONESIA, JALAN JABABEKA IV BLOK T-1 E F KAWASAN INDUSTRI CIKARANG, LEMAHABANG, BEKASI, JAWA BARAT', 5, '404/KMK.05/2000', '2000-09-27', 'KEP-119/WBC.08/KPP.MP.07/2016', '2016-11-10', '3000-12-31', 'Other Manufacturing', 'OAH TEIKHEONG', 'Malaysia', '8.205', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(95, '313566150413000', 'TECH MASTER INDONESIA', 1, 4, 'Kws Ind. JABABEKA II, Jl. INDUSTRI SELATAN V BLOK EE-3K, PASIRSARI, CIKARANG SELATAN, BEKASI, JW BRT', 'Kws Ind. JABABEKA II, Jl. INDUSTRI SELATAN V BLOK EE-3K, PASIRSARI, CIKARANG SELATAN, BEKASI, JW BRT', 5, '321/KMK.04/2012', '2012-02-16', '321/KMK.04/2012', '2012-02-16', '3000-12-31', 'Other Manufacturing', 'NOH JOUNG KEE', 'KOREA', '1.403', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(96, '010714392052000', 'TEKPAK INDONESIA', 1, 4, 'Jl. JABABEKA IV C BLOK T2D, CIKARANG INDUSTRIAL ESTATE, Ds. PASIR GOMBONG,Kec. CIKARANG UTARA, BEKASI, JW BRT', 'Jl. JABABEKA IV C BLOK T2D, CIKARANG INDUSTRIAL ESTATE, Ds. PASIR GOMBONG,Kec. CIKARANG UTARA, BEKASI, JW BRT', 5, '1105 / KM.4 / 2012', '2012-04-18', '73/WBC.08/2015', '2015-05-19', '3000-12-31', 'Plastic Product', 'MADE SHINTA WATI DEWI', 'Indonesia', '10.449', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(97, '015934953414000', 'TEKUN ASAS SUMBER MAKMUR', 1, 4, 'Jl. JABABEKA II BLOK C-23, Kws Ind. CIKARANG, LEMAHABANG, BEKASI, JW BRT', 'Jl. JABABEKA II BLOK C-23, Kws Ind. CIKARANG, LEMAHABANG, BEKASI, JW BRT', 5, '1973/KM.4/2003', '2003-06-11', 'KEP-54/WBC.08/KPP.MP.07/2017', '2017-02-06', '3000-12-31', 'OTHER MANUFACTURING', 'MASAHITO MUROYA', 'JEPANG', '3.680', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(98, '010714616052000', 'TOSIN PLASTIK INDONESIA', 1, 4, 'CIKARANG INDUSTRIAL ESTATE JABABEKA BLOK T-2A, BEKASI, JW BRT', 'CIKARANG INDUSTRIAL ESTATE JABABEKA BLOK T-2A, BEKASI, JW BRT', 5, '599/KMK.05/1996', '1996-09-25', '1528/KM.4/2012', '2012-05-11', '2026-10-31', 'Rubber and plastik product', 'KOAY SEE TEONG', 'Malaysia', '2.338', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(99, '023565997414000', 'TOTAN GLOBAL INDONESIA', 1, 4, 'Jl. JABABEKA IIG BLOK C-16T Kws Ind. JABABEKA, Ds. PASIR GOMBONG, Kec. CIKARANG UTARA, BEKASI, JW BRT', 'Jl. JABABEKA IIG BLOK C-16T Kws Ind. JABABEKA, Ds. PASIR GOMBONG, Kec. CIKARANG UTARA, BEKASI, JW BRT', 5, '505/KM.4/2013', '2013-03-22', '505/KM.4/2013', '2013-03-22', '2030-01-02', 'Electrical Equipment', 'TOMMY RIZKY GUNAWAN', 'Indonesia', '1.152', 'N', 8, '199203162014111002', '2018-01-24 14:33:42', '199203162014111002', '2018-09-26 09:55:11');
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(100, '211402235414000', 'TRIPLE CIRCLE TECHNOLOGY INDONESIA', 1, 4, 'Kws Ind. JABABEKA II, Jl. INDUSTRI UTARA I, BLOK TT NO. 6, Ds. MEKARMUKTI, CIKARANG UTARA, BEKASI, JW BRT', 'Kws Ind. JABABEKA II, Jl. INDUSTRI UTARA I, BLOK TT NO. 6, Ds. MEKARMUKTI, CIKARANG UTARA, BEKASI, JW BRT', 5, '604/KM.4/2010', '2010-04-12', '416/KM.4/2013', '2013-03-08', '3000-12-31', 'Electrical Equipment', 'PARK SEONG IN', 'KOREA', '1.247', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(101, '018244244055000', 'VOESTALPINE BOHLER WELDING ASIA PACIFIC', 1, 4, 'DI SFB BLOK JJ NOMOR 7-8, Kws Ind. INDOCARGOMAS PERSADA, Ds. PASIRSARI, Kec. LEMAHABANG, KABUPATEN BEKASI, JW BRT', 'DI SFB BLOK JJ NOMOR 7-8, Kws Ind. INDOCARGOMAS PERSADA, Ds. PASIRSARI, Kec. LEMAHABANG, KABUPATEN BEKASI, JW BRT', 5, '393/KM.4/2007', '2007-02-20', '19/WBC.08/2016', '2016-02-10', '2031-10-06', 'Other Manufacturing', 'BENGT MARTIN LAREN', 'Swedia', '6.290', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(102, '025199175413000', 'WAKO KOGYO INDONESIA', 1, 4, 'Kws Ind. JABABEKA CIKARANG, Jl. INDUSTRI SELATAN 5 BLOK EE-5A, Ds. PASISARI, Kec. CIKARANG SELATAN, BEKASI, JW BRT', 'Kws Ind. JABABEKA CIKARANG, Jl. INDUSTRI SELATAN 5 BLOK EE-5A, Ds. PASISARI, Kec. CIKARANG SELATAN, BEKASI, JW BRT', 5, '136/KM.4/2008', '2008-01-23', '1633/KM.4/2012', '2012-05-16', '3000-12-31', 'Other Manufacturing', 'YUKI SAKAMOTO', 'Japan', '3.124', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(103, '018694521055000', 'WE TECH', 1, 4, 'Kws Ind. JABABEKA BLOK C NOMOR 16 AC, BEKASI, JW BRT', 'Kws Ind. JABABEKA BLOK C NOMOR 16 AC, BEKASI, JW BRT', 5, '94/KMK.04/2002', '2002-03-14', '52/WBC.08/2017', '2017-03-22', '3000-12-31', 'Other Manufacturing', 'LEE JAE HYOUNG', 'KOREA', '864', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(104, '700383912414000', 'WINSHENG PLASTIC AND TOOLING INDUSTRY', 1, 4, 'Kws Ind. JABABEKA PHASE 3, Jl. TEKNO RAYA BLOK B1 KAVLING E, Ds. PASIR GOMBONG, Kec. CIKARANG UTARA, KABUPATEN BEKASI', 'Kws Ind. JABABEKA PHASE 3, Jl. TEKNO RAYA BLOK B1 KAVLING E, Ds. PASIR GOMBONG, Kec. CIKARANG UTARA, KABUPATEN BEKASI', 5, '535/KM.4/2015', '2015-03-10', '535/KM.4/2015', '2015-03-10', '3000-12-31', 'Other Manufacturing', 'TAN CHEN WEI', 'MALAYSIA', '2.158', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(105, '018694927413001', 'YEONHO INDONESIA', 1, 4, 'Jl. INDUSTRI SELATAN 3A SFB BLOK GG-3 C,D,E, Kws Ind. JABABEKA II CIKARANG, BEKASI, JABAR', 'Jl. INDUSTRI SELATAN 3A SFB BLOK GG-3 C,D,E, Kws Ind. JABABEKA II CIKARANG, BEKASI, JABAR', 5, '441/KMK.04/2002', '2002-10-21', 'KEP-35/WBC.08/KPP.MP.07/2017', '2017-03-16', '3000-12-31', 'INDUSTRI KOMPONEN ELEKTRONIK', 'YOUNG CHUL MOON', 'Indonesia', '3.570', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(106, '018694927413000', 'YEONHO INDONESIA', 2, 3, 'KAWASAN INDUSTRI JABABEKA II, JALAN INDUSTRI SELATAN 3A BLOK GG-3C, D, E, DESA LEMAHABANG, KECAMATAN CIKARANG, BEKASI, JAWA BARAT', 'KAWASAN INDUSTRI JABABEKA II, JALAN INDUSTRI SELATAN 3A BLOK GG-3C, D, E, DESA LEMAHABANG, KECAMATAN CIKARANG, BEKASI, JAWA BARAT', 6, '1211/KM.4/2002', '2002-10-21', '869/KM.4/2017', '2017-04-20', '2018-04-16', 'INDUSTRI KOMPONEN ELEKTRONIK', 'YOUNG CHUL MOON', 'Indonesia', '828', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(107, '018694059055000', 'YONG SHIN INDONESIA', 1, 4, 'Kws Ind. JABABEKA, Jl. JABABEKA XVII B  BLOK U 18 A, KELURAHAN KARANG BARU, Kec. CIKARANG UTARA, BEKASI, JW BRT', 'Kws Ind. JABABEKA, Jl. JABABEKA IV BLOK V 78 R, Ds. PASIR GOMBONG, LEMAHABANG, BEKASI, JW BRT', 5, '519/KMK. 4/2001', '2001-09-17', '109/WBC.08/2015', '2015-07-07', '3000-12-31', 'INDUSTRI KOMPONEN ELEKTRONIK', 'CHOI BYUNG DUCK', 'KOREA', '10.363', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(108, '018696211055000', 'YQ TEK INDONESIA', 2, 3, 'KAWASAN INDUSTRI JABABEKA II, JALAN INDUSTRI UTAMA I BLOK RR NOMOR 5 H, DESA PASIRSARI, CIKARANG, BEKASI, JAWA BARAT', 'KAWASAN INDUSTRI JABABEKA II, JALAN INDUSTRI UTAMA I BLOK RR NOMOR 5 H, DESA PASIRSARI, CIKARANG, BEKASI, JAWA BARAT', 6, '2042/KM.4/2004', '2004-10-25', '1117/KM.4/2016', '2016-06-14', '2018-04-20', 'Electrical Equipment', 'BACK YOUNG CHEOL', 'KOREA', '1.380', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(109, '018694042055000', 'YU PRO INDONESIA', 2, 3, 'DI KAWASAN BERIKAT PT YU PRO INDONESIA, JALAN JABABEKA IV BLOK V 78G, KAWASAN INDUSTRI JABABEKA, DESA PASIR GOMBONG, KECAMATAN LEMAHABANG, BEKASI, JAWA BARAT', 'DI KAWASAN BERIKAT PT YU PRO INDONESIA, JALAN JABABEKA IV BLOK V 78G, KAWASAN INDUSTRI JABABEKA, DESA PASIR GOMBONG, KECAMATAN LEMAHABANG, BEKASI, JAWA BARAT', 6, '1799/KMK.04/2001', '2001-11-23', '1500/KM.4/2017', '2017-07-04', '2018-04-14', 'Pendukung Kegiatan Industri Komponen Electronika', 'HEON SHIK KIM', 'KOREA', '1.518', 'Y', 8, '199203162014111002', '2018-01-24 14:33:42', NULL, NULL);
INSERT INTO `tb_perusahaan` (`IdPerusahaan`, `NPWP`, `NmPerusahaan`, `Fasilitas`, `Jenis`, `AlamatPabrik`, `AlamatKantor`, `ProfilResiko`, `NoSkepPendirian`, `TglSkepPendirian`, `NoSkepAkhir`, `TglSkepAkhir`, `TglJatuhTempo`, `KategoriUsaha`, `NamaPenanggungJawab`, `WNPenanggungJawab`, `Luas`, `Status`, `Lokasi`, `PtgsRekam`, `WktRekam`, `PtgsUpdate`, `WktUpdate`) VALUES
	(110, '018244426055000', 'CHIYODA KOGYO INDONESIA', 1, 4, 'KAWASAN INDUSTRI JABABEKA II, JALAN INDUSTRI SELATAN 5 BLOK FF1, DESA PASIRSARI, KECAMATAN CIKARANG SELATAN, KABUPATEN BEKASI, JAWA BARAT', 'KAWASAN INDUSTRI JABABEKA II, JALAN INDUSTRI SELATAN 5 BLOK FF1, DESA PASIRSARI, KECAMATAN CIKARANG SELATAN, KABUPATEN BEKASI, JAWA BARAT', 5, '870/KM.4/2018', '2018-04-09', '870/KM.4/2018', '2018-04-09', '2099-09-09', 'INDUSTRI MESIN DAN PERKAKAS MESIN UNTUK PENGERJAAN LOGAM', 'TETSUYA SETAGAWA', 'JEPANG', '3120', 'Y', 0, '199203162014111002', '2018-09-13 14:40:35', NULL, NULL);
/*!40000 ALTER TABLE `tb_perusahaan` ENABLE KEYS */;

-- membuang struktur untuk table apppeloro.tb_referensi
CREATE TABLE IF NOT EXISTS `tb_referensi` (
  `IdReferensi` int(11) NOT NULL AUTO_INCREMENT,
  `KdReferensi` varchar(50) NOT NULL,
  `NmReferensi` varchar(50) NOT NULL,
  `Detail Referensi` varchar(255) NOT NULL,
  `WktRekam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PtgsRekam` varchar(18) NOT NULL,
  PRIMARY KEY (`IdReferensi`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel apppeloro.tb_referensi: ~9 rows (lebih kurang)
DELETE FROM `tb_referensi`;
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

-- membuang struktur untuk view apppeloro.tb_view_random
-- Membuat tabel sementara untuk menangani kesalahan ketergantungan VIEW
CREATE TABLE `tb_view_random` (
	`IdPerusahaan` INT(11) NOT NULL,
	`NmPerusahaan` VARCHAR(80) NOT NULL COLLATE 'latin1_swedish_ci',
	`Status` ENUM('Y','N') NOT NULL COLLATE 'latin1_swedish_ci',
	`IdCCTV` INT(11) NULL,
	`IpCCTV` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`UserCCTV` VARCHAR(80) NULL COLLATE 'latin1_swedish_ci',
	`PassCCTV` VARCHAR(80) NULL COLLATE 'latin1_swedish_ci',
	`IdIT` INT(11) NULL,
	`IpIT` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`UserIT` VARCHAR(80) NULL COLLATE 'latin1_swedish_ci',
	`PassIT` VARCHAR(80) NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- membuang struktur untuk view apppeloro.tb_cctv_detail
-- Menghapus tabel sementara dan menciptakan struktur VIEW terakhir
DROP TABLE IF EXISTS `tb_cctv_detail`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_cctv_detail` AS SELECT tb_cctv.*, tb_perusahaan.NmPerusahaan, tb_perusahaan.NPWP, tb_perusahaan.AlamatPabrik, tb_perusahaan.NoSkepAkhir, tb_perusahaan.`Status` AS Status_TPB, a.NmReferensi AS Fasilitas, b.NmReferensi AS Jenis, c.NmReferensi AS ProfilResiko FROM tb_cctv
LEFT JOIN tb_perusahaan ON tb_cctv.IdPerusahaan=tb_perusahaan.IdPerusahaan
LEFT JOIN tb_referensi a ON tb_perusahaan.Fasilitas=a.IdReferensi
LEFT JOIN tb_referensi b ON tb_perusahaan.Jenis=b.IdReferensi
LEFT JOIN tb_referensi c ON tb_perusahaan.ProfilResiko=c.IdReferensi ;

-- membuang struktur untuk view apppeloro.tb_cek_cctv_detail
-- Menghapus tabel sementara dan menciptakan struktur VIEW terakhir
DROP TABLE IF EXISTS `tb_cek_cctv_detail`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_cek_cctv_detail` AS SELECT a.Id, a.IdPerusahaan, b.NPWP, b.NmPerusahaan, b.Fasilitas, b.Jenis, b.NoSkepAkhir, b.TglSkepAkhir, 
a.IdCCTV, c.IpAddress AS IpCCTV, c.Username AS UserCCTV, c.Password AS PassCCTV, a.StatusCCTV, 
a.IdInventory, d.IpAddress AS IpIT, d.Username AS UserIT, d.Password AS PassIT, a.StatusInventory, a.TindakLanjut,
a.PtgsRekam, a.WktRekam FROM tb_cek_cctv a
LEFT JOIN tb_perusahaan b ON a.IdPerusahaan = b.IdPerusahaan
LEFT JOIN tb_cctv c ON a.IdCCTV = c.Id
LEFT JOIN tb_it d ON a.IdInventory = d.Id ;

-- membuang struktur untuk view apppeloro.tb_it_detail
-- Menghapus tabel sementara dan menciptakan struktur VIEW terakhir
DROP TABLE IF EXISTS `tb_it_detail`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_it_detail` AS SELECT tb_it.*, tb_perusahaan.NmPerusahaan, tb_perusahaan.NPWP, tb_perusahaan.AlamatPabrik, tb_perusahaan.NoSkepAkhir, tb_perusahaan.`Status` AS Status_TPB, a.NmReferensi AS Fasilitas, b.NmReferensi AS Jenis, c.NmReferensi AS ProfilResiko FROM tb_it
LEFT JOIN tb_perusahaan ON tb_it.IdPerusahaan=tb_perusahaan.IdPerusahaan
LEFT JOIN tb_referensi a ON tb_perusahaan.Fasilitas=a.IdReferensi
LEFT JOIN tb_referensi b ON tb_perusahaan.Jenis=b.IdReferensi
LEFT JOIN tb_referensi c ON tb_perusahaan.ProfilResiko=c.IdReferensi ;

-- membuang struktur untuk view apppeloro.tb_non_cctv
-- Menghapus tabel sementara dan menciptakan struktur VIEW terakhir
DROP TABLE IF EXISTS `tb_non_cctv`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_non_cctv` AS SELECT a.IdPerusahaan, a.NPWP, a.NmPerusahaan, b.NmReferensi AS Fasilitas, c.NmReferensi AS Jenis, a.AlamatPabrik, a.AlamatKantor, 
d.NmReferensi AS ProfilResiko, a.NoSkepPendirian, a.TglSkepPendirian, a.NoSkepAkhir, a.TglSkepAkhir, a.TglJatuhTempo, a.KategoriUsaha,
a.NamaPenanggungJawab, a.WNPenanggungJawab, a.Luas, a.`Status`, a.Lokasi, a.PtgsRekam, a.WktRekam  FROM tb_perusahaan a 
LEFT JOIN tb_referensi b ON a.Fasilitas = b.IdReferensi
LEFT JOIN tb_referensi c ON a.Jenis = c.IdReferensi
LEFT JOIN tb_referensi d ON a.ProfilResiko = d.IdReferensi
WHERE NOT(a.IdPerusahaan IN(SELECT IdPerusahaan FROM tb_cctv)) ORDER BY IdPerusahaan ;

-- membuang struktur untuk view apppeloro.tb_non_it
-- Menghapus tabel sementara dan menciptakan struktur VIEW terakhir
DROP TABLE IF EXISTS `tb_non_it`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_non_it` AS SELECT a.IdPerusahaan, a.NPWP, a.NmPerusahaan, b.NmReferensi AS Fasilitas, c.NmReferensi AS Jenis, a.AlamatPabrik, a.AlamatKantor, 
d.NmReferensi AS ProfilResiko, a.NoSkepPendirian, a.TglSkepPendirian, a.NoSkepAkhir, a.TglSkepAkhir, a.TglJatuhTempo, a.KategoriUsaha,
a.NamaPenanggungJawab, a.WNPenanggungJawab, a.Luas, a.`Status`, a.Lokasi, a.PtgsRekam, a.WktRekam  FROM tb_perusahaan a 
LEFT JOIN tb_referensi b ON a.Fasilitas = b.IdReferensi
LEFT JOIN tb_referensi c ON a.Jenis = c.IdReferensi
LEFT JOIN tb_referensi d ON a.ProfilResiko = d.IdReferensi
WHERE NOT(a.IdPerusahaan IN(SELECT IdPerusahaan FROM tb_it)) ORDER BY IdPerusahaan ;

-- membuang struktur untuk view apppeloro.tb_view_random
-- Menghapus tabel sementara dan menciptakan struktur VIEW terakhir
DROP TABLE IF EXISTS `tb_view_random`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_view_random` AS SELECT a.IdPerusahaan, a.NmPerusahaan, a.`Status`, b.Id AS IdCCTV, b.IpAddress AS IpCCTV, b.Username AS UserCCTV, b.Password AS PassCCTV, c.Id AS IdIT, c.IpAddress AS IpIT, c.Username AS UserIT, c.Password AS PassIT FROM tb_perusahaan a
LEFT JOIN tb_cctv b ON a.IdPerusahaan = b.IdPerusahaan
LEFT JOIN tb_it c ON a.IdPerusahaan = c.IdPerusahaan
WHERE a.`Status` = "Y" AND NOT(a.IdPerusahaan IN(SELECT IdPerusahaan FROM tb_cek_cctv WHERE WEEK(WktRekam)=WEEK(CURDATE()))) ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
