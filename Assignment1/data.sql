-- MySQL dump 10.14  Distrib 5.5.43-MariaDB, for Linux (x86_64)
--
-- Host: 10.10.15.202    Database: te3160db
-- ------------------------------------------------------
-- Server version	5.5.43-MariaDB

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
-- Current Database: `te3160db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `te3160db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `te3160db`;

--
-- Table structure for table `Departments`
--

DROP TABLE IF EXISTS `Departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Departments` (
  `dept_id` int(11) NOT NULL DEFAULT '0',
  `dept_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Departments`
--

LOCK TABLES `Departments` WRITE;
/*!40000 ALTER TABLE `Departments` DISABLE KEYS */;
INSERT INTO `Departments` VALUES (1,'Computer'),(2,'IT'),(3,'E&TC');
/*!40000 ALTER TABLE `Departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Professors`
--

DROP TABLE IF EXISTS `Professors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Professors` (
  `prof_id` int(11) NOT NULL DEFAULT '0',
  `prof_fname` varchar(255) DEFAULT NULL,
  `prof_lname` varchar(255) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `doj` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`prof_id`),
  KEY `dept_id` (`dept_id`),
  CONSTRAINT `Professors_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `Departments` (`dept_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Professors`
--

LOCK TABLES `Professors` WRITE;
/*!40000 ALTER TABLE `Professors` DISABLE KEYS */;
INSERT INTO `Professors` VALUES (1,'Anurag','Andhare',1,'Assistant Professor',30000,'2015-01-01','anurag@pict.edu',8957265358,'Pune'),(2,'Akash','Patil',1,'Assistant Professor',60000,'2015-01-30','patilakash@pict.edu',8957242358,'Pune'),(3,'Daksh','Pokar',2,'Assistant Professors',30000,'2016-01-01','dakshpokar@pict.edu',9689927235,'Bhuj'),(4,'Pratik','Patil',1,'Assistant Professor',50000,'2015-07-21','pratikpatil@pict.edu',8957243333,'Pune'),(5,'Saurabh','Bora',2,'Assistant Professor',10000,'2015-07-12','pratikpatil@pict.edu',8957222233,'Pune'),(6,'Aditya','Mahadalkar',3,'Assistant Professor',40000,'2016-06-22','adityam@pict.edu',9996121233,'Pune'),(7,'Mandar','Pande',3,'Assistant Professor',40000,'2016-07-31','mandarpande@pict.edu',3336121233,'Pune'),(8,'Atharva','Dharmadhikari',2,'Assistant Professor',100,'2016-07-12','dharmya@pict.edu',9689921233,'Mumbai'),(9,'Aniket','Gokhale',2,'Assistant Professor',100,'2016-09-12','aniketgokhale@pict.edu',9689927235,'Mumbai'),(10,'Sanket','Pokar',1,'Assistant Professor',10011,'2016-03-12','madsanket@pict.edu',9689211221,'Pune');
/*!40000 ALTER TABLE `Professors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Shift`
--

DROP TABLE IF EXISTS `Shift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Shift` (
  `prof_id` int(11) DEFAULT NULL,
  `shift` int(11) DEFAULT NULL,
  `working_hours` varchar(255) DEFAULT NULL,
  KEY `prof_id` (`prof_id`),
  CONSTRAINT `Shift_ibfk_1` FOREIGN KEY (`prof_id`) REFERENCES `Professors` (`prof_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Shift`
--

LOCK TABLES `Shift` WRITE;
/*!40000 ALTER TABLE `Shift` DISABLE KEYS */;
INSERT INTO `Shift` VALUES (3,2,'11:00-12:00'),(8,2,'11:00-12:00'),(9,1,'8:00-10:00');
/*!40000 ALTER TABLE `Shift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `se1`
--

DROP TABLE IF EXISTS `se1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `se1` (
  `name` varchar(20) DEFAULT NULL,
  `rollno` varchar(20) NOT NULL DEFAULT '',
  `marks` int(50) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  PRIMARY KEY (`rollno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `se1`
--

LOCK TABLES `se1` WRITE;
/*!40000 ALTER TABLE `se1` DISABLE KEYS */;
INSERT INTO `se1` VALUES ('SAURABH','3113',33,'Pune',NULL),('ATHARVA ','3126',33,'Pune',NULL),('ANIKET','3145',42,'Pune',NULL),('MANDAR','3155',44,'Pune',NULL),('PRATIK','3158',44,'Pune',NULL),('SHUBHAM','3159',38,'Pune',NULL),('DAKSH','3160',38,'Pune','1998-09-30');
/*!40000 ALTER TABLE `se1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `works`
--

DROP TABLE IF EXISTS `works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `works` (
  `prof_id` int(11) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  KEY `prof_id` (`prof_id`),
  KEY `dept_id` (`dept_id`),
  CONSTRAINT `works_ibfk_1` FOREIGN KEY (`prof_id`) REFERENCES `Professors` (`prof_id`) ON DELETE CASCADE,
  CONSTRAINT `works_ibfk_2` FOREIGN KEY (`dept_id`) REFERENCES `Departments` (`dept_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `works`
--

LOCK TABLES `works` WRITE;
/*!40000 ALTER TABLE `works` DISABLE KEYS */;
INSERT INTO `works` VALUES (3,2,1),(8,2,1),(9,2,1);
/*!40000 ALTER TABLE `works` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-02 13:19:02
