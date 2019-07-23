-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: cross_selling_15k
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `agentes`
--

DROP TABLE IF EXISTS `agentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agentes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_agencia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `director` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular_director` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo_director` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo_agente` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agentes`
--

LOCK TABLES `agentes` WRITE;
/*!40000 ALTER TABLE `agentes` DISABLE KEYS */;
INSERT INTO `agentes` VALUES (1,'Angente Pruebas 1','DIrector Prueba','111111111','jcortes@dayscript.com','jcortes@dayscript.com','2019-07-23 05:00:00','2019-07-23 05:00:00'),(2,'Agente Pruebas 2','Director Prueba','111111111','jcortes@dayscript.com','jcortes@dayscript.com','2019-07-23 05:00:00','2019-07-23 05:00:00'),(3,'Agente Pruebas 3','Director Prueba','111111111','jcortes@dayscript.com','jcortes@dayscript.com','2019-07-23 05:00:00','2019-07-23 05:00:00');
/*!40000 ALTER TABLE `agentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agentes_contactos`
--

DROP TABLE IF EXISTS `agentes_contactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agentes_contactos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_agente` bigint(20) unsigned NOT NULL,
  `id_contacto` bigint(20) unsigned NOT NULL,
  `id_suscripcion` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agentes_contactos`
--

LOCK TABLES `agentes_contactos` WRITE;
/*!40000 ALTER TABLE `agentes_contactos` DISABLE KEYS */;
INSERT INTO `agentes_contactos` VALUES (1,1,1,1,'2019-07-23 22:19:59','2019-07-23 22:19:59'),(2,1,1,2,'2019-07-23 22:22:32','2019-07-23 22:22:32'),(3,2,3,3,'2019-07-23 22:30:10','2019-07-23 22:30:10'),(4,3,3,4,'2019-07-23 22:30:37','2019-07-23 22:30:37'),(5,2,3,5,'2019-07-23 22:30:41','2019-07-23 22:30:41'),(6,3,3,6,'2019-07-23 22:30:45','2019-07-23 22:30:45'),(7,1,1,7,'2019-07-23 22:31:22','2019-07-23 22:31:22'),(8,2,1,8,'2019-07-23 22:31:38','2019-07-23 22:31:38'),(9,3,1,9,'2019-07-24 02:01:09','2019-07-24 02:01:09'),(10,1,1,10,'2019-07-24 02:09:22','2019-07-24 02:09:22'),(11,2,1,11,'2019-07-24 02:15:39','2019-07-24 02:15:39'),(12,3,1,12,'2019-07-24 02:16:26','2019-07-24 02:16:26'),(13,1,1,13,'2019-07-24 02:16:45','2019-07-24 02:16:45'),(14,2,1,14,'2019-07-24 02:17:02','2019-07-24 02:17:02'),(15,3,1,15,'2019-07-24 02:17:22','2019-07-24 02:17:22'),(16,1,1,16,'2019-07-24 02:24:05','2019-07-24 02:24:05'),(17,2,1,17,'2019-07-24 02:30:51','2019-07-24 02:30:51'),(18,3,1,18,'2019-07-24 02:30:57','2019-07-24 02:30:57');
/*!40000 ALTER TABLE `agentes_contactos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `asignacion_agentes`
--

DROP TABLE IF EXISTS `asignacion_agentes`;
/*!50001 DROP VIEW IF EXISTS `asignacion_agentes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `asignacion_agentes` AS SELECT 
 1 AS `id_agente`,
 1 AS `numero`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `contactos`
--

DROP TABLE IF EXISTS `contactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `keyid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero_documento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombres` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactos`
--

LOCK TABLES `contactos` WRITE;
/*!40000 ALTER TABLE `contactos` DISABLE KEYS */;
INSERT INTO `contactos` VALUES (1,'abcd1234','123456789','Contacto','Pruebas','123456789','jcortes@dayscript.com','2019-07-23 05:00:00','2019-07-23 05:00:00'),(2,'a1b2c3d4','987654321','Pruebas','Contacto','987654321','jcortes@dayscript.com','2019-07-23 05:00:00','2019-07-23 05:00:00'),(3,'1a2b3c4d','111111111','Cliente','Pruebas','111111111','jcortes@dayscript.com','2019-07-23 05:00:00','2019-07-23 05:00:00');
/*!40000 ALTER TABLE `contactos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_07_19_150925_create_contactos_table',1),(4,'2019_07_19_151726_create_suscripcions_table',1),(5,'2019_07_19_152905_create_agentes_table',1),(6,'2019_07_19_153231_create_agentes_contactos_table',1),(7,'2019_07_23_161912_create_asignacion_agentes',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suscripcions`
--

DROP TABLE IF EXISTS `suscripcions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suscripcions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_contactos` int(11) NOT NULL,
  `salud` int(11) NOT NULL,
  `vida` int(11) NOT NULL,
  `hogar` int(11) NOT NULL,
  `auto` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suscripcions`
--

LOCK TABLES `suscripcions` WRITE;
/*!40000 ALTER TABLE `suscripcions` DISABLE KEYS */;
INSERT INTO `suscripcions` VALUES (1,1,1,0,0,0,'2019-07-23 22:19:59','2019-07-23 22:19:59'),(2,1,0,0,0,1,'2019-07-23 22:22:32','2019-07-23 22:22:32'),(3,3,0,0,0,1,'2019-07-23 22:30:10','2019-07-23 22:30:10'),(4,3,0,0,1,0,'2019-07-23 22:30:37','2019-07-23 22:30:37'),(5,3,1,0,0,0,'2019-07-23 22:30:41','2019-07-23 22:30:41'),(6,3,0,0,0,1,'2019-07-23 22:30:45','2019-07-23 22:30:45'),(7,1,0,1,0,0,'2019-07-23 22:31:22','2019-07-23 22:31:22'),(8,1,0,0,1,0,'2019-07-23 22:31:38','2019-07-23 22:31:38'),(9,1,0,0,0,1,'2019-07-24 02:01:09','2019-07-24 02:01:09'),(10,1,0,0,0,1,'2019-07-24 02:09:22','2019-07-24 02:09:22'),(11,1,0,0,0,1,'2019-07-24 02:15:39','2019-07-24 02:15:39'),(12,1,0,1,0,0,'2019-07-24 02:16:26','2019-07-24 02:16:26'),(13,1,0,0,0,1,'2019-07-24 02:16:45','2019-07-24 02:16:45'),(14,1,0,0,1,0,'2019-07-24 02:17:02','2019-07-24 02:17:02'),(15,1,0,0,0,1,'2019-07-24 02:17:22','2019-07-24 02:17:22'),(16,1,0,1,0,0,'2019-07-24 02:24:05','2019-07-24 02:24:05'),(17,1,0,1,0,0,'2019-07-24 02:30:51','2019-07-24 02:30:51'),(18,1,0,0,1,0,'2019-07-24 02:30:57','2019-07-24 02:30:57');
/*!40000 ALTER TABLE `suscripcions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `asignacion_agentes`
--

/*!50001 DROP VIEW IF EXISTS `asignacion_agentes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `asignacion_agentes` AS select `a`.`id` AS `id_agente`,count(`b`.`id`) AS `numero` from (`agentes` `a` left join `agentes_contactos` `b` on((`a`.`id` = `b`.`id_agente`))) group by `a`.`id` */;
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

-- Dump completed on 2019-07-23 16:51:00
