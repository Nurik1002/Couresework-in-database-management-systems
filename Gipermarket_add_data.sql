INSERT INTO gipermarket (id, name, e_site) VALUES
('1', 'Korzinka', 'korzinka.uz');

INSERT INTO director (id, last_name, first_name, gipermarket_id ,email, address, phone_num) VALUES
('1', 'Rahmonov', 'Shaxzod', '1', 'shrahmonov28@gmail.com', 'Samarqand', 		  '97918117'),
('2', 'Shamuratov', 'Oybek', '1', 'shoybek04@gmail.com',    'Qoraqalpog\'iston', '905915009');

INSERT INTO branch (id, name, gipermarket_id, region, address, phone_num) VALUES
('1', 'Korzinka — Shtab', '1', 'Toshkent' ,'Toshkent shahri, Uchtepa tumani, Beshqayrag’och ko’chasi, 102A uy', '+998781401414'),
('2', 'Korzinka — Lunacharskiy', '1', 'Toshkent' ,'Toshkent shahri, Mirzo Ulug’bek tumani, Buyuk Ipak yo’li ko’chasi, 299-uy', '+998781401414'),
('3', 'Korzinka — Yangi Hayot', '1', 'Toshkent' ,'Toshkent shahri, Yangixayot tumani, Shokirarik ko‘chasi.', '+998781401414'),
('4', 'Korzinka DISKONT — Samarqand', '1', 'Samarqand' ,'Samarqand sh., Rudakiy ko‘chasi, 54-uy.', '+998781401414'),
('5', 'Korzinka —Samarqand Dinamo', '1', 'Samarqand' ,'Samarqand shahri, Mir Said Baraka ko‘chasi, 2-uy.', '+998781401414'),
('6', 'Korzinka — Motrid', '1', 'Samarqand' ,'Samarqand shahri, Qorasuv mavzesi.', '+998781401414'),
('7', 'Korzinka — Andijon', '1', 'Andijon' ,'Amir Temur ko\'chasi, 62.', '+998781401414'),
('8', 'Korzinka — Namangan', '1', 'Namangan' ,'Namangan city, Nurafshan mahalla, 38.', '+998781401414');

INSERT INTO departament (id, name, gipermarket_id) VALUES
('1', 'Marketing bo\'limi',  '1'),
('2', 'Moliya bo\'limi',  '1'),
('3', 'Maxsulotlar bilan ishlash bo\'limi',  '1'),
('4', 'Yetkazib berish bo\'limi',  '1');


INSERT INTO category (id, name) VALUES
('1', 'Sabzavot va mevalar'),
('2', 'Ichimliklar'),
('3', 'Sut va sut mahsulotlari'),
('4', 'Go\'sht va go\'sht mahsulotlari'),
('5', 'Yuvish vositalari'),
('6', 'Choy qahva'),
('7', 'Un va un mahsulotlari'),
('8', 'Shirinliklar');	


INSERT INTO position (id, name, departament_id, salary) VALUES
-- Bo'lim boshliqlari lavozimi
('1', 'Bo\'lim boshlig\'i', '1', '8000000'),
('2', 'Bo\'lim boshlig\'i', '2', '10000000'),
('3', 'Bo\'lim boshlig\'i', '3', '7000000'),
('4', 'Bo\'lim boshlig\'i', '4', '6000000'),

-- Boshqa lavozimlar

('5', 'Reklamalar bilan ishlash', '1' , '5000000'),
('6', 'Hisobchi', '2', '9000000'),
('7', 'Kassir', '2', '6000000'),
('8', 'Sotuvchi', '3', '4000000'),
('9', 'Haydovchi', '4', '3500000');


SET FOREIGN_KEY_CHECKS=0;
SET GLOBAL FOREIGN_KEY_CHECKS=0;
INSERT INTO employee (id,  first_name, last_name, address, phone_num, position_id) VALUES
-- Bo'lim boshliqlari
('1', 'Ali', 'Akbarov', 'Toshkent O\'zbekiston', '998901234567', '1'),
('2', 'Valentina', 'Petrova', 'Toshkent O\'zbekiston', '998912345678', '2'),
('3', 'Jasur', 'Ismailov', 'Toshkent O\'zbekiston', '998923456789', '3'),
('4', 'Maria', 'Sanchez', 'Toshkent O\'zbekiston', '998934567890', '4'),

-- Boshqa lavozimlar
('5', 'Asadbek', 'Hasanov', 'Toshkent O\'zbekiston', '998945678901', '5'),
('6', 'Dilnoza', 'Azizova', 'Toshkent O\'zbekiston', '998956789012', '5'),
('7', 'Anvar', 'Nurmatov', 'Toshkent O\'zbekiston', '998967890123', '6'),
('8', 'Sardor', 'Khamdamov', 'Toshkent O\'zbekiston', '998978901234', '6'),
('9', 'Elena', 'Ivanova', 'Toshkent O\'zbekiston', '998989012345', '7'),
('10', 'Dilshodbek', 'Ozodov', 'Xorazm O\'zbekiston', '998989012345', '7');


