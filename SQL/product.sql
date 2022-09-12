-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2020 年 11 月 13 日 06:55
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
-- 資料表結構 `product`
--

CREATE TABLE `product` (
  `sid` int(11) NOT NULL,
  `productname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `categories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `img_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Protein` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Fat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `carbohydrate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `calories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `introduction` text COLLATE utf8_unicode_ci NOT NULL,
  `startRating` float NOT NULL,
  `contentNum` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `purchased` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `product`
--

INSERT INTO `product` (`sid`, `productname`, `categories`, `price`, `img_id`, `Protein`, `Fat`, `carbohydrate`, `calories`, `introduction`, `startRating`, `contentNum`, `purchased`) VALUES
(1, '中歐香料嫩雞胸', '1.低GI便當', '170', '00_bento-chicken-breast', '10g', '2g', '8g', '400卡', '簡單卻迷人的迷迭香風味，經過真空舒肥的肉質軟嫩又Juicy，特別加入研磨風乾大蒜，濃郁香氣，清爽不膩。', 4.5, '75', 85),
(2, '日式燒雞腿', '1.低GI便當', '150', '01_bento-chicken-thigh', '10g', '5g', '8g', '450卡', '特選來自人道飼養，嘉義溯源農場的御正童仔雞，選用無骨雞腿，經日式手法烤製，一口飯、一口肉，鹹甜香好滿足！', 5, '50', 60),
(3, '醬烤厚切1983黑豚', '1.低GI便當', '175', '02_bento-porkfillet', '10g', '5g', '8g', '450卡', '選用神農獎1983黑豚，來自彰化的本土黑豬肉，口感媲美西班牙伊比利黑豬，食用有機飼料，肉質嫩而彈牙。', 4, '29', 30),
(4, '熱帶火烤萊姆蝦', '1.低GI便當', '200', '03_bento-shrimp', '15g', '5g', '6g', '425卡', '只用些許香料，黑胡椒昇華鮮蝦甜味，火烤逼出濃郁鮮味，淋上新鮮萊姆汁，不用剝殼，爽脆口感，忍不住一隻接一隻！', 3.5, '31', 38),
(5, '麴塩五香松阪豬', '1.低GI便當', '235', '04_bento-porkneck', '10g', '3g', '9g', '450卡', '均勻抹上日本發酵鹽麴醃製，軟化肉質並提出松阪豬本身鮮甜味，慢熟幾小時才噴火烤出香氣，又香又嫩，不同於一般松阪豬，柔嫩而彈牙，一吃上癮！', 4.5, '27', 30),
(6, '美式熟成烤牛肋條 ', '1.低GI便當', '230', '05_bento-rib-finger', '8g', '3g', '9g', '400卡', '均勻抹上日本發酵鹽麴醃製，軟化肉質並提出松阪豬本身鮮甜味，慢熟幾小時才噴火烤出香氣，又香又嫩，不同於一般松阪豬，柔嫩而彈牙，一吃上癮！', 5, '38', 43),
(7, '頂級熟成菲力牛排 ', '1.低GI便當', '230', '06_bento-tenderloin', '8g', '3g', '9g', '370卡', '選用濕式熟成Choice等級菲力牛排，整頭牛最軟嫩的部位，脂肪含量極低，重達5oz，不用上餐廳也能滿足地享用頂級牛排！', 4, '52', 58),
(8, '炙燒干貝 ', '1.低GI便當', '230', '07_bento-scallop', '8g', '3g', '9g', '450卡', '選自北海道生食級干貝，加了檸檬和些許黑胡椒浸漬，將干貝的鮮味昇華，經過舒肥的干貝從外到內都一致軟嫩而有彈性，最後炙燒到微焦的外表增添濃厚海鮮香氣，恰到好處的7分熟擁有5分熟的口感，一顆接一顆，午餐也好滿足', 3, '35', 39),
(9, '會議雙拼（豬菲力＆蝦）', '1.低GI便當', '250', '08_bento-combo-pig', '8g', '3g', '9g', '450卡', '選用濕式熟成Choice等級菲力牛排，整頭牛最軟嫩的部位，脂肪含量極低，重達5oz，不用上餐廳也能滿足地享用頂級牛排！', 4.5, '21', 25),
(10, '會議雙拼（雞腿＆蝦）', '1.低GI便當', '130', '09_bento-combo-chicken', '4g', '5g', '40g', '380卡', '經過真空舒肥的肉質柔嫩又Juicy，營養完整保留，熱量低、脂肪低、蛋白質高達37g，撕開就可以直接品嚐！不論是飲食控制、家庭聚餐都靠這包變身五星大廚。', 4, '25', 25),
(11, '豪華海陸三拼會議餐盒', '1.低GI便當', '455', '10_bento-combo3', '20g', '5g', '30g', '250卡', '海陸三拼會議餐盒$400起，最低訂購量10個，需提前3天以上訂購，客製需求請於LINE(ID:kuo1137i)詢問，將有專人為您服務。', 4, '23', 28),
(12, '蛋奶素', '1.低GI便當', '200', '11_bento-veg', '100g', '20g', '30g', '400卡', '提供會議餐盒少量訂購需求，如需預訂素食餐盒請提前3日以上。', 3.5, '34', 40),
(13, '激瘦下午茶沙拉', '2.蔬食沙拉', '130', '12_afternoon', '30g', '5g', '8g', '260卡', '葉菜類清洗後切絲或撕片，根莖類煮熟後切塊或切片，可生食的瓜果類切塊或切片，不可生食的瓜果類則切塊或切片後需煮熟，肉類、穀類或雜糧類則須熟食。魚若是新鮮可切片做生魚片，若非則須熟食。', 5, '45', 50),
(14, '生酮沙拉', '2.蔬食沙拉', '130', '13_salad', '12g', '5g', '40g', '250卡', '經過真空舒肥的肉質柔嫩又Juicy，營養完整保留，熱量低、脂肪低、蛋白質高達37g，撕開就可以直接品嚐！不論是飲食控制、家庭聚餐都靠這包變身五星大廚。', 4, '25', 30),
(15, '蒜烤鮭魚沙拉', '2.蔬食沙拉', '150', '14_salmon', '17g', '7g', '58g', '310卡', '葉菜類清洗後切絲或撕片，根莖類煮熟後切塊或切片，可生食的瓜果類切塊或切片，不可生食的瓜果類則切塊或切片後需煮熟，肉類、穀類或雜糧類則須熟食。魚若是新鮮可切片做生魚片，若非則須熟食。', 3.5, '26', 28),
(16, '肌肉UPUP(增肌)沙拉', '2.蔬食沙拉', '170', '15_musleSalad', '25g', '14g', '26g', '325卡', '馬鈴薯佐蕈菇佐青醬\r\n輕煎香甜的馬鈴藝與甜脆生菜展現不同甘甜,酥香滿溢的蕈菇也不惶多讓的散發芬芳,淋上拾餐精選羅勒做的青醬,濃郁不\r\n死鹹,提味又提鮮,絕對滿足味蕾。', 4.5, '12', 18),
(17, '均衡蛋白質沙拉', '2.蔬食沙拉', '150', '16_egg', '25g', '14g', '26g', '325卡', '香甜南瓜藜麥豆腐佐日式胡麻醬\r\n南瓜的香甜一直大受喜愛,带有栗香的票子南瓜更讓人難抗拒!煎的金黃逼出香氣,配上軟嫩豆腐、清香藜麥及道地日式胡麻,豐美滋味難忘懷!', 4.5, '17', 19),
(18, '活力早餐', '2.蔬食沙拉', '150', '17_berakfast', '29g', '4g', '27g', '311卡', '葉菜類清洗後切絲或撕片，根莖類煮熟後切塊或切片，可生食的瓜果類切塊或切片，不可生食的瓜果類則切塊或切片後需煮熟，肉類、穀類或雜糧類則須熟食。魚若是新鮮可切片做生魚片，若非則須熟食。', 5, '19', 21),
(19, '海陸沙拉', '2.蔬食沙拉', '170', '18_seaFood', '27g', '14g', '17g', '291卡', '經過真空舒肥的肉質柔嫩又Juicy，營養完整保留，熱量低、脂肪低、蛋白質高達37g，撕開就可以直接品嚐！不論是飲食控制、家庭聚餐都靠這包變身五星大廚。', 3, '8', 9),
(20, '烤杏鮑菇沙拉(全素)', '2.蔬食沙拉', '190', '19_vegSalad', '18g', '10g', '21g', '279卡', '葉菜類清洗後切絲或撕片，根莖類煮熟後切塊或切片，可生食的瓜果類切塊或切片，不可生食的瓜果類則切塊或切片後需煮熟，肉類、穀類或雜糧類則須熟食。魚若是新鮮可切片做生魚片，若非則須熟食。', 4, '13', 19),
(21, '煙燻牛肉沙拉', '2.蔬食沙拉', '220', '20_beef', '18g', '10g', '21g', '279卡', '經過真空舒肥的肉質柔嫩又Juicy，營養完整保留，熱量低、脂肪低、蛋白質高達37g，撕開就可以直接品嚐！不論是飲食控制、家庭聚餐都靠這包變身五星大廚。', 4.5, '21', 25),
(22, '蒜烤鮪魚沙拉', '2.蔬食沙拉', '180', '21_tuna', '18g', '10g', '21g', '279卡', '香甜南瓜藜麥豆腐佐日式胡麻醬\r\n南瓜的香甜一直大受喜愛,带有栗香的票子南瓜更讓人難抗拒!煎的金黃逼出香氣,配上軟嫩豆腐、清香藜麥及道地日式胡麻,豐美滋味難忘懷!', 4.5, '21', 25),
(23, '在地農作蔬菜箱', '3.蔬菜箱', '350', 'vegBox', '10g', '21g', '17g', '310卡', '在地特具有產地證明。 蔬菜箱內含5~6種當季蔬果，100%為台灣在地蔬菜，保證5台斤以上', 5, '23', 30);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product`
--
ALTER TABLE `product`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
