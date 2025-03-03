-- MySQL dump 10.13  Distrib 8.0.13, for Linux (x86_64)
--
-- Host: localhost    Database: jobbydb
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `jobbydb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `jobbydb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;

USE `jobbydb`;

--
-- Table structure for table `adress`
--

DROP TABLE IF EXISTS `adress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `adress` (
  `adressId` int(11) NOT NULL AUTO_INCREMENT,
  `adressLabel` tinytext,
  `adressCountry` varchar(45) DEFAULT NULL,
  `adressRegion` varchar(45) DEFAULT NULL,
  `adressCity` varchar(45) DEFAULT NULL,
  `adressZipCode` int(11) DEFAULT NULL,
  `adressStreetNumber` int(11) DEFAULT NULL,
  `adressStreetName` tinytext,
  `adressIsCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `adress_proId` int(11) DEFAULT NULL,
  `adress_userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`adressId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adress`
--

LOCK TABLES `adress` WRITE;
/*!40000 ALTER TABLE `adress` DISABLE KEYS */;
INSERT INTO `adress` VALUES (1,'Pro','France','Jura','Vittel',28597,48,'rue de l\'eau plate','2018-12-19 15:06:14',1,NULL),(2,'Pro','France','Picardie','Lille',59000,40,'place du théatre','2018-12-19 15:07:17',2,NULL),(3,'Perso','France','Ile de France','Paris',75010,8,'rue lucien','2018-12-19 15:07:56',NULL,1),(4,'Perso','France','Vosges','Cristaline',24888,78,'rue de l\'eau de source','2018-12-19 15:08:43',NULL,2);
/*!40000 ALTER TABLE `adress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category` (
  `categoryId` int(11) NOT NULL AUTO_INCREMENT,
  `categoryLabel` tinytext,
  `categoryImg` tinytext,
  `categoryCode` tinytext,
  `categoryIsCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `categoryIsArchived` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Réparation',NULL,'category_b624d88a-02d1-11e9-b05d-c8d9d27dcad3','2018-12-18 15:32:13',0),(2,'Achat',NULL,'category_84a99eb5-0384-11e9-b05d-c8d9d27dcad3','2018-12-19 12:52:10',0),(3,'Gardiennage',NULL,'category_53588226-0393-11e9-b05d-c8d9d27dcad3','2018-12-19 14:38:10',0),(4,'bidon',NULL,'category_754bd128-043b-11e9-b05d-c8d9d27dcad3','2018-12-20 10:41:42',0);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientAnswer`
--

