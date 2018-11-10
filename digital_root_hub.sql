-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (i386)
--
-- Host: localhost    Database: dirital_root_hub
-- ------------------------------------------------------
-- Server version	5.1.73

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
-- Table structure for table `admin_operation_logs`
--

DROP TABLE IF EXISTS `admin_operation_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_operation_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `admin_user_id` int(11) NOT NULL,
  `operation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=264 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_operation_logs`
--

LOCK TABLES `admin_operation_logs` WRITE;
/*!40000 ALTER TABLE `admin_operation_logs` DISABLE KEYS */;
INSERT INTO `admin_operation_logs` VALUES (1,'Author',86,1,'create','2013-10-04 14:17:56','2013-10-04 14:17:56'),(2,'Site',137,1,'create','2013-10-04 14:18:49','2013-10-04 14:18:49'),(3,'Site',137,1,'update','2013-10-04 14:19:07','2013-10-04 14:19:07'),(4,'Site',138,1,'create','2013-10-04 15:17:05','2013-10-04 15:17:05'),(5,'Author',87,1,'create','2013-10-05 09:34:33','2013-10-05 09:34:33'),(6,'Author',87,1,'update','2013-10-05 09:34:42','2013-10-05 09:34:42'),(7,'Site',139,1,'create','2013-10-05 09:35:18','2013-10-05 09:35:18'),(8,'Author',60,1,'destroy','2013-10-09 14:22:27','2013-10-09 14:22:27'),(9,'Site',140,1,'create','2013-10-09 14:25:10','2013-10-09 14:25:10'),(10,'Site',141,1,'create','2013-10-09 14:34:22','2013-10-09 14:34:22'),(11,'Site',142,1,'create','2013-10-13 15:03:35','2013-10-13 15:03:35'),(12,'Site',142,1,'update','2013-10-13 15:04:18','2013-10-13 15:04:18'),(13,'Media',5,1,'create','2013-10-19 17:11:48','2013-10-19 17:11:48'),(14,'Media',6,1,'create','2013-10-19 17:12:30','2013-10-19 17:12:30'),(15,'Media',6,1,'update','2013-10-19 17:12:58','2013-10-19 17:12:58'),(16,'Media',7,1,'create','2013-10-19 17:13:11','2013-10-19 17:13:11'),(17,'Media',8,1,'create','2013-10-19 17:13:34','2013-10-19 17:13:34'),(18,'Author',88,1,'create','2013-10-20 01:37:21','2013-10-20 01:37:21'),(19,'Site',143,1,'create','2013-10-20 01:38:14','2013-10-20 01:38:14'),(20,'Site',144,1,'create','2013-10-20 01:40:00','2013-10-20 01:40:00'),(21,'Author',89,1,'create','2013-10-20 01:57:19','2013-10-20 01:57:19'),(22,'Site',145,1,'create','2013-10-20 01:58:26','2013-10-20 01:58:26'),(23,'Site',146,1,'create','2013-10-20 02:09:55','2013-10-20 02:09:55'),(24,'Site',147,1,'create','2013-10-20 02:23:11','2013-10-20 02:23:11'),(25,'Site',148,1,'create','2013-10-24 17:13:20','2013-10-24 17:13:20'),(26,'Author',89,1,'update','2013-10-24 17:13:54','2013-10-24 17:13:54'),(27,'Author',83,1,'update','2013-10-24 17:13:59','2013-10-24 17:13:59'),(28,'Author',90,1,'create','2013-10-24 17:14:16','2013-10-24 17:14:16'),(29,'Site',149,1,'create','2013-10-24 17:14:51','2013-10-24 17:14:51'),(30,'Author',90,1,'update','2013-10-25 05:48:55','2013-10-25 05:48:55'),(31,'Site',2,1,'update','2013-10-25 05:49:15','2013-10-25 05:49:15'),(32,'Author',90,1,'update','2013-10-25 15:23:06','2013-10-25 15:23:06'),(33,'Author',90,1,'update','2013-10-25 15:23:10','2013-10-25 15:23:10'),(34,'Site',2,1,'update','2013-10-25 15:24:27','2013-10-25 15:24:27'),(35,'Site',2,1,'update','2013-10-25 15:24:29','2013-10-25 15:24:29'),(36,'Site',149,1,'update','2013-10-25 15:28:37','2013-10-25 15:28:37'),(37,'Site',149,1,'update','2013-10-25 15:28:42','2013-10-25 15:28:42'),(38,'Site',149,1,'update','2013-10-25 15:29:34','2013-10-25 15:29:34'),(39,'Site',149,1,'update','2013-10-25 15:30:12','2013-10-25 15:30:12'),(40,'Site',149,1,'update','2013-10-25 15:30:21','2013-10-25 15:30:21'),(41,'Site',149,1,'update','2013-10-25 15:33:38','2013-10-25 15:33:38'),(42,'Site',149,1,'update','2013-10-25 15:35:37','2013-10-25 15:35:37'),(43,'Author',90,1,'update','2013-10-25 15:49:54','2013-10-25 15:49:54'),(44,'Author',91,1,'create','2013-10-25 16:16:18','2013-10-25 16:16:18'),(45,'Author',91,1,'update','2013-10-25 16:16:23','2013-10-25 16:16:23'),(46,'Site',150,1,'create','2013-10-25 16:17:20','2013-10-25 16:17:20'),(47,'Author',92,1,'create','2013-10-25 16:40:38','2013-10-25 16:40:38'),(48,'Author',92,1,'destroy','2013-10-25 16:40:43','2013-10-25 16:40:43'),(49,'Site',151,1,'create','2013-10-26 16:46:30','2013-10-26 16:46:30'),(50,'Author',91,1,'update','2013-10-26 16:46:45','2013-10-26 16:46:45'),(51,'Author',91,1,'update','2013-10-26 16:59:08','2013-10-26 16:59:08'),(52,'Author',93,1,'create','2013-10-26 16:59:40','2013-10-26 16:59:40'),(53,'Site',152,1,'create','2013-10-26 17:00:08','2013-10-26 17:00:08'),(54,'Author',94,1,'create','2013-10-26 17:00:36','2013-10-26 17:00:36'),(55,'Site',153,1,'create','2013-10-26 17:01:04','2013-10-26 17:01:04'),(56,'Site',153,1,'update','2013-10-26 17:01:20','2013-10-26 17:01:20'),(57,'Author',95,1,'create','2013-10-26 17:01:37','2013-10-26 17:01:37'),(58,'Site',154,1,'create','2013-10-26 17:02:17','2013-10-26 17:02:17'),(59,'Site',152,1,'update','2013-10-26 17:02:39','2013-10-26 17:02:39'),(60,'Author',96,1,'create','2013-10-26 17:03:09','2013-10-26 17:03:09'),(61,'Site',155,1,'create','2013-10-26 17:03:56','2013-10-26 17:03:56'),(62,'Author',97,1,'create','2013-10-26 17:05:07','2013-10-26 17:05:07'),(63,'Site',156,1,'create','2013-10-26 17:06:01','2013-10-26 17:06:01'),(64,'Author',98,1,'create','2013-10-26 17:06:35','2013-10-26 17:06:35'),(65,'Site',157,1,'create','2013-10-26 17:07:15','2013-10-26 17:07:15'),(66,'Author',99,1,'create','2013-10-27 04:14:16','2013-10-27 04:14:16'),(67,'Author',99,1,'update','2013-11-02 13:34:59','2013-11-02 13:34:59'),(68,'Site',158,2,'create','2013-11-11 15:47:37','2013-11-11 15:47:37'),(69,'Site',159,2,'create','2013-11-14 01:10:13','2013-11-14 01:10:13'),(70,'Site',160,2,'create','2013-11-14 01:11:38','2013-11-14 01:11:38'),(71,'Site',160,2,'update','2013-11-14 01:14:15','2013-11-14 01:14:15'),(72,'Site',161,2,'create','2013-11-16 15:49:12','2013-11-16 15:49:12'),(73,'Site',162,2,'create','2013-11-16 16:22:03','2013-11-16 16:22:03'),(74,'Site',163,2,'create','2013-11-18 15:31:04','2013-11-18 15:31:04'),(75,'Site',164,2,'create','2013-11-24 03:58:54','2013-11-24 03:58:54'),(76,'Site',165,2,'create','2013-11-24 16:43:09','2013-11-24 16:43:09'),(77,'Site',50,2,'update','2013-12-08 15:06:12','2013-12-08 15:06:12'),(78,'Author',100,2,'create','2013-12-20 14:15:14','2013-12-20 14:15:14'),(79,'Site',166,2,'create','2013-12-20 14:16:54','2013-12-20 14:16:54'),(80,'Site',166,2,'update','2013-12-20 14:17:51','2013-12-20 14:17:51'),(81,'Author',101,2,'create','2013-12-20 14:36:06','2013-12-20 14:36:06'),(82,'Site',167,2,'create','2013-12-20 14:38:40','2013-12-20 14:38:40'),(83,'Site',168,2,'create','2013-12-20 14:40:15','2013-12-20 14:40:15'),(84,'Site',169,2,'create','2013-12-20 14:42:02','2013-12-20 14:42:02'),(85,'Site',170,2,'create','2013-12-20 14:56:33','2013-12-20 14:56:33'),(86,'Site',171,2,'create','2013-12-20 15:32:34','2013-12-20 15:32:34'),(87,'Media',9,1,'create','2013-12-21 08:32:48','2013-12-21 08:32:48'),(88,'Media',9,1,'update','2013-12-21 09:49:27','2013-12-21 09:49:27'),(89,'Site',170,1,'update','2013-12-21 10:14:06','2013-12-21 10:14:06'),(90,'Site',172,1,'create','2013-12-21 10:33:22','2013-12-21 10:33:22'),(91,'Author',102,2,'create','2013-12-21 21:50:58','2013-12-21 21:50:58'),(92,'Site',173,2,'create','2013-12-21 21:52:45','2013-12-21 21:52:45'),(93,'Site',174,2,'create','2013-12-21 21:54:03','2013-12-21 21:54:03'),(94,'Site',175,2,'create','2013-12-21 21:54:50','2013-12-21 21:54:50'),(95,'Author',103,2,'create','2013-12-21 22:09:31','2013-12-21 22:09:31'),(96,'Site',176,2,'create','2013-12-21 22:10:53','2013-12-21 22:10:53'),(97,'Media',10,1,'create','2013-12-23 09:28:52','2013-12-23 09:28:52'),(98,'Media',10,1,'update','2013-12-23 09:29:02','2013-12-23 09:29:02'),(99,'Media',10,1,'update','2013-12-23 09:29:16','2013-12-23 09:29:16'),(100,'Media',11,1,'create','2013-12-23 09:36:29','2013-12-23 09:36:29'),(101,'Media',11,1,'update','2013-12-23 09:36:39','2013-12-23 09:36:39'),(102,'Site',167,1,'update','2013-12-23 09:38:17','2013-12-23 09:38:17'),(103,'Site',160,1,'update','2013-12-23 09:39:32','2013-12-23 09:39:32'),(104,'Site',90,1,'update','2013-12-23 09:40:08','2013-12-23 09:40:08'),(105,'Site',161,1,'update','2013-12-23 09:41:07','2013-12-23 09:41:07'),(106,'Site',29,1,'update','2013-12-23 09:41:37','2013-12-23 09:41:37'),(107,'Site',5,1,'update','2013-12-23 09:42:01','2013-12-23 09:42:01'),(108,'Site',25,1,'update','2013-12-23 09:42:30','2013-12-23 09:42:30'),(109,'Site',93,1,'update','2013-12-23 09:42:59','2013-12-23 09:42:59'),(110,'Site',138,1,'update','2013-12-23 09:43:47','2013-12-23 09:43:47'),(111,'Site',138,1,'update','2013-12-23 09:44:01','2013-12-23 09:44:01'),(112,'Site',22,1,'update','2013-12-23 09:44:07','2013-12-23 09:44:07'),(113,'Site',164,1,'update','2013-12-23 09:45:08','2013-12-23 09:45:08'),(114,'Site',33,1,'update','2013-12-23 09:46:02','2013-12-23 09:46:02'),(115,'Site',14,1,'update','2013-12-23 09:47:15','2013-12-23 09:47:15'),(116,'Site',13,1,'update','2013-12-23 09:47:21','2013-12-23 09:47:21'),(117,'Site',147,1,'destroy','2013-12-23 09:48:12','2013-12-23 09:48:12'),(118,'Site',68,1,'update','2013-12-23 09:48:53','2013-12-23 09:48:53'),(119,'Site',58,1,'update','2013-12-23 09:49:24','2013-12-23 09:49:24'),(120,'Site',21,1,'update','2013-12-23 09:49:54','2013-12-23 09:49:54'),(121,'Site',28,1,'update','2013-12-23 09:50:18','2013-12-23 09:50:18'),(122,'Site',32,1,'update','2013-12-23 09:50:41','2013-12-23 09:50:41'),(123,'Site',142,1,'update','2013-12-23 09:51:13','2013-12-23 09:51:13'),(124,'Site',73,1,'update','2013-12-23 09:51:39','2013-12-23 09:51:39'),(125,'Site',123,1,'update','2013-12-23 09:52:32','2013-12-23 09:52:32'),(126,'Site',177,1,'create','2013-12-23 13:53:14','2013-12-23 13:53:14'),(127,'Author',104,2,'create','2013-12-23 21:55:03','2013-12-23 21:55:03'),(128,'Site',178,2,'create','2013-12-23 21:55:59','2013-12-23 21:55:59'),(129,'Site',178,2,'destroy','2013-12-23 22:00:53','2013-12-23 22:00:53'),(130,'Author',104,2,'destroy','2013-12-23 22:01:00','2013-12-23 22:01:00'),(131,'Site',179,2,'create','2013-12-23 22:01:58','2013-12-23 22:01:58'),(132,'Author',105,2,'create','2013-12-23 22:13:45','2013-12-23 22:13:45'),(133,'Site',180,2,'create','2013-12-23 22:14:58','2013-12-23 22:14:58'),(134,'Author',106,2,'create','2014-01-04 17:46:38','2014-01-04 17:46:38'),(135,'Site',181,2,'create','2014-01-04 17:48:30','2014-01-04 17:48:30'),(136,'Site',182,2,'create','2014-01-04 17:49:18','2014-01-04 17:49:18'),(137,'Author',107,1,'create','2014-01-12 12:06:32','2014-01-12 12:06:32'),(138,'Site',183,1,'create','2014-01-12 12:06:56','2014-01-12 12:06:56'),(139,'Site',183,1,'update','2014-01-12 12:07:18','2014-01-12 12:07:18'),(140,'Author',108,2,'create','2014-01-13 09:16:03','2014-01-13 09:16:03'),(141,'Site',184,2,'create','2014-01-13 09:17:25','2014-01-13 09:17:25'),(142,'Site',185,2,'create','2014-01-13 09:17:55','2014-01-13 09:17:55'),(143,'Site',186,2,'create','2014-01-18 14:19:46','2014-01-18 14:19:46'),(144,'Site',187,1,'create','2014-01-19 04:34:54','2014-01-19 04:34:54'),(145,'Author',109,1,'create','2014-01-22 16:12:08','2014-01-22 16:12:08'),(146,'Site',188,1,'create','2014-01-22 16:12:35','2014-01-22 16:12:35'),(147,'Site',189,2,'create','2014-02-21 14:00:26','2014-02-21 14:00:26'),(148,'Site',190,2,'create','2014-02-21 14:34:12','2014-02-21 14:34:12'),(149,'Site',191,2,'create','2014-02-21 14:46:47','2014-02-21 14:46:47'),(150,'Site',192,2,'create','2014-02-21 14:52:03','2014-02-21 14:52:03'),(151,'Author',110,2,'create','2014-02-23 06:34:58','2014-02-23 06:34:58'),(152,'Site',193,2,'create','2014-02-23 06:35:55','2014-02-23 06:35:55'),(153,'Site',194,2,'create','2014-02-23 06:39:38','2014-02-23 06:39:38'),(154,'Author',111,2,'create','2014-02-24 14:44:35','2014-02-24 14:44:35'),(155,'Site',195,2,'create','2014-02-24 14:46:23','2014-02-24 14:46:23'),(156,'Site',195,2,'update','2014-02-24 14:48:16','2014-02-24 14:48:16'),(157,'Site',196,2,'create','2014-02-24 14:48:43','2014-02-24 14:48:43'),(158,'Site',197,2,'create','2014-02-24 14:53:00','2014-02-24 14:53:00'),(159,'Site',198,2,'create','2014-02-24 14:55:05','2014-02-24 14:55:05'),(160,'Site',141,2,'update','2014-02-24 14:59:38','2014-02-24 14:59:38'),(161,'Author',112,1,'create','2014-03-06 13:50:50','2014-03-06 13:50:50'),(162,'Site',199,1,'create','2014-03-06 13:51:27','2014-03-06 13:51:27'),(163,'Author',113,1,'create','2014-03-06 13:53:05','2014-03-06 13:53:05'),(164,'Site',200,1,'create','2014-03-06 13:53:40','2014-03-06 13:53:40'),(165,'Site',201,1,'create','2014-03-09 11:52:10','2014-03-09 11:52:10'),(166,'Author',114,2,'create','2014-03-09 22:13:49','2014-03-09 22:13:49'),(167,'Site',202,2,'create','2014-03-09 22:15:49','2014-03-09 22:15:49'),(168,'Author',115,2,'create','2014-03-19 18:51:51','2014-03-19 18:51:51'),(169,'Site',203,2,'create','2014-03-19 18:56:12','2014-03-19 18:56:12'),(170,'Author',115,2,'update','2014-03-21 11:51:15','2014-03-21 11:51:15'),(171,'Site',204,2,'create','2014-03-29 00:26:41','2014-03-29 00:26:41'),(172,'Site',204,2,'update','2014-03-29 00:29:10','2014-03-29 00:29:10'),(173,'Site',205,2,'create','2014-03-29 01:18:22','2014-03-29 01:18:22'),(174,'Site',206,2,'create','2014-04-01 15:52:14','2014-04-01 15:52:14'),(175,'Author',116,2,'create','2014-04-11 17:24:05','2014-04-11 17:24:05'),(176,'Site',207,2,'create','2014-04-11 17:25:27','2014-04-11 17:25:27'),(177,'Site',208,2,'create','2014-04-11 17:29:43','2014-04-11 17:29:43'),(178,'Site',209,2,'create','2014-04-26 12:36:37','2014-04-26 12:36:37'),(179,'Site',210,2,'create','2014-05-03 11:35:16','2014-05-03 11:35:16'),(180,'Site',211,2,'create','2014-05-03 18:02:31','2014-05-03 18:02:31'),(181,'Site',212,2,'create','2014-05-03 18:03:16','2014-05-03 18:03:16'),(182,'Site',213,2,'create','2014-05-06 01:08:28','2014-05-06 01:08:28'),(183,'Author',117,1,'create','2014-05-24 16:39:11','2014-05-24 16:39:11'),(184,'Site',214,1,'create','2014-05-24 16:39:46','2014-05-24 16:39:46'),(185,'Site',215,1,'create','2014-05-24 16:40:07','2014-05-24 16:40:07'),(186,'Author',118,2,'create','2014-06-05 12:49:19','2014-06-05 12:49:19'),(187,'Site',216,2,'create','2014-06-05 12:50:34','2014-06-05 12:50:34'),(188,'Site',217,2,'create','2014-06-05 12:51:31','2014-06-05 12:51:31'),(189,'Site',217,2,'update','2014-06-05 12:53:28','2014-06-05 12:53:28'),(190,'Site',217,2,'update','2014-06-05 12:55:03','2014-06-05 12:55:03'),(191,'Site',218,2,'create','2014-06-05 12:55:57','2014-06-05 12:55:57'),(192,'Site',219,2,'create','2014-06-05 12:56:58','2014-06-05 12:56:58'),(193,'Site',220,2,'create','2014-06-05 13:20:52','2014-06-05 13:20:52'),(194,'Site',221,2,'create','2014-06-05 13:22:25','2014-06-05 13:22:25'),(195,'Site',222,2,'create','2014-06-05 13:33:12','2014-06-05 13:33:12'),(196,'Site',223,2,'create','2014-06-05 14:09:28','2014-06-05 14:09:28'),(197,'Site',224,2,'create','2014-06-08 14:05:52','2014-06-08 14:05:52'),(198,'Site',225,2,'create','2014-06-08 14:07:34','2014-06-08 14:07:34'),(199,'Author',119,2,'create','2014-07-06 09:10:50','2014-07-06 09:10:50'),(200,'Site',226,2,'create','2014-07-06 09:12:16','2014-07-06 09:12:16'),(201,'Site',227,2,'create','2014-07-06 09:17:02','2014-07-06 09:17:02'),(202,'Site',228,2,'create','2014-07-06 09:17:52','2014-07-06 09:17:52'),(203,'Site',229,2,'create','2014-07-06 09:20:13','2014-07-06 09:20:13'),(204,'Site',230,2,'create','2014-07-06 10:15:53','2014-07-06 10:15:53'),(205,'Author',120,2,'create','2014-07-06 10:49:16','2014-07-06 10:49:16'),(206,'Site',231,2,'create','2014-07-06 10:49:57','2014-07-06 10:49:57'),(207,'Site',232,2,'create','2014-07-06 10:53:09','2014-07-06 10:53:09'),(208,'Site',233,2,'create','2014-07-06 10:56:17','2014-07-06 10:56:17'),(209,'Site',234,2,'create','2014-07-06 11:07:12','2014-07-06 11:07:12'),(210,'Site',235,2,'create','2014-07-06 11:11:18','2014-07-06 11:11:18'),(211,'Site',236,2,'create','2014-07-06 11:24:56','2014-07-06 11:24:56'),(212,'Site',237,2,'create','2014-07-06 11:32:01','2014-07-06 11:32:01'),(213,'Site',238,2,'create','2014-07-06 11:37:36','2014-07-06 11:37:36'),(214,'Author',121,2,'create','2014-07-20 14:49:16','2014-07-20 14:49:16'),(215,'Site',239,2,'create','2014-07-20 14:50:51','2014-07-20 14:50:51'),(216,'Site',240,2,'create','2014-07-20 14:52:36','2014-07-20 14:52:36'),(217,'Site',241,2,'create','2014-07-28 16:10:38','2014-07-28 16:10:38'),(218,'Site',242,2,'create','2014-08-03 21:59:26','2014-08-03 21:59:26'),(219,'Site',243,2,'create','2014-08-14 17:06:07','2014-08-14 17:06:07'),(220,'Author',122,2,'create','2014-09-25 14:40:11','2014-09-25 14:40:11'),(221,'Site',244,2,'create','2014-09-25 14:41:06','2014-09-25 14:41:06'),(222,'Site',245,2,'create','2014-09-25 14:42:31','2014-09-25 14:42:31'),(223,'Author',123,2,'create','2014-09-25 15:24:18','2014-09-25 15:24:18'),(224,'Site',246,2,'create','2014-09-25 15:25:07','2014-09-25 15:25:07'),(225,'Site',247,2,'create','2014-09-25 15:35:22','2014-09-25 15:35:22'),(226,'Author',124,2,'create','2014-09-25 15:47:47','2014-09-25 15:47:47'),(227,'Site',248,2,'create','2014-09-25 15:49:15','2014-09-25 15:49:15'),(228,'Author',125,2,'create','2014-09-25 15:55:12','2014-09-25 15:55:12'),(229,'Site',249,2,'create','2014-09-25 15:56:04','2014-09-25 15:56:04'),(230,'Site',250,2,'create','2014-09-25 15:57:07','2014-09-25 15:57:07'),(231,'Site',251,2,'create','2014-09-25 16:02:15','2014-09-25 16:02:15'),(232,'Site',252,2,'create','2014-09-26 10:11:33','2014-09-26 10:11:33'),(233,'Site',77,2,'update','2014-09-26 10:23:04','2014-09-26 10:23:04'),(234,'Site',77,2,'destroy','2014-09-26 10:24:00','2014-09-26 10:24:00'),(235,'Site',253,2,'create','2014-09-26 10:25:05','2014-09-26 10:25:05'),(236,'Author',126,2,'create','2014-09-26 10:40:46','2014-09-26 10:40:46'),(237,'Site',254,2,'create','2014-09-26 10:41:47','2014-09-26 10:41:47'),(238,'Site',255,2,'create','2014-09-26 10:55:55','2014-09-26 10:55:55'),(239,'Author',127,2,'create','2014-09-30 15:26:06','2014-09-30 15:26:06'),(240,'Site',256,2,'create','2014-09-30 15:26:51','2014-09-30 15:26:51'),(241,'Site',257,2,'create','2014-09-30 15:30:26','2014-09-30 15:30:26'),(242,'Site',258,2,'create','2014-10-02 12:50:40','2014-10-02 12:50:40'),(243,'Author',128,2,'create','2014-10-02 22:45:25','2014-10-02 22:45:25'),(244,'Site',259,2,'create','2014-10-02 22:46:17','2014-10-02 22:46:17'),(245,'Site',260,2,'create','2014-10-02 22:47:02','2014-10-02 22:47:02'),(246,'Site',261,2,'create','2014-10-02 22:48:22','2014-10-02 22:48:22'),(247,'Site',262,2,'create','2014-10-03 10:09:08','2014-10-03 10:09:08'),(248,'Site',263,2,'create','2014-10-03 10:10:32','2014-10-03 10:10:32'),(249,'Site',264,2,'create','2014-10-04 22:19:48','2014-10-04 22:19:48'),(250,'Author',129,2,'create','2014-10-10 13:08:28','2014-10-10 13:08:28'),(251,'Site',265,2,'create','2014-10-10 13:35:24','2014-10-10 13:35:24'),(252,'Site',266,2,'create','2014-10-10 13:36:52','2014-10-10 13:36:52'),(253,'Site',267,2,'create','2014-10-10 13:37:41','2014-10-10 13:37:41'),(254,'Site',267,2,'update','2014-10-10 13:38:14','2014-10-10 13:38:14'),(255,'Site',268,2,'create','2014-10-10 13:39:23','2014-10-10 13:39:23'),(256,'Site',269,2,'create','2014-10-10 13:42:07','2014-10-10 13:42:07'),(257,'Site',270,2,'create','2014-10-10 13:48:52','2014-10-10 13:48:52'),(258,'Author',130,2,'create','2014-10-12 21:45:40','2014-10-12 21:45:40'),(259,'Site',271,2,'create','2014-10-12 21:46:12','2014-10-12 21:46:12'),(260,'Site',272,2,'create','2014-10-12 21:47:01','2014-10-12 21:47:01'),(261,'Site',273,2,'create','2014-12-25 01:43:42','2014-12-25 01:43:42'),(262,'Author',35,1,'update','2014-12-26 12:51:34','2014-12-26 12:51:34'),(263,'Site',188,1,'update','2014-12-26 13:02:34','2014-12-26 13:02:34');
/*!40000 ALTER TABLE `admin_operation_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `crypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `preferences` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admin_users_on_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'baban','ba-n','admin','babanba.n@gmail.com',1,'154601c28ef7-e6d10b16fa28','769ff65ec64b449a4bcb4dbab7ba5fc02020268f','d85ad994209fbd083c13366f44dbbdf7dfef6186','---\n:locale: ja\n','2013-09-26 15:18:39','2013-09-26 15:18:49'),(2,'玉露','適当','editor','gyokurotei@hotmail.com',1,'19a454441c28-ccfa4b5f9063','ab32e0a4018acd46c204db6471b2c5e1565f54ea','89836f5088c95757e449e05b0848ffc82c75adc7','---\n:locale: ja\n','2013-10-22 16:59:01','2013-10-22 17:05:25');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_kana` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `publiced` tinyint(1) NOT NULL DEFAULT '1',
  `memo` text COLLATE utf8_unicode_ci,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_authors_on_name_kana` (`name_kana`),
  KEY `index_authors_on_category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'蒼緋','そうひ','2013-06-30 06:26:26','2013-06-30 06:26:26',1,NULL,0,NULL),(2,'軍魔','ぐんま','2013-06-30 06:26:26','2013-06-30 06:26:26',1,NULL,0,NULL),(3,'鳩麦麦茶','はとむぎむぎちゃ','2013-06-30 06:26:26','2013-06-30 06:26:26',1,NULL,0,NULL),(4,'JEKYLL','JEKYLL','2013-09-25 16:05:00','2013-09-28 12:57:52',1,NULL,0,NULL),(5,'ryo','ryo','2013-09-25 16:18:35','2013-09-25 16:18:35',1,NULL,0,NULL),(6,'朝奈','あさな','2013-09-25 16:19:32','2013-09-25 16:19:32',1,NULL,0,NULL),(7,'幸鳥','さちどり','2013-09-25 16:19:56','2013-09-25 16:19:56',1,NULL,0,NULL),(8,'せぐ','せぐ','2013-09-25 16:20:06','2013-09-25 16:20:06',1,NULL,0,NULL),(9,'遠野みりん','とおのみりん','2013-09-25 16:20:24','2013-09-25 16:20:24',1,NULL,0,NULL),(10,'まぁむ','まぁむ','2013-09-25 16:20:34','2013-09-25 16:20:34',1,NULL,0,NULL),(11,'ラタヒ','らたひ','2013-09-25 16:20:49','2013-09-29 15:00:33',1,NULL,0,NULL),(12,'一本杉','いっぽんすぎ','2013-09-26 15:26:20','2013-09-28 02:56:02',1,NULL,0,NULL),(13,'綾香','あやか','2013-09-26 15:36:56','2013-09-28 02:58:30',1,NULL,0,NULL),(14,'tri','tri','2013-09-26 15:41:46','2013-09-26 15:41:46',1,NULL,0,NULL),(15,'悠','ゆう','2013-09-26 15:47:51','2013-09-28 02:56:21',1,NULL,0,NULL),(16,'舞斗','まいと','2013-09-26 15:54:16','2013-09-28 02:58:16',1,NULL,0,NULL),(17,'recoba167','recoba167','2013-09-26 15:59:11','2013-09-28 02:58:02',1,NULL,0,NULL),(18,'ラク','らく','2013-09-26 16:00:59','2013-09-28 02:56:48',1,NULL,0,NULL),(19,'キリン','きりん','2013-09-26 16:04:50','2013-09-28 02:57:01',1,NULL,0,NULL),(20,'将','まさ','2013-09-26 16:06:03','2013-09-28 02:57:54',1,NULL,0,NULL),(21,'沖山龍花','おきやまりゅうか','2013-09-26 16:08:21','2013-09-28 03:16:23',1,NULL,0,NULL),(22,'eG','eG','2013-09-26 16:16:08','2013-09-26 16:16:08',1,NULL,0,NULL),(23,'アリスアリス','ありすありす','2013-09-26 16:20:06','2013-09-28 02:57:43',1,NULL,0,NULL),(24,'hbrk','hbrk','2013-09-26 16:22:24','2013-09-26 16:22:24',1,NULL,0,NULL),(25,'倉庫番','そうこばん','2013-09-26 16:30:36','2013-09-28 02:57:27',1,NULL,0,NULL),(26,'ＭＯＭＯ','MOMO','2013-09-28 03:00:20','2013-09-28 03:00:20',1,NULL,0,NULL),(27,'KAZAMI','KAZAMI','2013-09-28 03:03:55','2013-09-28 03:03:55',1,NULL,0,NULL),(28,'SABO','SABO','2013-09-28 03:05:16','2013-09-28 03:05:16',1,NULL,0,NULL),(29,'Aegis','Aegis','2013-09-28 03:07:15','2013-09-28 03:07:15',1,NULL,0,NULL),(30,'にわとり','にわとり','2013-09-28 03:26:00','2013-09-28 03:26:00',1,NULL,0,NULL),(31,'日なた猫','ひなたねこ','2013-09-28 03:36:15','2013-09-28 03:36:15',1,NULL,0,NULL),(32,'やすらMIMI','やすらみみ','2013-09-28 03:54:20','2013-09-28 03:54:20',1,NULL,0,NULL),(33,'Mel','Mel','2013-09-28 03:55:59','2013-09-28 03:55:59',1,NULL,0,NULL),(34,'haira','haira','2013-09-28 03:57:32','2013-09-28 03:57:32',1,NULL,0,NULL),(35,'39+a ','39+a ','2013-09-28 11:04:12','2014-12-26 12:51:34',0,NULL,0,NULL),(37,'Pluvia ','Pluvia','2013-09-28 12:16:30','2013-09-28 12:16:30',1,NULL,0,NULL),(38,'izanagi','izanagi','2013-09-28 12:18:35','2013-09-28 12:18:35',1,NULL,0,NULL),(39,'大麦','おおむぎ','2013-09-28 12:30:26','2013-09-28 12:30:26',1,NULL,0,NULL),(40,'匣庭くるり','はこにわくるり','2013-09-28 12:36:57','2013-09-28 12:36:57',1,NULL,0,NULL),(41,'大和','やまと','2013-09-28 16:12:35','2013-09-28 16:12:35',1,NULL,0,NULL),(42,'zenigebakun','zenigebakun','2013-09-28 16:15:49','2013-09-28 16:15:49',1,NULL,0,NULL),(43,'一個點','ICHITEN','2013-09-28 16:20:30','2013-09-28 16:20:48',1,NULL,0,NULL),(44,'To7','とな','2013-09-28 23:13:10','2013-09-28 23:13:10',1,NULL,0,NULL),(45,'まひろ','まひろ','2013-09-28 23:22:57','2013-09-28 23:22:57',1,NULL,0,NULL),(46,'Totori','Totori','2013-09-29 13:49:29','2013-09-29 13:49:29',1,NULL,0,NULL),(47,'落下','らっか','2013-09-29 13:57:41','2013-09-29 13:57:41',1,NULL,0,NULL),(48,'N.','N.','2013-09-29 14:02:00','2013-09-29 14:02:00',1,NULL,0,NULL),(49,'MOTA','MOTA','2013-09-29 14:05:43','2013-09-29 14:05:43',1,NULL,0,NULL),(50,'vertex','vertex','2013-09-29 14:14:25','2013-09-29 14:14:25',1,NULL,0,NULL),(51,'keari','keari','2013-09-29 14:36:12','2013-09-29 14:36:12',1,NULL,0,NULL),(52,' 飯盛り女','めしもりおんな','2013-09-29 14:41:12','2013-09-29 14:41:12',1,NULL,0,NULL),(53,'Ukura','Ukura','2013-09-29 14:42:43','2013-09-29 14:42:43',1,NULL,0,NULL),(54,'詩乃','しの','2013-09-29 14:45:18','2013-09-29 14:45:18',1,NULL,0,NULL),(55,'さつき','さつき','2013-09-29 14:50:26','2013-09-29 14:50:26',1,NULL,0,NULL),(56,'Molpno@ls ','Molpno@ls ','2013-09-29 14:55:53','2013-09-29 14:55:53',1,NULL,0,NULL),(57,'５年目の新参者','ごねんめのしんざんもの','2013-09-29 15:02:56','2013-09-29 15:02:56',1,NULL,0,NULL),(58,'R10','R10','2013-09-29 17:28:32','2013-09-29 17:28:32',1,NULL,0,NULL),(59,'BM','BM','2013-09-29 17:33:51','2013-09-29 17:33:51',1,NULL,0,NULL),(61,'gungun','gungun','2013-09-29 17:46:39','2013-09-29 17:46:39',1,NULL,0,NULL),(62,'ぽぽぽっち','ぽぽぽっち','2013-09-30 14:44:10','2013-09-30 14:44:10',1,NULL,0,NULL),(63,'さけ','さけ','2013-09-30 14:47:35','2013-09-30 14:47:35',1,NULL,0,NULL),(64,'アルル','あるる','2013-09-30 14:59:09','2013-09-30 14:59:09',1,NULL,0,NULL),(65,'faces','faces','2013-09-30 15:01:39','2013-09-30 15:01:39',1,NULL,0,NULL),(66,'ネクロでぃすく','ねくろでぃすく','2013-09-30 15:05:17','2013-09-30 15:05:17',1,NULL,0,NULL),(67,'goldwing','goldwing','2013-09-30 15:26:42','2013-09-30 15:26:42',1,NULL,0,NULL),(68,' (･∀･∀･)',' (･∀･∀･)','2013-10-01 14:59:55','2013-10-01 14:59:55',0,NULL,0,NULL),(69,'上総ゆう','かみそうゆう','2013-10-01 15:01:40','2013-10-01 15:01:40',0,NULL,0,NULL),(70,'ラクスク','らくすく','2013-10-01 15:03:06','2013-10-01 15:03:06',0,NULL,0,NULL),(71,'ファンシー海','ふぁんしーかい','2013-10-01 15:05:04','2013-10-01 15:09:36',0,NULL,0,NULL),(72,'いは','いは','2013-10-01 15:10:27','2013-10-01 15:10:27',1,NULL,0,NULL),(73,'流星回天','流星回天 ','2013-10-01 15:15:57','2013-10-01 15:15:57',1,NULL,0,NULL),(74,'ゾナ','ぞな','2013-10-01 15:21:31','2013-10-01 15:21:31',1,NULL,0,NULL),(75,'野良MAD製作所','のらまっどせいさくしょ','2013-10-03 13:49:44','2013-10-03 13:49:44',1,NULL,0,NULL),(76,'7AS -Seventh Azure Shield-','7AS -Seventh Azure Shield-','2013-10-03 13:51:22','2013-10-03 13:51:22',1,NULL,0,NULL),(77,'CREST','CREST','2013-10-03 13:53:29','2013-10-03 13:53:29',1,NULL,0,NULL),(79,'かずゅ','かずゅ','2013-10-03 13:58:48','2013-10-03 13:59:32',0,NULL,0,NULL),(80,'らはいなルナ','らはいなるな','2013-10-03 14:00:10','2013-10-03 14:03:11',0,NULL,0,NULL),(81,'向坂廿楽','向坂廿楽','2013-10-03 14:01:18','2013-10-03 14:01:20',0,NULL,0,NULL),(82,'k3','k3','2013-10-03 14:02:24','2013-10-03 14:03:00',0,NULL,0,NULL),(83,' lightpi',' lightpi','2013-10-03 14:03:41','2013-10-03 14:03:43',0,NULL,0,NULL),(84,'ティム','てぃむ','2013-10-03 14:45:47','2013-10-03 14:45:47',1,NULL,0,NULL),(85,'宮岡 リン','みやおかりん','2013-10-03 14:59:52','2013-10-03 14:59:52',1,NULL,0,NULL),(86,' ロリっち','ろりっち','2013-10-04 14:17:56','2013-10-04 14:17:56',1,NULL,0,NULL),(87,'SS','SS','2013-10-05 09:34:33','2013-10-05 09:34:42',1,NULL,0,NULL),(88,'ROIDO','ROIDO','2013-10-20 01:37:21','2013-10-20 01:37:21',1,NULL,0,NULL),(89,'linehiki','linehiki','2013-10-20 01:57:19','2013-10-20 01:57:19',1,NULL,0,NULL),(90,'綾香','あやか','2013-10-24 17:14:16','2013-10-24 17:14:16',0,NULL,0,NULL),(91,'ひとみすいれん','ひとみすいれん','2013-10-25 16:16:18','2013-10-25 16:16:23',0,NULL,0,NULL),(92,'','','2013-10-25 16:40:38','2013-10-25 16:40:38',1,NULL,0,'2013-10-25 16:40:43'),(93,'JED','JED','2013-10-26 16:59:40','2013-10-26 16:59:40',0,NULL,0,NULL),(94,'矛盾王','BE -La Belle Equipe- ','2013-10-26 17:00:36','2013-10-26 17:00:38',0,NULL,0,NULL),(95,'kk','kk','2013-10-26 17:01:37','2013-10-26 17:01:40',0,NULL,0,NULL),(96,'papa','papa','2013-10-26 17:03:09','2013-10-26 17:05:10',0,NULL,0,NULL),(97,'YoGAN','YoGAN','2013-10-26 17:05:07','2013-10-26 17:05:07',0,NULL,0,NULL),(98,'yu～k\'A','yu～k\'A','2013-10-26 17:06:35','2013-10-26 17:06:38',0,NULL,0,NULL),(99,'taku','taku','2013-10-27 04:14:16','2013-10-27 04:14:16',0,NULL,0,NULL),(100,'まわる','まわる','2013-12-20 14:15:14','2013-12-20 14:15:14',1,NULL,0,NULL),(101,'Argent','Argent','2013-12-20 14:36:06','2013-12-20 14:36:06',1,NULL,0,NULL),(102,'チョコ猫','ちょこねこ','2013-12-21 21:50:58','2013-12-21 21:50:58',1,NULL,0,NULL),(103,'徒','むだ','2013-12-21 22:09:31','2013-12-21 22:09:31',1,NULL,0,NULL),(104,'らいんひき','らいんひき','2013-12-23 21:55:03','2013-12-23 21:55:03',1,NULL,0,'2013-12-23 22:01:00'),(105,'イヴァン','いう゛ぁん','2013-12-23 22:13:45','2013-12-23 22:13:45',1,NULL,0,NULL),(106,'カンチ','かんち','2014-01-04 17:46:38','2014-01-04 17:46:38',1,NULL,0,NULL),(107,'懸垂','けんすい','2014-01-12 12:06:32','2014-01-12 12:06:32',1,NULL,0,NULL),(108,'KINO','KINO','2014-01-13 09:16:03','2014-01-13 09:16:03',1,NULL,0,NULL),(109,'HIBARI','HIBARI','2014-01-22 16:12:08','2014-01-22 16:12:08',1,NULL,0,NULL),(110,'rikky','rikky','2014-02-23 06:34:58','2014-02-23 06:34:58',1,NULL,0,NULL),(111,'ほりぞ','ほりぞ','2014-02-24 14:44:35','2014-02-24 14:44:35',1,NULL,0,NULL),(112,'牌龍','はいりゅう','2014-03-06 13:50:50','2014-03-06 13:50:50',1,NULL,0,NULL),(113,'Cranberry','Cranberry','2014-03-06 13:53:05','2014-03-06 13:53:05',1,NULL,0,NULL),(114,'うんたん','うんたん','2014-03-09 22:13:49','2014-03-09 22:13:49',1,NULL,0,NULL),(115,'小一二P','小一二P','2014-03-19 18:51:51','2014-03-21 11:51:15',1,NULL,0,NULL),(116,'もぐら','もぐら','2014-04-11 17:24:05','2014-04-11 17:24:05',1,NULL,0,NULL),(117,'+@4','plusat4','2014-05-24 16:39:10','2014-05-24 16:39:10',1,NULL,0,NULL),(118,'VAVA','VAVA','2014-06-05 12:49:19','2014-06-05 12:49:19',1,NULL,0,NULL),(119,'迷路P','めいろP','2014-07-06 09:10:50','2014-07-06 09:10:50',1,NULL,0,NULL),(120,'るこちゃ','るこちゃ','2014-07-06 10:49:16','2014-07-06 10:49:16',1,NULL,0,NULL),(121,'Neko3000','ねこさんぜん','2014-07-20 14:49:16','2014-07-20 14:49:16',1,NULL,0,NULL),(122,'OSC','OSC','2014-09-25 14:40:11','2014-09-25 14:40:11',1,NULL,0,NULL),(123,'真紅るり','しんくるり','2014-09-25 15:24:18','2014-09-25 15:24:18',1,NULL,0,NULL),(124,'きらりん','きらりん','2014-09-25 15:47:47','2014-09-25 15:47:47',1,NULL,0,NULL),(125,'デルソル','でるそる','2014-09-25 15:55:12','2014-09-25 15:55:12',1,NULL,0,NULL),(126,'ガラス','がらす','2014-09-26 10:40:46','2014-09-26 10:40:46',1,NULL,0,NULL),(127,'はし','はし','2014-09-30 15:26:06','2014-09-30 15:26:06',1,NULL,0,NULL),(128,'seguimi','seguimi','2014-10-02 22:45:25','2014-10-02 22:45:25',1,NULL,0,NULL),(129,'琴子','ことこ','2014-10-10 13:08:28','2014-10-10 13:08:28',1,NULL,0,NULL),(130,'牛丼','ぎゅうどん','2014-10-12 21:45:40','2014-10-12 21:45:40',1,NULL,0,NULL);
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generetta_cases`
--

DROP TABLE IF EXISTS `generetta_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generetta_cases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `generetta_method_id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generetta_cases`
--

