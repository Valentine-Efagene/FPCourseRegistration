-- MySQL dump 10.13  Distrib 5.6.37, for Win32 (AMD64)
--
-- Host: localhost    Database: db_course_registration
-- ------------------------------------------------------
-- Server version	5.6.37

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
-- Table structure for table `t_courses`
--

DROP TABLE IF EXISTS `t_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_courses` (
  `SN` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `f_code` varchar(6) NOT NULL,
  `f_credit` int(1) NOT NULL,
  `f_mat_number` varchar(100) NOT NULL,
  PRIMARY KEY (`SN`),
  KEY `f_mat_number` (`f_mat_number`),
  CONSTRAINT `t_courses_ibfk_1` FOREIGN KEY (`f_mat_number`) REFERENCES `t_students` (`f_mat_number`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_courses`
--

LOCK TABLES `t_courses` WRITE;
/*!40000 ALTER TABLE `t_courses` DISABLE KEYS */;
INSERT INTO `t_courses` VALUES (2,'CPPE57',3,'ENG1403447 ');
/*!40000 ALTER TABLE `t_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_students`
--

DROP TABLE IF EXISTS `t_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_students` (
  `f_mat_number` varchar(100) NOT NULL,
  `f_first_name` varchar(100) NOT NULL,
  `f_middle_name` varchar(100) NOT NULL,
  `f_last_name` varchar(100) NOT NULL,
  `f_level` int(3) NOT NULL,
  `f_fingerprint_id` int(11) NOT NULL,
  PRIMARY KEY (`f_mat_number`),
  UNIQUE KEY `f_mat_number` (`f_mat_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_students`
--

LOCK TABLES `t_students` WRITE;
/*!40000 ALTER TABLE `t_students` DISABLE KEYS */;
INSERT INTO `t_students` VALUES ('ENG1332343','JANE','ALICE','DOE',500,1),('ENG1403447','VALENTINE','EDESIRI','EFAGENE',500,2),('ENG1403552','JOHN','FRANK','DOE',500,3);
/*!40000 ALTER TABLE `t_students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-28  9:39:18