DROP TABLE IF EXISTS `clientAnswer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `clientAnswer` (
  `clientAnswerId` int(11) NOT NULL AUTO_INCREMENT,
  `clientAnswerLabel` tinytext,
  `clientAnswerIsCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `clientAnswer_possibleResponseId` int(11) DEFAULT NULL,
  `clientAnswer_demandQuestionId` int(11) DEFAULT NULL,
  PRIMARY KEY (`clientAnswerId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientAnswer`
--

LOCK TABLES `clientAnswer` WRITE;
/*!40000 ALTER TABLE `clientAnswer` DISABLE KEYS */;
INSERT INTO `clientAnswer` VALUES (1,'ma plomberie','2018-12-19 15:17:13',NULL,1),(2,'28/08/2587','2018-12-19 15:17:41',NULL,1),(3,'08h00-12h00','2018-12-19 15:19:53',4,1),(4,'Très défectueux','2018-12-19 15:25:36',2,1),(5,'Oui','2018-12-19 15:27:13',8,1),(6,'Un marteau','2018-12-19 15:27:38',10,1),(7,'Une perceuse','2018-12-19 15:27:47',11,1);
/*!40000 ALTER TABLE `clientAnswer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demand`
--

DROP TABLE IF EXISTS `demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `demand` (
  `demandId` int(11) NOT NULL AUTO_INCREMENT,
  `demandCode` tinytext,
  `demandIsCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `demandIsArchived` tinyint(1) DEFAULT '0',
  `demand_userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`demandId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demand`
--

LOCK TABLES `demand` WRITE;
/*!40000 ALTER TABLE `demand` DISABLE KEYS */;
INSERT INTO `demand` VALUES (1,'demand_255c76c3-0398-11e9-b05d-c8d9d27dcad3','2018-12-19 15:12:40',0,2);
/*!40000 ALTER TABLE `demand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demandQuestion`
--

DROP TABLE IF EXISTS `demandQuestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `demandQuestion` (
  `demandQuestionId` int(11) NOT NULL AUTO_INCREMENT,
  `demandQuestion_demandId` int(11) DEFAULT NULL,
  `demandQuestion_questionId` int(11) DEFAULT NULL,
  PRIMARY KEY (`demandQuestionId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demandQuestion`
--

LOCK TABLES `demandQuestion` WRITE;
/*!40000 ALTER TABLE `demandQuestion` DISABLE KEYS */;
INSERT INTO `demandQuestion` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6);
/*!40000 ALTER TABLE `demandQuestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `message` (
  `messageId` int(11) NOT NULL AUTO_INCREMENT,
  `messageLabel` text,
  `messageCode` int(11) DEFAULT NULL,
  `messageIsCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `messageIsArchived` tinyint(1) DEFAULT NULL,
  `message_proId` int(11) DEFAULT NULL,
  `message_demandId` int(11) DEFAULT NULL,
  PRIMARY KEY (`messageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `possibleResponse`
--

DROP TABLE IF EXISTS `possibleResponse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `possibleResponse` (
  `possibleResponseId` int(11) NOT NULL AUTO_INCREMENT,
  `possibleResponseOrder` int(11) DEFAULT NULL,
  `possibleResponseLabel` tinytext,
  `possibleResponseCode` tinytext,
  `possibleResponseIsCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `possibleResponse_questionId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`possibleResponseId`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `possibleResponse`
--

LOCK TABLES `possibleResponse` WRITE;
/*!40000 ALTER TABLE `possibleResponse` DISABLE KEYS */;
INSERT INTO `possibleResponse` VALUES (1,1000,'Hors-service','possibleResponse_378e92ad-037e-11e9-b05d-c8d9d27dcad3','2018-12-19 12:07:04','2'),(2,2000,'Très défectueux','possibleResponse_4b62bf9c-037e-11e9-b05d-c8d9d27dcad3','2018-12-19 12:07:37','2'),(3,3000,'Un peu défectueux','possibleResponse_52b1fe20-037e-11e9-b05d-c8d9d27dcad3','2018-12-19 12:07:49','2'),(4,1000,'08h00-12h00','possibleResponse_3d11b94f-0381-11e9-b05d-c8d9d27dcad3','2018-12-19 12:28:42','4'),(5,2000,'12h00-14h00','possibleResponse_4554aa3a-0381-11e9-b05d-c8d9d27dcad3','2018-12-19 12:28:56','4'),(6,3000,'14h00-18h00','possibleResponse_4bc6131a-0381-11e9-b05d-c8d9d27dcad3','2018-12-19 12:29:06','4'),(7,4000,'18h00-20h00','possibleResponse_51d67cd0-0381-11e9-b05d-c8d9d27dcad3','2018-12-19 12:29:17','4'),(8,1000,'Oui','possibleResponse_6efaa437-0381-11e9-b05d-c8d9d27dcad3','2018-12-19 12:30:05','5'),(9,2000,'Non','possibleResponse_77a678cf-0381-11e9-b05d-c8d9d27dcad3','2018-12-19 12:30:20','5'),(10,1000,'Un marteau','possibleResponse_874dd157-0381-11e9-b05d-c8d9d27dcad3','2018-12-19 12:30:46','6'),(11,2000,'Une perceuse','possibleResponse_8b3146f3-0381-11e9-b05d-c8d9d27dcad3','2018-12-19 12:30:53','6'),(12,3000,'Une pince coupante','possibleResponse_95fb0703-0381-11e9-b05d-c8d9d27dcad3','2018-12-19 12:31:11','6'),(13,1000,'Carte Bancaire','possibleResponse_4a576c36-0392-11e9-b05d-c8d9d27dcad3','2018-12-19 14:30:45','8'),(14,2000,'Espèces','possibleResponse_8c1bab74-0392-11e9-b05d-c8d9d27dcad3','2018-12-19 14:32:36','8'),(15,3000,'Bitcoin','possibleResponse_c0f9f8f8-0392-11e9-b05d-c8d9d27dcad3','2018-12-19 14:34:04','8'),(16,1000,'08h00-12h00','possibleResponse_e5106507-0392-11e9-b05d-c8d9d27dcad3','2018-12-19 14:35:05','10'),(17,2000,'12h00-14h00','possibleResponse_ec3e65ff-0392-11e9-b05d-c8d9d27dcad3','2018-12-19 14:35:17','10'),(18,3000,'14h00-18h00','possibleResponse_f2c55012-0392-11e9-b05d-c8d9d27dcad3','2018-12-19 14:35:28','10'),(19,4000,'18h00-20h00','possibleResponse_f8ca3776-0392-11e9-b05d-c8d9d27dcad3','2018-12-19 14:35:38','10'),(20,1000,'Oui','possibleResponse_0d6bfd8e-0393-11e9-b05d-c8d9d27dcad3','2018-12-19 14:36:13','11'),(21,2000,'Non','possibleResponse_11337857-0393-11e9-b05d-c8d9d27dcad3','2018-12-19 14:36:19','11'),(22,1000,'Professionnel','possibleResponse_28cdf8be-0393-11e9-b05d-c8d9d27dcad3','2018-12-19 14:36:59','12'),(23,2000,'Personnel','possibleResponse_2f60bf24-0393-11e9-b05d-c8d9d27dcad3','2018-12-19 14:37:10','12'),(24,3000,'Pour offrir','possibleResponse_33cf6879-0393-11e9-b05d-c8d9d27dcad3','2018-12-19 14:37:17','12'),(25,1000,'1-5','possibleResponse_6dedc871-0394-11e9-b05d-c8d9d27dcad3','2018-12-19 14:46:04','14'),(26,2000,'5-10','possibleResponse_7b50e5ad-0394-11e9-b05d-c8d9d27dcad3','2018-12-19 14:46:27','14'),(27,3000,'10-20','possibleResponse_8540d9c1-0394-11e9-b05d-c8d9d27dcad3','2018-12-19 14:46:43','14'),(28,1000,'08h00-12h00','possibleResponse_f73da4ee-0394-11e9-b05d-c8d9d27dcad3','2018-12-19 14:49:54','16'),(29,2000,'12h00-14h00','possibleResponse_fd1cb878-0394-11e9-b05d-c8d9d27dcad3','2018-12-19 14:50:04','16'),(30,3000,'14h00-18h00','possibleResponse_02e1d6e1-0395-11e9-b05d-c8d9d27dcad3','2018-12-19 14:50:14','16'),(31,4000,'18h00-20h00','possibleResponse_08f2f451-0395-11e9-b05d-c8d9d27dcad3','2018-12-19 14:50:24','16'),(32,1000,'Oui','possibleResponse_25f427ba-0395-11e9-b05d-c8d9d27dcad3','2018-12-19 14:51:13','17'),(33,2000,'Non','possibleResponse_2af988c0-0395-11e9-b05d-c8d9d27dcad3','2018-12-19 14:51:21','17'),(34,1000,'Public','possibleResponse_3d7be446-0395-11e9-b05d-c8d9d27dcad3','2018-12-19 14:51:52','18'),(35,2000,'Privé','possibleResponse_421d779e-0395-11e9-b05d-c8d9d27dcad3','2018-12-19 14:52:00','18'),(36,3000,'Autre','possibleResponse_478d85c5-0395-11e9-b05d-c8d9d27dcad3','2018-12-19 14:52:09','18');
/*!40000 ALTER TABLE `possibleResponse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pro`
--

DROP TABLE IF EXISTS `pro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pro` (
  `proId` int(11) NOT NULL AUTO_INCREMENT,
  `proName` varchar(45) DEFAULT NULL,
  `proMail` varchar(45) DEFAULT NULL,
  `proIsCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `proPhone` varchar(15) DEFAULT NULL,
  `proCode` tinytext,
  PRIMARY KEY (`proId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pro`
--

LOCK TABLES `pro` WRITE;
/*!40000 ALTER TABLE `pro` DISABLE KEYS */;
INSERT INTO `pro` VALUES (1,'Vittel','vittel@gmail.com','2018-12-19 15:01:11','0654875482','pro_8a6e2dbc-0396-11e9-b05d-c8d9d27dcad3'),(2,'Coworking','coworking@gmail.com','2018-12-19 15:01:41','0658495237','pro_9c7c1ab0-0396-11e9-b05d-c8d9d27dcad3');
/*!40000 ALTER TABLE `pro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `question` (
  `questionId` int(11) NOT NULL AUTO_INCREMENT,
  `questionCode` tinytext,
  `questionOrder` int(11) DEFAULT NULL,
  `questionLabel` tinytext,
  `questionIsCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `questionIsArchived` tinyint(1) DEFAULT '0',
  `question_categoryId` int(11) DEFAULT NULL,
  `question_questionTypeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`questionId`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'question_430f8a7a-037a-11e9-b05d-c8d9d27dcad3',1000,'Quel est le type d\'équipement à réparer ?','2018-12-19 11:38:45',0,1,3),(2,'question_7c3e2856-037a-11e9-b05d-c8d9d27dcad3',2000,'Dans quel état est l\'équipement à réparer ?','2018-12-19 11:40:21',0,1,2),(3,'question_8f618faa-037a-11e9-b05d-c8d9d27dcad3',3000,'Quel jour pourriez-vous reçevoir un jobbeur ?','2018-12-19 11:40:53',0,1,3),(4,'question_aa492de3-037a-11e9-b05d-c8d9d27dcad3',4000,'Vers quelle heure pourriez-vous reçevoir un jobbeur ?','2018-12-19 11:41:38',0,1,4),(5,'question_db71c35d-037a-11e9-b05d-c8d9d27dcad3',5000,'Possèdez vous des outils que le réparateur pourrait utiliser ?','2018-12-19 11:43:01',0,1,2),(6,'question_f787a65c-037a-11e9-b05d-c8d9d27dcad3',6000,'Les outils que vous pouvez prêter sont :','2018-12-19 11:43:48',0,1,1),(7,'question_d7cb8f6f-0385-11e9-b05d-c8d9d27dcad3',1000,'Quel article vous souhaitez acheter ?','2018-12-19 13:01:39',0,2,3),(8,'question_5add8f62-0390-11e9-b05d-c8d9d27dcad3',2000,'Quel moyen de paiment voulez vous utiliser ?','2018-12-19 14:16:54',0,2,2),(9,'question_d18d4c95-0390-11e9-b05d-c8d9d27dcad3',3000,'Quel jour voudriez vous être livré ?','2018-12-19 14:20:13',0,2,3),(10,'question_e0734608-0390-11e9-b05d-c8d9d27dcad3',4000,'Vers quelle heure pourriez vous recevoir la livraison ?','2018-12-19 14:20:38',0,2,4),(11,'question_3bcb517a-0391-11e9-b05d-c8d9d27dcad3',5000,'Votre immeuble possède t\'il un ascenseur ?','2018-12-19 14:23:11',0,2,2),(12,'question_b87dfd85-0391-11e9-b05d-c8d9d27dcad3',6000,'A quelle fin voulez vous procéder à cet achat ?','2018-12-19 14:26:41',0,2,1),(13,'question_742c1c51-0393-11e9-b05d-c8d9d27dcad3',1000,'Que voulez vous faire garder ?','2018-12-19 14:39:05',0,3,3),(14,'question_dc1ebfee-0393-11e9-b05d-c8d9d27dcad3',2000,'De quel effectif avez vous besoin ?','2018-12-19 14:41:59',0,3,2),(15,'question_f14b109f-0393-11e9-b05d-c8d9d27dcad3',3000,'Quel jour avez vous besoin de ce gardiennage ?','2018-12-19 14:42:35',0,3,3),(16,'question_0654cac3-0394-11e9-b05d-c8d9d27dcad3',4000,'Entre quelles heures avez vous besoin de ce gardiennage ?','2018-12-19 14:43:10',0,3,4),(17,'question_29502e0b-0394-11e9-b05d-c8d9d27dcad3',5000,'Ce gardiennage nécessite t\'il la présence d\'un maître chien ?','2018-12-19 14:44:09',0,3,2),(18,'question_5621fe4a-0394-11e9-b05d-c8d9d27dcad3',6000,'Ce gardiennage a t\'il un caractère : ','2018-12-19 14:45:24',0,3,1),(19,'question_ca310dd5-043c-11e9-b05d-c8d9d27dcad3',1000,'bois tu de leau ','2018-12-20 10:51:14',0,NULL,1),(20,'question_e6c276b2-043c-11e9-b05d-c8d9d27dcad3',2000,'bois tu du jus ','2018-12-20 10:52:02',0,NULL,1),(21,'question_ea7f3ab7-043c-11e9-b05d-c8d9d27dcad3',3000,'bois tu du coca','2018-12-20 10:52:09',0,NULL,1);
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questionType`
--

DROP TABLE IF EXISTS `questionType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `questionType` (
  `questionTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `questionTypeLabel` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`questionTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questionType`
--

LOCK TABLES `questionType` WRITE;
/*!40000 ALTER TABLE `questionType` DISABLE KEYS */;
INSERT INTO `questionType` VALUES (1,'checkbox'),(2,'radio'),(3,'text'),(4,'select');
/*!40000 ALTER TABLE `questionType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userPseudo` varchar(45) DEFAULT NULL,
  `userPassword` varchar(45) DEFAULT NULL,
  `userMail` varchar(45) DEFAULT NULL,
  `userIsCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `userFirstName` varchar(45) DEFAULT NULL,
  `userLastName` varchar(45) DEFAULT NULL,
  `userAge` int(11) DEFAULT NULL,
  `userPhone` varchar(15) DEFAULT NULL,
  `userCode` tinytext,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Vinz','keepapi','vinz@gmail.com','2018-12-19 14:55:58','Vincent','Serieges',19,'0614301922','user_d01d600a-0395-11e9-b05d-c8d9d27dcad3'),(2,'Cristaline','keepapi','cricri@gmail.com','2018-12-19 14:57:50','Cristal','Ine',50,'0687485158','user_1293d766-0396-11e9-b05d-c8d9d27dcad3');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-20 12:16:52
