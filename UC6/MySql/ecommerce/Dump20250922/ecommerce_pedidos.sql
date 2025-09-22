-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce
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
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id` int NOT NULL,
  `cliente_id` int DEFAULT NULL,
  `data_pedido` timestamp NULL DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_pedidos_cliente_id` (`cliente_id`),
  CONSTRAINT `fk_pedidos_cliente_id` FOREIGN KEY (`cliente_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,1,'2025-09-22 17:54:42','Pago',180.00),(2,2,'2025-09-22 17:54:42','Enviado',2500.00),(3,3,'2025-09-22 17:54:42','Cancelado',35.50),(4,4,'2025-09-22 17:54:42','Pago',50.00),(5,5,'2025-09-22 17:54:42','Enviado',400.00),(6,6,'2025-09-22 17:54:42','Pago',120.00),(7,7,'2025-09-22 17:54:42','Enviado',85.00),(8,8,'2025-09-22 17:54:42','Pago',60.00),(9,9,'2025-09-22 17:54:42','Cancelado',45.00),(10,10,'2025-09-22 17:54:42','Enviado',25.00),(11,11,'2025-09-22 17:54:42','Pago',70.00),(12,12,'2025-09-22 17:54:42','Enviado',40.00),(13,13,'2025-09-22 17:54:42','Pago',30.00),(14,14,'2025-09-22 17:54:42','Cancelado',250.00),(15,15,'2025-09-22 17:54:42','Pago',20.00),(16,16,'2025-09-22 17:54:42','Enviado',90.00),(17,17,'2025-09-22 17:54:42','Pendente',15.00),(18,18,'2025-09-22 17:54:42','Pago',1200.00),(19,19,'2025-09-22 17:54:42','Enviado',2000.00),(20,20,'2025-09-22 17:54:42','Pago',180.00),(21,21,'2025-09-22 17:54:42','Enviado',100.00),(22,22,'2025-09-22 17:54:42','Pago',65.00),(23,23,'2025-09-22 17:54:42','Enviado',150.00),(24,24,'2025-09-22 17:54:42','Pendente',300.00),(25,25,'2025-09-22 17:54:42','Cancelado',25.00),(26,26,'2025-09-22 17:54:42','Pago',180.00),(27,27,'2025-09-22 17:54:42','Enviado',800.00),(28,28,'2025-09-22 17:54:42','Pendente',110.00),(29,29,'2025-09-22 17:54:42','Pago',120.00),(30,30,'2025-09-22 17:54:42','Enviado',950.00),(31,1,'2025-09-22 17:56:06','Cancelado',360.00);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-22 17:05:10