INSERT INTO service (id, name, price, gipermarket_id) VALUES
('1', 'Yetkazib berish', '100000', '1');

INSERT INTO customer (id, first_name,last_name, phone_num, email, address) VALUES
('1', 'Abdulloh', 'Abdurahmonov', '901234567', 'abdulloh@gmail.com', 'Toshkent, O\'zbekiston'),
('2', 'Nigora', 'Qosimova', '912345678', 'nigora@gmail.com', 'Andijon, O\'zbekiston'),
('3', 'Sobir', 'Sobirov', '923456789', 'sobir@gmail.com', 'Samarqand, O\'zbekiston'),
('4', 'Dilnoza', 'Azizova', '934567890', 'dilnoza@gmail.com', 'Farg\'ona, O\'zbekiston'),
('5', 'Jasur', 'Ismailov', '945678901', 'jasur@gmail.com', 'Buxoro, O\'zbekiston'), 
('6', 'Dilrabo', 'Mirzayeva', '967890123', 'dilrabo@gmail.com', 'Qashqadaryo, O\'zbekiston'),
('7', 'Farrukh', 'Usmonov', '978901234', 'farrukh@gmail.com', 'Namangan, O\'zbekiston'),
('8', 'Nargiza', 'Hamidova', '989012345', 'nargiza@gmail.com', 'Surxondaryo, O\'zbekiston'),
('9', 'Akbar', 'Mahmudov', '900123456', 'akbar@gmail.com', 'Sirdaryo, O\'zbekiston'),
('10', 'Nodir', 'Olimov', '911234567', 'nodir@gmail.com', 'Xorazm, O\'zbekiston'),
('11', 'Nilufar', 'Olimova', '922345678', 'nilufar@gmail.com', 'Jizzax, O\'zbekiston'),
('12', 'Shohruh', 'Hamidov', '933456789', 'shohruh@gmail.com', 'Andijon, O\'zbekiston'),
('13', 'Malika', 'Ismoilova', '944567890', 'malika@gmail.com', 'Toshkent, O\'zbekiston'),
('14', 'Firuz', 'Shermatov', '955678901', 'firuz@gmail.com', 'Samarqand, O\'zbekiston'),
('15', 'Dildora', 'Rakhimova', '966789012', 'dildora@gmail.com', 'Farg\'ona, O\'zbekiston'),
('16', 'Jamol', 'Xolmatov', '977890123', 'jamol@gmail.com', 'Navoiy, O\'zbekiston'),
('17', 'Davron', 'Usmonov', '988901234', 'davron@gmail.com', 'Qoraqalpog\'iston Respublikasi, O\'zbekiston'),
('18', 'Shaxnoza', 'Rahimova', '999012345', 'shaxnoza@gmail.com', 'Andijon, O\'zbekiston'),
('19', 'Zafar', 'Otabekov', '900123456', 'zafar@gmail.com', 'Namangan, O\'zbekiston'),
('20', 'Fazliddin', 'Nigmatov', '911234567', 'fazliddin@gmail.com', 'Surxondaryo, O\'zbekiston'),
('21', 'Nasiba', 'Mahmudova', '922345678', 'nasiba@gmail.com', 'Toshkent, O\'zbekiston'),
('22', 'Muhammad', 'Karimov', '933456789', 'muhammad@gmail.com', 'Samarqand, O\'zbekiston'),
('23', 'Munira', 'Ismoilova', '944567890', 'munira@gmail.com', 'Farg\'ona, O\'zbekiston'),
('25', 'Anvar', 'Nurmatov', '956789012', 'anvar@gmail.com', 'Navoiy, O\'zbekiston');



INSERT INTO product (id, name, price, manufacturing_company, sertifikat, category_id,  size, date_of_manufacture, expiration_date, description) VALUES
-- Sabzavot va mevalar
(1, 'Olma', 5000, 'Guliston sabzavot savdo', 'ASDFG12345', 1, 'katta', '2023-05-15', '2023-06-15', 'Guliston viloyatidan keltirilgan olma'),
(2, 'Sabzi', 3000, 'Sabzi mahsulot savdo', 'QWERT67890', 1, 'o\'rtacha', '2023-05-12', '2023-06-12', 'Katta toza sabzi'),
(3, 'Tarvuz', 15000, 'O\'zbekiston Tarvuz sanoat', 'ZXCVB13579', 1, 'katta', '2023-05-10', '2023-06-30', 'Katta tarvuz'),
(4, 'Nok', 8000, 'Guliston sabzavot savdo', 'ASDFG54321', 1, 'kichik', '2023-05-15', '2023-06-15', 'Toza va rang-barang nok'),

