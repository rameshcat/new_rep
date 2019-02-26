-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: db_music
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

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
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album` (
  `album_id` int(11) NOT NULL AUTO_INCREMENT,
  `album_title` varchar(100) NOT NULL DEFAULT '---',
  `year` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`album_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (1,'Californication',1999),(2,'By the Way',2002),(3,'Master of Puppets',1986),(4,'Reload',1997),(5,'Angel',2011),(6,'AmeriKKKas Most Wanted',1990),(7,'Vsepodryad',1990),(8,'Newalbum',2002),(9,'Newalbum2',2005);
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genres` (
  `genre_id` int(11) NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(100) NOT NULL DEFAULT '---',
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Rok'),(2,'Pop'),(3,'Hip-Hop'),(4,'Heavy Metal');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `singers`
--

DROP TABLE IF EXISTS `singers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `singers` (
  `singer_id` int(11) NOT NULL AUTO_INCREMENT,
  `singer_name` varchar(100) NOT NULL DEFAULT '---',
  PRIMARY KEY (`singer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `singers`
--

LOCK TABLES `singers` WRITE;
/*!40000 ALTER TABLE `singers` DISABLE KEYS */;
INSERT INTO `singers` VALUES (1,'Metallica'),(2,'Red Hot Chili Peppers'),(3,'Oleg Vinnik'),(4,'Ice Cube'),(5,'Ispolnitelvsepdryad');
/*!40000 ALTER TABLE `singers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `songs` (
  `song_id` int(11) NOT NULL AUTO_INCREMENT,
  `song_name` varchar(100) NOT NULL DEFAULT '---',
  `album` int(11) NOT NULL DEFAULT '0',
  `singer` int(11) NOT NULL DEFAULT '0',
  `genre` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`song_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (1,'Better off dead',6,4,3),(2,'Turn off the radio',6,4,3),(3,'The drive-by',6,4,3),(4,'Angel',5,3,2),(5,'Bird',5,3,2),(6,'Battery',3,1,4),(7,'Muster of puppets',3,1,4),(8,'Orion',3,1,4),(9,'Fuel',4,1,4),(10,'Slither',4,1,4),(11,'Bad Seed',4,1,4),(12,'Around The Wrld',1,2,1),(13,'Parallel Universe',1,2,1),(14,'Otherside',1,2,1),(15,'Californication',1,2,1),(16,'Popsovapisnya',7,5,2),(17,'Popsovapisnya2',7,5,2),(18,'Repchik',7,5,3),(19,'Repchik2',7,5,3),(20,'Repchik3',7,5,3),(21,'Hard',7,5,4),(22,'Hard2',7,5,4),(23,'Roksing1',8,5,1),(24,'Roksing2',8,5,1),(25,'Roksing3',8,5,1),(26,'Roksing4',8,5,1),(27,'Popsing1',8,5,2),(28,'Popsing2',8,5,2),(29,'Popsing3',8,5,2),(30,'Popsing4',8,5,2),(31,'Roksing1',9,5,2),(32,'Roksing2',9,5,2),(33,'Roksing3',9,5,2);
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-26  5:58:10
