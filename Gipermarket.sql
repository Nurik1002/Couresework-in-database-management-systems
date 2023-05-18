-- phpMyAdmin SQL Dump
-- version 5.2.1deb1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Май 18 2023 г., 10:48
-- Версия сервера: 8.0.33-0ubuntu0.23.04.1
-- Версия PHP: 8.1.12-1ubuntu4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Gipermarket`
--

-- --------------------------------------------------------

--
-- Структура таблицы `branch`
--

CREATE TABLE `branch` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `region` varchar(45) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_num` varchar(45) NOT NULL,
  `gipermarket_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `branch`
--

INSERT INTO `branch` (`id`, `name`, `region`, `address`, `phone_num`, `gipermarket_id`) VALUES
(1, 'Korzinka — Shtab', 'Toshkent', 'Toshkent shahri, Uchtepa tumani, Beshqayrag’och ko’chasi, 102A uy', '+998781401414', 1),
(2, 'Korzinka — Lunacharskiy', 'Toshkent', 'Toshkent shahri, Mirzo Ulug’bek tumani, Buyuk Ipak yo’li ko’chasi, 299-uy', '+998781401414', 1),
(3, 'Korzinka — Yangi Hayot', 'Toshkent', 'Toshkent shahri, Yangixayot tumani, Shokirarik ko‘chasi.', '+998781401414', 1),
(4, 'Korzinka DISKONT — Samarqand', 'Samarqand', 'Samarqand sh., Rudakiy ko‘chasi, 54-uy.', '+998781401414', 1),
(5, 'Korzinka —Samarqand Dinamo', 'Samarqand', 'Samarqand shahri, Mir Said Baraka ko‘chasi, 2-uy.', '+998781401414', 1),
(6, 'Korzinka — Motrid', 'Samarqand', 'Samarqand shahri, Qorasuv mavzesi.', '+998781401414', 1),
(7, 'Korzinka — Andijon', 'Andijon', 'Amir Temur ko\'chasi, 62.', '+998781401414', 1),
(8, 'Korzinka — Namangan', 'Namangan', 'Namangan city, Nurafshan mahalla, 38.', '+998781401414', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Sabzavot va mevalar'),
(2, 'Ichimliklar'),
(3, 'Sut va sut mahsulotlari'),
(4, 'Go\'sht va go\'sht mahsulotlari'),
(5, 'Yuvish vositalari'),
(6, 'Choy qahva'),
(7, 'Un va un mahsulotlari'),
(8, 'Shirinliklar');

-- --------------------------------------------------------

--
-- Структура таблицы `customer`
--

CREATE TABLE `customer` (
  `id` int NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `phone_num` int UNSIGNED NOT NULL,
  `email` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Дамп данных таблицы `customer`
--

INSERT INTO `customer` (`id`, `first_name`, `last_name`, `address`, `phone_num`, `email`) VALUES
(1, 'Abdulloh', 'Abdurahmonov', 'Toshkent, O\'zbekiston', 901234567, 'abdulloh@gmail.com'),
(2, 'Nigora', 'Qosimova', 'Andijon, O\'zbekiston', 912345678, 'nigora@gmail.com'),
(3, 'Sobir', 'Sobirov', 'Samarqand, O\'zbekiston', 923456789, 'sobir@gmail.com'),
(4, 'Dilnoza', 'Azizova', 'Farg\'ona, O\'zbekiston', 934567890, 'dilnoza@gmail.com'),
(5, 'Jasur', 'Ismailov', 'Buxoro, O\'zbekiston', 945678901, 'jasur@gmail.com'),
(6, 'Dilrabo', 'Mirzayeva', 'Qashqadaryo, O\'zbekiston', 967890123, 'dilrabo@gmail.com'),
(7, 'Farrukh', 'Usmonov', 'Namangan, O\'zbekiston', 978901234, 'farrukh@gmail.com'),
(8, 'Nargiza', 'Hamidova', 'Surxondaryo, O\'zbekiston', 989012345, 'nargiza@gmail.com'),
(9, 'Akbar', 'Mahmudov', 'Sirdaryo, O\'zbekiston', 900123456, 'akbar@gmail.com'),
(10, 'Nodir', 'Olimov', 'Xorazm, O\'zbekiston', 911234567, 'nodir@gmail.com'),
(11, 'Nilufar', 'Olimova', 'Jizzax, O\'zbekiston', 922345678, 'nilufar@gmail.com'),
(12, 'Shohruh', 'Hamidov', 'Andijon, O\'zbekiston', 933456789, 'shohruh@gmail.com'),
(13, 'Malika', 'Ismoilova', 'Toshkent, O\'zbekiston', 944567890, 'malika@gmail.com'),
(14, 'Firuz', 'Shermatov', 'Samarqand, O\'zbekiston', 955678901, 'firuz@gmail.com'),
(15, 'Dildora', 'Rakhimova', 'Farg\'ona, O\'zbekiston', 966789012, 'dildora@gmail.com'),
(16, 'Jamol', 'Xolmatov', 'Navoiy, O\'zbekiston', 977890123, 'jamol@gmail.com'),
(17, 'Davron', 'Usmonov', 'Qoraqalpog\'iston Respublikasi, O\'zbekiston', 988901234, 'davron@gmail.com'),
(18, 'Shaxnoza', 'Rahimova', 'Andijon, O\'zbekiston', 999012345, 'shaxnoza@gmail.com'),
(19, 'Zafar', 'Otabekov', 'Namangan, O\'zbekiston', 900123456, 'zafar@gmail.com'),
(20, 'Fazliddin', 'Nigmatov', 'Surxondaryo, O\'zbekiston', 911234567, 'fazliddin@gmail.com'),
(21, 'Nasiba', 'Mahmudova', 'Toshkent, O\'zbekiston', 922345678, 'nasiba@gmail.com'),
(22, 'Muhammad', 'Karimov', 'Samarqand, O\'zbekiston', 933456789, 'muhammad@gmail.com'),
(23, 'Munira', 'Ismoilova', 'Farg\'ona, O\'zbekiston', 944567890, 'munira@gmail.com'),
(25, 'Anvar', 'Nurmatov', 'Navoiy, O\'zbekiston', 956789012, 'anvar@gmail.com');

-- --------------------------------------------------------

--
-- Структура таблицы `departament`
--

CREATE TABLE `departament` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `gipermarket_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Дамп данных таблицы `departament`
--

