-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2023 at 09:30 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gams_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(10) UNSIGNED NOT NULL,
  `nik` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` int(11) NOT NULL DEFAULT 0,
  `dept_id` int(11) NOT NULL DEFAULT 0,
  `section_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `nik`, `name`, `division_id`, `dept_id`, `section_id`, `created_at`, `updated_at`) VALUES
(1, 5211, 'Fathur Rahmansyah', 1, 4, 4, '2021-07-30 04:23:26', '2021-07-30 04:23:29'),
(2, 5254, 'Hanifan Musliman', 1, 4, 4, '2021-07-30 04:24:00', '2021-07-30 04:24:02'),
(3, 5258, 'Aldi Abdu Malik', 1, 4, 4, '2021-09-21 02:10:53', '2021-09-21 02:10:54'),
(5, 1020, 'Zaenal Arifin', 1, 1, 1, NULL, NULL),
(6, 1011, 'Lisdyah Windayani', 1, 3, 3, NULL, NULL),
(7, 1017, 'Sunarti', 1, 3, 3, NULL, NULL),
(8, 1498, 'Joko prasetyo', 1, 3, 3, NULL, NULL),
(9, 1595, 'Hartana', 1, 2, 2, NULL, NULL),
(10, 1753, 'Yanti Marlina', 1, 3, 3, NULL, NULL),
(11, 1985, 'Suci Nur Ikhsani', 1, 3, 3, NULL, NULL),
(12, 2302, 'Safitri Puspitadewi', 1, 1, 1, NULL, NULL),
(13, 2746, 'Yati Suryati', 1, 3, 3, NULL, NULL),
(14, 3098, 'Ayu Maharani', 1, 3, 3, NULL, NULL),
(15, 1851, 'Agung Prasetyo', 1, 1, 1, NULL, NULL),
(16, 3042, 'Fajar Wijaya', 1, 3, 3, NULL, NULL),
(17, 3071, 'Wahyu S', 1, 3, 3, NULL, NULL),
(18, 3509, 'Galih Supriadi', 1, 4, 4, NULL, NULL),
(19, 3566, 'Nursaidah Haulasari', 1, 2, 2, NULL, NULL),
(20, 3589, 'Suci Nur W', 1, 1, 1, NULL, NULL),
(21, 1645, 'Wandi Sudrajat', 1, 2, 2, NULL, NULL),
(22, 1424, 'Susanto Dwi Kuncoro', 1, 2, 2, NULL, NULL),
(23, 3359, 'Hendrik', 1, 2, 2, NULL, NULL),
(24, 1133, 'Marudin', 1, 2, 2, NULL, NULL),
(25, 1662, 'Burhan Tamsir', 1, 1, 1, NULL, NULL),
(26, 4416, 'Yohana Briliant Cristiani', 1, 4, 4, NULL, NULL),
(27, 4453, 'Anna Kharisma', 1, 1, 1, NULL, NULL),
(28, 4459, 'Indah Pratiwi', 1, 2, 2, NULL, NULL),
(29, 4978, 'Selvi Yana', 1, 2, 2, NULL, NULL),
(30, 5156, 'Wildan Fathur Rohman', 1, 4, 4, NULL, NULL),
(31, 5155, 'Dewi Nur Aini', 1, 2, 2, NULL, NULL),
(32, 5172, 'Fitria Sari', 1, 4, 4, NULL, NULL),
(33, 5239, 'Riska Yulia Wijayanti', 1, 3, 3, NULL, NULL),
(34, 1807, 'Husni Bahri', 2, 5, 5, NULL, NULL),
(35, 2020, 'Inung Martanto', 2, 6, 6, NULL, NULL),
(36, 2993, 'Ati Febrianti', 2, 6, 6, NULL, NULL),
(37, 2853, 'Muhamad Soleh', 2, 6, 6, NULL, NULL),
(38, 1030, 'Dadang Kurnia', 2, 7, 7, NULL, NULL),
(39, 1031, 'Daroni', 2, 19, 8, NULL, NULL),
(40, 1032, 'Darmansyah', 2, 7, 7, NULL, NULL),
(41, 1033, 'Muryadi', 2, 19, 8, NULL, NULL),
(42, 1736, 'Adang Darmawan', 2, 5, 5, NULL, NULL),
(43, 2085, 'Ardi Mulyana', 2, 5, 5, NULL, NULL),
(44, 2087, 'Okky Wahono', 2, 7, 7, NULL, NULL),
(45, 2454, 'Sawab Wibowo', 2, 7, 7, NULL, NULL),
(46, 2861, 'Sugeng Riyadi', 2, 19, 8, NULL, NULL),
(47, 2951, 'Muhammad Niam', 2, 19, 8, NULL, NULL),
(48, 2696, 'Agus Nugraha', 2, 6, 6, NULL, NULL),
(49, 2771, 'Restu Sulistio Nugroho', 2, 5, 5, NULL, NULL),
(50, 3402, 'Aris Sugianto', 2, 5, 5, NULL, NULL),
(51, 3405, 'Anggara Wisnu Prakoso', 2, 5, 5, NULL, NULL),
(52, 3224, 'M Andi', 2, 5, 5, NULL, NULL),
(53, 3584, 'Bayu Asmara Hadi', 2, 5, 5, NULL, NULL),
(54, 3802, 'Wahyono', 2, 7, 7, NULL, NULL),
(55, 3403, 'Fiki Afyudan G', 2, 6, 6, NULL, NULL),
(56, 1471, 'Sumanto', 2, 6, 6, NULL, NULL),
(57, 2900, 'Nunuk Sugiyanti', 2, 6, 6, NULL, NULL),
(58, 1421, 'Puji Haryanto', 2, 6, 6, NULL, NULL),
(59, 3767, 'Andri Setiawan', 2, 5, 5, NULL, NULL),
(60, 4108, 'Dwi Prasetyo', 2, 19, 8, NULL, NULL),
(61, 4245, 'Rifal Aryaguna', 2, 6, 6, NULL, NULL),
(64, 5257, 'Mochamad Sadan', 2, 5, 5, NULL, NULL),
(65, 1670, 'Adiyanto Tamsir', 3, 9, 10, NULL, NULL),
(66, 1575, 'Tjut Dita Rachman', 3, 9, 11, NULL, NULL),
(67, 2303, 'Diana Puspita', 3, 9, 10, NULL, NULL),
(68, 1024, 'Eben Hazier', 3, 8, 9, NULL, NULL),
(69, 1472, 'Jaenal Rahmat', 3, 8, 9, NULL, NULL),
(70, 5161, 'Naomi Elisabeth B', 3, 9, 10, NULL, NULL),
(71, 5234, 'Shinta Septiawati', 3, 8, 9, NULL, NULL),
(72, 5238, 'Riyo Raharjo', 3, 9, 10, NULL, NULL),
(73, 5243, 'Gina Andriyani', 3, 8, 9, NULL, NULL),
(75, 4471, 'Muhamad Ilham Khaidir', 3, 9, 11, NULL, NULL),
(76, 1084, 'Mohamad Rokhani', 3, 8, 9, NULL, NULL),
(77, 1937, 'Lolla Viana', 7, 20, 29, NULL, NULL),
(78, 1190, 'Jusfen Karmindo', 7, 20, 29, NULL, NULL),
(79, 2426, 'Yudi Perkasa', 7, 20, 29, NULL, NULL),
(80, 2515, 'Lina Wahyuningsih', 7, 20, 29, NULL, NULL),
(81, 3310, 'Tony Hermawan Y.S', 7, 20, 29, NULL, NULL),
(82, 5228, 'Restu Prayuda', 7, 20, 29, NULL, NULL),
(83, 2370, 'Pariama Sinaga', 4, 10, 12, NULL, NULL),
(84, 1870, 'Evan E.R Siahaan', 4, 10, 13, NULL, NULL),
(85, 1147, 'Warsito', 4, 10, 13, NULL, NULL),
(86, 2913, 'Arief Rakhman', 4, 10, 13, NULL, NULL),
(87, 3608, 'Septi Riyani', 4, 10, 13, NULL, NULL),
(88, 3531, 'Rikan Wahyu Kusnanto', 4, 10, 13, NULL, NULL),
(89, 2970, 'Yakub T', 4, 10, 13, NULL, NULL),
(90, 1047, 'Muhamad Nur', 4, 10, 14, NULL, NULL),
(92, 2899, 'Pujianto', 4, 10, 13, NULL, NULL),
(93, 4080, 'Erwin Adrian Sutanto', 4, 11, 15, NULL, NULL),
(94, 5210, 'Yayad Hasbullah', 4, 11, 15, NULL, NULL),
(95, 5256, 'Muhammad Faizal Nuryusuf', 4, 11, 15, NULL, NULL),
(96, 1045, 'Faisal Haris', 4, 11, 16, NULL, NULL),
(97, 1050, 'Lisinsa', 4, 11, 16, NULL, NULL),
(99, 1411, 'Robik Ahmad Rifai', 4, 11, 17, NULL, NULL),
(100, 2403, 'Rusmono', 4, 11, 17, NULL, NULL),
(101, 3090, 'Teguh Sudaryatmo', 4, 11, 17, NULL, NULL),
(102, 1613, 'Yono Abdullah', 4, 12, 19, NULL, NULL),
(103, 1621, 'Iding Rustandi', 4, 12, 19, NULL, NULL),
(104, 2856, 'Madinah', 4, 12, 19, NULL, NULL),
(105, 3028, 'Tofik H', 4, 12, 19, NULL, NULL),
(106, 3567, 'Widayat', 4, 12, 19, NULL, NULL),
(107, 2365, 'Sulistiyono', 4, 12, 19, NULL, NULL),
(108, 1907, 'Herry Aryantho', 4, 12, 19, NULL, NULL),
(109, 1038, 'Sujatman', 4, 12, 18, NULL, NULL),
(110, 3026, 'Dany Hartoyo', 4, 12, 18, NULL, NULL),
(111, 1122, 'Tisna Mulyana', 4, 12, 18, NULL, NULL),
(112, 2532, 'Andiko Saputro', 4, 12, 18, NULL, NULL),
(113, 4970, 'Pujadianto', 4, 12, 18, NULL, NULL),
(114, 5233, 'Eko Hartoyo', 4, 12, 18, NULL, NULL),
(115, 3115, 'Nunu Nugraha', 4, 13, 22, NULL, NULL),
(116, 1410, 'Dwi Santosa', 4, 13, 23, NULL, NULL),
(117, 2756, 'Vincentius Alvin', 4, 13, 23, NULL, NULL),
(118, 1447, 'Ahmad Fauzan', 4, 13, 23, NULL, NULL),
(119, 1652, 'Yunie Priyo Sasongko', 4, 13, 23, NULL, NULL),
(120, 1037, 'Supadi', 4, 14, 24, NULL, NULL),
(121, 1436, 'Momi', 4, 14, 24, NULL, NULL),
(122, 2019, 'Jansen Sembiring', 4, 14, 24, NULL, NULL),
(123, 2440, 'Eko Yunianto', 4, 14, 24, NULL, NULL),
(124, 2538, 'Sutanto', 4, 14, 24, NULL, NULL),
(125, 2539, 'Triono', 4, 14, 24, NULL, NULL),
(126, 2860, 'Wuryanto', 4, 14, 24, NULL, NULL),
(127, 3520, 'Harsono', 4, 14, 24, NULL, NULL),
(128, 3513, 'Chandra Wiguna', 4, 14, 24, NULL, NULL),
(129, 3755, 'Singgih Purwanto', 4, 14, 24, NULL, NULL),
(130, 4237, 'Sukardi', 4, 14, 24, NULL, NULL),
(131, 1643, 'Subagyo', 4, 14, 24, NULL, NULL),
(132, 1389, 'Supandi', 4, 15, 25, NULL, NULL),
(133, 1642, 'Suasmoro', 4, 15, 25, NULL, NULL),
(134, 2685, 'Iis Suhendar', 4, 15, 25, NULL, NULL),
(135, 1016, 'Aris Masruri', 4, 15, 25, NULL, NULL),
(136, 4344, 'Fauzi Alfiansyah', 4, 16, 26, NULL, NULL),
(137, 2042, 'Teguh Prastowo L', 5, 17, 27, NULL, NULL),
(138, 2547, 'Mual Rikson Pasaribu', 5, 17, 27, NULL, NULL),
(139, 2723, 'Riyanti Budi Lestari', 5, 17, 27, NULL, NULL),
(140, 2347, 'Muhrodin', 5, 17, 27, NULL, NULL),
(141, 3607, 'Samuel Dwi Prasetyo', 5, 17, 27, NULL, NULL),
(142, 3864, 'Maryo ramdani', 5, 17, 27, NULL, NULL),
(143, 4673, 'Yudi Supriadi', 5, 17, 27, NULL, NULL),
(144, 5043, 'Silvia Wahyuni', 5, 17, 27, NULL, NULL),
(145, 5261, 'Ferdinanda Utami Putri', 5, 17, 27, NULL, NULL),
(146, 2306, 'Sriyanto', 6, 18, 28, NULL, NULL),
(147, 2543, 'Miauw, Erlina', 6, 18, 28, NULL, NULL),
(148, 3143, 'Erliyanti', 6, 18, 28, NULL, NULL),
(149, 3507, 'Yeyeh Supriatna', 6, 18, 28, NULL, NULL),
(150, 3508, 'Hermanto', 6, 18, 28, NULL, NULL),
(151, 3754, 'Okih Priyatno', 6, 18, 28, NULL, NULL),
(152, 4102, 'Mohamad Zulfikar Zaen Fikri', 6, 18, 28, NULL, NULL),
(153, 4247, 'Aan Syahrofik', 6, 18, 28, NULL, NULL),
(154, 4417, 'Ari Meiwanto', 6, 18, 28, NULL, NULL),
(155, 4509, 'Yan Tandi Raru', 6, 18, 28, NULL, NULL),
(156, 5100, 'Eko Prasetio', 6, 18, 28, NULL, NULL),
(159, 5247, 'Adika Akhmad Zufri', 4, 10, 14, NULL, NULL),
(160, 5294, 'Wildan Adji Nugroho', 1, 4, 4, NULL, NULL),
(161, 300372, 'Lala Sonia', 6, 18, 28, NULL, NULL),
(162, 5322, 'Wildan Adriansyah', 4, 10, 30, NULL, NULL),
(163, 5302, 'Taufiq Insan Khoiri', 4, 10, 13, NULL, NULL),
(164, 5441, 'Dandy Armeido F', 4, 10, 13, NULL, NULL),
(165, 5479, 'M Rizqi Nur Alif', 1, 4, 4, NULL, NULL),
(166, 4485, 'Bambang Rustamadji S.', 4, 13, 22, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gams_master_barang`
--

CREATE TABLE `gams_master_barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `kategori_barang` varchar(50) NOT NULL,
  `unit_barang` varchar(50) NOT NULL,
  `data_status` enum('ACTIVE','NOT ACTIVE') NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gams_master_barang`
--

INSERT INTO `gams_master_barang` (`id_barang`, `nama_barang`, `kategori_barang`, `unit_barang`, `data_status`, `created_at`, `updated_at`) VALUES
(24, 'Acco Plastik', 'ATK', 'PAK (50)', 'ACTIVE', '2023-04-26', NULL),
(25, 'Acco Steinless', 'ATK', 'PAK (50)', 'ACTIVE', '2023-04-26', NULL),
(26, 'Address Telephone Index', 'ATK', 'BUKU', 'ACTIVE', '2023-04-26', NULL),
(27, 'Amplop F4 Polos', 'ATK', 'BOX', 'ACTIVE', '2023-04-27', NULL),
(28, 'Amplop F4 TCH', 'ATK', 'PAK (100)', 'ACTIVE', '2023-04-27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gams_master_barang_log`
--

CREATE TABLE `gams_master_barang_log` (
  `id_log` int(11) NOT NULL,
  `item` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL,
  `status_change` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `note` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gams_master_barang_log`
--

INSERT INTO `gams_master_barang_log` (`id_log`, `item`, `date`, `time`, `status_change`, `user`, `note`) VALUES
(16, 'Spidol', '2023-04-26', '20:46:18', 'KATEGORI | ADD', 'Fathur Rahmansyah', '-'),
(17, 'Ballpoint', '2023-04-26', '20:46:28', 'KATEGORI | ADD', 'Fathur Rahmansyah', '-'),
(18, 'Kertas', '2023-04-26', '20:46:38', 'KATEGORI | ADD', 'Fathur Rahmansyah', '-'),
(19, 'Obat', '2023-04-26', '20:47:24', 'KATEGORI | ADD', 'Fathur Rahmansyah', '-'),
(20, 'PCS', '2023-04-26', '20:47:35', 'UNIT | ADD', 'Fathur Rahmansyah', '-'),
(21, 'lusin', '2023-04-26', '20:47:50', 'UNIT | ADD', 'Fathur Rahmansyah', '-'),
(22, 'Ballpoint Standard Hitam', '2023-04-26', '20:48:43', 'BARANG | ADD', 'Fathur Rahmansyah', NULL),
(23, 'Kertas A4 Putih', '2023-04-26', '20:59:19', 'BARANG | ADD', 'Fathur Rahmansyah', NULL),
(24, 'Sapu', '2023-04-26', '21:32:55', 'BARANG | ADD', 'Fathur Rahmansyah', NULL),
(25, 'Headset', '2023-04-27', '09:06:08', 'BARANG | ADD', 'Fathur Rahmansyah', NULL),
(26, 'Mouse', '2023-04-27', '09:06:39', 'BARANG | ADD', 'Fathur Rahmansyah', NULL),
(27, 'ATK', '2023-04-27', '13:43:07', 'KATEGORI | ADD', 'Fathur Rahmansyah', '-'),
(28, 'Alat Kebersihan', '2023-04-27', '13:48:50', 'KATEGORI | ADD', 'Fathur Rahmansyah', '-'),
(29, 'Tinta Catridge', '2023-04-27', '13:49:27', 'KATEGORI | ADD', 'Fathur Rahmansyah', '-'),
(30, 'Botol', '2023-04-27', '13:55:11', 'UNIT | ADD', 'Fathur Rahmansyah', '-');

-- --------------------------------------------------------

--
-- Table structure for table `gams_master_tipe_barang`
--

CREATE TABLE `gams_master_tipe_barang` (
  `id_tipe` int(11) NOT NULL,
  `tipe_barang` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `data_status` enum('ACTIVE','NOT ACTIVE') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gams_master_tipe_barang`
--

INSERT INTO `gams_master_tipe_barang` (`id_tipe`, `tipe_barang`, `created_at`, `updated_at`, `data_status`) VALUES
(25, 'Obat', '2023-05-20 01:36:37', NULL, 'ACTIVE'),
(26, 'ATK', '2023-05-20 01:36:39', NULL, 'ACTIVE'),
(27, 'Alat Kebersihan', '2023-05-20 01:36:39', NULL, 'ACTIVE'),
(28, 'Tinta ', '2023-05-20 01:36:40', NULL, 'ACTIVE'),
(29, 'Form', '2023-05-20 01:36:41', NULL, 'ACTIVE'),
(30, 'Pita', '2023-05-20 01:36:36', NULL, 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `gams_master_unit_barang`
--

CREATE TABLE `gams_master_unit_barang` (
  `id` int(11) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `data_status` enum('ACTIVE','NOT ACTIVE') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gams_master_unit_barang`
--

INSERT INTO `gams_master_unit_barang` (`id`, `unit`, `jumlah`, `created_at`, `updated_at`, `data_status`) VALUES
(8, 'BH', 1, '2023-05-20 01:21:15', NULL, 'ACTIVE'),
(9, 'BOTOL', 1, '2023-05-20 01:21:33', NULL, 'ACTIVE'),
(10, 'BOX', 100, '2023-05-20 01:21:55', NULL, 'ACTIVE'),
(11, 'BUKU', 1, '2023-05-20 01:22:19', NULL, 'ACTIVE'),
(12, 'LUSIN', 12, '2023-05-20 01:22:50', NULL, 'ACTIVE'),
(13, 'PAK (50)', 50, '2023-05-20 01:23:40', NULL, 'ACTIVE'),
(14, 'PAK (100)', 100, '2023-05-20 01:23:52', NULL, 'ACTIVE'),
(15, 'PAK (1)', 1, '2023-05-20 01:24:26', NULL, 'ACTIVE'),
(16, 'PCS', 1, '2023-05-20 01:25:11', NULL, 'ACTIVE'),
(17, 'POT', 1, '2023-05-20 01:25:48', NULL, 'ACTIVE'),
(18, 'RIM', 1, '2023-05-20 01:25:58', NULL, 'ACTIVE'),
(19, 'ROLL', 1, '2023-05-20 01:26:19', NULL, 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `gams_permintaan_barang`
--

CREATE TABLE `gams_permintaan_barang` (
  `id_perm_barang` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `bagian` varchar(50) NOT NULL,
  `no_permintaan` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `jumlah` varchar(11) NOT NULL,
  `posted_date` date DEFAULT NULL,
  `apv_spv` varchar(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gams_permintaan_barang`
--

INSERT INTO `gams_permintaan_barang` (`id_perm_barang`, `nama`, `bagian`, `no_permintaan`, `tanggal`, `keterangan`, `nama_barang`, `jumlah`, `posted_date`, `apv_spv`, `created_at`, `updated_at`) VALUES
(5, 'Fathur Rahmansyah', 'IT', '202305002', '2023-05-06', 'Untuk kebutuhan dept', 'Kertas A4 Putih', '1', NULL, '1', '2023-05-07 07:19:12', '2023-05-06 13:22:35'),
(6, 'Fathur Rahmansyah', 'IT', '202305002', '2023-05-06', 'Untuk kebutuhan dept', 'Sapu', '1', NULL, '1', '2023-05-07 07:19:10', '2023-05-06 13:22:35'),
(7, 'Fathur Rahmansyah', 'IT', '202305003', '2023-05-06', 'Untuk kebutuhan dept', 'Kertas A4 Putih', '1', NULL, '0', '2023-05-07 06:34:21', '2023-05-06 13:37:11'),
(8, 'Fathur Rahmansyah', 'IT', '202305004', '2023-05-06', 'Untuk kebutuhan dept', 'Headset', '1', NULL, '2', '2023-05-07 06:34:22', '2023-05-06 13:39:24'),
(9, 'Fathur Rahmansyah', 'IT', '202305005', '2023-05-06', 'Untuk kebutuhan dept', 'Headset', '1', NULL, '2', '2023-05-07 06:34:22', '2023-05-06 13:39:41'),
(10, 'Fathur Rahmansyah', 'IT', '202305006', '2023-05-07', 'Untuk kebutuhan dept', 'Mouse', '1', '2023-05-17', '0', '2023-05-17 15:21:18', '2023-05-07 07:25:51'),
(11, 'Fathur Rahmansyah', 'IT', '202305006', '2023-05-07', 'Untuk kebutuhan dept', 'Mouse', '3', NULL, '0', '2023-05-07 07:26:34', '2023-05-07 07:25:51'),
(12, 'Fathur Rahmansyah', 'IT', '202305007', '2023-05-07', '', 'Mouse', '1', NULL, '0', '2023-05-07 07:27:49', '2023-05-07 07:27:49'),
(13, 'Fathur Rahmansyah', 'IT', '202305007', '2023-05-07', '', 'Headset', '2', NULL, '0', '2023-05-07 07:27:49', '2023-05-07 07:27:49'),
(14, 'Fathur Rahmansyah', 'IT', '202305008', '2023-05-07', 'Untuk kebutuhan welding', 'Sapu', '1', NULL, '0', '2023-05-07 07:28:48', '2023-05-07 07:28:48'),
(15, 'Fathur Rahmansyah', 'IT', '202305008', '2023-05-07', 'Untuk kebutuhan welding', 'Kertas A4 Putih', '6', NULL, '0', '2023-05-07 07:28:48', '2023-05-07 07:28:48'),
(16, 'Fathur Rahmansyah', 'IT', '202305009', '2023-05-13', 'Untuk kebutuhan departemen', 'Sapu', '1', NULL, '0', '2023-05-13 02:41:55', '2023-05-13 02:41:55');

-- --------------------------------------------------------

--
-- Table structure for table `gams_stok_barang`
--

CREATE TABLE `gams_stok_barang` (
  `id_stok` int(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `kategori_barang` varchar(50) NOT NULL,
  `stok_barang` int(11) NOT NULL,
  `unit_barang` varchar(50) NOT NULL,
  `jml_per_unit` int(11) NOT NULL DEFAULT 0,
  `stok_pcs` int(11) NOT NULL,
  `data_status` enum('ACTIVE','NOT ACTIVE') NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gams_stok_barang`
--

INSERT INTO `gams_stok_barang` (`id_stok`, `nama_barang`, `kategori_barang`, `stok_barang`, `unit_barang`, `jml_per_unit`, `stok_pcs`, `data_status`, `created_by`, `created_at`, `updated_at`) VALUES
(4, 'Acco Plastic', 'ATK', 3, 'PAK', 50, 150, 'ACTIVE', '', '2023-04-26', NULL),
(5, 'Acco Steinless', 'ATK', 4, 'LUSIN', 12, 48, 'ACTIVE', '', '2023-04-26', NULL),
(6, 'Address Telephone Index', 'ATK', 6, 'LUSIN', 12, 0, 'ACTIVE', '', '2023-04-27', NULL),
(7, 'Amplop F4 Polos', 'ATK', 5, 'LUSIN', 12, 36, 'ACTIVE', '', '2023-04-27', NULL),
(8, 'Amplop F4 TCH', 'ATK', 34, '', 0, 0, 'ACTIVE', '', '0000-00-00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gams_stok_keluar`
--

CREATE TABLE `gams_stok_keluar` (
  `id_stok_out` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `no_trans` varchar(50) NOT NULL,
  `nik` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `bagian` varchar(15) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gams_stok_masuk`
--

CREATE TABLE `gams_stok_masuk` (
  `id_stok_in` int(11) NOT NULL,
  `no_transaksi` varchar(50) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `keterangan` varchar(50) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `tipe` varchar(50) DEFAULT NULL,
  `unit` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` varchar(50) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gams_stok_masuk`
--

INSERT INTO `gams_stok_masuk` (`id_stok_in`, `no_transaksi`, `tanggal`, `keterangan`, `nama_barang`, `tipe`, `unit`, `jumlah`, `created_at`, `created_by`, `updated_at`) VALUES
(17, '202304-001', '2023-04-27', 's', 'Sapu', 'Ballpoint', 'LUSIN', 12, '2023-04-27 03:43:42', 'Fathur Rahmansyah', '2023-04-27 03:43:42'),
(18, '202304-002', '2023-04-27', 'untuk', 'Sapu', 'Ballpoint', 'LUSIN', 12, '2023-04-27 04:32:40', 'Fathur Rahmansyah', '2023-04-27 04:32:40'),
(19, '202304-003', '2023-04-27', 'dsadas', 'Sapu', 'Ballpoint', 'LUSIN', 24, '2023-04-27 04:33:56', 'Fathur Rahmansyah', '2023-04-27 04:33:56'),
(20, '202304-003', '2023-04-27', 'dsadas', 'Mouse', 'Ballpoint', 'LUSIN', 36, '2023-04-27 04:33:56', 'Fathur Rahmansyah', '2023-04-27 04:33:56'),
(21, '202304-004', '2023-04-27', 'untuk', 'Sapu', 'Ballpoint', 'LUSIN', 12, '2023-04-27 04:43:56', 'Fathur Rahmansyah', '2023-04-27 04:43:56'),
(22, '202304-005', '2023-04-27', 'untuk', 'Kertas A4 Putih', 'Kertas', 'PCS', 18, '2023-04-27 08:32:52', 'Fathur Rahmansyah', '2023-04-27 08:32:52'),
(23, '202304-006', '2023-04-27', 'untuk', 'Kertas A4 Putih', 'Kertas', 'PCS', 3, '2023-04-27 08:33:21', 'Fathur Rahmansyah', '2023-04-27 08:33:21');

--
-- Triggers `gams_stok_masuk`
--
DELIMITER $$
CREATE TRIGGER `gams_stok_masuk_after_insert` AFTER INSERT ON `gams_stok_masuk` FOR EACH ROW BEGIN
	UPDATE gams_stok_barang SET stok_pcs = stok_pcs + NEW.jumlah 
	WHERE nama_barang = NEW.nama_barang ;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `gams_stok_masuk_bagi_stok_unit` AFTER INSERT ON `gams_stok_masuk` FOR EACH ROW BEGIN
	UPDATE gams_stok_barang SET stok_barang = stok_pcs / jml_per_unit
	WHERE nama_barang = NEW.nama_barang ;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(21, '2014_10_12_000000_create_users_table', 1),
(22, '2014_10_12_100000_create_password_resets_table', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2020_12_04_023723_create_komputers_table', 1),
(28, '2020_12_21_011821_create_laptops_table', 2),
(31, '2021_01_01_072904_create_suppliers_table', 3),
(32, '2021_01_01_113236_create_barangs_table', 4),
(34, '2021_01_02_153952_create_stoks_table', 5),
(35, '2021_01_03_051446_create_kategoris_table', 6),
(36, '2021_01_03_132946_create_transaksis_table', 7),
(37, '2021_02_11_141515_create_stoks_table', 8),
(39, '2021_02_11_144931_create_stok_outs_table', 9),
(40, '2021_02_13_003132_create_barang_stoks_table', 10),
(41, '2021_03_02_021636_create_stok_outs_table', 11),
(42, '2021_03_04_042435_create_stok_ins_table', 12),
(43, '2021_03_09_041023_user', 13),
(44, '2021_03_31_032343_create_printers_table', 14),
(45, '2021_07_30_035656_create_employees_table', 15),
(46, '2021_08_02_023822_create_used_assets_table', 16),
(48, '2021_09_20_001637_create_div_table', 17),
(50, '2021_09_20_010545_create_dept_table', 18),
(51, '2021_09_20_012606_create_tb_section_table', 19),
(54, '2021_10_13_010956_create_ussed_asset_laptop_table', 20),
(56, '2021_11_02_011826_create_eriwayat_latop_table', 21),
(58, '2021_11_19_103225_create_cc_product_table', 22),
(59, '2022_02_23_113615_add_ssd_to_komputer_table', 23),
(60, '2022_02_24_085353_add_ssd_to_laptop_table', 24),
(61, '2022_04_27_032353_create-eticket-table', 25),
(62, '2022_05_12_091431_add_status_to_eticket_table', 26),
(63, '2022_06_13_095948_add_issue_to_eticket_table', 27),
(64, '2023_01_19_073918_laratrust_setup_tables', 28);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `printer`
--

CREATE TABLE `printer` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_fa` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purc_date` date DEFAULT NULL,
  `purc_ppb` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `printer_merk` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `printer_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `printer`
--

INSERT INTO `printer` (`id`, `kode_fa`, `purc_date`, `purc_ppb`, `serial_number`, `printer_merk`, `printer_type`, `type`, `code`, `status`, `info`, `created_at`, `updated_at`) VALUES
(12, 'C.PT.201805.008', NULL, '-', 'VNC341757', 'HP', 'LASERJET PRO M102A', 'toner', 'CF217A', 'AI', 'DRUM (CF219A)', '2022-03-22 06:30:19', '2022-03-22 06:30:19'),
(13, 'C.PT.201805.008', NULL, '-', '-', 'Epson', 'EPSON L360', 'Ink', '664', 'AI', '-', '2022-03-22 06:34:06', '2022-03-22 06:34:06'),
(14, 'C.PT.202203.007', '2022-03-17', '22030234', 'XAGK028758', 'Epson', 'EPSON L3210', 'Ink', '003', 'AI', '-', '2022-03-22 06:35:44', '2022-03-22 06:35:44'),
(15, 'C.PT.000000.015', NULL, '-', '-', 'HP', 'HP LASERJET P1102', 'toner', 'CE285A', 'AI', '-', '2022-03-22 06:37:40', '2022-03-22 06:37:40'),
(16, 'C.PT.000000.016', NULL, '-', '-', 'HP', 'HP LASERJET M201N', 'toner', 'CF283A', 'AI', '-', '2022-03-22 06:39:27', '2022-03-22 06:39:27'),
(17, 'C.PT.202202.004', NULL, '-', '-', 'Epson', 'EPSON L15150', 'Ink', '008', 'AI', '-', '2022-03-22 06:40:55', '2022-03-22 06:40:55'),
(19, 'C.PT.000000.018', NULL, '-', '-', 'HP', 'HP LASERJET 1566', 'toner', 'CE278A', 'AI', '-', '2022-03-22 06:45:00', '2022-03-22 06:45:00'),
(20, 'C.PT.000000.019', NULL, '-', '-', 'HP', 'HP LASERJET P1102', 'toner', 'CE285A', 'AI', '-', '2022-03-22 06:47:16', '2022-03-22 06:47:16'),
(21, 'C.PT.000000.014', NULL, '-', '-', 'HP', 'HP LASERJET P1505', 'toner', 'CB436A', 'AI', '-', '2022-03-22 06:49:46', '2022-03-22 06:49:46'),
(22, 'C.PT.000000.009', NULL, '-', '-', 'HP', 'HP LASERJET P1102', 'toner', 'CE285A', 'AI', '-', '2022-03-22 06:52:28', '2022-03-22 06:52:28'),
(23, 'C.PT.000000.020', NULL, '-', '-', 'HP', 'HP LASERJET P1102', 'toner', 'CE285A', 'AI', '-', '2022-03-22 06:53:37', '2022-03-22 06:53:37'),
(24, 'C.PT.201901.001', NULL, '-', '-', 'HP', 'HP LASERJET M12W', 'toner', 'CF279A', 'AI', '-', '2022-03-22 06:55:12', '2022-03-22 06:55:12'),
(25, 'C.PT.000000.022', NULL, '-', '-', 'Epson', 'EPSON LQ-300', 'ribbon', '-', 'AI', '-', '2022-03-22 06:56:54', '2022-03-22 06:56:54'),
(26, 'C.PT.000000.023', NULL, '-', '-', 'HP', 'HP LASERJET P1102', 'toner', 'CE285A', 'AI', '-', '2022-03-22 07:00:55', '2022-03-22 07:00:55'),
(27, 'C.PT.000000.024', NULL, '-', '-', 'Epson', 'EPSON LQ-2190', 'ribbon', '-', 'AI', '-', '2022-03-22 07:01:58', '2022-03-22 07:01:58'),
(28, 'C.PT.000000.025', NULL, '-', '-', 'Epson', 'EPSON LQ-2190', 'ribbon', '-', 'AI', '-', '2022-03-22 07:05:49', '2022-03-22 07:05:49'),
(29, 'C.PT.000000.026', NULL, '-', '-', 'Epson', 'EPSON LQ-2190', 'ribbon', '-', 'AI', '-', '2022-03-22 07:07:23', '2022-03-22 07:07:23'),
(30, 'C.PT.201701.001', NULL, '-', '-', 'Epson', 'EPSON L1300', 'Ink', '664', 'AI', '-', '2022-03-22 07:08:48', '2022-03-22 07:08:48'),
(31, 'C.PT.000000.053', NULL, '-', '-', 'Epson', 'EPSON  LX-300', 'ribbon', '-', 'AI', '-', '2022-03-22 07:11:28', '2022-03-22 07:11:28'),
(32, 'C.PT.201904.002', NULL, '-', '-', 'Epson', 'EPSON L1300', 'Ink', '664', 'AI', '-', '2022-03-22 07:12:34', '2022-03-22 07:12:34'),
(33, 'C.PT.201905.004', NULL, '-', '-', 'Epson', 'EPSON L1350', 'Ink', '003', 'AI', '-', '2022-03-22 07:14:03', '2022-03-22 07:14:03'),
(34, 'C.PT.202201.001', NULL, '-', '-', 'Epson', 'EPSON L14150', 'Ink', '001', 'AI', '-', '2022-03-22 07:15:21', '2022-03-22 07:15:21'),
(35, 'C.PT.201702.002', NULL, '-', '-', 'Epson', 'EPSON L120', 'Ink', '664', 'AI', '-', '2022-03-22 07:16:44', '2022-03-22 07:16:44'),
(36, 'C.PT.000000.033', NULL, '-', '-', 'HP', 'HP LASERJET P1102', 'toner', 'CE285A', 'AI', '-', '2022-03-22 07:18:19', '2022-03-22 07:18:19'),
(37, 'C.PT.000000.031', NULL, '-', '-', 'Epson', 'EPSON L220', 'Ink', '664', 'AI', '-', '2022-03-22 07:19:28', '2022-03-22 07:19:28'),
(38, 'C.PT.000000.010', NULL, '-', '-', 'Epson', 'EPSON  LX-300', 'ribbon', '-', 'AI', '-', '2022-03-22 07:20:21', '2022-03-22 07:20:21'),
(39, 'C.PT.000000.004', NULL, '-', '-', 'HP', 'HP DEKSJET INK ADVANTAGE 2545', 'Ink', '678', 'AI', '-', '2022-03-22 07:22:51', '2022-03-22 07:22:51'),
(40, 'C.PT.201807.009', NULL, '-', '-', 'HP', 'HP LASERJET PRO M12W', 'toner', 'CF279A', 'AI', '-', '2022-03-22 07:24:34', '2022-03-22 07:24:34'),
(41, 'C.PT.000000.005', NULL, '-', '-', 'Epson', 'EPSON LX-310', 'ribbon', '-', 'AI', '-', '2022-03-22 07:26:14', '2022-03-22 07:26:14'),
(42, 'C.PT.201804.005', NULL, '-', '-', 'Epson', 'EPSON TM-T82', 'thermal', '-', 'AI', 'FG-IN', '2022-03-22 07:29:31', '2022-03-22 07:29:31'),
(43, 'C.PT.000000.043', NULL, '-', '-', 'Epson', 'EPSON LX-310', 'ribbon', '-', 'AI', 'ARIF', '2022-03-22 07:31:07', '2022-03-22 07:31:07'),
(44, 'C.PT.000000.045', NULL, '-', '-', 'Epson', 'EPSON LX-310', 'ribbon', '-', 'AI', 'INCOMING', '2022-03-22 07:32:06', '2022-03-22 07:32:06'),
(45, 'C.PT.201904.003', NULL, '-', '-', 'Epson', 'EPSON LQ-310', 'ribbon', '-', 'AI', 'FUJI', '2022-03-22 07:33:40', '2022-03-22 07:33:40'),
(46, 'C.PT.201805.007', NULL, '-', '-', 'Epson', 'EPSON LX-310', 'ribbon', '-', 'AI', 'YAKUP', '2022-03-22 07:34:51', '2022-03-22 07:34:51'),
(47, 'C.PT.201805.006', NULL, '-', '-', 'Epson', 'EPSON L360', 'Ink', '664', 'AI', '-', '2022-03-22 07:36:07', '2022-03-22 07:36:07'),
(48, 'C.PT.201803.003', NULL, '-', '-', 'Epson', 'EPSON TM-T82', 'thermal', '-', 'AI', 'PQE', '2022-03-22 07:37:21', '2022-03-22 07:37:21'),
(49, 'C.PT.000000.041', NULL, '-', '-', 'Epson', 'EPSON L220', 'Ink', '664', 'AI', '-', '2022-03-22 07:38:44', '2022-03-22 07:38:44'),
(50, 'C.PT.000000.019', NULL, '-', '-', 'HP', 'HP LASERJET P1102', 'toner', 'CE285A', 'AI', '-', '2022-03-22 07:39:47', '2022-03-22 07:39:47'),
(51, 'C.PT.000000.040', NULL, '-', '-', 'Epson', 'EPSON LX-310', 'ribbon', '-', 'AI', '-', '2022-03-22 07:40:49', '2022-03-22 07:40:49'),
(52, 'C.PT.000000.044', NULL, '-', '-', 'Epson', 'EPSON LQ-300', 'ribbon', '-', 'AI', '-', '2022-03-22 07:42:44', '2022-03-22 07:42:44'),
(53, 'C.PT.000000.030', NULL, '-', '-', 'Epson', 'EPSON L1300', 'Ink', '664', 'AI', '-', '2022-03-22 07:44:25', '2022-03-22 07:44:25'),
(54, 'C.PT.000000.013', NULL, '-', '-', 'Epson', 'EPSON L350', 'Ink', '664', 'AI', '-', '2022-03-22 07:45:31', '2022-03-22 07:45:31'),
(55, 'C.PT.202002.001', NULL, '-', '-', 'Epson', 'SATO CL 4 NX', 'ribbon', '-', 'AI', '-', '2022-03-22 07:47:32', '2022-03-22 07:47:32'),
(56, 'C.PT.000000.036', NULL, '-', '-', 'Epson', 'EPSON L350', 'Ink', '664', 'AI', '-', '2022-03-22 07:48:31', '2022-03-22 07:48:31'),
(58, 'C.PT.000000.039', NULL, '-', '-', 'HP', 'HP LASER 2055', 'toner', 'CE505A', 'AI', '-', '2022-03-22 07:53:56', '2022-03-22 07:53:56'),
(59, 'C.PT.000000.038', NULL, '-', '-', 'HP', 'HP LASER 2055DN', 'toner', 'CE505A', 'AI', '-', '2022-03-22 07:56:04', '2022-03-22 07:56:04'),
(61, 'C.PT.201904.004', NULL, '-', '-', 'Epson', 'HP LASER 402 N', 'toner', 'CF226A', 'AI', '-', '2022-03-22 08:01:01', '2022-03-22 08:01:01'),
(62, 'C.PT.201712.007', NULL, '-', '-', 'Epson', 'EPSON TM-T82', 'thermal', '-', 'AI', 'ASSY', '2022-03-22 08:02:11', '2022-03-22 08:02:11'),
(63, 'C.PT.202012.001', NULL, '-', '-', 'Epson', 'EPSON TM-T82', 'thermal', '-', 'AI', 'SPOT', '2022-03-22 08:03:36', '2022-03-22 08:03:36'),
(64, 'C.PT.201702.008', NULL, '-', '-', 'Epson', 'EPSON L1300', 'Ink', '664', 'AI', '-', '2022-03-22 08:04:25', '2022-03-22 08:04:25'),
(65, 'C.PT.202101.001', NULL, '-', '-', 'Epson', 'EPSON L1300', 'Ink', '664', 'AI', '-', '2022-03-22 08:05:39', '2022-03-22 08:05:39'),
(66, 'C.PT.000000.007', NULL, '-', '-', 'Epson', 'HP LASERJET P1102', 'toner', 'CE285A', 'AI', '-', '2022-03-22 08:06:26', '2022-03-22 08:06:26'),
(67, 'C.PT.201711.005', NULL, '-', '-', 'Epson', 'EPSON TM-T82', 'thermal', '-', 'AI', 'QA LINE', '2022-03-22 08:07:22', '2022-03-22 08:07:22'),
(68, 'C.PT.201710.004', NULL, '-', '-', 'Epson', 'EPSON TM-T82', 'thermal', '-', 'AI', 'QA - FINAL INSPECTION', '2022-03-22 08:08:24', '2022-03-22 08:08:24'),
(69, 'C.PT.000000.011', NULL, '-', '-', 'Epson', 'EPSON WF 7511', 'Ink', '143', 'AI', '-', '2022-03-22 08:09:29', '2022-03-22 08:09:29'),
(70, 'C.PT.000000.002', NULL, '-', '-', 'Epson', 'EPSON L350', 'Ink', '664', 'AI', '-', '2022-03-22 08:11:12', '2022-03-22 08:11:12'),
(71, 'C.PT.000000.058', NULL, '-', '-', 'HP', 'HP LASER 1102', 'toner', 'CE285A', 'AI', '-', '2022-03-22 08:17:06', '2022-03-22 08:17:06'),
(72, 'C.PT.000000.001', NULL, '-', '-', 'Epson', 'EPSON L350', 'Ink', '664', 'AI', '-', '2022-03-22 08:17:50', '2022-03-22 08:17:50'),
(73, 'C.PT.202111.002', '2021-11-01', '21100601', 'XAGK043186', 'Epson', 'L3210', 'Ink', '003', 'AI', 'Inv collection', '2022-03-23 07:44:47', '2022-03-23 07:44:47');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_dept`
--

CREATE TABLE `tb_dept` (
  `id` int(10) UNSIGNED NOT NULL,
  `division_id` int(11) NOT NULL,
  `dept` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_dept`
--

INSERT INTO `tb_dept` (`id`, `division_id`, `dept`, `created_at`, `updated_at`) VALUES
(1, 1, 'Accounting', '2021-09-20 01:10:07', '2021-09-20 01:10:09'),
(2, 1, 'Cost Control', '2021-09-20 01:10:22', '2021-09-20 01:10:24'),
(3, 1, 'Finance', '2021-09-20 01:10:33', '2021-09-20 01:10:36'),
(4, 1, 'IT', '2021-09-20 01:10:43', '2021-09-20 01:10:44'),
(5, 2, 'Design & Casting', '2021-09-20 01:11:04', '2021-09-20 01:11:06'),
(6, 2, 'Schedule & Control', '2021-09-20 01:11:25', '2021-09-20 01:11:27'),
(7, 2, 'Tooling Mfg & Mtn Eng', '2021-09-20 01:11:49', '2021-09-20 01:11:50'),
(8, 3, 'GA', '2021-09-20 01:33:09', '2021-09-20 01:33:11'),
(9, 3, 'Raw Material & Consumable', '2021-09-20 01:33:37', '2021-09-20 01:33:38'),
(10, 4, 'Inventory Management', '2021-09-20 01:34:15', '2021-09-20 01:34:17'),
(11, 4, 'Maintenance & Automation', '2021-09-20 01:34:28', '2021-09-20 01:34:29'),
(12, 4, 'PPC & Delivery Control', '2021-09-20 01:34:54', '2021-09-20 01:34:55'),
(13, 4, 'Production', '2021-09-20 01:35:07', '2021-09-20 01:35:08'),
(14, 4, 'QA', '2021-09-20 01:35:23', '2021-09-20 01:35:23'),
(15, 4, 'QHSE', '2021-09-20 01:35:33', '2021-09-20 01:35:34'),
(16, 4, 'SCM', '2021-09-20 01:35:48', '2021-09-20 01:35:50'),
(17, 5, 'Marketing', '2021-09-20 01:36:10', '2021-09-20 01:36:12'),
(18, 6, 'Purchasing', '2021-09-20 01:36:30', '2021-09-20 01:36:31'),
(19, 2, 'Try Out', '2021-09-20 02:35:29', '2021-09-20 02:35:30'),
(20, 7, 'HRD', '2021-09-23 05:30:42', '2021-09-23 05:30:43'),
(21, 7, '-', NULL, NULL),
(22, 5, '-', '2021-09-23 09:17:29', '2021-09-23 09:17:31'),
(23, 6, '-', '2021-09-23 09:21:55', '2021-09-23 09:21:56');

-- --------------------------------------------------------

--
-- Table structure for table `tb_div`
--

CREATE TABLE `tb_div` (
  `id` int(10) UNSIGNED NOT NULL,
  `divisi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_div`
--

INSERT INTO `tb_div` (`id`, `divisi`, `created_at`, `updated_at`) VALUES
(1, 'Accounting & FInance', '2021-09-20 00:22:22', '2021-09-20 00:22:23'),
(2, 'Engineering', '2021-09-20 00:22:25', '2021-09-20 00:22:27'),
(3, 'GA & Raw Material Purchase\r\n', '2021-09-20 00:22:39', '2021-09-20 00:22:39'),
(4, 'Manufacturing', '2021-09-20 00:23:12', '2021-09-20 00:23:14'),
(5, 'Marketing', '2021-09-20 00:23:28', '2021-09-20 00:23:29'),
(6, 'Procurement', '2021-09-20 00:23:42', '2021-09-20 00:23:43'),
(7, 'HRD', '2021-09-23 05:30:23', '2021-09-23 05:30:24');

-- --------------------------------------------------------

--
-- Table structure for table `tb_section`
--

CREATE TABLE `tb_section` (
  `id` int(10) UNSIGNED NOT NULL,
  `dept_id` int(11) NOT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_section`
--

INSERT INTO `tb_section` (`id`, `dept_id`, `section`, `created_at`, `updated_at`) VALUES
(1, 1, 'Accounting', '2021-09-20 01:28:57', '2021-09-20 01:28:59'),
(2, 2, 'Cost Control', '2021-09-20 01:29:16', '2021-09-20 01:29:17'),
(3, 3, 'Finance', '2021-09-20 01:29:27', '2021-09-20 01:29:29'),
(4, 4, 'IT', '2021-09-20 01:29:35', '2021-09-20 01:29:37'),
(5, 5, 'Design & Casting', '2021-09-20 01:38:16', '2021-09-20 01:38:17'),
(6, 6, 'Schedule & Control', '2021-09-20 01:38:37', '2021-09-20 01:38:38'),
(7, 7, 'Tooling Mfg & Mtn Eng', '2021-09-20 01:39:12', '2021-09-20 01:39:14'),
(8, 19, 'Try Out', '2021-09-20 01:39:33', '2021-09-20 01:39:34'),
(9, 8, 'GA', '2021-09-20 02:37:43', '2021-09-20 02:37:45'),
(10, 9, 'Raw Material', '2021-09-20 02:38:28', '2021-09-20 02:38:30'),
(11, 9, 'Consumable', '2021-09-20 02:38:47', '2021-09-20 02:38:48'),
(12, 10, 'Finish Good', '2021-09-20 02:39:30', '2021-09-20 02:39:31'),
(13, 10, 'MRP', '2021-09-20 02:39:45', '2021-09-20 02:39:46'),
(14, 10, 'WIP', '2021-09-20 02:40:04', '2021-09-20 02:40:05'),
(15, 11, 'Automation', '2021-09-20 02:40:26', '2021-09-20 02:40:27'),
(16, 11, 'Maintenance', '2021-09-20 02:40:46', '2021-09-20 02:40:47'),
(17, 11, 'Tooling Maintenance', '2021-09-20 02:41:05', '2021-09-20 02:41:06'),
(18, 12, 'PPC', '2021-09-20 02:41:43', '2021-09-20 02:41:44'),
(19, 12, 'Delivery Control', '2021-09-20 02:41:58', '2021-09-20 02:41:58'),
(20, 13, 'Assy', '2021-09-20 02:42:25', '2021-09-20 02:42:26'),
(21, 13, 'Spot', '2021-09-20 02:42:41', '2021-09-20 02:42:43'),
(22, 13, 'Stamping', '2021-09-20 02:42:55', '2021-09-20 02:42:56'),
(23, 13, 'Welding', '2021-09-20 02:43:21', '2021-09-20 02:43:22'),
(24, 14, 'QA', '2021-09-20 02:43:50', '2021-09-20 02:43:50'),
(25, 15, 'QHSE', '2021-09-20 02:44:06', '2021-09-20 02:44:07'),
(26, 16, 'SCM', '2021-09-20 02:44:30', '2021-09-20 02:44:31'),
(27, 17, 'Marketing', '2021-09-20 02:44:51', '2021-09-20 02:44:52'),
(28, 18, 'Purchasing', '2021-09-20 02:45:02', '2021-09-20 02:45:03'),
(29, 20, 'HRD', '2021-09-23 05:31:12', '2021-09-23 05:31:14'),
(30, 10, 'Consumable (Gudang)', '2022-06-13 00:52:57', '2022-06-13 00:52:58');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `role`, `name`, `section`, `position`, `nik`, `nik_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Fathur Rahmansyah', 'IT', 'MGR', '5211', NULL, '$2y$10$mFd/MmGV8nElaHO7wGEMI.K79Pxoyhk9qcnN9LhGZ/me8iZNz/7Gi', 'blPAFBGACi8nQ0VjXq8KQBjBfwxsOXZx1NPjfap36ajfSYeanA0dx03vVGN0', '2021-03-08 21:20:24', '2021-03-08 21:20:24'),
(8, 'admin', 'Hanifan Musliman', 'IT', '', '5254', NULL, '$2y$10$6bdnOdo.fIjGjxlSoU6ZqeoIurkaPNXmSLZyJ5HOe51X6DlCTlpTe', 'sbsqJIKAtK1ukQSRvcfFrGJOts94oeLrRBCUuwYE5GZxgnf2F7TmnM7lAgsM', '2021-11-24 03:48:26', '2021-11-24 03:48:26'),
(10, 'user', 'Test', 'IT', 'STAFF', '1111', NULL, '$2y$10$CUtNOr17iklSSR4GvRdH9u2R5c3G6.DrsIfGHS.IZaoTWmwmt1MsK', 'ymFKxYgqbCthhVCMYAH6Hj1q4aD3tP752fXnewJSWzW7eIHD43insKSxNI5A', '2022-02-21 00:24:21', '2022-02-21 00:24:21'),
(15, 'user', 'Fiki Afyudan G', 'Schedule & Control', '', '3403', NULL, '$2y$10$7Kb40e/evwZmpVoy7hl0su5xxenMCYt/IlKO6sYucpnjtmjX5dRM6', 'coP5EXdnETUvsg966xwClmamLyIGOiorLKPwpc43L9X3hVFohtPadwYDX9NC', '2022-09-20 07:03:12', '2022-09-20 07:03:12'),
(16, 'admin', 'M Rizqi Nur Alif', 'IT', '', '5479', NULL, '$2y$10$6Yg6qjXD31gBMaXsK2Lk7eU0HOMv36/GtuStQVw47Reclt4eFh2UG', 'YWnoCkA39uqGqxH4aeqANDRxKsEkG2q0GiVbleYJ7Gk0nDYJj4OuTeyeFOrq', '2022-09-20 07:19:11', '2022-09-20 07:19:11');

-- --------------------------------------------------------

--
-- Table structure for table `users_old`
--

CREATE TABLE `users_old` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gams_master_barang`
--
ALTER TABLE `gams_master_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `gams_master_barang_log`
--
ALTER TABLE `gams_master_barang_log`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `gams_master_tipe_barang`
--
ALTER TABLE `gams_master_tipe_barang`
  ADD PRIMARY KEY (`id_tipe`);

--
-- Indexes for table `gams_master_unit_barang`
--
ALTER TABLE `gams_master_unit_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gams_permintaan_barang`
--
ALTER TABLE `gams_permintaan_barang`
  ADD PRIMARY KEY (`id_perm_barang`);

--
-- Indexes for table `gams_stok_barang`
--
ALTER TABLE `gams_stok_barang`
  ADD PRIMARY KEY (`id_stok`);

--
-- Indexes for table `gams_stok_keluar`
--
ALTER TABLE `gams_stok_keluar`
  ADD PRIMARY KEY (`id_stok_out`) USING BTREE;

--
-- Indexes for table `gams_stok_masuk`
--
ALTER TABLE `gams_stok_masuk`
  ADD PRIMARY KEY (`id_stok_in`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `printer`
--
ALTER TABLE `printer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `tb_dept`
--
ALTER TABLE `tb_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_div`
--
ALTER TABLE `tb_div`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_section`
--
ALTER TABLE `tb_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_nik_unique` (`nik`);

--
-- Indexes for table `users_old`
--
ALTER TABLE `users_old`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gams_master_barang`
--
ALTER TABLE `gams_master_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `gams_master_barang_log`
--
ALTER TABLE `gams_master_barang_log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `gams_master_tipe_barang`
--
ALTER TABLE `gams_master_tipe_barang`
  MODIFY `id_tipe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `gams_master_unit_barang`
--
ALTER TABLE `gams_master_unit_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `gams_permintaan_barang`
--
ALTER TABLE `gams_permintaan_barang`
  MODIFY `id_perm_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `gams_stok_barang`
--
ALTER TABLE `gams_stok_barang`
  MODIFY `id_stok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `gams_stok_keluar`
--
ALTER TABLE `gams_stok_keluar`
  MODIFY `id_stok_out` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gams_stok_masuk`
--
ALTER TABLE `gams_stok_masuk`
  MODIFY `id_stok_in` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `printer`
--
ALTER TABLE `printer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_dept`
--
ALTER TABLE `tb_dept`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tb_div`
--
ALTER TABLE `tb_div`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_section`
--
ALTER TABLE `tb_section`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users_old`
--
ALTER TABLE `users_old`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
