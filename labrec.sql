-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: labrec
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accountinfo`
--

DROP TABLE IF EXISTS `accountinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `accountinfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `realname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountinfo`
--

LOCK TABLES `accountinfo` WRITE;
/*!40000 ALTER TABLE `accountinfo` DISABLE KEYS */;
INSERT INTO `accountinfo` VALUES (1,'NPE','666',0,0,NULL,NULL);
/*!40000 ALTER TABLE `accountinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcment`
--

DROP TABLE IF EXISTS `announcment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `announcment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcment`
--

LOCK TABLES `announcment` WRITE;
/*!40000 ALTER TABLE `announcment` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labname`
--

DROP TABLE IF EXISTS `labname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `labname` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labname`
--

LOCK TABLES `labname` WRITE;
/*!40000 ALTER TABLE `labname` DISABLE KEYS */;
/*!40000 ALTER TABLE `labname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labrecord`
--

DROP TABLE IF EXISTS `labrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `labrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lid` int(11) DEFAULT NULL,
  `timestate` varchar(50) DEFAULT NULL,
  `accountid` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labrecord`
--

LOCK TABLES `labrecord` WRITE;
/*!40000 ALTER TABLE `labrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `labrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labstate`
--

DROP TABLE IF EXISTS `labstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `labstate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lid` int(11) DEFAULT NULL,
  `timestate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labstate`
--

LOCK TABLES `labstate` WRITE;
/*!40000 ALTER TABLE `labstate` DISABLE KEYS */;
/*!40000 ALTER TABLE `labstate` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-09 11:26:07
