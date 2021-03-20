-- 1)Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
-- Заполним таблицу orders:
/*
INSERT INTO orders
  (user_id)
VALUES
	(1),(1),(2),(3),(4),(6),(6);
*/

SELECT id, name FROM `users`
WHERE users.id IN (SELECT user_id FROM `orders`);


-- 2) Выведите список товаров products и разделов catalogs, который соответствует товару.

SELECT p.id, p.name, p.desription, c.name AS category
FROM products AS p LEFT JOIN catalogs AS c
ON p.catalog_id = c.id;
