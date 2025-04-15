/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.8.1-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 192.168.122.11    Database: bustickets
-- ------------------------------------------------------
-- Server version	10.11.11-MariaDB-0+deb12u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `asiento`
--

DROP TABLE IF EXISTS `asiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `asiento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) NOT NULL,
  `clase` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asiento`
--

LOCK TABLES `asiento` WRITE;
/*!40000 ALTER TABLE `asiento` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `asiento` VALUES
(1,1,'A'),
(2,2,'A'),
(3,3,'A'),
(4,4,'A'),
(5,5,'A'),
(6,6,'A'),
(7,7,'A'),
(8,8,'A'),
(9,9,'A'),
(10,10,NULL),
(11,11,NULL),
(12,12,NULL),
(13,13,NULL),
(14,14,NULL),
(15,15,NULL),
(16,16,NULL),
(17,17,NULL),
(18,18,NULL),
(19,19,NULL),
(20,20,NULL),
(21,21,NULL),
(22,22,NULL),
(23,23,NULL),
(24,24,NULL),
(25,25,NULL),
(26,26,NULL),
(27,27,NULL),
(28,28,NULL),
(29,29,NULL),
(30,30,NULL),
(31,31,NULL),
(32,32,NULL),
(33,33,NULL),
(34,34,NULL),
(35,35,NULL),
(36,36,NULL),
(37,37,NULL),
(38,38,NULL);
/*!40000 ALTER TABLE `asiento` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `asiento_colectivo`
--

DROP TABLE IF EXISTS `asiento_colectivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `asiento_colectivo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `colectivo_id` int(11) DEFAULT NULL,
  `asiento_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_EF1D5C3DF75D996` (`colectivo_id`),
  KEY `IDX_EF1D5C3C642F3A8` (`asiento_id`),
  CONSTRAINT `FK_EF1D5C3C642F3A8` FOREIGN KEY (`asiento_id`) REFERENCES `asiento` (`id`),
  CONSTRAINT `FK_EF1D5C3DF75D996` FOREIGN KEY (`colectivo_id`) REFERENCES `colectivo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asiento_colectivo`
--

LOCK TABLES `asiento_colectivo` WRITE;
/*!40000 ALTER TABLE `asiento_colectivo` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `asiento_colectivo` VALUES
(9,4,1),
(10,4,2),
(11,4,3),
(12,4,4),
(13,4,5),
(14,4,6),
(15,4,7),
(16,4,8),
(17,4,9),
(18,4,10),
(19,4,11),
(20,4,12),
(21,4,13),
(22,4,14),
(23,4,15),
(24,4,16),
(25,4,17),
(26,4,18),
(27,4,19),
(28,4,20),
(29,4,21),
(30,4,22),
(31,4,23),
(32,4,24),
(33,4,25),
(34,4,26),
(35,4,27),
(36,4,28),
(37,4,29),
(38,4,30),
(39,4,31),
(40,4,32),
(41,4,33),
(42,4,34),
(43,4,35),
(44,4,36),
(45,4,37),
(46,4,38);
/*!40000 ALTER TABLE `asiento_colectivo` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `colectivo`
--

DROP TABLE IF EXISTS `colectivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `colectivo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modelo_id` int(11) DEFAULT NULL,
  `nombre` varchar(255) NOT NULL,
  `patente` varchar(255) NOT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_47A2CBE0C3A9576E` (`modelo_id`),
  CONSTRAINT `FK_47A2CBE0C3A9576E` FOREIGN KEY (`modelo_id`) REFERENCES `modelo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colectivo`
--

LOCK TABLES `colectivo` WRITE;
/*!40000 ALTER TABLE `colectivo` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `colectivo` VALUES
(4,NULL,'EL SANTIAGUEÑO','MES188',1);
/*!40000 ALTER TABLE `colectivo` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `fos_user_user`
--

DROP TABLE IF EXISTS `fos_user_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fos_user_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) NOT NULL,
  `username_canonical` varchar(180) NOT NULL,
  `email` varchar(180) NOT NULL,
  `email_canonical` varchar(180) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext NOT NULL COMMENT '(DC2Type:array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C560D76192FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_C560D761A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_C560D761C05FB297` (`confirmation_token`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fos_user_user`
