-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2020 at 04:02 AM
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
-- Database: `mahasiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `datakaryawan`
--

CREATE TABLE `datakaryawan` (
  `no` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `identitas`
--

CREATE TABLE `identitas` (
  `NIM` int(10) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Alamat` text NOT NULL,
  `jeniskelamin` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identitas`
--

INSERT INTO `identitas` (`NIM`, `Nama`, `Alamat`, `jeniskelamin`) VALUES
(1855201000, 'M. Maulana ikhsan', 'Blitar\nJawa Timur', 'L'),
(1855201009, 'Dewi Lestari', 'Sanankulon \nBlitar\nJawa Timur', 'P'),
(1855201022, 'walidatul isna', 'blitar', 'P'),
(1855201001, 'Asna andi auladi', 'BLITAR', 'L'),
(1855201003, 'M.Sugiarto', 'BLITAR', 'L'),
(1855201004, 'M. Maulana ikhsan', 'BLITAR', 'L'),
(1855201005, 'Citra mirna wati', 'BLITAR', 'P'),
(1855201006, 'Utrodus said al baqi', 'BLITAR', 'L'),
(1855201007, 'M. Yusuf ashari', 'BLITAR', 'L'),
(1855201008, 'M. Lutfi ashari', 'BLITAR', 'L'),
(1855201009, 'Dewi Lestari', 'BLITAR', 'P'),
(1855201010, 'M. Naufal ', 'BLITAR', 'L'),
(1855201011, 'M. Rizal ', 'BLITAR', 'L'),
(1855201012, 'Muh. Fatwa ', 'BLITAR', 'L'),
(1855201013, 'Iqbal fikri al hadi', 'BLITAR', 'L'),
(1855201014, 'Mujawadatul khuluq', 'BLITAR', 'P'),
(1855201015, 'Choirunnufatul chusna', 'BLITAR', 'P'),
(1855201016, 'Endah sriwahyuni', 'BLITAR', 'P'),
(1855201017, 'Faturrahman', 'BLITAR', 'L'),
(1855201018, 'Walidatul isna', 'BLITAR', 'P'),
(1855201019, 'Mhd. Hasbi nazarudin', 'BLITAR', 'L'),
(1855201020, 'A. Zainul muttaqin ', 'BLITAR', 'L');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Username`, `Password`) VALUES
('Dewi Lestari', '1855201009');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
