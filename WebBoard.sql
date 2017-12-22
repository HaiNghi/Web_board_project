-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: WebBoard
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add board',7,'add_board'),(20,'Can change board',7,'change_board'),(21,'Can delete board',7,'delete_board'),(22,'Can add post',8,'add_post'),(23,'Can change post',8,'change_post'),(24,'Can delete post',8,'delete_post'),(25,'Can add topic',9,'add_topic'),(26,'Can change topic',9,'change_topic'),(27,'Can delete topic',9,'delete_topic');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$100000$raM21e3NeO8Q$USnLPQNvJdus6x7PV807L6+FOCWZm6eAonzU36ln5j0=','2017-12-20 06:16:29.105510',1,'nickie','','','nickie@enclave.vn',1,1,'2017-12-14 09:11:55.196336'),(2,'pbkdf2_sha256$100000$LFJmxZSFYD8K$ohtd4U0Rt9aZKOKbrIT1vTSDtmtHr4bEEzoVRgqC8bg=','2017-12-15 06:24:26.690008',0,'shourrei_sinomi298','','','',0,1,'2017-12-15 06:24:26.483881'),(3,'pbkdf2_sha256$100000$PsUIfdObTYbQ$14Dvlw5wZF7Y/V+tOOjW/oAtgzvkvaLIzFNfG1Rh1qk=','2017-12-15 08:48:57.275928',0,'NghiLe','','','nickie@enclave.vn',0,1,'2017-12-15 08:48:57.067839');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boards_board`
--

DROP TABLE IF EXISTS `boards_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boards_board` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boards_board`
--

