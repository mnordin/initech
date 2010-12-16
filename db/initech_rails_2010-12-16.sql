# Sequel Pro dump
# Version 2492
# http://code.google.com/p/sequel-pro
#
# Host: localhost (MySQL 5.1.52)
# Database: initech_rails
# Generation Time: 2010-12-16 13:57:30 +0100
# ************************************************************

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table admins
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admins`;

CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(128) NOT NULL DEFAULT '',
  `password_salt` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admins_on_email` (`email`),
  UNIQUE KEY `index_admins_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` (`id`,`email`,`encrypted_password`,`password_salt`,`reset_password_token`,`remember_token`,`remember_created_at`,`sign_in_count`,`current_sign_in_at`,`last_sign_in_at`,`current_sign_in_ip`,`last_sign_in_ip`,`created_at`,`updated_at`)
VALUES
	(1,'admin@domain.com','6a5b8ebc881e5600b15c9968d09760ff5dee87dc','cs4wKMt5deBT1W9s4vED','RIVFL1uVCDwFxP9TEOwu',NULL,NULL,12,'2010-12-15 11:56:27','2010-12-15 11:47:54','127.0.0.1','127.0.0.1','2010-12-10 15:15:10','2010-12-15 11:56:27');

/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table question_answering_alternatives
# ------------------------------------------------------------

DROP TABLE IF EXISTS `question_answering_alternatives`;

CREATE TABLE `question_answering_alternatives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `question_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

LOCK TABLES `question_answering_alternatives` WRITE;
/*!40000 ALTER TABLE `question_answering_alternatives` DISABLE KEYS */;
INSERT INTO `question_answering_alternatives` (`id`,`content`,`question_id`,`created_at`,`updated_at`)
VALUES
	(1,'75',1,NULL,NULL),
	(2,'tre fran igar',1,NULL,NULL),
	(3,'sex var det senaste',1,NULL,NULL),
	(4,'8',1,NULL,NULL),
	(5,'blau',5,NULL,NULL),
	(6,'graun',5,NULL,NULL),
	(7,'reeed',5,NULL,NULL),
	(8,'oreilly',9,NULL,NULL),
	(9,'head first',9,NULL,NULL),
	(10,'microsoft',9,NULL,NULL),
	(11,'pragprog',9,NULL,NULL);

/*!40000 ALTER TABLE `question_answering_alternatives` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table questions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `questions`;

CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `background` text,
  `survey_id` int(11) DEFAULT NULL,
  `answer_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` (`id`,`description`,`background`,`survey_id`,`answer_type`,`created_at`,`updated_at`)
VALUES
	(2,'Varför?','',1,'textarea','2010-12-10 15:15:09','2010-12-15 12:00:12'),
	(3,'Ar det verkligen kul att det kors','Det ar ju nagot Viktor sager mest hela tiden.. Men ar det egentligen sa forbannat kul att det kors - tycker du?',1,'radiobuttonlist','2010-12-10 15:15:09','2010-12-10 15:15:09'),
	(4,'Vilka farger ar det pa luft?',NULL,2,'checkboxlist','2010-12-10 15:15:09','2010-12-10 15:15:09'),
	(5,'Vilken farg ar det INTE pa luft?','Blå?',2,'radiobuttonlist','2010-12-10 15:15:09','2010-12-13 13:54:25'),
	(6,'Skriv nagot kul','något kul',3,'textarea','2010-12-10 15:15:09','2010-12-13 13:54:48'),
	(7,'Vad anser du generellt sett om saker?','Att de är bra? Kanske...',4,'textarea','2010-12-10 15:15:09','2010-12-13 13:54:03'),
	(8,'En fraga med bakgrund till kan ju vara kul, eller?','BAKGRUnd..',4,'scale','2010-12-10 15:15:09','2010-12-10 15:15:09'),
	(9,'vilka bocker anvander du?','oreilly, headfirst, pragprog',1,'checkboxlist',NULL,'2010-12-14 15:04:32');

/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table reports
# ------------------------------------------------------------

DROP TABLE IF EXISTS `reports`;

CREATE TABLE `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `survey_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table schema_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` (`version`)
VALUES
	('20101202110610'),
	('20101202110730'),
	('20101206090210'),
	('20101207110612'),
	('20101210110658'),
	('20101210111254');

/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table survey_question_results
# ------------------------------------------------------------

DROP TABLE IF EXISTS `survey_question_results`;

CREATE TABLE `survey_question_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `graph` tinyint(1) DEFAULT NULL,
  `raw_data` tinyint(1) DEFAULT NULL,
  `type_of_graph` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table surveys
# ------------------------------------------------------------

DROP TABLE IF EXISTS `surveys`;

CREATE TABLE `surveys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) DEFAULT NULL,
  `send_date` datetime DEFAULT NULL,
  `deadline` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `random_identifier` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

LOCK TABLES `surveys` WRITE;
/*!40000 ALTER TABLE `surveys` DISABLE KEYS */;
INSERT INTO `surveys` (`id`,`heading`,`send_date`,`deadline`,`status`,`description`,`random_identifier`,`created_at`,`updated_at`)
VALUES
	(1,'test1:Utvärdering av hur bra Viktör år','2010-12-15 11:44:00','2010-12-15 11:44:00','draft',NULL,'test1','2010-12-10 15:15:09','2010-12-15 12:01:45'),
	(2,'test2:Avancerade hackingteknologier 3',NULL,NULL,'draft',NULL,'test2','2010-12-10 15:15:09','2010-12-10 15:15:09'),
	(3,'test3:Grundlaggande glasstillverkningskurs',NULL,NULL,'scheduled',NULL,'test3','2010-12-10 15:15:09','2010-12-10 15:15:09'),
	(4,'test4:Utvardering av klassrum 304',NULL,NULL,'active',NULL,'test4','2010-12-10 15:15:09','2010-12-10 15:15:09'),
	(5,'test5:OMG Jatte stangd utvardering',NULL,NULL,'closed',NULL,'test5','2010-12-10 15:15:09','2010-12-10 15:15:09'),
	(6,'lalala','2010-12-15 11:41:00','2010-12-15 11:41:00','draft',NULL,'c84kv7ux45','2010-12-15 11:42:03','2010-12-15 11:42:03'),
	(7,':(','2010-12-15 11:48:00','2010-12-15 11:48:00','draft',NULL,'801c7eumk3','2010-12-15 11:50:15','2010-12-15 11:50:15'),
	(8,'vsvsv','2010-12-15 11:50:00','2010-12-19 11:50:00','draft',NULL,'dpj2qorktj','2010-12-15 11:51:13','2010-12-15 11:51:13');

/*!40000 ALTER TABLE `surveys` ENABLE KEYS */;
UNLOCK TABLES;





/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
