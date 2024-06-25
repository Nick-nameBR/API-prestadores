-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: prestadores_db
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2024_06_21_151514_create_prestadores_table',1),(5,'2024_06_21_153027_create_servicos_table',1),(6,'2024_06_21_153052_create_servico_prestador_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestadores`
--

DROP TABLE IF EXISTS `prestadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestadores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logradouro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bairro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` decimal(10,7) NOT NULL,
  `longitude` decimal(10,7) NOT NULL,
  `cidade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UF` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `situacao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestadores`
--

LOCK TABLES `prestadores` WRITE;
/*!40000 ALTER TABLE `prestadores` DISABLE KEYS */;
INSERT INTO `prestadores` VALUES (1,'Westley Lehner','Maxie Garden','stad','864',-69.6743110,-103.4362220,'East Cornelius','ID','online','2024-06-21 18:56:30','2024-06-21 18:56:30'),(2,'Prof. Eli Heaney III','Williamson Camp','stad','52493',-83.9574410,-146.4128720,'Ziemeland','AZ','offline','2024-06-21 18:56:30','2024-06-21 18:56:30'),(3,'Elmore Klein','Gisselle Knoll','ville','94866',-30.7811280,169.5307280,'Lehnerland','NY','online','2024-06-21 18:56:30','2024-06-21 18:56:30'),(4,'Orlando Baumbach','Adolphus Stravenue','stad','9143',75.3746380,36.1848670,'Kerlukeland','ID','offline','2024-06-21 18:56:30','2024-06-21 18:56:30'),(5,'Miss Kelly Crist','Borer Point','side','785',24.1674130,-150.1086370,'Port Ezrafort','PA','offline','2024-06-21 18:56:30','2024-06-21 18:56:30'),(6,'Albert Lockman','Skye Mill','shire','2313',-59.6733380,127.6809180,'North Lisette','IL','offline','2024-06-21 18:56:30','2024-06-21 18:56:30'),(7,'Dr. Colt Wunsch','Wisozk Creek','port','8093',19.1313270,-45.1744250,'North Kolby','MN','online','2024-06-21 18:56:30','2024-06-21 18:56:30'),(8,'Ms. Leanne Goyette','Leuschke Prairie','view','8202',-54.9542670,-143.1683510,'Berniecefort','CT','online','2024-06-21 18:56:30','2024-06-21 18:56:30'),(9,'Cheyenne Ruecker','Ebba Knoll','side','53817',-54.0801720,116.1535760,'New Biankaside','KY','offline','2024-06-21 18:56:30','2024-06-21 18:56:30'),(10,'Dr. Mozelle Runolfsdottir','Kaia Plain','shire','611',77.5230570,34.3277220,'North Nedborough','KS','online','2024-06-21 18:56:30','2024-06-21 18:56:30'),(11,'Deion Douglas','Micheal Ways','stad','9518',17.8936870,-155.8085390,'Reingermouth','TX','offline','2024-06-21 18:56:30','2024-06-21 18:56:30'),(12,'Zackary Gutkowski III','Cheyenne Ridge','shire','650',2.3841300,-92.5933170,'Lake Carlie','VA','online','2024-06-21 18:56:30','2024-06-21 18:56:30'),(13,'Prof. Jamel Howe','Greenholt Lodge','furt','87036',55.3936600,167.1132750,'Wisozkstad','RI','offline','2024-06-21 18:56:30','2024-06-21 18:56:30'),(14,'May Farrell','Niko Drives','view','32329',5.6002640,146.5224090,'North Mackenziestad','MS','online','2024-06-21 18:56:30','2024-06-21 18:56:30'),(15,'Ezequiel Bauch','Douglas Harbor','land','30797',-73.2918340,29.0052340,'Jakaylafurt','LA','offline','2024-06-21 18:56:30','2024-06-21 18:56:30'),(16,'Dr. Lamar Streich V','Missouri Land','ville','6833',-63.4066060,61.2385930,'Weimannchester','PA','online','2024-06-21 18:56:30','2024-06-21 18:56:30'),(17,'Mr. Alex Barrows','Kunde Greens','borough','858',14.7315740,100.2428990,'Brownstad','KS','online','2024-06-21 18:56:30','2024-06-21 18:56:30'),(18,'Dr. Alda Mraz DDS','Lind Lakes','bury','18668',-79.8807700,27.4501260,'East Juvenalchester','IL','offline','2024-06-21 18:56:30','2024-06-21 18:56:30'),(19,'Augustine Rogahn','Jaskolski Island','bury','17676',-51.1759730,64.0670550,'North Sheilamouth','WI','offline','2024-06-21 18:56:30','2024-06-21 18:56:30'),(20,'Crystel Bartell','Keebler Ports','stad','239',-79.0925120,-142.1032300,'New Marques','AK','offline','2024-06-21 18:56:30','2024-06-21 18:56:30'),(21,'Mrs. Reta Bayer MD','Ford Meadow','fort','576',-39.0071420,-123.9121520,'Lake Joseph','TX','offline','2024-06-21 18:56:30','2024-06-21 18:56:30'),(22,'Miss Abigail Hoppe MD','Bins Ridges','mouth','4462',73.7134320,-98.2522780,'New Eulaside','TX','offline','2024-06-21 18:56:30','2024-06-21 18:56:30'),(23,'Clifford Frami','Muriel Ports','ville','2683',-76.1083010,-40.8784580,'South Jovan','WY','offline','2024-06-21 18:56:30','2024-06-21 18:56:30'),(24,'Prof. Kyleigh Greenfelder','Kayli Ranch','haven','333',-85.9776570,-75.0724610,'West Marianneview','CO','offline','2024-06-21 18:56:30','2024-06-21 18:56:30'),(25,'Darrick Tremblay IV','Audrey Fords','side','5952',14.3927030,167.4709850,'Chanelhaven','IL','offline','2024-06-21 18:56:30','2024-06-21 18:56:30');
/*!40000 ALTER TABLE `prestadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servico_prestador`
--

DROP TABLE IF EXISTS `servico_prestador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servico_prestador` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `prestador_id` bigint unsigned NOT NULL,
  `servico_id` bigint unsigned NOT NULL,
  `km_saida` decimal(8,2) NOT NULL,
  `valor_saida` decimal(8,2) NOT NULL,
  `valor_por_km_excedente` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `servico_prestador_prestador_id_foreign` (`prestador_id`),
  KEY `servico_prestador_servico_id_foreign` (`servico_id`),
  CONSTRAINT `servico_prestador_prestador_id_foreign` FOREIGN KEY (`prestador_id`) REFERENCES `prestadores` (`id`),
  CONSTRAINT `servico_prestador_servico_id_foreign` FOREIGN KEY (`servico_id`) REFERENCES `servicos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servico_prestador`
--

LOCK TABLES `servico_prestador` WRITE;
/*!40000 ALTER TABLE `servico_prestador` DISABLE KEYS */;
INSERT INTO `servico_prestador` VALUES (1,1,10,21.00,73.00,14.00,NULL,NULL),(2,1,1,21.00,73.00,14.00,NULL,NULL),(3,1,2,21.00,73.00,14.00,NULL,NULL),(4,2,8,9.00,140.00,6.00,NULL,NULL),(5,2,3,9.00,140.00,6.00,NULL,NULL),(6,2,6,9.00,140.00,6.00,NULL,NULL),(7,3,6,23.00,96.00,15.00,NULL,NULL),(8,3,2,23.00,96.00,15.00,NULL,NULL),(9,3,8,23.00,96.00,15.00,NULL,NULL),(10,4,6,40.00,75.00,5.00,NULL,NULL),(11,4,9,40.00,75.00,5.00,NULL,NULL),(12,4,8,40.00,75.00,5.00,NULL,NULL),(13,5,6,18.00,132.00,7.00,NULL,NULL),(14,5,10,18.00,132.00,7.00,NULL,NULL),(15,5,3,18.00,132.00,7.00,NULL,NULL),(16,6,5,47.00,92.00,13.00,NULL,NULL),(17,6,8,47.00,92.00,13.00,NULL,NULL),(18,6,9,47.00,92.00,13.00,NULL,NULL),(19,7,4,19.00,108.00,6.00,NULL,NULL),(20,7,5,19.00,108.00,6.00,NULL,NULL),(21,7,7,19.00,108.00,6.00,NULL,NULL),(22,8,6,23.00,150.00,20.00,NULL,NULL),(23,8,2,23.00,150.00,20.00,NULL,NULL),(24,8,5,23.00,150.00,20.00,NULL,NULL),(25,9,4,37.00,139.00,5.00,NULL,NULL),(26,9,1,37.00,139.00,5.00,NULL,NULL),(27,9,2,37.00,139.00,5.00,NULL,NULL),(28,10,2,12.00,91.00,20.00,NULL,NULL),(29,10,8,12.00,91.00,20.00,NULL,NULL),(30,10,6,12.00,91.00,20.00,NULL,NULL),(31,11,6,50.00,66.00,16.00,NULL,NULL),(32,11,5,50.00,66.00,16.00,NULL,NULL),(33,11,7,50.00,66.00,16.00,NULL,NULL),(34,12,5,12.00,194.00,13.00,NULL,NULL),(35,12,9,12.00,194.00,13.00,NULL,NULL),(36,12,7,12.00,194.00,13.00,NULL,NULL),(37,13,8,19.00,86.00,16.00,NULL,NULL),(38,13,10,19.00,86.00,16.00,NULL,NULL),(39,13,3,19.00,86.00,16.00,NULL,NULL),(40,14,10,42.00,99.00,19.00,NULL,NULL),(41,14,2,42.00,99.00,19.00,NULL,NULL),(42,14,1,42.00,99.00,19.00,NULL,NULL),(43,15,9,1.00,158.00,12.00,NULL,NULL),(44,15,8,1.00,158.00,12.00,NULL,NULL),(45,15,7,1.00,158.00,12.00,NULL,NULL),(46,16,10,31.00,67.00,14.00,NULL,NULL),(47,16,9,31.00,67.00,14.00,NULL,NULL),(48,16,8,31.00,67.00,14.00,NULL,NULL),(49,17,4,31.00,200.00,10.00,NULL,NULL),(50,17,7,31.00,200.00,10.00,NULL,NULL),(51,17,10,31.00,200.00,10.00,NULL,NULL),(52,18,8,43.00,110.00,15.00,NULL,NULL),(53,18,4,43.00,110.00,15.00,NULL,NULL),(54,18,7,43.00,110.00,15.00,NULL,NULL),(55,19,4,18.00,171.00,19.00,NULL,NULL),(56,19,6,18.00,171.00,19.00,NULL,NULL),(57,19,7,18.00,171.00,19.00,NULL,NULL),(58,20,2,9.00,86.00,19.00,NULL,NULL),(59,20,8,9.00,86.00,19.00,NULL,NULL),(60,20,10,9.00,86.00,19.00,NULL,NULL),(61,21,7,32.00,145.00,12.00,NULL,NULL),(62,21,1,32.00,145.00,12.00,NULL,NULL),(63,21,6,32.00,145.00,12.00,NULL,NULL),(64,22,6,25.00,187.00,9.00,NULL,NULL),(65,22,2,25.00,187.00,9.00,NULL,NULL),(66,22,7,25.00,187.00,9.00,NULL,NULL),(67,23,5,44.00,139.00,11.00,NULL,NULL),(68,23,2,44.00,139.00,11.00,NULL,NULL),(69,23,10,44.00,139.00,11.00,NULL,NULL),(70,24,4,46.00,127.00,11.00,NULL,NULL),(71,24,1,46.00,127.00,11.00,NULL,NULL),(72,24,3,46.00,127.00,11.00,NULL,NULL),(73,25,8,26.00,151.00,20.00,NULL,NULL),(74,25,2,26.00,151.00,20.00,NULL,NULL),(75,25,9,26.00,151.00,20.00,NULL,NULL);
/*!40000 ALTER TABLE `servico_prestador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicos`
--

DROP TABLE IF EXISTS `servicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `situacao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicos`
--

