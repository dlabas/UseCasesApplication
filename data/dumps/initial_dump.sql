-- MySQL dump 10.13  Distrib 5.5.30, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: use_cases_dev
-- ------------------------------------------------------
-- Server version	5.5.30-1.1-log

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `root` int(11) NOT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_3AF346685E237E06` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,1,1,4,'example-root-category','Example Root Category','The Example Root Category is the root category for all sample data categories','/img/no_thumbnail.png','2013-04-23 09:20:22','2013-04-23 09:20:22'),(2,1,2,3,'example-child-category','Example Child Category','The Example Child Category is the a child category of the Example Root Category','/img/no_thumbnail.png','2013-04-23 09:20:22',NULL),(3,3,1,8,'use-case-root-category','Use Cases','The Use Case Root Category is the root category for all use case categories','/img/no_thumbnail.png','2013-04-23 09:20:22','2013-04-23 09:20:23'),(4,3,2,3,'use-case-device-category','Device','The Device Category is the a child category of the Use Case Root Category','/img/no_thumbnail.png','2013-04-23 09:20:23',NULL),(5,3,4,5,'use-case-user-category','User','The User Category is the a child category of the Use Case Root Category','/img/no_thumbnail.png','2013-04-23 09:20:23',NULL),(6,3,6,7,'use-case-customer-category','Customer','The Customer Category is the a child category of the Use Case Root Category','/img/no_thumbnail.png','2013-04-23 09:20:23',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `use_case_dependencies`
--

DROP TABLE IF EXISTS `use_case_dependencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `use_case_dependencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_use_case_id` int(11) DEFAULT NULL,
  `to_use_case_id` int(11) DEFAULT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A4FFA4A4AF4D6EA9` (`from_use_case_id`),
  KEY `IDX_A4FFA4A41F9161AF` (`to_use_case_id`),
  CONSTRAINT `FK_A4FFA4A41F9161AF` FOREIGN KEY (`to_use_case_id`) REFERENCES `use_cases` (`id`),
  CONSTRAINT `FK_A4FFA4A4AF4D6EA9` FOREIGN KEY (`from_use_case_id`) REFERENCES `use_cases` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `use_case_dependencies`
--

LOCK TABLES `use_case_dependencies` WRITE;
/*!40000 ALTER TABLE `use_case_dependencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `use_case_dependencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `use_case_priorities`
--

DROP TABLE IF EXISTS `use_case_priorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `use_case_priorities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `use_case_priorities`
--

LOCK TABLES `use_case_priorities` WRITE;
/*!40000 ALTER TABLE `use_case_priorities` DISABLE KEYS */;
INSERT INTO `use_case_priorities` VALUES (1,'High','2013-04-23 09:20:22',NULL),(2,'Normal','2013-04-23 09:20:23',NULL),(3,'Low','2013-04-23 09:20:23',NULL);
/*!40000 ALTER TABLE `use_case_priorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `use_case_types`
--

DROP TABLE IF EXISTS `use_case_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `use_case_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `use_case_types`
--

LOCK TABLES `use_case_types` WRITE;
/*!40000 ALTER TABLE `use_case_types` DISABLE KEYS */;
INSERT INTO `use_case_types` VALUES (1,'Business Use Case','2013-04-23 09:20:22',NULL),(2,'System Use Case','2013-04-23 09:20:22',NULL);
/*!40000 ALTER TABLE `use_case_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `use_cases`
--

DROP TABLE IF EXISTS `use_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `use_cases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT NULL,
  `priority_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_808D29B1C54C8C93` (`type_id`),
  KEY `IDX_808D29B1497B19F9` (`priority_id`),
  KEY `IDX_808D29B112469DE2` (`category_id`),
  CONSTRAINT `FK_808D29B112469DE2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `FK_808D29B1497B19F9` FOREIGN KEY (`priority_id`) REFERENCES `use_case_priorities` (`id`),
  CONSTRAINT `FK_808D29B1C54C8C93` FOREIGN KEY (`type_id`) REFERENCES `use_case_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `use_cases`
--

LOCK TABLES `use_cases` WRITE;
/*!40000 ALTER TABLE `use_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `use_cases` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-04-23  9:20:38
