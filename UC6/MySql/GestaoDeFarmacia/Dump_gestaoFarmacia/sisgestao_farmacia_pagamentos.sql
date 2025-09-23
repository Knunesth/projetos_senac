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
-- Table structure for table `pagamentos`
--

DROP TABLE IF EXISTS `pagamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamentos` (
  `pagamentos_id` int NOT NULL AUTO_INCREMENT,
  `vendas_id` int NOT NULL,
  `med_id` int NOT NULL,
  `quantidade` int NOT NULL,
  `forma` varchar(50) NOT NULL,
  `status` varchar(50) DEFAULT 'cancelado',
  PRIMARY KEY (`pagamentos_id`),
  KEY `vendas_id` (`vendas_id`),
  KEY `med_id` (`med_id`),
  CONSTRAINT `pagamentos_ibfk_1` FOREIGN KEY (`vendas_id`) REFERENCES `vendas` (`vendas_id`),
  CONSTRAINT `pagamentos_ibfk_2` FOREIGN KEY (`med_id`) REFERENCES `medicamentos` (`med_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamentos`
--

LOCK TABLES `pagamentos` WRITE;
/*!40000 ALTER TABLE `pagamentos` DISABLE KEYS */;
INSERT INTO `pagamentos` VALUES (1,1,1,2,'Cartão de Crédito','pago'),(2,2,3,1,'Dinheiro','pago'),(3,3,5,1,'Pix','pago'),(4,4,6,1,'Pix','pago'),(5,5,7,1,'Cartão de Crédito','pago'),(6,6,8,1,'Dinheiro','pago'),(7,7,9,1,'Pix','pago'),(8,8,10,1,'Cartão de Débito','pago'),(9,9,11,1,'Dinheiro','pago'),(10,10,12,1,'Pix','pago'),(11,11,13,1,'Cartão de Crédito','pago'),(12,12,14,1,'Dinheiro','pago'),(13,13,15,1,'Pix','pago'),(14,14,16,1,'Cartão de Débito','pago'),(15,15,17,1,'Dinheiro','pago'),(16,16,18,1,'Pix','pago'),(17,17,19,1,'Cartão de Crédito','pago'),(18,18,20,1,'Dinheiro','pago'),(19,19,3,1,'Pix','pago'),(20,20,2,1,'Cartão de Crédito','pago'),(21,21,1,1,'Dinheiro','pago'),(22,22,4,1,'Pix','pago'),(23,23,5,1,'Cartão de Débito','pago');
/*!40000 ALTER TABLE `pagamentos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-23 17:00:39
