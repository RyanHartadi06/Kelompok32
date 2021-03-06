-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2021 at 01:47 PM
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
(1, 646.6875, 119.22375, 94.358125),
(2, 447.41176470588, 107.59470588235, 80.682941176471),
(3, 303.5, 96.688, 74.072);

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
(45, 'Naga Putih', 385, 98.03, 80.26, 'C', '2021-06-28 13:07:34'),
(66, 'Buah Naga Putih', 400, 100, 90, 'B', '2021-07-23 12:40:09'),
(67, 'Buah Naga Putih', 100, 100, 100, 'C', '2021-07-23 12:41:31'),
(68, 'Buah Naga Putih', 200, 200, 200, 'C', '2021-07-23 13:02:29'),
(69, 'Buah Naga Putih', 100, 100, 100, 'C', '2021-07-23 13:04:54'),
(70, 'Buah Naga Putih', 400, 90, 90, 'B', '2021-07-23 13:14:08'),
(71, 'Buah Naga Putih', 700, 100, 50, 'A', '2021-07-23 13:31:19'),
(72, 'Buah Naga Putih', 800, 100, 80, 'A', '2021-07-23 13:32:32'),
(73, 'Buah Naga Putih', 100, 70, 90, 'C', '2021-07-23 13:41:15');

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

-- --------------------------------------------------------

--
-- Table structure for table `jarak`
--