(5, 'Qovun', 20000, 'O\'zbekiston Qovun sanoat', 'QWERT24680', 1, 'katta', '2023-05-08', '2023-07-08', 'Katta qovun'),
(6, 'Anor', 12000, 'Guliston meva sanoat', 'ZXCVB86420', 1, 'kichik', '2023-05-15', '2023-05-30', 'Toza anor'),
(7, 'Olcha', 7000, 'Guliston meva sanoat', 'ASDFG97531', 1, 'kichik', '2023-05-10', '2023-05-25', 'Toza olcha'),
(8, 'Bodring', 5000, 'O\'zbekiston meva sanoat', 'QWERT12345', 1, 'kichik', '2023-05-10', '2023-05-25', 'Toza bodring'),
(9, 'Shaftoli', 9000, 'Guliston meva sanoat', 'ZXCVB09876', 1, 'kichik', '2023-05-12', '2023-05-27', 'Toza shaftoli'), 

-- Ichimliklar
(10, 'Pepsi', 6000, 'PepsiCo', 'ASDFG12345', 2, '1 litr', '2023-05-15', '2023-06-15', 'Pepsi ichimligi'),
(11, 'Fanta', 6000, 'Coca-Cola', 'QWERT67890', 2, '1 litr', '2023-05-12', '2023-06-12', 'Fanta ichimligi'),
(12, 'Sprite', 6000, 'Coca-Cola', 'ZXCVB13579', 2, '1 litr', '2023-05-10', '2023-06-30', 'Sprite ichimligi'),
(13, 'Nestle', 8000, 'Nestle', 'ASDFG54321', 2, '0.5 litr', '2023-05-15', '2023-06-15', 'Nestle ichimligi'),
(14, 'Coca-Cola', 6000, 'Coca-Cola', 'QWERT24680', 2, '1 litr', '2023-05-08', '2023-07-08', 'Coca-Cola ichimligi'),

(15, 'Lavazza', 20000, 'Lavazza', 'ZXCVB86420', 2, '500 gr', '2023-05-15', '2024-05-15', 'Italiyaning eng yaxshi kofesi'),
(16, 'Nescafe', 12000, 'Nestle', 'ASDFG97531', 2, '100 gr', '2023-05-10', '2024-05-10', 'Qahva do\'stlari uchun'),
(17, 'Twinings', 5000, 'Twinings', 'QWERT12345', 2, '100 ta', '2023-05-10', '2024-05-10', 'Eng zo\'r choylar'),
(18, 'Oreo', 9000, 'Mondelēz International', 'ZXCVB09876', 2, '228 gr', '2023-05-12', '2024-05-12', 'Oreo biskvit'),
(19, 'Lays', 7000, 'PepsiCo', 'ASDFG09876', 2, '150 gr', '2023-05-15', '2024-05-15', 'Lays chips'),

-- Sut va sut mahsulotlari

(20, 'SarSoli', 5000, 'SarSoli', 'ASDFG13579', 3, '1 litr', '2023-05-15', '2023-06-15', 'Qattiq yog'),
(21, 'Hayat', 4000, 'Hayat', 'QWERT35791', 3, '1 litr', '2023-05-12', '2023-06-12', 'Arqa suv'),
(22, 'Olper`s', 6000, 'Olper`s', 'ZXCVB24680', 3, '1 litr', '2023-05-10', '2023-06-30', 'Qattiq yog'),
(23, 'Nestle', 4000, 'Nestle', 'ASDFG46820', 3, '1 litr', '2023-05-15', '2023-06-15', 'Sprotyog'),
(24, 'Moy Sulton', 5000, 'Moy Sulton', 'QWERT12368', 3, '1 litr', '2023-05-08', '2023-07-08', 'Sprotyog'),

(25, 'Olper`s sprotyog', 8000, 'Olper`s', 'ZXCVB24681', 3, '1 litr', '2023-05-15', '2023-06-15', 'Sprotyog'),
(26, 'Nestle Yaponiya', 7000, 'Nestle', 'ASDFG46821', 3, '1 litr', '2023-05-10', '2023-06-30', 'Sprotyog'),
(27, 'Moy Sulton Sprotyog', 5500, 'Moy Sulton', 'QWERT12369', 3, '1 litr', '2023-05-10', '2023-06-30', 'Sprotyog'),
(28, 'SarSoli Qatik', 6500, 'SarSoli', 'ASDFG13580', 3, '1 litr', '2023-05-12', '2023-06-12', 'Qattiq yog'),
(29, 'Hayat Arqa suv', 3500, 'Hayat', 'QWERT35792', 3, '1 litr', '2023-05-15', '2023-06-15', 'Arqa suv'), 

