-- Практическое задание по теме “Транзакции, переменные, представления”
-- 1) В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. 
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.

START TRANSACTION;
INSERT `users_fail` (name, birthday_at, created_at, updated_at)
SELECT name, birthday_at, created_at, updated_at FROM `users` WHERE id = 1;
DELETE FROM `users` WHERE id = 1;
COMMIT;


-- 2) Создайте представление, которое выводит название name товарной позиции из таблицы products и 
-- соответствующее название каталога name из таблицы catalogs.

CREATE OR REPLACE VIEW my_tbl AS
SELECT name, (SELECT name FROM `catalogs` where id = `products`.catalog_id) AS category
FROM products;

-- SELECT * FROM my_tbl;


-- Практическое задание по теме “Хранимые процедуры и функции, триггеры"
-- 1) Создайте хранимую функцию hello(), которая будет возвращать приветствие, 
-- в зависимости от текущего времени суток. С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", 
-- с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", с 18:00 до 00:00 — "Добрый вечер", 
-- с 00:00 до 6:00 — "Доброй ночи".

DELIMITER //
DROP FUNCTION IF EXISTS hello//
CREATE FUNCTION hello ()
RETURNS TEXT DETERMINISTIC
BEGIN
	DECLARE hour INT;
	SET hour = HOUR(NOW());
	CASE
		WHEN hour BETWEEN 0 AND 5 THEN RETURN "Доброй ночи";
		WHEN hour BETWEEN 6 AND 11 THEN RETURN "Доброе утро";
		WHEN hour BETWEEN 12 AND 17 THEN RETURN "Добрый день";
		WHEN hour BETWEEN 18 AND 23 THEN RETURN "Добрый вечер";
	END CASE;
END//

DELIMITER ;

SELECT NOW(), hello();

-- 2) В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
-- Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное 
-- значение NULL неприемлема. Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля 
-- были заполнены. При попытке присвоить полям NULL-значение необходимо отменить операцию.

DELIMITER //

DROP TRIGGER IF EXISTS insert_products//
CREATE TRIGGER insert_products BEFORE INSERT ON products
FOR EACH ROW BEGIN
	IF NEW.name IS NULL AND NEW.desription IS NULL THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'This operation is not allowed.';
	END IF;
END//

DELIMITER ;

INSERT `products` (name, desription, price, catalog_id) VALUES (NULL, NULL, 1000, 1);
