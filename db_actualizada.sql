CREATE DATABASE  IF NOT EXISTS `books_new_life` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `books_new_life`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: books_new_life
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add books',7,'add_books'),(26,'Can change books',7,'change_books'),(27,'Can delete books',7,'delete_books'),(28,'Can view books',7,'view_books'),(29,'Can add libro',8,'add_libro'),(30,'Can change libro',8,'change_libro'),(31,'Can delete libro',8,'delete_libro'),(32,'Can view libro',8,'view_libro'),(33,'Can add categorias',9,'add_categorias'),(34,'Can change categorias',9,'change_categorias'),(35,'Can delete categorias',9,'delete_categorias'),(36,'Can view categorias',9,'view_categorias'),(37,'Can add comentario',10,'add_comentario'),(38,'Can change comentario',10,'change_comentario'),(39,'Can delete comentario',10,'delete_comentario'),(40,'Can view comentario',10,'view_comentario'),(41,'Can add profile',11,'add_profile'),(42,'Can change profile',11,'change_profile'),(43,'Can delete profile',11,'delete_profile'),(44,'Can view profile',11,'view_profile'),(45,'Can add profile',12,'add_profile'),(46,'Can change profile',12,'change_profile'),(47,'Can delete profile',12,'delete_profile'),(48,'Can view profile',12,'view_profile');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$PWAOygF63D1WORgGeCQkpT$5yZfg/cXH1lUA4WTBf1B638kt8H/hEdSVCjgKZKeMqc=','2022-10-04 18:39:49.933312',1,'admin','Stiven','Chilito','admin2@correo.com',1,1,'2022-09-22 23:10:38.328378'),(2,'pbkdf2_sha256$390000$aRElZKKf9qsLbkxzSeyVp6$Pfkdj2nN3Fn12QjzeWYXdMVPxtenetFFbZMCWnOBNXU=','2022-09-23 18:20:13.347182',0,'osman2','','','',0,1,'2022-09-23 02:50:02.712755'),(3,'pbkdf2_sha256$390000$qpcoiOaKfpD8tGcXVnFmWY$CAi3OMIVusJmMqDl+B2ne6JhDyNzXWSGyG8F3sCelOs=',NULL,0,'osman3','','','',0,1,'2022-09-23 03:23:02.213738'),(4,'pbkdf2_sha256$390000$vwEoUMQmPcvrQ7jiF03Gno$8Sz2KylZKMIyhiw2cTL/9hoXNxcCmunIKhfRCx+zEOY=',NULL,0,'admin2','','','benito@yimeil.com',0,1,'2022-09-24 23:57:05.774045'),(5,'pbkdf2_sha256$390000$MHlQNwL76wBqUFgp7wToEz$Yc3Mo/XDC7bJeJ828w0HYaIKNGcWvLabFpg2DkTPWJ0=','2022-09-27 21:41:52.000000',0,'benito','benito','camelo','',0,1,'2022-09-27 04:55:53.000000'),(6,'pbkdf2_sha256$390000$0lScJw7BkGUyx1MDGEWB8E$ogAvCQEIqJ8vLBWY1lI9NaF47Wc7mdIiOy1UrUjsLKc=','2022-10-02 02:33:20.074951',1,'beren','osman','barros','osmanzxc02@gmail.com',1,1,'2022-09-30 07:43:45.193505'),(7,'pbkdf2_sha256$390000$PdFapHvx2NVGkxlbtig1Lu$c1I396KLwaz0llqdPxMTtTjZRGyP6kncafCOQnCo47s=','2022-10-01 21:26:39.803998',0,'osmanzxc02','osman','barros','osman2@gmail.com',0,1,'2022-09-30 21:25:53.799528'),(8,'pbkdf2_sha256$390000$lUBDvA17KNxjA4bAf4MEX9$3LqdJcL8IITJ6MFxChlpQ+QCXMvmenVL+i6Sq19aeqQ=',NULL,0,'beren2','osman','barros','osmanzxc02@gmail.com',0,1,'2022-10-01 23:52:28.981513'),(9,'pbkdf2_sha256$390000$pCptKgLxVCaAZ7yXbXBtg5$xwU8wcj75g7kf9oiP1Oxj4OpYJXksy402Q3MGBXEfrg=','2022-10-02 02:28:42.888309',0,'berenasd','osman','barros','osmanzsssxc02@gmail.com',0,1,'2022-10-02 02:28:37.981336'),(10,'pbkdf2_sha256$390000$m2NImFZITKI7QYaJi81Qr6$JJCK9dFVyRnd2ZTF2czIXctRgxontylXzY+QrVGTiU4=','2022-10-03 03:14:36.333513',0,'StivenC11','Stiven','Medina','yinnerstive@mail.com',0,1,'2022-10-03 03:07:24.302216'),(12,'pbkdf2_sha256$390000$nsKbSfoX3yXfJGzeANKyDi$7trCecjCRitvLe8DIStKcn1pKh6hlQs/49ZqlfBsKIk=','2022-10-03 21:14:57.158185',0,'UserPrueba','Nombre modificado','Apellido Moificado','usermod@mail.com',0,1,'2022-10-03 21:14:46.395399'),(13,'pbkdf2_sha256$390000$eWb0Rx5CDb4cMgUQ3OyjKZ$aWYsMhtNZdKDj+cVs2GDiczS4r7cQFDFxwykzaSgEYw=','2022-10-04 18:13:08.561582',0,'martes','miercoles','jueves','mi@mail.com',0,1,'2022-10-04 18:06:30.604426'),(14,'pbkdf2_sha256$390000$TZme3DBp3u4pal0yDcFYiL$1K9U4DMPO8yayF93jI13D7w0QSglsvY1dCxt2CiE3Y0=','2022-10-04 19:18:30.958857',0,'YinnerC30','alan','jose','al@mail.com',0,1,'2022-10-04 19:18:19.093942');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books_books`
--

DROP TABLE IF EXISTS `books_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books_books` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `autor` varchar(200) NOT NULL,
  `reseña` longtext,
  `usuario_id` int NOT NULL,
  `libro_img` varchar(100) DEFAULT NULL,
  `categoria` varchar(200) NOT NULL,
  `estado` varchar(15) NOT NULL,
  `fecha` datetime(6) NOT NULL,
  `editorial` varchar(50) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `precio` int DEFAULT NULL,
  `intencion` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `books_books_usuario_id_9977f027_fk_auth_user_id` (`usuario_id`),
  CONSTRAINT `books_books_usuario_id_9977f027_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_books`
--

LOCK TABLES `books_books` WRITE;
/*!40000 ALTER TABLE `books_books` DISABLE KEYS */;
INSERT INTO `books_books` VALUES (38,'Libro26','eerterter','<p>sdfsdfsdfsdf</p>',1,'','Ciencia ficción','Excelente','2022-10-04 18:51:45.855115','sdasdasd',0,0,'Vender');
/*!40000 ALTER TABLE `books_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books_books_likes`
--

DROP TABLE IF EXISTS `books_books_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books_books_likes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `books_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `books_books_likes_books_id_user_id_51195cde_uniq` (`books_id`,`user_id`),
  KEY `books_books_likes_user_id_439a3db6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `books_books_likes_books_id_6975721a_fk_books_books_id` FOREIGN KEY (`books_id`) REFERENCES `books_books` (`id`),
  CONSTRAINT `books_books_likes_user_id_439a3db6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_books_likes`