INSERT INTO `departament` (`id`, `name`, `gipermarket_id`) VALUES
(1, 'Marketing bo\'limi', 1),
(2, 'Moliya bo\'limi', 1),
(3, 'Maxsulotlar bilan ishlash bo\'limi', 1),
(4, 'Yetkazib berish bo\'limi', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `director`
--

CREATE TABLE `director` (
  `id` int NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `email` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `phone_num` int UNSIGNED NOT NULL,
  `gipermarket_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Дамп данных таблицы `director`
--

INSERT INTO `director` (`id`, `first_name`, `last_name`, `address`, `email`, `phone_num`, `gipermarket_id`) VALUES
(1, 'Shaxzod', 'Rahmonov', 'Samarqand', 'shrahmonov28@gmail.com', 97918117, 1),
(2, 'Oybek', 'Shamuratov', 'Qoraqalpog\'iston', 'shoybek04@gmail.com', 905915009, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `employee`
--

CREATE TABLE `employee` (
  `id` int NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `phone_num` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `position_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Дамп данных таблицы `employee`
--

INSERT INTO `employee` (`id`, `first_name`, `last_name`, `address`, `phone_num`, `position_id`) VALUES
(1, 'Ali', 'Akbarov', 'Toshkent O\'zbekiston', '998901234567', 1),
(2, 'Valentina', 'Petrova', 'Toshkent O\'zbekiston', '998912345678', 2),
(3, 'Jasur', 'Ismailov', 'Toshkent O\'zbekiston', '998923456789', 3),
(4, 'Maria', 'Sanchez', 'Toshkent O\'zbekiston', '998934567890', 4),
(5, 'Asadbek', 'Hasanov', 'Toshkent O\'zbekiston', '998945678901', 5),
(6, 'Dilnoza', 'Azizova', 'Toshkent O\'zbekiston', '998956789012', 5),
(7, 'Anvar', 'Nurmatov', 'Toshkent O\'zbekiston', '998967890123', 6),
(8, 'Sardor', 'Khamdamov', 'Toshkent O\'zbekiston', '998978901234', 6),
(9, 'Elena', 'Ivanova', 'Toshkent O\'zbekiston', '998989012345', 7),
(10, 'Dilshodbek', 'Ozodov', 'Xorazm O\'zbekiston', '998989012345', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `gipermarket`
--

CREATE TABLE `gipermarket` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `e_site` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Дамп данных таблицы `gipermarket`
--

INSERT INTO `gipermarket` (`id`, `name`, `e_site`) VALUES
(1, 'Korzinka', 'korzinka.uz');

-- --------------------------------------------------------

--
-- Структура таблицы `position`
--

CREATE TABLE `position` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `salary` double UNSIGNED NOT NULL,
  `departament_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Дамп данных таблицы `position`
--

INSERT INTO `position` (`id`, `name`, `salary`, `departament_id`) VALUES
(1, 'Bo\'lim boshlig\'i', 8000000, 1),
(2, 'Bo\'lim boshlig\'i', 10000000, 2),
(3, 'Bo\'lim boshlig\'i', 7000000, 3),
(4, 'Bo\'lim boshlig\'i', 6000000, 4),
(5, 'Reklamalar bilan ishlash', 5000000, 1),
(6, 'Hisobchi', 9000000, 2),
(7, 'Kassir', 6000000, 2),
(8, 'Sotuvchi', 4000000, 3),
(9, 'Haydovchi', 3500000, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `price` float NOT NULL,
  `size` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `manufacturing_company` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `date_of_manufacture` date DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `sertifikat` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `size`, `manufacturing_company`, `date_of_manufacture`, `expiration_date`, `sertifikat`, `description`, `category_id`) VALUES
(1, 'Olma', 5000, 'katta', 'Guliston sabzavot savdo', '2023-05-15', '2023-06-15', 'ASDFG12345', 'Guliston viloyatidan keltirilgan olma', 1),
(2, 'Sabzi', 3000, 'o\'rtacha', 'Sabzi mahsulot savdo', '2023-05-12', '2023-06-12', 'QWERT67890', 'Katta toza sabzi', 1),
(3, 'Tarvuz', 15000, 'katta', 'O\'zbekiston Tarvuz sanoat', '2023-05-10', '2023-06-30', 'ZXCVB13579', 'Katta tarvuz', 1),
(4, 'Nok', 8000, 'kichik', 'Guliston sabzavot savdo', '2023-05-15', '2023-06-15', 'ASDFG54321', 'Toza va rang-barang nok', 1),
(5, 'Qovun', 20000, 'katta', 'O\'zbekiston Qovun sanoat', '2023-05-08', '2023-07-08', 'QWERT24680', 'Katta qovun', 1),
(6, 'Anor', 12000, 'kichik', 'Guliston meva sanoat', '2023-05-15', '2023-05-30', 'ZXCVB86420', 'Toza anor', 1),
(7, 'Olcha', 7000, 'kichik', 'Guliston meva sanoat', '2023-05-10', '2023-05-25', 'ASDFG97531', 'Toza olcha', 1),
(8, 'Bodring', 5000, 'kichik', 'O\'zbekiston meva sanoat', '2023-05-10', '2023-05-25', 'QWERT12345', 'Toza bodring', 1),
(9, 'Shaftoli', 9000, 'kichik', 'Guliston meva sanoat', '2023-05-12', '2023-05-27', 'ZXCVB09876', 'Toza shaftoli', 1),
(10, 'Pepsi', 6000, '1 litr', 'PepsiCo', '2023-05-15', '2023-06-15', 'ASDFG12345', 'Pepsi ichimligi', 2),
(11, 'Fanta', 6000, '1 litr', 'Coca-Cola', '2023-05-12', '2023-06-12', 'QWERT67890', 'Fanta ichimligi', 2),
(12, 'Sprite', 6000, '1 litr', 'Coca-Cola', '2023-05-10', '2023-06-30', 'ZXCVB13579', 'Sprite ichimligi', 2),
(13, 'Nestle', 8000, '0.5 litr', 'Nestle', '2023-05-15', '2023-06-15', 'ASDFG54321', 'Nestle ichimligi', 2),
(14, 'Coca-Cola', 6000, '1 litr', 'Coca-Cola', '2023-05-08', '2023-07-08', 'QWERT24680', 'Coca-Cola ichimligi', 2),
(15, 'Lavazza', 20000, '500 gr', 'Lavazza', '2023-05-15', '2024-05-15', 'ZXCVB86420', 'Italiyaning eng yaxshi kofesi', 2),
(16, 'Nescafe', 12000, '100 gr', 'Nestle', '2023-05-10', '2024-05-10', 'ASDFG97531', 'Qahva do\'stlari uchun', 2),
(17, 'Twinings', 5000, '100 ta', 'Twinings', '2023-05-10', '2024-05-10', 'QWERT12345', 'Eng zo\'r choylar', 2),
(18, 'Oreo', 9000, '228 gr', 'Mondelēz International', '2023-05-12', '2024-05-12', 'ZXCVB09876', 'Oreo biskvit', 2),
(19, 'Lays', 7000, '150 gr', 'PepsiCo', '2023-05-15', '2024-05-15', 'ASDFG09876', 'Lays chips', 2),
(20, 'SarSoli', 5000, '1 litr', 'SarSoli', '2023-05-15', '2023-06-15', 'ASDFG13579', 'Qattiq yog', 3),
(21, 'Hayat', 4000, '1 litr', 'Hayat', '2023-05-12', '2023-06-12', 'QWERT35791', 'Arqa suv', 3),
(22, 'Olper`s', 6000, '1 litr', 'Olper`s', '2023-05-10', '2023-06-30', 'ZXCVB24680', 'Qattiq yog', 3),
(23, 'Nestle', 4000, '1 litr', 'Nestle', '2023-05-15', '2023-06-15', 'ASDFG46820', 'Sprotyog', 3),
(24, 'Moy Sulton', 5000, '1 litr', 'Moy Sulton', '2023-05-08', '2023-07-08', 'QWERT12368', 'Sprotyog', 3),
(25, 'Olper`s sprotyog', 8000, '1 litr', 'Olper`s', '2023-05-15', '2023-06-15', 'ZXCVB24681', 'Sprotyog', 3),
(26, 'Nestle Yaponiya', 7000, '1 litr', 'Nestle', '2023-05-10', '2023-06-30', 'ASDFG46821', 'Sprotyog', 3),
(27, 'Moy Sulton Sprotyog', 5500, '1 litr', 'Moy Sulton', '2023-05-10', '2023-06-30', 'QWERT12369', 'Sprotyog', 3),
(28, 'SarSoli Qatik', 6500, '1 litr', 'SarSoli', '2023-05-12', '2023-06-12', 'ASDFG13580', 'Qattiq yog', 3),
(29, 'Hayat Arqa suv', 3500, '1 litr', 'Hayat', '2023-05-15', '2023-06-15', 'QWERT35792', 'Arqa suv', 3),
(30, 'Dori kabob go\'shti', 55000, '500 gr', 'Kabobchi Dori', '2023-05-15', '2023-05-25', 'ASDFG13570', 'Moy go\'shtli kabob', 4),
(31, 'Gosht yarim kg', 40000, '500 gr', 'Gosht saroyi', '2023-05-14', '2023-05-24', 'QWERT35790', 'Moy go\'sht', 4),
(32, 'Tovuq go\'shti 1 kg', 80000, '1 kg', 'Tovuq Saroyi', '2023-05-12', '2023-05-22', 'ZXCVB24680', 'Tovuq go\'shti', 4),
(33, 'Kabob go\'shti 500 gr', 60000, '500 gr', 'Kabob Saroyi', '2023-05-10', '2023-05-20', 'ASDFG46820', 'Moy go\'shtli kabob', 4),
(34, 'Shashlik go\'shti', 90000, '1 kg', 'Kabobchi Dori', '2023-05-15', '2023-05-25', 'QWERT12360', 'Moy go\'shtli shashlik', 4),
(35, 'Sosiskali kabob 1 kg', 70000, '1 kg', 'Kabobchi Dori', '2023-05-15', '2023-05-25', 'ASDFG13571', 'Sosiskali kabob', 4),
(36, 'Gosht Kabob 1 kg', 85000, '1 kg', 'Kabob Saroyi', '2023-05-12', '2023-05-22', 'QWERT35791', 'Moy go\'shtli kabob', 4),
(37, 'Tovuq yarim kg', 20000, '500 gr', 'Tovuq Saroyi', '2023-05-10', '2023-05-20', 'ZXCVB24681', 'Moy tovuq', 4),
(38, 'Gosht qavurma 500 gr', 50000, '500 gr', 'Gosht saroyi', '2023-05-15', '2023-05-25', 'ASDFG46821', 'Gosht qavurmasi', 4),
(39, 'Tovuq qavurma 500 gr', 35000, '500 gr', 'Tovuq Saroyi', '2023-05-15', '2023-05-25', 'QWERT12361', 'Tovuq qavurmasi', 4),
(40, 'Oq libos', 25000, '1 litr', 'CleanHouse', '2023-05-20', '2024-05-20', 'QWERT12362', 'Kofe posudani oqish uchun', 5),
(41, 'Pirelli avtomobil shamoli', 55000, '500 ml', 'Pirelli', '2023-05-10', '2024-05-10', 'QWERT12363', 'Avtomobildagi tomirlarni tozalash uchun', 5),
(42, 'Antibakterial xaridlar', 12000, '250 ml', 'CleanHouse', '2023-05-05', '2024-05-05', 'QWERT12364', 'Mehmonlar uchun ajratilgan, antiseptik xaridlar', 5),
(43, 'Domestos', 20000, '1 litr', 'Domestos', '2023-05-15', '2024-05-15', 'QWERT12365', 'Santexnika va hujjatlarning oziq-ovqatda tozalanishi', 5),
(44, 'Dush gel', 30000, '500 ml', 'Nivea', '2023-05-10', '2024-05-10', 'QWERT12366', 'Dush qilib turing, soch va terini ozlashtiring', 5),
(45, 'Paxlavachi paxlavasi', 15000, '500 gr', 'CleanHouse', '2023-05-18', '2024-05-18', 'QWERT12367', 'Qoziqorinli mahsulotlar uchun ideal', 5),
(46, 'Karnay degan qosh', 18000, '1 litr', 'CleanHouse', '2023-05-12', '2024-05-12', 'QWERT12368', 'Qochish qutqaruvchi dori turlari uchun', 5),
(47, 'Sut yog\'i', 10000, '1 litr', 'Sut Saroyi', '2023-05-11', '2024-05-11', 'QWERT12369', 'Sut yog\'i tayyorlash uchun idealdir', 5),
(48, 'Baliq temir', 25000, '500 ml', 'CleanHouse', '2023-05-17', '2024-05-17', 'QWERT12370', 'Baliqlar va baliq mahsulotlari uchun temir', 5),
(49, 'Baliq suyuvi', 12000, '1 litr', 'CleanHouse', '2023-05-22', '2024-05-22', 'QWERT12371', 'Baliqning namliligi va suyuvinig oshirish', 5),
(50, 'Lavazza Crema e Gusto Coffee Beans', 19000, '1 kg', 'Lavazza', '2022-02-01', '2023-02-01', 'O\'zbekistan standarti', 'Italiya mamlakatidan import qilingan', 6),
(51, 'Dilmah Earl Grey Tea', 9000, '50 qop', 'Dilmah', '2023-01-01', '2024-01-01', 'Halal sertifikati', 'Sri-Lanka mamlakatidan import qilingan', 6),
(52, 'Kazbegi Black Tea', 15000, '100 qop', 'Kazbegi', '2023-03-01', '2024-03-01', 'ISO 9001', 'Gruzinistan mamlakatidan import qilingan', 6),
(53, 'Grandos Espresso Gold Coffee Capsules', 20000, '10 dona', 'Grandos', '2022-11-01', '2023-11-01', 'Halal sertifikati', 'Germaniya mamlakatidan import qilingan', 6),
(54, 'Ahmad Tea Classic Black Tea', 8000, '100 qop', 'Ahmad Tea', '2023-05-01', '2024-05-01', 'Halal sertifikati', 'Britaniya mamlakatidan import qilingan', 6),
(55, 'Yogi Tea Ginger Orange with Vanilla Tea', 10000, '20 qop', 'Yogi Tea', '2022-12-01', '2024-12-01', 'Organik sertifikati', 'Germaniya mamlakatidan import qilingan', 6),
(56, 'Mount Hagen Organic Instant Coffee', 26000, '100 g', 'Mount Hagen', '2023-06-01', '2024-06-01', 'Organik sertifikati', 'Papua - Yeni Gvineya mamlakatidan import qilingan', 6),
(57, 'Lipton Yellow Label Tea', 7500, '100 qop', 'Lipton', '2023-04-01', '2024-04-01', 'Halal sertifikati', 'Turkiya mamlakatidan import qilingan', 6),
(58, 'Lavazza Qualita Oro Coffee Beans', 27000, '1 kg', 'Lavazza', '2022-12-01', '2023-12-01', 'O\'zbekistan standarti', 'Italiya mamlakatidan import qilingan', 6),
(59, 'Dilmah Ceylon Supreme Tea', 11000, '50 qop', 'Dilmah', '2023-02-01', '2024-02-01', 'Halal sertifikati', 'Sri-Lanka mamlakatidan import qilingan', 6),
(60, 'O\'zbek Un', 15000, '10 kg', 'O\'zbek Mekhnat Markazi', '2023-05-15', '2023-12-15', 'Tulov', 'Katta xilma-xil un.', 7),
(61, 'Un Aralash', 22000, '5 kg', 'O\'zbek Mekhnat Markazi', '2023-05-15', '2024-05-15', 'Tulov', 'Katta xilma-xil un aralashi.', 7),
(62, 'Yolg\'iz un', 4000, '1 kg', 'O\'zbek Mekhnat Markazi', '2023-05-15', '2023-11-15', 'Tulov', 'Eng yaxshi sifatli yog\' un.', 7),
(63, 'Qorovul', 8000, '2 kg', 'O\'zbek Mekhnat Markazi', '2023-05-15', '2023-09-15', 'Tulov', 'Toza qorovul.', 7),
(64, 'Nevkus', 18000, '10 kg', 'O\'zbek Mekhnat Markazi', '2023-05-15', '2024-01-15', 'Tulov', 'Shirin nevkus.', 7),
(65, 'Makaroni', 5000, '1 kg', 'O\'zbek Mekhnat Markazi', '2023-05-15', '2023-10-15', 'Tulov', 'Tovuqli makaroni.', 7),
(66, 'Spiral', 5500, '1 kg', 'O\'zbek Mekhnat Markazi', '2023-05-15', '2023-09-15', 'Tulov', 'Yaxshi sifatli spiral.', 7),
(67, 'Penka', 7000, '1 kg', 'O\'zbek Mekhnat Markazi', '2023-05-15', '2023-08-15', 'Tulov', 'Toza penka.', 7),
(68, 'Makaron ', 4000, '1 kg', 'O\'zbek Mekhnat Markazi', '2023-05-15', '2023-11-15', 'Tulov', 'Katta xilma-xil makaron.', 7),
(69, 'Makaron ', 4500, '2.5 kg', 'O\'zbek Mekhnat Markazi', '2023-05-15', '2023-12-15', 'Tulov', 'Qimmatxona sifatida makaron.', 7),
(70, 'Tort \"Napoleon\"', 30000, '1000 gr', 'Xalq un', '2023-04-01', '2023-06-30', 'SIFATLI MAXSULOT', 'Ko\'k pirog va kremdan tashkil topgan tort', 8),
(71, 'Pirog Qaymoq va yong\'in bilan', 25000, '1000 gr', 'Xalq un', '2023-04-01', '2023-06-30', 'SIFATLI MAXSULOT', 'Ko\'k pirog qaymoq va yong\'in bilan tayyorlandi', 8),
(72, 'Marmelad Portagal', 10000, '500 gr', 'Bonbon un', '2023-05-01', '2023-09-30', 'SIFATLI MAXSULOT', 'Doimiy sotiladigan portagal marmeladi', 8),
(73, 'Shirinlik Snickers', 15000, '200 gr', 'Mars Inc.', '2023-05-01', '2023-09-30', 'SIFATLI MAXSULOT', 'Qahva va qalin sharbatlari bilan tayyorlandi', 8),
(74, 'Tort Korolevskiy', 40000, '1500 gr', 'Xalq un', '2023-04-01', '2023-06-30', 'SIFATLI MAXSULOT', 'Yog\'li krem va kompotlardan tashkil topgan tort', 8),
(75, 'Pishiriq \"Chiz-keks\"', 20000, '500 gr', 'Bonbon un', '2023-05-01', '2023-09-30', 'SIFATLI MAXSULOT', 'Chiz va keksdan tayyorlandi', 8),
(76, 'Pyure \"Alma\"', 12000, '500 gr', 'Shirinlanuvchi', '2023-05-01', '2023-09-30', 'SIFATLI MAXSULOT', 'Doimiy sotiladigan alma pyuresi', 8),
(77, 'Tort \"Mantikor\"', 35000, '2000 gr', 'Xalq un', '2023-04-01', '2023-06-30', 'SIFATLI MAXSULOT', 'Qo\'g\'irchoq va qalin sharbatlardan tashkil topgan tort', 8),
(78, 'Marmelad \"O\'rik\"', 10000, '500 gr', 'Bonbon un', '2023-05-01', '2023-09-30', 'SIFATLI MAXSULOT', 'Doimiy sotiladigan o\'rik marmeladi', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `product_customer`
--

CREATE TABLE `product_customer` (
  `product_id` int NOT NULL,
  `customer_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Дамп данных таблицы `product_customer`
--

INSERT INTO `product_customer` (`product_id`, `customer_id`) VALUES
(16, 6),
(69, 25),
(65, 25),
(32, 11),
(38, 19),
(54, 8),
(9, 15),
(7, 8),
(15, 4),
(52, 6),
(27, 5),
(31, 14),
(15, 13),
(14, 7),
(61, 21),
(32, 25),
(23, 21),
(66, 13),
(19, 21),
(25, 22),
(1, 6),
(44, 18),
(77, 23),
(8, 18),
(68, 22),
(37, 25),
(15, 8),
(44, 11),
(52, 12),
(29, 23),
(29, 2),
(63, 6),
(37, 16),
(26, 11),
(64, 6),
(62, 17),
(65, 12),
(77, 12),
(75, 4),
(62, 19),
(3, 24),
(34, 24),
(55, 24),
(40, 21),
(11, 18),
(40, 23),
(53, 14),
(71, 6),
(34, 25),
(66, 14),
(30, 3),
(15, 25),
(10, 19),
(65, 5),
(12, 24),
(30, 8),
(19, 25),
(57, 22),
(66, 3),
(16, 14),
(17, 16),
(42, 11),
(28, 13),
(72, 9),
(32, 3),
(18, 15),
(17, 9),
(4, 2),
(59, 9),
(67, 10),
(51, 13),
(65, 11),
(78, 22),
(55, 25),
(32, 25),
(64, 8),
(46, 25),
(74, 8),
(66, 6),
(71, 1),
(7, 7),
(72, 17),
(1, 4),
(25, 8),
(56, 21),
(59, 17),
(48, 24),
(38, 7),
(4, 1),
(20, 10),
(55, 1),
(39, 8),
(38, 15),
(29, 17),
(77, 2),
(5, 1),
(42, 13),
(51, 1),
(47, 11),
(68, 15),
(57, 8),
(23, 8),
(14, 11),
(16, 8),
(17, 16),
(2, 13),
(75, 4),
(59, 5),
(78, 8),
(41, 18),
(6, 7),
(7, 6),
(72, 14),
(58, 4),
(19, 21),
(56, 11),
(61, 24),
(42, 2),
(51, 25),
(45, 7),
(19, 4),
(59, 8),
(59, 21),
(77, 22),
(47, 11),
(48, 20),
(35, 9),
(10, 11),
(65, 2),
(14, 13),
(41, 3),
(6, 13),
(38, 14),
(71, 24),
(4, 6),
(68, 5),
(25, 13),
(26, 2),
(16, 5),
(37, 20),
(33, 2),
(52, 4),
(28, 7),
(22, 24),
(5, 18),
(12, 20),
(45, 9),
(17, 8),
(6, 12),
(15, 3),
(68, 8),
(43, 3),
(49, 22),
(54, 18),
(35, 11),
(24, 17),
(54, 10),
(69, 15),
(41, 14),
(3, 19),
(69, 8),
(76, 9),
(6, 9),
(72, 10),
(1, 19),
(56, 6),
(43, 19),
(10, 3),
(47, 17),
(13, 13),
(75, 15),
(12, 15),
(21, 20),
(47, 17),
(19, 1),
(49, 16),
(68, 1),
(23, 2),
(13, 22),
(60, 6),
(50, 13),
(50, 17),
(75, 1),
(51, 13),
(29, 22),
(1, 4),
(59, 1),
(60, 15),
(78, 22),
(31, 16),
(62, 11),
(5, 7),
(77, 23),
(49, 20),
(54, 11),
(78, 2),
(28, 14),
(52, 21),
(23, 14),
(66, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `service`
--

CREATE TABLE `service` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `price` int UNSIGNED NOT NULL,
  `gipermarket_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Дамп данных таблицы `service`
--

INSERT INTO `service` (`id`, `name`, `price`, `gipermarket_id`) VALUES
(1, 'Yetkazib berish', 100000, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `warehause`
--

CREATE TABLE `warehause` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `sigimi` int UNSIGNED NOT NULL,
  `region` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `gipermarket_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gipermarket_id` (`gipermarket_id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `departament`
--
ALTER TABLE `departament`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gipermarket_id` (`gipermarket_id`);

--
-- Индексы таблицы `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gipermarket_id` (`gipermarket_id`);

--
-- Индексы таблицы `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `position_id` (`position_id`);

--
-- Индексы таблицы `gipermarket`
--
ALTER TABLE `gipermarket`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departament_id` (`departament_id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `product_customer`
--
ALTER TABLE `product_customer`
  ADD KEY `customer_id` (`customer_id`);

--
-- Индексы таблицы `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gipermarket_id` (`gipermarket_id`);

--
-- Индексы таблицы `warehause`
--
ALTER TABLE `warehause`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gipermarket_id` (`gipermarket_id`);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `branch`
--
ALTER TABLE `branch`
  ADD CONSTRAINT `branch_ibfk_1` FOREIGN KEY (`gipermarket_id`) REFERENCES `gipermarket` (`id`);

--
-- Ограничения внешнего ключа таблицы `departament`
--
ALTER TABLE `departament`
  ADD CONSTRAINT `departament_ibfk_1` FOREIGN KEY (`gipermarket_id`) REFERENCES `gipermarket` (`id`);

--
-- Ограничения внешнего ключа таблицы `director`
--
ALTER TABLE `director`
  ADD CONSTRAINT `director_ibfk_1` FOREIGN KEY (`gipermarket_id`) REFERENCES `gipermarket` (`id`);

--
-- Ограничения внешнего ключа таблицы `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`);

--
-- Ограничения внешнего ключа таблицы `position`
--
ALTER TABLE `position`
  ADD CONSTRAINT `position_ibfk_1` FOREIGN KEY (`departament_id`) REFERENCES `departament` (`id`);

--
-- Ограничения внешнего ключа таблицы `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Ограничения внешнего ключа таблицы `product_customer`
--
ALTER TABLE `product_customer`
  ADD CONSTRAINT `product_customer_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

--
-- Ограничения внешнего ключа таблицы `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`gipermarket_id`) REFERENCES `gipermarket` (`id`);

--
-- Ограничения внешнего ключа таблицы `warehause`
--
ALTER TABLE `warehause`
  ADD CONSTRAINT `warehause_ibfk_1` FOREIGN KEY (`gipermarket_id`) REFERENCES `gipermarket` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
