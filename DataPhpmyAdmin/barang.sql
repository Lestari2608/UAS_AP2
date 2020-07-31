-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2020 at 04:00 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barang`
--

-- --------------------------------------------------------

--
-- Table structure for table `datakaryawan`
--

CREATE TABLE `datakaryawan` (
  `Nama_karyawan` varchar(50) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `Tanggal_lahir` varchar(50) NOT NULL,
  `Pendidikan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datakaryawan`
--

INSERT INTO `datakaryawan` (`Nama_karyawan`, `Alamat`, `Tanggal_lahir`, `Pendidikan`) VALUES
('Dewi Lestari', 'Sanankulon', '26 agustus 1999', 'sarjana'),
('Citra Mirna Wati', 'Sananwetan\nJawa Timur', '22 juli 1999', 'Sarjana'),
('Nina', 'Blitar', '08 April 2000', 'D3');

-- --------------------------------------------------------

--
-- Table structure for table `swalayan`
--

CREATE TABLE `swalayan` (
  `kodebarang` int(10) NOT NULL,
  `namabarang` text NOT NULL,
  `stockawal` int(50) NOT NULL,
  `Satuan` varchar(10) NOT NULL,
  `Stockakhir` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `swalayan`
--

INSERT INTO `swalayan` (`kodebarang`, `namabarang`, `stockawal`, `Satuan`, `Stockakhir`) VALUES
(99987, 'Pasta Gigi Ciptadent 2', 17, 'box', 0),
(66755, 'Biskuit Good Time', 30, 'box', 19),
(7583257, 'biskuit', 8, 'box', 5),
(7583257, 'biskuit', 8, 'box', 5),
(87645, 'Pasta Gigi Pepsodent', 50, 'pcs', 8),
(87646, 'Pasta Gigi Ciptadent', 50, 'pcs', 8),
(87647, 'Detergen Daia', 50, 'pcs', 8),
(87648, 'Detergen Rinso', 50, 'pcs', 8),
(87649, 'Oreo Ice Cream Orange', 50, 'pcs', 8),
(87650, 'Oreo Ice Cream Blueberry', 50, 'pcs', 8),
(87651, 'Oreo Golden Vanilla', 50, 'pcs', 8),
(87652, 'ABC kopi gula susu', 50, 'pcs', 8),
(87653, 'Rokok Tali Jagat Kretek', 50, 'pcs', 8),
(87654, 'Rokok Surya Promild', 50, 'pcs', 8),
(87655, 'Isoplas', 50, 'pcs', 8),
(87656, 'Susu Bear Brand', 40, 'pcs', 4),
(87657, 'Pampers', 5, 'box', 2),
(87658, 'Gula Pasir', 50, 'pcs', 8),
(87659, 'Minyak Goreng Bimoli', 50, 'pcs', 8),
(87660, 'Minyak Goreng fraise well', 50, 'pcs', 8),
(87661, 'Sunlight', 50, 'pcs', 8),
(87662, 'Sabun Mandi Lifeboy', 50, 'pcs', 8),
(87663, 'Shampo Pantene', 50, 'pcs', 8),
(87664, 'Pewangi Molto', 50, 'pcs', 8);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