--

LOCK TABLES `books_books_likes` WRITE;
/*!40000 ALTER TABLE `books_books_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `books_books_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books_categorias`
--

DROP TABLE IF EXISTS `books_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books_categorias` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `categoria` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_categorias`
--

LOCK TABLES `books_categorias` WRITE;
/*!40000 ALTER TABLE `books_categorias` DISABLE KEYS */;
INSERT INTO `books_categorias` VALUES (1,'Ciencia ficción'),(2,'Novela'),(3,'Bibiografia'),(4,'Ficcion'),(7,'Policiacas'),(8,'Terror'),(9,'Epopeyas'),(10,'Comics');
/*!40000 ALTER TABLE `books_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-09-22 23:15:00.281645','2','primerpost|admin',1,'[{\"added\": {}}]',7,1),(2,'2022-09-22 23:41:47.222191','3','segundo|admin',1,'[{\"added\": {}}]',7,1),(3,'2022-09-23 00:02:42.329662','4','cien años de soledad|admin',1,'[{\"added\": {}}]',7,1),(4,'2022-09-23 01:18:58.611000','3','segundo|admin',3,'',7,1),(5,'2022-09-23 01:18:58.616996','2','primerpost|admin',3,'',7,1),(6,'2022-09-23 02:01:14.674012','5','libro|admin',1,'[{\"added\": {}}]',7,1),(7,'2022-09-23 18:22:04.931214','6','cien años de soledad|osman2',1,'[{\"added\": {}}]',7,1),(8,'2022-09-24 21:58:58.830395','7','la divina comedia|osman2',1,'[{\"added\": {}}]',7,1),(9,'2022-09-24 22:00:17.995173','6','cien años de soledad|osman2',3,'',7,1),(10,'2022-09-24 22:06:00.810434','8','la divina comedia|osman2',1,'[{\"added\": {}}]',7,1),(11,'2022-09-24 22:24:55.489426','8','la divina comedia|osman2',3,'',7,1),(12,'2022-09-24 23:21:46.902472','7','la divina comedia|osman2',2,'[{\"changed\": {\"fields\": [\"Estado\", \"Rese\\u00f1a\"]}}]',7,1),(13,'2022-09-24 23:30:29.072193','9','El Principito|osman3',1,'[{\"added\": {}}]',7,1),(14,'2022-09-25 01:07:16.964816','10','1984|admin2',2,'[{\"changed\": {\"fields\": [\"Rese\\u00f1a\"]}}]',7,1),(15,'2022-09-25 03:38:04.668051','10','1984|admin2',2,'[{\"changed\": {\"fields\": [\"Libro img\"]}}]',7,1),(16,'2022-09-25 20:56:23.102533','11','La Naranja Mecánica|osman2',2,'[{\"changed\": {\"fields\": [\"Libro img\"]}}]',7,1),(17,'2022-09-26 15:27:09.475367','17','Juego de tronos-Choque de reyes|admin2',2,'[{\"changed\": {\"fields\": [\"Autor\"]}}]',7,1),(18,'2022-09-26 22:10:03.584031','1','Ciencia ficción',1,'[{\"added\": {}}]',9,1),(19,'2022-09-26 22:10:28.938578','2','Novela',1,'[{\"added\": {}}]',9,1),(20,'2022-09-26 23:46:52.929645','3','Bibiografia',1,'[{\"added\": {}}]',9,1),(21,'2022-09-27 01:39:50.172879','4','Ficcion',1,'[{\"added\": {}}]',9,1),(22,'2022-09-27 01:40:22.506339','4','Ficcion',2,'[]',9,1),(23,'2022-09-27 01:45:29.060448','16','La Naranja Mecánica|admin',2,'[]',7,1),(24,'2022-09-27 01:45:42.500438','19','Dune|osman2',2,'[{\"changed\": {\"fields\": [\"Categoria\"]}}]',7,1),(25,'2022-09-27 04:55:53.657355','5','benito',1,'[{\"added\": {}}]',4,1),(26,'2022-09-27 04:59:46.493749','20','Viaje al centro de la tierra|benito',2,'[]',7,1),(27,'2022-09-28 02:00:09.044111','19','Dune|osman2',2,'[{\"changed\": {\"fields\": [\"Rese\\u00f1a\", \"Libro img\"]}}]',7,1),(28,'2022-09-28 02:00:45.964959','19','Dune|osman2',2,'[{\"changed\": {\"fields\": [\"Libro img\"]}}]',7,1),(29,'2022-09-28 02:01:24.976177','19','Dune|osman2',3,'',7,1),(30,'2022-09-28 02:02:49.464270','5','Cuentos',1,'[{\"added\": {}}]',9,1),(31,'2022-09-28 02:03:08.158183','5','Cuentos',3,'',9,1),(32,'2022-09-28 04:00:13.622683','6','Cuentos para niños',1,'[{\"added\": {}}]',9,1),(33,'2022-09-28 04:00:19.022730','6','Cuentos para niños',2,'[]',9,1),(34,'2022-09-30 07:47:50.299179','1','beren',1,'[{\"added\": {}}]',11,6),(35,'2022-09-30 08:44:32.028259','1','beren',2,'[{\"changed\": {\"fields\": [\"Profile pic\", \"Departamento\", \"Poblacion\", \"Telefono\", \"WhatsApp\", \"Facebook\"]}}]',11,6),(36,'2022-09-30 08:46:52.636103','1','beren',2,'[{\"changed\": {\"fields\": [\"Profile pic\"]}}]',11,6),(37,'2022-09-30 20:09:31.727758','1','admin',1,'[{\"added\": {}}]',12,1),(38,'2022-09-30 21:27:11.047547','2','beren',1,'[{\"added\": {}}]',12,6),(39,'2022-09-30 21:31:44.521192','2','beren',2,'[]',12,6),(40,'2022-09-30 21:35:36.194925','2','beren',3,'',12,6),(41,'2022-09-30 21:43:10.784606','3','beren',1,'[{\"added\": {}}]',12,6),(42,'2022-09-30 22:49:58.677641','3','beren',3,'',12,6),(43,'2022-09-30 23:20:00.639134','6','Cuentos para niños',3,'',9,6),(44,'2022-09-30 23:20:40.200138','7','Policiacas',1,'[{\"added\": {}}]',9,6),(45,'2022-09-30 23:27:20.904166','25','La vida de Lazarillo de Tormes|admin',1,'[{\"added\": {}}]',7,6),(46,'2022-09-30 23:28:50.763154','8','Terror',1,'[{\"added\": {}}]',9,6),(47,'2022-09-30 23:33:40.001178','9','Epopeyas',1,'[{\"added\": {}}]',9,6),(48,'2022-09-30 23:34:46.056586','25','La vida de Lazarillo de Tormes|admin',2,'[{\"changed\": {\"fields\": [\"Libro img\"]}}]',7,6),(49,'2022-09-30 23:36:37.286409','28','La Odisea|admin',1,'[{\"added\": {}}]',7,6),(50,'2022-09-30 23:36:58.534398','28','La Odisea|admin',2,'[{\"changed\": {\"fields\": [\"Libro img\"]}}]',7,6),(51,'2022-09-30 23:42:28.192834','28','La Odisea|admin',2,'[]',7,6),(52,'2022-09-30 23:43:03.921533','28','La Odisea|admin',2,'[{\"changed\": {\"fields\": [\"Libro img\"]}}]',7,6),(53,'2022-09-30 23:43:59.025917','10','Comics',1,'[{\"added\": {}}]',9,6),(54,'2022-10-01 19:32:17.700977','4','beren',1,'[{\"added\": {}}]',12,6),(55,'2022-10-01 19:35:19.506428','4','beren',3,'',12,6),(56,'2022-10-01 22:15:15.893807','5','beren',1,'[{\"added\": {}}]',12,6),(57,'2022-10-02 02:22:27.415847','8','None',3,'',12,6),(58,'2022-10-02 02:22:27.421848','7','None',3,'',12,6),(59,'2022-10-02 02:22:27.424849','6','None',3,'',12,6),(60,'2022-10-02 02:22:33.929779','5','beren',2,'[{\"changed\": {\"fields\": [\"Profile pic\"]}}]',12,6),(61,'2022-10-02 02:33:26.337881','9','berenasd',3,'',12,6),(62,'2022-10-02 02:34:39.961206','5','beren',3,'',12,6),(63,'2022-10-02 02:37:44.993122','11','beren',3,'',12,6),(64,'2022-10-02 02:37:44.998165','10','None',3,'',12,6),(65,'2022-10-02 02:37:45.001123','1','admin',3,'',12,6),(66,'2022-10-02 23:58:34.541755','12','admin',1,'[{\"added\": {}}]',12,1),(67,'2022-10-03 02:56:30.662142','32','Breves respuestas a las grandes preguntas|admin',1,'[{\"added\": {}}]',7,1),(68,'2022-10-03 03:13:12.915927','32','Breves respuestas a las grandes preguntas|admin',3,'',7,1),(69,'2022-10-03 03:13:43.865839','33','Breves respuestas a las grandes preguntas|StivenC11',1,'[{\"added\": {}}]',7,1),(70,'2022-10-03 04:17:05.417478','12','admin',2,'[{\"changed\": {\"fields\": [\"Profile pic\"]}}]',12,1),(71,'2022-10-03 12:31:46.745964','13','beren',1,'[{\"added\": {}}]',12,1),(72,'2022-10-03 12:32:31.315945','13','beren',2,'[{\"changed\": {\"fields\": [\"Profile pic\"]}}]',12,1),(73,'2022-10-03 12:40:49.556126','12','admin',2,'[{\"changed\": {\"fields\": [\"Profile pic\"]}}]',12,1),(74,'2022-10-03 12:41:33.836294','12','admin',2,'[{\"changed\": {\"fields\": [\"Profile pic\"]}}]',12,1),(75,'2022-10-04 18:39:59.654436','37','Breves respuest a las grandes preguntas|admin',3,'',7,1),(76,'2022-10-04 18:57:22.884736','12','admin',3,'',12,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'books','books'),(9,'books','categorias'),(8,'books','libro'),(11,'books','profile'),(5,'contenttypes','contenttype'),(10,'feedback','comentario'),(12,'miembros','profile'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-09-22 23:00:45.287408'),(2,'auth','0001_initial','2022-09-22 23:00:46.644626'),(3,'admin','0001_initial','2022-09-22 23:00:46.912939'),(4,'admin','0002_logentry_remove_auto_add','2022-09-22 23:00:46.925978'),(5,'admin','0003_logentry_add_action_flag_choices','2022-09-22 23:00:46.940983'),(6,'contenttypes','0002_remove_content_type_name','2022-09-22 23:00:47.042988'),(7,'auth','0002_alter_permission_name_max_length','2022-09-22 23:00:47.117992'),(8,'auth','0003_alter_user_email_max_length','2022-09-22 23:00:47.165996'),(9,'auth','0004_alter_user_username_opts','2022-09-22 23:00:47.180996'),(10,'auth','0005_alter_user_last_login_null','2022-09-22 23:00:47.396012'),(11,'auth','0006_require_contenttypes_0002','2022-09-22 23:00:47.403014'),(12,'auth','0007_alter_validators_add_error_messages','2022-09-22 23:00:47.417015'),(13,'auth','0008_alter_user_username_max_length','2022-09-22 23:00:47.492019'),(14,'auth','0009_alter_user_last_name_max_length','2022-09-22 23:00:47.561027'),(15,'auth','0010_alter_group_name_max_length','2022-09-22 23:00:47.593028'),(16,'auth','0011_update_proxy_permissions','2022-09-22 23:00:47.606031'),(17,'auth','0012_alter_user_first_name_max_length','2022-09-22 23:00:47.680037'),(18,'sessions','0001_initial','2022-09-22 23:00:47.822045'),(19,'books','0001_initial','2022-09-22 23:12:21.220904'),(20,'books','0002_books_libro_img','2022-09-22 23:59:51.493686'),(21,'books','0003_libro','2022-09-23 19:01:32.261377'),(22,'books','0004_books_categoria_books_estado','2022-09-24 21:50:36.744753'),(23,'books','0005_alter_books_estado','2022-09-24 21:53:16.682870'),(24,'books','0006_alter_books_estado','2022-09-24 21:58:32.210310'),(25,'books','0007_alter_books_estado','2022-09-24 22:04:22.031283'),(26,'books','0008_books_pais','2022-09-24 23:54:01.358489'),(27,'books','0009_remove_books_pais','2022-09-24 23:54:51.074133'),(28,'books','0010_delete_libro','2022-09-25 16:39:19.449948'),(29,'books','0011_books_fecha','2022-09-25 20:41:00.222558'),(30,'books','0012_alter_books_categoria','2022-09-25 21:47:42.850879'),(31,'books','0013_categorias','2022-09-25 21:47:42.890882'),(32,'books','0014_alter_books_categoria_alter_books_estado','2022-09-26 21:22:55.840290'),(33,'books','0015_books_likes','2022-09-27 18:16:42.600394'),(34,'books','0016_alter_books_reseña','2022-09-27 20:40:47.846300'),(35,'feedback','0001_initial','2022-09-28 03:40:56.355893'),(36,'feedback','0002_remove_comentario_fecha','2022-09-30 07:34:38.781819'),(37,'feedback','0003_alter_comentario_correo_alter_comentario_mensaje','2022-09-30 07:34:38.788819'),(38,'books','0002_profile','2022-09-30 07:39:26.020353'),(39,'books','0003_delete_profile','2022-09-30 07:42:35.555261'),(40,'books','0004_profile','2022-09-30 07:42:35.691270'),(41,'books','0005_profile_departamento_profile_facebook_and_more','2022-09-30 08:32:55.668365'),(42,'books','0006_delete_profile','2022-09-30 19:29:15.438752'),(43,'miembros','0001_initial','2022-09-30 19:29:15.619939'),(44,'books','0007_books_editorial','2022-10-04 18:04:00.423049'),(45,'books','0008_books_cantidad_books_precio','2022-10-04 18:04:00.515387'),(46,'books','0009_alter_books_cantidad_alter_books_precio','2022-10-04 18:04:00.559362'),(47,'books','0010_books_intencion','2022-10-04 18:04:00.625324'),(48,'books','0011_alter_books_intencion','2022-10-04 18:05:29.265365'),(49,'miembros','0002_rename_poblacion_profile_direccion_and_more','2022-10-04 18:05:29.353941'),(50,'miembros','0003_alter_profile_user','2022-10-04 18:05:29.531043'),(51,'miembros','0004_alter_profile_user','2022-10-04 18:05:29.714561');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('03w6dzdcncnnwnj3h72z0glu3frgn0px','.eJxVjDsOwjAQBe_iGln-xR9Kes5grb1rHEC2FCcV4u4QKQW0b2bei0XY1hq3QUuckZ2ZZKffLUF-UNsB3qHdOs-9rcuc-K7wgw5-7UjPy-H-HVQY9VsXA6SKnYpRgnyxBCEZzFqCD5glWm-EkDJp5wIkAK3IOjUp55J1QRT2_gD2czfU:1oeLEf:OTyen0ZBteOwgJTQm3vr1uSnaGz56Wh8nz4fjv0vKJ0','2022-10-14 18:59:45.326702'),('1bg6miz23ju8vk31a4uz0cy7duvggb1g','.eJxVjMsOwiAUBf-FtSFAecWle7-BcDlXqRqalHZl_HdD0oVuz8yct0h532raO69phjgLL06_G-Xy5DYAHrndF1mWtq0zyaHIg3Z5XcCvy-H-HdTc66hvNk7Rh1h4CposjCOjDDvLLpigOBponVGUDQwUBDh40jGDCOzF5wvgqjiT:1oeonA:e3u6Hw41O1v3H_8oED543GuLv0a84oiA5Fq3eUw2VA8','2022-10-16 02:33:20.081956'),('7z4tz73ge3y7ma4320uo2fnd1ac3jh4x','.eJxVjDsOwjAQRO_iGln4n6Wk5wzWrr3GAeRIcVIh7k4ipYBy5r2Zt4i4LjWunec4ZnERyorTb0mYntx2kh_Y7pNMU1vmkeSuyIN2eZsyv66H-3dQsddtbWy2MJwTWs8elGLSrL0ig9pZyxiyd4YdFw2kKaQSHBRPEADMsGXx-QL8TDfy:1ofnR0:ANEcBwwJtKxtprfb5EetVS4pSxSjHLvIAVW87UsZd4k','2022-10-18 19:18:30.967549'),('axvcqinpr06uc2d52scrvsw8i9z0ljps','.eJxVjDsOwjAQBe_iGln-xR9Kes5grb1rHEC2FCcV4u4QKQW0b2bei0XY1hq3QUuckZ2ZZKffLUF-UNsB3qHdOs-9rcuc-K7wgw5-7UjPy-H-HVQY9VsXA6SKnYpRgnyxBCEZzFqCD5glWm-EkDJp5wIkAK3IOjUp55J1QRT2_gD2czfU:1odONg:SbeTv5K-069IN5_IpR8MZLBDnxCe34QOFtX9HunHB-A','2022-10-12 04:09:08.623269'),('ojz87fbpqyqp4qi77tunmifhl3i9mz67','.eJxVjDsOwjAQBe_iGln-xR9Kes5grb1rHEC2FCcV4u4QKQW0b2bei0XY1hq3QUuckZ2ZZKffLUF-UNsB3qHdOs-9rcuc-K7wgw5-7UjPy-H-HVQY9VsXA6SKnYpRgnyxBCEZzFqCD5glWm-EkDJp5wIkAK3IOjUp55J1QRT2_gD2czfU:1ofVPw:jvJGlEXsg9vG3fm03tHx0laA5jkG9LNcVNtjyHVuhes','2022-10-18 00:04:12.613031');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback_comentario`
--

DROP TABLE IF EXISTS `feedback_comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback_comentario` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(254) NOT NULL,
  `departamento` varchar(100) NOT NULL,
  `mensaje` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback_comentario`
--

LOCK TABLES `feedback_comentario` WRITE;
/*!40000 ALTER TABLE `feedback_comentario` DISABLE KEYS */;
INSERT INTO `feedback_comentario` VALUES (1,'Yinner','y@mail.com','Cauca','Hola'),(2,'Juanito','y@mail.com','Cauca','Mensaje generico'),(3,'Osman','y@mail.com','Cauca','Mensaje generico'),(4,'Stiven','stiv@mail.com','Cali','Hola'),(5,'Stiven','stiv@mail.com','Cauca','Hola'),(6,'Yinner','y@mail.com','Cauca','Hola Books New life'),(7,'Stiven','stiv@mail.com','Cauca','Hola Books'),(8,'Yinner','stiv@mail.com','Cauca','Hola');
/*!40000 ALTER TABLE `feedback_comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miembros_profile`
--

DROP TABLE IF EXISTS `miembros_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `miembros_profile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `descripcion` longtext NOT NULL,
  `profile_pic` varchar(100) DEFAULT NULL,
  `departamento` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `whatsapp` varchar(10) NOT NULL,
  `facebook` varchar(700) NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `facebook` (`facebook`),
  UNIQUE KEY `miembros_profile_user_id_ca322824_uniq` (`user_id`),
  CONSTRAINT `miembros_profile_user_id_ca322824_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miembros_profile`
--

LOCK TABLES `miembros_profile` WRITE;
/*!40000 ALTER TABLE `miembros_profile` DISABLE KEYS */;
INSERT INTO `miembros_profile` VALUES (13,'Descripción de prueba','images/profile/perfi.jpg','Cauca','Bolívar Cauca','3147736549','3105679098','https://www.facebook.com/3',6),(15,'Esto es una prueba','images/profile/perfi_dLoZx9x.jpg','Cauca','Cauca/Municipio de Bolívar/Bolívar','3147736549','3147736549','https://www.facebook.com/67',13),(16,'Hola','images/profile/perfi_dJ7eeho.jpg','Cali','Cauca/Municipio de Bolívar/Bolívar','3147736549','3147736549','https://www.fadfsdfsdcebook.com/stiven',14);
/*!40000 ALTER TABLE `miembros_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'books_new_life'
--

--
-- Dumping routines for database 'books_new_life'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-04 14:24:28
