-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 15, 2026 at 06:13 AM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_kredit`
--

-- --------------------------------------------------------

--
-- Table structure for table `conditions`
--

DROP TABLE IF EXISTS `conditions`;
CREATE TABLE IF NOT EXISTS `conditions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rule_id` int DEFAULT NULL,
  `variabel` varchar(100) DEFAULT NULL,
  `operator_kondisi` varchar(10) DEFAULT NULL,
  `nilai` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rule_id` (`rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `conditions`
--

INSERT INTO `conditions` (`id`, `rule_id`, `variabel`, `operator_kondisi`, `nilai`) VALUES
(1, 1, 'riwayat', '=', 'Baik'),
(2, 1, 'penghasilan', '>', '10000000'),
(3, 1, 'dti', '<=', '30'),
(4, 1, 'pekerjaan', '=', 'Tetap'),
(5, 2, 'riwayat', '=', 'Baik'),
(6, 2, 'penghasilan', '>=', '5000000'),
(7, 2, 'penghasilan', '<=', '10000000'),
(8, 2, 'dti', '<=', '40'),
(9, 2, 'dokumen', '=', 'Lengkap'),
(10, 3, 'penghasilan', '<', '5000000'),
(11, 3, 'riwayat', '=', 'Baik'),
(12, 3, 'dti', '<=', '30'),
(13, 4, 'riwayat', '=', 'Buruk'),
(14, 5, 'blacklist', '=', 'Ya'),
(15, 6, 'pekerjaan', '=', 'Tidak Bekerja'),
(16, 7, 'dti', '>', '40'),
(17, 8, 'pekerjaan', '=', 'Kontrak'),
(18, 8, 'lama_kerja', '>=', '2'),
(19, 8, 'riwayat', '=', 'Baik'),
(20, 9, 'pekerjaan', '=', 'Wiraswasta'),
(21, 9, 'penghasilan_stabil', '=', 'Ya'),
(22, 9, 'rekening_valid', '=', 'Ya'),
(23, 10, 'dokumen', '=', 'Tidak Lengkap'),
(24, 11, 'penghasilan', '>', '10000000'),
(25, 11, 'cicilan', '>', '5000000'),
(26, 11, 'dti', '>', '40');

-- --------------------------------------------------------

--
-- Table structure for table `rules`
--

DROP TABLE IF EXISTS `rules`;
CREATE TABLE IF NOT EXISTS `rules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_rule` varchar(100) DEFAULT NULL,
  `keputusan` varchar(50) DEFAULT NULL,
  `keterangan` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rules`
--

INSERT INTO `rules` (`id`, `nama_rule`, `keputusan`, `keterangan`) VALUES
(1, 'Rule 1', 'Disetujui', 'Kondisi ideal'),
(2, 'Rule 2', 'Dipertimbangkan', 'Verifikasi tambahan');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
