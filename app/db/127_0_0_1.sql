-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 31, 2023 at 08:07 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php-pdo-crud-herkansing`
--
CREATE DATABASE IF NOT EXISTS `php-pdo-crud-herkansing` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `php-pdo-crud-herkansing`;

-- --------------------------------------------------------

--
-- Table structure for table `poundforpound`
--

DROP TABLE IF EXISTS `poundforpound`;
CREATE TABLE IF NOT EXISTS `poundforpound` (
  `Id` tinyint NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Ranking` smallint NOT NULL,
  `Length` varchar(100) NOT NULL,
  `Weight` varchar(20) NOT NULL,
  `Age` tinyint NOT NULL,
  `WinsByKnockout` tinyint NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `poundforpound`
--

INSERT INTO `poundforpound` (`Id`, `Name`, `Ranking`, `Length`, `Weight`, `Age`, `WinsByKnockout`) VALUES
(1, 'Alexander Volkanovski', 2, '1.68', '66', 34, 12),
(2, 'Jon Jones', 1, '1.93', '112', 35, 10),
(3, 'Islam Makhachev', 3, '1.78', '70', 31, 4),
(4, 'Leon Edwards', 4, '1.83', '77', 31, 7),
(5, 'Isreal Adesanya', 5, '1.93', '84', 33, 15);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
