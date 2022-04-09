-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: techno-2
-- ------------------------------------------------------
-- Server version	5.7.36

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
-- Table structure for table `employers`
--

DROP TABLE IF EXISTS `employers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employers` (
  `employerID` int(11) NOT NULL AUTO_INCREMENT,
  `empName` varchar(50) NOT NULL,
  `empPhone` int(11) NOT NULL,
  `empEmail` varchar(50) NOT NULL,
  `empAddress` varchar(100) NOT NULL,
  `empCity` varchar(30) NOT NULL,
  `empState` varchar(30) NOT NULL,
  `empPostCode` int(11) NOT NULL,
  `empProfileImage_URL` varchar(255) NOT NULL,
  `empJoinDate` date NOT NULL,
  PRIMARY KEY (`employerID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employers`
--

LOCK TABLES `employers` WRITE;
/*!40000 ALTER TABLE `employers` DISABLE KEYS */;
INSERT INTO `employers` VALUES (1,'Kmart',123123,'tre@web.com','1 Queen St','Brisbane','QLD',4170,'www.picsum.co','2022-04-08'),(2,'XL Tech',130043,'young@web.com','10 Albert St','Brisbane','QLD',4000,'www.picsum.co','2022-04-08'),(3,'Google',590166,'squid@web.com','75 Frank Rd','Byron Bay','NSW',2545,'www.picsum.co','2022-04-08'),(4,'Suncorp',2011613,'brains@web.com','220 Falcon Lane','Sydney','NSW',1202,'www.picsum.co','2022-04-08'),(5,'Web Link',112233,'bird@web.com','89 Eagle St','Brisbane','QLD',4178,'www.picsum.co','2022-04-08');
/*!40000 ALTER TABLE `employers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `joblisting`
--

DROP TABLE IF EXISTS `joblisting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `joblisting` (
  `jobID` int(11) NOT NULL AUTO_INCREMENT,
  `employerID` int(11) NOT NULL,
  `jobTitle` varchar(50) DEFAULT NULL,
  `jobType` varchar(50) DEFAULT NULL,
  `positionType` varchar(50) DEFAULT NULL,
  `jobDescription` text,
  `jobMinSalary` int(11) NOT NULL,
  `jobMaxSalary` int(11) NOT NULL,
  `jobState` varchar(30) NOT NULL,
  `jobPostCode` int(11) NOT NULL,
  PRIMARY KEY (`jobID`),
  KEY `employerID` (`employerID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `joblisting`
--

LOCK TABLES `joblisting` WRITE;
/*!40000 ALTER TABLE `joblisting` DISABLE KEYS */;
INSERT INTO `joblisting` VALUES (1,1,'Junior React Developer','Web Development','Fulltime','Great Company',60000,80000,'QLD',4100),(2,2,'Unity Game Developer','Game Development','Casual','Small Indie Company',40000,50000,'VIC',3000),(3,3,'Data Analyst','Database Dev','Part time','Flexible Hours',70000,90000,'NSW',2100),(4,4,'Software Tester','Software Development','Part time','Small start up',40000,60000,'QLD',4000),(5,5,'Web Designer','Web Design','Fulltime','Remote',50000,60000,'QLD',4100),(6,1,'Data Analyst','Database Dev','Fulltime','Great Company',80000,90000,'QLD',4100),(7,1,'Software Developer','Software Development','Fulltime','Great Company',100000,160000,'QLD',4100),(8,5,'Software Developer','Software DEvelopment','Fulltime','Remote',120000,160000,'QLD',4100);
/*!40000 ALTER TABLE `joblisting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobseeker`
--

DROP TABLE IF EXISTS `jobseeker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobseeker` (
  `jobSeekerID` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `birthDate` date NOT NULL,
  `state` varchar(30) DEFAULT NULL,
  `postCode` int(11) NOT NULL,
  `CV_URL` varchar(255) NOT NULL,
  `profileImage_URL` varchar(255) NOT NULL,
  `joinDate` datetime NOT NULL,
  PRIMARY KEY (`jobSeekerID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobseeker`
--

LOCK TABLES `jobseeker` WRITE;
/*!40000 ALTER TABLE `jobseeker` DISABLE KEYS */;
INSERT INTO `jobseeker` VALUES (1,'Tre','Day','tre@web.com','123','2022-04-08','QLD',4100,'www.cv.com','www.picsum.com','2022-04-08 00:00:00'),(2,'Yammie','Noob','fast@bro.com','321','2022-04-08','QLD',4430,'www.cv.com','www.picsum.com','2022-04-08 00:00:00'),(3,'Chloe','Kim','chur@web.com','333','2022-04-08','QLD',4000,'www.cv.com','www.picsum.com','2022-04-08 00:00:00'),(4,'Shaun','White','wet@snow.com','444','2022-04-08','QLD',4100,'www.cv.com','www.picsum.com','2022-04-08 00:00:00'),(5,'Harris','Fisher','up2@web.com','888','2022-04-08','QLD',4100,'www.cv.com','www.picsum.com','2022-04-08 00:00:00');
/*!40000 ALTER TABLE `jobseeker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `js_experience`
--

DROP TABLE IF EXISTS `js_experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `js_experience` (
  `experienceID` int(11) NOT NULL AUTO_INCREMENT,
  `jobSeekerID` int(11) NOT NULL,
  `roleTitle` varchar(50) NOT NULL,
  `roleYearsExperience` int(11) NOT NULL,
  PRIMARY KEY (`experienceID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `js_experience`
--

LOCK TABLES `js_experience` WRITE;
/*!40000 ALTER TABLE `js_experience` DISABLE KEYS */;
INSERT INTO `js_experience` VALUES (1,1,'Software Developer',1),(2,2,'Software Developer',2),(3,3,'Software Developer',5);
/*!40000 ALTER TABLE `js_experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `js_qualifications`
--

DROP TABLE IF EXISTS `js_qualifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `js_qualifications` (
  `qualificationID` int(11) NOT NULL AUTO_INCREMENT,
  `jobSeekerID` int(11) NOT NULL,
  `qualificationType` varchar(50) NOT NULL,
  `educationType` varchar(50) NOT NULL,
  PRIMARY KEY (`qualificationID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `js_qualifications`
--

LOCK TABLES `js_qualifications` WRITE;
/*!40000 ALTER TABLE `js_qualifications` DISABLE KEYS */;
INSERT INTO `js_qualifications` VALUES (1,1,'Diploma Software Development','TAFE'),(2,1,'Diploma Database Development','TAFE'),(3,1,'Cert IV Information Technology','TAFE');
/*!40000 ALTER TABLE `js_qualifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `js_skills`
--

DROP TABLE IF EXISTS `js_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `js_skills` (
  `skillsID` int(11) NOT NULL AUTO_INCREMENT,
  `jobSeekerID` int(11) NOT NULL,
  `skillType` varchar(50) NOT NULL,
  `skillYearsExperience` int(11) NOT NULL,
  PRIMARY KEY (`skillsID`),
  KEY `jobSeekerID` (`jobSeekerID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `js_skills`
--

LOCK TABLES `js_skills` WRITE;
/*!40000 ALTER TABLE `js_skills` DISABLE KEYS */;
INSERT INTO `js_skills` VALUES (1,1,'PHP',3),(2,1,'HTML',3),(3,1,'Javascript',3);
/*!40000 ALTER TABLE `js_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `js_visastatus`
--

DROP TABLE IF EXISTS `js_visastatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `js_visastatus` (
  `visaID` int(11) NOT NULL AUTO_INCREMENT,
  `jobSeekerID` int(11) NOT NULL,
  `visaType` varchar(50) NOT NULL,
  `visaStartDate` date DEFAULT NULL,
  `visaExpiryDate` date DEFAULT NULL,
  `visaNum` int(11) NOT NULL,
  PRIMARY KEY (`visaID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `js_visastatus`
--

LOCK TABLES `js_visastatus` WRITE;
/*!40000 ALTER TABLE `js_visastatus` DISABLE KEYS */;
INSERT INTO `js_visastatus` VALUES (1,5,'401 Visa','2020-11-30','2022-11-30',12345);
/*!40000 ALTER TABLE `js_visastatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `req_experience`
--

DROP TABLE IF EXISTS `req_experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `req_experience` (
  `req_experienceID` int(11) NOT NULL AUTO_INCREMENT,
  `jobID` int(11) NOT NULL,
  `roleTitle` varchar(50) NOT NULL,
  `req_roleTitle` varchar(50) NOT NULL,
  `req_roleYearsExperience` int(11) NOT NULL,
  PRIMARY KEY (`req_experienceID`),
  KEY `jobID` (`jobID`),
  KEY `roleTitle` (`roleTitle`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `req_experience`
--

LOCK TABLES `req_experience` WRITE;
/*!40000 ALTER TABLE `req_experience` DISABLE KEYS */;
INSERT INTO `req_experience` VALUES (1,7,'Software Developer','Software Developer',5),(2,4,'Software Tester','Software Tester',5),(3,3,'Database Analyst','Database Analyst',5);
/*!40000 ALTER TABLE `req_experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `req_qualifications`
--

DROP TABLE IF EXISTS `req_qualifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `req_qualifications` (
  `req_qualificationID` int(11) NOT NULL AUTO_INCREMENT,
  `jobID` int(11) NOT NULL,
  `qualificationType` varchar(50) NOT NULL,
  `req_qualificationType` varchar(50) NOT NULL,
  `req_educationType` varchar(50) NOT NULL,
  PRIMARY KEY (`req_qualificationID`),
  KEY `jobID` (`jobID`),
  KEY `qualificationType` (`qualificationType`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `req_qualifications`
--

LOCK TABLES `req_qualifications` WRITE;
/*!40000 ALTER TABLE `req_qualifications` DISABLE KEYS */;
INSERT INTO `req_qualifications` VALUES (1,4,'Diploma Software Development','Diploma Software Development','TAFE'),(2,3,'Diploma Database Development','Diploma Database Development','TAFE'),(3,5,'Cert IV Information Technology','Cert IV Information Technology','TAFE');
/*!40000 ALTER TABLE `req_qualifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `req_skills`
--

DROP TABLE IF EXISTS `req_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `req_skills` (
  `req_skillsID` int(11) NOT NULL AUTO_INCREMENT,
  `jobID` int(11) NOT NULL,
  `skillsType` varchar(50) NOT NULL,
  `req_skillsType` varchar(50) NOT NULL,
  `req_skillYearsExperience` int(11) NOT NULL,
  PRIMARY KEY (`req_skillsID`),
  KEY `jobID` (`jobID`),
  KEY `skillsType` (`skillsType`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `req_skills`
--

LOCK TABLES `req_skills` WRITE;
/*!40000 ALTER TABLE `req_skills` DISABLE KEYS */;
INSERT INTO `req_skills` VALUES (1,3,'PHP','PHP',5),(2,3,'Javascript','Javascript',5),(3,3,'HTML','HTML',5);
/*!40000 ALTER TABLE `req_skills` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-09  1:04:17
