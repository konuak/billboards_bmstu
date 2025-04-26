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
-- Table structure for table `billboards`
--

DROP TABLE IF EXISTS `billboards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billboards` (
  `id_bill` int NOT NULL AUTO_INCREMENT,
  `quality` int NOT NULL,
  `size` varchar(45) NOT NULL,
  `price` int NOT NULL,
  `address` varchar(45) NOT NULL,
  `date_build` date NOT NULL,
  `ido` int NOT NULL,
  `type_bill` varchar(45) DEFAULT NULL,
  `approved` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_bill`),
  KEY `ido_idx` (`ido`),
  CONSTRAINT `ido` FOREIGN KEY (`ido`) REFERENCES `owner` (`id_o`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=5356 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billboards`
--

LOCK TABLES `billboards` WRITE;
/*!40000 ALTER TABLE `billboards` DISABLE KEYS */;
INSERT INTO `billboards` VALUES (1111,100,'18',1000,'Цветочная, 15','2023-03-05',1,'суперсайт','да'),(1534,1,'19',2000,'Столетова, 21','2023-12-05',1,'ситиборд','да'),(1634,1,'19',2000,'Столетова, 20','2023-12-05',1,'суперсайт','да'),(2221,70,'50',2500,'Лефортово, 17','2023-02-27',5,'софтборд','да'),(3312,50,'100',3500,'Столетова, 14','2021-03-05',2,'софтборд','да'),(4233,100,'15',1200,'Березовая, 15','2017-05-06',3,'ситиборд','да'),(5344,20,'100',1000,'Вечерняя, 4','2023-03-31',4,'билборд','да'),(5347,1,'23',2000,'Люблино, 20','2023-12-01',1,'призматрон','да'),(5348,1,'21',2000,'Столетова, 45','2023-11-07',1,'динамический','да'),(5350,1,'23',2000,'Люблино, 5','2023-12-12',1,'софт','да'),(5351,1,'32',1998,'Столетова, 2','2023-12-11',1,'призматрон','нет'),(5352,1,'34',2000,'Люблино, 45','2023-12-12',1,'щит','да'),(5355,1,'34',2000,'Люблино, 2','2023-11-03',1,'софт','да');
/*!40000 ALTER TABLE `billboards` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-26 16:58:03
