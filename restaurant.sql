-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2019 at 06:50 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_menu`
--

CREATE TABLE `add_menu` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `item_price` varchar(100) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `r_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `add_menu`
--

INSERT INTO `add_menu` (`item_id`, `item_name`, `item_price`, `item_image`, `r_id`) VALUES
(1, 'Zinger Burger', '2900.ks', 'zinger.jpg', 1),
(2, 'Hash Brown', '1500.ks', 'hashbrown.jpg', 1),
(3, 'Set 1', '2900.ks', 'set1.jpg', 1),
(4, 'Double Pop', '2500.ks', 'double pop.jpg', 1),
(5, 'Salted Eggtart', '1500.ks', 'saltedeggtart.jpg', 1),
(7, 'Lychee Rose', '2900.ks', 'lychee rose.jpg', 1),
(9, 'Cole Slaw', '3000.ks', 'coleslaw.jpg', 1),
(11, 'Set A', '12000.ks++', '01.jpg', 2),
(12, 'Set B', '12000.ks++', '02.jpg', 2),
(13, 'Set C', '12000.ks++', '03.jpg', 2),
(14, 'Set D', '12000.ks++', '04.jpg', 2),
(15, 'Set E', '12000.ks++', '05.jpg', 2),
(16, 'Set F', '12000.ks++', '06.jpg', 2),
(17, 'Set G', '12000.ks++', '07.jpg', 2),
(18, 'ice coffee', '1200', 'Chrysanthemum.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `add_restaurant`
--

CREATE TABLE `add_restaurant` (
  `r_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `u_id` int(11) NOT NULL,
  `r_name` varchar(100) NOT NULL,
  `r_address` varchar(100) NOT NULL,
  `r_branch` varchar(100) NOT NULL,
  `r_hotline` varchar(100) NOT NULL,
  `food_type` varchar(100) NOT NULL,
  `r_type` varchar(100) NOT NULL,
  `r_image` varchar(255) NOT NULL,
  `point` double NOT NULL,
  `approve` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `add_restaurant`
--

INSERT INTO `add_restaurant` (`r_id`, `email`, `u_id`, `r_name`, `r_address`, `r_branch`, `r_hotline`, `food_type`, `r_type`, `r_image`, `point`, `approve`) VALUES
(1, 'owner@gmail.com', 2, 'KFC Myanmar', 'No.375, Bogyoke Aung San Road, Pabedan Township, Yangon', 'KFC Hlaedan, KFC Junction Square, KFC SanPya, KFC KanTarYar, KFC AungMingalar', '09-966600600', 'Fast Food', 'Family', 'kfc.jpg', 7, 1),
(2, 'shwekaung@gmail.com', 4, 'Shwe Kaung Hotpot & BBQ Buffet', 'People\'s Park, Yangon', 'Moe Kaung, Yankin', '09-420805895', 'HotPot and BBQ Buffet', 'Family', 'sk_pp.jpg', 0.5, 0),
(3, 'iceberry@gmail.com', 5, 'Ice Berry', 'Hlaedan Township', 'Myanmar Plaza, Tarmwae, Myaynikone ', '01516506', 'Fast Food', 'Friend', 'iceberry.jpg.jpg', 3, 0),
(4, 'harry@gmail.com', 6, 'Harry Bar ', 'Myanmar Plaza', 'Junction Square', '09-777708395', 'Bar', 'Friend', 'harry.jpg.jpg', 1, 1),
(5, 'ykko@gmail.com', 7, 'YKKO', 'Hlaedan Township', 'No.488, Khay Mar Ti Road, North Oaklar', '09-440133330', 'HotPot and BBQ Buffet', 'Family', 'ykko.jpg', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bad`
--

CREATE TABLE `bad` (
  `id` int(11) NOT NULL,
  `r_id` int(25) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bad`
--

INSERT INTO `bad` (`id`, `r_id`, `title`) VALUES
(1, 3, 'bad'),
(2, 3, 'bad service'),
(3, 3, ''),
(4, 4, 'bad atmosphere'),
(5, 3, 'slow service');

-- --------------------------------------------------------

--
-- Table structure for table `food_type`
--

CREATE TABLE `food_type` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food_type`
--

INSERT INTO `food_type` (`id`, `name`) VALUES
(1, 'Korean food'),
(2, 'Chinese Food'),
(3, 'Bar'),
(4, 'Traditional Food'),
(5, 'Japanese Food'),
(6, 'Fast Food'),
(7, 'Hotpot'),
(8, 'Indian Food'),
(9, 'HotPot and BBQ Buffet');

-- --------------------------------------------------------

--
-- Table structure for table `good`
--

CREATE TABLE `good` (
  `id` int(11) NOT NULL,
  `r_id` int(25) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `good`
--

INSERT INTO `good` (`id`, `r_id`, `title`) VALUES
(1, 0, 'good'),
(2, 1, 'good'),
(3, 3, 'nice'),
(4, 3, 'nice'),
(5, 4, 'good vibes'),
(6, 3, 'nice foods'),
(7, 3, 'good food and service');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(11) NOT NULL,
  `u_name` varchar(100) NOT NULL,
  `u_email` varchar(255) NOT NULL,
  `u_pass` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `u_name`, `u_email`, `u_pass`, `role`) VALUES
(1, 'Phoo', 'phoo@gmail.com', '$2y$10$Ul0SFKgK95sQoUYpNe.kxOszEsNNFAMa0hBiS1vNrpUExAx/CkVuy', 'admin'),
(2, 'owner', 'owner@gmail.com', '$2y$10$aG87dprCG5p/i.dKiZQNVudQVUeUKzk5J18vKoXH2XL/4Rj3GJwXC', 'owner'),
(3, 'admin', 'myatnoe211@gmail.com', '$2y$10$r1knsz7vTwH7oNjn3T6i5.cKAgqby1C9a6tJ.Li8BjRqXs4RAlBvq', 'owner'),
(4, 'ShweKaung', 'shwekaung@gmail.com', '$2y$10$L2iEdaVoaTv0YvjU/OmjcO1hmFTM18Cn3iEC97CJ.8yiOZ2Y3/2f.', 'owner'),
(5, 'IceBerry', 'iceberry@gmail.com', '$2y$10$Gqg72GCxfTMOLLoDg1LDPeRB8/pEaSnbMppMVQzaPSy6Tch.7RMGi', 'owner'),
(6, 'harry', 'harry@gmail.com', '$2y$10$q7hGkMF5aSIXcPSsh5RcQ.HQLdxTfHorxPmaITOpNRQT68AOIeAfC', 'owner'),
(7, 'YKKO', 'ykko@gmail.com', '$2y$10$ANnX3iQbXKLYh6dYzpY9NuWr7vyiS4PLeSsixo3Tc0StIJbDqTVPy', 'owner'),
(8, 'Zayy', 'zayy@gmail.com', '$2y$10$gJdP4TnV5fXWAfYPCghWWOJWLvGn5ytP7YkloHIwT8aYWuYKAFTuW', 'owner');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_menu`
--
ALTER TABLE `add_menu`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `add_restaurant`
--
ALTER TABLE `add_restaurant`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `bad`
--
ALTER TABLE `bad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_type`
--
ALTER TABLE `food_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `good`
--
ALTER TABLE `good`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_menu`
--
ALTER TABLE `add_menu`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `add_restaurant`
--
ALTER TABLE `add_restaurant`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bad`
--
ALTER TABLE `bad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `food_type`
--
ALTER TABLE `food_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `good`
--
ALTER TABLE `good`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
