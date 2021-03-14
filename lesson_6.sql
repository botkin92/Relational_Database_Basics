-- 1) Проанализировать запросы, которые выполнялись на занятии,
-- определить возможные корректировки и/или улучшения (JOIN пока не применять).

-- Альтернативных решений не придумал

-- 2) Пусть задан некоторый пользователь. 
-- Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем.

SELECT
	from_user_id,
    COUNT(*),
	(SELECT status FROM `friend_request` 
    where to_user_id = `message`.from_user_id and from_user_id = `message`.to_user_id) AS Friend_Status -- ищем друзей заданного пользователя
FROM `message`
where to_user_id = 74 -- заданный пользователь
GROUP BY from_user_id
HAVING Friend_Status = 1
ORDER BY COUNT(*) DESC;


-- 3) Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.

SELECT
	*,
	timestampdiff(year, birthday, now()) AS age,
    (SELECT COUNT(*) FROM `likes` WHERE user_id = `profile`.user_id GROUP BY user_id) AS likes
FROM `profile`
ORDER BY age;


-- 4) Определить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT
	(SELECT gender FROM `profile` WHERE user_id = `likes`.user_id) AS gender,
    COUNT(*) AS count_likes
FROM `likes`
GROUP BY gender;


-- 5) Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.

-- Для простоты к каждому пользователю, который добавил медиа, поставил лайк, написал пост или комментарий,
-- будем прибавлять 1 балл. Сумма балов и будет показатель активности.

SELECT
	id,
    IFNULL( (SELECT COUNT(*) FROM `media` WHERE user_id = `user`.id GROUP BY user_id), 0) +
    IFNULL( (SELECT COUNT(*) FROM `post` WHERE user_id = `user`.id GROUP BY user_id), 0) +
    IFNULL( (SELECT COUNT(*) FROM `comments` WHERE user_id = `user`.id GROUP BY user_id), 0) +
    IFNULL( (SELECT COUNT(*) FROM `likes` WHERE user_id = `user`.id GROUP BY user_id), 0) AS activity
FROM `user`
ORDER BY activity
LIMIT 10;


