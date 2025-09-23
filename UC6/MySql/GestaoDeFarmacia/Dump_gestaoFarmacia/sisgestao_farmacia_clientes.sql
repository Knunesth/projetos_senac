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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `cpf` varchar(14) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `telefone` varchar(14) NOT NULL,
  PRIMARY KEY (`cpf`),
  UNIQUE KEY `telefone` (`telefone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES ('10101010101','Gustavo Alves','61900006666'),('11111111111','João Silva','61988880000'),('12121212121','Beatriz Costa','61988887777'),('13131313131','Felipe Santos','61977778888'),('14141414141','Mariana Rocha','61966669999'),('15151515151','Rodrigo Gomes','61955550000'),('16161616161','Patricia Ribeiro','61944441111'),('17171717171','Carlos Pinto','61933332222'),('18181818181','Vitoria Almeida','61922223333'),('19191919191','Daniela Dias','61911114444'),('20202020202','Ricardo Lopes','61900005555'),('21212121212','Bruna Moreira','61988886666'),('22222222222','Maria Oliveira','61999990000'),('22222262222','Eduardo Neves','61977777777'),('23232323232','Larissa Barbosa','61966668888'),('24242424242','Sergio Ferreira','61955559999'),('25252525252','Amanda Rodrigues','61944440000'),('33333333333','Pedro Santos','61977770000'),('44444444444','Ana Costa','61966660000'),('55555555555','Fernanda Lima','61955551111'),('66664666666','Ana Paula Santos','61900002222'),('66666666666','Lucas Fernandes','61944442222'),('67676767677','Fabio Rodrigues','61911113333'),('68686868688','Sandra Almeida','61922424444'),('69696969699','Rafael Lima','61933335555'),('70707070700','Juliana Castro','61944446666'),('71717171711','Marcos Ferreira','61955557777'),('72727272722','Larissa Gomes','61964668888'),('73737373733','André Souza','61977779999'),('74747474744','Patrícia Rocha','61948880000'),('75757575755','Carlos Oliveira','61999991111'),('76767676766','Beatriz Dias','61940002222'),('77747777777','Eduardo Martins','61911413333'),('77777777777','Gabriela Santos','61933333333'),('78787878788','Sofia Pereira','61924224444'),('79797979799','Vinicius Costa','61934335555'),('80808080800','Isabela Ribeiro','61974446666'),('81818181811','Gustavo Nunes','61954557777'),('82828282822','Fernanda Lopes','61966568888'),('83838383833','Tiago Carvalho','61947779999'),('84848484844','Mariana Santos','61988840000'),('85858585855','Leonardo Alves','61994991111'),('88888888888','Rafael Pereira','61922224444'),('99999999999','Carla Martins','61911115555');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
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
