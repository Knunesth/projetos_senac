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
-- Table structure for table `medicamentos`
--

DROP TABLE IF EXISTS `medicamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicamentos` (
  `med_id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `principio_atv` varchar(255) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `validade` date NOT NULL,
  `preco` decimal(5,2) NOT NULL,
  PRIMARY KEY (`med_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamentos`
--

LOCK TABLES `medicamentos` WRITE;
/*!40000 ALTER TABLE `medicamentos` DISABLE KEYS */;
INSERT INTO `medicamentos` VALUES (1,'Paracetamol 500mg','Paracetamol','Comprimido','2026-05-10',12.50),(2,'Dipirona 1g','Dipirona Monoidratada','Comprimido','2027-03-15',8.90),(3,'Amoxicilina 500mg','Amoxicilina','Cápsula','2026-12-01',25.00),(4,'Ibuprofeno 600mg','Ibuprofeno','Comprimido','2025-09-30',15.75),(5,'Loratadina 10mg','Loratadina','Comprimido','2026-08-20',10.00),(6,'Paracetamol 500mg','Paracetamol','Comprimido','2026-05-10',12.50),(7,'Dipirona 1g','Dipirona Monoidratada','Comprimido','2027-03-15',8.90),(8,'Amoxicilina 500mg','Amoxicilina','Cápsula','2026-12-01',25.00),(9,'Ibuprofeno 600mg','Ibuprofeno','Comprimido','2025-09-30',15.75),(10,'Loratadina 10mg','Loratadina','Comprimido','2026-08-20',10.00),(11,'Sertralina 50mg','Sertralina','Comprimido','2027-08-25',45.90),(12,'Losartana Potássica 50mg','Losartana','Comprimido','2026-11-10',22.30),(13,'Omeprazol 20mg','Omeprazol','Cápsula','2028-01-05',18.50),(14,'Propranolol 40mg','Propranolol','Comprimido','2027-06-30',28.75),(15,'AAS 100mg','Ácido Acetilsalicílico','Comprimido','2026-04-12',5.50),(16,'Clonazepam 2mg','Clonazepam','Comprimido','2026-09-01',35.00),(17,'Metformina 850mg','Metformina','Comprimido','2027-03-20',14.80),(18,'Dexametasona 4mg','Dexametasona','Injetável','2026-10-18',11.20),(19,'Clavulin BD 875mg','Amoxicilina + Clavulanato','Comprimido','2027-02-28',55.00),(20,'Captopril 25mg','Captopril','Comprimido','2028-04-05',9.90),(21,'Sinvastatina 20mg','Sinvastatina','Comprimido','2026-07-22',17.50),(22,'Pantoprazol 40mg','Pantoprazol','Comprimido','2027-05-15',21.00),(23,'Amoxicilina 250mg/5ml','Amoxicilina','Suspensão Oral','2026-09-25',32.40),(24,'Dipirona 500mg/ml','Dipirona','Solução Oral','2027-08-01',13.50),(25,'Loratadina Xarope','Loratadina','Xarope','2028-02-10',16.00),(26,'Cetoconazol Creme','Cetoconazol','Creme','2026-11-05',20.80),(27,'Atenolol 25mg','Atenolol','Comprimido','2027-01-28',19.90),(28,'Enalapril 10mg','Enalapril','Comprimido','2026-06-08',11.50),(29,'Ranitidina 150mg','Ranitidina','Comprimido','2027-04-19',15.20),(30,'Buscopan Composto','Butilbrometo de Escopolamina + Dipirona','Comprimido','2026-12-31',14.75),(31,'Sertralina 50mg','Sertralina','Comprimido','2027-08-25',45.90),(32,'Losartana Potássica 50mg','Losartana','Comprimido','2026-11-10',22.30),(33,'Omeprazol 20mg','Omeprazol','Cápsula','2028-01-05',18.50),(34,'Propranolol 40mg','Propranolol','Comprimido','2027-06-30',28.75),(35,'AAS 100mg','Ácido Acetilsalicílico','Comprimido','2026-04-12',5.50),(36,'Clonazepam 2mg','Clonazepam','Comprimido','2026-09-01',35.00),(37,'Metformina 850mg','Metformina','Comprimido','2027-03-20',14.80),(38,'Dexametasona 4mg','Dexametasona','Injetável','2026-10-18',11.20),(39,'Clavulin BD 875mg','Amoxicilina + Clavulanato','Comprimido','2027-02-28',55.00),(40,'Captopril 25mg','Captopril','Comprimido','2028-04-05',9.90),(41,'Sinvastatina 20mg','Sinvastatina','Comprimido','2026-07-22',17.50),(42,'Pantoprazol 40mg','Pantoprazol','Comprimido','2027-05-15',21.00),(43,'Amoxicilina 250mg/5ml','Amoxicilina','Suspensão Oral','2026-09-25',32.40),(44,'Dipirona 500mg/ml','Dipirona','Solução Oral','2027-08-01',13.50),(45,'Loratadina Xarope','Loratadina','Xarope','2028-02-10',16.00),(46,'Cetoconazol Creme','Cetoconazol','Creme','2026-11-05',20.80),(47,'Atenolol 25mg','Atenolol','Comprimido','2027-01-28',19.90),(48,'Enalapril 10mg','Enalapril','Comprimido','2026-06-08',11.50),(49,'Ranitidina 150mg','Ranitidina','Comprimido','2027-04-19',15.20),(50,'Buscopan Composto','Butilbrometo de Escopolamina + Dipirona','Comprimido','2026-12-31',14.75);
/*!40000 ALTER TABLE `medicamentos` ENABLE KEYS */;
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