CREATE TABLE `jarak` (
  `id_jarak` int(11) NOT NULL,
  `id_data_latih` varchar(3) NOT NULL,
  `id_data_uji` varchar(3) NOT NULL,
  `jarak` double NOT NULL,
  `klasifikasi` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jarak`
--

INSERT INTO `jarak` (`id_jarak`, `id_data_latih`, `id_data_uji`, `jarak`, `klasifikasi`) VALUES
(298, '7', '46', 290.4408, 'A'),
(299, '8', '46', 381.7725, 'A'),
(300, '9', '46', 140.1967, 'A'),
(301, '10', '46', 208.5353, 'A'),
(302, '11', '46', 173.0098, 'A'),
(303, '12', '46', 429.4292, 'A'),
(304, '13', '46', 277.1008, 'A'),
(305, '14', '46', 254.6462, 'A'),
(306, '15', '46', 138.0929, 'A'),
(307, '16', '46', 5.8406, 'B'),
(308, '17', '46', 72.0622, 'B'),
(309, '18', '46', 167.2479, 'A'),
(310, '19', '46', 76.7818, 'C'),
(311, '20', '46', 27.3746, 'B'),
(312, '21', '46', 126.2701, 'C'),
(313, '22', '46', 80.1209, 'C'),
(314, '23', '46', 172.2019, 'C'),
(315, '24', '46', 109.0438, 'C'),
(316, '25', '46', 59.0541, 'B'),
(317, '26', '46', 57.7023, 'B'),
(318, '27', '46', 66.7703, 'B'),
(319, '28', '46', 21.1072, 'B'),
(320, '29', '46', 12.8047, 'B'),
(321, '30', '46', 96.5448, 'C'),
(322, '31', '46', 131.4199, 'C'),
(323, '32', '46', 311.2925, 'A'),
(324, '33', '46', 116.1547, 'A'),
(325, '34', '46', 283.8099, 'A'),
(326, '35', '46', 111.479, 'C'),
(327, '36', '46', 74.0314, 'B'),
(328, '37', '46', 194.8739, 'A'),
(329, '38', '46', 64.4371, 'B'),
(330, '39', '46', 72.8495, 'B'),
(331, '40', '46', 62.1114, 'B'),
(332, '41', '46', 61.9055, 'B'),
(333, '42', '46', 35.4766, 'B'),
(334, '43', '46', 504.0717, 'A'),
(335, '44', '46', 61.8527, 'C'),
(336, '45', '46', 17.993, 'C'),
(337, '7', '67', 590.1517, 'A'),
(338, '8', '67', 681.3547, 'A'),
(339, '9', '67', 438.9181, 'A'),
(340, '10', '67', 508.2326, 'A'),
(341, '11', '67', 473.0704, 'A'),
(342, '12', '67', 728.3631, 'A'),
(343, '13', '67', 577.0682, 'A'),
(344, '14', '67', 554.2186, 'A'),
(345, '15', '67', 438.2146, 'A'),
(346, '16', '67', 303.3679, 'B'),
(347, '17', '67', 372.1937, 'B'),
(348, '18', '67', 466.4402, 'A'),
(349, '19', '67', 226.5477, 'C'),
(350, '20', '67', 327.313, 'B'),
(351, '21', '67', 177.1224, 'C'),
(352, '22', '67', 223.798, 'C'),
(353, '23', '67', 137.0456, 'C'),
(354, '24', '67', 195.2745, 'C'),
(355, '25', '67', 358.4988, 'B'),
(356, '26', '67', 357.4652, 'B'),
(357, '27', '67', 365.6108, 'B'),
(358, '28', '67', 319.5758, 'B'),
(359, '29', '67', 293.7253, 'B'),
(360, '30', '67', 206.7455, 'C'),
(361, '31', '67', 172.4476, 'C'),
(362, '32', '67', 610.6683, 'A'),
(363, '33', '67', 414.0373, 'A'),
(364, '34', '67', 581.3696, 'A'),
(365, '35', '67', 192.0462, 'C'),
(366, '36', '67', 371.1216, 'B'),
(367, '37', '67', 492.5335, 'A'),
(368, '38', '67', 362.769, 'B'),
(369, '39', '67', 366.7782, 'B'),
(370, '40', '67', 359.0858, 'B'),
(371, '41', '67', 358.9979, 'B'),
(372, '42', '67', 270.2317, 'B'),
(373, '43', '67', 803.1471, 'A'),
(374, '44', '67', 239.7502, 'C'),
(375, '45', '67', 285.6896, 'C'),
(376, '66', '67', 300.1666, 'B'),
(377, '7', '68', 507.7844, 'A'),
(378, '8', '68', 594.6328, 'A'),
(379, '9', '68', 364.8769, 'A'),
(380, '10', '68', 430.0888, 'A'),
(381, '11', '68', 401.0282, 'A'),
(382, '12', '68', 637.3687, 'A'),
(383, '13', '68', 497.5497, 'A'),
(384, '14', '68', 472.6354, 'A'),
(385, '15', '68', 369.1315, 'A'),
(386, '16', '68', 253.3814, 'B'),
(387, '17', '68', 309.8325, 'B'),
(388, '18', '68', 389.0661, 'A'),
(389, '19', '68', 203.5334, 'C'),
(390, '20', '68', 273.6746, 'B'),
(391, '21', '68', 173.9032, 'C'),
(392, '22', '68', 203.4983, 'C'),
(393, '23', '68', 184.1182, 'C'),
(394, '24', '68', 193.3808, 'C'),
(395, '25', '68', 297.4717, 'B'),
(396, '26', '68', 298.2304, 'B'),
(397, '27', '68', 301.6012, 'B'),
(398, '28', '68', 268.3369, 'B'),
(399, '29', '68', 249.3683, 'B'),
(400, '30', '68', 195.3502, 'C'),
(401, '31', '68', 180.5053, 'C'),
(402, '32', '68', 525.7792, 'A'),
(403, '33', '68', 340.31, 'A'),
(404, '34', '68', 493.1801, 'A'),
(405, '35', '68', 183.515, 'C'),
(406, '36', '68', 304.3998, 'B'),
(407, '37', '68', 409.6819, 'A'),
(408, '38', '68', 299.1911, 'B'),
(409, '39', '68', 297.0661, 'B'),
(410, '40', '68', 295.2095, 'B'),
(411, '41', '68', 294.4172, 'B'),
(412, '42', '68', 227.379, 'B'),
(413, '43', '68', 710.4599, 'A'),
(414, '44', '68', 204.6464, 'C'),
(415, '45', '68', 242.8179, 'C'),
(416, '66', '68', 249.1987, 'B'),
(417, '67', '68', 173.2051, 'C'),
(418, '7', '68', 507.7844, 'A'),
(419, '8', '68', 594.6328, 'A'),
(420, '9', '68', 364.8769, 'A'),
(421, '10', '68', 430.0888, 'A'),
(422, '11', '68', 401.0282, 'A'),
(423, '12', '68', 637.3687, 'A'),
(424, '13', '68', 497.5497, 'A'),
(425, '14', '68', 472.6354, 'A'),
(426, '15', '68', 369.1315, 'A'),
(427, '16', '68', 253.3814, 'B'),
(428, '17', '68', 309.8325, 'B'),
(429, '18', '68', 389.0661, 'A'),
(430, '19', '68', 203.5334, 'C'),
(431, '20', '68', 273.6746, 'B'),
(432, '21', '68', 173.9032, 'C'),
(433, '22', '68', 203.4983, 'C'),
(434, '23', '68', 184.1182, 'C'),
(435, '24', '68', 193.3808, 'C'),
(436, '25', '68', 297.4717, 'B'),
(437, '26', '68', 298.2304, 'B'),
(438, '27', '68', 301.6012, 'B'),
(439, '28', '68', 268.3369, 'B'),
(440, '29', '68', 249.3683, 'B'),
(441, '30', '68', 195.3502, 'C'),
(442, '31', '68', 180.5053, 'C'),
(443, '32', '68', 525.7792, 'A'),
(444, '33', '68', 340.31, 'A'),
(445, '34', '68', 493.1801, 'A'),
(446, '35', '68', 183.515, 'C'),
(447, '36', '68', 304.3998, 'B'),
(448, '37', '68', 409.6819, 'A'),
(449, '38', '68', 299.1911, 'B'),
(450, '39', '68', 297.0661, 'B'),
(451, '40', '68', 295.2095, 'B'),
(452, '41', '68', 294.4172, 'B'),
(453, '42', '68', 227.379, 'B'),
(454, '43', '68', 710.4599, 'A'),
(455, '44', '68', 204.6464, 'C'),
(456, '45', '68', 242.8179, 'C'),
(457, '66', '68', 249.1987, 'B'),
(458, '67', '68', 173.2051, 'C'),
(459, '7', '68', 507.7844, 'A'),
(460, '8', '68', 594.6328, 'A'),
(461, '9', '68', 364.8769, 'A'),
(462, '10', '68', 430.0888, 'A'),
(463, '11', '68', 401.0282, 'A'),
(464, '12', '68', 637.3687, 'A'),
(465, '13', '68', 497.5497, 'A'),
(466, '14', '68', 472.6354, 'A'),
(467, '15', '68', 369.1315, 'A'),
(468, '16', '68', 253.3814, 'B'),
(469, '17', '68', 309.8325, 'B'),
(470, '18', '68', 389.0661, 'A'),
(471, '19', '68', 203.5334, 'C'),
(472, '20', '68', 273.6746, 'B'),
(473, '21', '68', 173.9032, 'C'),
(474, '22', '68', 203.4983, 'C'),
(475, '23', '68', 184.1182, 'C'),
(476, '24', '68', 193.3808, 'C'),
(477, '25', '68', 297.4717, 'B'),
(478, '26', '68', 298.2304, 'B'),
(479, '27', '68', 301.6012, 'B'),
(480, '28', '68', 268.3369, 'B'),
(481, '29', '68', 249.3683, 'B'),
(482, '30', '68', 195.3502, 'C'),
(483, '31', '68', 180.5053, 'C'),
(484, '32', '68', 525.7792, 'A'),
(485, '33', '68', 340.31, 'A'),
(486, '34', '68', 493.1801, 'A'),
(487, '35', '68', 183.515, 'C'),
(488, '36', '68', 304.3998, 'B'),
(489, '37', '68', 409.6819, 'A'),
(490, '38', '68', 299.1911, 'B'),
(491, '39', '68', 297.0661, 'B'),
(492, '40', '68', 295.2095, 'B'),
(493, '41', '68', 294.4172, 'B'),
(494, '42', '68', 227.379, 'B'),
(495, '43', '68', 710.4599, 'A'),
(496, '44', '68', 204.6464, 'C'),
(497, '45', '68', 242.8179, 'C'),
(498, '66', '68', 249.1987, 'B'),
(499, '67', '68', 173.2051, 'C'),
(500, '7', '69', 590.1517, 'A'),
(501, '8', '69', 681.3547, 'A'),
(502, '9', '69', 438.9181, 'A'),
(503, '10', '69', 508.2326, 'A'),
(504, '11', '69', 473.0704, 'A'),
(505, '12', '69', 728.3631, 'A'),
(506, '13', '69', 577.0682, 'A'),
(507, '14', '69', 554.2186, 'A'),
(508, '15', '69', 438.2146, 'A'),
(509, '16', '69', 303.3679, 'B'),
(510, '17', '69', 372.1937, 'B'),
(511, '18', '69', 466.4402, 'A'),
(512, '19', '69', 226.5477, 'C'),
(513, '20', '69', 327.313, 'B'),
(514, '21', '69', 177.1224, 'C'),
(515, '22', '69', 223.798, 'C'),
(516, '23', '69', 137.0456, 'C'),
(517, '24', '69', 195.2745, 'C'),
(518, '25', '69', 358.4988, 'B'),
(519, '26', '69', 357.4652, 'B'),
(520, '27', '69', 365.6108, 'B'),
(521, '28', '69', 319.5758, 'B'),
(522, '29', '69', 293.7253, 'B'),
(523, '30', '69', 206.7455, 'C'),
(524, '31', '69', 172.4476, 'C'),
(525, '32', '69', 610.6683, 'A'),
(526, '33', '69', 414.0373, 'A'),
(527, '34', '69', 581.3696, 'A'),
(528, '35', '69', 192.0462, 'C'),
(529, '36', '69', 371.1216, 'B'),
(530, '37', '69', 492.5335, 'A'),
(531, '38', '69', 362.769, 'B'),
(532, '39', '69', 366.7782, 'B'),
(533, '40', '69', 359.0858, 'B'),
(534, '41', '69', 358.9979, 'B'),
(535, '42', '69', 270.2317, 'B'),
(536, '43', '69', 803.1471, 'A'),
(537, '44', '69', 239.7502, 'C'),
(538, '45', '69', 285.6896, 'C'),
(539, '66', '69', 300.1666, 'B'),
(540, '67', '69', 0, 'C'),
(541, '68', '69', 173.2051, 'C'),
(542, '7', '70', 291.0712, 'A'),
(543, '8', '70', 382.4785, 'A'),
(544, '9', '70', 142.2692, 'A'),
(545, '10', '70', 209.4582, 'A'),
(546, '11', '70', 173.2997, 'A'),
(547, '12', '70', 430.5813, 'A'),
(548, '13', '70', 277.5119, 'A'),
(549, '14', '70', 255.4519, 'A'),
(550, '15', '70', 138.7424, 'A'),
(551, '16', '70', 12.4544, 'B'),
(552, '17', '70', 73.0846, 'B'),
(553, '18', '70', 168.7183, 'A'),
(554, '19', '70', 77.5477, 'C'),
(555, '20', '70', 28.5897, 'B'),
(556, '21', '70', 127.2216, 'C'),
(557, '22', '70', 80.7029, 'C'),
(558, '23', '70', 171.0254, 'C'),
(559, '24', '70', 108.3778, 'C'),
(560, '25', '70', 61.3563, 'B'),
(561, '26', '70', 59.3747, 'B'),
(562, '27', '70', 69.585, 'B'),
(563, '28', '70', 23.6878, 'B'),
(564, '29', '70', 14.952, 'B'),
(565, '30', '70', 96.4464, 'C'),
(566, '31', '70', 131.3536, 'C'),
(567, '32', '70', 312.3508, 'A'),
(568, '33', '70', 118.8634, 'A'),
(569, '34', '70', 285.8094, 'A'),
(570, '35', '70', 112.2593, 'C'),
(571, '36', '70', 77.7075, 'B'),
(572, '37', '70', 197.0894, 'A'),
(573, '38', '70', 67.6014, 'B'),
(574, '39', '70', 77.8077, 'B'),
(575, '40', '70', 66.0456, 'B'),
(576, '41', '70', 65.8733, 'B'),
(577, '42', '70', 39.7189, 'B'),
(578, '43', '70', 505.0094, 'A'),
(579, '44', '70', 63.7194, 'C'),
(580, '45', '70', 19.6048, 'C'),
(581, '66', '70', 10, 'B'),
(582, '67', '70', 300.3331, 'C'),
(583, '68', '70', 253.3772, 'C'),
(584, '69', '70', 300.3331, 'C'),
(585, '7', '71', 51.6046, 'A'),
(586, '8', '71', 97.8479, 'A'),
(587, '9', '71', 167.5683, 'A'),
(588, '10', '71', 103.1182, 'A'),
(589, '11', '71', 133.7146, 'A'),
(590, '12', '71', 143.5125, 'A'),
(591, '13', '71', 49.9366, 'A'),
(592, '14', '71', 69.2117, 'A'),
(593, '15', '71', 166.1928, 'A'),
(594, '16', '71', 299.0687, 'B'),
(595, '17', '71', 231.1972, 'B'),
(596, '18', '71', 142.8057, 'A'),
(597, '19', '71', 375.7417, 'C'),
(598, '20', '71', 275.3394, 'B'),
(599, '21', '71', 425.7127, 'C'),
(600, '22', '71', 378.6219, 'C'),
(601, '23', '71', 470.0441, 'C'),
(602, '24', '71', 407.8286, 'C'),
(603, '25', '71', 244.441, 'B'),
(604, '26', '71', 245.1986, 'B'),
(605, '27', '71', 237.9207, 'B'),
(606, '28', '71', 282.6884, 'B'),
(607, '29', '71', 308.4178, 'B'),
(608, '30', '71', 395.7647, 'C'),
(609, '31', '71', 430.5847, 'C'),
(610, '32', '71', 53.4023, 'A'),
(611, '33', '71', 192.7483, 'A'),
(612, '34', '71', 70.5524, 'A'),
(613, '35', '71', 410.6224, 'C'),
(614, '36', '71', 233.4058, 'B'),
(615, '37', '71', 123.7831, 'A'),
(616, '38', '71', 240.7392, 'B'),
(617, '39', '71', 239.6461, 'B'),
(618, '40', '71', 244.7828, 'B'),
(619, '41', '71', 245.0377, 'B'),
(620, '42', '71', 332.2532, 'B'),
(621, '43', '71', 214.1501, 'A'),
(622, '44', '71', 362.5026, 'C'),
(623, '45', '71', 316.4562, 'C'),
(624, '66', '71', 302.6549, 'B'),
(625, '67', '71', 602.0797, 'C'),
(626, '68', '71', 531.5073, 'C'),
(627, '69', '71', 602.0797, 'C'),
(628, '70', '71', 302.8201, 'B'),
(629, '7', '72', 112.395, 'A'),
(630, '8', '72', 35.4431, 'A'),
(631, '9', '72', 263.1751, 'A'),
(632, '10', '72', 193.0636, 'A'),
(633, '11', '72', 227.3086, 'A'),
(634, '12', '72', 55.7319, 'A'),
(635, '13', '72', 123.9438, 'A'),
(636, '14', '72', 148.0914, 'A'),
(637, '15', '72', 262.1207, 'A'),
(638, '16', '72', 397.0341, 'B'),
(639, '17', '72', 328.1124, 'B'),
(640, '18', '72', 235.3237, 'A'),
(641, '19', '72', 475.0443, 'C'),
(642, '20', '72', 373.0482, 'B'),
(643, '21', '72', 525.0866, 'C'),
(644, '22', '72', 478.0723, 'C'),
(645, '23', '72', 569.6714, 'C'),
(646, '24', '72', 507.1971, 'C'),
(647, '25', '72', 342.1307, 'B'),
(648, '26', '72', 343.0419, 'B'),
(649, '27', '72', 335.3286, 'B'),
(650, '28', '72', 381.0017, 'B'),
(651, '29', '72', 407.0054, 'B'),
(652, '30', '72', 495.0738, 'C'),
(653, '31', '72', 530.0983, 'C'),
(654, '32', '72', 95.3426, 'A'),
(655, '33', '72', 288.3694, 'A'),
(656, '34', '72', 132.3081, 'A'),
(657, '35', '72', 510.0719, 'C'),
(658, '36', '72', 330.8021, 'B'),
(659, '37', '72', 212.9846, 'A'),
(660, '38', '72', 338.3828, 'B'),
(661, '39', '72', 336.5826, 'B'),
(662, '40', '72', 342.5975, 'B'),
(663, '41', '72', 342.6151, 'B'),
(664, '42', '72', 431.1519, 'B'),
(665, '43', '72', 113.7157, 'A'),
(666, '44', '72', 461.0546, 'C'),
(667, '45', '72', 415.0048, 'C'),
(668, '66', '72', 400.125, 'B'),
(669, '67', '72', 700.2857, 'C'),
(670, '68', '72', 620, 'C'),
(671, '69', '72', 700.2857, 'C'),
(672, '70', '72', 400.2499, 'B'),
(673, '71', '72', 104.4031, 'A'),
(674, '7', '73', 591.655, 'A'),
(675, '8', '73', 683.0586, 'A'),
(676, '9', '73', 441.3744, 'A'),
(677, '10', '73', 509.9454, 'A'),
(678, '11', '73', 473.9553, 'A'),
(679, '12', '73', 730.8774, 'A'),
(680, '13', '73', 578.1599, 'A'),
(681, '14', '73', 555.9475, 'A'),
(682, '15', '73', 439.328, 'A'),
(683, '16', '73', 304.6262, 'B'),
(684, '17', '73', 373.4142, 'B'),
(685, '18', '73', 468.6724, 'A'),
(686, '19', '73', 227.706, 'C'),
(687, '20', '73', 328.2581, 'B'),
(688, '21', '73', 179.6322, 'C'),
(689, '22', '73', 224.7224, 'C'),
(690, '23', '73', 132.8236, 'C'),
(691, '24', '73', 194.5666, 'C'),
(692, '25', '73', 360.1652, 'B'),
(693, '26', '73', 358.7714, 'B'),
(694, '27', '73', 367.7087, 'B'),
(695, '28', '73', 320.6124, 'B'),
(696, '29', '73', 294.5212, 'B'),
(697, '30', '73', 207.036, 'C'),
(698, '31', '73', 172.6817, 'C'),
(699, '32', '73', 612.7667, 'A'),
(700, '33', '73', 416.8953, 'A'),
(701, '34', '73', 584.7778, 'A'),
(702, '35', '73', 193.7817, 'C'),
(703, '36', '73', 373.8369, 'B'),
(704, '37', '73', 495.7631, 'A'),
(705, '38', '73', 364.9733, 'B'),
(706, '39', '73', 370.335, 'B'),
(707, '40', '73', 361.6219, 'B'),
(708, '41', '73', 361.5982, 'B'),
(709, '42', '73', 272.4254, 'B'),
(710, '43', '73', 805.4358, 'A'),
(711, '44', '73', 241.9276, 'C'),
(712, '45', '73', 286.5407, 'C'),
(713, '66', '73', 301.4963, 'B'),
(714, '67', '73', 31.6228, 'C'),
(715, '68', '73', 197.4842, 'C'),
(716, '69', '73', 31.6228, 'C'),
(717, '70', '73', 300.6659, 'B'),
(718, '71', '73', 602.0797, 'A'),
(719, '72', '73', 700.7139, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `neighbour`
--

CREATE TABLE `neighbour` (
  `id_neighbour` int(11) NOT NULL,
  `id_data_latih` int(11) NOT NULL,
  `id_data_uji` int(11) NOT NULL,
  `jarak` double NOT NULL,
  `klasifikasi` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `neighbour`
--

INSERT INTO `neighbour` (`id_neighbour`, `id_data_latih`, `id_data_uji`, `jarak`, `klasifikasi`) VALUES
(748, 16, 46, 5.8406, 'B'),
(749, 29, 46, 12.8047, 'B'),
(750, 45, 46, 17.993, 'C'),
(751, 28, 46, 21.1072, 'B'),
(752, 20, 46, 27.3746, 'B'),
(753, 42, 46, 35.4766, 'B'),
(754, 26, 46, 57.7023, 'B'),
(755, 25, 46, 59.0541, 'B'),
(756, 44, 46, 61.8527, 'C'),
(757, 23, 67, 137.0456, 'C'),
(758, 31, 67, 172.4476, 'C'),
(759, 21, 67, 177.1224, 'C'),
(760, 35, 67, 192.0462, 'C'),
(761, 24, 67, 195.2745, 'C'),
(762, 30, 67, 206.7455, 'C'),
(763, 22, 67, 223.798, 'C'),
(764, 19, 67, 226.5477, 'C'),
(765, 44, 67, 239.7502, 'C'),
(766, 67, 68, 173.2051, 'C'),
(767, 67, 68, 173.2051, 'C'),
(768, 67, 68, 173.2051, 'C'),
(769, 21, 68, 173.9032, 'C'),
(770, 21, 68, 173.9032, 'C'),
(771, 21, 68, 173.9032, 'C'),
(772, 31, 68, 180.5053, 'C'),
(773, 31, 68, 180.5053, 'C'),
(774, 31, 68, 180.5053, 'C'),
(775, 67, 69, 0, 'C'),
(776, 23, 69, 137.0456, 'C'),
(777, 31, 69, 172.4476, 'C'),
(778, 68, 69, 173.2051, 'C'),
(779, 21, 69, 177.1224, 'C'),
(780, 35, 69, 192.0462, 'C'),
(781, 24, 69, 195.2745, 'C'),
(782, 30, 69, 206.7455, 'C'),
(783, 22, 69, 223.798, 'C'),
(784, 66, 70, 10, 'B'),
(785, 16, 70, 12.4544, 'B'),
(786, 29, 70, 14.952, 'B'),
(787, 45, 70, 19.6048, 'C'),
(788, 28, 70, 23.6878, 'B'),
(789, 20, 70, 28.5897, 'B'),
(790, 42, 70, 39.7189, 'B'),
(791, 26, 70, 59.3747, 'B'),
(792, 25, 70, 61.3563, 'B'),
(793, 44, 70, 63.7194, 'C'),
(794, 41, 70, 65.8733, 'B'),
(795, 40, 70, 66.0456, 'B'),
(796, 38, 70, 67.6014, 'B'),
(797, 27, 70, 69.585, 'B'),
(798, 17, 70, 73.0846, 'B'),
(799, 13, 71, 49.9366, 'A'),
(800, 7, 71, 51.6046, 'A'),
(801, 32, 71, 53.4023, 'A'),
(802, 14, 71, 69.2117, 'A'),
(803, 34, 71, 70.5524, 'A'),
(804, 8, 71, 97.8479, 'A'),
(805, 10, 71, 103.1182, 'A'),
(806, 37, 71, 123.7831, 'A'),
(807, 11, 71, 133.7146, 'A'),
(808, 18, 71, 142.8057, 'A'),
(809, 12, 71, 143.5125, 'A'),
(810, 15, 71, 166.1928, 'A'),
(811, 9, 71, 167.5683, 'A'),
(812, 33, 71, 192.7483, 'A'),
(813, 43, 71, 214.1501, 'A'),
(814, 8, 72, 35.4431, 'A'),
(815, 12, 72, 55.7319, 'A'),
(816, 32, 72, 95.3426, 'A'),
(817, 71, 72, 104.4031, 'A'),
(818, 7, 72, 112.395, 'A'),
(819, 43, 72, 113.7157, 'A'),
(820, 13, 72, 123.9438, 'A'),
(821, 34, 72, 132.3081, 'A'),
(822, 14, 72, 148.0914, 'A'),
(823, 10, 72, 193.0636, 'A'),
(824, 37, 72, 212.9846, 'A'),
(825, 11, 72, 227.3086, 'A'),
(826, 18, 72, 235.3237, 'A'),
(827, 15, 72, 262.1207, 'A'),
(828, 9, 72, 263.1751, 'A'),
(829, 69, 73, 31.6228, 'C'),
(830, 67, 73, 31.6228, 'C'),
(831, 23, 73, 132.8236, 'C'),
(832, 31, 73, 172.6817, 'C'),
(833, 21, 73, 179.6322, 'C'),
(834, 35, 73, 193.7817, 'C'),
(835, 24, 73, 194.5666, 'C'),
(836, 68, 73, 197.4842, 'C'),
(837, 30, 73, 207.036, 'C'),
(838, 22, 73, 224.7224, 'C'),
(839, 19, 73, 227.706, 'C'),
(840, 44, 73, 241.9276, 'C');

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
-- Indexes for table `jarak`
--
ALTER TABLE `jarak`
  ADD PRIMARY KEY (`id_jarak`);

--
-- Indexes for table `neighbour`
--
ALTER TABLE `neighbour`
  ADD PRIMARY KEY (`id_neighbour`);

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
  MODIFY `id_buah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `data_uji`
--
ALTER TABLE `data_uji`
  MODIFY `id_buah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `jarak`
--
ALTER TABLE `jarak`
  MODIFY `id_jarak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=720;

--
-- AUTO_INCREMENT for table `neighbour`
--
ALTER TABLE `neighbour`
  MODIFY `id_neighbour` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=841;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
