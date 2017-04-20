# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.17)
# Database: thesis_app
# Generation Time: 2017-04-20 11:32:50 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table ages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ages`;

CREATE TABLE `ages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table categorys
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categorys`;

CREATE TABLE `categorys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `categorys` WRITE;
/*!40000 ALTER TABLE `categorys` DISABLE KEYS */;

INSERT INTO `categorys` (`id`, `category_title`, `category_description`)
VALUES
	(1,'music','classes, shows, concerts, festivals and more'),
	(2,'art','classes, galleries, and workshops\n'),
	(3,'sports','local teams, leagues and workshops'),
	(4,'night life','bars, pubs, themed parties'),
	(5,'personal','Birthdays, weddings, bridal and baby showers '),
	(6,'shows','movies and theater productions'),
	(7,'other','If your event doesnt fall under one of these choose this!');

/*!40000 ALTER TABLE `categorys` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table events
# ------------------------------------------------------------

DROP TABLE IF EXISTS `events`;

CREATE TABLE `events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `event_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `event_time` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;

INSERT INTO `events` (`id`, `event_title`, `event_description`, `event_location`, `event_date`, `created_at`, `updated_at`, `event_time`)
VALUES
	(1,'hey','hey\n','hey','2017-04-18','2017-04-18 12:05:26','2017-04-18 12:05:29','12:12:00'),
	(2,'Culpa est delectus irure praesentium qui voluptatum eu','Molestiae a asperiores officia consequatur dicta possimus excepteur labore adipisci duis id occaecat tempora cupiditate','Nihil quia aliqua Quae perspiciatis magnam a enim','2017-04-11','2017-04-18 16:07:56','2017-04-18 16:07:56','12:12:03'),
	(3,'Culpa est delectus irure praesentium qui voluptatum eu','Molestiae a asperiores officia consequatur dicta possimus excepteur labore adipisci duis id occaecat tempora cupiditate','Nihil quia aliqua Quae perspiciatis magnam a enim','2017-04-11','2017-04-18 16:07:57','2017-04-18 16:07:57','12:12:05'),
	(4,'tomorrow','whatShower','new','2017-09-09','2017-04-18 16:08:49','2017-04-18 16:08:49','12:12:08'),
	(5,'Hey','hey','Hey','2017-04-17','2017-04-18 16:09:24','2017-04-18 16:09:24','12:12:10'),
	(6,'New event','wow it works again','fanshawe college','2017-04-10','2017-04-18 16:10:04','2017-04-18 16:10:04','12:12:13'),
	(7,'More to play with','more to play with','fanshawe college','2017-04-18','2017-04-18 12:11:33','2017-04-18 12:11:36','12:12:15'),
	(8,'tomorrow','whatShower','new','2017-09-09','2017-04-18 16:30:28','2017-04-18 16:30:28','16:30:28'),
	(9,'tomorrow','whatShower','new','2017-09-09','2017-04-18 16:30:53','2017-04-18 16:30:53','16:30:53'),
	(10,'tomorrow','whatShower','new','2017-09-09','2017-04-18 16:33:48','2017-04-18 16:33:48','16:33:48'),
	(11,'tomorrow','whatShower','new','2017-09-09','2017-04-19 03:16:43','2017-04-19 03:16:43','03:16:43'),
	(12,'tomorrow','whatShower','new','2017-09-09','2017-04-19 03:17:11','2017-04-19 03:17:11','03:17:11'),
	(13,'newevent','with time','new','2017-09-09','2017-04-19 03:23:47','2017-04-19 03:23:47','03:23:47'),
	(14,'newevent','with time','new','2017-09-09','2017-04-19 03:31:56','2017-04-19 03:31:56','03:31:56'),
	(15,'Aliquip optio corrupti doloribus sit laborum Irure sed dolorum','Aute veniam inventore totam voluptatum commodi lorem sunt dicta iure ut tenetur sint velit molestiae aliqua Vel et sit cumque','Ipsum incididunt eu facere eligendi et reiciendis laudantium sint enim sed','2017-04-11','2017-04-19 03:33:21','2017-04-19 03:33:21','03:33:21'),
	(16,'hey','hey','new time','2017-04-12','2017-04-19 03:34:12','2017-04-19 03:34:12','03:34:12'),
	(17,'Tyler\'s Event','Hey','Hey','2017-04-18','2017-04-19 23:53:08','2017-04-19 23:53:08','11:53:08'),
	(18,'Tyler\'s Event','Hey','Hey','2017-04-18','2017-04-19 23:53:09','2017-04-19 23:53:09','11:53:09'),
	(19,'Tyler\'s Event','Hey','Hey','2017-04-18','2017-04-19 23:53:09','2017-04-19 23:53:09','11:53:09'),
	(20,'Tyler\'s Event','Hey','Hey','2017-04-18','2017-04-19 23:53:10','2017-04-19 23:53:10','11:53:10'),
	(21,'Tyler\'s Event','Hey','Hey','2017-04-18','2017-04-19 23:53:10','2017-04-19 23:53:10','11:53:10'),
	(22,'Tyler\'s Event','Hey','Hey','2017-04-18','2017-04-19 23:53:12','2017-04-19 23:53:12','11:53:12'),
	(23,'wd,bjjm','mg','jgg','2017-04-04','2017-04-19 23:53:56','2017-04-19 23:53:56','11:53:56'),
	(24,'wd,bjjm','mg','jgg','2017-04-04','2017-04-19 23:53:56','2017-04-19 23:53:56','11:53:56'),
	(25,'wd,bjjm','mg','jgg','2017-04-04','2017-04-19 23:53:57','2017-04-19 23:53:57','11:53:57'),
	(30,'hey','heyh','hey','2017-04-27','2017-04-20 03:44:05','2017-04-20 03:44:05','03:44:05');

/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(4,'2014_10_12_000000_create_users_table',1),
	(5,'2014_10_12_100000_create_password_resets_table',1),
	(7,'2017_03_29_014052_create_events_table',2),
	(8,'2017_04_18_231853_create_categorys_table',3);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'Tyler','test@example.com','$2y$10$ZD48lefH1fpAFhgF3S4u2.7ryhlWkRVcTNRMoG84wPH04Iv2N737O',NULL,'2017-04-15 16:47:52','2017-04-15 16:47:52'),
	(2,'Meaghan','test12@example.com','$2y$10$N6ulDA5PzgeKKAPlkSCFCO.3jf5umZEolnx4wNXHZ8PcHSkuMfsea',NULL,'2017-04-15 18:07:16','2017-04-15 18:07:16'),
	(3,'Marilyn','example@example.com','$2y$10$9OX150V09ShUPD12EdnlbuaqDoAgvBSeITOf/U1.a4d021QEEJCym',NULL,'2017-04-15 18:31:04','2017-04-15 18:31:04'),
	(4,'hey','hey@example.com','$2y$10$yMVwFpfCYtTlaC90Arqz8uvHNICWAtwFU2OeW6KRaLTdDFbBM7Q6W',NULL,'2017-04-16 00:53:41','2017-04-16 00:53:41'),
	(5,'Tasha','tasha@example.com','$2y$10$5d4sFEL2J3w0KEokviHfQOFvbKSvUwJE8vWUsIcAnLWVaw4sfYdR.',NULL,'2017-04-16 19:39:06','2017-04-16 19:39:06'),
	(6,'Greg','greg@example.com','$2y$10$WYNUOG5SjWeyM7WURuyiceIqvLn5Vt0gaeTaLxQeKDKtrrVf.EJCS',NULL,'2017-04-16 19:39:58','2017-04-16 19:39:58'),
	(7,'Miley','miley@example.com','$2y$10$rEBuM9DW8N7LPp4fEijTOOB032EDLU3CoWGLTPLxbKdVPo2MWHIUS',NULL,'2017-04-16 19:40:11','2017-04-16 19:40:11'),
	(8,'Florence','flo@example.com','$2y$10$2yoIjO/b7eZi.QNgctd3/exfVPuHhuyDSOl/YVzBjKoqT7Ve1m7Si',NULL,'2017-04-16 19:40:25','2017-04-16 19:40:25'),
	(9,'Mark Turner','mark@example.com','$2y$10$hwH1/20JwVDclvNN8Kx7LuYJgf0oZvUsF./C/X/0J/hi72OCijdp6',NULL,'2017-04-16 19:40:52','2017-04-16 19:40:52'),
	(10,'Andrew','andrew@example.com','$2y$10$LkfLDNNEqx1x9q9j8gpxa.29D3begkQ3dRk/e5UsZfCUPzVVTz0Sm',NULL,'2017-04-16 19:45:30','2017-04-16 19:45:30'),
	(11,'Courtney','courtney@example.com','$2y$10$sO7ayblzGEHG18BREfEI1eUMybHvYd/3PLJZ1KPJuToyP47gyjZ7i',NULL,'2017-04-16 19:45:45','2017-04-16 19:45:45'),
	(12,'Robin','robin@example.com','$2y$10$IvCSC4CgFnXinZcGiW5z/O1aWmaGci2QW.NOZCHE4p5VzRSVOxTIe',NULL,'2017-04-16 19:46:06','2017-04-16 19:46:06'),
	(13,'Doug','doug@example.com','$2y$10$RBY7LVIxzYODXfkZUOvxXegwu5Z7A51NE0Ne4AOiUp/hcCIygmAcC',NULL,'2017-04-16 19:46:13','2017-04-16 19:46:13'),
	(14,'Alicia Baby','alicia@example.com','$2y$10$HFzt4826GrCsOqvWPKVP7.dN/t1fnr9vn5Env9vLQzbCnJlqD3.Oa',NULL,'2017-04-18 01:25:58','2017-04-18 01:25:58'),
	(15,'Melanie','melanie@example.com','$2y$10$DDDAjgkwP/djx7iCKYSuuuyD8WcyQ0raWfsFuZ7NpKOMB9L8oPMiK',NULL,'2017-04-18 13:59:54','2017-04-18 13:59:54');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
