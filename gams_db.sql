-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2023 at 07:38 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

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
  `name` varchar(255) NOT NULL,
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
(153, 4247, 'Aan Syahrofik', 6, 18, 28, NULL, NULL),
(154, 4417, 'Ari Meiwanto', 6, 18, 28, NULL, NULL),
(155, 4509, 'Yan Tandi Raru', 6, 18, 28, NULL, NULL),
(156, 5100, 'Eko Prasetio', 6, 18, 28, NULL, NULL),
(159, 5247, 'Adika Akhmad Zufri', 4, 10, 14, NULL, NULL),
(160, 5294, 'Wildan Adji Nugroho', 1, 4, 4, NULL, NULL),
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
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gams_master_barang`
--

INSERT INTO `gams_master_barang` (`id_barang`, `nama_barang`, `kategori_barang`, `unit_barang`, `data_status`, `created_at`, `updated_at`) VALUES
(2, 'Acco Plastik', 'ATK', 'PAK (50)', 'ACTIVE', NULL, NULL),
(3, 'Acco Steinless', 'ATK', 'PAK (50)', 'ACTIVE', NULL, NULL),
(4, 'Adress & Telephone Index', 'ATK', 'BUKU (1)', 'ACTIVE', NULL, NULL),
(5, 'Amplop F4 Polos', 'ATK', 'BOX (100)', 'ACTIVE', NULL, NULL),
(6, 'Amplop F4 Tch', 'ATK', 'PAK (100)', 'ACTIVE', NULL, NULL),
(7, 'Amplop Gaji', 'ATK', 'PAK (100)', 'ACTIVE', NULL, NULL),
(8, 'Amplop Kecil Polos No.110', 'ATK', 'BOX (100)', 'ACTIVE', NULL, NULL),
(9, 'Amplop No.90 Polos', 'ATK', 'BOX (100)', 'ACTIVE', NULL, NULL),
(10, 'Amplop No.90 Tch', 'ATK', 'BOX (100)', 'ACTIVE', NULL, NULL),
(11, 'Ballpoint', 'ATK', 'LUSIN (12)', 'ACTIVE', NULL, NULL),
(12, 'Ballpoint (isi)', 'ATK', 'LUSIN (144)', 'ACTIVE', NULL, NULL),
(13, 'Ballpoint Biru', 'ATK', 'LUSIN (12)', 'ACTIVE', NULL, NULL),
(14, 'Ballpoint Meja Tripfelo', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(15, 'Ballpoint OPF Biru', 'ATK', 'LUSIN (12)', 'ACTIVE', NULL, NULL),
(16, 'Ballpoint OPF Hijau', 'ATK', 'LUSIN (12)', 'ACTIVE', NULL, NULL),
(17, 'Ballpoint OPF Hitam', 'ATK', 'LUSIN (12)', 'ACTIVE', NULL, NULL),
(18, 'Ballpoint OPF Merah', 'ATK', 'LUSIN (12)', 'ACTIVE', NULL, NULL),
(19, 'Ballpoint OPF Ungu', 'ATK', 'LUSIN (12)', 'ACTIVE', NULL, NULL),
(20, 'Ballpoint OPM Biru', 'ATK', 'LUSIN (12)', 'ACTIVE', NULL, NULL),
(21, 'Ballpoint OPM Hitam', 'ATK', 'LUSIN (12)', 'ACTIVE', NULL, NULL),
(22, 'Ballpoint OPM Merah', 'ATK', 'LUSIN (12)', 'ACTIVE', NULL, NULL),
(23, 'Baterai 23 A', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(24, 'Baterai 9V', 'ATK', 'BOX (12)', 'ACTIVE', NULL, NULL),
(25, 'Baterai A2', 'ATK', 'SET (2)', 'ACTIVE', NULL, NULL),
(26, 'Baterai A3', 'ATK', 'SET (2)', 'ACTIVE', NULL, NULL),
(27, 'Baterai C2', 'ATK', 'SET (2)', 'ACTIVE', NULL, NULL),
(28, 'Baterai CR1616', 'ATK', 'BOX (10)', 'ACTIVE', NULL, NULL),
(29, 'Baterai CR2025', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(30, 'Baterai CR2032', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(31, 'Baterai D2', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(32, 'Baterai LR41', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(33, 'Baterai LR44', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(34, 'Baterai Recharge A2', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(35, 'Baterai Recharge A3', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(36, 'Binder Clip 107', 'ATK', 'BOX (12)', 'ACTIVE', NULL, NULL),
(37, 'Binder Clip 155', 'ATK', 'BOX (12)', 'ACTIVE', NULL, NULL),
(38, 'Binder Clip 200', 'ATK', 'BOX (12)', 'ACTIVE', NULL, NULL),
(39, 'Binder Clip 260', 'ATK', 'BOX (12)', 'ACTIVE', NULL, NULL),
(40, 'Box File Bantex 4011', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(41, 'Buku Expedisi', 'ATK', 'BUKU (1)', 'ACTIVE', NULL, NULL),
(42, 'Buku Folio', 'ATK', 'BUKU (1)', 'ACTIVE', NULL, NULL),
(43, 'Buku Kwarto', 'ATK', 'BUKU (1)', 'ACTIVE', NULL, NULL),
(44, 'Buku Saku', 'ATK', 'BUKU (1)', 'ACTIVE', NULL, NULL),
(45, 'Buku Sidu', 'ATK', 'BUKU (1)', 'ACTIVE', NULL, NULL),
(46, 'Bussiness File A4', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(47, 'Bussiness File F4', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(48, 'Card Case A3', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(49, 'Card Case A4', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(50, 'Clear Holder A4', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(51, 'Clear Holder F4', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(52, 'Clear Holder Felix CH1160 Folio', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(53, 'Clip Board', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(54, 'Colour Magnet', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(55, 'Continous Form 2 Fly A4', 'ATK', 'RIM (500)', 'ACTIVE', NULL, NULL),
(56, 'Continous Form 2 Fly A5', 'ATK', 'RIM (500)', 'ACTIVE', NULL, NULL),
(57, 'Continous Form 3 Fly A4', 'ATK', 'RIM (500)', 'ACTIVE', NULL, NULL),
(58, 'Continous Form 3 Fly A5', 'ATK', 'RIM (500)', 'ACTIVE', NULL, NULL),
(59, 'Cutter Besar', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(60, 'Cutter Kecil', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(61, 'Dermatograf Coklat', 'ATK', 'PAK (12)', 'ACTIVE', NULL, NULL),
(62, 'Dermatograp Hitam', 'ATK', 'PAK (12)', 'ACTIVE', NULL, NULL),
(63, 'Dermatograp Kuning', 'ATK', 'PAK (12)', 'ACTIVE', NULL, NULL),
(64, 'Dermatograp Putih', 'ATK', 'PAK (12)', 'ACTIVE', NULL, NULL),
(65, 'Divider/ Pembatas Kertas', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(66, 'Double Tipe 1\'', 'ATK', 'BOX (10)', 'ACTIVE', NULL, NULL),
(67, 'Form Advance Payment', 'Form', 'BUKU (1)', 'ACTIVE', NULL, NULL),
(68, 'Form Bukti Pengeluaran Kas', 'Form', 'BUKU (1)', 'ACTIVE', NULL, NULL),
(69, 'Form Cuti', 'Form', 'BUKU (1)', 'ACTIVE', NULL, NULL),
(70, 'Form Daftar Normatif Entertainment', 'Form', 'BUKU (1)', 'ACTIVE', NULL, NULL),
(71, 'Form Izin Dinas Luar', 'Form', 'BUKU (1)', 'ACTIVE', NULL, NULL),
(72, 'Form Laporan Biaya', 'Form', 'BUKU (1)', 'ACTIVE', NULL, NULL),
(73, 'Form Laporan Biaya Prjln Dns Lr Kt', 'Form', 'BUKU (1)', 'ACTIVE', NULL, NULL),
(74, 'Form Memo Polos', 'Form', 'BUKU (1)', 'ACTIVE', NULL, NULL),
(75, 'Form Peminjaman Kendaraan', 'Form', 'BUKU (1)', 'ACTIVE', NULL, NULL),
(76, 'Form Penerimaan Bank', 'Form', 'BUKU (1)', 'ACTIVE', NULL, NULL),
(77, 'Form Pengambilan Material', 'Form', 'BUKU (1)', 'ACTIVE', NULL, NULL),
(78, 'Form Pengeluaran Bank', 'Form', 'BUKU (1)', 'ACTIVE', NULL, NULL),
(79, 'Form Pengeluaran Kas', 'Form', 'BUKU (1)', 'ACTIVE', NULL, NULL),
(80, 'Form Permintaan Atk', 'Form', 'BUKU (1)', 'ACTIVE', NULL, NULL),
(81, 'Form Permohonan Izin', 'Form', 'BUKU (1)', 'ACTIVE', NULL, NULL),
(82, 'Form Rekapan S.Jalan Cust.', 'Form', 'BUKU (1)', 'ACTIVE', NULL, NULL),
(83, 'Form Rekapan S.Jalan Suplyr.', 'Form', 'BUKU (1)', 'ACTIVE', NULL, NULL),
(84, 'Form Risalah Rapat Hal : 1', 'Form', 'BUKU (1)', 'ACTIVE', NULL, NULL),
(85, 'Form Risalah Rapat Hal : 2', 'Form', 'BUKU (1)', 'ACTIVE', NULL, NULL),
(86, 'Form Service Kendaraan', 'Form', 'BUKU (1)', 'ACTIVE', NULL, NULL),
(87, 'Form SPL', 'Form', 'BUKU (1)', 'ACTIVE', NULL, NULL),
(88, 'Form Tanda Terima', 'Form', 'BUKU (1)', 'ACTIVE', NULL, NULL),
(89, 'Form Work Order', 'Form', 'BUKU (1)', 'ACTIVE', NULL, NULL),
(90, 'Formulir Kunjungan Tamu', 'Form', 'BUKU (1)', 'ACTIVE', NULL, NULL),
(91, 'Gunting Besar', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(92, 'Gunting Kecil', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(93, 'Isi Cutter Besar', 'ATK', 'PAK (12)', 'ACTIVE', NULL, NULL),
(94, 'Isi Cutter Kecil', 'ATK', 'PAK (12)', 'ACTIVE', NULL, NULL),
(95, 'Isi Pensil', 'ATK', 'PAK (12)', 'ACTIVE', NULL, NULL),
(96, 'Kalkulator 868 L', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(97, 'Kalkulator Saku', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(98, 'Kartu Absensi', 'ATK', 'PAK (100)', 'ACTIVE', NULL, NULL),
(99, 'Kertas A3', 'ATK', 'RIM (1)', 'ACTIVE', NULL, NULL),
(100, 'Kertas A4', 'ATK', 'RIM (1)', 'ACTIVE', NULL, NULL),
(101, 'Kertas A4 80 Grm', 'ATK', 'RIM (1)', 'ACTIVE', NULL, NULL),
(102, 'Kertas A4 Biru', 'ATK', 'RIM (1)', 'ACTIVE', NULL, NULL),
(103, 'Kertas A4 Hijau', 'ATK', 'RIM (1)', 'ACTIVE', NULL, NULL),
(104, 'Kertas A4 Kuning', 'ATK', 'RIM (1)', 'ACTIVE', NULL, NULL),
(105, 'Kertas A4 Merah', 'ATK', 'RIM (1)', 'ACTIVE', NULL, NULL),
(106, 'Kertas A4 Pink', 'ATK', 'RIM (1)', 'ACTIVE', NULL, NULL),
(107, 'Kertas Buram', 'ATK', 'RIM (1)', 'ACTIVE', NULL, NULL),
(108, 'Kertas Buram F4', 'ATK', 'RIM (1)', 'ACTIVE', NULL, NULL),
(109, 'Kertas Concord Merah', 'ATK', 'RIM (1)', 'ACTIVE', NULL, NULL),
(110, 'Kertas Concord Pink', 'ATK', 'RIM (1)', 'ACTIVE', NULL, NULL),
(111, 'Kertas F4', 'ATK', 'RIM (1)', 'ACTIVE', NULL, NULL),
(112, 'Kertas Fax 210 x 30', 'ATK', 'RIM (1)', 'ACTIVE', NULL, NULL),
(113, 'Kertas Fax 216 x 30', 'ATK', 'RIM (1)', 'ACTIVE', NULL, NULL),
(114, 'Kertas Magnet', 'ATK', 'RIM (1)', 'ACTIVE', NULL, NULL),
(115, 'Kertas Sticker', 'ATK', 'RIM (1)', 'ACTIVE', NULL, NULL),
(116, 'Kop Surat TCH', 'ATK', 'RIM (1)', 'ACTIVE', NULL, NULL),
(117, 'Kwitansi Besar', 'ATK', 'BUKU (40)', 'ACTIVE', NULL, NULL),
(118, 'Kwitansi Kecil', 'ATK', 'BUKU (40)', 'ACTIVE', NULL, NULL),
(119, 'Lakban Hitam 1\'', 'ATK', 'ROLL (1)', 'ACTIVE', NULL, NULL),
(120, 'Lakban Hitam 2\'', 'ATK', 'ROLL (1)', 'ACTIVE', NULL, NULL),
(121, 'Lakban Kuning', 'ATK', 'ROLL (1)', 'ACTIVE', NULL, NULL),
(122, 'Lem Kertas', 'ATK', 'BOX (30)', 'ACTIVE', NULL, NULL),
(123, 'Map dengan Acco Biru (5001)', 'ATK', 'PAK (50)', 'ACTIVE', NULL, NULL),
(124, 'Map dengan Acco Merah (5001)', 'ATK', 'PAK (50)', 'ACTIVE', NULL, NULL),
(125, 'Map tanpa Acco', 'ATK', 'PAK (50)', 'ACTIVE', NULL, NULL),
(126, 'Name Card Case Besar', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(127, 'Name Card Case Kecil', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(128, 'Ordner A4 Biru', 'ATK', 'BOX (15)', 'ACTIVE', NULL, NULL),
(129, 'Ordner A5', 'ATK', 'BOX (15)', 'ACTIVE', NULL, NULL),
(130, 'Ordner F4 Biru', 'ATK', 'BOX (15)', 'ACTIVE', NULL, NULL),
(131, 'Ordner F4 Hitam', 'ATK', 'BOX (15)', 'ACTIVE', NULL, NULL),
(132, 'Pembolong Kertas Besar No.85', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(133, 'Pembolong Kertas Kecil No.30', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(134, 'Penggaris', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(135, 'Penggaris Plat (Metal)', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(136, 'Penghapus Panaboard', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(137, 'Penghapus Pensil', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(138, 'Penghapus White Board', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(139, 'Pensil', 'ATK', 'PAK (12)', 'ACTIVE', NULL, NULL),
(140, 'Pesawat Telephone Ktr', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(141, 'Pita (U. Nama Brg Inventaris)', 'Pita', 'PCS (1)', 'ACTIVE', NULL, NULL),
(142, 'Pita Amano Absen Manual', 'Pita', 'PCS (1)', 'ACTIVE', NULL, NULL),
(143, 'Pita Amano Surat Jalan', 'Pita', 'PCS (1)', 'ACTIVE', NULL, NULL),
(144, 'Pita Brother', 'Pita', 'PCS (1)', 'ACTIVE', NULL, NULL),
(145, 'Pita Key Amano', 'Pita', 'PCS (1)', 'ACTIVE', NULL, NULL),
(146, 'Pita Printer LQ 2190', 'Pita', 'PCS (1)', 'ACTIVE', NULL, NULL),
(147, 'Pita Printer LQ 310', 'Pita', 'PCS (1)', 'ACTIVE', NULL, NULL),
(148, 'Pita Printer LQ300+II', 'Pita', 'PCS (1)', 'ACTIVE', NULL, NULL),
(149, 'Pita Printer LQ300+II (Cartige)', 'Pita', 'PCS (1)', 'ACTIVE', NULL, NULL),
(150, 'Pita Printer LX 300+', 'Pita', 'PCS (1)', 'ACTIVE', NULL, NULL),
(151, 'Pita Printer LX 300+ (Cartige)', 'Pita', 'PCS (1)', 'ACTIVE', NULL, NULL),
(152, 'Pita Printer LX 310', 'Pita', 'PCS (1)', 'ACTIVE', NULL, NULL),
(153, 'Plastik Jilid / Plastik Mika A4', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(154, 'Plastik Jilid / Plastik Mika F4', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(155, 'Plastik Laminating A3', 'ATK', 'PAK (100)', 'ACTIVE', NULL, NULL),
(156, 'Plastik Laminating A4', 'ATK', 'PAK (100)', 'ACTIVE', NULL, NULL),
(157, 'Plastik TSOP A3 2036 08 (Horizontal)', 'ATK', 'PAK (100)', 'ACTIVE', NULL, NULL),
(158, 'Plastik TSOP A3 2037 08 (Vertikal)', 'ATK', 'PAK (100)', 'ACTIVE', NULL, NULL),
(159, 'Plastik TSOP A4', 'ATK', 'PAK (100)', 'ACTIVE', NULL, NULL),
(160, 'Post It 656', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(161, 'Post It Sign Here', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(162, 'Post It Warna', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(163, 'Push Pin', 'ATK', 'PAK (30)', 'ACTIVE', NULL, NULL),
(164, 'Spidol Paint Marker Biru', 'ATK', 'PAK (12)', 'ACTIVE', NULL, NULL),
(165, 'Spidol Paint Marker Coklat', 'ATK', 'PAK (12)', 'ACTIVE', NULL, NULL),
(166, 'Spidol Paint Marker Hijau', 'ATK', 'PAK (12)', 'ACTIVE', NULL, NULL),
(167, 'Spidol Paint Marker Kuning Kecil', 'ATK', 'PAK (12)', 'ACTIVE', NULL, NULL),
(168, 'Spidol Paint Marker Merah', 'ATK', 'PAK (12)', 'ACTIVE', NULL, NULL),
(169, 'Spidol Paint Marker Pink', 'ATK', 'PAK (12)', 'ACTIVE', NULL, NULL),
(170, 'Spidol Paint Marker Putih Kecil', 'ATK', 'PAK (12)', 'ACTIVE', NULL, NULL),
(171, 'Spidol Paint Marker Silver', 'ATK', 'PAK (12)', 'ACTIVE', NULL, NULL),
(172, 'Spidol Paint Marker Ungu', 'ATK', 'PAK (12)', 'ACTIVE', NULL, NULL),
(173, 'Spidol Snowman Hitam', 'ATK', 'PAK (12)', 'ACTIVE', NULL, NULL),
(174, 'Spidol Snowman Kuning', 'ATK', 'PAK (12)', 'ACTIVE', NULL, NULL),
(175, 'Spidol Snowman Putih', 'ATK', 'PAK (12)', 'ACTIVE', NULL, NULL),
(176, 'Spidol White Board Biru', 'ATK', 'PAK (12)', 'ACTIVE', NULL, NULL),
(177, 'Spidol White Board Hitam', 'ATK', 'PAK (12)', 'ACTIVE', NULL, NULL),
(178, 'Spidol White Board Merah', 'ATK', 'PAK (12)', 'ACTIVE', NULL, NULL),
(179, 'Spidol White Permanen Hitam', 'ATK', 'PAK (12)', 'ACTIVE', NULL, NULL),
(180, 'Spidol White Permanen Merah', 'ATK', 'PAK (12)', 'ACTIVE', NULL, NULL),
(181, 'Stabilo Biru', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(182, 'Stabilo Hijau', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(183, 'Stabilo Kuning', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(184, 'Stamp Pad', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(185, 'Stapler (isi)', 'ATK', 'PAK (12)', 'ACTIVE', NULL, NULL),
(186, 'Stapler (isi) Besar No. 03', 'ATK', 'PAK (12)', 'ACTIVE', NULL, NULL),
(187, 'Stapler (Pencabut Stapler)', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(188, 'Stapler Besar', 'ATK', 'PAK (10)', 'ACTIVE', NULL, NULL),
(189, 'Stapler Kecil', 'ATK', 'PAK (10)', 'ACTIVE', NULL, NULL),
(190, 'Tas Trimitra Chitrahasta', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(191, 'Tinta Refill Biru', 'ATK', 'PAK (12)', 'ACTIVE', NULL, NULL),
(192, 'Tinta Refill Hitam', 'ATK', 'PAK (12)', 'ACTIVE', NULL, NULL),
(193, 'Tinta Refill Merah', 'ATK', 'PAK (12)', 'ACTIVE', NULL, NULL),
(194, 'Tinta Trodat Biru', 'ATK', 'PAK (12)', 'ACTIVE', NULL, NULL),
(195, 'Tinta Trodat Hijau', 'ATK', 'PAK (12)', 'ACTIVE', NULL, NULL),
(196, 'Tinta Trodat Kuning', 'ATK', 'PAK (12)', 'ACTIVE', NULL, NULL),
(197, 'Tinta Trodat Merah', 'ATK', 'PAK (12)', 'ACTIVE', NULL, NULL),
(198, 'Tipe Dispenser 1\'', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(199, 'Tipe Dispenser 2\'', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(200, 'Tipe X', 'ATK', 'BOX (12)', 'ACTIVE', NULL, NULL),
(201, 'Tray 3 Susun (Eleghent Try)', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(202, 'Trigonal Clip (Kecil)', 'ATK', 'BOX (10)', 'ACTIVE', NULL, NULL),
(203, 'Trigonal Clip No.05 (Besar)', 'ATK', 'BOX (10)', 'ACTIVE', NULL, NULL),
(204, 'Trodat 1020', 'ATK', 'PCS (1)', 'ACTIVE', NULL, NULL),
(205, 'Zebra Line', 'ATK', 'ROLL (1)', 'ACTIVE', NULL, NULL),
(206, 'Obat - Alkohol', 'Obat', 'PCS (1)', 'ACTIVE', NULL, NULL),
(207, 'Obat - Balsem', 'Obat', 'POT (1)', 'ACTIVE', NULL, NULL),
(208, 'Obat - Betadin', 'Obat', 'BOX (6)', 'ACTIVE', NULL, NULL),
(209, 'Obat - Bio Plasenton', 'Obat', 'PCS (1)', 'ACTIVE', NULL, NULL),
(210, 'Obat - Bodrek', 'Obat', 'PAK (240)', 'ACTIVE', NULL, NULL),
(211, 'Obat - Decolgen', 'Obat', 'PAK (100)', 'ACTIVE', NULL, NULL),
(212, 'Obat - Entrostop', 'Obat', 'BKS (144)', 'ACTIVE', NULL, NULL),
(213, 'Obat - Hansaplast', 'Obat', 'PAK (100)', 'ACTIVE', NULL, NULL),
(214, 'Obat - Hansaplast Roll', 'Obat', 'BOX (20)', 'ACTIVE', NULL, NULL),
(215, 'Obat - Insidal', 'Obat', 'PAK (50)', 'ACTIVE', NULL, NULL),
(216, 'Obat - Insto', 'Obat', 'PAK (12)', 'ACTIVE', NULL, NULL),
(217, 'Obat - Kain Kasa', 'Obat', 'PAK (100)', 'ACTIVE', NULL, NULL),
(218, 'Obat - Kapas', 'Obat', 'PAK (5)', 'ACTIVE', NULL, NULL),
(219, 'Obat - Konidin', 'Obat', 'PAK (160)', 'ACTIVE', NULL, NULL),
(220, 'Obat - Mextril', 'Obat', 'PAK (100)', 'ACTIVE', NULL, NULL),
(221, 'Obat - Neuralgin', 'Obat', 'PAK (100)', 'ACTIVE', NULL, NULL),
(222, 'Obat - Promag', 'Obat', 'PAK (120)', 'ACTIVE', NULL, NULL),
(223, 'Obat - Paramex', 'Obat', 'PAK (200)', 'ACTIVE', NULL, NULL),
(224, 'Obat - Procold', 'Obat', 'PAK (144)', 'ACTIVE', NULL, NULL),
(225, 'Obat - Rivanol', 'Obat', 'PAK (10)', 'ACTIVE', NULL, NULL),
(226, 'Obat - Sanaflu', 'Obat', 'PAK (100)', 'ACTIVE', NULL, NULL),
(227, 'Obat - Saridon', 'Obat', 'PAK (120)', 'ACTIVE', NULL, NULL),
(228, 'Obat - Ultraflu', 'Obat', 'PAK (100)', 'ACTIVE', NULL, NULL),
(229, 'Obat - Yrins', 'Obat', 'PCS (1)', 'ACTIVE', NULL, NULL),
(230, 'Kanban - Lokal', 'Kanban', 'BOX (50)', 'ACTIVE', NULL, NULL),
(231, 'Kanban - Export', 'Kanban', 'BOX (50)', 'ACTIVE', NULL, NULL),
(232, 'Kanban - ADM - Roll', 'Kanban', 'PCS (1)', 'ACTIVE', NULL, NULL),
(233, 'Kanban - ADM - Ribbon', 'Kanban', 'PCS (1)', 'ACTIVE', NULL, NULL),
(234, 'Label - Hyundai', 'Kanban', 'PCS (1)', 'ACTIVE', NULL, NULL),
(235, 'Label - Hyundai - Ribbon', 'Kanban', 'PCS (1)', 'ACTIVE', NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gams_master_tipe_barang`
--

