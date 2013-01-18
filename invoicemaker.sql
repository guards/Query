-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2013 at 07:52 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `invoicemaker`
--

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `adress` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `paymentType` varchar(255) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `total` varchar(255) DEFAULT NULL,
  `vat` varchar(255) DEFAULT NULL,
  `total_sum` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=greek AUTO_INCREMENT=17 ;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `name`, `adress`, `phone`, `paymentType`, `date`, `total`, `vat`, `total_sum`) VALUES
(1, 'Petar Stoqnow', 'ot sofiq', '+8541896152', 'cash', '2013-01-11 06:16:58', '53,53', '10,71', '64,24'),
(2, 'Ivan Ivanov', 'ot varnaq', '784189165', 'credit', '2013-01-11 06:18:02', '29,80', '5,96', '35,76'),
(3, 'Mariq Avramova', 'ot Plovdiv', '8946189651', 'cash', '2013-01-11 06:21:17', '32,80', '6,56', '39,36'),
(4, 'Dimitur Ivanov', 'ot Ruse', '8451324856', 'cash', '2013-01-11 06:22:39', '264,00', '52,80', '316,80'),
(5, 'Han Krum', 'ot kulata', '1226531256', 'cash', '2013-01-11 06:25:28', '137,00', '27,40', '164,40'),
(6, 'ha', 'h0', '1', 'credit', '2013-01-11 06:30:17', '6,00', '1,20', '7,20'),
(7, 'sjakdkw', 'dwadwad', '5348', 'cash', '2013-01-11 06:33:07', '10,00', '2,00', '12,00'),
(8, 'kjdwlwakd', 'lhjdawlkd', '3543', 'cash', '2013-01-11 06:34:03', '10,00', '2,00', '12,00'),
(9, 'wdadwa', 'dwadaw', '64555', 'credit', '2013-01-11 06:44:19', '6,00', '1,20', '7,20'),
(10, 'dwadwa', 'dwad', 'dwada', 'credit', '2013-01-11 09:16:14', '64,00', '12,80', '76,80'),
(11, 'dwadwa', 'dwad', 'dwada', 'credit', '2013-01-11 09:16:35', '68,50', '13,70', '82,20'),
(12, 'dwad', 'dwadwa', '465', 'credit', '2013-01-11 09:17:37', '16,00', '3,20', '19,20'),
(13, '??????????????', '??????? ????????', '0035799304330', 'cash', '2013-01-15 08:04:04', '300,80', '60,16', '360,96'),
(14, '??????????????', '??????? ????????', '0035799304330', 'cash', '2013-01-15 08:04:05', '300,80', '60,16', '360,96'),
(15, '??????????????', '??????? ????????', '0035799304330', 'cash', '2013-01-15 08:04:05', '300,80', '60,16', '360,96'),
(16, '??????????????', '??????? ????????', '0035799304330', 'cash', '2013-01-15 08:04:06', '300,80', '60,16', '360,96');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `amount` decimal(10,3) DEFAULT NULL,
  `price` decimal(10,3) DEFAULT NULL,
  `total` decimal(10,3) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=greek AUTO_INCREMENT=82 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `amount`, `price`, `total`, `order_id`) VALUES
