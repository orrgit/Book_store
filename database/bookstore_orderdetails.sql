-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bookstore
-- ------------------------------------------------------
-- Server version	8.0.12

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
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orderdetails` (
  `order_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderdetails_order_id` int(11) DEFAULT NULL,
  `orderdetails_book_id` int(11) DEFAULT NULL,
  `orders_order_id` int(11) DEFAULT NULL,
  `books_book_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`,`book_id`),
  KEY `fk_orderdetails_orders_idx` (`orders_order_id`),
  KEY `fk_orderdetails_books1_idx` (`books_book_id`),
  CONSTRAINT `fk_orderdetails_books1` FOREIGN KEY (`books_book_id`) REFERENCES `books` (`book_id`),
  CONSTRAINT `fk_orderdetails_orders` FOREIGN KEY (`orders_order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (110,12,1,NULL,NULL,NULL,NULL),(110,13,2,NULL,NULL,NULL,NULL),(110,14,1,NULL,NULL,NULL,NULL),(111,20,1,NULL,NULL,NULL,NULL),(112,18,1,NULL,NULL,NULL,NULL),(112,19,1,NULL,NULL,NULL,NULL),(113,15,1,NULL,NULL,NULL,NULL),(114,13,3,NULL,NULL,NULL,NULL),(115,14,1,NULL,NULL,NULL,NULL),(116,15,2,NULL,NULL,NULL,NULL),(116,19,1,NULL,NULL,NULL,NULL),(117,10,1,NULL,NULL,NULL,NULL),(117,18,1,NULL,NULL,NULL,NULL),(118,15,1,NULL,NULL,NULL,NULL),(118,19,2,NULL,NULL,NULL,NULL),(118,20,1,NULL,NULL,NULL,NULL),(119,14,1,NULL,NULL,NULL,NULL),(120,13,2,NULL,NULL,NULL,NULL),(121,11,1,NULL,NULL,NULL,NULL),(121,12,1,NULL,NULL,NULL,NULL),(122,10,1,NULL,NULL,NULL,NULL),(123,10,1,NULL,NULL,NULL,NULL),(124,13,1,NULL,NULL,NULL,NULL),(124,14,2,NULL,NULL,NULL,NULL),(124,15,1,NULL,NULL,NULL,NULL),(124,16,1,NULL,NULL,NULL,NULL),(125,17,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-05 18:40:09
