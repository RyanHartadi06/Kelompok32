-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2021 at 07:20 AM
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
-- Table structure for table `data_latih`
--

CREATE TABLE `data_latih` (
  `id_buah` int(11) NOT NULL,
  `nama_buah` text NOT NULL,
  `berat` double NOT NULL,
  `panjang` double NOT NULL,
  `diameter` double NOT NULL,
  `klasifikasi` enum('A','B','C') NOT NULL,
  `createdDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_latih`
--

INSERT INTO `data_latih` (`id_buah`, `nama_buah`, `berat`, `panjang`, `diameter`, `klasifikasi`, `createdDate`) VALUES
(7, 'Naga Putih', 690, 113.33, 98.84, 'A', '2021-06-28 12:44:01'),
(8, 'Naga Putih', 781, 121.98, 100.3, 'A', '2021-06-28 12:45:34'),
(9, 'Naga Putih', 538, 124.27, 85.3, 'A', '2021-06-28 12:46:08'),
(10, 'Naga Putih', 608, 114.29, 94.33, 'A', '2021-06-28 12:46:44'),
(11, 'Naga Putih', 573, 100.02, 91.84, 'A', '2021-06-28 12:47:31'),
(12, 'Naga Putih', 827, 144.54, 99.83, 'A', '2021-06-28 12:48:33'),
(13, 'Naga Putih', 677, 106.4, 93.86, 'A', '2021-06-28 12:49:00'),
(14, 'Naga Putih', 654, 115.55, 99.32, 'A', '2021-06-28 12:49:42'),
(15, 'Naga Putih', 538, 103.99, 86.88, 'A', '2021-06-28 12:50:08'),
(16, 'Naga Putih', 403, 101.05, 85.1, 'B', '2021-06-28 12:50:41'),
(17, 'Naga Putih', 472, 102.42, 88.24, 'B', '2021-06-28 12:51:17'),
(18, 'Naga Putih', 566, 119.7, 95.27, 'A', '2021-06-28 12:51:50'),
(19, 'Naga Putih', 325, 100.91, 73.58, 'C', '2021-06-28 12:52:33'),
(20, 'Naga Putih', 427, 98.4, 85.78, 'B', '2021-06-28 12:53:47'),
(21, 'Naga Putih', 275, 107.06, 73.59, 'C', '2021-06-28 12:54:12'),
(22, 'Naga Putih', 322, 99.68, 71.69, 'C', '2021-06-28 12:55:05'),
(23, 'Naga Putih', 231, 74.81, 68.6, 'C', '2021-06-28 12:55:28'),
(24, 'Naga Putih', 293, 87.76, 72.92, 'C', '2021-06-28 12:55:52'),
(25, 'Naga Putih', 458, 108.86, 83.3, 'B', '2021-06-28 12:56:16'),
(26, 'Naga Putih', 457, 104.79, 82.41, 'B', '2021-06-28 12:57:07'),
(27, 'Naga Putih', 465, 114.19, 84.35, 'B', '2021-06-28 12:57:30'),
(28, 'Naga Putih', 419, 100.78, 80.84, 'B', '2021-06-28 12:58:20'),
(29, 'Naga Putih', 393, 97.98, 79.47, 'B', '2021-06-28 12:58:50'),
(30, 'Naga Putih', 305, 94.05, 73.86, 'C', '2021-06-28 12:59:39'),
(31, 'Naga Putih', 270, 94.13, 71.65, 'C', '2021-06-28 13:00:11'),
(32, 'Naga Putih', 710, 128, 94.36, 'A', '2021-06-28 13:00:33'),
(33, 'Naga Putih', 513, 126.83, 88.25, 'A', '2021-06-28 13:01:08'),
(34, 'Naga Putih', 679, 151.95, 92.87, 'A', '2021-06-28 13:01:38'),
(35, 'Naga Putih', 290, 103.73, 72.29, 'C', '2021-06-28 13:02:07'),
(36, 'Naga Putih', 470, 122.89, 82.47, 'B', '2021-06-28 13:02:36'),
(37, 'Naga Putih', 591, 138.42, 94.33, 'A', '2021-06-28 13:03:03'),
(38, 'Naga Putih', 462, 115.89, 82.54, 'B', '2021-06-28 13:03:34'),
(39, 'Naga Putih', 465, 132.35, 84.04, 'B', '2021-06-28 13:04:30'),
(40, 'Naga Putih', 458, 120.21, 80.76, 'B', '2021-06-28 13:04:54'),
(41, 'Naga Putih', 458, 120.35, 82.64, 'B', '2021-06-28 13:05:27'),
(42, 'Naga Putih', 369, 110.95, 76.67, 'B', '2021-06-28 13:06:16'),
(43, 'Naga Putih', 902, 142.31, 107.15, 'A', '2021-06-28 13:06:44'),
(44, 'Naga Putih', 339, 106.72, 82.28, 'C', '2021-06-28 13:07:10'),
(45, 'Naga Putih', 385, 98.03, 80.26, 'C', '2021-06-28 13:07:34');

-- --------------------------------------------------------

--
-- Table structure for table `data_uji`
--

CREATE TABLE `data_uji` (
  `id_buah` int(11) NOT NULL,
  `nama_buah` text NOT NULL,
  `berat` double NOT NULL,
  `panjang` double NOT NULL,
  `diameter` double NOT NULL,
  `nilai_c1` double NOT NULL,
  `nilai_c2` double NOT NULL,
  `nilai_c3` double NOT NULL,
  `jarak_terdekat` double NOT NULL,
  `klasifikasi` enum('A','B','C') NOT NULL,
  `createdDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_uji`
--

INSERT INTO `data_uji` (`id_buah`, `nama_buah`, `berat`, `panjang`, `diameter`, `nilai_c1`, `nilai_c2`, `nilai_c3`, `jarak_terdekat`, `klasifikasi`, `createdDate`) VALUES
(7, 'Naga Putih', 690, 113.33, 98.84, 0, 0, 0, 0, 'A', '2021-06-28 12:44:01'),
(8, 'Naga Putih', 781, 121.98, 100.3, 0, 0, 0, 0, 'A', '2021-06-28 12:45:34'),
(9, 'Naga Putih', 538, 124.27, 85.3, 0, 0, 0, 0, 'A', '2021-06-28 12:46:08'),
(10, 'Naga Putih', 608, 114.29, 94.33, 0, 0, 0, 0, 'A', '2021-06-28 12:46:44'),
(11, 'Naga Putih', 573, 100.02, 91.84, 0, 0, 0, 0, 'A', '2021-06-28 12:47:31'),
(12, 'Naga Putih', 827, 144.54, 99.83, 0, 0, 0, 0, 'A', '2021-06-28 12:48:33'),
(13, 'Naga Putih', 677, 106.4, 93.86, 0, 0, 0, 0, 'A', '2021-06-28 12:49:00'),
(14, 'Naga Putih', 654, 115.55, 99.32, 0, 0, 0, 0, 'A', '2021-06-28 12:49:42'),
(15, 'Naga Putih', 538, 103.99, 86.88, 0, 0, 0, 0, 'A', '2021-06-28 12:50:08'),
(16, 'Naga Putih', 403, 101.05, 85.1, 0, 0, 0, 0, 'B', '2021-06-28 12:50:41'),
(17, 'Naga Putih', 472, 102.42, 88.24, 0, 0, 0, 0, 'B', '2021-06-28 12:51:17'),
(18, 'Naga Putih', 566, 119.7, 95.27, 0, 0, 0, 0, 'A', '2021-06-28 12:51:50'),
(19, 'Naga Putih', 325, 100.91, 73.58, 0, 0, 0, 0, 'C', '2021-06-28 12:52:33'),
(20, 'Naga Putih', 427, 98.4, 85.78, 0, 0, 0, 0, 'B', '2021-06-28 12:53:47'),
(21, 'Naga Putih', 275, 107.06, 73.59, 0, 0, 0, 0, 'C', '2021-06-28 12:54:12'),
(22, 'Naga Putih', 322, 99.68, 71.69, 0, 0, 0, 0, 'C', '2021-06-28 12:55:05'),
(23, 'Naga Putih', 231, 74.81, 68.6, 0, 0, 0, 0, 'C', '2021-06-28 12:55:28'),
(24, 'Naga Putih', 293, 87.76, 72.92, 0, 0, 0, 0, 'C', '2021-06-28 12:55:52'),
(25, 'Naga Putih', 458, 108.86, 83.3, 0, 0, 0, 0, 'B', '2021-06-28 12:56:16'),
(26, 'Naga Putih', 457, 104.79, 82.41, 0, 0, 0, 0, 'B', '2021-06-28 12:57:07'),
(27, 'Naga Putih', 465, 114.19, 84.35, 0, 0, 0, 0, 'B', '2021-06-28 12:57:30'),
(28, 'Naga Putih', 419, 100.78, 80.84, 0, 0, 0, 0, 'B', '2021-06-28 12:58:20'),
(29, 'Naga Putih', 393, 97.98, 79.47, 0, 0, 0, 0, 'B', '2021-06-28 12:58:50'),
(30, 'Naga Putih', 305, 94.05, 73.86, 0, 0, 0, 0, 'C', '2021-06-28 12:59:39'),
(31, 'Naga Putih', 270, 94.13, 71.65, 0, 0, 0, 0, 'C', '2021-06-28 13:00:11'),
(32, 'Naga Putih', 710, 128, 94.36, 0, 0, 0, 0, 'A', '2021-06-28 13:00:33'),
(33, 'Naga Putih', 513, 126.83, 88.25, 0, 0, 0, 0, 'A', '2021-06-28 13:01:08'),
(34, 'Naga Putih', 679, 151.95, 92.87, 0, 0, 0, 0, 'A', '2021-06-28 13:01:38'),
(35, 'Naga Putih', 290, 103.73, 72.29, 0, 0, 0, 0, 'C', '2021-06-28 13:02:07'),
(36, 'Naga Putih', 470, 122.89, 82.47, 0, 0, 0, 0, 'B', '2021-06-28 13:02:36'),
(37, 'Naga Putih', 591, 138.42, 94.33, 0, 0, 0, 0, 'A', '2021-06-28 13:03:03'),
(38, 'Naga Putih', 462, 115.89, 82.54, 0, 0, 0, 0, 'B', '2021-06-28 13:03:34'),
(39, 'Naga Putih', 465, 132.35, 84.04, 0, 0, 0, 0, 'B', '2021-06-28 13:04:30'),
(40, 'Naga Putih', 458, 120.21, 80.76, 0, 0, 0, 0, 'B', '2021-06-28 13:04:54'),
(41, 'Naga Putih', 458, 120.35, 82.64, 0, 0, 0, 0, 'B', '2021-06-28 13:05:27'),
(42, 'Naga Putih', 369, 110.95, 76.67, 0, 0, 0, 0, 'B', '2021-06-28 13:06:16'),
(43, 'Naga Putih', 902, 142.31, 107.15, 0, 0, 0, 0, 'A', '2021-06-28 13:06:44'),
(44, 'Naga Putih', 339, 106.72, 82.28, 0, 0, 0, 0, 'C', '2021-06-28 13:07:10'),
(45, 'Naga Putih', 385, 98.03, 80.26, 0, 0, 0, 0, 'C', '2021-06-28 13:07:34');

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
-- Indexes for table `centroid`
--
ALTER TABLE `centroid`
  ADD PRIMARY KEY (`id_centroid`);

--
-- Indexes for table `data_latih`
--
ALTER TABLE `data_latih`
  ADD PRIMARY KEY (`id_buah`);

--
-- Indexes for table `data_uji`
--
ALTER TABLE `data_uji`
  ADD PRIMARY KEY (`id_buah`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_admin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `centroid`
--
ALTER TABLE `centroid`
  MODIFY `id_centroid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `data_latih`
--
ALTER TABLE `data_latih`
  MODIFY `id_buah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `data_uji`
--
ALTER TABLE `data_uji`
  MODIFY `id_buah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
