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
-- Table structure for table `medicos`
--

DROP TABLE IF EXISTS `medicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicos` (
  `CRM_medico` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `especialidade` varchar(50) NOT NULL,
  `contato` varchar(20) NOT NULL,
  PRIMARY KEY (`CRM_medico`),
  UNIQUE KEY `contato` (`contato`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicos`
--

LOCK TABLES `medicos` WRITE;
/*!40000 ALTER TABLE `medicos` DISABLE KEYS */;
INSERT INTO `medicos` VALUES (1,'Dr. Carlos Pereira','Médico','Clínico Geral','61955550000'),(2,'Dra. Fernanda Lima','Médica','Pediatria','61944440000'),(3,'Dr. Ricardo Gomes','Médico','Cardiologia','61933330000'),(204,'Dr. Alexandre Guedes','Médico','Dermatologia','61922425555'),(205,'Dra. Patrícia Fontes','Médica','Oftalmologia','61933346666'),(206,'Dr. Rodrigo Costa','Médico','Ginecologia','61944457777'),(207,'Dra. Flávia Oliveira','Médica','Neurologia','61954558888'),(208,'Dr. Marcelo Antunes','Médico','Clínico Geral','61964669999'),(209,'Dra. Joana Silva','Médica','Pediatria','61977740000'),(210,'Dr. Sérgio Mendes','Médico','Cardiologia','61984881111'),(211,'Dra. Aline Castro','Médica','Endocrinologia','61499992222'),(212,'Dr. Felipe Nogueira','Médico','Ortopedia','61904003333'),(213,'Dra. Renata Carvalho','Médica','Clínico Geral','61911414444'),(214,'Dr. Gustavo Santos','Médico','Psiquiatria','61922225555'),(215,'Dra. Lúcia Pereira','Médica','Gastroenterologia','61933336666'),(216,'Dr. Paulo Ramos','Médico','Urologia','61944447777'),(217,'Dra. Ana Paula','Médica','Clínico Geral','61955558888'),(218,'Dr. Roberto Martins','Médico','Cirurgião Geral','61966669999'),(219,'Dra. Maria Clara','Médica','Clínico Geral','61977770000'),(220,'Dr. Caio Andrade','Médico','Anestesiologia','61988881111'),(221,'Dra. Sofia Campos','Médica','Infectologia','61999992222'),(222,'Dr. Pedro Henrique','Médico','Clínico Geral','61900003333'),(223,'Dra. Beatriz Fernandes','Médica','Pediatria','61911114444');
/*!40000 ALTER TABLE `medicos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-23 17:00:38
