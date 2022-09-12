-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2020-11-03 12:58:44
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
-- 資料表結構 `group_3`
--

CREATE TABLE `group_3` (
  `sid` int(11) NOT NULL,
  `group_sid` int(11) NOT NULL,
  `group_member_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_amount` int(11) NOT NULL,
  `product_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `group_3`
--

INSERT INTO `group_3` (`sid`, `group_sid`, `group_member_name`, `product_name`, `product_amount`, `product_price`) VALUES
(1, 1, '李小華', '玫瑰岩鹽烤雞', 3, 150),
(2, 1, '李小華', '玫瑰岩鹽烤雞', 3, 150),
(3, 1, '李小華', '玫瑰岩鹽烤雞', 3, 150),
(4, 1, '李小華', '玫瑰岩鹽烤雞', 3, 150);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `group_3`
--
ALTER TABLE `group_3`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `group_sid2` (`group_sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `group_3`
--
ALTER TABLE `group_3`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `group_3`
--
ALTER TABLE `group_3`
  ADD CONSTRAINT `group_sid2` FOREIGN KEY (`group_sid`) REFERENCES `group_1` (`sid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
