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
INSERT INTO `agentes` VALUES (1,'Angente Pruebas 1','DIrector Prueba 1','111111111','jarman.corredor@linkdigital.co','jcortes@dayscript.com','2019-07-23 05:00:00','2019-07-23 05:00:00'),(2,'Agente Pruebas 2','Director Prueba 2','111111111','jarman.corredor@linkdigital.co','jcortes@dayscript.com','2019-07-23 05:00:00','2019-07-23 05:00:00'),(3,'Agente Pruebas 3','Director Prueba 3','111111111','jarman.corredor@linkdigital.co','jcortes@dayscript.com','2019-07-23 05:00:00','2019-07-23 05:00:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agentes_contactos`
--

LOCK TABLES `agentes_contactos` WRITE;
/*!40000 ALTER TABLE `agentes_contactos` DISABLE KEYS */;
INSERT INTO `agentes_contactos` VALUES (1,1,1,1,'2019-07-23 22:19:59','2019-07-23 22:19:59'),(2,1,1,2,'2019-07-23 22:22:32','2019-07-23 22:22:32'),(3,2,3,3,'2019-07-23 22:30:10','2019-07-23 22:30:10'),(4,3,3,4,'2019-07-23 22:30:37','2019-07-23 22:30:37'),(5,2,3,5,'2019-07-23 22:30:41','2019-07-23 22:30:41'),(6,3,3,6,'2019-07-23 22:30:45','2019-07-23 22:30:45'),(7,1,1,7,'2019-07-23 22:31:22','2019-07-23 22:31:22'),(8,2,1,8,'2019-07-23 22:31:38','2019-07-23 22:31:38'),(9,3,1,9,'2019-07-24 02:01:09','2019-07-24 02:01:09'),(10,1,1,10,'2019-07-24 02:09:22','2019-07-24 02:09:22'),(11,2,1,11,'2019-07-24 02:15:39','2019-07-24 02:15:39'),(12,3,1,12,'2019-07-24 02:16:26','2019-07-24 02:16:26'),(13,1,1,13,'2019-07-24 02:16:45','2019-07-24 02:16:45'),(14,2,1,14,'2019-07-24 02:17:02','2019-07-24 02:17:02'),(15,3,1,15,'2019-07-24 02:17:22','2019-07-24 02:17:22'),(16,1,1,16,'2019-07-24 02:24:05','2019-07-24 02:24:05'),(17,2,1,17,'2019-07-24 02:30:51','2019-07-24 02:30:51'),(18,3,1,18,'2019-07-24 02:30:57','2019-07-24 02:30:57'),(19,1,1,19,'2019-07-24 03:03:40','2019-07-24 03:03:40'),(20,2,1,20,'2019-07-24 18:31:22','2019-07-24 18:31:22'),(21,3,1,21,'2019-07-24 18:44:02','2019-07-24 18:44:02'),(22,1,1,22,'2019-07-24 19:05:26','2019-07-24 19:05:26'),(23,2,1,23,'2019-07-24 19:05:48','2019-07-24 19:05:48'),(24,3,1,24,'2019-07-24 19:08:49','2019-07-24 19:08:49'),(25,1,1,25,'2019-07-24 19:09:26','2019-07-24 19:09:26'),(26,2,1,26,'2019-07-24 19:09:44','2019-07-24 19:09:44'),(27,3,1,27,'2019-07-24 19:10:09','2019-07-24 19:10:09'),(28,1,1,28,'2019-07-24 19:11:19','2019-07-24 19:11:19'),(29,2,1,29,'2019-07-24 19:11:30','2019-07-24 19:11:30'),(30,3,1,30,'2019-07-24 19:11:51','2019-07-24 19:11:51'),(31,1,1,31,'2019-07-24 19:12:11','2019-07-24 19:12:11'),(32,2,1,32,'2019-07-24 19:16:07','2019-07-24 19:16:07'),(33,3,1,33,'2019-07-24 19:18:40','2019-07-24 19:18:40'),(34,1,1,34,'2019-07-24 19:20:46','2019-07-24 19:20:46'),(35,2,1,35,'2019-07-24 19:26:14','2019-07-24 19:26:14'),(36,3,1,36,'2019-07-24 19:33:36','2019-07-24 19:33:36'),(37,1,1,37,'2019-07-24 19:34:02','2019-07-24 19:34:02'),(38,2,1,38,'2019-07-24 19:34:32','2019-07-24 19:34:32'),(39,3,1,39,'2019-07-24 19:35:22','2019-07-24 19:35:22'),(40,1,1,40,'2019-07-24 19:35:42','2019-07-24 19:35:42'),(41,2,1,41,'2019-07-24 19:36:45','2019-07-24 19:36:45'),(42,3,1,42,'2019-07-24 19:37:04','2019-07-24 19:37:04'),(43,1,1,43,'2019-07-24 19:37:45','2019-07-24 19:37:45'),(44,2,1,44,'2019-07-24 19:38:26','2019-07-24 19:38:26'),(45,3,1,45,'2019-07-24 19:39:58','2019-07-24 19:39:58'),(46,1,1,46,'2019-07-24 19:41:05','2019-07-24 19:41:05'),(47,2,1,47,'2019-07-24 19:41:16','2019-07-24 19:41:16'),(48,3,1,48,'2019-07-24 19:43:01','2019-07-24 19:43:01'),(49,1,1,49,'2019-07-24 19:47:50','2019-07-24 19:47:50'),(50,2,1,50,'2019-07-24 19:48:29','2019-07-24 19:48:29'),(51,3,1,51,'2019-07-24 19:48:43','2019-07-24 19:48:43'),(52,1,1,52,'2019-07-24 19:49:27','2019-07-24 19:49:27'),(53,2,1,53,'2019-07-24 19:50:02','2019-07-24 19:50:02'),(54,3,1,54,'2019-07-24 19:50:13','2019-07-24 19:50:13'),(55,1,1,55,'2019-07-24 19:50:24','2019-07-24 19:50:24'),(56,2,1,56,'2019-07-24 19:52:46','2019-07-24 19:52:46'),(57,3,1,57,'2019-07-24 19:52:58','2019-07-24 19:52:58'),(58,1,1,58,'2019-07-24 19:56:16','2019-07-24 19:56:16'),(59,2,1,59,'2019-07-24 19:57:44','2019-07-24 19:57:44'),(60,3,1,60,'2019-07-24 20:15:44','2019-07-24 20:15:44'),(61,1,1,61,'2019-07-24 20:21:43','2019-07-24 20:21:43'),(62,2,1,62,'2019-07-24 20:23:39','2019-07-24 20:23:39'),(63,3,1,63,'2019-07-24 20:30:02','2019-07-24 20:30:02'),(64,1,1,64,'2019-07-24 20:31:04','2019-07-24 20:31:04'),(65,2,1,65,'2019-07-24 20:32:11','2019-07-24 20:32:11'),(66,3,1,66,'2019-07-24 20:33:05','2019-07-24 20:33:05'),(67,1,1,67,'2019-07-24 20:33:35','2019-07-24 20:33:35'),(68,2,1,68,'2019-07-24 20:34:09','2019-07-24 20:34:09'),(69,3,1,69,'2019-07-24 20:34:40','2019-07-24 20:34:40'),(70,1,1,70,'2019-07-24 20:35:55','2019-07-24 20:35:55'),(71,2,1,71,'2019-07-24 20:37:51','2019-07-24 20:37:51'),(72,3,1,72,'2019-07-24 20:39:19','2019-07-24 20:39:19'),(73,1,1,73,'2019-07-24 20:40:17','2019-07-24 20:40:17'),(74,2,1,74,'2019-07-24 20:41:49','2019-07-24 20:41:49'),(75,3,1,75,'2019-07-24 20:43:41','2019-07-24 20:43:41'),(76,1,1,76,'2019-07-24 20:45:50','2019-07-24 20:45:50'),(77,2,1,77,'2019-07-24 20:55:18','2019-07-24 20:55:18'),(78,3,1,78,'2019-07-24 20:55:34','2019-07-24 20:55:34'),(79,1,1,79,'2019-07-24 21:06:52','2019-07-24 21:06:52'),(80,2,1,80,'2019-07-24 21:11:31','2019-07-24 21:11:31'),(81,3,1,81,'2019-07-24 21:13:35','2019-07-24 21:13:35'),(82,1,1,82,'2019-07-24 21:18:14','2019-07-24 21:18:14'),(83,2,1,83,'2019-07-24 21:47:24','2019-07-24 21:47:24'),(84,3,1,84,'2019-07-24 21:49:28','2019-07-24 21:49:28');
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
INSERT INTO `contactos` VALUES (1,'abcd1234','123456789','Contacto','Pruebas','123456789','joco1204@gmail.com','2019-07-23 05:00:00','2019-07-23 05:00:00'),(2,'a1b2c3d4','987654321','Pruebas','Contacto','987654321','joco1204@gmail.com','2019-07-23 05:00:00','2019-07-23 05:00:00'),(3,'1a2b3c4d','111111111','Cliente','Pruebas','111111111','joco1204@gmail.com','2019-07-23 05:00:00','2019-07-23 05:00:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suscripcions`
--

LOCK TABLES `suscripcions` WRITE;
/*!40000 ALTER TABLE `suscripcions` DISABLE KEYS */;
INSERT INTO `suscripcions` VALUES (1,1,1,0,0,0,'2019-07-23 22:19:59','2019-07-23 22:19:59'),(2,1,0,0,0,1,'2019-07-23 22:22:32','2019-07-23 22:22:32'),(3,3,0,0,0,1,'2019-07-23 22:30:10','2019-07-23 22:30:10'),(4,3,0,0,1,0,'2019-07-23 22:30:37','2019-07-23 22:30:37'),(5,3,1,0,0,0,'2019-07-23 22:30:41','2019-07-23 22:30:41'),(6,3,0,0,0,1,'2019-07-23 22:30:45','2019-07-23 22:30:45'),(7,1,0,1,0,0,'2019-07-23 22:31:22','2019-07-23 22:31:22'),(8,1,0,0,1,0,'2019-07-23 22:31:38','2019-07-23 22:31:38'),(9,1,0,0,0,1,'2019-07-24 02:01:09','2019-07-24 02:01:09'),(10,1,0,0,0,1,'2019-07-24 02:09:22','2019-07-24 02:09:22'),(11,1,0,0,0,1,'2019-07-24 02:15:39','2019-07-24 02:15:39'),(12,1,0,1,0,0,'2019-07-24 02:16:26','2019-07-24 02:16:26'),(13,1,0,0,0,1,'2019-07-24 02:16:45','2019-07-24 02:16:45'),(14,1,0,0,1,0,'2019-07-24 02:17:02','2019-07-24 02:17:02'),(15,1,0,0,0,1,'2019-07-24 02:17:22','2019-07-24 02:17:22'),(16,1,0,1,0,0,'2019-07-24 02:24:05','2019-07-24 02:24:05'),(17,1,0,1,0,0,'2019-07-24 02:30:51','2019-07-24 02:30:51'),(18,1,0,0,1,0,'2019-07-24 02:30:57','2019-07-24 02:30:57'),(19,1,0,0,0,1,'2019-07-24 03:03:40','2019-07-24 03:03:40'),(20,1,0,0,0,1,'2019-07-24 18:31:22','2019-07-24 18:31:22'),(21,1,0,0,1,0,'2019-07-24 18:44:02','2019-07-24 18:44:02'),(22,1,0,0,0,1,'2019-07-24 19:05:26','2019-07-24 19:05:26'),(23,1,0,1,0,0,'2019-07-24 19:05:48','2019-07-24 19:05:48'),(24,1,0,0,1,0,'2019-07-24 19:08:49','2019-07-24 19:08:49'),(25,1,0,0,1,0,'2019-07-24 19:09:26','2019-07-24 19:09:26'),(26,1,1,0,0,0,'2019-07-24 19:09:44','2019-07-24 19:09:44'),(27,1,1,0,0,0,'2019-07-24 19:10:09','2019-07-24 19:10:09'),(28,1,0,1,0,0,'2019-07-24 19:11:19','2019-07-24 19:11:19'),(29,1,0,1,0,0,'2019-07-24 19:11:30','2019-07-24 19:11:30'),(30,1,0,1,0,0,'2019-07-24 19:11:51','2019-07-24 19:11:51'),(31,1,0,1,0,0,'2019-07-24 19:12:11','2019-07-24 19:12:11'),(32,1,0,1,0,0,'2019-07-24 19:16:07','2019-07-24 19:16:07'),(33,1,0,0,0,1,'2019-07-24 19:18:40','2019-07-24 19:18:40'),(34,1,0,1,0,0,'2019-07-24 19:20:46','2019-07-24 19:20:46'),(35,1,0,1,0,0,'2019-07-24 19:26:14','2019-07-24 19:26:14'),(36,1,0,1,0,0,'2019-07-24 19:33:36','2019-07-24 19:33:36'),(37,1,0,1,0,0,'2019-07-24 19:34:01','2019-07-24 19:34:01'),(38,1,0,1,0,0,'2019-07-24 19:34:32','2019-07-24 19:34:32'),(39,1,0,1,0,0,'2019-07-24 19:35:22','2019-07-24 19:35:22'),(40,1,0,1,0,0,'2019-07-24 19:35:42','2019-07-24 19:35:42'),(41,1,0,1,0,0,'2019-07-24 19:36:45','2019-07-24 19:36:45'),(42,1,0,1,0,0,'2019-07-24 19:37:04','2019-07-24 19:37:04'),(43,1,1,0,0,0,'2019-07-24 19:37:45','2019-07-24 19:37:45'),(44,1,1,0,0,0,'2019-07-24 19:38:26','2019-07-24 19:38:26'),(45,1,0,0,0,1,'2019-07-24 19:39:58','2019-07-24 19:39:58'),(46,1,1,0,0,0,'2019-07-24 19:41:05','2019-07-24 19:41:05'),(47,1,0,1,0,0,'2019-07-24 19:41:16','2019-07-24 19:41:16'),(48,1,1,0,0,0,'2019-07-24 19:43:01','2019-07-24 19:43:01'),(49,1,1,0,0,0,'2019-07-24 19:47:50','2019-07-24 19:47:50'),(50,1,1,0,0,0,'2019-07-24 19:48:29','2019-07-24 19:48:29'),(51,1,1,0,0,0,'2019-07-24 19:48:43','2019-07-24 19:48:43'),(52,1,1,0,0,0,'2019-07-24 19:49:27','2019-07-24 19:49:27'),(53,1,1,0,0,0,'2019-07-24 19:50:02','2019-07-24 19:50:02'),(54,1,1,0,0,0,'2019-07-24 19:50:13','2019-07-24 19:50:13'),(55,1,1,0,0,0,'2019-07-24 19:50:24','2019-07-24 19:50:24'),(56,1,1,0,0,0,'2019-07-24 19:52:46','2019-07-24 19:52:46'),(57,1,1,0,0,0,'2019-07-24 19:52:58','2019-07-24 19:52:58'),(58,1,0,0,0,1,'2019-07-24 19:56:16','2019-07-24 19:56:16'),(59,1,0,0,0,1,'2019-07-24 19:57:44','2019-07-24 19:57:44'),(60,1,1,0,0,0,'2019-07-24 20:15:44','2019-07-24 20:15:44'),(61,1,0,1,0,0,'2019-07-24 20:21:43','2019-07-24 20:21:43'),(62,1,1,0,0,0,'2019-07-24 20:23:39','2019-07-24 20:23:39'),(63,1,1,0,0,0,'2019-07-24 20:30:02','2019-07-24 20:30:02'),(64,1,1,0,0,0,'2019-07-24 20:31:04','2019-07-24 20:31:04'),(65,1,1,0,0,0,'2019-07-24 20:32:11','2019-07-24 20:32:11'),(66,1,1,0,0,0,'2019-07-24 20:33:05','2019-07-24 20:33:05'),(67,1,1,0,0,0,'2019-07-24 20:33:35','2019-07-24 20:33:35'),(68,1,1,0,0,0,'2019-07-24 20:34:09','2019-07-24 20:34:09'),(69,1,1,0,0,0,'2019-07-24 20:34:40','2019-07-24 20:34:40'),(70,1,1,0,0,0,'2019-07-24 20:35:55','2019-07-24 20:35:55'),(71,1,1,0,0,0,'2019-07-24 20:37:51','2019-07-24 20:37:51'),(72,1,1,0,0,0,'2019-07-24 20:39:19','2019-07-24 20:39:19'),(73,1,1,0,0,0,'2019-07-24 20:40:17','2019-07-24 20:40:17'),(74,1,1,0,0,0,'2019-07-24 20:41:49','2019-07-24 20:41:49'),(75,1,0,0,0,1,'2019-07-24 20:43:41','2019-07-24 20:43:41'),(76,1,0,0,0,1,'2019-07-24 20:45:50','2019-07-24 20:45:50'),(77,1,0,1,0,0,'2019-07-24 20:55:18','2019-07-24 20:55:18'),(78,1,0,0,0,1,'2019-07-24 20:55:34','2019-07-24 20:55:34'),(79,1,1,0,0,0,'2019-07-24 21:06:52','2019-07-24 21:06:52'),(80,1,0,0,0,1,'2019-07-24 21:11:31','2019-07-24 21:11:31'),(81,1,0,1,0,0,'2019-07-24 21:13:35','2019-07-24 21:13:35'),(82,1,0,0,1,0,'2019-07-24 21:18:14','2019-07-24 21:18:14'),(83,1,0,1,0,0,'2019-07-24 21:47:23','2019-07-24 21:47:23'),(84,1,0,0,0,1,'2019-07-24 21:49:28','2019-07-24 21:49:28');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Johan Cortes','jcortes@dayscript.com',NULL,'$2y$10$Lt1hPDs1P23FynxeFQ4FDulx/xERqwu.QUOwQ/bXuDLWtrtLC7IHm',NULL,'2019-07-24 21:52:17','2019-07-24 21:52:17');
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

-- Dump completed on 2019-07-24 13:50:01
