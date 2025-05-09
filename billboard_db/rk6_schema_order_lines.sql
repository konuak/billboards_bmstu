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
-- Table structure for table `order_lines`
--

DROP TABLE IF EXISTS `order_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_lines` (
  `id_line` int NOT NULL AUTO_INCREMENT,
  `YM_start` date NOT NULL,
  `YM_end` date NOT NULL,
  `price_line` int DEFAULT NULL,
  `idbill` int NOT NULL,
  `idorder` int NOT NULL,
  PRIMARY KEY (`id_line`),
  KEY `idbill_idx` (`idbill`),
  KEY `idorder_idx` (`idorder`),
  CONSTRAINT `idbill` FOREIGN KEY (`idbill`) REFERENCES `billboards` (`id_bill`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `idorder` FOREIGN KEY (`idorder`) REFERENCES `orde` (`id_order`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_lines`
--

LOCK TABLES `order_lines` WRITE;
/*!40000 ALTER TABLE `order_lines` DISABLE KEYS */;
INSERT INTO `order_lines` VALUES (1,'2022-02-01','2022-03-01',1000,1111,1),(2,'2022-02-01','2022-07-01',10000,2221,2),(3,'2020-05-01','2020-08-01',10500,3312,1),(4,'2022-08-01','2023-05-01',10800,4233,2),(40,'2023-04-01','2023-05-01',1000,1111,56),(41,'2023-04-01','2023-05-01',2500,2221,56),(42,'2023-10-01','2023-11-01',1200,4233,64),(43,'2023-10-01','2023-11-01',1000,5344,64),(44,'2023-01-01','2023-02-01',1000,1111,97),(45,'2023-01-01','2023-02-01',1000,1111,97),(66,'2024-04-01','2024-10-01',6000,1111,115),(67,'2024-04-01','2024-10-01',6000,4233,115),(68,'2024-01-01','2024-11-01',20000,1534,116),(70,'2018-02-01','2018-03-01',1000,1111,3),(71,'2018-03-01','2018-05-01',1000,3312,3),(72,'2018-03-01','2018-05-01',1000,2221,3),(73,'2020-05-01','2020-08-01',10500,1111,3),(74,'2020-05-01','2020-08-01',3000,2221,1),(75,'2018-03-01','2018-05-01',1000,2221,3),(76,'2018-03-01','2018-05-01',1000,1534,3),(77,'2018-03-01','2018-05-01',1000,1634,3),(78,'2025-05-01','2025-11-01',12000,1534,119);
/*!40000 ALTER TABLE `order_lines` ENABLE KEYS */;
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
