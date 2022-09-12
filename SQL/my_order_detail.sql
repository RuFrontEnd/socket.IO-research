-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2020-11-14 12:31:30
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
-- 資料庫： `group_c_db`
--

-- --------------------------------------------------------

--
-- 資料表結構 `my_order_detail`
--

CREATE TABLE `my_order_detail` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `order_sid` int(11) NOT NULL,
  `product_sid` int(11) NOT NULL,
  `product_amount` int(11) NOT NULL,
  `product_name` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_image` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `my_order_detail`
--

INSERT INTO `my_order_detail` (`sid`, `member_sid`, `order_sid`, `product_sid`, `product_amount`, `product_name`, `product_price`, `product_image`) VALUES
(1, 1, 1, 1, 1, '中歐香料嫩雞胸', 170, '00_bento-chicken-breast'),
(2, 1, 1, 13, 1, '激瘦下午茶沙拉', 130, '12_afternoon'),
(3, 1, 2, 14, 3, '生酮沙拉', 130, '13_salad'),
(4, 1, 2, 3, 10, '醬烤厚切1983黑豚', 175, '00_bento-chicken-breast'),
(5, 1, 2, 1, 4, '中歐香料嫩雞胸', 170, '00_bento-chicken-breast'),
(6, 1, 2, 2, 3, '日式燒雞腿', 150, '01_bento-chicken-thigh'),
(7, 1, 3, 1, 1, '中歐香料嫩雞胸', 170, '00_bento-chicken-breast'),
(8, 1, 3, 3, 5, '醬烤厚切1983黑豚', 175, '00_bento-chicken-breast'),
(9, 1, 3, 15, 3, '蒜烤鮭魚沙拉', 150, '14_salmon'),
(10, 1, 3, 14, 1, '生酮沙拉', 130, '13_salad'),
(11, 1, 4, 1, 1, '中歐香料嫩雞胸', 170, '00_bento-chicken-breast'),
(12, 1, 4, 3, 5, '醬烤厚切1983黑豚', 175, '00_bento-chicken-breast'),
(13, 1, 5, 2, 1, '日式燒雞腿', 150, '01_bento-chicken-thigh'),
(14, 1, 5, 3, 8, '醬烤厚切1983黑豚', 175, '00_bento-chicken-breast'),
(15, 1, 6, 1, 1, '中歐香料嫩雞胸', 170, '00_bento-chicken-breast'),
(16, 1, 6, 2, 3, '日式燒雞腿', 150, '01_bento-chicken-thigh'),
(17, 1, 6, 3, 5, '醬烤厚切1983黑豚', 175, '00_bento-chicken-breast'),
(18, 1, 6, 14, 1, '生酮沙拉', 130, '13_salad'),
(19, 1, 6, 15, 1, '蒜烤鮭魚沙拉', 150, '14_salmon'),
(20, 1, 6, 13, 1, '激瘦下午茶沙拉', 130, '12_afternoon'),
(21, 1, 7, 13, 1, '激瘦下午茶沙拉', 130, '12_afternoon'),
(22, 1, 7, 14, 1, '生酮沙拉', 130, '13_salad'),
(23, 1, 7, 3, 25, '醬烤厚切1983黑豚', 175, '00_bento-chicken-breast'),
(24, 1, 7, 1, 3, '中歐香料嫩雞胸', 170, '00_bento-chicken-breast'),
(25, 1, 8, 14, 1, '生酮沙拉', 130, '13_salad'),
(26, 1, 8, 13, 1, '激瘦下午茶沙拉', 130, '12_afternoon'),
(27, 1, 9, 1, 1, '中歐香料嫩雞胸', 170, '00_bento-chicken-breast'),
(28, 1, 9, 3, 5, '醬烤厚切1983黑豚', 175, '00_bento-chicken-breast'),
(29, 1, 10, 13, 2, '激瘦下午茶沙拉', 130, '12_afternoon'),
(30, 1, 10, 15, 1, '蒜烤鮭魚沙拉', 150, '14_salmon'),
(31, 1, 10, 14, 1, '生酮沙拉', 130, '13_salad'),
(32, 1, 11, 13, 1, '激瘦下午茶沙拉', 130, '12_afternoon'),
(33, 1, 11, 1, 1, '中歐香料嫩雞胸', 170, '00_bento-chicken-breast'),
(34, 1, 11, 2, 3, '日式燒雞腿', 150, '01_bento-chicken-thigh'),
(35, 1, 11, 3, 5, '醬烤厚切1983黑豚', 175, '00_bento-chicken-breast'),
(36, 1, 12, 13, 1, '激瘦下午茶沙拉', 130, '12_afternoon'),
(37, 1, 12, 15, 1, '蒜烤鮭魚沙拉', 150, '14_salmon'),
(38, 1, 13, 14, 4, '生酮沙拉', 130, '13_salad'),
(39, 1, 13, 15, 1, '蒜烤鮭魚沙拉', 150, '14_salmon'),
(40, 1, 14, 13, 1, '激瘦下午茶沙拉', 130, '12_afternoon'),
(41, 1, 14, 2, 3, '日式燒雞腿', 150, '01_bento-chicken-thigh'),
(42, 1, 14, 3, 5, '醬烤厚切1983黑豚', 175, '00_bento-chicken-breast'),
(43, 1, 15, 13, 1, '激瘦下午茶沙拉', 130, '12_afternoon'),
(44, 1, 15, 1, 6, '中歐香料嫩雞胸', 170, '00_bento-chicken-breast'),
(45, 1, 15, 3, 5, '醬烤厚切1983黑豚', 175, '00_bento-chicken-breast'),
(46, 1, 16, 14, 10, '生酮沙拉', 130, '13_salad'),
(47, 1, 16, 13, 1, '激瘦下午茶沙拉', 130, '12_afternoon'),
(48, 1, 17, 1, 1, '中歐香料嫩雞胸', 170, '00_bento-chicken-breast'),
(49, 1, 17, 2, 3, '日式燒雞腿', 150, '01_bento-chicken-thigh'),
(50, 1, 17, 3, 5, '醬烤厚切1983黑豚', 175, '00_bento-chicken-breast'),
(51, 1, 18, 13, 1, '激瘦下午茶沙拉', 130, '12_afternoon'),
(52, 1, 18, 1, 6, '中歐香料嫩雞胸', 170, '00_bento-chicken-breast'),
(53, 1, 18, 2, 3, '日式燒雞腿', 150, '01_bento-chicken-thigh'),
(54, 1, 18, 3, 5, '醬烤厚切1983黑豚', 175, '00_bento-chicken-breast'),
(55, 1, 19, 14, 1, '生酮沙拉', 130, '13_salad'),
(56, 1, 19, 15, 4, '蒜烤鮭魚沙拉', 150, '14_salmon'),
(57, 1, 20, 13, 1, '激瘦下午茶沙拉', 130, '12_afternoon'),
(58, 1, 20, 14, 1, '生酮沙拉', 130, '13_salad'),
(59, 1, 20, 15, 1, '蒜烤鮭魚沙拉', 150, '14_salmon'),
(60, 1, 20, 1, 2, '中歐香料嫩雞胸', 170, '00_bento-chicken-breast'),
(61, 1, 20, 2, 6, '日式燒雞腿', 150, '01_bento-chicken-thigh'),
(62, 1, 20, 3, 10, '醬烤厚切1983黑豚', 175, '00_bento-chicken-breast'),
(63, 1, 21, 1, 1, '中歐香料嫩雞胸', 170, '00_bento-chicken-breast'),
(64, 1, 21, 2, 3, '日式燒雞腿', 150, '01_bento-chicken-thigh'),
(65, 1, 21, 3, 5, '醬烤厚切1983黑豚', 175, '00_bento-chicken-breast'),
(66, 1, 21, 13, 4, '激瘦下午茶沙拉', 130, '12_afternoon'),
(67, 1, 22, 1, 1, '中歐香料嫩雞胸', 170, '00_bento-chicken-breast'),
(68, 1, 22, 2, 3, '日式燒雞腿', 150, '01_bento-chicken-thigh'),
(69, 1, 22, 3, 5, '醬烤厚切1983黑豚', 175, '00_bento-chicken-breast'),
(70, 1, 23, 55, 1, '生酮沙拉', 130, '13_salad'),
(71, 1, 23, 56, 4, '蒜烤鮭魚沙拉', 150, '14_salmon'),
(72, 1, 24, 40, 1, '激瘦下午茶沙拉', 130, '12_afternoon'),
(73, 1, 24, 41, 3, '日式燒雞腿', 150, '01_bento-chicken-thigh'),
(74, 1, 24, 42, 5, '醬烤厚切1983黑豚', 175, '00_bento-chicken-breast'),
(75, 1, 25, 72, 1, '激瘦下午茶沙拉', 130, '12_afternoon'),
(76, 1, 25, 73, 3, '日式燒雞腿', 150, '01_bento-chicken-thigh'),
(77, 1, 25, 74, 5, '醬烤厚切1983黑豚', 175, '00_bento-chicken-breast');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `my_order_detail`
--
ALTER TABLE `my_order_detail`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `order_sid` (`order_sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `my_order_detail`
--
ALTER TABLE `my_order_detail`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `my_order_detail`
--
ALTER TABLE `my_order_detail`
  ADD CONSTRAINT `order_sid` FOREIGN KEY (`order_sid`) REFERENCES `my_order` (`sid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
