#
# TABLE STRUCTURE FOR: comments
#

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creater_at` datetime DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  `comments_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_comments_post1_idx` (`post_id`),
  KEY `fk_comments_comments1_idx` (`comments_id`),
  KEY `fk_comments_user1_idx` (`user_id`),
  CONSTRAINT `fk_comments_comments1` FOREIGN KEY (`comments_id`) REFERENCES `comments` (`id`),
  CONSTRAINT `fk_comments_post1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  CONSTRAINT `fk_comments_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (1, 'Voluptatem culpa qui earum perferendis.', '1992-08-17 19:31:46', NULL, 8, 59, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (2, 'Accusantium dolore ut quis sit aut est.', '1994-01-13 16:31:08', NULL, 8, 49, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (3, 'Et perspiciatis iusto voluptas.', '1976-02-10 19:17:42', NULL, 56, 15, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (4, 'Culpa dolores doloribus nesciunt amet dolorem sed.', '2004-12-06 12:31:04', NULL, 39, 84, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (5, 'Laborum expedita eligendi officia.', '1972-10-15 16:12:03', NULL, 80, 67, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (6, 'Officiis harum nostrum neque et exercitationem quas non voluptatem.', '2012-10-24 05:31:38', NULL, 37, 88, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (7, 'Optio fugiat in nemo eum nam reiciendis.', '1981-11-27 07:08:44', NULL, 6, 71, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (8, 'Et odit et repellendus distinctio perspiciatis tempora voluptas eum.', '2009-02-27 00:07:25', NULL, 32, 51, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (9, 'Minus consectetur et eligendi est.', '2010-12-16 03:17:08', NULL, 99, 75, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (10, 'Provident et beatae eveniet sint rem enim inventore molestiae.', '2016-12-02 14:34:35', NULL, 60, 57, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (11, 'Officiis exercitationem porro nihil aut mollitia sequi dignissimos.', '1996-06-16 06:21:09', NULL, 62, 33, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (12, 'Autem repellendus et libero.', '1972-01-11 18:08:08', NULL, 90, 96, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (13, 'Voluptatum magni sit eaque qui et qui labore.', '1975-01-02 04:07:05', NULL, 56, 92, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (14, 'Nihil laudantium odio molestiae facere impedit.', '1970-04-08 23:42:12', NULL, 63, 70, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (15, 'Ea ut suscipit nihil vel veniam.', '2003-12-21 12:39:15', NULL, 85, 93, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (16, 'Dolore velit id iusto consequatur laboriosam odio.', '2007-07-10 19:04:26', NULL, 38, 93, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (17, 'Impedit officia rerum ducimus facere sit veritatis.', '1995-01-01 11:58:28', NULL, 52, 45, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (18, 'Corrupti aut fugiat et aut.', '2018-12-30 06:27:37', NULL, 42, 7, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (19, 'Eum cumque dolorum est laboriosam.', '1980-07-20 21:26:23', NULL, 60, 80, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (20, 'Vel repellendus ipsa excepturi non consequuntur eveniet.', '2018-11-22 12:44:42', NULL, 91, 39, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (21, 'Dolores tempora quod quaerat est incidunt vel.', '1993-08-07 04:11:55', NULL, 46, 27, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (22, 'Quia voluptatem illo aut quidem quod et quaerat.', '2017-04-12 23:03:51', NULL, 27, 52, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (23, 'Adipisci aut enim possimus beatae beatae tempore.', '1978-01-18 07:28:19', NULL, 98, 59, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (24, 'Laborum quia pariatur corrupti laudantium porro accusamus.', '1977-06-29 04:25:46', NULL, 3, 97, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (25, 'Et qui iusto dolores quis dolor et consequatur.', '1970-11-22 18:57:21', NULL, 33, 63, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (26, 'Architecto nihil qui dolorem aut fugit repellendus tempore.', '1975-03-15 21:26:22', NULL, 54, 95, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (27, 'Earum laudantium inventore perferendis quas.', '1983-09-08 16:13:48', NULL, 95, 43, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (28, 'Facere eum autem voluptatibus reprehenderit.', '2014-03-17 16:38:01', NULL, 90, 51, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (29, 'Id aut praesentium quaerat laudantium.', '1982-10-21 04:08:50', NULL, 34, 53, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (30, 'Eius mollitia doloribus dignissimos deleniti voluptatibus.', '1972-02-03 08:10:39', NULL, 21, 19, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (31, 'Debitis est et voluptatem repellendus.', '1986-10-20 20:43:55', NULL, 46, 58, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (32, 'Tempore aut at aliquid nihil facilis.', '1976-12-16 19:32:22', NULL, 11, 97, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (33, 'Consequatur quo reprehenderit quibusdam non natus eos est.', '1989-11-25 10:13:11', NULL, 3, 52, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (34, 'Rerum et est quia quasi et nostrum iusto ullam.', '2015-09-10 23:59:32', NULL, 4, 62, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (35, 'Eveniet et minima omnis quis facilis ipsam.', '1974-09-22 17:43:01', NULL, 32, 95, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (36, 'Laboriosam magnam est expedita id.', '1993-12-25 21:21:36', NULL, 1, 78, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (37, 'Aut eum ut voluptatibus beatae id ut et.', '1988-01-20 14:51:56', NULL, 22, 28, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (38, 'Quisquam ipsa labore eveniet qui laudantium voluptatem ab.', '2018-10-01 11:50:16', NULL, 29, 19, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (39, 'Molestiae officia nulla commodi.', '1995-02-08 17:48:16', NULL, 86, 32, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (40, 'Magni fugit magni explicabo et repellat est officia.', '1985-02-13 18:53:17', NULL, 16, 19, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (41, 'Dolore ab tempore itaque non nulla.', '1983-09-14 21:30:15', NULL, 94, 69, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (42, 'Debitis et reiciendis repudiandae praesentium autem beatae consectetur.', '1996-08-08 09:29:15', NULL, 14, 88, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (43, 'Totam iure eum eos cum blanditiis ducimus recusandae.', '1999-02-28 14:30:14', NULL, 12, 3, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (44, 'Et consequatur eligendi velit ex.', '1980-03-22 01:29:48', NULL, 38, 45, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (45, 'Tempora aliquam quo animi molestiae.', '2015-12-24 00:17:25', NULL, 56, 59, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (46, 'Eum tenetur exercitationem suscipit quasi fuga.', '2002-02-18 01:07:16', NULL, 64, 1, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (47, 'Aperiam iure voluptatibus ratione.', '1976-02-10 16:46:55', NULL, 16, 74, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (48, 'Voluptates non quae asperiores consequatur.', '1970-08-28 12:20:30', NULL, 98, 19, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (49, 'Aut libero consequatur sed quae et quo soluta.', '1989-05-23 22:22:00', NULL, 26, 2, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (50, 'Incidunt fugiat sint et.', '1992-04-08 05:28:57', NULL, 81, 57, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (51, 'Eius commodi odit pariatur eaque in nemo aut.', '2013-01-17 07:21:38', NULL, 96, 81, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (52, 'Sapiente laudantium pariatur repellat quod.', '1970-10-19 08:48:11', NULL, 34, 17, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (53, 'Laboriosam ducimus est quia tempore.', '2009-06-10 21:22:44', NULL, 8, 63, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (54, 'Necessitatibus ipsam cum quis qui sed fuga.', '2018-06-22 09:30:45', NULL, 36, 94, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (55, 'Inventore animi et ex dolorem accusamus reiciendis.', '2008-04-09 17:55:26', NULL, 94, 52, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (56, 'Laudantium enim voluptatem nihil aut est maxime.', '1975-04-09 23:01:12', NULL, 12, 88, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (57, 'Cumque in eligendi necessitatibus eos excepturi quia.', '1985-11-28 06:21:04', NULL, 21, 25, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (58, 'Sit omnis autem et quia.', '2012-02-22 10:08:19', NULL, 75, 32, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (59, 'Aut sunt molestias voluptas aut quia maxime.', '2013-01-03 16:09:10', NULL, 28, 13, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (60, 'Quidem eos iusto incidunt distinctio ipsum nihil.', '1982-12-11 14:15:33', NULL, 77, 84, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (61, 'Doloribus aut accusamus hic possimus sunt et.', '2014-02-05 14:33:16', NULL, 71, 40, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (62, 'Quidem eum sint iure officia.', '1998-06-28 10:18:51', NULL, 85, 87, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (63, 'Aliquam ducimus eum asperiores error.', '2008-10-04 21:37:10', NULL, 14, 83, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (64, 'Est ratione magni mollitia laborum.', '2009-04-04 22:27:00', NULL, 6, 39, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (65, 'Labore dignissimos ullam doloribus optio voluptates.', '1999-07-16 21:28:45', NULL, 84, 86, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (66, 'Tempore maiores et architecto blanditiis ipsa.', '2006-09-26 00:42:50', NULL, 96, 80, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (67, 'Quia sit sunt quis quo fugiat veniam.', '2021-03-02 07:55:22', NULL, 66, 29, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (68, 'Iusto aut et similique exercitationem praesentium voluptate.', '1970-04-20 22:11:36', NULL, 97, 74, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (69, 'Tempore doloremque minima fugit quam animi omnis ipsum.', '1977-09-22 23:39:59', NULL, 91, 32, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (70, 'Ab cumque voluptas similique quod non quia.', '1993-03-18 19:39:32', NULL, 67, 85, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (71, 'Omnis ut accusamus hic.', '1987-10-13 23:50:46', NULL, 84, 79, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (72, 'Repellendus sed at ut sit nesciunt.', '1977-09-16 04:16:59', NULL, 72, 4, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (73, 'Possimus molestiae aut in perferendis non.', '1982-12-27 11:22:51', NULL, 4, 47, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (74, 'Id aliquam ipsa modi aspernatur consequatur quis consequuntur.', '2014-05-08 17:10:33', NULL, 36, 32, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (75, 'Ullam sequi quam excepturi totam.', '2004-06-07 00:59:44', NULL, 60, 12, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (76, 'Sed dolore nihil quia.', '1995-04-26 05:11:40', NULL, 15, 31, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (77, 'At similique deserunt assumenda quos ea.', '1987-05-21 08:45:48', NULL, 52, 100, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (78, 'Consectetur ab vero et fugit non alias.', '1989-05-30 04:52:14', NULL, 18, 65, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (79, 'Laborum pariatur repellendus consequatur ad rerum in.', '2012-06-26 08:13:46', NULL, 82, 23, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (80, 'Deleniti sed est corporis distinctio natus veniam eum.', '2014-11-05 22:34:03', NULL, 3, 65, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (81, 'Voluptatum id ex quidem occaecati magni laborum ratione.', '1976-02-28 07:10:45', NULL, 8, 99, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (82, 'Eligendi veritatis qui maiores placeat rerum reprehenderit.', '2005-05-27 01:27:59', NULL, 45, 74, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (83, 'Et corrupti porro fugit qui voluptate et.', '2019-06-18 13:02:45', NULL, 27, 41, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (84, 'Fugit sit sed veritatis magnam.', '2010-09-08 18:54:25', NULL, 47, 18, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (85, 'Qui consequuntur numquam soluta cumque.', '2008-07-07 19:20:45', NULL, 73, 14, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (86, 'Ut sit est voluptatem iusto beatae.', '2012-07-17 18:13:27', NULL, 3, 56, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (87, 'Reiciendis soluta minima voluptatem amet iure fugiat cumque nulla.', '1997-07-10 01:28:36', NULL, 93, 75, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (88, 'Maxime dolorum autem fugiat quidem.', '1993-07-24 20:22:53', NULL, 60, 97, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (89, 'Maiores quia quis dolorum esse non enim perferendis molestiae.', '1975-02-14 16:00:13', NULL, 21, 95, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (90, 'Illo atque esse et quia explicabo qui.', '1979-06-13 03:17:07', NULL, 28, 81, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (91, 'Illum harum debitis iure dolorem.', '2017-01-03 15:36:33', NULL, 6, 43, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (92, 'Eligendi voluptas dolores asperiores earum porro exercitationem sed.', '2009-04-06 13:08:06', NULL, 11, 58, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (93, 'Ratione aspernatur vitae laborum quod voluptatem.', '1995-03-18 10:26:35', NULL, 42, 28, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (94, 'Est tempore excepturi et ad sunt incidunt voluptas iusto.', '1983-08-15 13:36:11', NULL, 22, 23, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (95, 'Animi vitae dolorum eos modi culpa quam quaerat.', '1978-06-19 19:04:28', NULL, 50, 25, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (96, 'Modi sed et eum earum debitis tenetur.', '1975-10-01 09:06:14', NULL, 88, 58, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (97, 'Expedita est ut nobis sed vel ipsam ad nostrum.', '1972-07-05 18:03:21', NULL, 23, 33, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (98, 'Corrupti rem quia assumenda aut iure aut est libero.', '1989-02-10 17:22:50', NULL, 31, 50, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (99, 'Est eveniet et omnis voluptas facilis hic magni.', '2001-03-20 10:50:49', NULL, 73, 77, NULL);
INSERT INTO `comments` (`id`, `text`, `creater_at`, `deleted_at`, `user_id`, `post_id`, `comments_id`) VALUES (100, 'Sint harum id aut id aut.', '2006-11-05 08:08:54', NULL, 68, 45, NULL);


#
# TABLE STRUCTURE FOR: community
#

DROP TABLE IF EXISTS `community`;

CREATE TABLE `community` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(245) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_community_user1_idx` (`admin_id`),
  CONSTRAINT `fk_community_user1` FOREIGN KEY (`admin_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `community` (`id`, `name`, `text`, `admin_id`) VALUES (1, 'eos', 'Eaque quo et dolorum quo ducimus.', 19);
INSERT INTO `community` (`id`, `name`, `text`, `admin_id`) VALUES (2, 'aperiam', 'Illum totam quam tenetur iusto vitae et.', 72);
INSERT INTO `community` (`id`, `name`, `text`, `admin_id`) VALUES (3, 'blanditiis', 'Consequatur sit dignissimos non harum itaque qui voluptas.', 41);
INSERT INTO `community` (`id`, `name`, `text`, `admin_id`) VALUES (4, 'ut', 'Quo autem est rerum ut exercitationem dignissimos possimus.', 1);
INSERT INTO `community` (`id`, `name`, `text`, `admin_id`) VALUES (5, 'molestiae', 'Ea sit placeat sint molestiae cupiditate soluta et.', 60);
INSERT INTO `community` (`id`, `name`, `text`, `admin_id`) VALUES (6, 'molestias', 'Magni vitae hic et officiis nulla vel vitae.', 13);
INSERT INTO `community` (`id`, `name`, `text`, `admin_id`) VALUES (7, 'officia', 'Nulla aliquam inventore laboriosam minus excepturi illo.', 61);
INSERT INTO `community` (`id`, `name`, `text`, `admin_id`) VALUES (8, 'non', 'Sapiente ipsum cumque eos dolores dignissimos hic temporibus.', 8);
INSERT INTO `community` (`id`, `name`, `text`, `admin_id`) VALUES (9, 'tenetur', 'Minus modi officia aut voluptas quis inventore ea eos.', 39);
INSERT INTO `community` (`id`, `name`, `text`, `admin_id`) VALUES (10, 'est', 'Fugit minus eveniet velit occaecati vel accusantium.', 31);


#
# TABLE STRUCTURE FOR: friend_request
#

DROP TABLE IF EXISTS `friend_request`;

CREATE TABLE `friend_request` (
  `from_user_id` int(10) unsigned NOT NULL,
  `to_user_id` int(10) unsigned NOT NULL,
  `status` tinyint(1) DEFAULT 0 COMMENT '-1 - отказ\n0 - запрос\n1 - дружба',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`from_user_id`,`to_user_id`),
  KEY `fk_friend_request_user1_idx` (`from_user_id`),
  KEY `fk_friend_request_user2_idx` (`to_user_id`),
  CONSTRAINT `fk_friend_request_user1` FOREIGN KEY (`from_user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_friend_request_user2` FOREIGN KEY (`to_user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (1, 14, 0, '1979-02-08 11:21:54');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (1, 22, -1, '1999-08-12 06:13:45');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (3, 15, 0, '1974-06-13 08:57:25');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (3, 65, -1, '2003-10-10 22:34:57');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (3, 66, 1, '1991-01-14 02:06:27');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (3, 97, 1, '2020-01-02 12:29:41');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (4, 9, 1, '1983-11-02 18:34:10');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (5, 68, 0, '1991-12-10 17:58:36');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (8, 32, 0, '1976-01-06 19:45:12');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (8, 45, -1, '1980-07-21 19:55:38');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (8, 89, 1, '1971-06-17 23:22:20');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (8, 93, 1, '1991-03-24 11:52:21');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (10, 52, 1, '1995-10-27 08:42:30');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (10, 98, 0, '2008-05-20 04:25:49');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (11, 13, 1, '1976-11-30 19:06:37');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (11, 17, 0, '1975-04-22 08:05:34');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (11, 44, 1, '1999-03-16 18:28:25');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (11, 85, 0, '1990-05-24 10:39:10');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (12, 22, 1, '1981-01-12 06:32:37');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (12, 75, 0, '1982-08-16 08:51:15');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (14, 86, 1, '2008-10-30 21:58:08');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (15, 50, 0, '1981-01-12 09:11:23');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (16, 51, 1, '2020-03-20 23:23:48');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (16, 55, 0, '1987-03-04 15:29:40');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (16, 64, 1, '1989-11-30 18:28:01');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (17, 87, 0, '2020-08-11 00:58:32');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (19, 6, 0, '1981-10-13 04:49:51');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (20, 18, -1, '1976-07-14 17:58:08');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (21, 57, -1, '2007-08-19 01:13:34');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (22, 72, 0, '1976-09-28 19:36:53');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (24, 34, 1, '1984-10-12 00:05:29');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (25, 23, 1, '2004-05-22 12:03:02');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (25, 33, -1, '1971-07-14 02:32:06');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (27, 10, -1, '1974-10-14 08:33:46');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (31, 6, 0, '2003-05-25 18:08:05');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (33, 73, 0, '1986-11-07 07:41:27');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (35, 83, 1, '2010-09-19 18:44:46');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (36, 27, -1, '1986-11-22 09:41:46');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (36, 30, 0, '2008-12-17 06:20:38');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (37, 66, 0, '1996-09-02 21:02:38');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (37, 69, 0, '1999-08-19 04:23:45');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (38, 59, -1, '1992-02-16 13:53:09');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (40, 39, -1, '2004-04-11 08:06:47');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (41, 6, 0, '1991-10-08 11:41:32');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (41, 49, 1, '2001-07-23 08:06:24');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (42, 15, 1, '1970-06-09 03:25:32');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (43, 12, -1, '2007-05-03 20:34:04');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (43, 24, 1, '1989-01-04 04:25:27');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (44, 66, 0, '1999-09-08 16:42:52');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (46, 47, -1, '1984-06-12 17:49:59');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (47, 48, 0, '2019-08-29 04:04:11');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (48, 100, 0, '1983-11-03 00:26:23');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (49, 91, -1, '2016-08-03 06:12:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (50, 92, -1, '2020-12-05 11:05:55');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (52, 6, -1, '1990-07-10 08:49:23');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (53, 2, 1, '2013-10-22 12:49:39');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (53, 42, 1, '1996-06-20 21:44:55');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (56, 3, -1, '1977-03-23 08:00:52');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (57, 46, 1, '1999-06-01 23:56:25');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (58, 8, -1, '1980-12-24 05:58:27');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (59, 57, -1, '2015-10-25 00:49:42');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (59, 62, 1, '2011-09-18 17:31:25');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (59, 98, -1, '1997-12-17 08:50:35');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (63, 12, 0, '2016-09-03 10:26:30');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (63, 36, -1, '1977-10-27 01:54:03');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (64, 32, 0, '1971-08-30 04:10:31');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (64, 79, -1, '2012-12-29 03:35:35');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (65, 49, 0, '2012-06-04 22:42:11');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (66, 39, -1, '2010-06-11 18:31:03');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (68, 18, -1, '1972-09-14 23:37:57');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (71, 31, -1, '1993-06-04 11:52:36');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (72, 65, -1, '1982-05-20 11:39:38');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (74, 84, 1, '2020-08-30 20:15:49');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (75, 94, 0, '2013-01-25 21:10:30');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (77, 58, -1, '1997-10-18 20:41:15');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (79, 18, -1, '1975-08-11 01:01:13');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (81, 23, 0, '1998-01-11 04:08:24');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (81, 87, 0, '2006-12-27 21:52:20');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (81, 94, 0, '1982-10-13 05:34:07');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (82, 13, 1, '1976-02-24 03:05:03');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (82, 31, -1, '1973-05-07 02:24:16');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (82, 38, -1, '1981-02-27 17:31:03');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (83, 50, -1, '2016-03-21 01:36:34');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (83, 53, 1, '1973-06-16 09:10:01');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (84, 15, 0, '1979-06-22 08:01:16');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (84, 26, 1, '1972-01-17 00:03:16');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (87, 99, 1, '1971-02-22 00:23:54');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (90, 39, -1, '1993-08-10 14:24:32');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (91, 63, 1, '2003-09-22 02:16:41');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (91, 77, 1, '1982-02-10 15:26:58');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (92, 99, 0, '2017-06-01 12:24:55');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (93, 43, -1, '1985-02-08 12:38:36');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (93, 57, 1, '1985-04-21 09:45:24');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (95, 46, 1, '1985-11-06 11:22:22');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (96, 52, 0, '2017-10-27 21:32:37');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (96, 73, 1, '1985-04-09 00:12:35');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (97, 13, 1, '1995-01-20 23:15:31');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (98, 30, 0, '2000-02-22 08:54:44');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`) VALUES (100, 94, 0, '2002-03-03 00:57:04');


#
# TABLE STRUCTURE FOR: likes
#

DROP TABLE IF EXISTS `likes`;

CREATE TABLE `likes` (
  `like_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) DEFAULT NULL COMMENT '0 - delete like\n1 - like',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `user_id` int(10) unsigned NOT NULL,
  `media_id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  `comments_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`like_id`),
  KEY `fk_likes_user1_idx` (`user_id`),
  KEY `fk_likes_media1_idx` (`media_id`),
  KEY `fk_likes_post1_idx` (`post_id`),
  KEY `fk_likes_comments1_idx` (`comments_id`),
  CONSTRAINT `fk_likes_comments1` FOREIGN KEY (`comments_id`) REFERENCES `comments` (`id`),
  CONSTRAINT `fk_likes_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_likes_post1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  CONSTRAINT `fk_likes_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (1, 1, '2020-08-24 23:38:19', NULL, 68, 65, 51, 15);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (2, 1, '2014-05-10 23:18:19', NULL, 4, 11, 14, 15);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (3, 1, '1975-06-16 07:08:53', NULL, 20, 28, 11, 23);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (4, 1, '1981-02-19 04:32:05', NULL, 45, 5, 99, 72);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (5, 1, '2018-08-29 23:17:28', NULL, 97, 29, 91, 14);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (6, 1, '2018-04-02 21:13:47', NULL, 88, 32, 25, 19);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (7, 1, '1991-12-04 05:41:01', NULL, 77, 47, 22, 86);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (8, 1, '1988-06-19 04:50:32', NULL, 71, 24, 35, 39);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (9, 1, '1980-08-23 00:31:13', NULL, 88, 86, 54, 92);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (10, 1, '2018-10-22 06:48:06', NULL, 96, 67, 7, 16);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (11, 1, '2007-10-17 22:54:32', NULL, 95, 17, 38, 39);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (12, 1, '2007-07-22 08:38:19', NULL, 21, 37, 11, 18);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (13, 1, '2021-03-05 05:37:47', NULL, 66, 1, 31, 53);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (14, 1, '2017-07-26 06:28:25', NULL, 32, 55, 72, 8);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (15, 1, '1983-05-08 08:22:49', NULL, 2, 93, 94, 73);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (16, 1, '1997-01-04 13:43:28', NULL, 16, 29, 12, 4);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (17, 1, '2011-06-30 23:48:29', NULL, 14, 65, 96, 10);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (18, 1, '2012-11-17 00:07:30', NULL, 32, 2, 25, 26);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (19, 1, '2018-01-07 12:59:22', NULL, 18, 63, 65, 39);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (20, 1, '1995-11-27 01:48:30', NULL, 99, 75, 56, 65);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (21, 1, '2008-01-02 04:15:11', NULL, 76, 87, 17, 8);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (22, 1, '1999-02-20 08:53:36', NULL, 42, 89, 15, 44);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (23, 1, '2005-02-03 23:02:10', NULL, 81, 8, 16, 97);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (24, 1, '1996-08-04 20:00:49', NULL, 37, 27, 1, 50);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (25, 1, '1987-01-22 17:05:52', NULL, 92, 96, 59, 23);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (26, 1, '1989-08-11 08:05:13', NULL, 97, 84, 48, 15);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (27, 1, '2012-12-06 14:41:05', NULL, 46, 13, 53, 45);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (28, 1, '1987-07-01 15:02:04', NULL, 87, 9, 10, 63);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (29, 1, '1985-09-05 08:06:48', NULL, 95, 27, 70, 37);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (30, 1, '1979-06-08 12:47:17', NULL, 15, 85, 80, 96);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (31, 1, '1990-11-02 14:28:18', NULL, 93, 96, 93, 29);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (32, 1, '1984-07-18 09:58:22', NULL, 22, 93, 78, 14);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (33, 1, '1971-09-11 19:11:10', NULL, 88, 37, 36, 85);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (34, 1, '1993-03-07 15:36:44', NULL, 20, 84, 99, 66);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (35, 1, '2010-03-11 18:37:19', NULL, 96, 52, 11, 83);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (36, 1, '1999-07-02 17:23:07', NULL, 61, 21, 46, 56);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (37, 1, '1990-09-21 16:47:46', NULL, 47, 15, 92, 62);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (38, 1, '1995-08-10 09:44:50', NULL, 99, 71, 58, 91);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (39, 1, '2008-08-08 21:58:08', NULL, 66, 50, 20, 88);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (40, 1, '1994-05-20 11:21:59', NULL, 43, 97, 1, 30);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (41, 1, '2006-11-04 00:32:53', NULL, 34, 37, 15, 54);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (42, 1, '2017-01-14 19:01:29', NULL, 21, 14, 20, 17);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (43, 1, '2016-09-22 08:35:30', NULL, 66, 31, 100, 26);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (44, 1, '1999-02-10 05:29:30', NULL, 51, 45, 81, 98);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (45, 1, '1979-01-02 07:34:10', NULL, 60, 72, 59, 58);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (46, 1, '2013-03-11 14:26:34', NULL, 42, 16, 49, 8);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (47, 1, '1989-06-17 06:37:55', NULL, 66, 68, 95, 8);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (48, 1, '1995-06-28 10:31:52', NULL, 65, 96, 38, 98);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (49, 1, '2015-09-28 14:37:59', NULL, 33, 53, 52, 53);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (50, 1, '1981-02-20 21:01:03', NULL, 66, 71, 70, 31);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (51, 1, '1992-06-25 14:58:17', NULL, 1, 69, 57, 51);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (52, 1, '1979-05-16 19:18:41', NULL, 13, 37, 48, 72);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (53, 1, '2017-04-09 09:57:53', NULL, 9, 7, 30, 50);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (54, 1, '1982-03-22 16:32:00', NULL, 23, 79, 58, 88);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (55, 1, '1990-07-01 20:50:28', NULL, 47, 52, 96, 11);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (56, 1, '1989-05-14 11:58:39', NULL, 48, 33, 9, 80);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (57, 1, '1980-03-15 16:49:16', NULL, 86, 60, 33, 51);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (58, 1, '1989-05-19 17:28:59', NULL, 31, 2, 82, 31);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (59, 1, '2005-08-25 03:17:05', NULL, 70, 38, 81, 83);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (60, 1, '1994-02-13 19:48:00', NULL, 75, 29, 55, 83);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (61, 1, '1970-12-12 22:37:11', NULL, 35, 85, 33, 57);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (62, 1, '1994-05-15 22:10:55', NULL, 63, 90, 45, 10);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (63, 1, '2008-05-21 07:19:38', NULL, 42, 40, 21, 89);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (64, 1, '1992-09-04 07:41:42', NULL, 73, 29, 69, 58);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (65, 1, '2017-10-27 16:13:44', NULL, 89, 1, 9, 19);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (66, 1, '1987-08-06 13:43:16', NULL, 3, 91, 50, 73);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (67, 1, '2000-10-25 23:51:18', NULL, 28, 30, 55, 3);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (68, 1, '1986-06-21 22:19:47', NULL, 59, 10, 85, 93);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (69, 1, '1974-09-21 01:28:40', NULL, 94, 17, 50, 57);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (70, 1, '1997-04-26 09:54:11', NULL, 7, 95, 66, 49);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (71, 1, '2019-02-01 06:52:03', NULL, 34, 86, 38, 7);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (72, 1, '1980-05-09 14:29:40', NULL, 15, 6, 65, 4);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (73, 1, '1977-04-09 17:59:35', NULL, 7, 73, 23, 9);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (74, 1, '1999-04-28 07:45:30', NULL, 63, 72, 81, 91);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (75, 1, '1994-04-20 14:16:08', NULL, 2, 36, 93, 60);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (76, 1, '2012-04-04 18:07:58', NULL, 45, 78, 53, 39);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (77, 1, '2001-10-27 05:35:49', NULL, 95, 3, 95, 1);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (78, 1, '1992-02-11 00:03:42', NULL, 97, 61, 49, 30);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (79, 1, '2017-12-05 18:27:41', NULL, 47, 87, 37, 61);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (80, 1, '2011-10-05 08:07:51', NULL, 92, 1, 65, 99);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (81, 1, '2004-12-05 14:05:55', NULL, 74, 87, 8, 37);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (82, 1, '2012-05-21 23:12:40', NULL, 58, 88, 27, 60);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (83, 1, '1993-08-17 12:19:08', NULL, 24, 20, 19, 69);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (84, 1, '1993-09-14 07:01:00', NULL, 97, 72, 7, 92);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (85, 1, '2014-04-02 04:29:03', NULL, 74, 2, 93, 70);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (86, 1, '2015-05-25 02:32:47', NULL, 63, 41, 100, 9);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (87, 1, '1973-04-21 13:39:33', NULL, 28, 37, 69, 19);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (88, 1, '2013-09-28 08:14:11', NULL, 37, 34, 18, 10);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (89, 1, '1995-11-22 02:38:23', NULL, 20, 25, 46, 78);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (90, 1, '1982-09-02 23:43:29', NULL, 13, 73, 37, 36);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (91, 1, '2002-11-05 07:14:07', NULL, 93, 56, 4, 90);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (92, 1, '2015-05-05 23:58:39', NULL, 27, 11, 81, 1);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (93, 1, '2004-08-19 15:57:19', NULL, 12, 73, 71, 75);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (94, 1, '1989-11-04 17:02:03', NULL, 14, 71, 83, 41);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (95, 1, '1997-09-19 15:14:25', NULL, 7, 52, 60, 44);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (96, 1, '2003-05-08 04:02:35', NULL, 85, 77, 54, 4);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (97, 1, '2018-11-18 21:53:40', NULL, 1, 100, 82, 13);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (98, 1, '1995-06-24 14:36:29', NULL, 72, 18, 49, 65);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (99, 1, '1982-03-28 22:42:08', NULL, 74, 53, 54, 1);
INSERT INTO `likes` (`like_id`, `status`, `created_at`, `updated_at`, `user_id`, `media_id`, `post_id`, `comments_id`) VALUES (100, 1, '2018-08-25 15:51:28', NULL, 63, 35, 1, 75);


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `url` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '/files/imgs/2020/01/20/img.jpg',
  `blob` blob DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `fk_media_media_type1_idx` (`media_type_id`),
  KEY `fk_media_user1_idx` (`user_id`),
  CONSTRAINT `fk_media_media_type1` FOREIGN KEY (`media_type_id`) REFERENCES `media_type` (`id`),
  CONSTRAINT `fk_media_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (1, 1, 60, 'application/vnd.openxmlformats-officedocument', NULL, NULL, '2017-03-27 12:09:18', '1989-01-03 16:29:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (2, 1, 40, 'model/vnd.gtw', NULL, NULL, '2004-05-26 10:48:52', '2013-03-28 19:14:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (3, 2, 25, 'application/vnd.recordare.musicxml', NULL, NULL, '2002-07-20 18:54:56', '1975-02-19 05:07:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (4, 2, 55, 'application/vnd.oasis.opendocument.graphics', NULL, NULL, '2021-02-20 02:25:26', '1998-08-16 23:35:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (5, 3, 77, 'application/xproc+xml', NULL, NULL, '2011-11-11 23:38:27', '2005-03-12 08:07:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (6, 1, 18, 'application/vnd.trueapp', NULL, NULL, '1976-01-16 08:44:46', '1992-03-17 18:13:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (7, 2, 5, 'video/ogg', NULL, NULL, '2020-07-28 08:15:58', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (8, 1, 97, 'application/vnd.oasis.opendocument.presentati', NULL, NULL, '1981-11-28 05:13:38', '1994-05-13 23:55:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (9, 2, 11, 'application/vnd.hal+xml', NULL, NULL, '1989-05-19 18:19:47', '1970-02-12 12:44:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (10, 1, 79, 'model/vnd.dwf', NULL, NULL, '1989-10-07 10:30:45', '1992-09-20 01:48:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (11, 2, 51, 'application/vnd.uoml+xml', NULL, NULL, '1992-12-31 02:43:56', '2019-07-23 16:54:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (12, 2, 32, 'application/vnd.sun.xml.writer.template', NULL, NULL, '2014-10-21 08:48:03', '2011-01-13 07:46:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (13, 3, 79, 'application/vnd.wap.wbxml', NULL, NULL, '2009-11-21 01:32:39', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (14, 3, 6, 'application/vnd.vsf', NULL, NULL, '2013-01-24 17:11:37', '2000-12-09 18:18:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (15, 1, 19, 'application/x-research-info-systems', NULL, NULL, '1978-03-25 12:55:01', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (16, 2, 51, 'audio/basic', NULL, NULL, '2010-06-25 04:47:50', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (17, 3, 76, 'application/vnd.igloader', NULL, NULL, '2014-06-28 03:00:10', '2002-05-05 17:33:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (18, 3, 40, 'video/quicktime', NULL, NULL, '2011-12-25 16:42:26', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (19, 1, 26, 'application/vnd.openxmlformats-officedocument', NULL, NULL, '2007-05-21 07:52:15', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (20, 3, 84, 'application/x-iso9660-image', NULL, NULL, '1990-07-01 17:01:06', '1998-05-17 08:35:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (21, 1, 20, 'video/jpm', NULL, NULL, '1988-08-17 22:14:04', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (22, 1, 43, 'image/x-portable-anymap', NULL, NULL, '1971-02-09 18:18:26', '1975-12-12 16:32:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (23, 1, 31, 'application/x-silverlight-app', NULL, NULL, '2012-01-07 08:38:19', '1987-05-17 04:52:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (24, 2, 77, 'application/vnd.kinar', NULL, NULL, '1991-07-30 12:48:43', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (25, 2, 64, 'image/g3fax', NULL, NULL, '2011-03-06 07:48:35', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (26, 2, 7, 'application/x-tex', NULL, NULL, '2015-03-10 15:28:01', '2017-08-04 00:05:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (27, 1, 2, 'application/yang', NULL, NULL, '2005-07-04 06:27:38', '1980-05-23 23:37:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (28, 2, 3, 'application/vnd.wap.wmlscriptc', NULL, NULL, '1985-10-22 20:54:32', '1979-06-13 05:29:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (29, 3, 20, 'text/x-vcalendar', NULL, NULL, '2009-06-17 08:48:54', '2008-01-02 10:50:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (30, 1, 13, 'image/x-cmx', NULL, NULL, '2018-09-25 16:47:53', '2003-09-29 06:56:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (31, 2, 66, 'application/vnd.dreamfactory', NULL, NULL, '2007-10-10 11:25:19', '1982-04-09 02:11:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (32, 2, 17, 'application/x-futuresplash', NULL, NULL, '1999-06-27 17:24:35', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (33, 2, 53, 'application/vnd.kidspiration', NULL, NULL, '1975-02-17 18:12:59', '2004-01-25 10:40:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (34, 2, 42, 'application/vnd.enliven', NULL, NULL, '1985-09-22 09:55:42', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (35, 3, 51, 'application/x-tgif', NULL, NULL, '1995-02-12 15:42:40', '2017-01-16 10:05:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (36, 1, 81, 'application/x-gca-compressed', NULL, NULL, '2002-07-19 07:17:57', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (37, 3, 26, 'image/tiff', NULL, NULL, '2017-12-23 03:13:03', '2008-03-01 12:43:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (38, 1, 94, 'video/jpeg', NULL, NULL, '1980-05-24 10:00:17', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (39, 2, 62, 'application/vnd.fluxtime.clip', NULL, NULL, '1995-05-06 13:46:21', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (40, 3, 98, 'application/vnd.epson.quickanime', NULL, NULL, '2009-02-25 06:34:12', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (41, 1, 25, 'application/x-java-jnlp-file', NULL, NULL, '1995-05-18 22:05:50', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (42, 1, 40, 'image/tiff', NULL, NULL, '1995-01-18 05:49:43', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (43, 1, 43, 'application/vnd.syncml.dm+wbxml', NULL, NULL, '2006-04-23 21:34:25', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (44, 2, 7, 'application/yang', NULL, NULL, '1998-04-10 17:34:23', '1993-10-10 03:12:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (45, 2, 51, 'model/vrml', NULL, NULL, '2003-02-15 09:37:12', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (46, 1, 1, 'application/xaml+xml', NULL, NULL, '1990-12-19 05:28:53', '1982-04-17 16:07:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (47, 1, 83, 'audio/x-wav', NULL, NULL, '1977-08-24 07:09:21', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (48, 1, 59, 'application/x-gtar', NULL, NULL, '1977-04-26 19:46:28', '1976-10-02 04:12:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (49, 2, 74, 'application/octet-stream', NULL, NULL, '1978-05-19 01:41:19', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (50, 1, 14, 'application/pgp-encrypted', NULL, NULL, '2006-11-08 21:29:15', '2008-07-01 23:36:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (51, 1, 26, 'application/x-csh', NULL, NULL, '1976-12-22 05:41:26', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (52, 3, 95, 'application/vnd.syncml.dm+wbxml', NULL, NULL, '1997-06-19 12:56:13', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (53, 2, 16, 'audio/x-mpegurl', NULL, NULL, '1988-09-16 23:13:15', '1990-11-15 04:10:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (54, 3, 8, 'application/x-msclip', NULL, NULL, '1986-10-13 05:43:22', '1992-12-30 00:22:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (55, 3, 59, 'application/x-sv4cpio', NULL, NULL, '2019-06-19 22:50:05', '2004-10-03 07:58:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (56, 1, 3, 'application/x-xz', NULL, NULL, '2016-03-22 18:55:18', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (57, 3, 9, 'video/mp4', NULL, NULL, '1989-07-26 18:33:46', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (58, 2, 11, 'application/vnd.flographit', NULL, NULL, '1984-06-10 07:40:19', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (59, 2, 84, 'model/vnd.collada+xml', NULL, NULL, '1988-08-19 21:55:46', '1986-07-12 20:27:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (60, 1, 14, 'application/vnd.ms-lrm', NULL, NULL, '2005-07-14 01:13:46', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (61, 2, 37, 'application/sbml+xml', NULL, NULL, '2006-01-04 20:19:15', '2013-03-19 16:48:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (62, 1, 52, 'text/plain', NULL, NULL, '1995-12-21 14:47:13', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (63, 1, 31, 'application/pskc+xml', NULL, NULL, '2005-04-29 13:33:41', '2000-10-04 10:12:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (64, 1, 55, 'video/quicktime', NULL, NULL, '1991-05-15 01:33:16', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (65, 1, 10, 'application/x-t3vm-image', NULL, NULL, '2001-05-11 21:46:22', '1982-11-28 14:10:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (66, 3, 30, 'audio/ogg', NULL, NULL, '1998-05-07 07:08:16', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (67, 2, 62, 'application/vnd.simtech-mindmapper', NULL, NULL, '2005-04-14 04:31:07', '2008-08-06 02:32:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (68, 1, 87, 'application/vnd.uoml+xml', NULL, NULL, '2001-07-14 07:46:27', '2001-07-29 02:25:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (69, 3, 13, 'model/x3d+xml', NULL, NULL, '2021-01-13 09:47:59', '2006-10-19 14:35:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (70, 3, 56, 'application/vnd.webturbo', NULL, NULL, '2015-11-19 03:49:38', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (71, 3, 100, 'application/x-tex-tfm', NULL, NULL, '1970-08-26 00:20:40', '1988-03-14 06:33:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (72, 2, 55, 'video/x-ms-wm', NULL, NULL, '1970-06-16 09:42:51', '1991-08-22 09:14:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (73, 1, 100, 'application/x-zmachine', NULL, NULL, '2016-11-02 21:47:20', '2015-01-11 09:14:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (74, 2, 60, 'application/x-csh', NULL, NULL, '1987-06-06 16:05:12', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (75, 3, 83, 'text/vnd.curl.scurl', NULL, NULL, '2009-02-03 12:22:19', '1993-09-30 00:08:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (76, 3, 18, 'application/vnd.openofficeorg.extension', NULL, NULL, '2015-03-22 03:24:47', '1983-03-09 14:35:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (77, 1, 86, 'application/vnd.lotus-approach', NULL, NULL, '2004-11-19 15:54:37', '1998-10-03 16:02:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (78, 3, 39, 'application/vnd.kidspiration', NULL, NULL, '1972-09-05 06:26:54', '1972-11-05 22:32:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (79, 1, 79, 'application/vnd.uiq.theme', NULL, NULL, '2004-04-13 12:37:08', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (80, 3, 22, 'application/vnd.igloader', NULL, NULL, '1985-05-09 20:42:51', '2017-07-01 22:20:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (81, 3, 62, 'application/vnd.llamagraphics.life-balance.de', NULL, NULL, '2010-11-16 04:16:51', '2011-02-28 05:32:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (82, 2, 24, 'application/x-mscardfile', NULL, NULL, '2006-12-23 12:40:04', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (83, 1, 76, 'application/vnd.kde.kformula', NULL, NULL, '2015-12-25 22:59:56', '2000-06-09 02:06:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (84, 1, 1, 'application/vnd.ezpix-package', NULL, NULL, '2005-05-19 21:34:07', '1979-03-17 23:49:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (85, 3, 5, 'application/x-conference', NULL, NULL, '1984-06-30 23:49:03', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (86, 2, 60, 'text/html', NULL, NULL, '1983-08-23 09:36:26', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (87, 1, 13, 'video/ogg', NULL, NULL, '2007-03-08 18:23:17', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (88, 1, 12, 'video/vnd.dece.hd', NULL, NULL, '1998-11-02 08:50:07', '1982-11-10 01:00:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (89, 1, 80, 'image/vnd.xiff', NULL, NULL, '2021-01-03 21:59:28', '1986-04-18 17:24:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (90, 3, 95, 'application/x-xfig', NULL, NULL, '2007-03-12 14:05:32', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (91, 2, 44, 'application/vnd.kodak-descriptor', NULL, NULL, '1983-04-18 03:08:09', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (92, 1, 81, 'application/vnd.ms-powerpoint.slideshow.macro', NULL, NULL, '1998-02-23 18:37:09', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (93, 1, 81, 'image/tiff', NULL, NULL, '1970-06-04 19:45:58', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (94, 1, 46, 'model/vnd.gdl', NULL, NULL, '1973-06-12 06:54:54', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (95, 2, 13, 'image/ief', NULL, NULL, '1989-09-13 17:07:55', '1999-02-15 06:34:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (96, 3, 47, 'application/java-archive', NULL, NULL, '1989-06-01 10:39:11', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (97, 3, 19, 'application/pdf', NULL, NULL, '1973-03-04 21:49:30', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (98, 3, 97, 'image/x-tga', NULL, NULL, '1985-04-21 20:08:48', '1991-06-09 19:47:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (99, 3, 81, 'application/vnd.openxmlformats-officedocument', NULL, NULL, '1977-05-20 13:51:28', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (100, 3, 82, 'image/x-freehand', NULL, NULL, '1975-11-18 19:52:46', '1994-07-05 00:37:03');


#
# TABLE STRUCTURE FOR: media_type
#

DROP TABLE IF EXISTS `media_type`;

CREATE TABLE `media_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media_type` (`id`, `name`) VALUES (1, ' audio');
INSERT INTO `media_type` (`id`, `name`) VALUES (2, ' video');
INSERT INTO `media_type` (`id`, `name`) VALUES (3, 'img');


#
# TABLE STRUCTURE FOR: message
#

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` int(10) unsigned NOT NULL,
  `to_user_id` int(10) unsigned NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `media_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_message_user1_idx` (`from_user_id`),
  KEY `fk_message_user2_idx` (`to_user_id`),
  KEY `fk_message_media1_idx` (`media_id`),
  CONSTRAINT `fk_message_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_message_user1` FOREIGN KEY (`from_user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_message_user2` FOREIGN KEY (`to_user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (1, 16, 65, 'Eius illo ut ullam praesentium neque sint distinctio.', '1984-05-31 07:19:43', NULL, 58);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (2, 68, 36, 'Quidem et voluptatem est.', '2007-12-21 02:23:03', NULL, 13);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (3, 60, 66, 'Eos aut unde sequi delectus.', '2016-12-01 12:30:33', NULL, 98);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (4, 70, 54, 'Quos veritatis non assumenda ratione voluptatum quaerat non.', '1987-04-15 11:45:44', NULL, 16);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (5, 65, 11, 'Aperiam eum saepe ullam qui odio est delectus.', '2010-12-10 16:57:35', NULL, 35);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (6, 87, 19, 'Pariatur quia aspernatur reiciendis sunt laborum ab.', '1971-09-20 15:41:43', NULL, 90);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (7, 57, 86, 'Aut pariatur ab nostrum numquam id rem.', '2005-08-30 12:40:28', NULL, 92);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (8, 99, 16, 'Quisquam accusamus quae tenetur laborum animi et.', '1971-10-31 09:21:12', NULL, 70);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (9, 18, 70, 'Quis nam voluptatem et quia ut.', '1999-02-21 23:59:27', NULL, 10);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (10, 12, 67, 'Facere perferendis veniam quasi et.', '2002-03-26 18:03:21', NULL, 53);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (11, 61, 82, 'Delectus molestiae sapiente eum alias.', '1974-05-31 20:54:30', NULL, 18);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (12, 19, 50, 'Tempore esse enim eveniet.', '1997-07-22 18:54:20', NULL, 53);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (13, 31, 9, 'Dolores quas est ut.', '2013-03-10 08:05:14', NULL, 19);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (14, 28, 78, 'Voluptatem reprehenderit iusto labore velit placeat illo.', '2003-09-09 14:54:32', NULL, 73);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (15, 44, 43, 'Est qui quia consequatur modi officia et.', '2007-03-02 06:20:44', NULL, 83);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (16, 79, 29, 'Est omnis reiciendis officiis velit aperiam rerum asperiores.', '2016-03-22 03:40:11', NULL, 1);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (17, 69, 85, 'Tempora repellendus modi vitae fugit laboriosam repellat possimus.', '2020-02-10 01:06:57', NULL, 86);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (18, 60, 84, 'Quas qui voluptatem aut.', '2012-12-10 03:28:07', NULL, 2);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (19, 29, 2, 'Laborum aliquam cumque quasi libero.', '2006-09-24 18:33:37', NULL, 72);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (20, 39, 14, 'Minima voluptatem et est modi quia quae id.', '1997-04-04 03:54:50', NULL, 38);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (21, 91, 74, 'Sunt hic perferendis sed veritatis ratione.', '1982-10-09 14:35:15', NULL, 20);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (22, 8, 93, 'Velit ipsam sint eaque dolorum quia.', '2006-06-08 13:36:57', NULL, 69);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (23, 61, 23, 'Inventore necessitatibus dolorem nam ducimus iure.', '2017-08-13 14:53:14', NULL, 77);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (24, 79, 51, 'Non ut voluptatem nobis error saepe vel.', '2020-05-05 08:33:08', NULL, 55);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (25, 51, 95, 'Iure doloremque optio perspiciatis ab.', '1996-06-10 06:18:26', NULL, 97);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (26, 34, 74, 'Et aut quam molestiae nemo est voluptatum maxime.', '2012-03-25 13:45:49', NULL, 25);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (27, 34, 42, 'Quasi molestiae rerum voluptas saepe.', '2004-02-20 11:49:13', NULL, 10);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (28, 20, 1, 'Non cum et necessitatibus autem aut.', '1981-03-07 14:11:40', NULL, 94);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (29, 22, 30, 'Sunt iure aliquid molestiae officiis quo et magnam.', '2019-03-10 11:55:16', NULL, 95);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (30, 93, 68, 'Voluptatem aperiam qui omnis magni.', '1999-07-23 17:48:55', NULL, 9);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (31, 31, 59, 'Aut quae necessitatibus corporis totam qui velit.', '1992-04-17 21:37:15', NULL, 82);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (32, 50, 67, 'Sint mollitia nisi dolore dignissimos.', '2015-08-04 18:45:04', NULL, 75);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (33, 19, 28, 'Recusandae modi qui vel.', '1971-08-19 06:02:25', NULL, 97);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (34, 95, 6, 'Ut neque labore enim ad.', '1973-11-15 06:35:49', NULL, 48);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (35, 50, 57, 'Hic dolorum ex harum.', '1997-06-08 10:53:52', NULL, 43);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (36, 46, 90, 'Hic incidunt a atque iste facilis est.', '1980-11-10 02:17:52', NULL, 16);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (37, 71, 24, 'Odit pariatur vel velit esse voluptas error.', '1973-11-22 02:53:58', NULL, 57);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (38, 81, 44, 'Ea qui qui animi voluptatem velit eum.', '1991-12-11 14:27:26', NULL, 58);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (39, 74, 65, 'Quia qui aliquid similique dolor.', '1979-10-12 13:15:14', NULL, 88);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (40, 69, 58, 'Sit beatae eius quasi at quas corporis.', '1972-01-26 17:55:08', NULL, 56);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (41, 77, 88, 'Qui corporis voluptas et ea.', '1992-08-27 21:35:17', NULL, 14);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (42, 59, 38, 'Sunt eius reprehenderit occaecati qui.', '2000-05-07 11:45:46', NULL, 81);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (43, 33, 56, 'Enim provident dolorem doloremque aut nulla voluptatem.', '2000-04-03 05:34:52', NULL, 8);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (44, 30, 51, 'Rerum eos quos aperiam ipsa.', '2010-03-14 23:53:57', NULL, 14);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (45, 78, 100, 'Expedita numquam aut vel consequuntur amet.', '1983-04-16 02:34:38', NULL, 71);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (46, 20, 46, 'Quia illum excepturi velit.', '1982-01-10 13:10:48', NULL, 61);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (47, 35, 17, 'Tempore qui culpa repellat temporibus qui necessitatibus.', '2002-01-02 05:10:37', NULL, 85);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (48, 91, 97, 'Cupiditate ut molestias ut.', '2019-02-06 05:43:04', NULL, 28);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (49, 49, 71, 'Quas repudiandae ut commodi quisquam consequatur perferendis veniam.', '2019-03-04 07:26:17', NULL, 93);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (50, 36, 40, 'Et dolores iure quae odit asperiores incidunt.', '1985-05-28 14:00:25', NULL, 50);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (51, 91, 16, 'Consequatur veritatis autem aut non doloremque labore aut sunt.', '2000-12-04 12:43:28', NULL, 37);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (52, 5, 75, 'Quia sapiente possimus veritatis dolorum et eaque.', '2003-07-10 12:11:58', NULL, 75);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (53, 86, 8, 'Veritatis non et et soluta et et.', '1974-11-30 04:11:49', NULL, 30);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (54, 94, 38, 'Vero culpa eum itaque voluptatem qui.', '2006-12-26 15:43:58', NULL, 80);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (55, 7, 15, 'Accusamus non dolorem temporibus quis.', '1993-07-25 07:52:45', NULL, 80);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (56, 78, 35, 'Omnis dicta minima aut.', '1980-12-31 04:49:42', NULL, 25);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (57, 38, 69, 'Rerum molestiae laudantium voluptates quisquam aliquid et velit.', '1977-12-19 06:03:35', NULL, 41);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (58, 22, 60, 'Ipsum molestiae sint exercitationem laudantium odio repellat eos rerum.', '1998-08-30 15:28:01', NULL, 38);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (59, 49, 9, 'Est quo eum quia omnis a.', '1991-01-23 16:04:43', NULL, 8);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (60, 42, 44, 'Nihil eum nobis aliquam fugit repellat et.', '1996-04-06 22:43:09', NULL, 47);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (61, 91, 35, 'Et ullam sit maxime odit nostrum saepe.', '1978-06-25 15:45:09', NULL, 63);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (62, 28, 40, 'Quis aut quasi voluptate temporibus voluptatem.', '1976-04-29 16:31:33', NULL, 38);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (63, 2, 25, 'In molestiae nihil inventore tenetur atque.', '2003-08-24 12:44:25', NULL, 45);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (64, 32, 18, 'Quo ut sunt quae voluptatibus.', '1981-03-18 11:03:08', NULL, 83);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (65, 11, 25, 'Quas magni autem qui minima odio unde.', '1985-04-09 22:35:40', NULL, 98);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (66, 91, 2, 'Voluptatum sint iure delectus porro et impedit.', '1988-04-23 23:51:23', NULL, 32);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (67, 15, 39, 'Impedit voluptas dolore et libero quia.', '1978-10-09 02:18:41', NULL, 1);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (68, 56, 60, 'Fuga officiis fugiat aliquam rerum ut adipisci.', '1994-05-21 15:15:49', NULL, 61);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (69, 93, 9, 'Velit sit dolorem consequatur repellat ex necessitatibus incidunt.', '1998-12-29 17:32:48', NULL, 69);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (70, 100, 51, 'Placeat temporibus soluta ut accusamus aut ex id.', '2012-10-22 14:56:08', NULL, 13);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (71, 47, 41, 'Cumque voluptatem non esse et est odio dicta.', '2015-03-11 12:14:57', NULL, 47);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (72, 9, 69, 'Explicabo amet illo assumenda repellat voluptates quia.', '1977-03-29 11:31:16', NULL, 86);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (73, 47, 71, 'Vel necessitatibus itaque corrupti.', '2005-05-14 06:48:30', NULL, 11);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (74, 91, 2, 'Impedit adipisci non autem delectus exercitationem.', '2019-06-11 22:13:23', NULL, 28);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (75, 74, 13, 'Quis recusandae recusandae ducimus quisquam.', '1985-01-23 17:59:39', NULL, 52);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (76, 71, 3, 'Ducimus omnis ut aliquid quisquam.', '1980-08-07 15:27:53', NULL, 54);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (77, 3, 18, 'Quia esse eveniet quae provident esse odit.', '1989-05-04 11:23:26', NULL, 92);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (78, 4, 73, 'Voluptatibus natus praesentium qui magnam eius eveniet.', '1977-07-27 02:47:49', NULL, 52);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (79, 64, 66, 'Dolorem nemo et incidunt architecto in voluptate consequatur aut.', '1987-12-02 08:35:20', NULL, 61);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (80, 33, 66, 'Officiis laudantium repellat eaque tenetur.', '1998-11-17 04:55:49', NULL, 11);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (81, 45, 12, 'Suscipit rerum voluptas placeat.', '1984-12-12 11:56:39', NULL, 52);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (82, 92, 21, 'Architecto ipsam fuga non consectetur quibusdam.', '1984-03-29 19:20:51', NULL, 20);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (83, 78, 67, 'Quia distinctio nam voluptatem sed non ut.', '2000-04-10 23:57:07', NULL, 91);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (84, 88, 58, 'Enim at ea nihil quo itaque aut.', '1990-11-26 18:35:26', NULL, 92);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (85, 16, 31, 'Sunt reprehenderit mollitia ad itaque velit.', '2020-04-27 01:52:09', NULL, 5);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (86, 68, 2, 'Quibusdam illum repellat quis quas voluptatem aut a illo.', '1983-02-27 11:49:20', NULL, 7);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (87, 21, 5, 'Ea repellat nulla voluptatem quia assumenda quaerat possimus.', '2019-07-30 18:30:51', NULL, 25);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (88, 12, 8, 'Odit adipisci sit expedita impedit.', '2000-09-07 14:27:43', NULL, 97);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (89, 64, 71, 'Dolorum perferendis id beatae est et repudiandae quia.', '1981-09-24 16:32:03', NULL, 63);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (90, 25, 3, 'Cumque qui mollitia et tempore.', '1996-05-17 04:04:30', NULL, 28);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (91, 35, 48, 'Molestias iure et autem consequuntur hic ea.', '2011-07-30 19:26:04', NULL, 39);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (92, 87, 39, 'Rerum rem sed tempora recusandae et cum.', '2006-07-06 02:47:41', NULL, 59);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (93, 7, 16, 'Velit corrupti perspiciatis est odit.', '1982-06-13 13:01:00', NULL, 25);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (94, 97, 3, 'Sed corrupti quasi laudantium deserunt deserunt.', '2013-05-12 11:30:27', NULL, 83);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (95, 89, 18, 'Et dolore sapiente eum ullam aut.', '1999-07-02 02:05:07', NULL, 13);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (96, 93, 86, 'Sint ab tempore consequuntur corporis necessitatibus atque consequatur.', '1996-08-26 05:58:52', NULL, 15);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (97, 99, 6, 'Aut cupiditate voluptate aut sint.', '2015-07-20 17:42:21', NULL, 19);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (98, 23, 18, 'In at voluptatibus labore neque natus dolores ut.', '2016-12-20 18:00:25', NULL, 26);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (99, 20, 82, 'Reprehenderit est ut reprehenderit fugiat nisi eveniet.', '1998-03-19 17:54:14', NULL, 96);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (100, 82, 6, 'Ad et fugiat consequuntur commodi ullam.', '2018-01-09 12:18:36', NULL, 99);


#
# TABLE STRUCTURE FOR: post
#

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `community_id` int(10) unsigned DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_id` int(10) unsigned DEFAULT NULL,
  `post_id` int(10) unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `fk_post_user1_idx` (`user_id`),
  KEY `fk_post_community1_idx` (`community_id`),
  KEY `fk_post_media1_idx` (`media_id`),
  KEY `fk_post_post1_idx` (`post_id`),
  CONSTRAINT `fk_post_community1` FOREIGN KEY (`community_id`) REFERENCES `community` (`id`),
  CONSTRAINT `fk_post_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_post_post1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  CONSTRAINT `fk_post_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (1, 65, 3, 'Quos ea id autem esse aut et.', 45, NULL, '1996-06-07 05:33:29');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (2, 18, 9, 'Minima aliquid ut sint asperiores sit dolorem.', 76, NULL, '2015-05-11 13:50:04');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (3, 29, 6, 'Doloremque qui consequatur at ullam.', 27, NULL, '2005-09-01 16:37:29');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (4, 85, 3, 'Aut et laboriosam pariatur.', 64, NULL, '1973-08-06 06:31:26');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (5, 79, 5, 'Fuga id aut atque possimus voluptatem.', 28, NULL, '2016-05-06 07:20:34');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (6, 83, 9, 'Aliquid quia et ullam itaque et sit debitis.', 59, NULL, '1995-06-22 16:04:41');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (7, 39, 4, 'Fuga inventore dolorem tempore fugit tenetur odit sint.', 2, NULL, '1999-07-28 03:38:29');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (8, 36, 4, 'Quis maiores saepe voluptatem.', 3, NULL, '2010-11-25 23:39:55');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (9, 45, 6, 'Quo doloremque perferendis non aut iusto.', 52, NULL, '1995-05-15 00:18:36');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (10, 33, 5, 'A earum fuga numquam excepturi eius modi.', 95, NULL, '1998-12-15 13:07:53');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (11, 31, 2, 'Quisquam veniam quaerat dolor et sequi illum voluptas magni.', 23, NULL, '2006-06-04 00:33:37');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (12, 76, 3, 'Sint repudiandae a distinctio excepturi sed.', 5, NULL, '2004-11-18 00:25:36');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (13, 51, 6, 'Hic aut aut cupiditate quo rem voluptate enim.', 60, NULL, '2018-08-23 08:33:00');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (14, 78, 5, 'Amet maiores debitis qui velit consequuntur voluptas.', 81, NULL, '1998-11-28 08:45:03');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (15, 41, 3, 'Facere perferendis autem libero ut consequatur.', 21, NULL, '1976-09-10 05:55:45');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (16, 68, 1, 'Placeat sunt nesciunt occaecati expedita modi aliquam porro.', 5, NULL, '2012-07-21 21:55:35');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (17, 26, 5, 'Libero deleniti qui ea autem tempora.', 42, NULL, '1991-08-23 05:14:36');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (18, 28, 8, 'Saepe natus sequi omnis corporis rem.', 75, NULL, '1989-06-24 05:19:03');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (19, 30, 3, 'Voluptas similique id iusto soluta minus laboriosam.', 28, NULL, '1984-04-17 10:04:28');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (20, 81, 6, 'Rerum iusto veniam assumenda cum molestiae.', 74, NULL, '2006-10-02 10:34:57');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (21, 76, 9, 'Dignissimos consequuntur sit accusamus ratione et et omnis recusandae.', 85, NULL, '2015-12-02 14:50:33');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (22, 99, 7, 'Occaecati quo enim nesciunt sed voluptas ut iusto.', 13, NULL, '1995-02-05 00:12:00');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (23, 4, 2, 'Reprehenderit saepe deserunt ea nemo consequatur.', 71, NULL, '2018-06-28 11:26:34');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (24, 63, 9, 'Ea possimus cumque maiores praesentium totam id.', 13, NULL, '1986-02-28 04:01:34');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (25, 43, 3, 'Quibusdam error est optio sequi iusto laudantium.', 33, NULL, '1974-09-09 02:27:18');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (26, 64, 10, 'Consequatur voluptatibus facilis dicta sequi expedita est autem.', 36, NULL, '1989-12-18 08:35:21');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (27, 68, 3, 'At omnis quo consequatur aut quas sit repellendus.', 78, NULL, '1990-03-19 00:27:17');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (28, 9, 5, 'Quibusdam rerum dignissimos aut et iste quod eos.', 55, NULL, '2016-03-20 05:19:37');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (29, 84, 8, 'Eligendi velit itaque recusandae necessitatibus labore.', 77, NULL, '2019-03-01 18:41:49');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (30, 12, 7, 'Omnis voluptatem natus aliquid ipsam.', 32, NULL, '1972-02-27 07:13:17');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (31, 86, 4, 'Molestiae nemo nisi quaerat aut et facere ipsa et.', 17, NULL, '1996-06-21 02:13:22');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (32, 70, 4, 'Architecto et reiciendis aut cum nihil.', 77, NULL, '2017-11-15 11:41:41');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (33, 83, 4, 'Quod provident necessitatibus nihil consectetur consectetur similique.', 89, NULL, '2017-03-30 17:39:07');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (34, 53, 1, 'Est cumque accusantium voluptate sed quo aspernatur.', 77, NULL, '2020-02-20 12:24:29');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (35, 65, 5, 'Dolorum est et aperiam qui aut sunt.', 6, NULL, '1974-04-25 12:08:44');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (36, 97, 1, 'Necessitatibus sit qui fugit fugit magni et id.', 2, NULL, '2009-04-10 03:58:04');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (37, 33, 8, 'Non aut quia quam sint voluptas.', 24, NULL, '2008-02-06 11:50:32');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (38, 10, 9, 'Atque aut aliquid ut sed.', 73, NULL, '1977-08-09 01:03:09');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (39, 65, 7, 'Nulla aperiam modi perferendis voluptatum minima minus ut omnis.', 53, NULL, '2008-10-19 20:03:50');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (40, 41, 8, 'Quia cumque modi ut dolorum omnis a.', 13, NULL, '1985-11-05 04:41:43');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (41, 72, 7, 'Accusantium ex illum aut nihil aliquam.', 49, NULL, '2013-12-14 00:20:55');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (42, 89, 4, 'Saepe odio qui ex esse id asperiores.', 83, NULL, '2007-02-04 23:35:51');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (43, 66, 2, 'Consequatur at sed quam rerum.', 21, NULL, '1990-08-04 03:44:55');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (44, 54, 7, 'Debitis repellendus qui et nihil et sed id.', 21, NULL, '1988-03-19 14:26:33');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (45, 31, 4, 'Et dolorum qui ut.', 64, NULL, '2002-03-11 21:59:31');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (46, 36, 4, 'Earum sed eaque neque nesciunt.', 70, NULL, '2009-10-04 00:28:53');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (47, 37, 7, 'Error eveniet aut officia corrupti esse.', 44, NULL, '2020-07-16 23:01:06');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (48, 60, 8, 'Consequatur quidem rem dolor ut.', 27, NULL, '2014-01-15 04:38:19');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (49, 33, 4, 'Ab et animi perferendis qui voluptas quod debitis similique.', 94, NULL, '1999-07-22 01:59:22');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (50, 85, 8, 'Veritatis eos vel veniam laborum.', 73, NULL, '2014-04-20 06:05:44');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (51, 98, 5, 'Dolor non reiciendis quisquam saepe officia similique fugit facere.', 37, NULL, '1978-01-21 09:37:17');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (52, 46, 4, 'Tempora et asperiores enim occaecati suscipit explicabo voluptatem illum.', 71, NULL, '2014-12-18 21:52:04');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (53, 29, 1, 'Officiis aut quis esse aut et est.', 88, NULL, '2004-03-18 01:17:34');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (54, 49, 6, 'Sint magni natus exercitationem.', 57, NULL, '1994-12-11 23:00:04');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (55, 70, 9, 'Voluptate sed deleniti a qui facilis.', 91, NULL, '1999-01-01 19:24:19');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (56, 33, 3, 'Aliquid minus dolores magni sit atque beatae magni.', 22, NULL, '2016-01-02 18:53:02');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (57, 3, 6, 'Odio illum esse eius.', 85, NULL, '1987-06-20 13:26:29');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (58, 47, 2, 'Aliquid et repellendus aut consectetur aut.', 58, NULL, '1997-04-03 06:20:24');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (59, 73, 6, 'Et est illo qui accusamus.', 95, NULL, '2003-08-27 13:42:37');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (60, 67, 4, 'Sed dolorem sequi repellendus adipisci et nesciunt quod cumque.', 73, NULL, '1981-08-25 02:20:37');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (61, 39, 4, 'Aliquid fugiat magnam at perspiciatis eum velit.', 22, NULL, '2019-12-20 23:14:28');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (62, 75, 8, 'Nihil vel architecto facere velit a vel.', 60, NULL, '2012-02-03 22:57:15');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (63, 45, 1, 'Qui praesentium totam ut.', 63, NULL, '1985-02-11 11:30:16');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (64, 33, 6, 'Qui veniam qui provident necessitatibus quos sit.', 19, NULL, '1978-03-01 23:32:45');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (65, 89, 3, 'Rerum culpa laborum omnis.', 5, NULL, '1982-02-21 22:22:41');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (66, 80, 6, 'Unde optio excepturi sint velit.', 27, NULL, '1993-04-26 18:00:00');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (67, 2, 6, 'Facilis sunt reprehenderit laudantium ab necessitatibus atque non.', 85, NULL, '1983-09-19 15:16:07');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (68, 87, 1, 'Saepe sunt quod similique repellat pariatur.', 2, NULL, '2013-08-09 05:45:41');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (69, 44, 8, 'Quas sint numquam dignissimos vel mollitia.', 53, NULL, '1975-02-21 18:25:27');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (70, 39, 5, 'Et provident et dolore est nulla.', 88, NULL, '1994-02-05 00:35:05');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (71, 12, 9, 'Rerum maxime nulla quo aut.', 20, NULL, '2005-04-18 16:44:18');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (72, 33, 6, 'Molestias itaque voluptate praesentium odit molestiae qui.', 98, NULL, '1997-07-22 01:16:29');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (73, 93, 1, 'Impedit dicta quis velit non voluptatem qui.', 4, NULL, '1970-09-30 10:45:51');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (74, 55, 4, 'Alias magnam voluptatibus iure ut maiores aut quidem.', 59, NULL, '2009-09-25 14:53:07');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (75, 73, 3, 'Id consectetur quis necessitatibus voluptas.', 83, NULL, '1970-12-27 01:17:32');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (76, 78, 1, 'Occaecati quae qui voluptas soluta eaque inventore et.', 40, NULL, '1979-12-11 02:36:20');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (77, 4, 1, 'Ab rerum consectetur autem dolorem inventore nulla non sapiente.', 99, NULL, '1973-01-30 22:51:21');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (78, 88, 9, 'Quibusdam delectus earum in quam quasi et.', 4, NULL, '1994-09-22 07:27:18');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (79, 90, 4, 'Itaque at nisi consectetur id ex temporibus.', 83, NULL, '1973-01-22 23:22:04');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (80, 43, 8, 'Quis error voluptas tenetur quis earum sed officia.', 27, NULL, '2020-08-25 18:11:27');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (81, 30, 9, 'Qui ducimus et aperiam nihil soluta.', 9, NULL, '1992-08-07 09:33:11');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (82, 50, 2, 'Eaque aut explicabo at consequatur sed quia et.', 66, NULL, '2007-06-15 11:03:49');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (83, 47, 1, 'Autem explicabo voluptatem impedit velit ut est id qui.', 69, NULL, '1984-12-24 19:06:20');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (84, 51, 7, 'Veritatis minima quisquam est.', 3, NULL, '1970-07-18 12:36:26');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (85, 10, 4, 'Eos at quis reprehenderit exercitationem.', 25, NULL, '2008-04-24 11:01:06');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (86, 92, 2, 'Dolores aut alias cum.', 28, NULL, '1980-10-16 21:37:39');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (87, 32, 2, 'Repellendus architecto commodi laudantium.', 31, NULL, '1972-12-16 11:09:15');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (88, 30, 1, 'Quia sit delectus repudiandae qui quia ut quo.', 20, NULL, '2004-09-18 02:38:55');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (89, 34, 10, 'Doloribus voluptates sed sit sunt nisi.', 53, NULL, '1988-03-22 12:49:01');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (90, 16, 4, 'Qui repellat occaecati consectetur non eveniet est at.', 24, NULL, '1981-12-14 01:46:01');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (91, 43, 7, 'Repudiandae et aut earum et.', 7, NULL, '1988-11-13 07:20:26');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (92, 52, 2, 'Tenetur voluptates deleniti dolorem doloribus est vel tempore.', 23, NULL, '1991-08-31 15:56:35');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (93, 18, 7, 'In voluptate asperiores iste tempore necessitatibus.', 30, NULL, '1998-02-23 06:17:17');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (94, 86, 2, 'Dicta adipisci est maiores odio.', 92, NULL, '2020-07-22 07:12:37');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (95, 88, 3, 'Quam sed nihil omnis et quas voluptatibus vitae.', 27, NULL, '1986-12-27 16:46:16');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (96, 13, 2, 'Qui dolorum eaque aperiam aspernatur dolorum nemo omnis maiores.', 39, NULL, '2018-01-18 17:53:26');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (97, 40, 5, 'Expedita autem iusto et ut consequatur aliquid.', 55, NULL, '1986-08-26 22:27:08');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (98, 70, 8, 'Et quia reprehenderit sed tenetur placeat pariatur ut.', 59, NULL, '1992-08-14 17:02:22');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (99, 90, 1, 'Autem quia quisquam necessitatibus sunt molestiae qui consequatur.', 52, NULL, '1994-04-26 00:50:39');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (100, 42, 3, 'Dolores eos nihil saepe ipsam.', 88, NULL, '2001-07-16 08:53:53');


#
# TABLE STRUCTURE FOR: profile
#

DROP TABLE IF EXISTS `profile`;

CREATE TABLE `profile` (
  `user_id` int(10) unsigned NOT NULL,
  `firstname` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `gender` enum('m','f','x') COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(245) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_profile_media1_idx` (`media_id`),
  CONSTRAINT `fk_profile_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_profile_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (1, 'Aglae', 'Turcotte', '2015-09-11', 'm', '0440 Kristian Summit', 96);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (2, 'Ward', 'Durgan', '2013-02-10', 'm', '998 Mertz Extension', 37);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (3, 'Favian', 'Cremin', '2001-08-18', 'm', '45294 Manuela Road Apt. 956', 42);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (4, 'Clara', 'Ankunding', '1999-05-10', 'm', '380 Hand Locks', 59);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (5, 'Casper', 'Keebler', '2013-05-19', 'm', '55936 Jacobs Crescent Suite 787', 10);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (6, 'Taryn', 'Kutch', '1992-04-23', 'm', '3135 Donny Centers Apt. 125', 19);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (7, 'Yesenia', 'Reilly', '1971-05-20', 'm', '71263 Bernier Summit', 63);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (8, 'Eloisa', 'Wiegand', '1971-07-27', 'f', '45782 Fay Mountains', 28);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (9, 'Frederic', 'Rutherford', '1995-08-19', 'm', '3060 Hintz Rapid', 78);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (10, 'Adonis', 'Macejkovic', '1983-05-14', 'm', '1140 Brionna Locks Apt. 134', 79);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (11, 'Jose', 'Goyette', '2004-03-08', 'f', '065 Kirstin Springs', 73);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (12, 'Michelle', 'Jerde', '2020-09-11', 'm', '7403 Prohaska Parks Suite 029', 83);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (13, 'Manuel', 'Yost', '1977-07-05', 'm', '3244 Emard Crossing Suite 967', 26);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (14, 'Justen', 'Senger', '2019-11-18', 'm', '508 Bartell Place Apt. 773', 51);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (15, 'Moises', 'Gorczany', '2002-09-19', 'f', '220 Gibson Row', 8);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (16, 'Prudence', 'Grady', '2018-01-09', 'f', '902 Margarita Isle Suite 012', 22);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (17, 'Alysa', 'Wunsch', '1998-06-17', 'f', '6742 Denis Manor Suite 865', 1);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (18, 'Albin', 'Ritchie', '2016-03-29', 'f', '99920 Hamill Port', 14);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (19, 'Rosario', 'Kuhn', '2005-02-15', 'f', '702 Jaunita Pike Apt. 417', 75);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (20, 'Tom', 'Zieme', '2018-05-27', 'm', '395 Joana Squares', 94);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (21, 'Margarette', 'Lang', '1988-10-04', 'm', '57877 Gulgowski Shoal Suite 730', 44);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (22, 'Lauren', 'Collier', '1994-09-20', 'm', '63078 Wendell Haven Suite 724', 75);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (23, 'Brant', 'Kuphal', '2009-12-06', 'f', '29502 Carissa Union Suite 776', 41);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (24, 'Trisha', 'McCullough', '1985-01-01', 'f', '8062 Gay Radial', 62);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (25, 'Patience', 'Grant', '1971-08-03', 'f', '0126 Stacy Meadow', 15);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (26, 'Newton', 'Lind', '1978-08-05', 'm', '482 Izabella Square Suite 747', 58);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (27, 'Felicity', 'Kuvalis', '2014-08-22', 'm', '08516 Gregorio Centers Suite 334', 75);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (28, 'Eden', 'Medhurst', '2012-09-30', 'f', '40362 Ricky Corner Apt. 766', 80);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (29, 'Cara', 'Littel', '1992-09-08', 'm', '201 Keeling Extension Suite 843', 68);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (30, 'Melvin', 'Powlowski', '1975-10-17', 'm', '4578 Kilback Wall', 64);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (31, 'Fermin', 'Collins', '1986-05-27', 'm', '1382 Brionna Falls', 43);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (32, 'Parker', 'Von', '1989-03-30', 'm', '861 Stanford Pike', 63);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (33, 'Drake', 'Witting', '2019-05-15', 'f', '6741 Dicki Field Suite 573', 100);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (34, 'Walter', 'Pfannerstill', '2008-12-21', 'm', '899 Ziemann Point', 85);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (35, 'Adriana', 'Donnelly', '2013-03-13', 'm', '0654 Alan Crescent Suite 955', 22);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (36, 'Willy', 'Murray', '1973-03-08', 'm', '21230 Feest Squares', 10);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (37, 'Aron', 'Rempel', '2015-10-21', 'f', '689 Padberg Estate', 4);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (38, 'Braeden', 'Gleason', '1987-10-29', 'f', '589 West Pass', 84);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (39, 'Kellen', 'Schulist', '2004-12-11', 'm', '9859 Dean Valleys Suite 729', 37);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (40, 'Stephanie', 'Koss', '2007-12-15', 'f', '2199 Gerhold Valleys', 81);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (41, 'Brice', 'Rempel', '2017-08-30', 'm', '1768 Estella Fork Apt. 862', 63);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (42, 'Frederick', 'Cremin', '1997-12-29', 'f', '0900 Fay Spurs Suite 478', 9);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (43, 'Dahlia', 'Nolan', '1992-05-29', 'm', '685 Howe Key Apt. 861', 64);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (44, 'Sydni', 'Blanda', '2010-05-03', 'm', '83048 Dibbert Parks', 88);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (45, 'Jasen', 'Lemke', '1970-08-25', 'f', '80885 Kuhlman Pine Apt. 160', 60);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (46, 'Vincent', 'Senger', '1983-06-02', 'f', '082 O\'Connell Corners', 71);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (47, 'Sage', 'Rutherford', '2017-09-18', 'f', '521 Boehm Orchard', 10);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (48, 'Ima', 'Sanford', '2007-10-11', 'm', '37713 Durgan Isle', 61);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (49, 'Sandy', 'White', '2007-06-05', 'm', '8122 Ambrose Station Apt. 558', 85);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (50, 'Ocie', 'McKenzie', '2006-12-12', 'f', '4068 Garret Green Suite 733', 85);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (51, 'Peggie', 'Harris', '1983-01-19', 'm', '97340 Sophia Forest Apt. 762', 54);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (52, 'Aylin', 'Ziemann', '2018-03-21', 'm', '528 Christelle Ford Apt. 659', 28);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (53, 'Shayna', 'Little', '1982-10-02', 'f', '7333 Ziemann Ports', 59);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (54, 'Arch', 'Strosin', '1987-08-26', 'f', '724 Jailyn Stravenue Suite 895', 95);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (55, 'Gregoria', 'Corkery', '1972-03-03', 'm', '0677 Eleanore Lodge Apt. 268', 90);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (56, 'Kylie', 'Torp', '2000-06-03', 'f', '778 Daugherty Landing', 73);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (57, 'Don', 'Hayes', '2019-12-25', 'm', '654 Loy Village', 53);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (58, 'Liliane', 'Muller', '1997-03-30', 'm', '772 Elza Road Apt. 699', 64);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (59, 'Jimmy', 'Beier', '1984-07-29', 'f', '21537 Marcelle Cove Apt. 311', 53);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (60, 'Gwendolyn', 'Koelpin', '1999-11-27', 'f', '7553 Willms Circles Apt. 334', 20);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (61, 'Abigale', 'Gaylord', '2009-06-02', 'f', '16288 Terry Brooks Suite 377', 27);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (62, 'Orville', 'Beatty', '1985-02-18', 'f', '790 Collins Junctions', 96);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (63, 'Kelsie', 'Gislason', '2015-04-17', 'm', '45100 Pfeffer Islands', 83);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (64, 'Luigi', 'Mann', '1979-02-16', 'f', '4640 Elza Ramp', 27);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (65, 'Pink', 'Paucek', '1996-05-14', 'm', '2333 Herman Knoll Suite 687', 80);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (66, 'Kali', 'Kassulke', '2014-02-22', 'f', '498 Jonathan Cliff', 4);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (67, 'Mellie', 'Nienow', '1974-06-16', 'f', '207 Jay Springs', 37);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (68, 'Jamison', 'Carroll', '1984-04-06', 'f', '15658 Jeffrey Island Suite 483', 83);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (69, 'Suzanne', 'Lowe', '1999-06-04', 'f', '915 Laury Camp', 88);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (70, 'Casandra', 'Wehner', '1992-06-11', 'f', '1476 Bergnaum Alley', 73);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (71, 'Dedric', 'Ruecker', '2003-05-15', 'f', '16467 Willms Cliff', 64);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (72, 'Beulah', 'Considine', '1997-03-26', 'f', '8847 Kenneth Mills', 50);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (73, 'Ayana', 'Deckow', '1981-12-08', 'f', '822 Alek Rapid', 82);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (74, 'Alta', 'Mertz', '1997-12-26', 'f', '841 Turner Underpass Suite 478', 27);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (75, 'Antwon', 'Volkman', '1997-07-20', 'm', '7636 Eulalia Lock Apt. 967', 38);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (76, 'Eulalia', 'Abernathy', '1990-02-27', 'f', '98322 Viviane Bypass', 41);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (77, 'Ubaldo', 'Pollich', '1994-03-21', 'f', '3269 Trenton Points', 98);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (78, 'Larue', 'Abshire', '1978-04-01', 'm', '9240 Kassulke Stream Apt. 853', 47);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (79, 'Woodrow', 'Stanton', '1990-09-24', 'f', '4249 Sipes Row Suite 949', 1);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (80, 'Mallory', 'Considine', '1994-11-26', 'm', '444 Sadie Court', 83);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (81, 'Rosina', 'Hagenes', '1997-07-19', 'm', '47442 Kovacek Plaza', 31);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (82, 'Kari', 'Bauch', '2000-10-22', 'm', '387 Koelpin Parkway Apt. 915', 55);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (83, 'Jakob', 'Gusikowski', '1999-04-04', 'm', '3130 Will Trafficway', 10);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (84, 'Eloy', 'Leuschke', '2012-12-18', 'f', '7303 Emmet Springs Apt. 797', 90);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (85, 'Josie', 'Huels', '2016-10-07', 'm', '0556 Doyle Squares Apt. 713', 49);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (86, 'Bernhard', 'Hettinger', '2008-06-25', 'm', '6755 Sally Street Apt. 980', 99);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (87, 'Lora', 'Prosacco', '2014-08-23', 'm', '672 Greg Curve Suite 517', 63);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (88, 'Warren', 'McLaughlin', '2001-05-26', 'f', '950 Adelle Brooks Suite 389', 1);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (89, 'Sheridan', 'Paucek', '2012-01-07', 'f', '1279 Nayeli Grove', 63);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (90, 'Delpha', 'Franecki', '2017-03-21', 'm', '480 Uriel Mall Apt. 685', 15);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (91, 'Andrew', 'Wisoky', '1973-02-17', 'f', '1635 Kulas Shoals', 21);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (92, 'Shane', 'Zulauf', '2017-01-27', 'f', '26425 Woodrow Turnpike Suite 985', 90);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (93, 'Abigayle', 'Boyle', '1973-05-31', 'm', '515 Janessa Viaduct', 11);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (94, 'Floyd', 'Fritsch', '1999-01-10', 'm', '14099 Davis Tunnel', 3);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (95, 'Mia', 'Moore', '1985-12-14', 'f', '6154 Heidenreich Station Suite 108', 17);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (96, 'Sadie', 'Quigley', '1979-09-17', 'f', '1994 Annabell Orchard Suite 555', 90);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (97, 'Lexie', 'Hackett', '2020-03-04', 'm', '439 Frami Pike', 6);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (98, 'Gia', 'O\'Reilly', '1998-01-02', 'f', '760 Kuhn Plains Apt. 410', 53);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (99, 'Madisyn', 'Harber', '1973-09-06', 'm', '027 Hirthe Mission', 73);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (100, 'Alexie', 'Bayer', '2007-12-08', 'm', '643 Hermiston Island Suite 511', 94);


#
# TABLE STRUCTURE FOR: user
#

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint(20) NOT NULL,
  `password_hash` char(65) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, 'herman.carissa@example.org', '89710999066', '38104914f62c065d664ddf461204aa8ab53d5de1', '2016-06-09 02:02:06', '2012-12-12 20:48:03', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, 'hbayer@example.org', '89258683465', 'ae06cad73f0d861f659fa987537f4e32fb2c3670', '1999-03-10 10:23:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, 'skylar.langosh@example.org', '89801347341', 'f5a4b17166566e09b31639a743fae0644cd862eb', '1989-10-05 21:00:33', '1994-08-10 19:43:50', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (4, 'cassin.estrella@example.net', '89999634538', '79514467618ca484ebfbb3f9e8816e4b3b06c7fd', '2006-12-12 08:24:49', '2000-06-19 21:11:58', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (5, 'wilber03@example.net', '89262074861', '698f4c4df350cca1619a727339c2dd38e2410184', '1974-02-17 06:23:50', '2011-08-25 21:12:50', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (6, 'wsimonis@example.com', '89802926267', '1bddeff3aacc841e6a76cc0509bb213340e743bd', '2002-04-26 09:11:37', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (7, 'vkemmer@example.org', '89718227403', '51128f2bb6491ca33340f3b89893e12e06a6b724', '1970-08-04 04:28:54', '2011-10-08 16:47:50', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (8, 'gwendolyn.wolff@example.net', '89099430497', 'e30a4771a85b9d8ebd1d270e749e860e719321e9', '2014-03-16 23:27:13', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (9, 'ukris@example.com', '89102183914', '57956764e4646ffe4252bfc4d74562e41168ead1', '1995-06-14 05:08:20', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (10, 'wyman.johann@example.net', '89816690133', 'fcfc71f1a74dee7adca9d64b1151e6078a73fc86', '1977-10-19 11:28:07', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (11, 'gbeatty@example.com', '89278125843', 'eac91b007c3e6b073ed6164bd943d4dcf0ac8135', '2000-08-16 18:23:58', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (12, 'virginia.simonis@example.net', '89531887539', 'f0d1ad0fd22be1c62a70a74ed096e07ef2a65f3e', '2007-11-30 10:00:36', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (13, 'ccremin@example.net', '89957183393', '4d577e5c97238108fc79a292d0c3ae5f9564a138', '2019-01-15 08:01:17', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (14, 'ana79@example.com', '89210206151', '8584bef3ce84920f74fd4fbc46f312f690b91e51', '1988-05-05 08:53:24', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (15, 'bert.wintheiser@example.net', '89636487918', 'ca3adf889dd234b58a857ff67d48b295b505c782', '2015-04-29 01:26:05', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (16, 'gussie.hodkiewicz@example.org', '89107950371', 'c66e9015b1fb600f22bf50821c9165ffd63393e2', '2016-10-29 16:08:59', '1971-03-13 18:43:05', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (17, 'mhirthe@example.org', '89351827923', '31c68cd76190393b15fbf188595df34ebf2935a1', '2000-06-05 19:38:05', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (18, 'ehoppe@example.org', '89226416888', '92d039084d70ea5452fe4cd99dae697bf5f5856e', '1999-10-28 15:50:55', '2010-04-03 01:34:36', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (19, 'trantow.phoebe@example.net', '89899550180', '31d37f252939118fac197adb3b9b2693fca02335', '2010-07-29 20:15:13', '1974-06-15 21:53:36', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (20, 'charity81@example.net', '89933802826', '6b70f0dd56ebaca48a759d74c6b35c362676cb69', '2015-10-22 19:11:02', '1977-07-01 16:45:35', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (21, 'qzulauf@example.org', '89859465761', 'e85ded20f788301281b355cbc757fc47aec44be6', '1992-11-03 20:03:35', '1979-09-13 12:00:45', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (22, 'renee.little@example.com', '89008124813', '38cf17f1ef9f30ad79579d2e428a735e16444b5f', '2006-07-04 03:11:33', '2007-07-25 06:25:23', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (23, 'zfeeney@example.org', '89902572411', 'd1293e72b17a289ef8fef45b2293ca2cbd001d93', '1999-05-23 19:24:35', '2004-08-13 05:39:18', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (24, 'egutkowski@example.org', '89670909153', 'ad2138d0513ace5aade9185cae2dd8ab8c1841fd', '2000-10-19 22:51:43', '1985-09-12 10:51:22', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (25, 'ugorczany@example.org', '89110778904', '70a29486a5912c5457c6e98a4ad150358891eb5b', '1987-06-24 17:25:24', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (26, 'vgerlach@example.com', '89276940792', 'aa4247aee597b67ce31418e201f5cb4140131edc', '1985-05-15 07:51:57', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (27, 'walker.louvenia@example.org', '89202378622', '29e49096f3e90973ae3ca411a06274ed9a0beada', '1999-11-02 16:32:11', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (28, 'gmoen@example.org', '89556056783', '8452bd481355e703bbca8984293bcec06f01333f', '2010-12-06 11:27:58', '2017-12-27 18:38:45', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (29, 'nhansen@example.net', '89283848102', '05af0dba6c078f28a139629f4e28eea6a4c500d3', '2012-08-10 21:31:22', '2018-01-02 10:08:10', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (30, 'heller.isadore@example.org', '89377305239', '9d76716efd63d471a08398a0c481f8f19d494105', '1986-05-31 04:45:59', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (31, 'qzemlak@example.org', '89925315857', 'ff63168fcd09552e097a4dbdff285b5e775f28af', '2014-07-01 22:18:58', '1991-12-11 21:52:35', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (32, 'loma.howe@example.net', '89100982739', 'e53d36821a430f1038f60475548e4467cacaa167', '1988-01-01 02:35:28', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (33, 'urban78@example.com', '89227879640', '794753e1be2673b4db3434249d79b22d409c7d91', '2014-10-21 00:54:38', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (34, 'qvon@example.org', '89252762987', 'f7fa40cfdd6b9d9f15c38584fdbbc0fd748546dc', '2013-04-30 23:24:19', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (35, 'tvandervort@example.net', '89020936764', '967a6ba8258bec031ad2cd2b1db4f1d4b67f641e', '1992-08-31 19:53:29', '1985-11-28 12:40:43', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (36, 'britchie@example.net', '89050840090', 'd61c010f5bc49b4bba2fbf298d1f9efc10131eed', '1985-03-14 10:23:29', '1971-11-19 04:17:43', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (37, 'ettie.konopelski@example.com', '89649191477', '66d7c83969502590572f5414c27c1d877369c746', '1980-02-14 11:33:51', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (38, 'gaylord.westley@example.com', '89998882190', '3fd83f58bc91fe0da27bf7a9ea489bf33378e209', '2011-10-08 13:51:34', '1999-01-04 14:52:47', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (39, 'angelina.douglas@example.com', '89087045211', '6b6c4518305d9bc6d7c1fdffb19ccc536a50204e', '1972-08-08 09:56:30', '2003-06-18 16:11:35', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (40, 'goldner.valentina@example.net', '89751138214', '6d74eb97c95f26d2732c052dc05098b2199c99fa', '2019-12-23 12:54:06', '1998-09-06 00:03:23', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (41, 'vfeil@example.org', '89267818087', 'dd32113e6f1a840c60f9a68b4439aff941888e8f', '1988-12-09 02:33:09', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (42, 'deckow.brant@example.org', '89749498569', '71aab8891592813e978f28c13675956ad787dc51', '2018-09-24 04:11:08', '1978-12-11 15:47:28', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (43, 'jcrist@example.org', '89687355183', '7946b7dfe221abe57f52dd0494428a084ff84076', '1992-05-07 19:33:28', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (44, 'carlie.cummings@example.net', '89375163879', 'f0faad2feca6c24d060048448a0c2058ef9dff9a', '1999-04-27 06:35:20', '1972-10-09 16:22:48', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (45, 'storp@example.org', '89320770350', 'e97d93685cec2a6af44fecda4af107032bba37ff', '1991-08-06 02:47:22', '2003-10-11 03:44:33', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (46, 'gcartwright@example.org', '89149449971', '7ab6a775b46554a8a3778d8b02b30a0e763f7c61', '1978-09-15 00:36:14', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (47, 'bkautzer@example.org', '89634181935', '93957d498f93768f5bd6f87846c95be32f572a70', '2020-09-23 08:52:02', '1978-03-11 06:39:33', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (48, 'armstrong.melissa@example.com', '89854981992', '230bfed554205897615ca6cab651fc40d8f49c05', '1981-12-11 15:23:20', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (49, 'aric.langworth@example.org', '89778468190', '82fb3e81cda2354c55110043d7f49ea770059fa3', '1971-07-27 00:30:59', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (50, 'volkman.jessie@example.org', '89597095031', 'fdd017d04d55dc3006e1e40157223b81b75d674a', '2011-07-17 06:51:43', '1983-08-10 00:51:54', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (51, 'westley66@example.org', '89982320562', '4d33071b91d9a57a21371f59ca0262b1714742b5', '1987-04-22 23:16:32', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (52, 'ernser.tyrell@example.net', '89163563649', '0e64c2ce779f657c5366cd3a8fa237071e8d0d8a', '1980-06-09 02:26:56', '2017-11-21 22:37:26', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (53, 'eulalia19@example.com', '89105289607', 'cbf2399d4e0eb69eecb5455925b35df51c2c7560', '1977-12-25 13:41:24', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (54, 'strosin.emmie@example.com', '89090864674', '68f44be769ed172cc600d1ff9dabacc7326b0af6', '2004-01-16 02:14:09', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (55, 'hammes.mekhi@example.org', '89434265534', 'ee83693da43075daa0038eb79f7e1dd12e361489', '1981-06-26 01:47:23', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (56, 'dwintheiser@example.com', '89524729842', 'a6886059711379b514e4ecba53a634615e38c8bd', '2015-01-18 13:19:04', '2009-06-29 07:21:29', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (57, 'reinhold.wolf@example.org', '89862107893', '2b33bdcc96b00647478fa5e94930ce46b93a3d57', '2014-08-28 02:08:06', '1993-10-12 06:08:08', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (58, 'ankunding.aiyana@example.org', '89241059690', 'e3d5442529e7747f3801f153b7a45397e1106885', '1972-02-12 01:09:33', '2012-02-11 02:23:44', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (59, 'krajcik.allan@example.org', '89917557796', '7bc0891a2f096f8d49fa31c79a8178bbe398e90c', '2015-09-19 20:18:28', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (60, 'lhettinger@example.org', '89916303361', 'e227b36dd09f3dd8f29c107d680fbd303fb3acd6', '2018-08-01 03:49:04', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (61, 'katarina.morar@example.org', '89143539772', '2fd22cf0b35d84240768c678580033276f7f55ee', '1992-12-05 15:01:32', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (62, 'vito37@example.com', '89249902212', '2b2aea68235c21be49177d8ec6f9370d83621262', '1980-08-03 07:42:45', '2010-06-02 07:24:17', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (63, 'dickinson.catherine@example.net', '89391645468', 'bc922b0cf0ef6fc25374b10c15f81a7e18716682', '1994-01-18 03:17:30', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (64, 'adrain41@example.net', '89053016216', '018c9a979783bdf635f1088bfec4aa7d8893e814', '1975-12-11 15:41:39', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (65, 'dconnelly@example.org', '89261645951', '725d36c9a0f921d6734b548e068f68098d6e13de', '1988-07-07 01:49:42', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (66, 'oma59@example.net', '89973178831', '1a49db3c6548d1bdb4e80d520f2b228985c9ec09', '2019-04-09 15:38:56', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (67, 'olga.altenwerth@example.com', '89881501007', 'af7ea8280551a091fca3e94037d0094ae4cb3459', '2005-07-23 08:01:24', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (68, 'barney.hodkiewicz@example.org', '89871200361', '3aa9bc44f0c2dde4738484d203a415f750c7ebed', '2016-01-17 10:21:29', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (69, 'toney.bauch@example.net', '89528335092', 'f428e0d61725f001bfb3b1378924b27f39af963d', '1973-02-24 16:30:31', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (70, 'awiza@example.com', '89216670572', 'fa6d8291181bbabbdec389b1ffc34f80dfce48f1', '1975-07-28 00:05:45', '2020-03-20 01:11:13', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (71, 'columbus.hauck@example.com', '89036854617', '31e28b5cef6a94bccc5f02f3df28cefd1a43d7ab', '1973-01-25 09:52:23', '1970-01-29 01:59:39', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (72, 'ogoodwin@example.com', '89313810403', 'ff4605a5bb960fe98f39548c540a5e31e687a7da', '2007-01-02 07:08:22', '1970-11-25 18:47:29', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (73, 'salma49@example.org', '89333587120', '5985af43495a3cacf4f52ea07bffa826512f2ad6', '1977-04-21 17:41:21', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (74, 'juvenal.cremin@example.org', '89895309025', 'ed7f45ca85609850c2e57ae73e8f211ee1cecca2', '2002-08-27 08:29:09', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (75, 'gutmann.alice@example.org', '89158625550', 'b3b3726e15891cadbb64f092c948cfdcd463fa69', '1971-10-13 18:02:29', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (76, 'stevie.oberbrunner@example.com', '89020707423', '22f1295e1aeb0eff565f88a2fc5034328ebec195', '1980-12-09 16:59:17', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (77, 'natalia83@example.net', '89620099088', '3177d175c3eaba6b2f34dae1f18eb28c9c2381a8', '1997-04-14 18:54:46', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (78, 'robel.cassandra@example.com', '89401575532', '089bfbe8578e98181ddfc83247fbd66d5a9dce8c', '1992-12-10 16:38:36', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (79, 'anais93@example.net', '89888017852', '13e473141f6114cecadcf3b2a5d563c63442f94e', '1988-02-16 15:36:25', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (80, 'schamberger.destiney@example.com', '89528951477', 'aa6720cebfc069dee43df6e4b58c5e388578975c', '2004-07-23 08:12:37', '2020-05-10 01:09:55', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (81, 'welch.cora@example.org', '89371874368', '9d45d40aac416b3606501ceaee371378211732c5', '1982-12-01 05:51:06', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (82, 'mhirthe@example.net', '89826911089', '037839ab0c5470db74e38dc918f31f0608797b97', '2003-02-01 05:38:55', '2002-01-18 12:42:32', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (83, 'gislason.brad@example.net', '89879029913', '6192efcb4044a2a47e4fb3e2beb3940ab3b28b63', '2002-04-13 07:43:17', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (84, 'moshe21@example.com', '89244000914', 'ec088fdd23d4d71df752a758681106ee207c6298', '1987-02-02 06:06:56', '2017-02-03 09:30:33', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (85, 'sipes.anita@example.com', '89581937552', '801c2c2f7afccddd26966ed4930a9cc8f648ad6f', '2016-11-16 09:20:08', '2004-07-23 04:50:36', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (86, 'twuckert@example.net', '89584249307', '8744530e12e491f5e9eb31e10ceb307c6767f21f', '1993-12-25 22:36:32', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (87, 'wilderman.lawson@example.net', '89255732296', '6e549fbe014241cfd984f9f0be35a71c6fbd1b66', '1996-08-23 10:53:56', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (88, 'lulu72@example.net', '89555131320', '517cfd9c613832e73810c778aa77e00be87936f3', '1981-05-20 13:40:41', '1980-03-21 17:48:58', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (89, 'xlockman@example.net', '89710135247', '3ef37bb565b81a6da07742bd1ccacd67c9c415ba', '1990-07-10 22:56:47', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (90, 'mellie56@example.org', '89171897550', '6039c9a860b5a4c010c8be05a0a9948b7874dacb', '2004-06-07 17:24:13', '1972-07-10 10:31:14', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (91, 'lucie.collins@example.org', '89198803675', '43f63f34c28f7db9bf181025fd6962864a522ee9', '1987-02-23 07:26:18', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (92, 'teagan54@example.com', '89663440219', '46d1d879f269078f3ee0b708497a397453bf83e4', '1999-05-09 05:17:46', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (93, 'corwin.ladarius@example.com', '89467577846', 'de18b02c27af75408743b89c1369bcf835438684', '1981-11-17 19:03:54', '1974-01-04 06:05:21', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (94, 'wabernathy@example.org', '89069049041', '2f248ddbd829397a70686aba0d79dc6cda698ad1', '2018-04-11 07:18:42', '2015-12-10 23:43:29', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (95, 'pwehner@example.com', '89479999416', '389812b0e927a072b3832a660282e7ae76d72e45', '2014-01-04 23:57:55', '2007-01-01 20:38:03', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (96, 'chandler64@example.net', '89066866873', '0ac27148a7ea20a9b3fb75ff174382867923751e', '1981-12-09 16:33:44', '2006-01-26 00:00:56', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (97, 'gkling@example.org', '89596668048', 'be2e5459f426760e0cfae6b17e903d7e570a440b', '1981-11-07 10:01:31', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (98, 'tmarquardt@example.org', '89813057430', '24b126040b8c8d9c7ce8c3209cb97479f58080b7', '2002-04-13 02:18:27', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (99, 'aufderhar.letha@example.net', '89799558097', '5b3316b388364e6a0e18a2caf1a55a697f1d214a', '1995-07-20 02:29:48', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (100, 'lcruickshank@example.com', '89916951120', '904246c3dca5f0c09a6f5de85065faac0dbfaf3e', '1999-02-13 02:53:25', '0000-00-00 00:00:00', NULL);


#
# TABLE STRUCTURE FOR: user_community
#

DROP TABLE IF EXISTS `user_community`;

CREATE TABLE `user_community` (
  `community_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`community_id`,`user_id`),
  KEY `fk_user_community_community1_idx` (`community_id`),
  KEY `fk_user_community_user1_idx` (`user_id`),
  CONSTRAINT `fk_user_community_community1` FOREIGN KEY (`community_id`) REFERENCES `community` (`id`),
  CONSTRAINT `fk_user_community_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (1, 1);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (1, 8);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (1, 12);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (1, 23);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (1, 37);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (1, 51);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (1, 52);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (1, 57);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (1, 58);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (1, 62);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (1, 78);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (1, 87);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (1, 89);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (1, 90);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (2, 7);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (2, 47);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (2, 71);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (2, 75);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (2, 76);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (2, 87);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (2, 90);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (2, 95);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (3, 8);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (3, 14);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (3, 17);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (3, 21);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (3, 22);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (3, 68);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (3, 88);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (3, 100);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (4, 3);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (4, 4);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (4, 11);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (4, 13);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (4, 14);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (4, 24);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (4, 43);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (4, 49);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (4, 62);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (4, 82);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (5, 10);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (5, 23);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (5, 27);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (5, 41);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (5, 45);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (5, 61);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (5, 86);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (5, 96);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (5, 97);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (5, 99);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (6, 9);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (6, 15);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (6, 24);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (6, 25);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (6, 28);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (6, 42);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (6, 62);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (6, 63);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (7, 10);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (7, 33);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (7, 39);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (7, 41);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (7, 46);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (7, 53);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (7, 85);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (7, 91);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (8, 12);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (8, 15);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (8, 21);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (8, 49);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (8, 72);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (8, 81);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (9, 5);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (9, 12);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (9, 26);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (9, 33);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (9, 35);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (9, 36);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (9, 42);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (9, 48);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (9, 75);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (9, 85);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (9, 86);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (9, 92);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (10, 23);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (10, 25);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (10, 40);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (10, 54);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (10, 63);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (10, 66);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (10, 68);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (10, 73);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (10, 76);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (10, 87);


