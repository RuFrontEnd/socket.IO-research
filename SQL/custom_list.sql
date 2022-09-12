-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2020 at 12:42 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `group_c_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `custom_list`
--

CREATE TABLE `custom_list` (
  `sid` int(11) NOT NULL,
  `productName` varchar(15) NOT NULL,
  `categories` varchar(15) NOT NULL,
  `price` int(15) NOT NULL,
  `protein` int(15) NOT NULL,
  `fat` int(15) NOT NULL,
  `cabohydrate` int(15) NOT NULL,
  `calories` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_list`
--

INSERT INTO `custom_list` (`sid`, `productName`, `categories`, `price`, `protein`, `fat`, `cabohydrate`, `calories`) VALUES
(1, '香甜白飯', 'rice', 15, 3, 1, 28, 130),
(2, '養生五穀米', 'rice', 20, 6, 2, 30, 162),
(3, '健康紅藜麥', 'rice', 25, 6, 2, 27, 151),
(4, '中歐香料嫩雞胸', 'meet', 100, 25, 1, 12, 156),
(5, '日式燒雞腿', 'meet', 90, 24, 2, 4, 203),
(6, '火烤萊姆蝦', 'meet', 120, 24, 0, 2, 103),
(7, '白煮蛋', 'egg', 15, 2, 1, 7, 46),
(8, '溏心蛋', 'egg', 25, 7, 3, 4, 62),
(9, '綠色嫩花椰', 'vegetable', 20, 2, 0, 5, 25),
(10, '清炒高麗菜', 'vegetable', 20, 2, 0, 6, 25),
(11, '黃金玉米粒', 'vegetable', 20, 4, 2, 19, 111),
(12, '營養小白菜', 'vegetable', 20, 1, 0, 2, 12),
(13, '爽口紅茄', 'vegetable', 20, 1, 0, 6, 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `custom_list`
--
ALTER TABLE `custom_list`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `custom_list`
--
ALTER TABLE `custom_list`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
