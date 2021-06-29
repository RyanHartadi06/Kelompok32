-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2021 at 03:15 PM
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
-- Database: `saw`
--

-- --------------------------------------------------------

--
-- Table structure for table `buah_naga`
--

CREATE TABLE `buah_naga` (
  `id_buah` int(11) NOT NULL,
  `nama_buah` text NOT NULL,
  `berat` double NOT NULL,
  `panjang` double NOT NULL,
  `diameter` double NOT NULL,
  `nilai_c1` double NOT NULL,
  `nilai_c2` double NOT NULL,
  `nilai_c3` double NOT NULL,
  `jumlah` double NOT NULL,
  `klasifikasi_awal` int(1) NOT NULL COMMENT '1 = A, 2 = B, 3=C',
  `hasil_klasifikasi` int(1) NOT NULL COMMENT '1 = A, 2 = B, 3 = C',
  `createdDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buah_naga`
--

INSERT INTO `buah_naga` (`id_buah`, `nama_buah`, `berat`, `panjang`, `diameter`, `nilai_c1`, `nilai_c2`, `nilai_c3`, `jumlah`, `klasifikasi_awal`, `hasil_klasifikasi`, `createdDate`) VALUES
(1, '12', 500.9, 122, 90, 0, 0, 0, 0, 1, 0, '2021-06-27 11:09:07'),
(2, '12', 500, 100, 70, 0, 0, 0, 0, 2, 0, '2021-06-27 14:30:00'),
(3, '12', 400, 100, 80, 0, 0, 0, 0, 3, 0, '2021-06-27 14:30:45'),
(4, '12', 800, 700, 400, 0, 0, 0, 0, 1, 0, '2021-06-27 11:09:07'),
(5, '12', 500, 200, 70, 0, 0, 0, 0, 2, 0, '2021-06-27 14:30:00'),
(6, '12', 400, 30, 80, 0, 0, 0, 0, 3, 0, '2021-06-27 14:30:45');

-- --------------------------------------------------------

--
-- Table structure for table `centroid`
--

CREATE TABLE `centroid` (
  `id_centroid` int(11) NOT NULL,
  `berat` double NOT NULL,
  `panjang` double NOT NULL,
  `diameter` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `centroid`
--

INSERT INTO `centroid` (`id_centroid`, `berat`, `panjang`, `diameter`) VALUES
(1, 650.45, 411, 245),
(2, 500, 150, 70),
(3, 400, 65, 80);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_admin` int(11) NOT NULL,
  `nama` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `alamat` text NOT NULL,
  `createdDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_admin`, `nama`, `email`, `password`, `alamat`, `createdDate`) VALUES
(1, 'admin', 'admin@admin.com', '202cb962ac59075b964b07152d234b70', 'Jl.Nias', '2021-06-22 15:42:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buah_naga`
--
ALTER TABLE `buah_naga`
  ADD PRIMARY KEY (`id_buah`);

--
-- Indexes for table `centroid`
--
ALTER TABLE `centroid`
  ADD PRIMARY KEY (`id_centroid`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_admin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buah_naga`
--
ALTER TABLE `buah_naga`
  MODIFY `id_buah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `centroid`
--
ALTER TABLE `centroid`
  MODIFY `id_centroid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
