USE Gipermarket;
-- Direktorlar jadvalidagi familiya(last_name)si Rahmonov ning emaili shrahmonov@gmail.com ga o’zgartirilsin. 
UPDATE director SET email='shrahmonov@gmail.com' WHERE last_name='Rahmonov'; 

-- Ishchilar jadvalidagi ma’lumotlardan lavozimi Bo’lim boshlig’i bo’lgan ishlilar oyligi 2 marta oshirilsin. 
UPDATE position SET salary=salary*2 WHERE name='Bo\'lim boshlig\'i';

-- Ishchilar jadvalidan manzili Xorazmlik bo’lgan ishchilar o’chirilsin.
DELETE FROM employee WHERE address IN (‘Xorazm O\’zbekiston’) ; 

-- Muddati o’tgan maxsulotlarni o’chirib tashlansin.
DELETE FROM product WHERE expiration_date < CURDATE();

-- Gipermarketning barcha direktorlarini ko’rish so’ro’vi yaratilsin. 
SELECT * FROM director;

--  Maxsulotlar jadvalidan faqat ichimliklarni chiqaruvchi so’ro’v yaratilsin. 
SELECT id, name, category_id, date_of_manufacture , expiration_date, description FROM product WHERE category_id='2'; 

-- Mijozlar jadvalidan dastlabki 5 ta sartni chiqarish so’ro’vini yozing. 
SELECT * FROM customer LIMIT 5; 

-- Lavozimlar jadvalidan faqat bo’lim bo’shliqlarni chiqarish so’ro’vi yaratilsin. 
SELECT * FROM position WHERE name='Bo\'lim boshlig\'i'; 
 
 -- Ishchilar jadvalidan ma’lumotlarni familiyasi bo’yicha saralansin. 
SELECT * FROM employee  ORDER BY last_name ASC; 
 
 -- Barcha kassir lavozimida ishlaydigan ishchilarning bir o’ylik maoshining yig’indisi hisoblansin.
SELECT SUM(salary) FROM employee JOIN position ON employee.position_id=position.id WHERE position.name=’Kassir’; 
  
-- Ishchilar jadvalidagi hamma ishchilarni lavozim nomi va bo’lim nomi bilan chiqarish so’ro’vi yaratilsin. 
SELECT departament.name, position.name, employee.last_name , employee.first_name FROM employee 
LEFT JOIN position ON employee.position_id = position.id  
LEFT JOIN departament ON position.departament_id = departament.id;  

-- Faqat mahsulot nomi va narxini ko’rish uchun view yatatilsin. 
 CREATE VIEW mahsulot_nomi_narxi AS SELECT name, price FROM product; 
 SELECT * FROM mahsulot_nomi_narxi; 

--  Shunday prosedura yaratingki mijoz idsi kiritilganda u sotib o’lgan barcha mahsulotlar idsi chiqarilsin. 
DELIMITER //
CREATE PROCEDURE mijoz_sotib_olgan_mahsulotlar( IN mijoz_id INT)
BEGIN
	SELECT product.name AS 'Mijoz sotib o\'lgan maxsulotlar' FROM product_customer
    LEFT JOIN product ON product_customer.product_id = product.id
    WHERE customer_id=mijoz_id;
END //
DELIMITER ;

CALL mijoz_sotib_olgan_mahsulotlar('8');