INSERT INTO `gams_master_tipe_barang` (`id_tipe`, `tipe_barang`, `created_at`, `updated_at`, `data_status`) VALUES
(25, 'Obat', '2023-05-20 01:36:37', NULL, 'ACTIVE'),
(26, 'ATK', '2023-05-20 01:36:39', NULL, 'ACTIVE'),
(27, 'Alat Kebersihan', '2023-05-20 01:36:39', NULL, 'ACTIVE'),
(28, 'Tinta ', '2023-05-20 01:36:40', NULL, 'NOT ACTIVE'),
(29, 'Form', '2023-05-20 01:36:41', NULL, 'ACTIVE'),
(30, 'Pita', '2023-05-20 01:36:36', NULL, 'ACTIVE'),
(31, 'Kanban', '2023-07-29 01:52:56', NULL, 'ACTIVE');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gams_master_unit_barang`
--

INSERT INTO `gams_master_unit_barang` (`id`, `unit`, `jumlah`, `created_at`, `updated_at`, `data_status`) VALUES
(23, 'BOX (10)', 10, '2023-08-07 02:33:58', NULL, 'ACTIVE'),
(24, 'BOX (100)', 100, '2023-08-07 02:33:58', NULL, 'ACTIVE'),
(25, 'BOX (12)', 12, '2023-08-07 02:33:58', NULL, 'ACTIVE'),
(26, 'BOX (15)', 15, '2023-08-07 02:33:58', NULL, 'ACTIVE'),
(27, 'BOX (20)', 20, '2023-08-07 02:33:58', NULL, 'ACTIVE'),
(28, 'BOX (30)', 30, '2023-08-07 02:33:58', NULL, 'ACTIVE'),
(29, 'BOX (50)', 50, '2023-08-07 02:33:58', NULL, 'ACTIVE'),
(30, 'BOX (6)', 6, '2023-08-07 02:33:58', NULL, 'ACTIVE'),
(31, 'BUKU (1)', 1, '2023-08-07 02:33:58', NULL, 'ACTIVE'),
(32, 'BUKU (40)', 40, '2023-08-07 02:33:58', NULL, 'ACTIVE'),
(33, 'LUSIN (12)', 12, '2023-08-07 02:33:58', NULL, 'ACTIVE'),
(34, 'LUSIN (144)', 144, '2023-08-07 02:33:58', NULL, 'ACTIVE'),
(35, 'PAK (10)', 10, '2023-08-07 02:33:58', NULL, 'ACTIVE'),
(36, 'PAK (100)', 100, '2023-08-07 02:33:58', NULL, 'ACTIVE'),
(37, 'PAK (12)', 12, '2023-08-07 02:33:58', NULL, 'ACTIVE'),
(38, 'PAK (120)', 120, '2023-08-07 02:33:58', NULL, 'ACTIVE'),
(39, 'PAK (144)', 144, '2023-08-07 02:33:58', NULL, 'ACTIVE'),
(40, 'PAK (160)', 160, '2023-08-07 02:33:58', NULL, 'ACTIVE'),
(41, 'PAK (200)', 200, '2023-08-07 02:33:58', NULL, 'ACTIVE'),
(42, 'PAK (240)', 240, '2023-08-07 02:33:58', NULL, 'ACTIVE'),
(43, 'PAK (30)', 30, '2023-08-07 02:33:58', NULL, 'ACTIVE'),
(44, 'PAK (5)', 5, '2023-08-07 02:33:58', NULL, 'ACTIVE'),
(45, 'PAK (50)', 50, '2023-08-07 02:33:58', NULL, 'ACTIVE'),
(46, 'PCS (1)', 1, '2023-08-07 02:33:58', NULL, 'ACTIVE'),
(47, 'POT (1)', 1, '2023-08-07 02:33:58', NULL, 'ACTIVE'),
(48, 'RIM (1)', 1, '2023-08-07 03:18:46', NULL, 'ACTIVE'),
(49, 'ROLL (1)', 1, '2023-08-07 02:33:58', NULL, 'ACTIVE'),
(50, 'SET (2)', 2, '2023-08-07 02:33:58', NULL, 'ACTIVE');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gams_stok_barang`
--

