-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gencripto
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `transacoes`
--

DROP TABLE IF EXISTS `transacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transacoes` (
  `id_transacao` int NOT NULL,
  `id_cliente` int DEFAULT NULL,
  `codigo_ativo` varchar(10) NOT NULL,
  `tipo_transacao` varchar(10) NOT NULL,
  `quantidade` decimal(18,4) NOT NULL,
  `preco_unitario` decimal(18,2) NOT NULL,
  `data_transacao` date NOT NULL,
  PRIMARY KEY (`id_transacao`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `transacoes_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transacoes`
--

LOCK TABLES `transacoes` WRITE;
/*!40000 ALTER TABLE `transacoes` DISABLE KEYS */;
INSERT INTO `transacoes` VALUES (1,1,'BTC-USD','COMPRA',0.0200,330000.00,'2025-01-15'),(2,1,'GOOGL','COMPRA',5.0000,820.00,'2025-01-20'),(3,1,'MSFT','COMPRA',5.0000,2100.00,'2025-02-10'),(4,2,'BTC-USD','COMPRA',0.0100,345000.00,'2025-02-18'),(5,1,'AMZN','COMPRA',4.0000,900.00,'2025-02-20'),(6,1,'BTC-USD','COMPRA',0.0300,346666.67,'2025-03-05'),(7,2,'MELI','COMPRA',1.0000,8800.00,'2025-03-12'),(8,1,'GOOGL','COMPRA',5.0000,880.00,'2025-03-15'),(9,3,'MSFT','COMPRA',2.0000,2150.00,'2025-03-20'),(10,1,'AMZN','COMPRA',4.0000,940.00,'2025-04-02'),(11,1,'MELI','COMPRA',3.0000,8900.00,'2025-04-10'),(12,3,'GOOGL','COMPRA',3.0000,860.00,'2025-04-15');
/*!40000 ALTER TABLE `transacoes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-25 16:07:50
