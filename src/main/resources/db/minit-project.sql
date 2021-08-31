CREATE DATABASE `mule` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `mule`;

CREATE TABLE `Account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `date_registered` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `UserDetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `birthdate` date NOT NULL,
  `gender` enum('M','F') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId_FK_idx` (`userId`),
  CONSTRAINT `userId_FK` FOREIGN KEY (`userId`) REFERENCES `Account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
