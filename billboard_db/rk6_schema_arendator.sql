CREATE DATABASE  IF NOT EXISTS `rk6_schema` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `rk6_schema`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: rk6_schema
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `arendator`
--

DROP TABLE IF EXISTS `arendator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `arendator` (
  `Id_cont` int NOT NULL AUTO_INCREMENT,
  `surname` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `adress` varchar(45) NOT NULL,
  `business` varchar(45) NOT NULL,
  `date_cr` date NOT NULL,
  `staffid` int DEFAULT NULL,
  PRIMARY KEY (`Id_cont`),
  KEY `staffid_idx` (`staffid`),
  CONSTRAINT `staffid` FOREIGN KEY (`staffid`) REFERENCES `staff` (`staff_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arendator`
--

LOCK TABLES `arendator` WRITE;
/*!40000 ALTER TABLE `arendator` DISABLE KEYS */;
INSERT INTO `arendator` VALUES (1,'Гриков','89035847564','Гужвина,12','IT','2020-03-05',3),(2,'Донцов','88695867458','Столетова, 5','Мода','2020-08-29',NULL),(3,'Федотова','89034949275','Лефортово, 20','Животные','2020-03-27',NULL),(4,'Серов','88596837586','Мичуринский пр, 3','IT','2013-03-05',NULL),(5,'Сорокина','89034850349','Вернадская, 12','Маркетинг','2019-04-05',NULL),(6,'Малышенко','88483843498','Березовая, 5','Мода','2020-03-06',NULL),(7,'Майстренко','88435454353','Шипиловское кл, 1','Ритуальные услуги','2023-12-04',5),(8,'Логинов','88999163714','Бауманская ВиТ, 1','Криптоцыганство','2023-12-05',6),(9,'Коньков','78778787877','Столетова, 16','Мода','2023-12-13',7),(10,'Липунцов','87777777878','Чкаловаская,40','Животные','2023-12-13',9);
/*!40000 ALTER TABLE `arendator` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-26 16:58:02
