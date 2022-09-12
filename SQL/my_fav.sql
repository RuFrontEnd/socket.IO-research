-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2020-11-04 03:16:36
-- 伺服器版本： 10.4.13-MariaDB
-- PHP 版本： 7.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `group_c`
--

-- --------------------------------------------------------

--
-- 資料表結構 `my_fav`
--

CREATE TABLE `my_fav` (
  `sid` int(11) NOT NULL,
  `product_sid` int(11) NOT NULL COMMENT '商品',
  `comments` int(11) NOT NULL COMMENT '評論數目',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT '建立時間',
  `member_sid` int(11) NOT NULL COMMENT '會員sid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `my_fav`
--

INSERT INTO `my_fav` (`sid`, `product_sid`, `comments`, `created_at`, `member_sid`) VALUES
(1, 1, 123, '2020-11-03 15:58:56', 1),
(2, 1, 204, '2020-11-03 15:59:00', 3),
(3, 5, 238, '2020-11-03 20:54:54', 4),
(4, 7, 238, '2020-11-03 20:54:56', 4);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `my_fav`
--
ALTER TABLE `my_fav`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `member_sid` (`member_sid`),
  ADD KEY `product_sid` (`product_sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `my_fav`
--
ALTER TABLE `my_fav`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `my_fav`
--
ALTER TABLE `my_fav`
  ADD CONSTRAINT `member_sid` FOREIGN KEY (`member_sid`) REFERENCES `member_list` (`member_sid`),
  ADD CONSTRAINT `product` FOREIGN KEY (`product_sid`) REFERENCES `product` (`sid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