LOCK TABLES `servicos` WRITE;
/*!40000 ALTER TABLE `servicos` DISABLE KEYS */;
INSERT INTO `servicos` VALUES (1,'cupiditate','inativo','2024-06-21 18:54:01','2024-06-21 18:54:01'),(2,'dolore','inativo','2024-06-21 18:54:01','2024-06-21 18:54:01'),(3,'dolores','inativo','2024-06-21 18:54:01','2024-06-21 18:54:01'),(4,'dignissimos','ativo','2024-06-21 18:54:01','2024-06-21 18:54:01'),(5,'quod','inativo','2024-06-21 18:54:01','2024-06-21 18:54:01'),(6,'fugit','ativo','2024-06-21 18:54:01','2024-06-21 18:54:01'),(7,'reiciendis','ativo','2024-06-21 18:54:01','2024-06-21 18:54:01'),(8,'amet','ativo','2024-06-21 18:54:01','2024-06-21 18:54:01'),(9,'error','ativo','2024-06-21 18:54:01','2024-06-21 18:54:01'),(10,'repellat','inativo','2024-06-21 18:54:01','2024-06-21 18:54:01');
/*!40000 ALTER TABLE `servicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('fapM7SvyXtRiQlnYb2R20B2XEjOgtlB5Tz2NW5Ar',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoibk55TUg1cGIxWk40eUxFbTcxem1OV3Q0UTNmRk1vazJrbWtodnhZZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1719323513),('m0h9JDmYGqfcmzsQqF7ci6MGBwNrdPN3EQhgWuTF',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaWttNHNyVXlnUmhuR01Ia0JhMlVPQ25IcUtUNHVZc0lGZjQ4RTNJbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1719325123),('pR9E7JjeKQp76PPtVTe3BgH4sBzPMMcxDPVgDs3m',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoibVFiTVJrMGJ3UGZqSkV6Q0dUVkFaSjhjaFg2ekV1SGhva1BYbHFJcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1718987182),('u32ZgxK2kVRWtiVw1YG214U7qeRk85q1hmR4qEN9',NULL,'127.0.0.1','PostmanRuntime/7.39.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoidUpQbktzRzZrcVlJSEJUejBVeEFvMURjdXVYaGdHa0Q4RWJPS1RBVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1719328619),('XIF25EgZcfaOQMSalJgr9FHhYCMEA8LZS84HZ9Sd',NULL,'127.0.0.1','PostmanRuntime/7.39.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoibzAwM01vWE1EdncwR3VoblJQR0hyZk9EYVRhQTg1WktjV3J6YnF5MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1719335672);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Test User','test@example.com','2024-06-21 18:47:07','$2y$12$FoNsUH3jfd2YmYwCDNct0ujTB3kHbdhgakNm5rrw.KO8mPLzsYyjm','6u0J9RtrkE','2024-06-21 18:47:08','2024-06-21 18:47:08'),(2,'John Doe','johndoe@example.com',NULL,'$2y$12$t2Gj3HMySNPWULjn9qnA0O8qhMIZgg183Au9.CUpTP07kECqlO7tK',NULL,'2024-06-25 18:12:17','2024-06-25 18:12:17'),(3,'TESTE1','teste1@example.com',NULL,'$2y$12$B0TX7PBGik2CmqBnB0b3b.hb1UBs7KnXzXY.XnEKG.04shxSbiCwG',NULL,'2024-06-25 18:44:11','2024-06-25 18:44:11');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-25 14:21:55