-- Go'sht va go'sht mahsulotlari

(30, 'Dori kabob go\'shti', 55000, 'Kabobchi Dori', 'ASDFG13570', 4, '500 gr', '2023-05-15', '2023-05-25', 'Moy go\'shtli kabob'),
(31, 'Gosht yarim kg', 40000, 'Gosht saroyi', 'QWERT35790', 4, '500 gr', '2023-05-14', '2023-05-24', 'Moy go\'sht'),
(32, 'Tovuq go\'shti 1 kg', 80000, 'Tovuq Saroyi', 'ZXCVB24680', 4, '1 kg', '2023-05-12', '2023-05-22', 'Tovuq go\'shti'),
(33, 'Kabob go\'shti 500 gr', 60000, 'Kabob Saroyi', 'ASDFG46820', 4, '500 gr', '2023-05-10', '2023-05-20', 'Moy go\'shtli kabob'),
(34, 'Shashlik go\'shti', 90000, 'Kabobchi Dori', 'QWERT12360', 4, '1 kg', '2023-05-15', '2023-05-25', 'Moy go\'shtli shashlik'),

(35, 'Sosiskali kabob 1 kg', 70000, 'Kabobchi Dori', 'ASDFG13571', 4, '1 kg', '2023-05-15', '2023-05-25', 'Sosiskali kabob'),
(36, 'Gosht Kabob 1 kg', 85000, 'Kabob Saroyi', 'QWERT35791', 4, '1 kg', '2023-05-12', '2023-05-22', 'Moy go\'shtli kabob'),
(37, 'Tovuq yarim kg', 20000, 'Tovuq Saroyi', 'ZXCVB24681', 4, '500 gr', '2023-05-10', '2023-05-20', 'Moy tovuq'),
(38, 'Gosht qavurma 500 gr', 50000, 'Gosht saroyi', 'ASDFG46821', 4, '500 gr', '2023-05-15', '2023-05-25', 'Gosht qavurmasi'),
(39, 'Tovuq qavurma 500 gr', 35000, 'Tovuq Saroyi', 'QWERT12361', 4, '500 gr', '2023-05-15', '2023-05-25', 'Tovuq qavurmasi'),

-- Yuvish vositalari

(40, 'Oq libos', 25000, 'CleanHouse', 'QWERT12362', 5, '1 litr', '2023-05-20', '2024-05-20', 'Kofe posudani oqish uchun'),
(41, 'Pirelli avtomobil shamoli', 55000, 'Pirelli', 'QWERT12363', 5, '500 ml', '2023-05-10', '2024-05-10', 'Avtomobildagi tomirlarni tozalash uchun'),
(42, 'Antibakterial xaridlar', 12000, 'CleanHouse', 'QWERT12364', 5, '250 ml', '2023-05-05', '2024-05-05', 'Mehmonlar uchun ajratilgan, antiseptik xaridlar'),
(43, 'Domestos', 20000, 'Domestos', 'QWERT12365', 5, '1 litr', '2023-05-15', '2024-05-15', 'Santexnika va hujjatlarning oziq-ovqatda tozalanishi'),
(44, 'Dush gel', 30000, 'Nivea', 'QWERT12366', 5, '500 ml', '2023-05-10', '2024-05-10', 'Dush qilib turing, soch va terini ozlashtiring'),
(45, 'Paxlavachi paxlavasi', 15000, 'CleanHouse', 'QWERT12367', 5, '500 gr', '2023-05-18', '2024-05-18', 'Qoziqorinli mahsulotlar uchun ideal'),
(46, 'Karnay degan qosh', 18000, 'CleanHouse', 'QWERT12368', 5, '1 litr', '2023-05-12', '2024-05-12', 'Qochish qutqaruvchi dori turlari uchun'),
(47, 'Sut yog\'i', 10000, 'Sut Saroyi', 'QWERT12369', 5, '1 litr', '2023-05-11', '2024-05-11', 'Sut yog\'i tayyorlash uchun idealdir'),
(48, 'Baliq temir', 25000, 'CleanHouse', 'QWERT12370', 5, '500 ml', '2023-05-17', '2024-05-17', 'Baliqlar va baliq mahsulotlari uchun temir'),
(49, 'Baliq suyuvi', 12000, 'CleanHouse', 'QWERT12371', 5, '1 litr', '2023-05-22', '2024-05-22', 'Baliqning namliligi va suyuvinig oshirish'),

-- Choy qahva