LOCK TABLES `generetta_cases` WRITE;
/*!40000 ALTER TABLE `generetta_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `generetta_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generetta_col_labels`
--

DROP TABLE IF EXISTS `generetta_col_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generetta_col_labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `generetta_context_id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generetta_col_labels`
--

LOCK TABLES `generetta_col_labels` WRITE;
/*!40000 ALTER TABLE `generetta_col_labels` DISABLE KEYS */;
/*!40000 ALTER TABLE `generetta_col_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generetta_context_filters`
--

DROP TABLE IF EXISTS `generetta_context_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generetta_context_filters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `generetta_context_id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generetta_context_filters`
--

LOCK TABLES `generetta_context_filters` WRITE;
/*!40000 ALTER TABLE `generetta_context_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `generetta_context_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generetta_contexts`
--

DROP TABLE IF EXISTS `generetta_contexts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generetta_contexts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `generetta_method_id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generetta_contexts`
--

LOCK TABLES `generetta_contexts` WRITE;
/*!40000 ALTER TABLE `generetta_contexts` DISABLE KEYS */;
/*!40000 ALTER TABLE `generetta_contexts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generetta_controllers`
--

DROP TABLE IF EXISTS `generetta_controllers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generetta_controllers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generetta_controllers`
--

LOCK TABLES `generetta_controllers` WRITE;
/*!40000 ALTER TABLE `generetta_controllers` DISABLE KEYS */;
/*!40000 ALTER TABLE `generetta_controllers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generetta_methods`
--

DROP TABLE IF EXISTS `generetta_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generetta_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `generetta_model_id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generetta_methods`
--

LOCK TABLES `generetta_methods` WRITE;
/*!40000 ALTER TABLE `generetta_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `generetta_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generetta_models`
--

DROP TABLE IF EXISTS `generetta_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generetta_models` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generetta_models`
--

LOCK TABLES `generetta_models` WRITE;
/*!40000 ALTER TABLE `generetta_models` DISABLE KEYS */;
/*!40000 ALTER TABLE `generetta_models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generetta_row_labels`
--

DROP TABLE IF EXISTS `generetta_row_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generetta_row_labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `generetta_context_id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generetta_row_labels`
--

LOCK TABLES `generetta_row_labels` WRITE;
/*!40000 ALTER TABLE `generetta_row_labels` DISABLE KEYS */;
/*!40000 ALTER TABLE `generetta_row_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,'サイト','/media_icon/01.png','2013-09-25 23:40:23','2013-10-19 16:39:03'),(2,'Twitter','/media_icon/02.png','2013-09-25 23:40:32','2013-10-19 16:39:20'),(3,'ニコニコ動画','/media_icon/03.png','2013-09-25 23:40:49','2013-10-19 16:39:27'),(4,'tumblr','/media_icon/04.png','2013-09-25 23:47:03','2013-10-19 16:39:34'),(5,'vimeo','/media_icon/05.png','2013-10-20 08:55:37','2013-10-20 08:55:51'),(9,'YouTube','/media_icon/06.png','2013-12-21 08:32:48','2013-12-21 09:49:27'),(10,'Pixiv','/media_icon/07.gif','2013-12-23 09:28:52','2013-12-23 09:29:16'),(11,'blog','/media_icon/08.gif','2013-12-23 09:36:29','2013-12-23 09:36:39');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20120427000000'),('20120427000010'),('20130628122338'),('20130628122423'),('20130628122446'),('20130630104146'),('20130630104222'),('20130630105127'),('20130816011738'),('20130818080107'),('20130818080122'),('20130818110652'),('20130922095544'),('20130926002607'),('20130926002846'),('20131001134811'),('20131001134836'),('20131002004429'),('20131019142054'),('20131019142242'),('20131020092250'),('20131020092439');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `href` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  `publiced_at` datetime DEFAULT NULL,
  `closed_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `publiced` tinyint(1) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '0',
  `memo` text COLLATE utf8_unicode_ci,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_sites_on_author_id` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
INSERT INTO `sites` VALUES (2,'Twitter','https://twitter.com/souhi208',1,2,NULL,NULL,'2013-06-30 06:57:47','2013-09-28 03:12:30',1,0,NULL,NULL),(3,'ニコニコ','http://www.nicovideo.jp/mylist/10007921',1,3,NULL,NULL,'2013-06-30 06:57:47','2013-09-28 03:12:51',1,0,NULL,NULL),(4,'Twitter','https://twitter.com/jekyll59',4,2,NULL,NULL,'2013-09-25 16:05:23','2013-09-28 12:56:55',1,0,NULL,NULL),(5,'タイロットエンド','http://yarusenasasuguru.cocolog-nifty.com/blog/',5,11,NULL,NULL,'2013-09-25 16:22:11','2013-12-23 09:42:01',1,0,'',NULL),(6,'Twitter','https://twitter.com/MADryo',5,2,NULL,NULL,'2013-09-25 16:23:02','2013-09-28 11:12:52',1,0,NULL,NULL),(7,'ニコニコ','http://www.nicovideo.jp/mylist/17022696',11,3,NULL,NULL,'2013-09-25 16:24:59','2013-09-28 11:31:30',1,0,NULL,NULL),(8,'ニコニコ','http://www.nicovideo.jp/mylist/12418221',6,3,NULL,NULL,'2013-09-25 16:26:24','2013-09-28 12:23:23',1,0,NULL,NULL),(9,'ニコニコ','http://www.nicovideo.jp/mylist/10336546',2,3,NULL,NULL,'2013-09-25 16:28:26','2013-09-30 16:20:10',1,0,NULL,NULL),(10,'鳥の巣','http://konotori.web.fc2.com/',7,1,NULL,NULL,'2013-09-25 23:41:05','2013-09-25 23:41:05',1,0,NULL,NULL),(11,'ニコニコ','http://www.nicovideo.jp/mylist/11859412',7,3,NULL,NULL,'2013-09-25 23:41:39','2013-09-25 23:41:39',1,0,NULL,NULL),(12,'Twitter','https://twitter.com/sachidori00',7,2,NULL,NULL,'2013-09-25 23:42:10','2013-09-25 23:42:10',1,0,NULL,NULL),(13,'とあるMADの作り方','http://seguimi.blog.fc2.com/',8,11,NULL,NULL,'2013-09-25 23:46:15','2013-12-23 09:47:21',1,0,'',NULL),(14,'tumblr','http://seguimiii.tumblr.com/',8,4,NULL,NULL,'2013-09-25 23:46:47','2013-12-23 09:47:15',1,0,'',NULL),(15,'Twitter','https://twitter.com/seguimiii',8,2,NULL,NULL,'2013-09-25 23:47:52','2013-09-25 23:47:52',1,0,NULL,NULL),(16,'ニコニコ','http://www.nicovideo.jp/mylist/31927331',8,3,NULL,NULL,'2013-09-25 23:48:23','2013-09-25 23:48:23',1,0,NULL,NULL),(17,'niko','http://www.nicovideo.jp/user/7924108',9,3,NULL,NULL,'2013-09-25 23:49:27','2013-09-25 23:49:27',1,0,NULL,NULL),(18,'ニコ','http://www.nicovideo.jp/my/mylist/4760777',3,3,NULL,NULL,'2013-09-25 23:50:12','2013-09-25 23:50:12',1,0,NULL,NULL),(19,'twitter','https://twitter.com/haomu_gi',3,2,NULL,NULL,'2013-09-25 23:50:44','2013-09-25 23:50:44',1,0,NULL,NULL),(20,'ニコニコ','http://www.nicovideo.jp/mylist/24838000',10,3,NULL,NULL,'2013-09-25 23:51:56','2013-09-25 23:51:56',1,0,NULL,NULL),(21,'vimeo','http://vimeo.com/user8303130',10,5,NULL,NULL,'2013-09-25 23:52:25','2013-12-23 09:49:54',1,0,'',NULL),(22,'32g','http://ipponsugi.blog59.fc2.com/',12,11,NULL,NULL,'2013-09-26 15:26:44','2013-12-23 09:44:07',1,0,'',NULL),(23,'s.A','http://asanana.web.fc2.com/',6,1,NULL,NULL,'2013-09-26 15:34:53','2013-09-26 15:34:53',1,0,NULL,NULL),(24,'Revival','http://page.freett.com/ayaka2/',13,1,NULL,NULL,'2013-09-26 15:37:25','2013-09-26 15:37:25',1,0,NULL,NULL),(25,'PELTAS2 ','http://peltas2.blog74.fc2.com/',14,11,NULL,NULL,'2013-09-26 15:42:07','2013-12-23 09:42:30',1,0,'',NULL),(26,'永遠の舞踏会','http://www.geocities.jp/eternal_waltz/',15,1,NULL,NULL,'2013-09-26 15:48:28','2013-09-26 15:48:28',1,0,NULL,NULL),(27,'コニー・蛮倉庫','http://www.geocities.jp/kcgmr811/',16,1,NULL,NULL,'2013-09-26 15:54:45','2013-09-26 15:54:45',1,0,NULL,NULL),(28,'コニー・蛮倉庫 日記','http://d.hatena.ne.jp/maito52/',16,11,NULL,NULL,'2013-09-26 15:55:23','2013-12-23 09:50:18',1,0,'',NULL),(29,'自律行動型イソギンチャク ','http://nano123mad.blog47.fc2.com/',17,11,NULL,NULL,'2013-09-26 15:59:26','2013-12-23 09:41:37',1,0,'',NULL),(30,'洗濯処-全自動-','http://www.geocities.jp/rakuraku7772000/',18,1,NULL,NULL,'2013-09-26 16:01:17','2013-09-26 16:01:17',1,0,NULL,NULL),(31,'淡麗＜生＞','http://kirin91.jimdo.com/video/',19,1,NULL,NULL,'2013-09-26 16:05:35','2013-09-26 16:05:35',1,0,NULL,NULL),(32,'月夜鴉','http://yogarasu2.blog116.fc2.com/',20,11,NULL,NULL,'2013-09-26 16:06:22','2013-12-23 09:50:41',1,0,'',NULL),(33,'電撃文庫と堕落生活＊でんだら＊','http://okiyama.blog19.fc2.com/',21,11,NULL,NULL,'2013-09-26 16:08:43','2013-12-23 09:46:02',1,0,'',NULL),(34,'niko','http://www.nicovideo.jp/mylist/2127480',21,3,NULL,NULL,'2013-09-26 16:09:24','2013-09-26 16:09:24',1,0,NULL,NULL),(35,'なまえのないぺーじ（仮）','http://page.freett.com/gimlet_empereur/',22,1,NULL,NULL,'2013-09-26 16:16:32','2013-09-26 16:16:32',1,0,NULL,NULL),(36,'飛蚊亭','http://hibuntei.sakura.ne.jp/',23,1,NULL,NULL,'2013-09-26 16:20:28','2013-09-26 16:20:28',1,0,NULL,NULL),(37,'まっパ','http://hbrk.blog29.fc2.com/',24,1,NULL,NULL,'2013-09-26 16:22:43','2013-09-26 16:22:43',1,0,NULL,NULL),(38,'niko','倉庫番',25,3,NULL,NULL,'2013-09-26 16:30:46','2013-09-26 16:30:46',1,0,NULL,NULL),(39,'物置小屋 ','http://www99.sakura.ne.jp/~soukobang/index.htm',25,1,NULL,NULL,'2013-09-26 16:31:49','2013-09-26 16:31:49',1,0,NULL,NULL),(40,'めずらばん','http://www.geocities.jp/kagiyasu01/',26,1,NULL,NULL,'2013-09-28 03:00:53','2013-09-28 03:00:53',1,0,NULL,NULL),(41,'MAD倉庫','http://www.nicovideo.jp/mylist/22690568',27,3,NULL,NULL,'2013-09-28 03:04:19','2013-09-28 03:04:19',1,0,NULL,NULL),(42,'SA_BO1 ','https://twitter.com/SA_BO1',28,2,NULL,NULL,'2013-09-28 03:05:51','2013-09-28 03:05:51',1,0,NULL,NULL),(43,'自作MAD','http://www.nicovideo.jp/mylist/21967871',28,3,NULL,NULL,'2013-09-28 03:06:18','2013-09-28 03:06:18',1,0,NULL,NULL),(44,'AegisP3','https://twitter.com/AegisP3',29,2,NULL,NULL,'2013-09-28 03:07:41','2013-09-28 03:07:41',1,0,NULL,NULL),(45,'AegisのMAD','http://www.nicovideo.jp/mylist/21428600',29,3,NULL,NULL,'2013-09-28 03:08:30','2013-09-28 03:08:30',1,0,NULL,NULL),(46,'okiyama','https://twitter.com/okiyama',21,2,NULL,NULL,'2013-09-28 03:16:53','2013-09-28 03:16:53',1,0,NULL,NULL),(47,'sugi_moto ','https://twitter.com/sugi_moto',12,2,NULL,NULL,'2013-09-28 03:17:37','2013-09-28 03:17:37',1,0,NULL,NULL),(48,'鳩麦ん家 ','http://kunisakisaikou.web.fc2.com/',3,1,NULL,NULL,'2013-09-28 03:19:20','2013-09-28 03:19:20',1,0,NULL,NULL),(49,'soukobang ','https://twitter.com/soukobang',25,2,NULL,NULL,'2013-09-28 03:20:25','2013-09-28 03:20:25',1,0,NULL,NULL),(50,'Sanana_','https://twitter.com/Sanana_',6,2,NULL,NULL,'2013-09-28 03:21:55','2013-12-08 15:06:12',1,0,'',NULL),(51,'作ったもの（増える予定）','http://www.nicovideo.jp/mylist/4704593',17,3,NULL,NULL,'2013-09-28 03:22:55','2013-09-28 03:22:55',1,0,NULL,NULL),(52,'recoba167','https://twitter.com/recoba167',17,2,NULL,NULL,'2013-09-28 03:23:26','2013-09-28 03:23:26',1,0,NULL,NULL),(53,'niwa9','https://twitter.com/niwa9',30,2,NULL,NULL,'2013-09-28 03:26:26','2013-09-28 03:26:26',1,0,NULL,NULL),(54,'にわとり小屋','http://www.nicovideo.jp/user/21482/mylist',30,3,NULL,NULL,'2013-09-28 03:27:33','2013-09-28 03:27:33',1,0,NULL,NULL),(55,'gunma ','https://twitter.com/gunma',2,2,NULL,NULL,'2013-09-28 03:28:16','2013-09-28 03:28:16',1,0,NULL,NULL),(56,'VISITOR','http://www7b.biglobe.ne.jp/~visitor/visitor2.html',2,1,NULL,NULL,'2013-09-28 03:30:55','2013-09-28 03:30:55',1,0,NULL,NULL),(57,'投稿','http://www.nicovideo.jp/user/8501394/video',31,3,NULL,NULL,'2013-09-28 03:37:02','2013-09-28 03:37:02',1,0,NULL,NULL),(58,'大盛猫屋敷～迷家～','http://oomorinekoyasiki.blog87.fc2.com/',31,11,NULL,NULL,'2013-09-28 03:41:00','2013-12-23 09:49:24',1,0,'',NULL),(59,'やすらMIMI','http://www.nicovideo.jp/user/27674297',32,3,NULL,NULL,'2013-09-28 03:54:53','2013-09-28 03:54:53',1,0,NULL,NULL),(60,'自作','http://www.nicovideo.jp/mylist/29639739',33,3,NULL,NULL,'2013-09-28 03:56:30','2013-09-28 03:56:30',1,0,NULL,NULL),(61,'マイリスト一覧','http://www.nicovideo.jp/user/682154/mylist',34,3,NULL,NULL,'2013-09-28 03:57:50','2013-09-28 03:57:50',1,0,NULL,NULL),(62,'MAD','http://www.nicovideo.jp/mylist/25016327',35,3,NULL,NULL,'2013-09-28 11:04:42','2013-09-28 11:04:42',1,0,NULL,NULL),(63,'ニコニコ','http://www.nicovideo.jp/mylist/2894465',5,3,NULL,NULL,'2013-09-28 11:14:05','2013-09-28 11:14:05',1,0,NULL,NULL),(64,'soseihinataneko ','https://twitter.com/soseihinataneko',31,2,NULL,NULL,'2013-09-28 11:24:44','2013-09-28 11:24:44',1,0,NULL,NULL),(65,'作ったもの','http://www.nicovideo.jp/mylist/5599205',37,3,NULL,NULL,'2013-09-28 12:16:48','2013-09-28 12:16:48',1,0,NULL,NULL),(66,'投稿動画','http://www.nicovideo.jp/user/1293821/video',38,3,NULL,NULL,'2013-09-28 12:21:26','2013-09-28 12:21:26',1,0,NULL,NULL),(67,'作ったもの','http://www.nicovideo.jp/mylist/27044929',39,3,NULL,NULL,'2013-09-28 12:30:56','2013-09-28 12:30:56',1,0,NULL,NULL),(68,'がれまど','http://garekinomad.blog120.fc2.com/',40,11,NULL,NULL,'2013-09-28 12:37:17','2013-12-23 09:48:53',1,0,'',NULL),(69,'ニコニコ','http://www.nicovideo.jp/mylist/4343462',40,3,NULL,NULL,'2013-09-28 12:37:41','2013-09-28 12:37:41',1,0,NULL,NULL),(70,'kurukururin','https://twitter.com/kururin9X1',40,2,NULL,NULL,'2013-09-28 12:38:10','2013-09-28 12:38:10',1,0,NULL,NULL),(71,'haira movie works','http://haira-mw.jimdo.com/',34,1,NULL,NULL,'2013-09-28 13:05:02','2013-09-28 13:05:02',1,0,NULL,NULL),(72,'投稿動画','http://www.nicovideo.jp/user/25300785/video',41,3,NULL,NULL,'2013-09-28 16:13:06','2013-09-28 16:13:06',1,0,NULL,NULL),(73,'YouTube','http://www.youtube.com/user/Msk666ableKai?feature=watch',41,9,NULL,NULL,'2013-09-28 16:13:48','2013-12-23 09:51:39',1,0,'',NULL),(74,'最新ニコレポ','http://www.nicovideo.jp/user/23777164',42,3,NULL,NULL,'2013-09-28 16:16:23','2013-09-28 16:16:23',1,0,NULL,NULL),(75,'制作物','http://www.nicovideo.jp/mylist/25049509',43,3,NULL,NULL,'2013-09-28 16:21:06','2013-09-28 16:21:06',1,0,NULL,NULL),(76,'Melmel_0619','https://twitter.com/Melmel_0619',33,2,NULL,NULL,'2013-09-28 23:07:44','2013-09-28 23:07:44',1,0,NULL,NULL),(77,'barleyspica ','https://twitter.com/barleyspica',39,2,NULL,NULL,'2013-09-28 23:09:48','2014-09-26 10:23:04',1,1,'','2014-09-26 10:24:01'),(78,'To7-MAD','http://www.nicovideo.jp/mylist/18728525',44,3,NULL,NULL,'2013-09-28 23:13:37','2013-09-28 23:13:37',1,0,NULL,NULL),(79,'to7tzs ','https://twitter.com/to7tzs',44,2,NULL,NULL,'2013-09-28 23:14:23','2013-09-28 23:14:23',1,0,NULL,NULL),(80,'■MAD■','http://www.nicovideo.jp/mylist/2364053',45,3,NULL,NULL,'2013-09-28 23:23:18','2013-09-28 23:23:18',1,0,NULL,NULL),(81,'mahi_rico','https://twitter.com/mahi_rico',45,2,NULL,NULL,'2013-09-28 23:23:49','2013-09-28 23:23:49',1,0,NULL,NULL),(82,'Totori:MAD','http://www.nicovideo.jp/mylist/38330511',46,3,NULL,NULL,'2013-09-29 13:49:51','2013-09-29 13:49:51',1,0,NULL,NULL),(83,'hibuntei ','https://twitter.com/hibuntei',23,2,NULL,NULL,'2013-09-29 13:57:04','2013-09-29 13:57:04',1,0,NULL,NULL),(84,'Edit_falling','https://twitter.com/Edit_falling',47,2,NULL,NULL,'2013-09-29 13:57:57','2013-09-29 13:57:57',1,0,NULL,NULL),(85,'おいあんた ふざけたMAD作ってんじゃ','http://www.nicovideo.jp/mylist/38554761',47,3,NULL,NULL,'2013-09-29 13:58:20','2013-09-29 13:58:20',1,0,NULL,NULL),(86,'自作','http://www.nicovideo.jp/mylist/2422276',48,3,NULL,NULL,'2013-09-29 14:02:22','2013-09-29 14:02:22',1,0,NULL,NULL),(87,'自作動画','http://www.nicovideo.jp/mylist/16706173',49,3,NULL,NULL,'2013-09-29 14:05:58','2013-09-29 14:05:58',1,0,NULL,NULL),(88,'投稿動画','http://www.nicovideo.jp/user/119049/video',50,3,NULL,NULL,'2013-09-29 14:14:43','2013-09-29 14:14:43',1,0,NULL,NULL),(89,'投稿動画','http://www.nicovideo.jp/user/8095553/video',51,3,NULL,NULL,'2013-09-29 14:37:00','2013-09-29 14:37:00',1,0,NULL,NULL),(90,'skearis','http://www.youtube.com/user/skearis?feature=watch',51,9,NULL,NULL,'2013-09-29 14:38:24','2013-12-23 09:40:08',1,0,'',NULL),(91,'投稿動画','http://www.nicovideo.jp/user/26103142',52,3,NULL,NULL,'2013-09-29 14:41:36','2013-09-29 14:41:36',1,0,NULL,NULL),(92,'投稿動画','http://www.nicovideo.jp/user/12488964/video',53,3,NULL,NULL,'2013-09-29 14:43:05','2013-09-29 14:43:05',1,0,NULL,NULL),(93,'Ukura','http://www.pixiv.net/member.php?id=1120126',53,10,NULL,NULL,'2013-09-29 14:43:42','2013-12-23 09:42:59',1,0,'',NULL),(94,'ペン丸改め詩乃のへぼ動画集','http://www.nicovideo.jp/mylist/4230678',54,3,NULL,NULL,'2013-09-29 14:45:34','2013-09-29 14:45:34',1,0,NULL,NULL),(95,'投稿動画(MAD)','http://www.nicovideo.jp/mylist/16329357',55,3,NULL,NULL,'2013-09-29 14:50:45','2013-09-29 14:50:45',1,0,NULL,NULL),(96,'作ったやーつ','http://www.nicovideo.jp/mylist/29525157',56,3,NULL,NULL,'2013-09-29 14:56:09','2013-09-29 14:56:09',1,0,NULL,NULL),(97,'暇の産物','http://www.nicovideo.jp/mylist/34996402',57,3,NULL,NULL,'2013-09-29 15:03:30','2013-09-29 15:03:30',1,0,NULL,NULL),(98,'mdphoned','https://twitter.com/mdphoned',57,2,NULL,NULL,'2013-09-29 15:04:31','2013-09-29 15:04:31',1,0,NULL,NULL),(99,'satsuki_ssd','https://twitter.com/satsuki_ssd',55,2,NULL,NULL,'2013-09-29 15:32:01','2013-09-29 15:32:01',1,0,NULL,NULL),(100,'TohnoMirin','https://twitter.com/TohnoMirin',9,2,NULL,NULL,'2013-09-29 15:36:29','2013-09-29 15:36:29',1,0,NULL,NULL),(101,'しゃかしゃか動画(LB)','http://www.nicovideo.jp/mylist/3836230',4,3,NULL,NULL,'2013-09-29 16:04:56','2013-10-01 15:23:36',1,0,NULL,NULL),(102,'R10の作品','http://www.nicovideo.jp/mylist/14618766',58,3,NULL,NULL,'2013-09-29 17:28:49','2013-09-29 17:28:49',1,0,NULL,NULL),(103,'つくったもの','http://www.nicovideo.jp/mylist/25165397',59,3,NULL,NULL,'2013-09-29 17:34:18','2013-09-29 17:34:18',1,0,NULL,NULL),(104,'To7-MAD','http://www.nicovideo.jp/mylist/18728525',60,3,NULL,NULL,'2013-09-29 17:36:42','2013-09-29 17:36:42',1,0,NULL,NULL),(105,'制作MADリスト','http://www.nicovideo.jp/mylist/33534097',61,3,NULL,NULL,'2013-09-29 17:47:00','2013-09-29 17:47:00',1,0,NULL,NULL),(106,'うpしたもの','http://www.nicovideo.jp/mylist/35353535',62,3,NULL,NULL,'2013-09-30 14:44:30','2013-09-30 14:44:30',1,0,NULL,NULL),(107,'popopotchi','https://twitter.com/popopotchi',62,2,NULL,NULL,'2013-09-30 14:46:28','2013-09-30 14:46:28',1,0,NULL,NULL),(108,'マイリスト一覧','http://www.nicovideo.jp/user/15992225',63,3,NULL,NULL,'2013-09-30 14:48:03','2013-09-30 14:48:03',1,0,NULL,NULL),(109,'なんかの作品集','http://www.nicovideo.jp/mylist/6511554',64,3,NULL,NULL,'2013-09-30 14:59:23','2013-09-30 14:59:23',1,0,NULL,NULL),(110,'投稿動画','http://www.nicovideo.jp/user/14306953/video',65,3,NULL,NULL,'2013-09-30 15:01:59','2013-09-30 15:01:59',1,0,NULL,NULL),(111,'arle_neko','https://twitter.com/arle_neko',64,2,NULL,NULL,'2013-09-30 15:03:10','2013-09-30 15:03:10',1,0,NULL,NULL),(112,'necrodisk ','https://twitter.com/necrodisk',66,2,NULL,NULL,'2013-09-30 15:15:59','2013-09-30 15:15:59',1,0,NULL,NULL),(113,'MODEL:nd','http://modelnd.web.fc2.com/home/',66,1,NULL,NULL,'2013-09-30 15:16:59','2013-09-30 15:16:59',1,0,NULL,NULL),(114,'goldwing_zoome','https://twitter.com/goldwing_zoome',67,2,NULL,NULL,'2013-09-30 15:26:59','2013-09-30 15:26:59',1,0,NULL,NULL),(115,'(･∀･∀･∀･∀･∀･∀･)ﾇｰﾍﾞﾙﾊﾞｰｸﾞ ','http://nuhhehhow.hp.infoseek.co.jp/',68,1,NULL,'2013-10-01 00:00:00','2013-10-01 15:00:23','2013-10-01 15:00:40',1,0,NULL,NULL),(116,'A-tric ','http://skywindzwei.com/atric/',69,1,NULL,'2013-10-01 00:00:00','2013-10-01 15:02:19','2013-10-01 15:02:19',1,0,NULL,NULL),(117,'Act-ZERO ','http://lakusuku.blog7.fc2.com/',70,1,NULL,'2013-10-01 00:00:00','2013-10-01 15:03:32','2013-10-01 15:03:32',1,0,NULL,NULL),(118,'ALICE CHANNEL ','http://fancy-deepblue.hp.infoseek.co.jp/',71,1,NULL,'2013-10-01 00:00:00','2013-10-01 15:05:28','2013-10-01 15:05:28',1,0,NULL,NULL),(119,'Alphabet Puzzle ','http://www.geocities.jp/alphabet_puzzle_air_ver/',67,1,NULL,NULL,'2013-10-01 15:06:48','2013-10-01 15:08:23',1,0,NULL,NULL),(120,'いは','http://www.sprasia.com/user/ihanano/',72,1,NULL,NULL,'2013-10-01 15:10:45','2013-10-01 15:10:45',1,0,NULL,NULL),(121,'ihanano ','https://twitter.com/ihanano',72,2,NULL,NULL,'2013-10-01 15:11:24','2013-10-01 15:11:24',1,0,NULL,NULL),(122,'流星回天 MAD集 (in Taiwan)','http://www.nicovideo.jp/mylist/35985674',73,3,NULL,NULL,'2013-10-01 15:16:21','2013-10-01 15:16:21',1,0,NULL,NULL),(123,'MADer 資料庫','http://mader.pixnet.net/blog',73,11,NULL,NULL,'2013-10-01 15:17:08','2013-12-23 09:52:32',1,0,'',NULL),(124,'ゾナ作品集','http://www.nicovideo.jp/mylist/6304400',74,3,NULL,NULL,'2013-10-01 15:21:50','2013-10-01 15:22:17',1,0,NULL,NULL),(125,'野良MAD製作所','http://com.nicovideo.jp/community/co491382',75,3,NULL,NULL,'2013-10-03 13:50:07','2013-10-03 13:50:17',1,0,NULL,NULL),(126,'7AS -Seventh Azure Shield-','http://seventhazureshield.web.fc2.com/',76,1,NULL,NULL,'2013-10-03 13:51:55','2013-10-03 13:51:55',1,0,NULL,NULL),(127,'7AS -Seventh Azure Shield-','http://com.nicovideo.jp/community/co1755907',76,3,NULL,NULL,'2013-10-03 13:52:30','2013-10-03 13:53:00',1,0,NULL,NULL),(128,'CREST','http://com.nicovideo.jp/community/co2078294?ref=search_tag_co',77,1,NULL,NULL,'2013-10-03 13:53:43','2013-10-03 13:53:43',1,0,NULL,NULL),(129,'Animayte','http://animayte-web.hp.infoseek.co.jp/',79,1,NULL,'2013-10-03 00:00:00','2013-10-03 13:59:13','2013-10-03 13:59:42',1,0,NULL,NULL),(130,'Ariamate','http://ariatan.at.infoseek.co.jp/aria.html',80,1,NULL,'2013-10-03 00:00:00','2013-10-03 14:00:47','2013-10-03 14:00:47',1,0,NULL,NULL),(131,'As Eucharis ','http://page.freett.com/aseucharis/',81,1,NULL,'2013-10-03 00:00:00','2013-10-03 14:01:49','2013-10-03 14:01:49',1,0,NULL,NULL),(132,'ASGARD','http://studio-k3.co.nr/',82,1,NULL,'2013-10-03 00:00:00','2013-10-03 14:02:46','2013-10-03 14:02:46',1,0,NULL,NULL),(133,'AsPhoDel ','http://mad.lightpi.net/',83,1,NULL,'2013-10-03 00:00:00','2013-10-03 14:04:06','2013-10-03 14:04:06',1,0,NULL,NULL),(134,'投稿動画','http://www.nicovideo.jp/user/1366031/video',84,3,'2009-12-16 00:00:00',NULL,'2013-10-03 14:46:20','2013-10-03 14:46:54',1,0,NULL,NULL),(135,'TimNoHeya ','https://twitter.com/TimNoHeya',84,2,'2013-09-01 00:00:00',NULL,'2013-10-03 14:48:04','2013-10-03 14:49:00',1,0,NULL,NULL),(136,'投稿動画','http://www.nicovideo.jp/user/34091349/video',85,3,'2010-10-03 21:00:00',NULL,'2013-10-03 15:00:28','2013-10-03 15:00:41',1,0,NULL,NULL),(137,'投稿動画','http://www.nicovideo.jp/user/9712779/video',86,3,'2009-10-21 00:00:00',NULL,'2013-10-04 14:18:49','2013-10-04 14:19:07',1,0,NULL,NULL),(138,'32g','http://page.freett.com/ipponsugi/',12,1,'2013-10-03 00:00:00',NULL,'2013-10-04 15:17:05','2013-12-23 09:44:01',1,0,'',NULL),(139,'投稿動画','http://www.nicovideo.jp/user/17348550/video',87,3,'2012-04-11 00:00:00',NULL,'2013-10-05 09:35:18','2013-10-05 09:35:18',1,0,NULL,NULL),(140,'SaikoSea','https://twitter.com/SaikoSea',63,2,'2013-10-09 00:00:00',NULL,'2013-10-09 14:25:10','2013-10-09 14:25:10',1,0,NULL,NULL),(141,'にわとり小屋','http://ch.nicovideo.jp/niwa9',30,11,'2013-10-09 00:00:00',NULL,'2013-10-09 14:34:22','2014-02-24 14:59:38',1,0,'',NULL),(142,'MIMIあーかいぶす★','http://ameblo.jp/nanalimited0707',32,11,'2013-09-28 00:00:00',NULL,'2013-10-13 15:03:35','2013-12-23 09:51:13',1,0,'',NULL),(143,'自作【MAD・合作ＭＡＤ・PV】','http://www.nicovideo.jp/user/24899014',88,3,'2013-03-24 00:00:00',NULL,'2013-10-20 01:38:14','2013-10-20 01:38:14',1,0,NULL,NULL),(144,'ROIDO_71','https://twitter.com/ROIDO_71',88,2,NULL,NULL,'2013-10-20 01:40:00','2013-10-20 01:40:00',1,0,NULL,NULL),(145,'linehiki\'s user page - niconico','http://www.nicovideo.jp/user/20455347',89,3,'2013-07-21 00:00:00',NULL,'2013-10-20 01:58:26','2013-10-20 01:58:26',1,0,NULL,NULL),(146,'00Yamato00able','https://twitter.com/00Yamato00able',41,2,NULL,NULL,'2013-10-20 02:09:55','2013-10-20 02:09:55',1,0,NULL,NULL),(147,'to7tzs','https://twitter.com/to7tzs',44,1,'2013-10-17 00:00:00',NULL,'2013-10-20 02:23:11','2013-10-20 02:23:11',1,0,NULL,'2013-12-23 09:48:12'),(148,'AsPhoDel island','http://mad.lightpi.net/',83,1,NULL,'2013-10-01 00:00:00','2013-10-24 17:13:20','2013-10-24 17:13:20',1,0,NULL,NULL),(149,'Ayaka\'s miscellany','http://ayaka2.tistory.com/',90,1,NULL,'2013-10-01 00:00:00','2013-10-24 17:14:51','2013-10-24 17:14:51',1,0,NULL,NULL),(150,'overdose','',91,1,NULL,NULL,'2013-10-25 16:17:20','2013-10-25 16:17:20',1,0,NULL,NULL),(151,'hitosu','https://twitter.com/hitosu',91,2,'2013-10-10 00:00:00',NULL,'2013-10-26 16:46:30','2013-10-26 16:46:30',1,0,NULL,NULL),(152,'B.D.e.p -発狂実験被検体- ','http://blog.livedoor.jp/jedwaine/',93,1,NULL,'2013-10-01 00:00:00','2013-10-26 17:00:08','2013-10-26 17:02:39',1,0,NULL,NULL),(153,'BE -La Belle Equipe- ','http://muzyunou.hp.infoseek.co.jp/',94,1,NULL,'2013-10-02 00:00:00','2013-10-26 17:01:04','2013-10-26 17:01:20',1,0,NULL,NULL),(154,'best cowards ','http://sky.geocities.jp/salgatanass/',95,1,NULL,'2013-10-01 00:00:00','2013-10-26 17:02:17','2013-10-26 17:02:17',1,0,NULL,NULL),(155,'blue-wind side:mad movie ','http://cyaneus-ventus.sakura.ne.jp/',96,1,NULL,NULL,'2013-10-26 17:03:56','2013-10-26 17:03:56',1,0,NULL,NULL),(156,'BRIEFING-ROOM','http://briefing.ifdef.jp/',97,1,'2008-10-10 00:00:00',NULL,'2013-10-26 17:06:01','2013-10-26 17:06:01',1,0,NULL,NULL),(157,'Chocolat et Cacao','http://yuzucocoa.blog96.fc2.com/',98,1,'2010-10-01 00:00:00',NULL,'2013-10-26 17:07:15','2013-10-26 17:07:15',1,0,NULL,NULL),(158,'taku_nagi0308','https://twitter.com/taku_nagi0308',38,2,NULL,NULL,'2013-11-11 15:47:37','2013-11-11 15:47:37',1,0,'',NULL),(159,'Kazami_Kei','https://twitter.com/Kazami_Kei',27,2,NULL,NULL,'2013-11-14 01:10:13','2013-11-14 01:10:13',1,0,'',NULL),(160,'風の吹くままに','http://kazamikei.blog.fc2.com/',27,11,'2010-11-07 00:00:00',NULL,'2013-11-14 01:11:38','2013-12-23 09:39:32',1,0,'',NULL),(161,'雨上がり停留所','http://d.hatena.ne.jp/pluvia25/',37,11,NULL,NULL,'2013-11-16 15:49:12','2013-12-23 09:41:07',1,0,'',NULL),(162,'t_haira','https://twitter.com/t_haira',34,2,NULL,NULL,'2013-11-16 16:22:03','2013-11-16 16:22:03',1,0,'',NULL),(163,'3Q_ta','https://twitter.com/3Q_ta',35,2,NULL,NULL,'2013-11-18 15:31:04','2013-11-18 15:31:04',1,0,'',NULL),(164,'ぺろめも','http://ch.nicovideo.jp/oomugi',39,11,NULL,NULL,'2013-11-24 03:58:54','2013-12-23 09:45:08',1,0,'',NULL),(165,'DragonicFlower','http://dragonicflower.com/',21,1,NULL,NULL,'2013-11-24 16:43:09','2013-11-24 16:43:09',1,0,'',NULL),(166,'mawaru','https://twitter.com/mawaru',100,2,NULL,NULL,'2013-12-20 14:16:54','2013-12-20 14:17:51',1,0,'',NULL),(167,'Argentのブロマガ','http://ch.nicovideo.jp/Argent',101,11,NULL,NULL,'2013-12-20 14:38:40','2013-12-23 09:38:17',1,0,'',NULL),(168,'Argent00','https://twitter.com/Argent00',101,2,NULL,NULL,'2013-12-20 14:40:15','2013-12-20 14:40:15',1,0,'',NULL),(169,'Argent_MAD','http://www.nicovideo.jp/mylist/32138073',101,3,NULL,NULL,'2013-12-20 14:42:02','2013-12-20 14:42:02',1,0,'',NULL),(170,'BM3506','http://www.youtube.com/user/BM3506/videos',59,9,NULL,NULL,'2013-12-20 14:56:33','2013-12-21 10:14:06',1,0,'',NULL),(171,'CREST','http://madcrest.web.fc2.com/index.html',77,1,'2012-09-29 00:00:00',NULL,'2013-12-20 15:32:34','2013-12-20 15:32:34',1,0,'',NULL),(172,'Aegis ','http://www.youtube.com/user/AegisP34?feature=watch',29,9,NULL,NULL,'2013-12-21 10:33:22','2013-12-21 10:33:22',1,0,'',NULL),(173,'CHOCO STUDIO','http://flavors.me/choconeko69',102,1,NULL,NULL,'2013-12-21 21:52:45','2013-12-21 21:52:45',1,0,'',NULL),(174,'作ってみたもの','http://www.nicovideo.jp/mylist/19620046',102,3,NULL,NULL,'2013-12-21 21:54:03','2013-12-21 21:54:03',1,0,'',NULL),(175,'choconeko69','https://twitter.com/choconeko69',102,2,NULL,NULL,'2013-12-21 21:54:50','2013-12-21 21:54:50',1,0,'',NULL),(176,'過去作品','http://www.nicovideo.jp/mylist/10474855',103,3,NULL,NULL,'2013-12-21 22:10:53','2013-12-21 22:10:53',1,0,'',NULL),(177,'ICHITEN_TW','https://twitter.com/ICHITEN_TW',43,2,NULL,NULL,'2013-12-23 13:53:14','2013-12-23 13:53:14',1,0,'',NULL),(178,'linehiki','https://twitter.com/linehiki',104,2,NULL,NULL,'2013-12-23 21:55:59','2013-12-23 21:55:59',1,0,'','2013-12-23 22:00:53'),(179,'linehiki','https://twitter.com/linehiki ',89,2,NULL,NULL,'2013-12-23 22:01:58','2013-12-23 22:01:58',1,0,'',NULL),(180,'伊武庵','http://www.nicovideo.jp/mylist/20605125',105,3,NULL,NULL,'2013-12-23 22:14:58','2013-12-23 22:14:58',1,0,'',NULL),(181,'作ったMADです。','http://www.nicovideo.jp/mylist/28385187',106,3,NULL,NULL,'2014-01-04 17:48:30','2014-01-04 17:48:30',1,0,'',NULL),(182,'Kanchi2319','https://twitter.com/Kanchi2319',106,2,NULL,NULL,'2014-01-04 17:49:18','2014-01-04 17:49:18',1,0,'',NULL),(183,'投稿動画','http://www.nicovideo.jp/watch/sm22654748',107,3,NULL,NULL,'2014-01-12 12:06:56','2014-01-12 12:07:18',1,0,'',NULL),(184,'制作物','http://www.nicovideo.jp/mylist/27647464',108,3,NULL,NULL,'2014-01-13 09:17:25','2014-01-13 09:17:25',1,0,'',NULL),(185,'KINO_REALA','https://twitter.com/KINO_REALA',108,2,NULL,NULL,'2014-01-13 09:17:55','2014-01-13 09:17:55',1,0,'',NULL),(186,'幸鳥のブロマガ','http://ch.nicovideo.jp/konotori00',7,11,NULL,NULL,'2014-01-18 14:19:46','2014-01-18 14:19:46',1,0,'',NULL),(187,'SABO201103','http://www.youtube.com/user/SABO201103?feature=watch',28,9,'2011-01-03 00:00:00',NULL,'2014-01-19 04:34:54','2014-01-19 04:34:54',1,0,'',NULL),(188,'自作MAD集','http://www.nicovideo.jp/mylist/21201288',109,3,NULL,NULL,'2014-01-22 16:12:35','2014-12-26 13:02:34',1,0,'',NULL),(189,'bm3506','https://twitter.com/bm3506',59,2,NULL,NULL,'2014-02-21 14:00:26','2014-02-21 14:00:26',1,0,'',NULL),(190,'Ma_mu310','https://twitter.com/Ma_mu310',10,2,NULL,NULL,'2014-02-21 14:34:12','2014-02-21 14:34:12',1,0,'',NULL),(191,'mawaru制作M@D','http://www.nicovideo.jp/mylist/2098178',100,3,NULL,NULL,'2014-02-21 14:46:47','2014-02-21 14:46:47',1,0,'',NULL),(192,'静止画MAD','http://com.nicovideo.jp/community/co1494',100,3,NULL,NULL,'2014-02-21 14:52:03','2014-02-21 14:52:03',1,0,'',NULL),(193,'作ったもの','http://www.nicovideo.jp/mylist/39391564',110,3,NULL,NULL,'2014-02-23 06:35:55','2014-02-23 06:35:55',1,0,'',NULL),(194,'rikky_mausu','https://twitter.com/rikky_mausu',110,2,NULL,NULL,'2014-02-23 06:39:38','2014-02-23 06:39:38',1,0,'',NULL),(195,'あとりえ　ふらっと','http://com.nicovideo.jp/community/co1090987',111,3,NULL,NULL,'2014-02-24 14:46:23','2014-02-24 14:48:16',1,0,'',NULL),(196,'【製作：2012～】','http://www.nicovideo.jp/mylist/29852718',111,3,NULL,NULL,'2014-02-24 14:48:43','2014-02-24 14:48:43',1,0,'',NULL),(197,'mof-latte','http://flatext.blog.fc2.com/',111,11,NULL,NULL,'2014-02-24 14:53:00','2014-02-24 14:53:00',1,0,'',NULL),(198,'ふらっとつーしん','http://ch.nicovideo.jp/horizonext',111,11,NULL,NULL,'2014-02-24 14:55:05','2014-02-24 14:55:05',1,0,'',NULL),(199,'投稿動画','http://www.nicovideo.jp/user/8423168/video',112,3,'2010-08-04 00:00:00',NULL,'2014-03-06 13:51:27','2014-03-06 13:51:27',1,0,'',NULL),(200,'投稿動画','http://www.nicovideo.jp/user/36846980/video',113,3,'2014-03-05 00:00:00',NULL,'2014-03-06 13:53:40','2014-03-06 13:53:40',1,0,'',NULL),(201,'SS(シューちゃん)@分かり手 ','https://twitter.com/shooting_star03',87,2,NULL,NULL,'2014-03-09 11:52:10','2014-03-09 11:52:10',1,0,'',NULL),(202,'UNTN FACTORY','http://www.nicovideo.jp/mylist/39795077',114,3,NULL,NULL,'2014-03-09 22:15:49','2014-03-09 22:15:49',1,0,'',NULL),(203,'El Psy Congroo*','http://space.bilibili.tv/350235',115,1,NULL,NULL,'2014-03-19 18:56:12','2014-03-19 18:56:12',1,0,'',NULL),(204,' 一個點のブロマガ','http://ch.nicovideo.jp/ichiten',43,11,'2014-03-05 15:25:00',NULL,'2014-03-29 00:26:41','2014-03-29 00:29:10',1,0,'',NULL),(205,'SABOのブロマガ','http://ch.nicovideo.jp/sabosabo',28,11,'2013-08-06 22:37:00',NULL,'2014-03-29 01:18:22','2014-03-29 01:18:22',1,0,'',NULL),(206,'Aegis放送部屋','http://com.nicovideo.jp/community/co2194996',29,3,NULL,NULL,'2014-04-01 15:52:14','2014-04-01 15:52:14',1,0,'',NULL),(207,'モグラＨＯＭＥ','http://www.rak2.jp/town/user/mogurahome/',116,1,NULL,NULL,'2014-04-11 17:25:27','2014-04-11 17:25:27',1,0,'',NULL),(208,'作ってみた物リスト','http://www.nicovideo.jp/mylist/5053734',116,3,NULL,NULL,'2014-04-11 17:29:43','2014-04-11 17:29:43',1,0,'',NULL),(209,'goldwing_zoome','https://twitter.com/goldwing_zoome',67,2,NULL,NULL,'2014-04-26 12:36:37','2014-04-26 12:36:37',1,0,'',NULL),(210,'作業用龍花','http://com.nicovideo.jp/community/co1135296',21,3,NULL,NULL,'2014-05-03 11:35:16','2014-05-03 11:35:16',1,0,'',NULL),(211,'sAlmOn0319','https://twitter.com/sAlmOn0319',63,2,NULL,NULL,'2014-05-03 18:02:31','2014-05-03 18:02:31',1,0,'',NULL),(212,'さけのMADアニメ雑談放送局','http://com.nicovideo.jp/community/co2063070',63,3,NULL,NULL,'2014-05-03 18:03:16','2014-05-03 18:03:16',1,0,'',NULL),(213,'omg','http://vimeo.com/user9541092',39,5,NULL,NULL,'2014-05-06 01:08:28','2014-05-06 01:08:28',1,0,'',NULL),(214,'プラ','https://twitter.com/Plusat4',117,2,NULL,NULL,'2014-05-24 16:39:46','2014-05-24 16:39:46',1,0,'',NULL),(215,'+@4 MAD','http://www.nicovideo.jp/mylist/39328741',117,3,NULL,NULL,'2014-05-24 16:40:07','2014-05-24 16:40:07',1,0,'',NULL),(216,'VAVAの静止画MAD','http://www.nicovideo.jp/mylist/44129229',118,3,NULL,NULL,'2014-06-05 12:50:34','2014-06-05 12:50:34',1,0,'',NULL),(217,'多目的な記録など','http://ch.nicovideo.jp/vava',118,11,NULL,NULL,'2014-06-05 12:51:31','2014-06-05 12:55:03',1,0,'',NULL),(218,'VAVA作業中','http://com.nicovideo.jp/community/co2075141',118,3,NULL,NULL,'2014-06-05 12:55:57','2014-06-05 12:55:57',1,0,'',NULL),(219,'@vavajun','https://twitter.com/vavajun',118,2,NULL,NULL,'2014-06-05 12:56:58','2014-06-05 12:56:58',1,0,'',NULL),(220,'MAD制作放送（たまに違うこと）','http://com.nicovideo.jp/community/co2093855',49,3,NULL,NULL,'2014-06-05 13:20:52','2014-06-05 13:20:52',1,0,'',NULL),(221,' MOTAのブロマガ','http://ch.nicovideo.jp/motaMAD',49,11,NULL,NULL,'2014-06-05 13:22:25','2014-06-05 13:22:25',1,0,'',NULL),(222,'@Mota0827','https://twitter.com/Mota0827',49,2,NULL,NULL,'2014-06-05 13:33:12','2014-06-05 13:33:12',1,0,'',NULL),(223,'Wise man time','http://bmstma.tumblr.com/',59,4,NULL,NULL,'2014-06-05 14:09:28','2014-06-05 14:09:28',1,0,'',NULL),(224,'沒有反應，就只是一個點','http://ichiten.blogspot.jp/',43,11,NULL,NULL,'2014-06-08 14:05:52','2014-06-08 14:05:52',1,0,'',NULL),(225,'一個點','https://www.youtube.com/user/ICHITEN00/feed',43,9,NULL,NULL,'2014-06-08 14:07:34','2014-06-08 14:07:34',1,0,'',NULL),(226,'つくったの','http://www.nicovideo.jp/mylist/19858155',119,3,NULL,NULL,'2014-07-06 09:12:16','2014-07-06 09:12:16',1,0,'',NULL),(227,'迷路がなんかいうかも','http://com.nicovideo.jp/community/co628717',119,3,NULL,NULL,'2014-07-06 09:17:02','2014-07-06 09:17:02',1,0,'',NULL),(228,'迷路Pがなんか言うよ','http://blog.livedoor.jp/meirop/',119,11,NULL,NULL,'2014-07-06 09:17:52','2014-07-06 09:17:52',1,0,'',NULL),(229,'meiroP','https://twitter.com/meiroP',119,2,NULL,NULL,'2014-07-06 09:20:13','2014-07-06 09:20:13',1,0,'',NULL),(230,'KINO','http://vimeo.com/user8941531',108,5,NULL,NULL,'2014-07-06 10:15:53','2014-07-06 10:15:53',1,0,'',NULL),(231,'炭','http://www.nicovideo.jp/mylist/31407620',120,3,NULL,NULL,'2014-07-06 10:49:57','2014-07-06 10:49:57',1,0,'',NULL),(232,'消し炭','http://ch.nicovideo.jp/rukocha',120,11,'2014-02-06 01:04:00',NULL,'2014-07-06 10:53:09','2014-07-06 10:53:09',1,0,'',NULL),(233,'rkc','http://vimeo.com/user11160923',120,5,NULL,NULL,'2014-07-06 10:56:17','2014-07-06 10:56:17',1,0,'',NULL),(234,' ラタヒの好きなこと書いていきますの部屋','http://ch.nicovideo.jp/ratahi',11,11,'2014-02-04 23:33:00',NULL,'2014-07-06 11:07:12','2014-07-06 11:07:12',1,0,'',NULL),(235,'ratahi','http://vimeo.com/user9924754',11,5,NULL,NULL,'2014-07-06 11:11:18','2014-07-06 11:11:18',1,0,'',NULL),(236,'SS@','http://vimeo.com/user21851872',87,5,NULL,NULL,'2014-07-06 11:24:56','2014-07-06 11:24:56',1,0,'',NULL),(237,'okiyama','http://vimeo.com/okiyama',21,5,NULL,NULL,'2014-07-06 11:32:01','2014-07-06 11:32:01',1,0,'',NULL),(238,'Aegis','http://vimeo.com/user16112783',29,5,NULL,NULL,'2014-07-06 11:37:36','2014-07-06 11:37:36',1,0,'',NULL),(239,' ぜんぜんしらん(Dead','http://ch.nicovideo.jp/Neko3000',121,11,'2014-05-29 19:41:00',NULL,'2014-07-20 14:50:51','2014-07-20 14:50:51',1,0,'',NULL),(240,'SNeko3000','https://twitter.com/SNeko3000',121,2,NULL,NULL,'2014-07-20 14:52:36','2014-07-20 14:52:36',1,0,'',NULL),(241,'ままままま','http://ch.nicovideo.jp/ma-mu',10,11,'2014-04-19 00:44:00',NULL,'2014-07-28 16:10:38','2014-07-28 16:10:38',1,0,'',NULL),(242,'nonnonxyn','https://twitter.com/nonnonxyn',115,2,NULL,NULL,'2014-08-03 21:59:26','2014-08-03 21:59:26',1,0,'',NULL),(243,'龍花','http://www.pixiv.net/member.php?id=333128',21,10,NULL,NULL,'2014-08-14 17:06:07','2014-08-14 17:06:07',1,0,'',NULL),(244,'作ったもの','http://www.nicovideo.jp/mylist/18907267',122,3,NULL,NULL,'2014-09-25 14:41:06','2014-09-25 14:41:06',1,0,'',NULL),(245,'orettizusi','https://twitter.com/orettizusi',122,2,NULL,NULL,'2014-09-25 14:42:31','2014-09-25 14:42:31',1,0,'',NULL),(246,'NeonRed00','https://twitter.com/NeonRed00',123,2,NULL,NULL,'2014-09-25 15:25:07','2014-09-25 15:25:07',1,0,'',NULL),(247,'伊武庵','http://ibuan13.tumblr.com/',105,4,NULL,NULL,'2014-09-25 15:35:22','2014-09-25 15:35:22',1,0,'',NULL),(248,'kira rin','http://www.youtube.com/user/kirarinrin369',124,9,NULL,NULL,'2014-09-25 15:49:15','2014-09-25 15:49:15',1,0,'',NULL),(249,'_delsol','https://twitter.com/_delsol',125,2,NULL,NULL,'2014-09-25 15:56:04','2014-09-25 15:56:04',1,0,'',NULL),(250,'制作したもの','http://www.nicovideo.jp/mylist/6801279',125,3,NULL,NULL,'2014-09-25 15:57:07','2014-09-25 15:57:07',1,0,'',NULL),(251,'Ibuan','http://vimeo.com/user18443293',105,5,NULL,NULL,'2014-09-25 16:02:15','2014-09-25 16:02:15',1,0,'',NULL),(252,'Twinkle（仮）','http://com.nicovideo.jp/community/co1613622',10,3,NULL,NULL,'2014-09-26 10:11:33','2014-09-26 10:11:33',1,0,'',NULL),(253,'00mug1','https://twitter.com/00mug1',39,2,NULL,NULL,'2014-09-26 10:25:05','2014-09-26 10:25:05',1,0,'',NULL),(254,'自作MAD','http://www.nicovideo.jp/mylist/19855909',126,3,NULL,NULL,'2014-09-26 10:41:47','2014-09-26 10:41:47',1,0,'',NULL),(255,'hairaのブロマガ','http://ch.nicovideo.jp/haira',34,11,NULL,NULL,'2014-09-26 10:55:55','2014-09-26 10:55:55',1,0,'',NULL),(256,'自作リスト','http://www.nicovideo.jp/mylist/18514806',127,3,NULL,NULL,'2014-09-30 15:26:51','2014-09-30 15:26:51',1,0,'',NULL),(257,'おにぎりとはしPとパン','http://com.nicovideo.jp/community/co478849',127,3,NULL,NULL,'2014-09-30 15:30:26','2014-09-30 15:30:26',1,0,'',NULL),(258,' SSのブロマガ','http://ch.nicovideo.jp/shooting_star',87,11,'2013-04-01 00:10:00',NULL,'2014-10-02 12:50:40','2014-10-02 12:50:40',1,0,'',NULL),(259,'00 投稿動画','http://www.nicovideo.jp/mylist/31927331',128,3,NULL,NULL,'2014-10-02 22:46:17','2014-10-02 22:46:17',1,0,'',NULL),(260,'seguimiii','https://twitter.com/seguimiii',128,2,NULL,NULL,'2014-10-02 22:47:02','2014-10-02 22:47:02',1,0,'',NULL),(261,'とあるMADの作り方','http://seguimi.blog.fc2.com/',128,11,'2012-02-02 00:00:00',NULL,'2014-10-02 22:48:22','2014-10-02 22:48:22',1,0,'',NULL),(262,'AniPAL AMV/MAD Communications Club JAPAN','http://ch.nicovideo.jp/AMV',72,11,'2013-01-23 21:23:00',NULL,'2014-10-03 10:09:08','2014-10-03 10:09:08',1,0,'',NULL),(263,'あ・に・ぱ・る ～Anime Parc Avenue～ AMV/MAD COMMUNICATIONS CLUB JAPAN　ニコニコ動画支部','http://com.nicovideo.jp/community/co558186',72,3,NULL,NULL,'2014-10-03 10:10:32','2014-10-03 10:10:32',1,0,'',NULL),(264,'作ったものとか','http://oscmad.blog.fc2.com/',122,11,'2014-10-04 00:00:00',NULL,'2014-10-04 22:19:48','2014-10-04 22:19:48',1,0,'',NULL),(265,'投稿動画','http://www.nicovideo.jp/user/34519748/video',129,3,NULL,NULL,'2014-10-10 13:35:24','2014-10-10 13:35:24',1,0,'',NULL),(266,'琴子','http://www.pixiv.net/member.php?id=4243273',129,10,NULL,NULL,'2014-10-10 13:36:52','2014-10-10 13:36:52',1,0,'',NULL),(267,'kotoko0111','https://twitter.com/kotoko0111',129,2,NULL,NULL,'2014-10-10 13:37:41','2014-10-10 13:38:14',1,0,'',NULL),(268,'glassp_','https://twitter.com/glassp_',126,2,NULL,NULL,'2014-10-10 13:39:23','2014-10-10 13:39:23',1,0,'',NULL),(269,'風見鶏亭','http://com.nicovideo.jp/community/co1773127',27,3,'2012-09-04 00:00:00',NULL,'2014-10-10 13:42:07','2014-10-10 13:42:07',1,0,'',NULL),(270,'風の吹くままに','http://ch.nicovideo.jp/kazamikei',27,11,'2013-01-23 20:02:00',NULL,'2014-10-10 13:48:52','2014-10-10 13:48:52',1,0,'',NULL),(271,'物置','http://www.nicovideo.jp/mylist/41398190',130,3,NULL,NULL,'2014-10-12 21:46:12','2014-10-12 21:46:12',1,0,'',NULL),(272,'gyudon_mp4','https://twitter.com/gyudon_mp4',130,2,NULL,NULL,'2014-10-12 21:47:01','2014-10-12 21:47:01',1,0,'',NULL),(273,'ibuan13','https://twitter.com/ibuan13',105,2,NULL,NULL,'2014-12-25 01:43:42','2014-12-25 01:43:42',1,0,'',NULL);
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `omniuser_id` int(11) DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `confirmation_sent_at` datetime DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-04  1:47:32
