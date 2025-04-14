/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.8.1-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 192.168.122.11    Database: bustickets2
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
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciudad` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) NOT NULL,
  `provincia_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ciudad_provincia_FK` (`provincia_id`),
  CONSTRAINT `ciudad_provincia_FK` FOREIGN KEY (`provincia_id`) REFERENCES `provincia` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fos_user_user`
--

LOCK TABLES `fos_user_user` WRITE;
/*!40000 ALTER TABLE `fos_user_user` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `fos_user_user` VALUES
(23,'admin','admin','admin@admin.com','admin@admin.com',1,NULL,'$2y$13$emjYOen20Lq5K/GGO05Y0efWwIePe//K3GuN08MzlZ/OqjoQPwg.y','2025-04-12 04:40:39',NULL,NULL,'a:1:{i:0;s:16:\"ROLE_SUPER_ADMIN\";}','2019-10-01 15:43:56','2025-04-12 04:40:39'),
(24,'root','root','root@admin.com','root@admin.com',1,NULL,'$2y$13$bi.TFLHyaNiepV9Rb9dfHu4L03Pd5wLuJkE1dh1Wxz8cTUN9QaknS','2025-03-26 10:04:01',NULL,NULL,'a:1:{i:0;s:16:\"ROLE_SUPER_ADMIN\";}','2024-12-26 12:59:20','2025-03-26 10:04:01');
/*!40000 ALTER TABLE `fos_user_user` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `parada`
--

DROP TABLE IF EXISTS `parada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `parada` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) NOT NULL,
  `provincia_id` int(10) unsigned DEFAULT NULL,
  `ciudad_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parada_provincia_FK` (`provincia_id`),
  KEY `parada_ciudad_FK` (`ciudad_id`),
  CONSTRAINT `parada_ciudad_FK` FOREIGN KEY (`ciudad_id`) REFERENCES `ciudad` (`id`),
  CONSTRAINT `parada_provincia_FK` FOREIGN KEY (`provincia_id`) REFERENCES `provincia` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parada`
--

LOCK TABLES `parada` WRITE;
/*!40000 ALTER TABLE `parada` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `parada` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `provincia`
--

DROP TABLE IF EXISTS `provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `provincia` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincia`
--

LOCK TABLES `provincia` WRITE;
/*!40000 ALTER TABLE `provincia` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `servicio`
--

DROP TABLE IF EXISTS `servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicio` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `partida` datetime NOT NULL,
  `llegada` datetime NOT NULL,
  `trayecto_id` int(10) unsigned DEFAULT NULL,
  `transporte_id` int(10) unsigned DEFAULT NULL,
  `vehiculo_id` int(10) unsigned DEFAULT NULL,
  `estado` smallint(6) DEFAULT NULL COMMENT 'Draft, Preventa, Transporte, Finalizado',
  PRIMARY KEY (`id`),
  KEY `servicio_trayecto_FK` (`trayecto_id`),
  KEY `servicio_transporte_FK` (`transporte_id`),
  KEY `servicio_vehiculo_FK` (`vehiculo_id`),
  CONSTRAINT `servicio_transporte_FK` FOREIGN KEY (`transporte_id`) REFERENCES `transporte` (`id`),
  CONSTRAINT `servicio_trayecto_FK` FOREIGN KEY (`trayecto_id`) REFERENCES `trayecto` (`id`),
  CONSTRAINT `servicio_vehiculo_FK` FOREIGN KEY (`vehiculo_id`) REFERENCES `vehiculo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio`
--

LOCK TABLES `servicio` WRITE;
/*!40000 ALTER TABLE `servicio` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `servicio` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `transporte`
--

DROP TABLE IF EXISTS `transporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `transporte` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `nro_asientos` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transporte`
--

LOCK TABLES `transporte` WRITE;
/*!40000 ALTER TABLE `transporte` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `transporte` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `transporte_asiento`
--

DROP TABLE IF EXISTS `transporte_asiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `transporte_asiento` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transporte_id` int(10) unsigned DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `categoria` smallint(6) DEFAULT NULL COMMENT 'Premium\nSemicama\nComun',
  PRIMARY KEY (`id`),
  KEY `transporte_asiento_transporte_FK` (`transporte_id`),
  CONSTRAINT `transporte_asiento_transporte_FK` FOREIGN KEY (`transporte_id`) REFERENCES `transporte` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transporte_asiento`
--

LOCK TABLES `transporte_asiento` WRITE;
/*!40000 ALTER TABLE `transporte_asiento` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `transporte_asiento` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `trayecto`
--

DROP TABLE IF EXISTS `trayecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `trayecto` (
  `id` int(10) unsigned NOT NULL,
  `nombre` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trayecto`
--

LOCK TABLES `trayecto` WRITE;
/*!40000 ALTER TABLE `trayecto` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `trayecto` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `trayecto_parada`
--

DROP TABLE IF EXISTS `trayecto_parada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `trayecto_parada` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parada_id` int(10) unsigned DEFAULT NULL,
  `trayecto_id` int(10) unsigned DEFAULT NULL,
  `nro_orden` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trayecto_parada_trayecto_FK` (`trayecto_id`),
  KEY `trayecto_parada_parada_FK` (`parada_id`),
  CONSTRAINT `trayecto_parada_parada_FK` FOREIGN KEY (`parada_id`) REFERENCES `parada` (`id`),
  CONSTRAINT `trayecto_parada_trayecto_FK` FOREIGN KEY (`trayecto_id`) REFERENCES `trayecto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trayecto_parada`
--

LOCK TABLES `trayecto_parada` WRITE;
/*!40000 ALTER TABLE `trayecto_parada` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `trayecto_parada` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `vehiculo`
--

DROP TABLE IF EXISTS `vehiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiculo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL COMMENT 'Nombre/modelo',
  `placa` varchar(32) DEFAULT NULL COMMENT 'placa/patente',
  `marca_id` int(10) unsigned DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `transporte_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vehiculo_transporte_FK` (`transporte_id`),
  CONSTRAINT `vehiculo_transporte_FK` FOREIGN KEY (`transporte_id`) REFERENCES `transporte` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculo`
--

LOCK TABLES `vehiculo` WRITE;
/*!40000 ALTER TABLE `vehiculo` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `vehiculo` ENABLE KEYS */;
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

-- Dump completed on 2025-04-14  3:07:48
