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
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `criado_em` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Ana Clara Silva','anaclara.silva@example.com','senha123!','(11) 98765-4321','123.456.789-01','2025-09-22 17:54:42'),(2,'João Pedro Santos','joao.santos@example.net','joaopedro@2024','(21) 91234-5678','987.654.321-09','2025-09-22 17:54:42'),(3,'Maria Eduarda Oliveira','maria.eduarda@example.org','maria_ed_pwd#','(31) 95555-4444','456.789.012-34','2025-09-22 17:54:42'),(4,'Pedro Henrique Costa','pedro.henrique@example.com','p3dr0h3n','(41) 99888-7777','789.012.345-67','2025-09-22 17:54:42'),(5,'Juliana Almeida','juliana.almeida@example.net','jualm_pass_1','(51) 96666-3333','012.345.678-90','2025-09-22 17:54:42'),(6,'Carlos Roberto Souza','carlos.souza@example.org','carlos_souza#','(61) 92222-1111','345.678.901-23','2025-09-22 17:54:42'),(7,'Mariana Ferreira','mariana.ferreira@example.com','m4ri4n4_f3rr31r4','(71) 97777-0000','678.901.234-56','2025-09-22 17:54:42'),(8,'Gabriel Lima','gabriel.lima@example.net','gabriel_lima_senha','(81) 94444-9999','901.234.567-89','2025-09-22 17:54:42'),(9,'Larissa Mendes','larissa.mendes@example.org','larissa_mendes_01','(91) 93333-8888','234.567.890-12','2025-09-22 17:54:42'),(10,'Rafael Gomes','rafael.gomes@example.com','rafael_gomes_pwd!','(84) 91111-2222','567.890.123-45','2025-09-22 17:54:42'),(11,'Isabela Martins','isabela.martins@example.net','isabela_m@2024','(85) 90000-5555','890.123.456-78','2025-09-22 17:54:42'),(12,'Lucas Santos','lucas.santos@example.org','lucas_sant_pwd#','(86) 98888-0000','123.456.789-12','2025-09-22 17:54:42'),(13,'Beatriz Pires','beatriz.pires@example.com','beatriz_p_pass','(87) 97777-1111','456.789.012-45','2025-09-22 17:54:42'),(14,'Fernanda Costa','fernanda.costa@example.net','fernanda_c@2024','(88) 96666-2222','789.012.345-78','2025-09-22 17:54:42'),(15,'Gustavo Souza','gustavo.souza@example.org','gustavo_s_pwd#','(89) 95555-3333','012.345.678-01','2025-09-22 17:54:42'),(16,'Camila Rocha','camila.rocha@example.com','camila_r@2024','(92) 94444-4444','345.678.901-34','2025-09-22 17:54:42'),(17,'Felipe Oliveira','felipe.oliveira@example.net','felipe_o_pwd','(93) 93333-5555','678.901.234-67','2025-09-22 17:54:42'),(18,'Ana Paula Gomes','anapaula.gomes@example.org','anapaula_g@2024','(94) 92222-6666','901.234.567-90','2025-09-22 17:54:42'),(19,'Daniel Fernandes','daniel.fernandes@example.com','daniel_f_pass!','(95) 91111-7777','234.567.890-23','2025-09-22 17:54:42'),(20,'Luiza Ribeiro','luiza.ribeiro@example.net','luiza_r@2024','(96) 90000-8888','567.890.123-56','2025-09-22 17:54:42'),(21,'Guilherme Castro','guilherme.castro@example.org','guilherme_c_pwd#','(97) 98765-4321','890.123.456-89','2025-09-22 17:54:42'),(22,'Sofia Lima','sofia.lima@example.com','sofia_l_pass','(98) 91234-5678','123.456.789-23','2025-09-22 17:54:42'),(23,'Rodrigo Barbosa','rodrigo.barbosa@example.net','rodrigo_b@2024','(99) 95555-4444','456.789.012-56','2025-09-22 17:54:42'),(24,'Amanda Rocha','amanda.rocha@example.org','amanda_r_pwd#','(11) 99888-7777','789.012.345-89','2025-09-22 17:54:42'),(25,'Vitor Gomes','vitor.gomes@example.com','vitor_g_pass','(21) 96666-3333','012.345.678-12','2025-09-22 17:54:42'),(26,'Bruna Fernandes','bruna.fernandes@example.net','bruna_f@2024','(31) 92222-1111','345.678.901-45','2025-09-22 17:54:42'),(27,'Thiago Lima','thiago.lima@example.org','thiago_l_pwd#','(41) 97777-0000','678.901.234-78','2025-09-22 17:54:42'),(28,'Paula Ribeiro','paula.ribeiro@example.com','paula_r_pass','(51) 94444-9999','901.234.567-01','2025-09-22 17:54:42'),(29,'Eduardo Martins','eduardo.martins@example.net','eduardo_m@2024','(61) 93333-8888','234.567.890-34','2025-09-22 17:54:42'),(30,'Julia Dias','julia.dias@example.org','julia_d_pwd#','(71) 91111-2222','567.890.123-67','2025-09-22 17:54:42');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
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
