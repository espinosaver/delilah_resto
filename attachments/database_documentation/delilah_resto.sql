-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2020 at 08:32 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `delilah_resto`
--

-- --------------------------------------------------------

--
-- Table structure for table `orderr`
--

CREATE TABLE `orderr` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_payment_method` varchar(50) NOT NULL,
  `order_status` varchar(50) NOT NULL,
  `order_creation_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderr`
--

INSERT INTO `orderr` (`order_id`, `user_id`, `order_payment_method`, `order_status`, `order_creation_date`) VALUES
(1, 41, 'Efectivo', 'Nuevo', '2020-09-16 12:03:00'),
(2, 41, 'Tarjeta', 'Confirmado', '2020-09-16 13:22:50'),
(3, 41, 'Efectivo', 'Preparando', '2020-09-16 13:23:19'),
(4, 41, 'Tarjeta', 'Enviando', '2020-09-16 13:24:03'),
(5, 42, 'Efectivo', 'Entregado', '2020-09-16 13:25:11');

-- --------------------------------------------------------

--
-- Table structure for table `order_product_relation`
--

CREATE TABLE `order_product_relation` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_product_relation`
--

INSERT INTO `order_product_relation` (`order_id`, `product_id`, `quantity`) VALUES
(1, 21, 1),
(1, 22, 9),
(2, 21, 1),
(2, 28, 2),
(3, 21, 1),
(3, 28, 2),
(4, 25, 2),
(5, 24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_description` varchar(200) NOT NULL,
  `product_price` double NOT NULL,
  `product_picture_path` varchar(1000) NOT NULL,
  `product_available` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_description`, `product_price`, `product_picture_path`, `product_available`) VALUES
(20, 'Ajiaco Santafereño', 'Delicioso ajiaco Bogotano acompañado con arroz, aguacate y arepa', 15000, '', 1),
(21, 'Bandeja Paisa', 'Deliciosa bandeja Paisa tamaño familiar', 20000, '', 1),
(22, 'Chuleta Valluna', 'Deliciosa chuleta de cerdo Valluna acompañada de arroz y platano salado', 18000, '', 1),
(24, 'Mamona Llanera', 'Delicioasa mamona asada a la Llanera acompañada de arroz, papa, yuca y guacamole', 25000, '', 1),
(25, 'Fritanga', 'Deliciosa picada de fritanga con rellena, longaniza, envuelto, chuchuyo, papa criolla, arepa de coclo, cerdo, pollo, y carne de res', 30000, '', 1),
(26, 'Mute de queso Cordobéz', 'Deliciosa sopa de queso con yuca, ñame, papa sabanera, cebolla y queso costeño colombiano', 13000, '', 1),
(27, 'Changuas', 'Deliciosa changua tamaño familiar', 15000, '', 1),
(28, 'Arroz con pollo', 'Delicioso arroz con pollo familiar', 40000, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_first_name` varchar(100) NOT NULL,
  `user_last_name` varchar(100) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_phone_number` varchar(100) NOT NULL,
  `user_address` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_first_name`, `user_last_name`, `user_email`, `user_phone_number`, `user_address`, `username`, `user_password`, `user_role`) VALUES
(39, 'Ramón', 'Espinosa', '2010espinosa.e@gmail.com', '3168683692', 'Cra 58d # 128b - 01 Int 5 Apto 401', 'rames2010', 'ramonEspinosa1609', 'Administrator'),
(40, 'Alejandra', 'Martinez', 'alecomsp@gmail.com', '3168237919', 'Cra 58d # 128b - 01 Int 5 Apto 401', 'alemart92', 'alemartinezSp2008', 'Administrator'),
(41, 'Ramón', 'Espinosa', 'enrisierra@outlook.com', '3158206223', 'Av Cll 127 # 56b - 15 Int 3 Apto 510', 'esierra2013', 'polASierra2013', 'User'),
(42, 'Mary', 'Varón', 'maryvaronabogada@gmail.com', '3158206219', 'Av Cll 127 # 56b - 15 Int 3 Apto 510', 'maryabovar16', 'luciana1672', 'User'),
(43, 'Ramses', 'Espinosa', 'ramsespinosa@gmail.com', '3158683621', 'Av Cll 154 # 88-21', 'rames2018', 'r@m1994', 'User'),
(44, 'Ramses', 'Varón', 'ramsesvarone1@gmail.com', '3158683621', 'Av Cll 154 # 88-21', 'ramse3sv2019', 'r@m1994', 'User'),
(45, 'Felipe', 'Varela', 'felipevar88@gmail.com', '3133435621', 'Cra 24 # 38-32', 'varonfelipe100', 'pipemin45', 'User'),
(46, 'Andres', 'Varón', 'varonrmed2011@gmail.com', '3158595623', 'Cra 14 # 88-22', 'varonmed2011', 'medicinedoctor', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `user_product_relation`
--

CREATE TABLE `user_product_relation` (
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_product_relation`
--

INSERT INTO `user_product_relation` (`user_id`, `product_id`) VALUES
(39, 20),
(39, 21),
(40, 20),
(40, 21),
(41, 20),
(41, 21),
(42, 20),
(43, 20),
(44, 25),
(45, 24),
(46, 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orderr`
--
ALTER TABLE `orderr`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_product_relation`
--
ALTER TABLE `order_product_relation`
  ADD PRIMARY KEY (`order_id`,`product_id`,`quantity`),
  ADD KEY `product_id_1` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`,`product_name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_product_relation`
--
ALTER TABLE `user_product_relation`
  ADD PRIMARY KEY (`user_id`,`product_id`),
  ADD KEY `product_id_2` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderr`
--
ALTER TABLE `orderr`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `order_product_relation`
--
ALTER TABLE `order_product_relation`
  ADD CONSTRAINT `order_id` FOREIGN KEY (`order_id`) REFERENCES `orderr` (`order_id`),
  ADD CONSTRAINT `product_id_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `user_product_relation`
--
ALTER TABLE `user_product_relation`
  ADD CONSTRAINT `product_id_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `user_id_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
