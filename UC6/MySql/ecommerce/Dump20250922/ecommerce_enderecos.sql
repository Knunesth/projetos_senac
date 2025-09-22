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
-- Table structure for table `enderecos`
--

DROP TABLE IF EXISTS `enderecos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enderecos` (
  `id` int NOT NULL,
  `cliente_id` int DEFAULT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `numero` varchar(50) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_enderecos_cliente_id` (`cliente_id`),
  CONSTRAINT `fk_enderecos_cliente_id` FOREIGN KEY (`cliente_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enderecos`
--

LOCK TABLES `enderecos` WRITE;
/*!40000 ALTER TABLE `enderecos` DISABLE KEYS */;
INSERT INTO `enderecos` VALUES (1,1,'Rua das Flores','123','Centro','São Paulo','SP','01000-000'),(2,2,'Avenida Brasil','456','Jardim América','Rio de Janeiro','RJ','20000-000'),(3,3,'Praça da Liberdade','789','Savassi','Belo Horizonte','MG','30000-000'),(4,4,'Rua XV de Novembro','101','Centro','Curitiba','PR','80000-000'),(5,5,'Rua da Praia','202','Centro','Porto Alegre','RS','90000-000'),(6,6,'Setor Comercial Sul','303','Asa Sul','Brasília','DF','70000-000'),(7,7,'Rua do Sol','404','Pituba','Salvador','BA','40000-000'),(8,8,'Rua da Aurora','505','Boa Viagem','Recife','PE','50000-000'),(9,9,'Avenida Atlântica','606','Meireles','Fortaleza','CE','60000-000'),(10,10,'Rua Direita','707','Centro','Natal','RN','59000-000'),(11,11,'Rua das Palmeiras','808','Lagoa da Conceição','Florianópolis','SC','88000-000'),(12,12,'Rua do Comércio','909','Centro','Manaus','AM','69000-000'),(13,13,'Rua da Matriz','111','Centro','Goiânia','GO','74000-000'),(14,14,'Rua do Rosário','222','Ponta Verde','Maceió','AL','57000-000'),(15,15,'Avenida Principal','333','Aldeota','Fortaleza','CE','60000-123'),(16,16,'Rua da Paz','444','Setor Oeste','Goiânia','GO','74000-123'),(17,17,'Rua das Gaivotas','555','Barra da Tijuca','Rio de Janeiro','RJ','22000-123'),(18,18,'Avenida das Américas','666','Jardins','São Paulo','SP','01234-567'),(19,19,'Rua das Pedras','777','Ipanema','Rio de Janeiro','RJ','22000-456'),(20,20,'Rua do Cedro','888','Moema','São Paulo','SP','04000-123'),(21,21,'Rua da Saudade','999','Bairro Novo','Olinda','PE','53000-000'),(22,22,'Rua da Alegria','120','Jardim Botânico','Curitiba','PR','80000-123'),(23,23,'Avenida do Contorno','234','Santo Agostinho','Belo Horizonte','MG','30190-000'),(24,24,'Rua São João','345','Centro','Porto Alegre','RS','90000-456'),(25,25,'Rua do Sol','456','Centro','Natal','RN','59000-123'),(26,26,'Rua da Harmonia','567','Asa Norte','Brasília','DF','70000-456'),(27,27,'Rua da Esperança','678','Pituba','Salvador','BA','40000-789'),(28,28,'Avenida Maracanã','789','Maracanã','Rio de Janeiro','RJ','20000-789'),(29,29,'Rua da Fortuna','890','Centro','Recife','PE','50000-789'),(30,30,'Rua do Futuro','901','Meireles','Fortaleza','CE','60000-789');
/*!40000 ALTER TABLE `enderecos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-22 17:05:09
