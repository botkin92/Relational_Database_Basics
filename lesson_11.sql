-- Практическое задание по теме “Оптимизация запросов”
-- 1) Создайте таблицу logs типа Archive. ѕусть при каждом создании записи в таблицах users, 
-- catalogs и products в таблицу logs помещаетс€ врем€ и дата создани€ записи, название таблицы,
-- идентификатор первичного ключа и содержимое пол€ name.


DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
	created_at DATETIME NOT NULL,
	name_tbl VARCHAR(45) NOT NULL,
	primary_id BIGINT(20) NOT NULL,
	name_value VARCHAR(45) NOT NULL
) ENGINE = ARCHIVE;


DELIMITER //

DROP TRIGGER IF EXISTS trigger_users;
CREATE TRIGGER trigger_users AFTER INSERT ON users
FOR EACH ROW
BEGIN
	INSERT INTO logs (created_at, name_tbl, primary_id, name_value)
	VALUES (NOW(), 'users', NEW.id, NEW.name);
END //

DROP TRIGGER IF EXISTS trigger_catalogs;
CREATE TRIGGER trigger_catalogs AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN
	INSERT INTO logs (created_at, name_tbl, primary_id, name_value)
	VALUES (NOW(), 'catalogs', NEW.id, NEW.name);
END //

DROP TRIGGER IF EXISTS trigger_products;
CREATE TRIGGER trigger_products AFTER INSERT ON products
FOR EACH ROW
BEGIN
	INSERT INTO logs (created_at, name_tbl, primary_id, name_value)
	VALUES (NOW(), 'products', NEW.id, NEW.name);
END //

DELIMITER ;


-- Практическое задание по теме “NoSQL”
-- 1) В базе данных Redis подберите коллекцию для подсчета посещений с определенных IP-адресов.

SADD ip '198.168.0.1' '198.168.0.2' '198.168.0.3' '198.168.0.4'
SCARD ip


-- 2) При помощи базы данных Redis решите задачу поиска имени пользователя по электронному адресу и наоборот,
-- поиск электронного адреса пользователя по его имени.

SET support@softtime.info support
SET support support@softtime.info

GET support@softtime.info 
GET support


-- 3) Организуйте хранение категорий и товарных позиций учебной базы данных shop в СУБД MongoDB

USE products
db.products.insertMany([
	{"name": "Intel Core i3-8100", "description": "Процессор для настольных персональных компьютеров, основанных на платформе Intel.", "price": "7890.00", "catalog_id": "Процессоры", "created_at": new Date(), "updated_at": new Date()},
	{"name": "Core i5-7400", "description": "Процессор для настольных персональных компьютеров, основанных на платформе Intel.", "price": "12700.00", "catalog_id": "Процессоры", "created_at": new Date(), "updated_at": new Date()}])

USE catalogs
db.catalogs.insertMany([{"name": "Процессоры"}, {"name": "Мат.платы"}, {"name": "Видеокарты"}])
