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
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id` int NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `descricao` text,
  `preco` decimal(10,2) DEFAULT NULL,
  `estoque` int DEFAULT NULL,
  `categoria_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_produtos_categoria_id` (`categoria_id`),
  CONSTRAINT `fk_produtos_categoria_id` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'Smartphone X','Smartphone de última geração com câmera 108MP',1500.00,50,18),(2,'Notebook Gamer Pro','Notebook de alto desempenho para jogos',4500.00,15,17),(3,'Livro \"O Códex Secreto\"','Suspense sobre uma antiga sociedade secreta',35.50,200,2),(4,'Camiseta Casual','Camiseta de algodão com estampa minimalista',150.00,150,3),(5,'Cadeira de Escritório Ergonômica','Cadeira com suporte lombar ajustável',400.00,30,4),(6,'Halteres 10kg','Conjunto de halteres para treino em casa',120.00,75,5),(7,'Perfume Essência','Fragrância floral para uso diário',85.00,110,6),(8,'Blocos de Montar Grande','Conjunto de blocos coloridos para crianças',60.00,90,7),(9,'Kit de Chaves de Fenda','Kit com 10 chaves de fenda de diversos tamanhos',45.00,250,8),(10,'Café Gourmet 500g','Café 100% arábica com torra média',25.00,300,9),(11,'Mangueira de Jardim','Mangueira de 20 metros com bico ajustável',70.00,80,10),(12,'Ração Premium para Gatos','Ração balanceada para gatos adultos',40.00,120,11),(13,'Capa de Volante','Capa de couro para volante de carro',30.00,100,12),(14,'Teclado Musical','Teclado de 61 teclas com diversas funções',250.00,40,13),(15,'DVD Filme \"A Jornada\"','Filme de aventura em alta definição',20.00,150,14),(16,'Jogo de Tabuleiro \"Aventura na Ilha\"','Jogo de estratégia para 2-4 jogadores',90.00,60,15),(17,'Caneta Esferográfica','Caixa com 12 canetas azuis',15.00,500,16),(18,'Monitor LED 27 polegadas','Monitor Full HD com taxa de atualização de 144Hz',1200.00,25,19),(19,'Câmera DSLR','Câmera profissional com lente 18-55mm',2000.00,10,20),(20,'Liquidificador Classic','Liquidificador com copo de vidro resistente',145.80,70,21),(21,'Jogo de Lençol Casal','Jogo com 4 peças em 100% algodão',100.00,95,22),(22,'Colar de Prata','Colar com pingente de coração em prata 925',65.00,130,23),(23,'Mochila Urbana','Mochila com compartimento para notebook',150.00,80,24),(24,'Violão Acústico','Violão de cordas de aço para iniciantes',300.00,50,25),(25,'Flauta Doce','Flauta doce de resina para estudantes',25.00,200,26),(26,'Tênis de Corrida X','Tênis leve e confortável para corrida',180.00,70,27),(27,'Bicicleta Mountain Bike','Bicicleta com 21 marchas e suspensão dianteira',800.00,20,28),(28,'Whey Protein 900g','Suplemento de proteína concentrada',110.00,45,29),(29,'Jogo de RPG \"Reino de Eldoria\"','Livro base e cenário para RPG de mesa',120.00,35,30),(30,'Aspirador de Pó Robô','Aspirador de pó automático com mapeamento a laser',769.50,18,21);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
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
