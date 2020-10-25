-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: ramantest
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.16.04.1

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
  `name` varchar(150) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add question',1,'add_question'),(2,'Can change question',1,'change_question'),(3,'Can delete question',1,'delete_question'),(4,'Can view question',1,'view_question'),(5,'Can add choice',2,'add_choice'),(6,'Can change choice',2,'change_choice'),(7,'Can delete choice',2,'delete_choice'),(8,'Can view choice',2,'view_choice'),(9,'Can add log entry',3,'add_logentry'),(10,'Can change log entry',3,'change_logentry'),(11,'Can delete log entry',3,'delete_logentry'),(12,'Can view log entry',3,'view_logentry'),(13,'Can add permission',4,'add_permission'),(14,'Can change permission',4,'change_permission'),(15,'Can delete permission',4,'delete_permission'),(16,'Can view permission',4,'view_permission'),(17,'Can add group',5,'add_group'),(18,'Can change group',5,'change_group'),(19,'Can delete group',5,'delete_group'),(20,'Can view group',5,'view_group'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add content type',7,'add_contenttype'),(26,'Can change content type',7,'change_contenttype'),(27,'Can delete content type',7,'delete_contenttype'),(28,'Can view content type',7,'view_contenttype'),(29,'Can add session',8,'add_session'),(30,'Can change session',8,'change_session'),(31,'Can delete session',8,'delete_session'),(32,'Can view session',8,'view_session'),(33,'Can add ballot',9,'add_ballot'),(34,'Can change ballot',9,'change_ballot'),(35,'Can delete ballot',9,'delete_ballot'),(36,'Can view ballot',9,'view_ballot'),(37,'Can add candidate',10,'add_candidate'),(38,'Can change candidate',10,'change_candidate'),(39,'Can delete candidate',10,'delete_candidate'),(40,'Can view candidate',10,'view_candidate'),(41,'Can add election',11,'add_election'),(42,'Can change election',11,'change_election'),(43,'Can delete election',11,'delete_election'),(44,'Can view election',11,'view_election'),(45,'Can add post',12,'add_post'),(46,'Can change post',12,'change_post'),(47,'Can delete post',12,'delete_post'),(48,'Can view post',12,'view_post'),(49,'Can add voter',13,'add_voter'),(50,'Can change voter',13,'change_voter'),(51,'Can delete voter',13,'delete_voter'),(52,'Can view voter',13,'view_voter');
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
INSERT INTO `auth_user` VALUES (2,'pbkdf2_sha256$216000$zF5wLCVYiUwN$kdCnRA2HKyut60FgY4jUGYZiv9s0Pk/c3FMQlIOJGwc=','2020-10-13 15:21:12.851356',1,'uma','','','uma.jankiram@gmail.com',1,1,'2020-05-29 10:50:43.000000'),(3,'pbkdf2_sha256$216000$OlreEIxkXT8P$gXnFkP3ToY6mjRmFT/vbDF+NpsxFSWUh2OzL8P7d2iM=','2020-10-14 11:43:48.769956',1,'admin','','','',1,1,'2020-10-13 15:13:28.000000');
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (1,2,1),(2,2,2),(3,2,3),(4,2,4),(5,2,5),(6,2,6),(7,2,7),(8,2,8),(9,2,9),(10,2,10),(11,2,11),(12,2,12),(13,2,13),(14,2,14),(15,2,15),(16,2,16),(17,2,17),(18,2,18),(19,2,19),(20,2,20),(21,2,21),(22,2,22),(23,2,23),(24,2,24),(25,2,25),(26,2,26),(27,2,27),(28,2,28),(29,2,29),(30,2,30),(31,2,31),(32,2,32),(33,2,33),(34,2,34),(35,2,35),(36,2,36),(37,2,37),(38,2,38),(39,2,39),(40,2,40),(41,2,41),(42,2,42),(43,2,43),(44,2,44),(45,2,45),(46,2,46),(47,2,47),(48,2,48),(49,2,49),(50,2,50),(51,2,51),(52,2,52);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
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
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (5,'2020-05-29 10:52:31.984291','1','raman',3,'',6,2),(6,'2020-05-29 11:04:33.777293','1','Election object (1)',1,'[{\"added\": {}}]',11,2),(7,'2020-05-29 11:09:01.436159','1','Post object (1)',1,'[{\"added\": {}}]',12,2),(8,'2020-05-29 11:12:45.235254','1','Voter object (1)',1,'[{\"added\": {}}]',13,2),(9,'2020-05-30 02:59:57.224762','1','2020 Annual Election',2,'[{\"changed\": {\"fields\": [\"Election Status\"]}}]',11,2),(10,'2020-05-30 03:00:22.649461','1','2020 Annual Election',2,'[{\"changed\": {\"fields\": [\"Election Status\"]}}]',11,2),(11,'2020-05-30 03:00:45.801458','2','2020 Final Election',1,'[{\"added\": {}}]',11,2),(12,'2020-05-30 05:10:05.120991','3','MVM Kanchi School Election',1,'[{\"added\": {}}]',11,2),(13,'2020-05-30 05:10:51.923037','2','Deputy School Pupil Leader - Boys',1,'[{\"added\": {}}]',12,2),(14,'2020-05-30 05:13:15.832792','2','Muthu Krishnan 87648',1,'[{\"added\": {}}]',13,2),(15,'2020-05-30 05:14:21.769790','1','Candidate object (1)',1,'[{\"added\": {}}]',10,2),(16,'2020-05-30 05:14:59.446074','2','Candidate object (2)',1,'[{\"added\": {}}]',10,2),(17,'2020-05-30 07:54:03.760980','3','Ramaswamy',1,'[{\"added\": {}}]',13,2),(18,'2020-05-30 07:54:55.618669','4','Veluswamy',1,'[{\"added\": {}}]',13,2),(19,'2020-05-30 07:55:41.013435','5','Murugan Kumar',1,'[{\"added\": {}}]',13,2),(20,'2020-05-30 07:56:18.236349','6','Rathna Vel',1,'[{\"added\": {}}]',13,2),(21,'2020-05-30 07:56:46.756508','7','Bhimesh',1,'[{\"added\": {}}]',13,2),(22,'2020-05-30 07:57:24.267236','8','Subbramani',1,'[{\"added\": {}}]',13,2),(23,'2020-05-30 07:58:01.870765','9','Rangaraj',1,'[{\"added\": {}}]',13,2),(24,'2020-05-30 07:58:55.003647','10','Vadivel',1,'[{\"added\": {}}]',13,2),(25,'2020-05-30 07:59:25.713814','11','Bangaru',1,'[{\"added\": {}}]',13,2),(26,'2020-05-30 08:00:29.908964','12','Sudhanandan',1,'[{\"added\": {}}]',13,2),(27,'2020-05-30 11:16:26.090501','3','Vadivel',1,'[{\"added\": {}}]',10,2),(28,'2020-05-30 11:17:57.489024','4','Bhimesh',1,'[{\"added\": {}}]',10,2),(29,'2020-05-30 11:20:57.043278','1','voter',1,'[{\"added\": {}}]',5,2),(30,'2020-05-30 11:26:47.661590','3','voter',1,'[{\"added\": {}}]',6,2),(31,'2020-05-30 11:27:37.130574','3','voter',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,2),(32,'2020-05-30 11:29:20.620089','3','voter',3,'',6,2),(33,'2020-05-30 11:29:59.933384','4','voter',1,'[{\"added\": {}}]',6,2),(34,'2020-05-30 11:30:16.578931','4','voter',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,2),(35,'2020-05-31 09:19:15.308876','5','Subbramani',1,'[{\"added\": {}}]',10,2),(36,'2020-06-01 11:20:10.855350','2','2020 Final Election',2,'[{\"changed\": {\"fields\": [\"Election Status\"]}}]',11,2),(37,'2020-06-01 11:20:47.344379','1','2020 Annual Election',2,'[{\"changed\": {\"fields\": [\"Election Status\"]}}]',11,2),(38,'2020-06-01 11:20:57.409257','2','2020 Final Election',2,'[{\"changed\": {\"fields\": [\"Election Status\"]}}]',11,2),(39,'2020-06-01 11:21:21.895307','3','MVM Junior School Election',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',11,2),(40,'2020-06-01 11:32:30.996320','2','Deputy School Pupil Leader - Boys',2,'[{\"changed\": {\"fields\": [\"Display Order\"]}}]',12,2),(41,'2020-06-06 10:07:11.068545','6','Murugan Kumar',1,'[{\"added\": {}}]',10,2),(42,'2020-06-06 10:09:56.175106','3','MVM Junior School Election',2,'[{\"changed\": {\"fields\": [\"Election Status\"]}}]',11,2),(43,'2020-06-06 10:11:08.727402','3','MVM Junior School Election',2,'[{\"changed\": {\"fields\": [\"Election Status\"]}}]',11,2),(44,'2020-06-06 10:25:00.936889','3','School Pupil Leader Girls',1,'[{\"added\": {}}]',12,2),(45,'2020-06-06 10:25:45.418449','4','School Pupil Leader Girls',1,'[{\"added\": {}}]',12,2),(46,'2020-06-06 10:26:12.870702','7','Bangaru',1,'[{\"added\": {}}]',10,2),(47,'2020-06-06 10:26:59.851356','4','School Pupil Leader Girls',3,'',12,2),(48,'2020-06-09 02:01:46.789909','4','2021 Annual Election',1,'[{\"added\": {}}]',11,2),(49,'2020-06-09 02:02:31.053704','4','Deputy School Pupil Leader - Girls',1,'[{\"added\": {}}]',12,2),(50,'2020-06-09 02:04:52.571407','13','Charu Latha',1,'[{\"added\": {}}]',13,2),(51,'2020-06-09 02:05:45.999313','14','Lakshmi Priya',1,'[{\"added\": {}}]',13,2),(52,'2020-06-09 02:08:33.331942','8','Lakshmi Priya',1,'[{\"added\": {}}]',10,2),(53,'2020-06-13 09:05:13.624095','1','voter',3,'',5,2),(54,'2020-06-13 09:06:10.242009','4','voter',3,'',6,2),(55,'2020-08-02 06:09:16.657732','15','Sarvesh',1,'[{\"added\": {}}]',13,2),(56,'2020-08-02 06:14:45.320589','16','Soma Skandan',1,'[{\"added\": {}}]',13,2),(57,'2020-08-02 06:17:10.730510','9','Bhimesh',1,'[{\"added\": {}}]',10,2),(58,'2020-08-02 06:20:07.126353','10','Soma Skandan',1,'[{\"added\": {}}]',10,2),(59,'2020-08-02 06:27:23.016399','17','Neelakanthan',1,'[{\"added\": {}}]',13,2),(60,'2020-08-02 06:28:48.569092','18','Akhileshwari Somasundaram',1,'[{\"added\": {}}]',13,2),(61,'2020-08-02 06:29:19.022132','11','Akhileshwari Somasundaram',1,'[{\"added\": {}}]',10,2),(62,'2020-08-02 12:53:00.350069','19','Sri Ambal Devi',1,'[{\"added\": {}}]',13,2),(63,'2020-08-02 12:53:45.983217','12','Sri Ambal Devi',1,'[{\"added\": {}}]',10,2),(64,'2020-09-22 10:02:05.319863','21','Shanmugha',1,'[{\"added\": {}}]',13,2),(65,'2020-09-22 10:05:41.102672','13','Shanmugha',1,'[{\"added\": {}}]',10,2),(66,'2020-10-11 15:12:05.104341','22','Dinesh',1,'[{\"added\": {}}]',13,2),(67,'2020-10-11 15:15:55.490593','14','Dinesh',1,'[{\"added\": {}}]',10,2),(68,'2020-10-13 13:11:04.818582','23','Binod',1,'[{\"added\": {}}]',13,2),(69,'2020-10-13 13:12:29.485048','15','Binod',1,'[{\"added\": {}}]',10,2),(70,'2020-10-13 15:13:28.987754','3','admin',1,'[{\"added\": {}}]',6,2),(71,'2020-10-13 15:14:29.279607','3','admin',2,'[{\"changed\": {\"fields\": [\"Superuser status\"]}}]',6,2),(72,'2020-10-13 15:14:53.357038','3','admin',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',6,2),(73,'2020-10-13 15:17:26.518538','2','uma',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',6,2),(74,'2020-10-14 12:07:35.168325','24','Harini Sri',1,'[{\"added\": {}}]',13,3),(75,'2020-10-14 14:29:21.382742','25','Sri Vidya',1,'[{\"added\": {}}]',13,3),(76,'2020-10-14 14:31:33.322398','16','Sri Vidya',1,'[{\"added\": {}}]',10,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (3,'admin','logentry'),(5,'auth','group'),(4,'auth','permission'),(6,'auth','user'),(7,'contenttypes','contenttype'),(2,'polls','choice'),(1,'polls','question'),(8,'sessions','session'),(9,'voting','ballot'),(10,'voting','candidate'),(11,'voting','election'),(12,'voting','post'),(13,'voting','voter');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-05-25 10:37:50.038852'),(2,'auth','0001_initial','2020-05-25 10:37:52.047726'),(3,'admin','0001_initial','2020-05-25 10:37:59.375898'),(4,'admin','0002_logentry_remove_auto_add','2020-05-25 10:38:00.950118'),(5,'admin','0003_logentry_add_action_flag_choices','2020-05-25 10:38:01.016943'),(6,'contenttypes','0002_remove_content_type_name','2020-05-25 10:38:02.297341'),(7,'auth','0002_alter_permission_name_max_length','2020-05-25 10:38:02.431389'),(8,'auth','0003_alter_user_email_max_length','2020-05-25 10:38:02.565660'),(9,'auth','0004_alter_user_username_opts','2020-05-25 10:38:02.624431'),(10,'auth','0005_alter_user_last_login_null','2020-05-25 10:38:03.248420'),(11,'auth','0006_require_contenttypes_0002','2020-05-25 10:38:03.306480'),(12,'auth','0007_alter_validators_add_error_messages','2020-05-25 10:38:03.389948'),(13,'auth','0008_alter_user_username_max_length','2020-05-25 10:38:03.547081'),(14,'auth','0009_alter_user_last_name_max_length','2020-05-25 10:38:03.693407'),(15,'auth','0010_alter_group_name_max_length','2020-05-25 10:38:03.892713'),(16,'auth','0011_update_proxy_permissions','2020-05-25 10:38:03.954954'),(17,'polls','0001_initial','2020-05-25 10:38:04.570245'),(18,'sessions','0001_initial','2020-05-25 10:38:05.668248'),(19,'voting','0001_initial','2020-05-29 10:45:13.049980'),(20,'voting','0002_post_display_order','2020-06-01 11:31:36.624041'),(21,'voting','0003_auto_20200601_1130','2020-06-01 11:31:36.687087'),(22,'voting','0004_ballot_candidate','2020-06-07 05:33:04.798685');
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
INSERT INTO `django_session` VALUES ('npyks5bzd7jbowcz2qzc3vlr3n8ayk1w','.eJxVjDkOwjAQAP_iGllrNr4o6fMGa33hALKlOKkQfwdLKaCdGc2LOdq34vaeVrdEdmHITr_MU3ikOkS8U701Hlrd1sXzkfDDdj63mJ7Xo_0bFOplbD2qIEkAWOEhG5PyOZusLQiMmEF-gVXCGmMxgNYYDGo1Ze1JCy8n9v4Ayik2_g:1kShth:e3E-70H-jO62H3Dj2j4KltqZRkcwLVNkt3C6D1mumoc','2020-10-28 14:36:57.688263');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_choice`
--

DROP TABLE IF EXISTS `polls_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polls_choice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `choice_text` varchar(200) NOT NULL,
  `votes` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `polls_choice_question_id_c5b4b260_fk_polls_question_id` (`question_id`),
  CONSTRAINT `polls_choice_question_id_c5b4b260_fk_polls_question_id` FOREIGN KEY (`question_id`) REFERENCES `polls_question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_choice`
--

LOCK TABLES `polls_choice` WRITE;
/*!40000 ALTER TABLE `polls_choice` DISABLE KEYS */;
INSERT INTO `polls_choice` VALUES (1,'Not much',0,1),(2,'Not working',0,1),(3,'Boring',0,1);
/*!40000 ALTER TABLE `polls_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_question`
--

DROP TABLE IF EXISTS `polls_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polls_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_text` varchar(200) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_question`
--

LOCK TABLES `polls_question` WRITE;
/*!40000 ALTER TABLE `polls_question` DISABLE KEYS */;
INSERT INTO `polls_question` VALUES (1,'How do feel right now?','2020-05-25 10:44:33.000000'),(2,'Your favourite color','2020-05-25 15:04:02.000000'),(3,'Your favourite weather','2020-05-25 15:05:13.000000');
/*!40000 ALTER TABLE `polls_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voting_ballot`
--

DROP TABLE IF EXISTS `voting_ballot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voting_ballot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time_stamp` datetime(6) NOT NULL,
  `voter_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `voting_ballot_voter_id_b93802da_fk_voting_voter_id` (`voter_id`),
  KEY `voting_ballot_candidate_id_66f89df1_fk_voting_candidate_id` (`candidate_id`),
  CONSTRAINT `voting_ballot_candidate_id_66f89df1_fk_voting_candidate_id` FOREIGN KEY (`candidate_id`) REFERENCES `voting_candidate` (`id`),
  CONSTRAINT `voting_ballot_voter_id_b93802da_fk_voting_voter_id` FOREIGN KEY (`voter_id`) REFERENCES `voting_voter` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voting_ballot`
--

LOCK TABLES `voting_ballot` WRITE;
/*!40000 ALTER TABLE `voting_ballot` DISABLE KEYS */;
INSERT INTO `voting_ballot` VALUES (8,'2020-06-08 14:36:21.424265',9,3),(9,'2020-06-08 14:36:21.547476',9,5),(10,'2020-06-08 14:36:21.726272',9,7),(11,'2020-06-09 02:09:56.052900',13,3),(12,'2020-06-09 02:09:56.164353',13,4),(13,'2020-06-09 02:09:56.341407',13,8),(14,'2020-06-13 08:57:50.894215',12,1),(15,'2020-06-13 08:57:51.000240',12,2),(16,'2020-06-13 08:57:51.134025',12,8),(17,'2020-08-02 06:10:14.705324',15,1),(18,'2020-08-02 06:10:14.801360',15,5),(19,'2020-08-02 06:10:14.879359',15,8),(20,'2020-08-02 06:15:09.972982',16,6),(21,'2020-08-02 06:15:10.051402',16,2),(22,'2020-08-02 06:15:10.118249',16,8),(23,'2020-08-02 06:27:52.088977',17,9),(24,'2020-08-02 06:27:52.174467',17,10),(25,'2020-08-02 06:27:52.276430',17,7),(26,'2020-08-02 06:30:26.569255',18,9),(27,'2020-08-02 06:30:26.695536',18,10),(28,'2020-08-02 06:30:26.796078',18,7),(29,'2020-08-02 06:30:26.885097',18,11),(30,'2020-08-02 12:54:23.032385',19,1),(31,'2020-08-02 12:54:23.157536',19,4),(32,'2020-08-02 12:54:23.246317',19,8),(33,'2020-08-02 12:54:23.346404',19,12),(34,'2020-09-22 10:07:17.130102',21,3),(35,'2020-09-22 10:07:17.274114',21,13),(36,'2020-09-22 10:07:17.351526',21,8),(37,'2020-09-22 10:07:17.429854',21,11),(38,'2020-10-11 15:18:53.244029',22,14),(39,'2020-10-11 15:18:53.423096',22,10),(40,'2020-10-11 15:18:53.490531',22,8),(41,'2020-10-11 15:18:53.601450',22,11),(42,'2020-10-13 13:15:49.313717',23,14),(43,'2020-10-13 13:15:49.432434',23,15),(44,'2020-10-13 13:15:49.531787',23,8),(45,'2020-10-13 13:15:49.631798',23,12),(46,'2020-10-14 12:08:04.047230',24,9),(47,'2020-10-14 12:08:04.172382',24,15),(48,'2020-10-14 12:08:04.239862',24,7),(49,'2020-10-14 12:08:04.306343',24,11),(50,'2020-10-14 14:36:24.248638',25,14),(51,'2020-10-14 14:36:24.549512',25,13),(52,'2020-10-14 14:36:24.649991',25,8),(53,'2020-10-14 14:36:24.738022',25,16);
/*!40000 ALTER TABLE `voting_ballot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voting_candidate`
--

DROP TABLE IF EXISTS `voting_candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voting_candidate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `votes` int(10) unsigned NOT NULL,
  `election_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `voter_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `voting_candidate_election_id_1286d9a6_fk_voting_election_id` (`election_id`),
  KEY `voting_candidate_post_id_a95fa395_fk_voting_post_id` (`post_id`),
  KEY `voting_candidate_voter_id_76dfba38_fk_voting_voter_id` (`voter_id`),
  CONSTRAINT `voting_candidate_election_id_1286d9a6_fk_voting_election_id` FOREIGN KEY (`election_id`) REFERENCES `voting_election` (`id`),
  CONSTRAINT `voting_candidate_post_id_a95fa395_fk_voting_post_id` FOREIGN KEY (`post_id`) REFERENCES `voting_post` (`id`),
  CONSTRAINT `voting_candidate_voter_id_76dfba38_fk_voting_voter_id` FOREIGN KEY (`voter_id`) REFERENCES `voting_voter` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voting_candidate`
--

LOCK TABLES `voting_candidate` WRITE;
/*!40000 ALTER TABLE `voting_candidate` DISABLE KEYS */;
INSERT INTO `voting_candidate` VALUES (1,3,1,1,2),(2,2,1,2,1),(3,4,1,1,10),(4,3,1,2,7),(5,2,1,2,8),(6,1,1,1,5),(7,5,1,3,11),(8,9,1,3,14),(9,3,1,1,7),(10,3,1,2,16),(11,4,1,4,18),(12,2,1,4,19),(13,2,1,2,21),(14,3,1,1,22),(15,2,1,2,23),(16,1,1,4,25);
/*!40000 ALTER TABLE `voting_candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voting_election`
--

DROP TABLE IF EXISTS `voting_election`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voting_election` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desc_text` varchar(200) NOT NULL,
  `status` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voting_election`
--

LOCK TABLES `voting_election` WRITE;
/*!40000 ALTER TABLE `voting_election` DISABLE KEYS */;
INSERT INTO `voting_election` VALUES (1,'2020 Annual Election','M'),(2,'2020 Final Election','P'),(3,'MVM Junior School Election','P'),(4,'2021 Annual Election','P');
/*!40000 ALTER TABLE `voting_election` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voting_post`
--

DROP TABLE IF EXISTS `voting_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voting_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_name` varchar(100) NOT NULL,
  `display_order` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voting_post`
--

LOCK TABLES `voting_post` WRITE;
/*!40000 ALTER TABLE `voting_post` DISABLE KEYS */;
INSERT INTO `voting_post` VALUES (1,'School Pupil Leader Boys',0),(2,'Deputy School Pupil Leader - Boys',1),(3,'School Pupil Leader Girls',0),(4,'Deputy School Pupil Leader - Girls',0);
/*!40000 ALTER TABLE `voting_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voting_voter`
--

DROP TABLE IF EXISTS `voting_voter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voting_voter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voter_name` varchar(100) NOT NULL,
  `date_of_birth` date NOT NULL,
  `school_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `school_id` (`school_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voting_voter`
--

LOCK TABLES `voting_voter` WRITE;
/*!40000 ALTER TABLE `voting_voter` DISABLE KEYS */;
INSERT INTO `voting_voter` VALUES (1,'John Doe','2003-08-20','12345667'),(2,'Muthu Krishnan','2003-05-30','87648'),(3,'Ramaswamy','2003-06-05','900305'),(4,'Veluswamy','2003-01-31','900307'),(5,'Murugan Kumar','2003-02-26','900310'),(6,'Rathna Vel','2003-03-24','97908'),(7,'Bhimesh','2003-08-22','900324'),(8,'Subbramani','2003-10-15','900876'),(9,'Rangaraj','2003-04-05','900311'),(10,'Vadivel','2003-03-30','800246'),(11,'Bangaru','2003-06-05','877345'),(12,'Sudhanandan','2003-11-05','800324'),(13,'Charu Latha','2003-06-02','900331'),(14,'Lakshmi Priya','2008-06-10','900332'),(15,'Sarvesh','2003-04-17','894572'),(16,'Soma Skandan','2004-02-29','13579'),(17,'Neelakanthan','2003-09-14','442310'),(18,'Akhileshwari Somasundaram','2004-03-17','712906'),(19,'Sri Ambal Devi','2002-12-27','424242'),(20,'Bala Murugan','2002-11-18','646464'),(21,'Shanmugha','2004-03-15','3105712'),(22,'Dinesh','2003-02-26','97531'),(23,'Binod','2003-06-13','343434'),(24,'Harini Sri','2003-05-30','506978'),(25,'Sri Vidya','2003-06-04','246810');
/*!40000 ALTER TABLE `voting_voter` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-24 17:03:25
