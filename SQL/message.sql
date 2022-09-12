-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2020 年 11 月 14 日 08:33
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
-- 資料表結構 `message`
--

CREATE TABLE `message` (
  `sid` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `product_sid` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `starRating` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `message`
--

INSERT INTO `message` (`sid`, `created_at`, `product_sid`, `content`, `starRating`, `member_sid`) VALUES
(1, '2020-09-10 07:26:25', 3, '每天吃都不會膩！也太厲害了吧～～', 5, 1),
(2, '2020-09-06 15:46:38', 2, '恰到好處的7分熟擁有5分熟的口感，一顆接一顆，午餐也好滿足！！天天吃我都不會怕胖～～', 0, 2),
(3, '2020-09-06 00:00:00', 5, '又香又嫩，不同於一般松阪豬，柔嫩而彈牙，一吃上癮！', 0, 3),
(4, '2020-09-06 16:35:40', 2, '太好吃囉', 0, 2),
(5, '2020-09-07 18:39:39', 4, '好好吃的便當！！', 0, 2),
(6, '2020-09-08 07:44:23', 4, '什麼時候還有優惠呀～好期待每天的菜色', 3, 1),
(7, '2020-09-08 00:00:00', 8, '飄散著淡雅七葉蘭香的米飯，熱飯軟、冷飯Q，各有特色，搭配軟滑細緻的頂級肉品，更能凸顯肉的鮮甜滋味。', 0, 2),
(8, '2020-09-10 04:21:00', 1, '哇這個也太好吃了吧！開賣至今已經三年多的頂級肉品餐盒，並沒有太多行銷宣傳活動，而是肉品品質受到認同，靠著口碑行銷，一天能有幾十個的銷售量，足見好食材是會被消費者看見的。', 5, 4),
(9, '2020-09-08 14:06:00', 1, '健身的好選擇耶', 3, 1),
(10, '2020-09-17 11:20:00', 1, '好健康', 2, 1),
(11, '2020-09-09 15:35:35', 2, '好好吃', 0, 3),
(12, '2020-09-09 00:00:00', 5, '肉好嫩好好吃', 0, 2),
(13, '2020-09-09 00:00:00', 8, '店內招牌的「油封鴨腿」是法式鄉村菜代表，以低溫油封慢煮，客人抵達時，才會再將表層煎脆，所以來這裡買便當，稍等片刻是常有的事。一邊等待、一邊跟老闆聊天，成了這裡午餐時段的常態。', 0, 4),
(14, '2020-09-09 00:00:00', 4, '好好吃的蝦', 5, 1),
(15, '2020-09-09 06:21:00', 1, '這個沙拉太大碗了吧！價格又好實在，跟我在英國時吃的味道一模一樣！好懷念的好味道', 5, 3),
(16, '2020-09-09 00:00:00', 5, '好像有點鹹  希望能改進一下', 0, 4),
(17, '2020-09-09 00:00:00', 9, '之前公司開會就訂這個，超級豪華又好吃，還有預定揪團功能！也太好了吧', 4, 1),
(18, '2020-09-09 13:20:00', 1, '這個我買過！！好好吃', 4, 1),
(61, '2020-11-03 00:00:00', 1, '今天有下了雨，雖然冷掉了，但還是很好吃', 4, 2),
(63, '2020-11-03 20:32:38', 1, '今天等好久才到～希望外送服務可以改進一下', 3, 4),
(64, '2020-11-02 14:29:25', 1, '這個口味我可以天天都吃！但是希望多一點優惠活動拉', 4, 1),
(65, '2020-11-06 09:35:00', 1, '今天公司一起揪團買了，覺得料多實在', 5, 3),
(66, '2020-11-12 21:39:42', 3, '今天的醬燒有點鹹，雖然整體份量還不錯', 4, 3),
(67, '2020-11-05 00:00:00', 13, '我想減肥都吃這個ＸＤ', 0, 3),
(77, '2020-11-07 15:34:29', 1, '很好吃', 4, 1),
(167, '2020-11-09 12:35:00', 1, '好便宜又大碗', 3, 1),
(201, '2020-11-09 10:20:00', 1, '健康均衡的一餐，覺得很滿足', 4, 5);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `product_sid` (`product_sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `message`
--
ALTER TABLE `message`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `product_sid` FOREIGN KEY (`product_sid`) REFERENCES `product` (`sid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
