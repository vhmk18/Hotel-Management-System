-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 04, 2025 at 08:54 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `java_hotel_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `Name` varchar(40) NOT NULL,
  `Address` varchar(40) NOT NULL,
  `Phone` bigint NOT NULL,
  `Type` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
CREATE TABLE IF NOT EXISTS `restaurant` (
  `itemNo` int NOT NULL AUTO_INCREMENT,
  `itemName` varchar(20) NOT NULL,
  `Price` int NOT NULL,
  `Type` varchar(10) NOT NULL,
  PRIMARY KEY (`itemNo`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`itemNo`, `itemName`, `Price`, `Type`) VALUES
(1, 'SHAHI PANEER', 500, 'MEAL'),
(2, 'CHOCOLATE FONDUE', 200, 'MEAL'),
(3, 'MANCHOW SOUP', 400, 'MEAL'),
(4, 'PANEER MANCHURIAN', 350, 'MEAL'),
(5, 'PIRI-PIRI CHICKEN', 600, 'MEAL'),
(6, 'PINA-COLADA', 250, 'DRINK'),
(7, 'ARIZONA TEA', 150, 'DRINK'),
(8, 'CAPPUCCINO', 180, 'DRINK'),
(9, 'ESPRESSO', 250, 'DRINK'),
(10, 'MELON JUICE', 100, 'DRINK'),
(11, 'test', 100, 'test'),
(12, 'test', 100, 'test'),
(13, 'test3', 100, 'test3'),
(14, 'test4', 100, 'test4');

-- --------------------------------------------------------

--
-- Table structure for table `restaurantcustomer`
--

DROP TABLE IF EXISTS `restaurantcustomer`;
CREATE TABLE IF NOT EXISTS `restaurantcustomer` (
  `custName` varchar(20) NOT NULL,
  `custAddr` varchar(20) NOT NULL,
  `Phone` bigint NOT NULL,
  `Meal` varchar(20) NOT NULL,
  `Drink` varchar(20) NOT NULL,
  `Price` int NOT NULL,
  `status` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `restaurantcustomer`
--

INSERT INTO `restaurantcustomer` (`custName`, `custAddr`, `Phone`, `Meal`, `Drink`, `Price`, `status`) VALUES
('yug', 'dfff', 3453535, 'CHOCOLATE FONDUE', 'ARIZONA TEA', 350, 1);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
CREATE TABLE IF NOT EXISTS `room` (
  `roomNo` int NOT NULL AUTO_INCREMENT,
  `roomType` varchar(20) NOT NULL,
  `bedType` varchar(20) NOT NULL,
  `Price` int NOT NULL,
  PRIMARY KEY (`roomNo`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`roomNo`, `roomType`, `bedType`, `Price`) VALUES
(1, 'SUITE', 'QUEEN', 9500),
(2, 'DELUXE', 'KING', 7500),
(3, 'AC', 'KING', 8000),
(4, 'NON-AC', 'DOUBLE', 3500),
(5, 'SUITE', 'SINGLE', 5500),
(6, 'DELUXE', 'DOUBLE', 7000),
(7, 'AC', 'QUEEN', 6500),
(8, 'NON-AC', 'SINGLE', 5500),
(9, 'test', 'test', 100),
(10, 'test1', 'test1', 234);

-- --------------------------------------------------------

--
-- Table structure for table `roomcutomer`
--

DROP TABLE IF EXISTS `roomcutomer`;
CREATE TABLE IF NOT EXISTS `roomcutomer` (
  `name` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `phone` bigint NOT NULL,
  `roomtype` varchar(10) NOT NULL,
  `bedtype` varchar(20) NOT NULL,
  `price` int NOT NULL,
  `status` int NOT NULL,
  `roomno` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`roomno`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `roomcutomer`
--

INSERT INTO `roomcutomer` (`name`, `address`, `phone`, `roomtype`, `bedtype`, `price`, `status`, `roomno`) VALUES
('ram', 'ggg', 4553453, 'SUITE', 'QUEEN', 47500, 1, 1),
('yug', 'fff', 4535345, 'SUITE', 'QUEEN', 66500, 1, 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
