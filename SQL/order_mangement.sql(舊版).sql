-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2020-11-03 12:58:57
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
-- 資料表結構 `order_mangement`
--

CREATE TABLE `order_mangement` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `order_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `toal_amount` int(11) NOT NULL,
  `subtoal_price` int(11) NOT NULL,
  `shipping` int(11) NOT NULL,
  `beastie_coin` int(11) NOT NULL,
  `tableware` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_price` int(11) NOT NULL,
  `take_date` date NOT NULL,
  `take_time` time NOT NULL,
  `take_way` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `take_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `take_person` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `receipt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `order_mangement`
--

INSERT INTO `order_mangement` (`sid`, `member_sid`, `order_state`, `order_name`, `toal_amount`, `subtoal_price`, `shipping`, `beastie_coin`, `tableware`, `total_price`, `take_date`, `take_time`, `take_way`, `take_address`, `take_person`, `mobile`, `receipt`, `created_at`) VALUES
(1, 0, '已送達', 'aaa', 10, 1300, 0, 10, '是', 1290, '2020-11-03', '12:00:00', '自取', '台北市大安區復興南路一段390號', '王小明', '0900-000-000', '二聯式發票', '0000-00-00 00:00:00'),
(2, 0, '已送達', 'aaa', 10, 1300, 0, 10, '是', 1290, '2020-11-03', '12:00:00', '自取', '台北市大安區復興南路一段390號', '王小明', '0900-000-000', '二聯式發票', '0000-00-00 00:00:00'),
(3, 0, '已送達', 'aaa', 10, 1300, 0, 10, '是', 1290, '2020-11-03', '12:00:00', '自取', '台北市大安區復興南路一段390號', '王小明', '0900-000-000', '二聯式發票', '0000-00-00 00:00:00'),
(4, 0, '已送達', 'aaa', 10, 1300, 0, 10, '是', 1290, '2020-11-03', '12:00:00', '自取', '台北市大安區復興南路一段390號', '王小明', '0900-000-000', '二聯式發票', '0000-00-00 00:00:00'),
(5, 0, '已送達', 'aaa', 10, 1300, 0, 10, '是', 1290, '2020-11-03', '12:00:00', '自取', '台北市大安區復興南路一段390號', '王小明', '0900-000-000', '二聯式發票', '0000-00-00 00:00:00'),
(6, 0, '已送達', 'aaa', 10, 1300, 0, 10, '是', 1290, '2020-11-03', '12:00:00', '自取', '台北市大安區復興南路一段390號', '王小明', '0900-000-000', '二聯式發票', '0000-00-00 00:00:00'),
(7, 0, '已送達', 'aaa', 10, 1300, 0, 10, '是', 1290, '2020-11-03', '12:00:00', '自取', '台北市大安區復興南路一段390號', '王小明', '0900-000-000', '二聯式發票', '0000-00-00 00:00:00'),
(8, 0, '已送達', 'aaa', 10, 1300, 0, 10, '是', 1290, '2020-11-03', '12:00:00', '自取', '台北市大安區復興南路一段390號', '王小明', '0900-000-000', '二聯式發票', '2020-08-29 00:41:33'),
(9, 0, '已送達', 'aaa', 10, 1300, 0, 10, '是', 1290, '2020-11-03', '12:00:00', '自取', '台北市大安區復興南路一段390號', '王小明', '0900-000-000', '二聯式發票', '2020-08-29 00:41:33'),
(10, 0, '已送達', 'aaa', 10, 1300, 0, 10, '是', 1290, '2020-11-03', '12:00:00', '自取', '台北市大安區復興南路一段390號', '王小明', '0900-000-000', '二聯式發票', '2020-08-29 00:41:33'),
(11, 0, '已送達', 'aaa', 10, 1300, 0, 10, '是', 1290, '2020-11-03', '12:00:00', '自取', '台北市大安區復興南路一段390號', '王小明', '0900-000-000', '二聯式發票', '2020-08-29 00:41:33'),
(12, 0, '已送達', 'aaa', 10, 1300, 0, 10, '是', 1290, '2020-11-03', '12:00:00', '自取', '台北市大安區復興南路一段390號', '王小明', '0900-000-000', '二聯式發票', '2020-08-29 00:41:33'),
(13, 0, '已送達', 'aaa', 10, 1300, 0, 10, '是', 1290, '2020-11-03', '12:00:00', '自取', '台北市大安區復興南路一段390號', '王小明', '0900-000-000', '二聯式發票', '2020-08-29 00:41:33'),
(14, 0, '已送達', 'aaa', 10, 1300, 0, 10, '是', 1290, '2020-11-03', '12:00:00', '自取', '台北市大安區復興南路一段390號', '王小明', '0900-000-000', '二聯式發票', '2020-08-29 00:41:33');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `order_mangement`
--
ALTER TABLE `order_mangement`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_mangement`
--
ALTER TABLE `order_mangement`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
