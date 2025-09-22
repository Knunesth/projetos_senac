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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` int NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `descricao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Eletrônicos','Dispositivos eletrônicos e gadgets.'),(2,'Livros','Livros de ficção, não ficção, e literatura.'),(3,'Roupas','Vestuário masculino, feminino e infantil.'),(4,'Casa & Decoração','Artigos para o lar e decoração.'),(5,'Esportes','Equipamentos e acessórios para atividades físicas.'),(6,'Beleza & Saúde','Produtos de cuidados pessoais e bem-estar.'),(7,'Brinquedos','Brinquedos para crianças e jogos.'),(8,'Ferramentas','Ferramentas manuais e elétricas.'),(9,'Alimentos & Bebidas','Produtos alimentícios e bebidas.'),(10,'Jardinagem','Equipamentos e acessórios para jardinagem.'),(11,'Pet Shop','Produtos para animais de estimação.'),(12,'Automotivo','Acessórios e peças para veículos.'),(13,'Música','Instrumentos musicais e acessórios.'),(14,'Filmes','DVDs, Blu-rays e filmes em geral.'),(15,'Jogos de Tabuleiro','Jogos de tabuleiro e cartas.'),(16,'Materiais de Escritório','Artigos de papelaria e escritório.'),(17,'Computadores','Desktops, notebooks e componentes.'),(18,'Celulares','Smartphones e acessórios.'),(19,'TVs','Televisores e equipamentos de áudio/vídeo.'),(20,'Câmeras','Câmeras digitais e acessórios.'),(21,'Eletrodomésticos','Eletrodomésticos para cozinha e casa.'),(22,'Cama, Mesa & Banho','Artigos têxteis para o lar.'),(23,'Bijuterias','Acessórios de moda e bijuterias.'),(24,'Bolsas & Malas','Bolsas, mochilas e malas.'),(25,'Instrumentos de Corda','Violões, guitarras, etc.'),(26,'Instrumentos de Sopro','Flautas, saxofones, etc.'),(27,'Tênis','Tênis e calçados esportivos.'),(28,'Bicicletas','Bicicletas e acessórios.'),(29,'Suplementos','Suplementos alimentares e vitaminas.'),(30,'Jogos de RPG','Jogos de interpretação de papéis.');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-22 17:05:08
