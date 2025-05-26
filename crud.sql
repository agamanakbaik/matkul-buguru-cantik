-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2025 at 05:37 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `penjualan_produk_lama`
--

CREATE TABLE `penjualan_produk_lama` (
  `id` int(11) NOT NULL,
  `id_penjualan` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `jumlah_terjual` int(11) DEFAULT NULL,
  `total_penjualan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penjualan_produk_lama`
--

INSERT INTO `penjualan_produk_lama` (`id`, `id_penjualan`, `user_id`, `jumlah_terjual`, `total_penjualan`) VALUES
(32, 30, 2, 2, 100),
(34, 31, 2, 2, 100),
(35, 32, 2, 2, 100),
(36, 33, 2, 2, 100);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `name`, `price`) VALUES
(30, 2, 'vanilla cake', 20000),
(31, 2, 'aigner blue', 60000),
(32, 2, 'creed aventus', 35000),
(33, 2, 'dunhill blue', 30000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `photo`) VALUES
(2, NULL, NULL, '$2b$10$8XkuRLnepaDy1CXMuY76quBjqFOESryx4jNi8QYjVhF/L3JvLNCcS', NULL),
(4, 'agam2', 'agam2@mail.com', '$2b$10$OKCBFs8B2NkeZjBXei1YJ.rq/WYz1.EPucnpR16hS0LTBQ/1ez.NC', NULL),
(5, 'agam3', 'agam3@mail.com', '$2b$10$UQZ9IhY4gaW2V/BxgO/VV.yEZj6cRM2hqXXZQslTV7UFrSwKrLObK', NULL),
(7, 'agam5', 'agam5@mail.com', '$2b$10$p6vvFKVBDxxBDRBVUv5n0em5fCvRHlRQVg90ThfU68fD20k4ybv6G', NULL),
(8, 'agam6', 'agam6@mail.com', '$2b$10$/hc30pCoBwqmLMVBGWUdUemouQm2BeGRRGyKHG/cn3YcRcUbSr0Ka', NULL),
(9, 'agam7', 'agam7@mail.com', '$2b$10$JmFuhe0Fw1MvZxPBqJc8ZOdEWihdUO1HvMuuK3pQQT/B53zKU4qDO', NULL),
(10, 'agam', 'agam@mail.com', '$2b$10$tilN.CSyhJ1ovoHOBW7ae.q/xcEyeWUQyAPBC3aWzQ1o7O.i4ZpQq', NULL),
(13, 'agam', 'agam1213@gmail.com', '$2b$10$LIrxBJ5ABgQH.7v8nclHHuzlYNOr83aT2tKeljr0OyTPQvo8WdIZa', NULL),
(14, 'agam', 'agam1121@gmailcom', '$2b$10$vTGQhqEW4lQxL4.U9Qgxje/SQ/8SUnR2fOMAasjFJYw9vRznNPu7S', NULL),
(16, 'adit', 'adit123@gmail.com', '$2b$10$drquWcwQHnsMlPx.2/y83e9PHZUdYtJmOqMm3WOrhTdFvbWS3BA.y', NULL),
(17, 'agam123', 'agam@gmailcom', '$2b$10$sEYjl9QyRmgbO6JSWGepGO1Ufwsd8QbHDlkBR6ho9vEcgSi/mWd9G', '1748196201059.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `penjualan_produk_lama`
--
ALTER TABLE `penjualan_produk_lama`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_penjualan` (`id_penjualan`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `penjualan_produk_lama`
--
ALTER TABLE `penjualan_produk_lama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `penjualan_produk_lama`
--
ALTER TABLE `penjualan_produk_lama`
  ADD CONSTRAINT `penjualan_produk_lama_ibfk_1` FOREIGN KEY (`id_penjualan`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `penjualan_produk_lama_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
