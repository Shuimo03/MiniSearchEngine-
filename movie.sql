-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: movie
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `douban_action_movie`
--

DROP TABLE IF EXISTS `douban_action_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `douban_action_movie` (
  `id` int NOT NULL,
  `movie_name_cn` varchar(20) NOT NULL,
  `movie_name_en` varchar(60) NOT NULL,
  `movie_director` varchar(45) NOT NULL,
  `movie_type` varchar(45) NOT NULL,
  `movie_language` varchar(45) NOT NULL,
  `movie_date` datetime NOT NULL,
  `movie_actor` varchar(45) NOT NULL,
  `movie_screenwriter` varchar(45) NOT NULL,
  `movie_rating` decimal(10,0) NOT NULL,
  `movie_create_date` datetime NOT NULL,
  `movie_update_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `douban_action_movie`
--

LOCK TABLES `douban_action_movie` WRITE;
/*!40000 ALTER TABLE `douban_action_movie` DISABLE KEYS */;
/*!40000 ALTER TABLE `douban_action_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `douban_art_movie`
--

DROP TABLE IF EXISTS `douban_art_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `douban_art_movie` (
  `id` int NOT NULL,
  `movie_name_cn` varchar(20) NOT NULL,
  `movie_name_en` varchar(60) NOT NULL,
  `movie_director` varchar(45) NOT NULL,
  `movie_type` varchar(45) NOT NULL,
  `movie_language` varchar(45) NOT NULL,
  `movie_date` datetime NOT NULL,
  `movie_actor` varchar(45) NOT NULL,
  `movie_screenwriter` varchar(45) NOT NULL,
  `movie_rating` decimal(10,0) NOT NULL,
  `movie_create_date` datetime NOT NULL,
  `movie_update_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `douban_art_movie`
--

LOCK TABLES `douban_art_movie` WRITE;
/*!40000 ALTER TABLE `douban_art_movie` DISABLE KEYS */;
/*!40000 ALTER TABLE `douban_art_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `douban_classical_movie`
--

DROP TABLE IF EXISTS `douban_classical_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `douban_classical_movie` (
  `id` int NOT NULL,
  `movie_name_cn` varchar(20) NOT NULL,
  `movie_name_en` varchar(60) NOT NULL,
  `movie_director` varchar(45) NOT NULL,
  `movie_type` varchar(45) NOT NULL,
  `movie_language` varchar(45) NOT NULL,
  `movie_date` datetime NOT NULL,
  `movie_actor` varchar(45) NOT NULL,
  `movie_screenwriter` varchar(45) NOT NULL,
  `movie_rating` decimal(10,0) NOT NULL,
  `movie_create_date` datetime NOT NULL,
  `movie_update_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `douban_classical_movie`
--

LOCK TABLES `douban_classical_movie` WRITE;
/*!40000 ALTER TABLE `douban_classical_movie` DISABLE KEYS */;
/*!40000 ALTER TABLE `douban_classical_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `douban_comedy_movie`
--

DROP TABLE IF EXISTS `douban_comedy_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `douban_comedy_movie` (
  `id` int NOT NULL,
  `movie_name_cn` varchar(20) NOT NULL,
  `movie_name_en` varchar(60) NOT NULL,
  `movie_director` varchar(45) NOT NULL,
  `movie_type` varchar(45) NOT NULL,
  `movie_language` varchar(45) NOT NULL,
  `movie_date` datetime NOT NULL,
  `movie_actor` varchar(45) NOT NULL,
  `movie_screenwriter` varchar(45) NOT NULL,
  `movie_rating` decimal(10,0) NOT NULL,
  `movie_create_date` datetime NOT NULL,
  `movie_update_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `douban_comedy_movie`
--

LOCK TABLES `douban_comedy_movie` WRITE;
/*!40000 ALTER TABLE `douban_comedy_movie` DISABLE KEYS */;
/*!40000 ALTER TABLE `douban_comedy_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `douban_ea_movie`
--

DROP TABLE IF EXISTS `douban_ea_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `douban_ea_movie` (
  `id` int NOT NULL,
  `movie_name_cn` varchar(20) NOT NULL,
  `movie_name_en` varchar(60) NOT NULL,
  `movie_director` varchar(45) NOT NULL,
  `movie_type` varchar(45) NOT NULL,
  `movie_language` varchar(45) NOT NULL,
  `movie_date` datetime NOT NULL,
  `movie_actor` varchar(45) NOT NULL,
  `movie_screenwriter` varchar(45) NOT NULL,
  `movie_rating` decimal(10,0) NOT NULL,
  `movie_create_date` datetime NOT NULL,
  `movie_update_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `douban_ea_movie`
--

LOCK TABLES `douban_ea_movie` WRITE;
/*!40000 ALTER TABLE `douban_ea_movie` DISABLE KEYS */;
/*!40000 ALTER TABLE `douban_ea_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `douban_horror_movie`
--

DROP TABLE IF EXISTS `douban_horror_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `douban_horror_movie` (
  `id` int NOT NULL,
  `movie_name_cn` varchar(20) NOT NULL,
  `movie_name_en` varchar(60) NOT NULL,
  `movie_director` varchar(45) NOT NULL,
  `movie_type` varchar(45) NOT NULL,
  `movie_language` varchar(45) NOT NULL,
  `movie_date` datetime NOT NULL,
  `movie_actor` varchar(45) NOT NULL,
  `movie_screenwriter` varchar(45) NOT NULL,
  `movie_rating` decimal(10,0) NOT NULL,
  `movie_create_date` datetime NOT NULL,
  `movie_update_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `douban_horror_movie`
--

LOCK TABLES `douban_horror_movie` WRITE;
/*!40000 ALTER TABLE `douban_horror_movie` DISABLE KEYS */;
/*!40000 ALTER TABLE `douban_horror_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `douban_japan_movie`
--

DROP TABLE IF EXISTS `douban_japan_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `douban_japan_movie` (
  `id` int NOT NULL,
  `movie_name_cn` varchar(20) NOT NULL,
  `movie_name_en` varchar(60) NOT NULL,
  `movie_director` varchar(45) NOT NULL,
  `movie_type` varchar(45) NOT NULL,
  `movie_language` varchar(45) NOT NULL,
  `movie_date` datetime NOT NULL,
  `movie_actor` varchar(45) NOT NULL,
  `movie_screenwriter` varchar(45) NOT NULL,
  `movie_rating` decimal(10,0) NOT NULL,
  `movie_create_date` datetime NOT NULL,
  `movie_update_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `douban_japan_movie`
--

LOCK TABLES `douban_japan_movie` WRITE;
/*!40000 ALTER TABLE `douban_japan_movie` DISABLE KEYS */;
/*!40000 ALTER TABLE `douban_japan_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `douban_korea_movie`
--

DROP TABLE IF EXISTS `douban_korea_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `douban_korea_movie` (
  `id` int NOT NULL,
  `movie_name_cn` varchar(20) NOT NULL,
  `movie_name_en` varchar(60) NOT NULL,
  `movie_director` varchar(45) NOT NULL,
  `movie_type` varchar(45) NOT NULL,
  `movie_language` varchar(45) NOT NULL,
  `movie_date` datetime NOT NULL,
  `movie_actor` varchar(45) NOT NULL,
  `movie_screenwriter` varchar(45) NOT NULL,
  `movie_rating` decimal(10,0) NOT NULL,
  `movie_create_date` datetime NOT NULL,
  `movie_update_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `douban_korea_movie`
--

LOCK TABLES `douban_korea_movie` WRITE;
/*!40000 ALTER TABLE `douban_korea_movie` DISABLE KEYS */;
/*!40000 ALTER TABLE `douban_korea_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `douban_love_movie`
--

DROP TABLE IF EXISTS `douban_love_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `douban_love_movie` (
  `id` int NOT NULL,
  `movie_name_cn` varchar(20) NOT NULL,
  `movie_name_en` varchar(60) NOT NULL,
  `movie_director` varchar(45) NOT NULL,
  `movie_type` varchar(45) NOT NULL,
  `movie_language` varchar(45) NOT NULL,
  `movie_date` datetime NOT NULL,
  `movie_actor` varchar(45) NOT NULL,
  `movie_screenwriter` varchar(45) NOT NULL,
  `movie_rating` decimal(10,0) NOT NULL,
  `movie_create_date` datetime NOT NULL,
  `movie_update_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `douban_love_movie`
--

LOCK TABLES `douban_love_movie` WRITE;
/*!40000 ALTER TABLE `douban_love_movie` DISABLE KEYS */;
/*!40000 ALTER TABLE `douban_love_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `douban_mandarin_movie`
--

DROP TABLE IF EXISTS `douban_mandarin_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `douban_mandarin_movie` (
  `id` int NOT NULL,
  `movie_name_cn` varchar(20) NOT NULL,
  `movie_name_en` varchar(60) NOT NULL,
  `movie_director` varchar(45) NOT NULL,
  `movie_type` varchar(45) NOT NULL,
  `movie_language` varchar(45) NOT NULL,
  `movie_date` datetime NOT NULL,
  `movie_actor` varchar(45) NOT NULL,
  `movie_screenwriter` varchar(45) NOT NULL,
  `movie_rating` decimal(10,0) NOT NULL,
  `movie_create_date` datetime NOT NULL,
  `movie_update_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `douban_mandarin_movie`
--

LOCK TABLES `douban_mandarin_movie` WRITE;
/*!40000 ALTER TABLE `douban_mandarin_movie` DISABLE KEYS */;
/*!40000 ALTER TABLE `douban_mandarin_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `douban_mystery_movie`
--

DROP TABLE IF EXISTS `douban_mystery_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `douban_mystery_movie` (
  `id` int NOT NULL,
  `movie_name_cn` varchar(20) NOT NULL,
  `movie_name_en` varchar(60) NOT NULL,
  `movie_director` varchar(45) NOT NULL,
  `movie_type` varchar(45) NOT NULL,
  `movie_language` varchar(45) NOT NULL,
  `movie_date` datetime NOT NULL,
  `movie_actor` varchar(45) NOT NULL,
  `movie_screenwriter` varchar(45) NOT NULL,
  `movie_rating` decimal(10,0) NOT NULL,
  `movie_create_date` datetime NOT NULL,
  `movie_update_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `douban_mystery_movie`
--

LOCK TABLES `douban_mystery_movie` WRITE;
/*!40000 ALTER TABLE `douban_mystery_movie` DISABLE KEYS */;
/*!40000 ALTER TABLE `douban_mystery_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `douban_popular_movie`
--

DROP TABLE IF EXISTS `douban_popular_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `douban_popular_movie` (
  `id` int NOT NULL,
  `movie_name_cn` varchar(20) NOT NULL,
  `movie_name_en` varchar(60) NOT NULL,
  `movie_director` varchar(45) NOT NULL,
  `movie_type` varchar(45) NOT NULL,
  `movie_language` varchar(45) NOT NULL,
  `movie_date` datetime NOT NULL,
  `movie_actor` varchar(45) NOT NULL,
  `movie_screenwriter` varchar(45) NOT NULL,
  `movie_rating` decimal(10,0) NOT NULL,
  `movie_create_date` datetime NOT NULL,
  `movie_update_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `douban_popular_movie`
--

LOCK TABLES `douban_popular_movie` WRITE;
/*!40000 ALTER TABLE `douban_popular_movie` DISABLE KEYS */;
/*!40000 ALTER TABLE `douban_popular_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `douban_sciencefiction_movie`
--

DROP TABLE IF EXISTS `douban_sciencefiction_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `douban_sciencefiction_movie` (
  `id` int NOT NULL,
  `movie_name_cn` varchar(20) NOT NULL,
  `movie_name_en` varchar(60) NOT NULL,
  `movie_director` varchar(45) NOT NULL,
  `movie_type` varchar(45) NOT NULL,
  `movie_language` varchar(45) NOT NULL,
  `movie_date` datetime NOT NULL,
  `movie_actor` varchar(45) NOT NULL,
  `movie_screenwriter` varchar(45) NOT NULL,
  `movie_rating` decimal(10,0) NOT NULL,
  `movie_create_date` datetime NOT NULL,
  `movie_update_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `douban_sciencefiction_movie`
--

LOCK TABLES `douban_sciencefiction_movie` WRITE;
/*!40000 ALTER TABLE `douban_sciencefiction_movie` DISABLE KEYS */;
/*!40000 ALTER TABLE `douban_sciencefiction_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `douban_top250_movie`
--

DROP TABLE IF EXISTS `douban_top250_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `douban_top250_movie` (
  `id` int NOT NULL,
  `movie_name_cn` varchar(20) NOT NULL,
  `movie_name_en` varchar(60) NOT NULL,
  `movie_director` varchar(45) NOT NULL,
  `movie_type` varchar(45) NOT NULL,
  `movie_language` varchar(45) NOT NULL,
  `movie_date` datetime NOT NULL,
  `movie_actor` varchar(45) NOT NULL,
  `movie_screenwriter` varchar(45) NOT NULL,
  `movie_rating` decimal(10,0) NOT NULL,
  `movie_create_date` datetime NOT NULL,
  `movie_update_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `douban_top250_movie`
--

LOCK TABLES `douban_top250_movie` WRITE;
/*!40000 ALTER TABLE `douban_top250_movie` DISABLE KEYS */;
/*!40000 ALTER TABLE `douban_top250_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `douban_unpopular_movie`
--

DROP TABLE IF EXISTS `douban_unpopular_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `douban_unpopular_movie` (
  `id` int NOT NULL,
  `movie_name_cn` varchar(20) NOT NULL,
  `movie_name_en` varchar(60) NOT NULL,
  `movie_director` varchar(45) NOT NULL,
  `movie_type` varchar(45) NOT NULL,
  `movie_language` varchar(45) NOT NULL,
  `movie_date` datetime NOT NULL,
  `movie_actor` varchar(45) NOT NULL,
  `movie_screenwriter` varchar(45) NOT NULL,
  `movie_rating` decimal(10,0) NOT NULL,
  `movie_create_date` datetime NOT NULL,
  `movie_update_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `douban_unpopular_movie`
--

LOCK TABLES `douban_unpopular_movie` WRITE;
/*!40000 ALTER TABLE `douban_unpopular_movie` DISABLE KEYS */;
/*!40000 ALTER TABLE `douban_unpopular_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'movie'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-23 21:01:05
