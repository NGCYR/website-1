-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydatabase
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
-- Table structure for table `mistake_book_76388`
--

DROP TABLE IF EXISTS `mistake_book_76388`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mistake_book_76388` (
  `id_wrong_words` varchar(45) NOT NULL,
  `id_chinese` varchar(255) NOT NULL,
  `user_input` varchar(45) NOT NULL,
  `local_time` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mistake_book_76388`
--

LOCK TABLES `mistake_book_76388` WRITE;
/*!40000 ALTER TABLE `mistake_book_76388` DISABLE KEYS */;
INSERT INTO `mistake_book_76388` VALUES ('出','露','sfad','02/10/2023, 21:57:12'),('石','中','dadf','02/10/2023, 21:57:14'),('community','社区','cmmunis','02/10/2023, 21:57:25'),('方','东','','02/11/2023, 22:02:26'),('nylon','noun uk: [ˈnaɪ.lɒn]  us: [ˈnaɪ.lɑːn] 尼龙','','02/11/2023, 22:02:28'),('urban','城市','urben','02/11/2023, 22:02:38'),('rustic','乡村的','','02/11/2023, 22:06:56'),('community','社区','','02/11/2023, 22:06:56'),('metropolitan','首都的','','02/11/2023, 22:06:56'),('exotic','外来的','','02/11/2023, 22:06:57'),('institutionalize','使制度化','institutional','02/11/2023, 22:16:08'),('taboo','禁忌','tabootaboo','02/11/2023, 22:16:35'),('household','一家人','householdhousehold','02/11/2023, 22:18:01'),('guide','指南','','02/11/2023, 22:18:03');
/*!40000 ALTER TABLE `mistake_book_76388` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-16 10:09:26
