-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2021 at 03:33 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ojek_dana`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(120) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `createdDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `email`, `password`, `alamat`, `createdDate`) VALUES
(4, 'admin', 'admin@admin.com', '202cb962ac59075b964b07152d234b70', 'qweqwe', '2020-09-09 00:12:15');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `kelas` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `kelas`, `created_at`) VALUES
(1, '9 B', '2021-03-30 07:58:33');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(3) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `jenis_kelamin` int(1) NOT NULL,
  `tahun_masuk` varchar(4) NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jarak_tempuh_rumah` int(1) NOT NULL,
  `penghasilan` int(1) NOT NULL,
  `kehadiran` int(1) NOT NULL,
  `c1` float NOT NULL,
  `c2` float NOT NULL,
  `c3` float NOT NULL,
  `nilai_akhir` decimal(4,2) NOT NULL,
  `createdDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama_siswa`, `jenis_kelamin`, `tahun_masuk`, `kelas`, `tanggal_lahir`, `jarak_tempuh_rumah`, `penghasilan`, `kehadiran`, `c1`, `c2`, `c3`, `nilai_akhir`, `createdDate`) VALUES
(23, 'Mahasiswa', 1, '2012', '1', '2020-09-23', 3, 3, 2, 0.75, 3, 0.5, '1.35', '2020-09-09 00:40:19'),
(24, 'mahasiswa 2', 2, '2018', '1', '2000-02-09', 2, 3, 3, 0.5, 3, 0.75, '1.33', '2020-09-09 14:05:24'),
(25, 'Mahasiswa 3', 1, '2018', '1', '1999-09-09', 1, 4, 4, 0.25, 4, 1, '1.60', '2020-09-09 14:06:32'),
(26, 'mahasiswa 4', 1, '2018', '1', '1999-09-07', 4, 4, 4, 1, 4, 1, '1.90', '2020-09-09 14:08:33'),
(27, 'mahasiswa 5', 1, '2018', '1', '1999-11-07', 3, 3, 4, 0.75, 3, 1, '1.50', '2020-09-10 16:08:27'),
(28, 'mahasiswa 6', 1, '2018', '1', '2000-11-11', 1, 2, 3, 0.25, 2, 0.75, '0.93', '2020-09-10 16:08:52'),
(29, 'mahasiswa 7', 1, '2017', '1', '2001-11-13', 2, 3, 2, 0.5, 3, 0.5, '1.25', '2020-09-10 16:09:23'),
(30, 'mahasiswa 8', 2, '2017', '1', '2005-10-03', 2, 2, 3, 0.5, 2, 0.75, '1.03', '2020-09-10 16:09:56'),
(31, 'mahasiswa 9', 2, '2018', '1', '2001-02-18', 3, 4, 2, 0.75, 4, 0.5, '1.65', '2020-09-10 16:11:40'),
(32, 'mahasiswa 10', 1, '2017', '1', '2000-02-01', 2, 1, 1, 0.5, 1, 0.25, '0.58', '2020-09-10 16:12:02'),
(33, 'mahasiswa 11', 1, '2018', '1', '2000-07-07', 4, 1, 3, 1, 1, 0.75, '0.93', '2020-09-10 16:12:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
