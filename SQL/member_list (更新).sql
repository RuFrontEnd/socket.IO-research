-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2020-11-06 02:02:51
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
-- 資料表結構 `member_list`
--

CREATE TABLE `member_list` (
  `member_sid` int(11) NOT NULL,
  `account` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `county` varchar(255) NOT NULL COMMENT '縣市',
  `district` varchar(255) NOT NULL COMMENT '區域',
  `address` varchar(255) NOT NULL COMMENT '配送地址',
  `beastie_coin` int(11) DEFAULT 0 COMMENT '怪獸幣',
  `take_way` int(11) NOT NULL DEFAULT 1 COMMENT '1:自取, 2外送'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `member_list`
--

INSERT INTO `member_list` (`member_sid`, `account`, `password`, `name`, `birthday`, `mobile`, `email`, `county`, `district`, `address`, `beastie_coin`, `take_way`) VALUES
(1, 'kate1234', 'kk1234', '林凱特', '1990-04-07', '0910123456', 'kate.lin1234@test.com', '台北市', '大安區', '忠孝東路一段50號', 0, 1),
(2, 'shane1234', 'ss1234', '李尚恩', '1995-11-02', '0953000123', 'shane.lee1234@test.com', '台北市', '信義區', '辛亥路三段58號', 0, 1),
(3, 'adam1234', 'aa1234', '蘇亞當', '1997-09-01', '0928456456', 'adam.su1234@test.com', '台北市', '信義區', '濟南路二段178號', 0, 1),
(4, 'arron1234', 'rr1234', '張亞倫', '1998-08-08', '0910111234', 'arron.chang1234@test.com', '台北市', '大安區', 'xx路xx號', 0, 1);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `member_list`
--
ALTER TABLE `member_list`
  ADD PRIMARY KEY (`member_sid`),
  ADD KEY `account` (`account`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `member_list`
--
ALTER TABLE `member_list`
  MODIFY `member_sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