(50, 'Lavazza Crema e Gusto Coffee Beans', 19000, 'Lavazza', 'O\'zbekistan standarti', 6, '1 kg', '2022-02-01', '2023-02-01', 'Italiya mamlakatidan import qilingan'),
(51, 'Dilmah Earl Grey Tea', 9000, 'Dilmah', 'Halal sertifikati', 6, '50 qop', '2023-01-01', '2024-01-01', 'Sri-Lanka mamlakatidan import qilingan'),
(52, 'Kazbegi Black Tea', 15000, 'Kazbegi', 'ISO 9001', 6, '100 qop', '2023-03-01', '2024-03-01', 'Gruzinistan mamlakatidan import qilingan'),
(53, 'Grandos Espresso Gold Coffee Capsules', 20000, 'Grandos', 'Halal sertifikati', 6, '10 dona', '2022-11-01', '2023-11-01', 'Germaniya mamlakatidan import qilingan'),
(54, 'Ahmad Tea Classic Black Tea', 8000, 'Ahmad Tea', 'Halal sertifikati', 6, '100 qop', '2023-05-01', '2024-05-01', 'Britaniya mamlakatidan import qilingan'),
(55, 'Yogi Tea Ginger Orange with Vanilla Tea', 10000, 'Yogi Tea', 'Organik sertifikati', 6, '20 qop', '2022-12-01', '2024-12-01', 'Germaniya mamlakatidan import qilingan'),
(56, 'Mount Hagen Organic Instant Coffee', 26000, 'Mount Hagen', 'Organik sertifikati', 6, '100 g', '2023-06-01', '2024-06-01', 'Papua - Yeni Gvineya mamlakatidan import qilingan'),
(57, 'Lipton Yellow Label Tea', 7500, 'Lipton', 'Halal sertifikati', 6, '100 qop', '2023-04-01', '2024-04-01', 'Turkiya mamlakatidan import qilingan'),
(58, 'Lavazza Qualita Oro Coffee Beans', 27000, 'Lavazza', 'O\'zbekistan standarti', 6, '1 kg', '2022-12-01', '2023-12-01', 'Italiya mamlakatidan import qilingan'),
(59, 'Dilmah Ceylon Supreme Tea', 11000, 'Dilmah', 'Halal sertifikati', 6, '50 qop', '2023-02-01', '2024-02-01', 'Sri-Lanka mamlakatidan import qilingan'),

-- Un va un mahsulotlari
(60, 'O\'zbek Un', 15000, 'O\'zbek Mekhnat Markazi', 'Tulov', 7, '10 kg', '2023-05-15', '2023-12-15', 'Katta xilma-xil un.'),
(61, 'Un Aralash', 22000, 'O\'zbek Mekhnat Markazi', 'Tulov', 7, '5 kg', '2023-05-15', '2024-05-15', 'Katta xilma-xil un aralashi.'),
(62, 'Yolg\'iz un', 4000, 'O\'zbek Mekhnat Markazi', 'Tulov', 7, '1 kg', '2023-05-15', '2023-11-15', 'Eng yaxshi sifatli yog\' un.'),
(63, 'Qorovul', 8000, 'O\'zbek Mekhnat Markazi', 'Tulov', 7, '2 kg', '2023-05-15', '2023-09-15', 'Toza qorovul.'),
(64, 'Nevkus', 18000, 'O\'zbek Mekhnat Markazi', 'Tulov', 7, '10 kg', '2023-05-15', '2024-01-15', 'Shirin nevkus.'),
(65, 'Makaroni', 5000, 'O\'zbek Mekhnat Markazi', 'Tulov', 7, '1 kg', '2023-05-15', '2023-10-15', 'Tovuqli makaroni.'),
(66, 'Spiral', 5500, 'O\'zbek Mekhnat Markazi', 'Tulov', 7, '1 kg', '2023-05-15', '2023-09-15', 'Yaxshi sifatli spiral.'),
(67, 'Penka', 7000, 'O\'zbek Mekhnat Markazi', 'Tulov', 7, '1 kg', '2023-05-15', '2023-08-15', 'Toza penka.'),
(68, 'Makaron ', 4000, 'O\'zbek Mekhnat Markazi', 'Tulov', 7, '1 kg', '2023-05-15', '2023-11-15', 'Katta xilma-xil makaron.'),
(69, 'Makaron ', 4500, 'O\'zbek Mekhnat Markazi', 'Tulov', 7, '2.5 kg', '2023-05-15', '2023-12-15', 'Qimmatxona sifatida makaron.'),

-- Shirinliklar

