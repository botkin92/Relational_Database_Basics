INSERT `user` (email, phone, password_hash) VALUES 
('Name_e2@mail.ru', 89038763277, SHA1('passe2')),
('name_e3@mail.ru', 89099099933, SHA1('psw_e3'));

INSERT `user` SET
	email = 'name_e4@mail.ru',
    phone = 89099923322,
    password_hash = SHA1('pass_e4');

INSERT `profile` (user_id, firstname, lastname, birthday, gender)
	SELECT 1, first_name, last_name, '1999-01-01', 'm' FROM sakila.actor WHERE actor_id = 1

SELECT id, email as e_mail, phone FROM `user` LIMIT 2;

UPDATE `user` SET
	phone = 89129121313
WHERE id = 1;

DELETE FROM `user` WHERE id = 4;
