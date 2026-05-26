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
-- Temporary view structure for view `vw_resumo`
--

DROP TABLE IF EXISTS `vw_resumo`;
/*!50001 DROP VIEW IF EXISTS `vw_resumo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_resumo` AS SELECT 
 1 AS `id_transacao`,
 1 AS `id_cliente`,
 1 AS `codigo_ativo`,
 1 AS `tipo_transacao`,
 1 AS `quantidade`,
 1 AS `preco_unitario`,
 1 AS `data_transacao`,
 1 AS `nome`,
 1 AS `email`,
 1 AS `data_cadastro`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_carteira_clientes`
--

DROP TABLE IF EXISTS `vw_carteira_clientes`;
/*!50001 DROP VIEW IF EXISTS `vw_carteira_clientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_carteira_clientes` AS SELECT 
 1 AS `id_cliente`,
 1 AS `nome_cliente`,
 1 AS `codigo_ativo`,
 1 AS `quantidade_total`,
 1 AS `preco_medio_compra`,
 1 AS `total_investido`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_carteira_cliente`
--

DROP TABLE IF EXISTS `vw_carteira_cliente`;
/*!50001 DROP VIEW IF EXISTS `vw_carteira_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_carteira_cliente` AS SELECT 
 1 AS `nome do cliente`,
 1 AS `código do ativo`,
 1 AS `quantidade acumulada`,
 1 AS `preço médio pago`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_resumo`
--

/*!50001 DROP VIEW IF EXISTS `vw_resumo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`LuizChiavini`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_resumo` AS select `t`.`id_transacao` AS `id_transacao`,`t`.`id_cliente` AS `id_cliente`,`t`.`codigo_ativo` AS `codigo_ativo`,`t`.`tipo_transacao` AS `tipo_transacao`,`t`.`quantidade` AS `quantidade`,`t`.`preco_unitario` AS `preco_unitario`,`t`.`data_transacao` AS `data_transacao`,`c`.`nome` AS `nome`,`c`.`email` AS `email`,`c`.`data_cadastro` AS `data_cadastro` from (`transacoes` `t` join `clientes` `c` on((`t`.`id_cliente` = `c`.`id_cliente`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_carteira_clientes`
--

/*!50001 DROP VIEW IF EXISTS `vw_carteira_clientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`LuizChiavini`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_carteira_clientes` AS select `c`.`id_cliente` AS `id_cliente`,`c`.`nome` AS `nome_cliente`,`t`.`codigo_ativo` AS `codigo_ativo`,sum(`t`.`quantidade`) AS `quantidade_total`,round((sum((`t`.`quantidade` * `t`.`preco_unitario`)) / sum(`t`.`quantidade`)),2) AS `preco_medio_compra`,sum((`t`.`quantidade` * `t`.`preco_unitario`)) AS `total_investido` from (`transacoes` `t` join `clientes` `c` on((`t`.`id_cliente` = `c`.`id_cliente`))) where (`t`.`tipo_transacao` = 'COMPRA') group by `c`.`id_cliente`,`c`.`nome`,`t`.`codigo_ativo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_carteira_cliente`
--

/*!50001 DROP VIEW IF EXISTS `vw_carteira_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`LuizChiavini`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_carteira_cliente` AS select `c`.`nome` AS `nome do cliente`,`t`.`codigo_ativo` AS `código do ativo`,sum(`t`.`quantidade`) AS `quantidade acumulada`,avg(`t`.`preco_unitario`) AS `preço médio pago` from (`transacoes` `t` join `clientes` `c` on((`t`.`id_cliente` = `c`.`id_cliente`))) where (`t`.`tipo_transacao` = 'COMPRA') group by `c`.`nome`,`t`.`codigo_ativo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-25 16:07:53
