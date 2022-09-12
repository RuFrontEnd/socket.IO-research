-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2020-11-04 03:16:48
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
-- 資料表結構 `coupon_list`
--

CREATE TABLE `coupon_list` (
  `sid` int(11) NOT NULL,
  `coupon_type` int(11) NOT NULL COMMENT '優惠券類型1-5(扣款金額$10-50)	',
  `coupon_issue` datetime NOT NULL DEFAULT current_timestamp() COMMENT '發放時間',
  `coupon_due` datetime NOT NULL COMMENT '過期時間',
  `member_sid` int(11) NOT NULL COMMENT '會員sid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `coupon_list`
--

INSERT INTO `coupon_list` (`sid`, `coupon_type`, `coupon_issue`, `coupon_due`, `member_sid`) VALUES
(1, 1, '2020-11-03 16:06:08', '2020-12-03 16:05:47', 1),
(2, 3, '2020-11-03 16:06:10', '2020-12-03 16:05:47', 1),
(3, 5, '2020-11-03 20:53:40', '2020-12-03 16:05:47', 2),
(4, 5, '2020-11-03 20:53:44', '2020-12-03 16:05:47', 4);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `coupon_list`
--
ALTER TABLE `coupon_list`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `member_sid` (`member_sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `coupon_list`
--
ALTER TABLE `coupon_list`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `coupon_list`
--
ALTER TABLE `coupon_list`
  ADD CONSTRAINT `member` FOREIGN KEY (`member_sid`) REFERENCES `member_list` (`member_sid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
