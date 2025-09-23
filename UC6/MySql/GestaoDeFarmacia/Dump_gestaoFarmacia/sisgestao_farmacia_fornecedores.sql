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
-- Table structure for table `fornecedores`
--

DROP TABLE IF EXISTS `fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedores` (
  `cnpj` varchar(14) NOT NULL,
  `razao_social` varchar(50) NOT NULL,
  `contato` varchar(14) NOT NULL,
  PRIMARY KEY (`cnpj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedores`
--

LOCK TABLES `fornecedores` WRITE;
/*!40000 ALTER TABLE `fornecedores` DISABLE KEYS */;
INSERT INTO `fornecedores` VALUES ('11223344000189','Pharma Express','61989012345'),('11223345000190','BioFarma Distribuição','61990123456'),('11223346000189','Saúde e Vida','61989012346'),('11223355000101','Distribuidora Global','61987654321'),('11224466000178','Cura Rápida Comércio','61978901235'),('12345678000199','Farmadistribuidora LTDA','61988887777'),('22334455000101','Distribuidora União Pharma','61987654321'),('22334456000101','Unifarma Brasil','61901234567'),('22334457000190','Pharma Direct','61990123457'),('22334466000112','Medicina Ativa Ltda','61912345678'),('22335577000190','Bioquímica Pharma','61990123456'),('22336688000189','Saúde Plena','61989012346'),('33445566000112','Med Center Comércio Farmacêutico','61912345678'),('33445567000112','Pharma Excellence','61912345679'),('33445577000123','Produtos Farmacêuticos S.A.','61923456789'),('33446688000101','Unimed Distribuição','61901234567'),('33448800000190','Pharma Solutions','61990123457'),('44556677000123','Produtos de Saúde do Brasil','61923456789'),('44556678000123','Medplus Comércio','61923456780'),('44556688000134','Pharma Central','61934567890'),('44557799000112','PharmaSul','61912345679'),('45678912000133','Pharma Supply S.A','61977776666'),('55667788000134','Pharma Nacional','61934567890'),('55667789000134','Distribuidora Saúde','61934567891'),('55667799000145','Soluções Médicas','61945678901'),('55668800000123','Medicamentos ABC','61923456780'),('66778800000156','Vida em Saúde','61956789012'),('66778890000145','Central de Produtos','61945678902'),('66778899000145','Global Health Care','61945678901'),('66779911000134','Distribuidora Vital','61934567891'),('77880022000145','Central Pharma','61945678902'),('77889900000156','Bem Estar Medicamentos','61956789012'),('77889901000156','MaxiFarma Dist.','61956789013'),('77889911000167','Farma Distribuidora','61967890123'),('88990011000167','Farma Vida Distribuidora','61967890123'),('88990012000167','Pharma Corp Ltda.','61967890124'),('88990022000178','Qualidade em Medicamentos','61978901234'),('88991133000156','Max Farma','61956789013'),('98765432000155','Saúde+ Distribuidora','61999998888'),('99001122000178','Qualidade Pharma LTDA','61978901234'),('99001123000178','Cura Fácil','61978901235'),('99001133000189','Pharma Logistics','61989012345'),('99002244000167','PharmaCorp','61967890124');
/*!40000 ALTER TABLE `fornecedores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-23 17:00:41