LOCK TABLES `boards_board` WRITE;
/*!40000 ALTER TABLE `boards_board` DISABLE KEYS */;
INSERT INTO `boards_board` VALUES (1,'Django','This is my new language to learn'),(2,'Python','It is python'),(3,'Java','Java is fun');
/*!40000 ALTER TABLE `boards_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boards_post`
--

DROP TABLE IF EXISTS `boards_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boards_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(4000) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `boards_post_created_by_id_0b841038_fk_auth_user_id` (`created_by_id`),
  KEY `boards_post_topic_id_f477c024_fk_boards_topic_id` (`topic_id`),
  KEY `boards_post_updated_by_id_76d3c48f_fk_auth_user_id` (`updated_by_id`),
  CONSTRAINT `boards_post_created_by_id_0b841038_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `boards_post_topic_id_f477c024_fk_boards_topic_id` FOREIGN KEY (`topic_id`) REFERENCES `boards_topic` (`id`),
  CONSTRAINT `boards_post_updated_by_id_76d3c48f_fk_auth_user_id` FOREIGN KEY (`updated_by_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boards_post`
--

LOCK TABLES `boards_post` WRITE;
/*!40000 ALTER TABLE `boards_post` DISABLE KEYS */;
INSERT INTO `boards_post` VALUES (1,'Create your first app','2017-12-14 09:39:28.833099',NULL,1,1,NULL),(2,'Try it!','2017-12-14 10:12:36.559632','2017-12-20 08:42:53.726368',1,2,1),(3,'It is time to experience','2017-12-15 03:22:26.856444',NULL,1,3,NULL),(4,'It is really helpful','2017-12-19 04:22:09.266844',NULL,1,4,NULL),(5,'I did that','2017-12-19 08:27:25.789008','2017-12-20 07:54:42.277372',1,1,1),(6,'abcde','2017-12-19 09:02:51.533880',NULL,1,5,NULL),(7,'Lorem ipsum...','2017-12-19 10:01:39.974750',NULL,1,6,NULL),(8,'Lorem ipsum...','2017-12-19 10:01:39.986560',NULL,1,7,NULL),(9,'Lorem ipsum...','2017-12-19 10:01:39.992468',NULL,1,8,NULL),(10,'Lorem ipsum...','2017-12-19 10:01:39.997191',NULL,1,9,NULL),(11,'Lorem ipsum...','2017-12-19 10:01:40.001302',NULL,1,10,NULL),(12,'Lorem ipsum...','2017-12-19 10:01:40.008163',NULL,1,11,NULL),(13,'Lorem ipsum...','2017-12-19 10:01:40.014032',NULL,1,12,NULL),(14,'Lorem ipsum...','2017-12-19 10:01:40.018228',NULL,1,13,NULL),(15,'Lorem ipsum...','2017-12-19 10:01:40.022468',NULL,1,14,NULL),(16,'Lorem ipsum...','2017-12-19 10:01:40.031309',NULL,1,15,NULL),(17,'Lorem ipsum...','2017-12-19 10:01:40.036928',NULL,1,16,NULL),(18,'Lorem ipsum...','2017-12-19 10:01:40.042001',NULL,1,17,NULL),(19,'Lorem ipsum...','2017-12-19 10:01:40.049081',NULL,1,18,NULL),(20,'Lorem ipsum...','2017-12-19 10:01:40.056101',NULL,1,19,NULL),(21,'Lorem ipsum...','2017-12-19 10:01:40.063548',NULL,1,20,NULL),(22,'Lorem ipsum...','2017-12-19 10:01:40.071257',NULL,1,21,NULL),(23,'Lorem ipsum...','2017-12-19 10:01:40.078660',NULL,1,22,NULL),(24,'Lorem ipsum...','2017-12-19 10:01:40.086443',NULL,1,23,NULL),(25,'Lorem ipsum...','2017-12-19 10:01:40.092730',NULL,1,24,NULL),(26,'Lorem ipsum...','2017-12-19 10:01:40.098103',NULL,1,25,NULL),(27,'Lorem ipsum...','2017-12-19 10:01:40.106146',NULL,1,26,NULL),(28,'Lorem ipsum...','2017-12-19 10:01:40.112569',NULL,1,27,NULL),(29,'Lorem ipsum...','2017-12-19 10:01:40.116968',NULL,1,28,NULL),(30,'Lorem ipsum...','2017-12-19 10:01:40.121225',NULL,1,29,NULL),(31,'Lorem ipsum...','2017-12-19 10:01:40.125817',NULL,1,30,NULL),(32,'Lorem ipsum...','2017-12-19 10:01:40.130800',NULL,1,31,NULL),(33,'Lorem ipsum...','2017-12-19 10:01:40.135849',NULL,1,32,NULL),(34,'Lorem ipsum...','2017-12-19 10:01:40.139945',NULL,1,33,NULL),(35,'Lorem ipsum...','2017-12-19 10:01:40.144146',NULL,1,34,NULL),(36,'Lorem ipsum...','2017-12-19 10:01:40.149023',NULL,1,35,NULL),(37,'Lorem ipsum...','2017-12-19 10:01:40.154255',NULL,1,36,NULL),(38,'Lorem ipsum...','2017-12-19 10:01:40.161361',NULL,1,37,NULL),(39,'Lorem ipsum...','2017-12-19 10:01:40.169795',NULL,1,38,NULL),(40,'Lorem ipsum...','2017-12-19 10:01:40.176769',NULL,1,39,NULL),(41,'Lorem ipsum...','2017-12-19 10:01:40.183517',NULL,1,40,NULL),(42,'Lorem ipsum...','2017-12-19 10:01:40.191475',NULL,1,41,NULL),(43,'Lorem ipsum...','2017-12-19 10:01:40.198714',NULL,1,42,NULL),(44,'Lorem ipsum...','2017-12-19 10:01:40.206328',NULL,1,43,NULL),(45,'Lorem ipsum...','2017-12-19 10:01:40.214065',NULL,1,44,NULL),(46,'Lorem ipsum...','2017-12-19 10:01:40.222230',NULL,1,45,NULL),(47,'Lorem ipsum...','2017-12-19 10:01:40.228473',NULL,1,46,NULL),(48,'Lorem ipsum...','2017-12-19 10:01:40.232491',NULL,1,47,NULL),(49,'Lorem ipsum...','2017-12-19 10:01:40.236451',NULL,1,48,NULL),(50,'Lorem ipsum...','2017-12-19 10:01:40.240515',NULL,1,49,NULL),(51,'Lorem ipsum...','2017-12-19 10:01:40.244986',NULL,1,50,NULL),(52,'Lorem ipsum...','2017-12-19 10:01:40.250296',NULL,1,51,NULL),(53,'Lorem ipsum...','2017-12-19 10:01:40.254401',NULL,1,52,NULL),(54,'Lorem ipsum...','2017-12-19 10:01:40.258755',NULL,1,53,NULL),(55,'Lorem ipsum...','2017-12-19 10:01:40.264918',NULL,1,54,NULL),(56,'Lorem ipsum...','2017-12-19 10:01:40.270244',NULL,1,55,NULL),(57,'Lorem ipsum...','2017-12-19 10:01:40.275240',NULL,1,56,NULL),(58,'Lorem ipsum...','2017-12-19 10:01:40.280806',NULL,1,57,NULL),(59,'Lorem ipsum...','2017-12-19 10:01:40.284820',NULL,1,58,NULL),(60,'Lorem ipsum...','2017-12-19 10:01:40.289429',NULL,1,59,NULL),(61,'Lorem ipsum...','2017-12-19 10:01:40.293912',NULL,1,60,NULL),(62,'Lorem ipsum...','2017-12-19 10:01:40.297740',NULL,1,61,NULL),(63,'Lorem ipsum...','2017-12-19 10:01:40.301368',NULL,1,62,NULL),(64,'Lorem ipsum...','2017-12-19 10:01:40.305527',NULL,1,63,NULL),(65,'Lorem ipsum...','2017-12-19 10:01:40.324693',NULL,1,64,NULL),(66,'Lorem ipsum...','2017-12-19 10:01:40.329297',NULL,1,65,NULL),(67,'Lorem ipsum...','2017-12-19 10:01:40.333971',NULL,1,66,NULL),(68,'Lorem ipsum...','2017-12-19 10:01:40.338894',NULL,1,67,NULL),(69,'Lorem ipsum...','2017-12-19 10:01:40.344511',NULL,1,68,NULL),(70,'Lorem ipsum...','2017-12-19 10:01:40.349171',NULL,1,69,NULL),(71,'Lorem ipsum...','2017-12-19 10:01:40.354661',NULL,1,70,NULL),(72,'Lorem ipsum...','2017-12-19 10:01:40.360125',NULL,1,71,NULL),(73,'Lorem ipsum...','2017-12-19 10:01:40.364492',NULL,1,72,NULL),(74,'Lorem ipsum...','2017-12-19 10:01:40.369040',NULL,1,73,NULL),(75,'Lorem ipsum...','2017-12-19 10:01:40.373179',NULL,1,74,NULL),(76,'Lorem ipsum...','2017-12-19 10:01:40.377602',NULL,1,75,NULL),(77,'Lorem ipsum...','2017-12-19 10:01:40.381508',NULL,1,76,NULL),(78,'Lorem ipsum...','2017-12-19 10:01:40.385454',NULL,1,77,NULL),(79,'Lorem ipsum...','2017-12-19 10:01:40.389289',NULL,1,78,NULL),(80,'Lorem ipsum...','2017-12-19 10:01:40.393166',NULL,1,79,NULL),(81,'Lorem ipsum...','2017-12-19 10:01:40.397967',NULL,1,80,NULL),(82,'Lorem ipsum...','2017-12-19 10:01:40.401809',NULL,1,81,NULL),(83,'Lorem ipsum...','2017-12-19 10:01:40.406009',NULL,1,82,NULL),(84,'Lorem ipsum...','2017-12-19 10:01:40.409877',NULL,1,83,NULL),(85,'Lorem ipsum...','2017-12-19 10:01:40.417548',NULL,1,84,NULL),(86,'Lorem ipsum...','2017-12-19 10:01:40.422532',NULL,1,85,NULL),(87,'Lorem ipsum...','2017-12-19 10:01:40.426784',NULL,1,86,NULL),(88,'Lorem ipsum...','2017-12-19 10:01:40.430616',NULL,1,87,NULL),(89,'Lorem ipsum...','2017-12-19 10:01:40.435318',NULL,1,88,NULL),(90,'Lorem ipsum...','2017-12-19 10:01:40.440533',NULL,1,89,NULL),(91,'Lorem ipsum...','2017-12-19 10:01:40.444428',NULL,1,90,NULL),(92,'Lorem ipsum...','2017-12-19 10:01:40.448539',NULL,1,91,NULL),(93,'Lorem ipsum...','2017-12-19 10:01:40.452648',NULL,1,92,NULL),(94,'Lorem ipsum...','2017-12-19 10:01:40.457470',NULL,1,93,NULL),(95,'Lorem ipsum...','2017-12-19 10:01:40.461725',NULL,1,94,NULL),(96,'Lorem ipsum...','2017-12-19 10:01:40.465727',NULL,1,95,NULL),(97,'Lorem ipsum...','2017-12-19 10:01:40.469751',NULL,1,96,NULL),(98,'Lorem ipsum...','2017-12-19 10:01:40.475365',NULL,1,97,NULL),(99,'Lorem ipsum...','2017-12-19 10:01:40.480504',NULL,1,98,NULL),(100,'Lorem ipsum...','2017-12-19 10:01:40.484535',NULL,1,99,NULL),(101,'Lorem ipsum...','2017-12-19 10:01:40.488803',NULL,1,100,NULL),(102,'Lorem ipsum...','2017-12-19 10:01:40.492847',NULL,1,101,NULL),(103,'Lorem ipsum...','2017-12-19 10:01:40.497509',NULL,1,102,NULL),(104,'Lorem ipsum...','2017-12-19 10:01:40.501700',NULL,1,103,NULL),(105,'Lorem ipsum...','2017-12-19 10:01:40.505826',NULL,1,104,NULL),(106,'Lorem ipsum...','2017-12-19 10:01:40.509929',NULL,1,105,NULL),(107,'#aafsvsjv','2017-12-20 07:14:11.325248',NULL,1,6,NULL),(108,'Alo','2017-12-20 08:01:48.949211',NULL,1,1,NULL),(109,'fdgsfdgsdfgsd','2017-12-20 08:02:34.686131',NULL,1,1,NULL),(110,'dfadfsfsd','2017-12-20 08:21:35.523878',NULL,1,13,NULL),(111,'gsdgsdfgdf','2017-12-20 08:22:03.958504',NULL,1,1,NULL),(112,'Try it','2017-12-20 09:14:41.840584',NULL,1,106,NULL);
/*!40000 ALTER TABLE `boards_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boards_topic`
--

DROP TABLE IF EXISTS `boards_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boards_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(25) NOT NULL,
  `last_updated` datetime(6) NOT NULL,
  `board_id` int(11) NOT NULL,
  `starter_id` int(11) NOT NULL,
  `views` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `boards_topic_board_id_4462fe82_fk_boards_board_id` (`board_id`),
  KEY `boards_topic_starter_id_60e98681_fk_auth_user_id` (`starter_id`),
  CONSTRAINT `boards_topic_board_id_4462fe82_fk_boards_board_id` FOREIGN KEY (`board_id`) REFERENCES `boards_board` (`id`),
  CONSTRAINT `boards_topic_starter_id_60e98681_fk_auth_user_id` FOREIGN KEY (`starter_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boards_topic`
--

LOCK TABLES `boards_topic` WRITE;
/*!40000 ALTER TABLE `boards_topic` DISABLE KEYS */;
INSERT INTO `boards_topic` VALUES (1,'First app','2017-12-20 08:22:03.961583',1,1,13),(2,'Web board project','2017-12-14 10:12:36.550701',1,1,1),(3,'Research Django','2017-12-15 03:22:26.843603',1,1,0),(4,'Learn Restful','2017-12-19 04:22:09.262508',1,1,1),(5,'Hello','2017-12-19 09:02:51.527651',2,1,0),(6,'Topic test #0','2017-12-19 10:01:39.970261',1,1,3),(7,'Topic test #1','2017-12-19 10:01:39.982124',1,1,0),(8,'Topic test #2','2017-12-19 10:01:39.989637',1,1,0),(9,'Topic test #3','2017-12-19 10:01:39.994625',1,1,0),(10,'Topic test #4','2017-12-19 10:01:39.998864',1,1,0),(11,'Topic test #5','2017-12-19 10:01:40.004546',1,1,0),(12,'Topic test #6','2017-12-19 10:01:40.011106',1,1,0),(13,'Topic test #7','2017-12-20 08:21:35.527614',1,1,1),(14,'Topic test #8','2017-12-19 10:01:40.020681',1,1,0),(15,'Topic test #9','2017-12-19 10:01:40.026716',1,1,0),(16,'Topic test #10','2017-12-19 10:01:40.034140',1,1,0),(17,'Topic test #11','2017-12-19 10:01:40.039071',1,1,0),(18,'Topic test #12','2017-12-19 10:01:40.046037',1,1,0),(19,'Topic test #13','2017-12-19 10:01:40.052086',1,1,0),(20,'Topic test #14','2017-12-19 10:01:40.060036',1,1,0),(21,'Topic test #15','2017-12-19 10:01:40.067501',1,1,0),(22,'Topic test #16','2017-12-19 10:01:40.075101',1,1,0),(23,'Topic test #17','2017-12-19 10:01:40.082661',1,1,0),(24,'Topic test #18','2017-12-19 10:01:40.089685',1,1,0),(25,'Topic test #19','2017-12-19 10:01:40.095403',1,1,0),(26,'Topic test #20','2017-12-19 10:01:40.101733',1,1,0),(27,'Topic test #21','2017-12-19 10:01:40.109733',1,1,0),(28,'Topic test #22','2017-12-19 10:01:40.114546',1,1,0),(29,'Topic test #23','2017-12-19 10:01:40.118712',1,1,0),(30,'Topic test #24','2017-12-19 10:01:40.122973',1,1,0),(31,'Topic test #25','2017-12-19 10:01:40.129096',1,1,0),(32,'Topic test #26','2017-12-19 10:01:40.133395',1,1,0),(33,'Topic test #27','2017-12-19 10:01:40.137547',1,1,0),(34,'Topic test #28','2017-12-19 10:01:40.141633',1,1,0),(35,'Topic test #29','2017-12-19 10:01:40.146222',1,1,0),(36,'Topic test #30','2017-12-19 10:01:40.151169',1,1,0),(37,'Topic test #31','2017-12-19 10:01:40.157827',1,1,0),(38,'Topic test #32','2017-12-19 10:01:40.166060',1,1,0),(39,'Topic test #33','2017-12-19 10:01:40.173394',1,1,0),(40,'Topic test #34','2017-12-19 10:01:40.180103',1,1,0),(41,'Topic test #35','2017-12-19 10:01:40.187706',1,1,0),(42,'Topic test #36','2017-12-19 10:01:40.195315',1,1,0),(43,'Topic test #37','2017-12-19 10:01:40.202440',1,1,0),(44,'Topic test #38','2017-12-19 10:01:40.210477',1,1,0),(45,'Topic test #39','2017-12-19 10:01:40.218747',1,1,0),(46,'Topic test #40','2017-12-19 10:01:40.225776',1,1,0),(47,'Topic test #41','2017-12-19 10:01:40.230273',1,1,0),(48,'Topic test #42','2017-12-19 10:01:40.234107',1,1,0),(49,'Topic test #43','2017-12-19 10:01:40.238065',1,1,0),(50,'Topic test #44','2017-12-19 10:01:40.242438',1,1,0),(51,'Topic test #45','2017-12-19 10:01:40.247898',1,1,0),(52,'Topic test #46','2017-12-19 10:01:40.252777',1,1,0),(53,'Topic test #47','2017-12-19 10:01:40.256853',1,1,0),(54,'Topic test #48','2017-12-19 10:01:40.261818',1,1,0),(55,'Topic test #49','2017-12-19 10:01:40.267519',1,1,0),(56,'Topic test #50','2017-12-19 10:01:40.272621',1,1,0),(57,'Topic test #51','2017-12-19 10:01:40.278406',1,1,0),(58,'Topic test #52','2017-12-19 10:01:40.282534',1,1,0),(59,'Topic test #53','2017-12-19 10:01:40.286706',1,1,0),(60,'Topic test #54','2017-12-19 10:01:40.292312',1,1,0),(61,'Topic test #55','2017-12-19 10:01:40.296330',1,1,0),(62,'Topic test #56','2017-12-19 10:01:40.299951',1,1,0),(63,'Topic test #57','2017-12-19 10:01:40.303186',1,1,0),(64,'Topic test #58','2017-12-19 10:01:40.314346',1,1,0),(65,'Topic test #59','2017-12-19 10:01:40.326777',1,1,0),(66,'Topic test #60','2017-12-19 10:01:40.331296',1,1,0),(67,'Topic test #61','2017-12-19 10:01:40.337038',1,1,0),(68,'Topic test #62','2017-12-19 10:01:40.341689',1,1,0),(69,'Topic test #63','2017-12-19 10:01:40.346364',1,1,0),(70,'Topic test #64','2017-12-19 10:01:40.352534',1,1,0),(71,'Topic test #65','2017-12-19 10:01:40.357483',1,1,0),(72,'Topic test #66','2017-12-19 10:01:40.361947',1,1,0),(73,'Topic test #67','2017-12-19 10:01:40.366569',1,1,0),(74,'Topic test #68','2017-12-19 10:01:40.370616',1,1,0),(75,'Topic test #69','2017-12-19 10:01:40.375192',1,1,0),(76,'Topic test #70','2017-12-19 10:01:40.379935',1,1,0),(77,'Topic test #71','2017-12-19 10:01:40.383859',1,1,0),(78,'Topic test #72','2017-12-19 10:01:40.387108',1,1,0),(79,'Topic test #73','2017-12-19 10:01:40.390809',1,1,0),(80,'Topic test #74','2017-12-19 10:01:40.395327',1,1,0),(81,'Topic test #75','2017-12-19 10:01:40.400393',1,1,0),(82,'Topic test #76','2017-12-19 10:01:40.404381',1,1,0),(83,'Topic test #77','2017-12-19 10:01:40.408361',1,1,0),(84,'Topic test #78','2017-12-19 10:01:40.414145',1,1,0),(85,'Topic test #79','2017-12-19 10:01:40.420752',1,1,2),(86,'Topic test #80','2017-12-19 10:01:40.425155',1,1,0),(87,'Topic test #81','2017-12-19 10:01:40.429115',1,1,0),(88,'Topic test #82','2017-12-19 10:01:40.433119',1,1,0),(89,'Topic test #83','2017-12-19 10:01:40.438041',1,1,0),(90,'Topic test #84','2017-12-19 10:01:40.442071',1,1,0),(91,'Topic test #85','2017-12-19 10:01:40.446045',1,1,0),(92,'Topic test #86','2017-12-19 10:01:40.450093',1,1,0),(93,'Topic test #87','2017-12-19 10:01:40.454458',1,1,0),(94,'Topic test #88','2017-12-19 10:01:40.460061',1,1,0),(95,'Topic test #89','2017-12-19 10:01:40.464137',1,1,0),(96,'Topic test #90','2017-12-19 10:01:40.468124',1,1,0),(97,'Topic test #91','2017-12-19 10:01:40.472305',1,1,0),(98,'Topic test #92','2017-12-19 10:01:40.477977',1,1,0),(99,'Topic test #93','2017-12-19 10:01:40.482187',1,1,0),(100,'Topic test #94','2017-12-19 10:01:40.486360',1,1,0),(101,'Topic test #95','2017-12-19 10:01:40.490455',1,1,0),(102,'Topic test #96','2017-12-19 10:01:40.494744',1,1,0),(103,'Topic test #97','2017-12-19 10:01:40.500160',1,1,0),(104,'Topic test #98','2017-12-19 10:01:40.504286',1,1,0),(105,'Topic test #99','2017-12-19 10:01:40.508371',1,1,0),(106,'C++','2017-12-20 09:14:41.836838',1,1,0);
/*!40000 ALTER TABLE `boards_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-12-14 09:13:09.668067','1','Django',1,'[{\"added\": {}}]',7,1),(2,'2017-12-14 09:13:14.076844','1','Django',2,'[]',7,1),(3,'2017-12-14 09:13:28.482980','2','Python',1,'[{\"added\": {}}]',7,1),(4,'2017-12-14 09:13:39.842677','3','Java',1,'[{\"added\": {}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'boards','board'),(8,'boards','post'),(9,'boards','topic'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-12-14 09:09:16.426764'),(2,'auth','0001_initial','2017-12-14 09:09:16.830455'),(3,'admin','0001_initial','2017-12-14 09:09:16.929568'),(4,'admin','0002_logentry_remove_auto_add','2017-12-14 09:09:16.964797'),(5,'contenttypes','0002_remove_content_type_name','2017-12-14 09:09:17.039002'),(6,'auth','0002_alter_permission_name_max_length','2017-12-14 09:09:17.054038'),(7,'auth','0003_alter_user_email_max_length','2017-12-14 09:09:17.073737'),(8,'auth','0004_alter_user_username_opts','2017-12-14 09:09:17.088250'),(9,'auth','0005_alter_user_last_login_null','2017-12-14 09:09:17.123449'),(10,'auth','0006_require_contenttypes_0002','2017-12-14 09:09:17.127947'),(11,'auth','0007_alter_validators_add_error_messages','2017-12-14 09:09:17.144881'),(12,'auth','0008_alter_user_username_max_length','2017-12-14 09:09:17.207858'),(13,'auth','0009_alter_user_last_name_max_length','2017-12-14 09:09:17.226221'),(14,'boards','0001_initial','2017-12-14 09:09:17.553313'),(15,'sessions','0001_initial','2017-12-14 09:09:17.586790'),(16,'boards','0002_topic_views','2017-12-19 09:24:38.092575');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('2gtmjnggvx85e9uu6qzsajvs0yt8698b','ZWZkYzY2NTRiNzc0YTBkMWJlZDBhYTVhM2I2ZDhjNmU5MDZhNDRjODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3OGNlYmJhNDYzZjg2NzYzNGIyZjM2YjdjMzEwZmU5OTE3YjE1YjI4Iiwidmlld2VkX3RvcGljXzIiOnRydWV9','2018-01-03 08:32:42.181504'),('dtfv6bcrfkw9ya7lrqq9i8fuduvo9a0e','OTJiZTEzYWU3MDgxNzg4MTJlNzdhZDJmODcxMzhmNjNkNTBjNTYwNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3OGNlYmJhNDYzZjg2NzYzNGIyZjM2YjdjMzEwZmU5OTE3YjE1YjI4Iiwidmlld2VkX3RvcGljXzEzIjp0cnVlLCJ2aWV3ZWRfdG9waWNfMSI6dHJ1ZX0=','2018-01-03 08:21:58.461508');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-21 16:32:41