(70, 'Tort "Napoleon"', 30000, 'Xalq un', 'SIFATLI MAXSULOT', 8, '1000 gr', '2023-04-01', '2023-06-30', 'Ko\'k pirog va kremdan tashkil topgan tort'),
(71, 'Pirog Qaymoq va yong\'in bilan', 25000, 'Xalq un', 'SIFATLI MAXSULOT', 8, '1000 gr', '2023-04-01', '2023-06-30', 'Ko\'k pirog qaymoq va yong\'in bilan tayyorlandi'),
(72, 'Marmelad Portagal', 10000, 'Bonbon un', 'SIFATLI MAXSULOT', 8, '500 gr', '2023-05-01', '2023-09-30', 'Doimiy sotiladigan portagal marmeladi'),
(73, 'Shirinlik Snickers', 15000, 'Mars Inc.', 'SIFATLI MAXSULOT', 8, '200 gr', '2023-05-01', '2023-09-30', 'Qahva va qalin sharbatlari bilan tayyorlandi'),
(74, 'Tort Korolevskiy', 40000, 'Xalq un', 'SIFATLI MAXSULOT', 8, '1500 gr', '2023-04-01', '2023-06-30', 'Yog\'li krem va kompotlardan tashkil topgan tort'),
(75, 'Pishiriq "Chiz-keks"', 20000, 'Bonbon un', 'SIFATLI MAXSULOT', 8, '500 gr', '2023-05-01', '2023-09-30', 'Chiz va keksdan tayyorlandi'),
(76, 'Pyure "Alma"', 12000, 'Shirinlanuvchi', 'SIFATLI MAXSULOT', 8, '500 gr', '2023-05-01', '2023-09-30', 'Doimiy sotiladigan alma pyuresi'),
(77, 'Tort "Mantikor"', 35000, 'Xalq un', 'SIFATLI MAXSULOT', 8, '2000 gr', '2023-04-01', '2023-06-30', 'Qo\'g\'irchoq va qalin sharbatlardan tashkil topgan tort'),
(78, 'Marmelad "O\'rik"', 10000, 'Bonbon un', 'SIFATLI MAXSULOT', 8, '500 gr', '2023-05-01', '2023-09-30', 'Doimiy sotiladigan o\'rik marmeladi');

