-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: sisgestao_farmacia
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `itensvendas`
--

DROP TABLE IF EXISTS `itensvendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itensvendas` (
  `iVendas_id` int NOT NULL AUTO_INCREMENT,
  `vendas_id` int NOT NULL,
  `med_id` int NOT NULL,
  `quantidade` int NOT NULL,
  `valor_unitario` decimal(10,2) NOT NULL,
  PRIMARY KEY (`iVendas_id`),
  KEY `vendas_id` (`vendas_id`),
  KEY `med_id` (`med_id`),
  CONSTRAINT `itensvendas_ibfk_1` FOREIGN KEY (`vendas_id`) REFERENCES `vendas` (`vendas_id`),
  CONSTRAINT `itensvendas_ibfk_2` FOREIGN KEY (`med_id`) REFERENCES `medicamentos` (`med_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itensvendas`
--

LOCK TABLES `itensvendas` WRITE;
/*!40000 ALTER TABLE `itensvendas` DISABLE KEYS */;
INSERT INTO `itensvendas` VALUES (1,1,1,2,12.50),(2,1,2,1,8.90),(3,2,3,1,25.00),(4,3,5,1,10.00),(5,3,2,1,8.90),(6,4,6,1,45.90),(7,5,7,1,35.00),(8,6,8,1,28.75),(9,7,9,1,55.00),(10,8,10,1,9.90),(11,9,11,1,17.50),(12,10,12,1,21.00),(13,11,13,1,32.40),(14,12,14,1,13.50),(15,13,15,1,16.00),(16,14,16,1,20.80),(17,15,17,1,19.90),(18,16,18,1,11.50),(19,17,19,1,15.20),(20,18,20,1,14.75),(21,19,3,1,25.00),(22,20,2,1,8.90),(23,21,1,1,12.50),(24,22,4,1,15.75),(25,23,5,1,10.00);
/*!40000 ALTER TABLE `itensvendas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-23 17:00:40
