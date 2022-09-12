-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2020-11-14 11:58:46
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
-- 資料庫： `group_c_db`
--

-- --------------------------------------------------------

--
-- 資料表結構 `coupon_status`
--

CREATE TABLE `coupon_status` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `coupon1_status` int(11) NOT NULL DEFAULT 0 COMMENT '優惠券!領取狀態, 0:未領, 1:已領取',
  `coupon2_status` int(11) NOT NULL DEFAULT 0 COMMENT '優惠券2領取狀態, 0:未領, 1:已領取'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `coupon_status`
--

INSERT INTO `coupon_status` (`sid`, `member_sid`, `coupon1_status`, `coupon2_status`) VALUES
(47, 4, 0, 0),
(61, 2, 0, 0),
(81, 3, 0, 0),
(97, 1, 0, 0),
(305, 21, 0, 0);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `coupon_status`
--
ALTER TABLE `coupon_status`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `coupon_status` (`member_sid`) USING BTREE;

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `coupon_status`
--
ALTER TABLE `coupon_status`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=697;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `coupon_status`
--
ALTER TABLE `coupon_status`
  ADD CONSTRAINT `coupon_status` FOREIGN KEY (`member_sid`) REFERENCES `member_list` (`member_sid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
