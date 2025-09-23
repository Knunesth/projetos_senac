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
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `matri_funci` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `turno` varchar(30) NOT NULL,
  PRIMARY KEY (`matri_funci`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (1,'Lucas Almeida','Atendente','Manhã'),(2,'Juliana Castro','Atendente','Tarde'),(3,'Marcos Vieira','Gerente','Integral'),(4,'Ana Silva','Atendente','Manhã'),(5,'João Paulo','Atendente','Tarde'),(6,'Larissa Mendes','Farmacêutico','Integral'),(7,'Ricardo Santos','Gerente','Manhã'),(8,'Bruna Oliveira','Atendente','Tarde'),(9,'Fabio Castro','Farmacêutico','Tarde'),(10,'Camila Souza','Atendente','Integral'),(11,'Thiago Rocha','Atendente','Manhã'),(12,'Marina Costa','Atendente','Tarde'),(13,'Paulo Vieira','Farmacêutico','Manhã'),(14,'Luciana Lima','Atendente','Tarde'),(15,'Henrique Gomes','Atendente','Manhã'),(16,'Isabela Fernandes','Atendente','Integral'),(17,'Roberto Neves','Farmacêutico','Integral'),(18,'Andre Pires','Atendente','Tarde'),(19,'Mariana Souza','Atendente','Manhã'),(20,'Daniel Almeida','Gerente','Tarde'),(21,'Patrícia Carvalho','Atendente','Manhã'),(22,'Marcelo Ribeiro','Farmacêutico','Manhã'),(23,'Carolina Dias','Atendente','Tarde');
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
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