(16, 'krasavici', 5.000, 0.300, 1.500, 1),
(17, 'banani', 10.000, 2.500, 25.000, 1),
(18, 'qgodi', 1.000, 7.250, 7.250, 1),
(19, 'mandarini', 2.000, 0.990, 1.980, 1),
(20, 'kartofi', 20.000, 0.380, 7.600, 1),
(21, '4u6ki', 3.000, 3.400, 10.200, 1),
(22, 'chere6i', 1.000, 9.800, 9.800, 2),
(23, 'qgodi', 3.000, 2.500, 7.500, 2),
(24, 'malini', 1.000, 12.500, 12.500, 2),
(25, 'luk', 1.000, 1.300, 1.300, 3),
(26, 'chesun', 1.000, 13.500, 13.500, 3),
(27, 'kopur', 1.000, 8.200, 8.200, 3),
(28, 'magdanoz', 1.000, 9.800, 9.800, 3),
(29, 'dwada', 1.000, 2.000, 2.000, 4),
(30, 'dwadaw', 2.000, 3.000, 6.000, 4),
(31, 'wdawdawa', 3.000, 3.000, 9.000, 4),
(32, 'awadawdawd', 4.000, 5.000, 20.000, 4),
(33, 'awdawdawdawd', 5.000, 6.000, 30.000, 4),
(34, 'awdawdawdaw', 6.000, 4.000, 24.000, 4),
(35, 'dawdawdawd', 7.000, 2.000, 14.000, 4),
(36, 'awdawdawd', 8.000, 2.000, 16.000, 4),
(37, 'awdawdawd', 9.000, 4.000, 36.000, 4),
(38, 'awdawdawda', 5.000, 6.000, 30.000, 4),
(39, 'wdawdawdaw', 3.000, 4.000, 12.000, 4),
(40, 'dawdawda', 2.000, 3.000, 6.000, 4),
(41, 'dawdawdaw', 2.000, 2.000, 4.000, 4),
(42, 'dawdawdawda', 4.000, 3.000, 12.000, 4),
(43, 'wdawdawda', 5.000, 5.000, 25.000, 4),
(44, 'wdawdawdawdawdawdawdaw', 6.000, 3.000, 18.000, 4),
(45, 'idajwi;dluj', 5.000, 3.000, 15.000, 5),
(46, 'rsthstdy', 2.000, 7.000, 14.000, 5),
(47, 'trgztytr', 3.000, 4.000, 12.000, 5),
(48, 'tytrzrtycujvjyhtre', 7.000, 1.000, 7.000, 5),
(49, 'dgfxhzhgsdxcb ', 3.000, 7.000, 21.000, 5),
(50, 'hjyrsgdxbvchdsts', 5.000, 3.000, 15.000, 5),
(51, 'fxcvjtyartsfdxcgm', 9.000, 1.000, 9.000, 5),
(52, 'hdjthcxvmcjtehadbc', 2.000, 3.000, 6.000, 5),
(53, 'mjtaehdncxhmsj', 5.000, 5.000, 25.000, 5),
(54, 'aethdgxnsyjtdgnxc', 3.000, 3.000, 9.000, 5),
(55, 'grearg', 2.000, 2.000, 4.000, 5),
(56, 'NEWLY ADDED', 3.000, 2.000, 6.000, 6),
(57, 'dwadadw', 5.000, 2.000, 10.000, 7),
(58, '55dwa5', 5.000, 2.000, 10.000, 8),
(59, '5', 32.000, 2.000, 64.000, 10),
(60, '5', 32.000, 2.000, 64.000, 11),
(61, 'dwadaw', 2.000, 3.000, 6.000, 12),
(62, '??????', 3.200, 0.600, 1.920, 13),
(63, 'domati', 10.000, 0.300, 3.000, 13),
(64, 'cads', 50.000, 0.050, 2.500, 13),
(65, 'pdowadk', 8.550, 1.350, 11.543, 13),
(66, 'dwada', 542.000, 0.520, 281.840, 13),
(67, '??????', 3.200, 0.600, 1.920, 14),
(68, 'domati', 10.000, 0.300, 3.000, 14),
(69, 'cads', 50.000, 0.050, 2.500, 14),
(70, 'pdowadk', 8.550, 1.350, 11.543, 14),
(71, 'dwada', 542.000, 0.520, 281.840, 14),
(72, '??????', 3.200, 0.600, 1.920, 15),
(73, 'domati', 10.000, 0.300, 3.000, 15),
(74, 'cads', 50.000, 0.050, 2.500, 15),
(75, 'pdowadk', 8.550, 1.350, 11.543, 15),
(76, 'dwada', 542.000, 0.520, 281.840, 15),
(77, '??????', 3.200, 0.600, 1.920, 16),
(78, 'domati', 10.000, 0.300, 3.000, 16),
(79, 'cads', 50.000, 0.050, 2.500, 16),
(80, 'pdowadk', 8.550, 1.350, 11.543, 16),
(81, 'dwada', 542.000, 0.520, 281.840, 16);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
