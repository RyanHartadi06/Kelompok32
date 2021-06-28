-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jun 2021 pada 13.13
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kelompokbaru`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buah_naga`
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
-- Dumping data untuk tabel `buah_naga`
--

INSERT INTO `buah_naga` (`id_buah`, `nama_buah`, `berat`, `panjang`, `diameter`, `nilai_c1`, `nilai_c2`, `nilai_c3`, `jumlah`, `klasifikasi_awal`, `hasil_klasifikasi`, `createdDate`) VALUES
(1, '12', 500.9, 122, 90, 0, 0, 0, 0, 1, 0, '2021-06-27 11:09:07'),
(2, '12', 500, 100, 70, 0, 0, 0, 0, 2, 0, '2021-06-27 14:30:00'),
(3, '12', 400, 100, 80, 0, 0, 0, 0, 3, 0, '2021-06-27 14:30:45'),
(4, '12', 800, 700, 400, 0, 0, 0, 0, 1, 0, '2021-06-27 11:09:07'),
(5, '12', 500, 200, 70, 0, 0, 0, 0, 2, 0, '2021-06-27 14:30:00'),
(6, '12', 400, 30, 80, 0, 0, 0, 0, 3, 0, '2021-06-27 14:30:45'),
(7, 'Naga Putih', 690, 113, 98, 0, 0, 0, 0, 1, 0, '2021-06-28 12:44:01'),
(8, 'Naga Putih', 781, 121, 100, 0, 0, 0, 0, 1, 0, '2021-06-28 12:45:34'),
(9, 'Naga Putih', 538, 124, 85, 0, 0, 0, 0, 1, 0, '2021-06-28 12:46:08'),
(10, 'Naga Putih', 608, 114, 94, 0, 0, 0, 0, 1, 0, '2021-06-28 12:46:44'),
(11, 'Naga Putih', 573, 100, 91, 0, 0, 0, 0, 1, 0, '2021-06-28 12:47:31'),
(12, 'Naga Putih', 827, 144, 99, 0, 0, 0, 0, 1, 0, '2021-06-28 12:48:33'),
(13, 'Naga Putih', 677, 106, 93, 0, 0, 0, 0, 1, 0, '2021-06-28 12:49:00'),
(14, 'Naga Putih', 654, 115, 99, 0, 0, 0, 0, 1, 0, '2021-06-28 12:49:42'),
(15, 'Naga Putih', 538, 103, 86, 0, 0, 0, 0, 1, 0, '2021-06-28 12:50:08'),
(16, 'Naga Putih', 403, 101, 85, 0, 0, 0, 0, 2, 0, '2021-06-28 12:50:41'),
(17, 'Naga Putih', 472, 102, 88, 0, 0, 0, 0, 2, 0, '2021-06-28 12:51:17'),
(18, 'Naga Putih', 566, 119, 95, 0, 0, 0, 0, 1, 0, '2021-06-28 12:51:50'),
(19, 'Naga Putih', 325, 100, 73, 0, 0, 0, 0, 3, 0, '2021-06-28 12:52:33'),
(20, 'Naga Putih', 427, 98, 85, 0, 0, 0, 0, 2, 0, '2021-06-28 12:53:47'),
(21, 'Naga Putih', 275, 107, 73, 0, 0, 0, 0, 3, 0, '2021-06-28 12:54:12'),
(22, 'Naga Putih', 322, 99, 71, 0, 0, 0, 0, 3, 0, '2021-06-28 12:55:05'),
(23, 'Naga Putih', 231, 74, 68, 0, 0, 0, 0, 3, 0, '2021-06-28 12:55:28'),
(24, 'Naga Putih', 293, 87, 72, 0, 0, 0, 0, 3, 0, '2021-06-28 12:55:52'),
(25, 'Naga Putih', 458, 108, 83, 0, 0, 0, 0, 2, 0, '2021-06-28 12:56:16'),
(26, 'Naga Putih', 457, 104, 82, 0, 0, 0, 0, 2, 0, '2021-06-28 12:57:07'),
(27, 'Naga Putih', 465, 114, 84, 0, 0, 0, 0, 2, 0, '2021-06-28 12:57:30'),
(28, 'Naga Putih', 419, 100, 80, 0, 0, 0, 0, 2, 0, '2021-06-28 12:58:20'),
(29, 'Naga Putih', 393, 97, 79, 0, 0, 0, 0, 2, 0, '2021-06-28 12:58:50'),
(30, 'Naga Putih', 305, 94, 73, 0, 0, 0, 0, 3, 0, '2021-06-28 12:59:39'),
(31, 'Naga Putih', 270, 94, 71, 0, 0, 0, 0, 3, 0, '2021-06-28 13:00:11'),
(32, 'Naga Putih', 710, 128, 94, 0, 0, 0, 0, 1, 0, '2021-06-28 13:00:33'),
(33, 'Naga Putih', 513, 126, 88, 0, 0, 0, 0, 1, 0, '2021-06-28 13:01:08'),
(34, 'Naga Putih', 679, 151, 92, 0, 0, 0, 0, 1, 0, '2021-06-28 13:01:38'),
(35, 'Naga Putih', 290, 103, 72, 0, 0, 0, 0, 3, 0, '2021-06-28 13:02:07'),
(36, 'Naga Putih', 470, 122, 82, 0, 0, 0, 0, 2, 0, '2021-06-28 13:02:36'),
(37, 'Naga Putih', 591, 138, 94, 0, 0, 0, 0, 1, 0, '2021-06-28 13:03:03'),
(38, 'Naga Putih', 462, 115, 82, 0, 0, 0, 0, 2, 0, '2021-06-28 13:03:34'),
(39, 'Naga Putih', 465, 132, 84, 0, 0, 0, 0, 2, 0, '2021-06-28 13:04:30'),
(40, 'Naga Putih', 458, 120, 80, 0, 0, 0, 0, 2, 0, '2021-06-28 13:04:54'),
(41, 'Naga Putih', 458, 120, 82, 0, 0, 0, 0, 2, 0, '2021-06-28 13:05:27'),
(42, 'Naga Putih', 369, 110, 76, 0, 0, 0, 0, 2, 0, '2021-06-28 13:06:16'),
(43, 'Naga Putih', 902, 142, 107, 0, 0, 0, 0, 1, 0, '2021-06-28 13:06:44'),
(44, 'Naga Putih', 339, 106, 82, 0, 0, 0, 0, 3, 0, '2021-06-28 13:07:10'),
(45, 'Naga Putih', 385, 98, 80, 0, 0, 0, 0, 3, 0, '2021-06-28 13:07:34'),
(46, 'Naga Putih', 394, 100, 82, 0, 0, 0, 0, 2, 0, '2021-06-28 13:08:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `centroid`
--

CREATE TABLE `centroid` (
  `id_centroid` int(11) NOT NULL,
  `berat` double NOT NULL,
  `panjang` double NOT NULL,
  `diameter` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `centroid`
--

INSERT INTO `centroid` (`id_centroid`, `berat`, `panjang`, `diameter`) VALUES
(1, 650.45, 411, 245),
(2, 500, 150, 70),
(3, 400, 65, 80);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
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
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_admin`, `nama`, `email`, `password`, `alamat`, `createdDate`) VALUES
(1, 'admin', 'admin@admin.com', '202cb962ac59075b964b07152d234b70', 'Jl.Nias', '2021-06-22 15:42:04');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buah_naga`
--
ALTER TABLE `buah_naga`
  ADD PRIMARY KEY (`id_buah`);

--
-- Indeks untuk tabel `centroid`
--
ALTER TABLE `centroid`
  ADD PRIMARY KEY (`id_centroid`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_admin`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buah_naga`
--
ALTER TABLE `buah_naga`
  MODIFY `id_buah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `centroid`
--
ALTER TABLE `centroid`
  MODIFY `id_centroid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