INSERT INTO `gams_stok_barang` (`id_stok`, `nama_barang`, `kategori_barang`, `stok_barang`, `unit_barang`, `jml_per_unit`, `stok_pcs`, `data_status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Acco Plastik', 'ATK', 0, 'PAK (50)', 50, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(2, 'Acco Steinless', 'ATK', 0, 'PAK (50)', 50, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(3, 'Adress & Telephone Index', 'ATK', 0, 'BUKU (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(4, 'Amplop F4 Polos', 'ATK', 0, 'BOX (100)', 100, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(5, 'Amplop F4 Tch', 'ATK', 0, 'PAK (100)', 100, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(6, 'Amplop Gaji', 'ATK', 0, 'PAK (100)', 100, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(7, 'Amplop Kecil Polos No.110', 'ATK', 0, 'BOX (100)', 100, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(8, 'Amplop No.90 Polos', 'ATK', 0, 'BOX (100)', 100, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(9, 'Amplop No.90 Tch', 'ATK', 0, 'BOX (100)', 100, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(10, 'Ballpoint', 'ATK', 0, 'LUSIN (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(11, 'Ballpoint (isi)', 'ATK', 0, 'LUSIN (144)', 144, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(12, 'Ballpoint Biru', 'ATK', 0, 'LUSIN (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(13, 'Ballpoint Meja Tripfelo', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(14, 'Ballpoint OPF Biru', 'ATK', 0, 'LUSIN (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(15, 'Ballpoint OPF Hijau', 'ATK', 0, 'LUSIN (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(16, 'Ballpoint OPF Hitam', 'ATK', 0, 'LUSIN (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(17, 'Ballpoint OPF Merah', 'ATK', 0, 'LUSIN (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(18, 'Ballpoint OPF Ungu', 'ATK', 0, 'LUSIN (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(19, 'Ballpoint OPM Biru', 'ATK', 0, 'LUSIN (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(20, 'Ballpoint OPM Hitam', 'ATK', 0, 'LUSIN (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(21, 'Ballpoint OPM Merah', 'ATK', 0, 'LUSIN (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(22, 'Baterai 23 A', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(23, 'Baterai 9V', 'ATK', 0, 'BOX (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(24, 'Baterai A2', 'ATK', 0, 'SET (2)', 2, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(25, 'Baterai A3', 'ATK', 0, 'SET (2)', 2, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(26, 'Baterai C2', 'ATK', 0, 'SET (2)', 2, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(27, 'Baterai CR1616', 'ATK', 0, 'BOX (10)', 10, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(28, 'Baterai CR2025', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(29, 'Baterai CR2032', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(30, 'Baterai D2', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(31, 'Baterai LR41', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(32, 'Baterai LR44', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(33, 'Baterai Recharge A2', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(34, 'Baterai Recharge A3', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(35, 'Binder Clip 107', 'ATK', 0, 'BOX (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(36, 'Binder Clip 155', 'ATK', 0, 'BOX (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(37, 'Binder Clip 200', 'ATK', 0, 'BOX (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(38, 'Binder Clip 260', 'ATK', 0, 'BOX (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(39, 'Box File Bantex 4011', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(40, 'Buku Expedisi', 'ATK', 0, 'BUKU (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(41, 'Buku Folio', 'ATK', 0, 'BUKU (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(42, 'Buku Kwarto', 'ATK', 0, 'BUKU (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(43, 'Buku Saku', 'ATK', 0, 'BUKU (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(44, 'Buku Sidu', 'ATK', 0, 'BUKU (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(45, 'Bussiness File A4', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(46, 'Bussiness File F4', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(47, 'Card Case A3', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(48, 'Card Case A4', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(49, 'Clear Holder A4', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(50, 'Clear Holder F4', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(51, 'Clear Holder Felix CH1160 Folio', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(52, 'Clip Board', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(53, 'Colour Magnet', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(54, 'Continous Form 2 Fly A4', 'ATK', 0, 'RIM (500)', 500, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(55, 'Continous Form 2 Fly A5', 'ATK', 0, 'RIM (500)', 500, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(56, 'Continous Form 3 Fly A4', 'ATK', 0, 'RIM (500)', 500, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(57, 'Continous Form 3 Fly A5', 'ATK', 0, 'RIM (500)', 500, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(58, 'Cutter Besar', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(59, 'Cutter Kecil', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(60, 'Dermatograf Coklat', 'ATK', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(61, 'Dermatograp Hitam', 'ATK', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(62, 'Dermatograp Kuning', 'ATK', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(63, 'Dermatograp Putih', 'ATK', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(64, 'Divider/ Pembatas Kertas', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(65, 'Double Tipe 1\'', 'ATK', 0, 'BOX (10)', 10, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(66, 'Form Advance Payment', 'Form', 0, 'BUKU (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(67, 'Form Bukti Pengeluaran Kas', 'Form', 0, 'BUKU (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(68, 'Form Cuti', 'Form', 0, 'BUKU (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(69, 'Form Daftar Normatif Entertainment', 'Form', 0, 'BUKU (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(70, 'Form Izin Dinas Luar', 'Form', 0, 'BUKU (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(71, 'Form Laporan Biaya', 'Form', 0, 'BUKU (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(72, 'Form Laporan Biaya Prjln Dns Lr Kt', 'Form', 0, 'BUKU (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(73, 'Form Memo Polos', 'Form', 0, 'BUKU (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(74, 'Form Peminjaman Kendaraan', 'Form', 0, 'BUKU (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(75, 'Form Penerimaan Bank', 'Form', 0, 'BUKU (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(76, 'Form Pengambilan Material', 'Form', 0, 'BUKU (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(77, 'Form Pengeluaran Bank', 'Form', 0, 'BUKU (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(78, 'Form Pengeluaran Kas', 'Form', 0, 'BUKU (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(79, 'Form Permintaan Atk', 'Form', 0, 'BUKU (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(80, 'Form Permohonan Izin', 'Form', 0, 'BUKU (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(81, 'Form Rekapan S.Jalan Cust.', 'Form', 0, 'BUKU (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(82, 'Form Rekapan S.Jalan Suplyr.', 'Form', 0, 'BUKU (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(83, 'Form Risalah Rapat Hal : 1', 'Form', 0, 'BUKU (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(84, 'Form Risalah Rapat Hal : 2', 'Form', 0, 'BUKU (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(85, 'Form Service Kendaraan', 'Form', 0, 'BUKU (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(86, 'Form SPL', 'Form', 0, 'BUKU (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(87, 'Form Tanda Terima', 'Form', 0, 'BUKU (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(88, 'Form Work Order', 'Form', 0, 'BUKU (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(89, 'Formulir Kunjungan Tamu', 'Form', 0, 'BUKU (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(90, 'Gunting Besar', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(91, 'Gunting Kecil', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(92, 'Isi Cutter Besar', 'ATK', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(93, 'Isi Cutter Kecil', 'ATK', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(94, 'Isi Pensil', 'ATK', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(95, 'Kalkulator 868 L', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(96, 'Kalkulator Saku', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(97, 'Kartu Absensi', 'ATK', 0, 'PAK (100)', 100, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(98, 'Kertas A3', 'ATK', 0, 'RIM (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(99, 'Kertas A4', 'ATK', 0, 'RIM (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(100, 'Kertas A4 80 Grm', 'ATK', 0, 'RIM (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(101, 'Kertas A4 Biru', 'ATK', 0, 'RIM (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(102, 'Kertas A4 Hijau', 'ATK', 0, 'RIM (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(103, 'Kertas A4 Kuning', 'ATK', 0, 'RIM (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(104, 'Kertas A4 Merah', 'ATK', 0, 'RIM (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(105, 'Kertas A4 Pink', 'ATK', 0, 'RIM (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(106, 'Kertas Buram', 'ATK', 0, 'RIM (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(107, 'Kertas Buram F4', 'ATK', 0, 'RIM (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(108, 'Kertas Concord Merah', 'ATK', 0, 'RIM (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(109, 'Kertas Concord Pink', 'ATK', 0, 'RIM (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(110, 'Kertas F4', 'ATK', 0, 'RIM (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(111, 'Kertas Fax 210 x 30', 'ATK', 0, 'RIM (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(112, 'Kertas Fax 216 x 30', 'ATK', 0, 'RIM (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(113, 'Kertas Magnet', 'ATK', 0, 'RIM (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(114, 'Kertas Sticker', 'ATK', 0, 'RIM (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(115, 'Kop Surat TCH', 'ATK', 0, 'RIM (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(116, 'Kwitansi Besar', 'ATK', 0, 'BUKU (40)', 40, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(117, 'Kwitansi Kecil', 'ATK', 0, 'BUKU (40)', 40, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(118, 'Lakban Hitam 1\'', 'ATK', 0, 'ROLL (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(119, 'Lakban Hitam 2\'', 'ATK', 0, 'ROLL (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(120, 'Lakban Kuning', 'ATK', 0, 'ROLL (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(121, 'Lem Kertas', 'ATK', 0, 'BOX (30)', 30, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(122, 'Map dengan Acco Biru (5001)', 'ATK', 0, 'PAK (50)', 50, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(123, 'Map dengan Acco Merah (5001)', 'ATK', 0, 'PAK (50)', 50, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(124, 'Map tanpa Acco', 'ATK', 0, 'PAK (50)', 50, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(125, 'Name Card Case Besar', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(126, 'Name Card Case Kecil', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(127, 'Ordner A4 Biru', 'ATK', 0, 'BOX (15)', 15, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(128, 'Ordner A5', 'ATK', 0, 'BOX (15)', 15, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(129, 'Ordner F4 Biru', 'ATK', 0, 'BOX (15)', 15, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(130, 'Ordner F4 Hitam', 'ATK', 0, 'BOX (15)', 15, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(131, 'Pembolong Kertas Besar No.85', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(132, 'Pembolong Kertas Kecil No.30', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(133, 'Penggaris', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(134, 'Penggaris Plat (Metal)', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(135, 'Penghapus Panaboard', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(136, 'Penghapus Pensil', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(137, 'Penghapus White Board', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(138, 'Pensil', 'ATK', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(139, 'Pesawat Telephone Ktr', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(140, 'Pita (U. Nama Brg Inventaris)', 'Pita', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(141, 'Pita Amano Absen Manual', 'Pita', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(142, 'Pita Amano Surat Jalan', 'Pita', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(143, 'Pita Brother', 'Pita', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(144, 'Pita Key Amano', 'Pita', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(145, 'Pita Printer LQ 2190', 'Pita', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(146, 'Pita Printer LQ 310', 'Pita', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(147, 'Pita Printer LQ300+II', 'Pita', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(148, 'Pita Printer LQ300+II (Cartige)', 'Pita', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(149, 'Pita Printer LX 300+', 'Pita', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(150, 'Pita Printer LX 300+ (Cartige)', 'Pita', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(151, 'Pita Printer LX 310', 'Pita', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(152, 'Plastik Jilid / Plastik Mika A4', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(153, 'Plastik Jilid / Plastik Mika F4', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(154, 'Plastik Laminating A3', 'ATK', 0, 'PAK (100)', 100, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(155, 'Plastik Laminating A4', 'ATK', 0, 'PAK (100)', 100, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(156, 'Plastik TSOP A3 2036 08 (Horizontal)', 'ATK', 0, 'PAK (100)', 100, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(157, 'Plastik TSOP A3 2037 08 (Vertikal)', 'ATK', 0, 'PAK (100)', 100, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(158, 'Plastik TSOP A4', 'ATK', 0, 'PAK (100)', 100, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(159, 'Post It 656', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(160, 'Post It Sign Here', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(161, 'Post It Warna', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(162, 'Push Pin', 'ATK', 0, 'PAK (30)', 30, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(163, 'Spidol Paint Marker Biru', 'ATK', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(164, 'Spidol Paint Marker Coklat', 'ATK', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(165, 'Spidol Paint Marker Hijau', 'ATK', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(166, 'Spidol Paint Marker Kuning Kecil', 'ATK', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(167, 'Spidol Paint Marker Merah', 'ATK', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(168, 'Spidol Paint Marker Pink', 'ATK', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(169, 'Spidol Paint Marker Putih Kecil', 'ATK', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(170, 'Spidol Paint Marker Silver', 'ATK', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(171, 'Spidol Paint Marker Ungu', 'ATK', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(172, 'Spidol Snowman Hitam', 'ATK', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(173, 'Spidol Snowman Kuning', 'ATK', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(174, 'Spidol Snowman Putih', 'ATK', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(175, 'Spidol White Board Biru', 'ATK', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(176, 'Spidol White Board Hitam', 'ATK', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(177, 'Spidol White Board Merah', 'ATK', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(178, 'Spidol White Permanen Hitam', 'ATK', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(179, 'Spidol White Permanen Merah', 'ATK', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(180, 'Stabilo Biru', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(181, 'Stabilo Hijau', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(182, 'Stabilo Kuning', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(183, 'Stamp Pad', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(184, 'Stapler (isi)', 'ATK', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(185, 'Stapler (isi) Besar No. 03', 'ATK', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(186, 'Stapler (Pencabut Stapler)', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(187, 'Stapler Besar', 'ATK', 0, 'PAK (10)', 10, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(188, 'Stapler Kecil', 'ATK', 0, 'PAK (10)', 10, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(189, 'Tas Trimitra Chitrahasta', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(190, 'Tinta Refill Biru', 'ATK', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(191, 'Tinta Refill Hitam', 'ATK', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(192, 'Tinta Refill Merah', 'ATK', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(193, 'Tinta Trodat Biru', 'ATK', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(194, 'Tinta Trodat Hijau', 'ATK', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(195, 'Tinta Trodat Kuning', 'ATK', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(196, 'Tinta Trodat Merah', 'ATK', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(197, 'Tipe Dispenser 1\'', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(198, 'Tipe Dispenser 2\'', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(199, 'Tipe X', 'ATK', 0, 'BOX (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(200, 'Tray 3 Susun (Eleghent Try)', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(201, 'Trigonal Clip (Kecil)', 'ATK', 0, 'BOX (10)', 10, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(202, 'Trigonal Clip No.05 (Besar)', 'ATK', 0, 'BOX (10)', 10, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(203, 'Trodat 1020', 'ATK', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(204, 'Zebra Line', 'ATK', 0, 'ROLL (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(205, 'Obat - Alkohol', 'Obat', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(206, 'Obat - Balsem', 'Obat', 0, 'POT (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(207, 'Obat - Betadin', 'Obat', 0, 'BOX (6)', 6, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(208, 'Obat - Bio Plasenton', 'Obat', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(209, 'Obat - Bodrek', 'Obat', 0, 'PAK (240)', 240, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(210, 'Obat - Decolgen', 'Obat', 0, 'PAK (100)', 100, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(211, 'Obat - Entrostop', 'Obat', 0, 'BKS (144)', 144, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(212, 'Obat - Hansaplast', 'Obat', 0, 'PAK (100)', 100, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(213, 'Obat - Hansaplast Roll', 'Obat', 0, 'BOX (20)', 20, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(214, 'Obat - Insidal', 'Obat', 0, 'PAK (50)', 50, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(215, 'Obat - Insto', 'Obat', 0, 'PAK (12)', 12, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(216, 'Obat - Kain Kasa', 'Obat', 0, 'PAK (100)', 100, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(217, 'Obat - Kapas', 'Obat', 0, 'PAK (5)', 5, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(218, 'Obat - Konidin', 'Obat', 0, 'PAK (160)', 160, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(219, 'Obat - Mextril', 'Obat', 0, 'PAK (100)', 100, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(220, 'Obat - Neuralgin', 'Obat', 0, 'PAK (100)', 100, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(221, 'Obat - Promag', 'Obat', 0, 'PAK (120)', 120, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(222, 'Obat - Paramex', 'Obat', 0, 'PAK (200)', 200, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(223, 'Obat - Procold', 'Obat', 0, 'PAK (144)', 144, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(224, 'Obat - Rivanol', 'Obat', 0, 'PAK (10)', 10, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(225, 'Obat - Sanaflu', 'Obat', 0, 'PAK (100)', 100, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(226, 'Obat - Saridon', 'Obat', 0, 'PAK (120)', 120, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(227, 'Obat - Ultraflu', 'Obat', 0, 'PAK (100)', 100, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(228, 'Obat - Yrins', 'Obat', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(229, 'Kanban - Lokal', 'Kanban', 0, 'BOX (50)', 50, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(230, 'Kanban - Export', 'Kanban', 0, 'BOX (50)', 50, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(231, 'Kanban - ADM - Roll', 'Kanban', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(232, 'Kanban - ADM - Ribbon', 'Kanban', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(233, 'Label - Hyundai', 'Kanban', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL),
(234, 'Label - Hyundai - Ribbon', 'Kanban', 0, 'PCS (1)', 1, 0, 'ACTIVE', 'Fathur Rahmansyah', '2023-04-26', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Triggers `gams_stok_keluar`
--
DELIMITER $$
CREATE TRIGGER `gams_stok_keluar_after_insert` AFTER INSERT ON `gams_stok_keluar` FOR EACH ROW BEGIN
	UPDATE gams_stok_barang SET stok_pcs = stok_pcs - NEW.jumlah 
	WHERE nama_barang = NEW.nama_barang ;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `gams_stok_keluar_bagi stok _unit` AFTER INSERT ON `gams_stok_keluar` FOR EACH ROW BEGIN
	UPDATE gams_stok_barang SET stok_barang = stok_pcs / jml_per_unit
	WHERE nama_barang = NEW.nama_barang ;
END
$$
DELIMITER ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Table structure for table `gams_stok_masuk_void`
--

CREATE TABLE `gams_stok_masuk_void` (
  `id_gsm_log` int(11) NOT NULL,
  `no_transaksi` varchar(20) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tipe` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `note` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Triggers `gams_stok_masuk_void`
--
DELIMITER $$
CREATE TRIGGER `gams_stok_masuk_void` AFTER INSERT ON `gams_stok_masuk_void` FOR EACH ROW BEGIN
	UPDATE gams_stok_barang SET stok_pcs = stok_pcs - NEW.jumlah 
	WHERE nama_barang = NEW.nama_barang ;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `gams_stok_masuk_void_bagi_unit` AFTER INSERT ON `gams_stok_masuk_void` FOR EACH ROW BEGIN
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
  `migration` varchar(255) NOT NULL,
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
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
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
  `user_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `printer`
--

CREATE TABLE `printer` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_fa` varchar(50) NOT NULL,
  `purc_date` date DEFAULT NULL,
  `purc_ppb` varchar(50) NOT NULL,
  `serial_number` varchar(20) DEFAULT NULL,
  `printer_merk` varchar(100) NOT NULL,
  `printer_type` varchar(50) DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `code` varchar(10) NOT NULL,
  `status` varchar(50) NOT NULL,
  `info` varchar(50) DEFAULT NULL,
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
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
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
  `user_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_dept`
--

CREATE TABLE `tb_dept` (
  `id` int(10) UNSIGNED NOT NULL,
  `division_id` int(11) NOT NULL,
  `dept` varchar(255) NOT NULL,
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
  `divisi` varchar(255) NOT NULL,
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
  `section` varchar(255) NOT NULL,
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
  `role` varchar(45) NOT NULL,
  `name` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `nik` varchar(255) NOT NULL,
  `nik_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `role`, `name`, `section`, `position`, `nik`, `nik_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Fathur Rahmansyah', 'IT', 'MGR', '5211', NULL, '$2y$10$mFd/MmGV8nElaHO7wGEMI.K79Pxoyhk9qcnN9LhGZ/me8iZNz/7Gi', 'Z4BrkjzrXRnwOfmvRjdM8D9ewFVASZn5EZXSMjOzSlZCEGnSKPi2MjAPvWn2', '2021-03-08 21:20:24', '2021-03-08 21:20:24'),
(8, 'admin', 'Hanifan Musliman', 'IT', '', '5254', NULL, '$2y$10$6bdnOdo.fIjGjxlSoU6ZqeoIurkaPNXmSLZyJ5HOe51X6DlCTlpTe', 'sbsqJIKAtK1ukQSRvcfFrGJOts94oeLrRBCUuwYE5GZxgnf2F7TmnM7lAgsM', '2021-11-24 03:48:26', '2021-11-24 03:48:26'),
(10, 'user', 'Test', 'IT', 'STAFF', '1111', NULL, '$2y$10$CUtNOr17iklSSR4GvRdH9u2R5c3G6.DrsIfGHS.IZaoTWmwmt1MsK', '5t2JiDWtC3nYx6oUDj0dBiXkL6xu4sGvelRirotkhUtBA3ER5Tf5lzxSlJ5g', '2022-02-21 00:24:21', '2022-02-21 00:24:21'),
(16, 'admin', 'M Rizqi Nur Alif', 'IT', '', '5479', NULL, '$2y$10$6Yg6qjXD31gBMaXsK2Lk7eU0HOMv36/GtuStQVw47Reclt4eFh2UG', 'YWnoCkA39uqGqxH4aeqANDRxKsEkG2q0GiVbleYJ7Gk0nDYJj4OuTeyeFOrq', '2022-09-20 07:19:11', '2022-09-20 07:19:11'),
(17, 'admin', 'Gina Andriyani', 'GA', '', '5243', NULL, '$2y$10$pe32Wm1hC0A8MkQliivtBeThLzDzy9yvAVrKsjC0GVZZNiSooEAj.', 'tDOmiDfJPLMY5FrNFQBkMBY2RtDZKBWA66AKWOMjacRXMsa1RK86uomXvmgm', '2023-07-25 04:27:42', '2023-07-25 04:27:42');

-- --------------------------------------------------------

--
-- Table structure for table `users_old`
--

CREATE TABLE `users_old` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
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
  ADD PRIMARY KEY (`id_stok_in`) USING BTREE;

--
-- Indexes for table `gams_stok_masuk_void`
--
ALTER TABLE `gams_stok_masuk_void`
  ADD PRIMARY KEY (`id_gsm_log`);

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
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2279;

--
-- AUTO_INCREMENT for table `gams_master_barang_log`
--
ALTER TABLE `gams_master_barang_log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `gams_master_tipe_barang`
--
ALTER TABLE `gams_master_tipe_barang`
  MODIFY `id_tipe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `gams_master_unit_barang`
--
ALTER TABLE `gams_master_unit_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `gams_permintaan_barang`
--
ALTER TABLE `gams_permintaan_barang`
  MODIFY `id_perm_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `gams_stok_barang`
--
ALTER TABLE `gams_stok_barang`
  MODIFY `id_stok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `gams_stok_keluar`
--
ALTER TABLE `gams_stok_keluar`
  MODIFY `id_stok_out` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `gams_stok_masuk`
--
ALTER TABLE `gams_stok_masuk`
  MODIFY `id_stok_in` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `gams_stok_masuk_void`
--
ALTER TABLE `gams_stok_masuk_void`
  MODIFY `id_gsm_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
