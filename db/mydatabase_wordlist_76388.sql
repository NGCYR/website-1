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
-- Table structure for table `wordlist_76388`
--

DROP TABLE IF EXISTS `wordlist_76388`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wordlist_76388` (
  `id_user_english` varchar(45) NOT NULL,
  `id_user_chinese` varchar(45) NOT NULL,
  `id_language` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wordlist_76388`
--

LOCK TABLES `wordlist_76388` WRITE;
/*!40000 ALTER TABLE `wordlist_76388` DISABLE KEYS */;
INSERT INTO `wordlist_76388` VALUES ('urban','城市','en'),('rustic','乡村的','en'),('community','社区','en'),('metropolitan','首都的','en'),('exotic','外来的','en'),('conventional','传统的','en'),('convention','传统','en'),('patriarchal','家长的','en'),('institutionalize','使制度化','en'),('clan','部落','en'),('status','地位','en'),('taboo','禁忌','en'),('ethics','伦理学','en'),('genteel','上流社会的','en'),('marital','婚姻的','en'),('polygamous','一夫多妻的','en'),('household','一家人','en'),('guide','指南','en'),('tour','旅行','en'),('take part in','参加','en'),('pigeon','鸽子','en'),('reason','creek','en'),('bund','堤岸','en'),('grand','大','en'),('theatre','剧院','en'),('botanical garden','植物园','en'),('oriental','东方的','en'),('pearl','珍珠','en'),('century','世纪','en'),('technology','科技','en'),('sightseeing','观光','en'),('get on with','进展','en'),('be famous for','以......而著名','en'),('view','景色','en'),('be known as','被认为','en'),('paradise','天堂','en'),('natural','自然的','en'),('scenic','景色','en'),('scenery','奇观','en'),('shade','荫','en'),('jungle','丛林','en'),('meadow','草地','en'),('lawn','草地','en'),('summit','山顶','en'),('gorge','峡谷','en'),('puddle','小水洼','en'),('therefore','因此','en'),('surprising','令人惊奇的','en'),('district','地区','en'),('maglev','磁悬浮列车','en'),('state','国家的','en'),('resort','度假胜地  ','en'),('archeology','考古的','en'),('invaluable','无价的','en'),('unearth','发掘','en'),('scoop','挖掘','en'),('exhume','掘出','en'),('excavate','挖掘','en'),('excavation','挖掘','en'),('Neolithic','新石器时代的','en'),('Mesolithic','中石器时代','en'),('Paleolithic','旧石器时代的','en'),('origin','起源','en'),('chronological','按年代顺序的','en'),('archaic','古的','en'),('ascend','追溯','en'),('originate','发源于','en'),('primitive','原始的','en'),('remnant','残余的','en'),('porcelain','瓷器','en'),('antique','古物','en'),('juvenile','青少年','en'),('human','人类的','en'),('anthropology','人类学','en'),('ethnic','种族的','en'),('ethnology','人种学','en'),('minority','少数','en'),('descent','血统','en'),('','','en'),('hybrid','杂种','en'),('intelligence','智力','en'),('intellectual','智力的','en'),('aboriginal','土著','en'),('ancestor','祖先','en'),('forerunner','先驱','en'),('hominid','原始人类','en'),('stoically','坚韧的','en'),('fortitude','坚忍','en'),('resist','坚持','en'),('perseverance','坚持','en'),('persevere','坚持','en'),('maintain','坚持','en'),('insist','主张','en'),('allege','主张','en'),('implicit','暗示的','en'),('reflection','反映','en'),('expose','使暴露','en'),('exposure','曝光','en'),('reveal','展现','en'),('revelation','显示','en'),('unveil','揭露','en'),('transpire','泄露','en'),('profess','表示','en'),('signify','表示','en'),('bare','露出','en'),('','','en'),('exhibit','显示','en'),('leak','泄露','en'),('divulge','泄露','en'),('denote','指示','en'),('indicate','指示','en'),('betray','泄露','en'),('allusion','暗示','en'),('adapt','改编','en'),('adaptable','可修改的','en'),('adaptation','改写','en'),('excerpt','摘录','en'),('abstract','摘要','en'),('abstraction','摘要','en'),('abridge','缩短','en'),('coin','创造','en'),('implicit','含蓄的','en'),('concise','简明的','en'),('succinct','简明的','en'),('fluent','流利的','en'),('cogent','强有力的','en'),('persuasive','有说服力的','en'),('character','文字','en'),('glossary','词汇表','en'),('clause','分句','en'),('dialect','方言','en'),('linguistics','语言学','en'),('phonetics','语言学','en'),('tense','时态','en'),('version','说法','en'),('genre','体裁','en'),('implicit','含蓄的','en'),('concise','简明的','en'),('didactic','教诲的','en'),('sermon','说教','en'),('instill','灌输','en'),('instruct','教','en'),('enlighten','启发','en'),('edify','陶治','en'),('lead','引导','en'),('direct','引导','en'),('','','en'),('conduct','引导','en'),('curriculum','课程','en'),('discipdiscip','学科','en');
/*!40000 ALTER TABLE `wordlist_76388` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-16 10:09:23
