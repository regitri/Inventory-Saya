-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2026 at 02:30 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `punya_saya`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `kd_kat` varchar(6) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `kd_kat`, `category_name`) VALUES
(4, 'K001', 'aku Mie instan'),
(5, 'K002', 'Aku Minuman'),
(6, 'K003', 'Aku Makanan ringan'),
(7, 'K004', 'Aku alat mandi'),
(8, 'K005', 'aku alat bersih bersih');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `product_name` varchar(150) DEFAULT NULL,
  `stock` int(11) DEFAULT 0,
  `min_stock` int(11) DEFAULT 5,
  `price` int(11) DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_code`, `product_name`, `stock`, `min_stock`, `price`, `gambar`, `created_at`, `updated_at`) VALUES
(6, 4, 'P001', 'mie nyemek', 14, 3, 7500, '71d5328b817b73655204dd32c57608f0.jpg', '2026-05-31 03:09:35', NULL),
(7, 4, 'P002', 'mie aduh kena geprek', 12, 5, 5000, '498373450d0df0762ddf3d94dedf38c0.png', '2026-05-31 03:12:39', NULL),
(8, 4, 'P003', 'mie kerien spayi ', 20, 5, 7500, '545e1f95774c00efc1f9dadf9dab9349.jpeg', '2026-05-31 03:17:52', NULL),
(9, 4, 'P004', 'mie jumbo', 32, 5, 7500, 'fa4e14abe24a921d84c4c6e852facffc.png', '2026-05-31 03:20:46', NULL),
(10, 5, 'P005', 'botol air', 54, 10, 3000, 'd69d8f066075efe5cfb8cc2fdcd2ad86.jpg', '2026-05-31 03:25:05', NULL),
(11, 5, 'P006', 'minis madu', 100, 25, 7500, '2ebe548f4562801d4e7d94e526a59076.jpg', '2026-05-31 03:27:04', NULL),
(12, 5, 'P007', 'Good day', 24, 10, 6500, '2ea691081d17d690c89f92110db9f351.jpg', '2026-05-31 03:32:17', NULL),
(13, 5, 'P008', 'Evil good day', 30, 5, 8500, '85df2c2176ebe30327820be382503e75.jpg', '2026-05-31 03:33:15', NULL),
(14, 6, 'P009', 'nutella bready', 32, 15, 11000, '18a2727afed07ebe4fa6abc40d4a766f.jpg', '2026-05-31 03:47:35', NULL),
(15, 6, 'P010', 'Oreeeeeeeeeeeeeeeeeeeeo ', 80, 10, 13500, '57e63231ac83e5953fba90e8f790d393.jpg', '2026-05-31 03:57:59', NULL),
(16, 6, 'P011', 'sip 👍', 50, 10, 2500, 'a0c54ed358155a4b8866e79e84431a2b.jpg', '2026-05-31 04:07:17', NULL),
(17, 6, 'P012', ' Danish Monde Butter Cookies', 43, 10, 34999, '69ba5cca6c28c23eecbe4be55246dd3d.jpg', '2026-05-31 04:11:14', NULL),
(19, 7, 'P013', 'sabun', 43, 20, 5000, '93cc44c916ac700965fef52c91816f1f.jpg', '2026-05-31 05:17:41', NULL),
(20, 7, 'P014', 'sampo', 45, 15, 7500, '76794f511b8e76c4eba5c2b75c749f05.jpg', '2026-05-31 05:19:53', NULL),
(21, 7, 'P015', 'pasta gigi', 30, 20, 15000, 'ebbba9b371bd868dff112d427cbc8fd5.jpg', '2026-05-31 05:22:13', NULL),
(22, 7, 'P016', 'sikat gigi', 40, 23, 75000, '2cd2eb5b562b2e6d2cdd4b3256d16672.jpg', '2026-05-31 05:23:21', NULL),
(23, 8, 'P017', 'sapu', 5, 5, 20000, '14a751d4507c82f94aa6acbf38f6ac82.jpg', '2026-05-31 05:27:07', NULL),
(24, 8, 'P018', 'sikat gigi WC', 44, 5, 25000, '7fa6b7de4873cd3ce30cbe308a60db3d.jpg', '2026-05-31 05:29:01', NULL),
(25, 8, 'P019', 'pembersih lantai', 50, 20, 15000, '40daa6e7108d82c705c97ad73260e9ca.jpg', '2026-05-31 05:31:26', NULL),
(26, 8, 'P020', 'pel', 50, 15, 24997, '8965dbbd571987902ef93bfefa087867.jpg', '2026-05-31 05:33:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stock_logs`
--

CREATE TABLE `stock_logs` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `change_type` enum('ADD','EDIT','REDUCE') DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `stock_before` int(11) DEFAULT NULL,
  `stock_after` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_logs`
--

INSERT INTO `stock_logs` (`id`, `product_id`, `change_type`, `qty`, `stock_before`, `stock_after`, `note`, `created_at`, `created_by`) VALUES
(4, 6, 'REDUCE', 1, 15, 14, '', '2026-06-03 06:34:00', 4),
(5, 15, 'ADD', 30, 50, 80, '', '2026-06-05 10:40:32', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','staff') DEFAULT 'staff',
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `is_active`, `created_at`) VALUES
(4, 'Reg', 'akupunyaduah@gmail.com', '$2y$10$DPLKNu0kdKQ1NLuP.mfOY.uVCUS9lxu/UqFzMi/2Na/HK/IwbnMy.', 'admin', 1, '2026-05-15 16:35:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kd_kat` (`kd_kat`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_logs`
--
ALTER TABLE `stock_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `stock_logs`
--
ALTER TABLE `stock_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
