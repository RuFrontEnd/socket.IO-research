-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2020-11-03 12:58:27
-- 伺服器版本： 10.4.14-MariaDB
-- PHP 版本： 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `iiiproject`
--

-- --------------------------------------------------------

--
-- 資料表結構 `group_1`
--

CREATE TABLE `group_1` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `group_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `member_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `take_date` date NOT NULL,
  `take_time` datetime NOT NULL,
  `take_way` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `take_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `group_1`
--

INSERT INTO `group_1` (`sid`, `member_sid`, `group_name`, `member_name`, `mobile`, `take_date`, `take_time`, `take_way`, `take_address`, `created_at`) VALUES
(1, 1, '煞氣絕倫C小隊', '王小明', '0900-000-022', '2020-11-03', '0000-00-00 00:00:00', '自取', '台北市大安區復興南路一段390號', '2020-09-20 22:42:33'),
(2, 2, '煞氣絕倫C小隊', '王小明', '0900-000-022', '2020-11-03', '0000-00-00 00:00:00', '自取', '台北市大安區復興南路一段390號', '2020-09-20 22:42:33'),
(3, 3, '煞氣絕倫C小隊', '王小明', '0900-000-022', '2020-11-03', '0000-00-00 00:00:00', '自取', '台北市大安區復興南路一段390號', '2020-09-20 22:42:33');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `group_1`
--
ALTER TABLE `group_1`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `group_1`
--
ALTER TABLE `group_1`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