insert into product_customer (customer_id, product_id) values (6, 16);
insert into product_customer (customer_id, product_id) values (25, 69);
insert into product_customer (customer_id, product_id) values (25, 65);
insert into product_customer (customer_id, product_id) values (11, 32);
insert into product_customer (customer_id, product_id) values (19, 38);
insert into product_customer (customer_id, product_id) values (8, 54);
insert into product_customer (customer_id, product_id) values (15, 9);
insert into product_customer (customer_id, product_id) values (8, 7);
insert into product_customer (customer_id, product_id) values (4, 15);
insert into product_customer (customer_id, product_id) values (6, 52);
insert into product_customer (customer_id, product_id) values (5, 27);
insert into product_customer (customer_id, product_id) values (14, 31);
insert into product_customer (customer_id, product_id) values (13, 15);
insert into product_customer (customer_id, product_id) values (7, 14);
insert into product_customer (customer_id, product_id) values (21, 61);
insert into product_customer (customer_id, product_id) values (25, 32);
insert into product_customer (customer_id, product_id) values (21, 23);
insert into product_customer (customer_id, product_id) values (13, 66);
insert into product_customer (customer_id, product_id) values (21, 19);
insert into product_customer (customer_id, product_id) values (22, 25);
insert into product_customer (customer_id, product_id) values (6, 1);
insert into product_customer (customer_id, product_id) values (18, 44);
insert into product_customer (customer_id, product_id) values (23, 77);
insert into product_customer (customer_id, product_id) values (18, 8);
insert into product_customer (customer_id, product_id) values (22, 68);
insert into product_customer (customer_id, product_id) values (25, 37);
insert into product_customer (customer_id, product_id) values (8, 15);
insert into product_customer (customer_id, product_id) values (11, 44);
insert into product_customer (customer_id, product_id) values (12, 52);
insert into product_customer (customer_id, product_id) values (23, 29);
insert into product_customer (customer_id, product_id) values (2, 29);
insert into product_customer (customer_id, product_id) values (6, 63);
insert into product_customer (customer_id, product_id) values (16, 37);
insert into product_customer (customer_id, product_id) values (11, 26);
insert into product_customer (customer_id, product_id) values (6, 64);
insert into product_customer (customer_id, product_id) values (17, 62);
insert into product_customer (customer_id, product_id) values (12, 65);
insert into product_customer (customer_id, product_id) values (12, 77);
insert into product_customer (customer_id, product_id) values (4, 75);
insert into product_customer (customer_id, product_id) values (19, 62);
insert into product_customer (customer_id, product_id) values (24, 3);
insert into product_customer (customer_id, product_id) values (24, 34);
insert into product_customer (customer_id, product_id) values (24, 55);
insert into product_customer (customer_id, product_id) values (21, 40);
insert into product_customer (customer_id, product_id) values (18, 11);
insert into product_customer (customer_id, product_id) values (23, 40);
insert into product_customer (customer_id, product_id) values (14, 53);
insert into product_customer (customer_id, product_id) values (6, 71);
insert into product_customer (customer_id, product_id) values (25, 34);
insert into product_customer (customer_id, product_id) values (14, 66);
insert into product_customer (customer_id, product_id) values (3, 30);
insert into product_customer (customer_id, product_id) values (25, 15);
insert into product_customer (customer_id, product_id) values (19, 10);
insert into product_customer (customer_id, product_id) values (5, 65);
insert into product_customer (customer_id, product_id) values (24, 12);
insert into product_customer (customer_id, product_id) values (8, 30);
insert into product_customer (customer_id, product_id) values (25, 19);
insert into product_customer (customer_id, product_id) values (22, 57);
insert into product_customer (customer_id, product_id) values (3, 66);
insert into product_customer (customer_id, product_id) values (14, 16);
insert into product_customer (customer_id, product_id) values (16, 17);
insert into product_customer (customer_id, product_id) values (11, 42);
insert into product_customer (customer_id, product_id) values (13, 28);
insert into product_customer (customer_id, product_id) values (9, 72);
insert into product_customer (customer_id, product_id) values (3, 32);
insert into product_customer (customer_id, product_id) values (15, 18);
insert into product_customer (customer_id, product_id) values (9, 17);
insert into product_customer (customer_id, product_id) values (2, 4);
insert into product_customer (customer_id, product_id) values (9, 59);
insert into product_customer (customer_id, product_id) values (10, 67);
insert into product_customer (customer_id, product_id) values (13, 51);
insert into product_customer (customer_id, product_id) values (11, 65);
insert into product_customer (customer_id, product_id) values (22, 78);
insert into product_customer (customer_id, product_id) values (25, 55);
insert into product_customer (customer_id, product_id) values (25, 32);
insert into product_customer (customer_id, product_id) values (8, 64);
insert into product_customer (customer_id, product_id) values (25, 46);
insert into product_customer (customer_id, product_id) values (8, 74);
insert into product_customer (customer_id, product_id) values (6, 66);
insert into product_customer (customer_id, product_id) values (1, 71);
insert into product_customer (customer_id, product_id) values (7, 7);
insert into product_customer (customer_id, product_id) values (17, 72);
insert into product_customer (customer_id, product_id) values (4, 1);
insert into product_customer (customer_id, product_id) values (8, 25);
insert into product_customer (customer_id, product_id) values (21, 56);
insert into product_customer (customer_id, product_id) values (17, 59);
insert into product_customer (customer_id, product_id) values (24, 48);
insert into product_customer (customer_id, product_id) values (7, 38);
insert into product_customer (customer_id, product_id) values (1, 4);
insert into product_customer (customer_id, product_id) values (10, 20);
insert into product_customer (customer_id, product_id) values (1, 55);
insert into product_customer (customer_id, product_id) values (8, 39);
insert into product_customer (customer_id, product_id) values (15, 38);
insert into product_customer (customer_id, product_id) values (17, 29);
insert into product_customer (customer_id, product_id) values (2, 77);
insert into product_customer (customer_id, product_id) values (1, 5);
insert into product_customer (customer_id, product_id) values (13, 42);
insert into product_customer (customer_id, product_id) values (1, 51);
insert into product_customer (customer_id, product_id) values (11, 47);
insert into product_customer (customer_id, product_id) values (15, 68);
insert into product_customer (customer_id, product_id) values (8, 57);
insert into product_customer (customer_id, product_id) values (8, 23);
insert into product_customer (customer_id, product_id) values (11, 14);
insert into product_customer (customer_id, product_id) values (8, 16);
insert into product_customer (customer_id, product_id) values (16, 17);
insert into product_customer (customer_id, product_id) values (13, 2);
insert into product_customer (customer_id, product_id) values (4, 75);
insert into product_customer (customer_id, product_id) values (5, 59);
insert into product_customer (customer_id, product_id) values (8, 78);
insert into product_customer (customer_id, product_id) values (18, 41);
insert into product_customer (customer_id, product_id) values (7, 6);
insert into product_customer (customer_id, product_id) values (6, 7);
insert into product_customer (customer_id, product_id) values (14, 72);
insert into product_customer (customer_id, product_id) values (4, 58);
insert into product_customer (customer_id, product_id) values (21, 19);
insert into product_customer (customer_id, product_id) values (11, 56);
insert into product_customer (customer_id, product_id) values (24, 61);
insert into product_customer (customer_id, product_id) values (2, 42);
insert into product_customer (customer_id, product_id) values (25, 51);
insert into product_customer (customer_id, product_id) values (7, 45);
insert into product_customer (customer_id, product_id) values (4, 19);
insert into product_customer (customer_id, product_id) values (8, 59);
insert into product_customer (customer_id, product_id) values (21, 59);
insert into product_customer (customer_id, product_id) values (22, 77);
insert into product_customer (customer_id, product_id) values (11, 47);
insert into product_customer (customer_id, product_id) values (20, 48);
insert into product_customer (customer_id, product_id) values (9, 35);
insert into product_customer (customer_id, product_id) values (11, 10);
insert into product_customer (customer_id, product_id) values (2, 65);
insert into product_customer (customer_id, product_id) values (13, 14);
insert into product_customer (customer_id, product_id) values (3, 41);
insert into product_customer (customer_id, product_id) values (13, 6);
insert into product_customer (customer_id, product_id) values (14, 38);
insert into product_customer (customer_id, product_id) values (24, 71);
insert into product_customer (customer_id, product_id) values (6, 4);
insert into product_customer (customer_id, product_id) values (5, 68);
insert into product_customer (customer_id, product_id) values (13, 25);
insert into product_customer (customer_id, product_id) values (2, 26);
insert into product_customer (customer_id, product_id) values (5, 16);
insert into product_customer (customer_id, product_id) values (20, 37);
insert into product_customer (customer_id, product_id) values (2, 33);
insert into product_customer (customer_id, product_id) values (4, 52);
insert into product_customer (customer_id, product_id) values (7, 28);
insert into product_customer (customer_id, product_id) values (24, 22);
insert into product_customer (customer_id, product_id) values (18, 5);
insert into product_customer (customer_id, product_id) values (20, 12);
insert into product_customer (customer_id, product_id) values (9, 45);
insert into product_customer (customer_id, product_id) values (8, 17);
insert into product_customer (customer_id, product_id) values (12, 6);
insert into product_customer (customer_id, product_id) values (3, 15);
insert into product_customer (customer_id, product_id) values (8, 68);
insert into product_customer (customer_id, product_id) values (3, 43);
insert into product_customer (customer_id, product_id) values (22, 49);
insert into product_customer (customer_id, product_id) values (18, 54);
insert into product_customer (customer_id, product_id) values (11, 35);
insert into product_customer (customer_id, product_id) values (17, 24);
insert into product_customer (customer_id, product_id) values (10, 54);
insert into product_customer (customer_id, product_id) values (15, 69);
insert into product_customer (customer_id, product_id) values (14, 41);
insert into product_customer (customer_id, product_id) values (19, 3);
insert into product_customer (customer_id, product_id) values (8, 69);
insert into product_customer (customer_id, product_id) values (9, 76);
insert into product_customer (customer_id, product_id) values (9, 6);
insert into product_customer (customer_id, product_id) values (10, 72);
insert into product_customer (customer_id, product_id) values (19, 1);
insert into product_customer (customer_id, product_id) values (6, 56);
insert into product_customer (customer_id, product_id) values (19, 43);
insert into product_customer (customer_id, product_id) values (3, 10);
insert into product_customer (customer_id, product_id) values (17, 47);
insert into product_customer (customer_id, product_id) values (13, 13);
insert into product_customer (customer_id, product_id) values (15, 75);
insert into product_customer (customer_id, product_id) values (15, 12);
insert into product_customer (customer_id, product_id) values (20, 21);
insert into product_customer (customer_id, product_id) values (17, 47);
insert into product_customer (customer_id, product_id) values (1, 19);
insert into product_customer (customer_id, product_id) values (16, 49);
insert into product_customer (customer_id, product_id) values (1, 68);
insert into product_customer (customer_id, product_id) values (2, 23);
insert into product_customer (customer_id, product_id) values (22, 13);
insert into product_customer (customer_id, product_id) values (6, 60);
insert into product_customer (customer_id, product_id) values (13, 50);
insert into product_customer (customer_id, product_id) values (17, 50);
insert into product_customer (customer_id, product_id) values (1, 75);
insert into product_customer (customer_id, product_id) values (13, 51);
insert into product_customer (customer_id, product_id) values (22, 29);
insert into product_customer (customer_id, product_id) values (4, 1);
insert into product_customer (customer_id, product_id) values (1, 59);
insert into product_customer (customer_id, product_id) values (15, 60);
insert into product_customer (customer_id, product_id) values (22, 78);
insert into product_customer (customer_id, product_id) values (16, 31);
insert into product_customer (customer_id, product_id) values (11, 62);
insert into product_customer (customer_id, product_id) values (7, 5);
insert into product_customer (customer_id, product_id) values (23, 77);
insert into product_customer (customer_id, product_id) values (20, 49);
insert into product_customer (customer_id, product_id) values (11, 54);
insert into product_customer (customer_id, product_id) values (2, 78);
insert into product_customer (customer_id, product_id) values (14, 28);
insert into product_customer (customer_id, product_id) values (21, 52);
insert into product_customer (customer_id, product_id) values (14, 23);
insert into product_customer (customer_id, product_id) values (6, 66);
