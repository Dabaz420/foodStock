-- Adminer 4.7.6 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

CREATE DATABASE `zouz` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `zouz`;

SET NAMES utf8mb4;

CREATE TABLE `Aliments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prix` float NOT NULL,
  `date` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `Aliments` (`id`, `nom`, `prix`, `date`) VALUES
(1,	'carotte',	1.5,	'2021-01-07 14:36:54'),
(2,	'saucisse',	35,	'2021-01-07 14:37:17'),
(3,	'Bombay Sapphire',	18,	'2021-01-07 14:38:39'),
(4,	'poulet',	11,	'2021-01-07 14:39:10'),
(5,	'framboise',	4.5,	'2021-01-07 14:39:32');

CREATE TABLE `Type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `Type` (`id`, `nom`) VALUES
(1,	'Légumineuse'),
(2,	'Alcool'),
(3,	'Viande Blanche'),
(4,	'Viande Rouge'),
(5,	'Fruit');

CREATE TABLE `assoc_aliments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_alim` int NOT NULL,
  `id_type` int NOT NULL,
  `id_saison` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_alim` (`id_alim`),
  KEY `id_type` (`id_type`),
  KEY `id_saison` (`id_saison`),
  CONSTRAINT `assoc_aliments_ibfk_1` FOREIGN KEY (`id_alim`) REFERENCES `Aliments` (`id`),
  CONSTRAINT `assoc_aliments_ibfk_3` FOREIGN KEY (`id_type`) REFERENCES `Type` (`id`),
  CONSTRAINT `assoc_aliments_ibfk_4` FOREIGN KEY (`id_saison`) REFERENCES `saison` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `assoc_aliments` (`id`, `id_alim`, `id_type`, `id_saison`) VALUES
(1,	1,	1,	1),
(2,	1,	1,	2),
(3,	2,	1,	0),
(4,	3,	2,	0),
(5,	4,	3,	0),
(6,	5,	5,	1);

CREATE TABLE `saison` (
  `id` int NOT NULL AUTO_INCREMENT,
  `saison` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `saison` (`id`, `saison`) VALUES
(0,	'Toute l\'année'),
(1,	'Été'),
(2,	'Printemps'),
(3,	'Autone'),
(4,	'Hiver');

CREATE TABLE `stock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_alim` int NOT NULL,
  `stock` char(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_alim` (`id_alim`),
  CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`id_alim`) REFERENCES `Aliments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `stock` (`id`, `id_alim`, `stock`) VALUES
(1,	1,	'FALSE'),
(2,	2,	'TRUE'),
(3,	3,	'TRUE'),
(4,	4,	'FALSE'),
(5,	5,	'TRUE');

-- 2021-01-07 15:21:38
