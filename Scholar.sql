-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: student_management_database_system
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` int NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `credits` int NOT NULL,
  `instructor` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  UNIQUE KEY `course_code` (`course_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (2245,'CS101','Introduction to Programming',3,'Prof. Koliya'),(2256,'MATH201','Mathematics',4,'Prof. Martinez'),(2295,'ACC202','Accounting',4,'Prof. Nalingam');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `results`
--

DROP TABLE IF EXISTS `results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `results` (
  `result_id` int NOT NULL,
  `student_id` int NOT NULL,
  `course_id` int NOT NULL,
  `grade` varchar(2) DEFAULT NULL,
  `marks` decimal(5,2) DEFAULT NULL,
  `exam_date` date DEFAULT NULL,
  PRIMARY KEY (`result_id`),
  KEY `student_id` (`student_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `results_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE,
  CONSTRAINT `results_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `results`
--

LOCK TABLES `results` WRITE;
/*!40000 ALTER TABLE `results` DISABLE KEYS */;
INSERT INTO `results` VALUES (101,22157164,2245,'A+',92.50,'2023-12-15'),(102,2256487,2256,'B+',87.00,'2023-12-18'),(103,2145683,2295,'A+',95.50,'2023-12-15');
/*!40000 ALTER TABLE `results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `enrollment_date` date DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=22157165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (2245687,'Malinda','Madhusanka','malindamadhusanka@gmail.com','076 5454516','2002-11-30','2023-07-15'),(2245896,'Devlika','Mayura','Mayuradevlika@gmail.com','076 5846123','2000-04-15','2023-09-01'),(2248965,'Nikitha','Brown','nikithabrown@gmail.com','072 5856214','2003-03-17','2024-01-15'),(22157164,'Dinithi','Edirisinghe','dinithiedirisinghe@gmail.com','076 2579845','2002-09-14','2023-09-01');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-21 13:20:57
