-- Практическое задание по теме «Операторы, фильтрация, сортировка и ограничение»
-- 1) Пусть в таблице users поля created_at и updated_at оказались незаполненными.
--  Заполните их текущими датой и временем.

UPDATE `users` SET
	created_at = NOW(),
    updated_at = NOW()
WHERE id = 1;

-- SELECT * FROM users;


-- 2) Таблица users была неудачно спроектирована.
-- Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались
-- значения в формате 20.10.2017 8:10. Необходимо преобразовать поля к типу DATETIME, 
-- сохранив введённые ранее значения.

DROP TABLE IF EXISTS users_fail;
CREATE TABLE users_fail (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at VARCHAR(45) DEFAULT '20.10.2017 8:10',
  updated_at VARCHAR(45) DEFAULT '20.10.2017 8:10'
) COMMENT = 'Покупатели';

INSERT INTO users_fail (name, birthday_at) VALUES
  ('Наталья', '1984-11-12');

UPDATE users_fail SET
	created_at = STR_TO_DATE(created_at, '%d.%m.%Y %H:%i'),
    updated_at = STR_TO_DATE(updated_at, '%d.%m.%Y %H:%i')
WHERE id = 1;

ALTER TABLE users_fail
MODIFY COLUMN created_at DATETIME,
MODIFY COLUMN updated_at DATETIME;

-- SELECT * FROM users_fail;


-- 3) В таблице складских запасов storehouses_products в поле value могут встречаться 
-- самые разные цифры: 0, если товар закончился и выше нуля, если на складе имеются запасы. 
-- Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения 
-- значения value. Однако нулевые запасы должны выводиться в конце, после всех записей.

-- Для начала заполним таблицу storehouses_products:

INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`) VALUES ('1', 1, 1, 1);
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`) VALUES ('2', 2, 2, 11);
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`) VALUES ('3', 1, 3, 9);
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`) VALUES ('4', 2, 4, 0);
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`) VALUES ('5', 1, 5, 20);
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`) VALUES ('6', 2, 6, 10);
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`) VALUES ('7', 1, 7, 3);
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`) VALUES ('8', 2, 1, 14);
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`) VALUES ('9', 1, 2, 26);
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`) VALUES ('10', 2, 3, 4);
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`) VALUES ('11', 1, 4, 0);
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`) VALUES ('12', 2, 5, 7);

SELECT
	id,
	value 
FROM storehouses_products
ORDER BY IF (value = 0, TRUE, FALSE), value;


-- Практическое задание теме «Агрегация данных»
-- 1) Подсчитайте средний возраст пользователей в таблице users.

SELECT
	FLOOR(AVG (timestampdiff(year, birthday_at, now())) ) AS Average_age
FROM users;


-- 2) Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели.
-- Следует учесть, что необходимы дни недели текущего года, а не года рождения.

SELECT
   DAYNAME( CONCAT(YEAR(NOW()), '-', MONTH(birthday_at), '-', DAY(birthday_at)) ) AS birth_dayname,
   COUNT(*)
FROM users
GROUP BY birth_dayname;