--

LOCK TABLES `fos_user_user` WRITE;
/*!40000 ALTER TABLE `fos_user_user` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `fos_user_user` VALUES
(1,'admin','admin','admin@admin.com','admin@admin.com',1,NULL,'$2y$13$emjYOen20Lq5K/GGO05Y0efWwIePe//K3GuN08MzlZ/OqjoQPwg.y','2024-12-26 12:57:37',NULL,NULL,'a:1:{i:0;s:16:\"ROLE_SUPER_ADMIN\";}','2019-10-01 15:43:56','2025-04-12 04:26:01'),
(22,'root','root','root@admin.com','root@admin.com',1,NULL,'$2y$13$bi.TFLHyaNiepV9Rb9dfHu4L03Pd5wLuJkE1dh1Wxz8cTUN9QaknS','2025-03-26 10:04:01',NULL,NULL,'a:1:{i:0;s:16:\"ROLE_SUPER_ADMIN\";}','2024-12-26 12:59:20','2025-03-26 10:04:01');
/*!40000 ALTER TABLE `fos_user_user` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `marca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `marca` VALUES
(1,'Volkswagen',NULL);
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_messages`
--

LOCK TABLES `messenger_messages` WRITE;
/*!40000 ALTER TABLE `messenger_messages` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `messenger_messages` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `modelo`
--

DROP TABLE IF EXISTS `modelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modelo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marca_id` int(11) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `version` varchar(255) NOT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F0D76C4681EF0041` (`marca_id`),
  CONSTRAINT `FK_F0D76C4681EF0041` FOREIGN KEY (`marca_id`) REFERENCES `marca` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo`
--

LOCK TABLES `modelo` WRITE;
/*!40000 ALTER TABLE `modelo` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `modelo` VALUES
(1,NULL,'SEDAN','2012',1);
/*!40000 ALTER TABLE `modelo` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `pago`
--

DROP TABLE IF EXISTS `pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monto` decimal(10,0) NOT NULL,
  `fecha` date NOT NULL,
  `tipo` int(11) NOT NULL,
  `observacion` longtext DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL,
  `numero_comprobante` varchar(255) DEFAULT NULL,
  `importe_recibido` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago`
--

LOCK TABLES `pago` WRITE;
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `pago` VALUES
(2,11,'2025-03-22',1,NULL,NULL,'11',11);
/*!40000 ALTER TABLE `pago` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `pasaje`
--

DROP TABLE IF EXISTS `pasaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pasaje` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asiento_colectivo_id` int(11) NOT NULL,
  `viaje_id` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `pago_id` int(11) DEFAULT NULL,
  `costo` decimal(10,0) NOT NULL,
  `pasajero_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8CE74A0094E1E648` (`viaje_id`),
  KEY `IDX_8CE74A00C35D1EF7` (`asiento_colectivo_id`),
  KEY `IDX_8CE74A0063FB8380` (`pago_id`),
  KEY `IDX_8CE74A00704716FE` (`pasajero_id`),
  CONSTRAINT `FK_8CE74A0063FB8380` FOREIGN KEY (`pago_id`) REFERENCES `pago` (`id`),
  CONSTRAINT `FK_8CE74A0094E1E648` FOREIGN KEY (`viaje_id`) REFERENCES `viaje` (`id`),
  CONSTRAINT `FK_8CE74A00C35D1EF7` FOREIGN KEY (`asiento_colectivo_id`) REFERENCES `asiento_colectivo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pasaje`
--

LOCK TABLES `pasaje` WRITE;
/*!40000 ALTER TABLE `pasaje` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `pasaje` VALUES
(7,9,9,0,NULL,0,NULL),
(8,10,9,1,NULL,0,NULL),
(9,11,9,0,NULL,200,1),
(10,9,14,0,NULL,100,NULL),
(11,10,14,0,NULL,0,1),
(12,11,14,0,NULL,0,NULL),
(16,9,16,2,2,11000,1),
(17,10,16,2,2,11000,2),
(18,11,16,0,NULL,11000,NULL),
(19,12,16,0,NULL,11000,NULL),
(20,13,16,0,NULL,11000,NULL),
(21,14,16,0,NULL,11000,NULL),
(22,15,16,0,NULL,11000,NULL),
(23,16,16,0,NULL,11000,NULL),
(24,17,16,0,NULL,11000,NULL),
(25,18,16,0,NULL,11000,NULL),
(26,19,16,0,NULL,11000,NULL),
(27,20,16,0,NULL,11000,NULL),
(28,21,16,0,NULL,11000,NULL),
(29,22,16,0,NULL,11000,NULL),
(30,23,16,0,NULL,11000,NULL),
(31,24,16,0,NULL,11000,NULL),
(32,25,16,0,NULL,11000,NULL),
(33,26,16,0,NULL,11000,NULL),
(34,27,16,0,NULL,11000,NULL),
(35,28,16,0,NULL,11000,NULL),
(36,29,16,0,NULL,11000,NULL),
(37,30,16,0,NULL,11000,NULL),
(38,31,16,0,NULL,11000,NULL),
(39,32,16,0,NULL,11000,NULL),
(40,33,16,0,NULL,11000,NULL),
(41,34,16,0,NULL,11000,NULL),
(42,35,16,0,NULL,11000,NULL),
(43,36,16,0,NULL,11000,NULL),
(44,37,16,0,NULL,11000,NULL),
(45,38,16,0,NULL,11000,NULL),
(46,39,16,0,NULL,11000,NULL),
(47,40,16,0,NULL,11000,NULL),
(48,41,16,0,NULL,11000,NULL),
(49,42,16,0,NULL,11000,NULL),
(50,43,16,0,NULL,11000,NULL),
(51,44,16,0,NULL,11000,NULL),
(52,45,16,0,NULL,11000,NULL),
(53,46,16,0,NULL,11000,NULL);
/*!40000 ALTER TABLE `pasaje` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `pasajero`
--

DROP TABLE IF EXISTS `pasajero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pasajero` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `dni` int(11) NOT NULL,
  `edad` int(11) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pasajero`
--

LOCK TABLES `pasajero` WRITE;
/*!40000 ALTER TABLE `pasajero` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `pasajero` VALUES
(1,'Pablo','Gerez',26586320,NULL,NULL),
(2,'Alejandro','Autalan',28744456,NULL,NULL);
/*!40000 ALTER TABLE `pasajero` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `viaje`
--

DROP TABLE IF EXISTS `viaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `viaje` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `origen` varchar(255) NOT NULL,
  `destino` varchar(255) NOT NULL,
  `distancia` varchar(255) DEFAULT NULL,
  `fecha` date NOT NULL,
  `tiempo` time DEFAULT NULL,
  `costo` decimal(10,0) NOT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `colectivo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1D41ED16DF75D996` (`colectivo_id`),
  CONSTRAINT `FK_1D41ED16DF75D996` FOREIGN KEY (`colectivo_id`) REFERENCES `colectivo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viaje`
--

LOCK TABLES `viaje` WRITE;
/*!40000 ALTER TABLE `viaje` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `viaje` VALUES
(9,'SANTIAGO DEL ESTERO','BUENOS AIRES','100','2020-01-01','01:01:00',1000,1,4),
(14,'LA BANDA','LA CAÑADA','2222','2020-01-01','04:00:00',3000,1,4),
(16,'LA BANDA','TUCUMAN','500km','2025-01-19','02:00:00',11000,1,4);
/*!40000 ALTER TABLE `viaje` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-04-14  3:08:41
