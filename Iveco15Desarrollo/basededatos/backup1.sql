-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: database
-- ------------------------------------------------------
-- Server version	5.5.16

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
-- Table structure for table `aplicaciones`
--

DROP TABLE IF EXISTS `aplicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aplicaciones` (
  `puerto` varchar(15) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `estado` varchar(15) NOT NULL,
  PRIMARY KEY (`puerto`,`ip`),
  KEY `ip` (`ip`),
  KEY `tipo` (`tipo`),
  CONSTRAINT `aplicaciones_ibfk_3` FOREIGN KEY (`ip`) REFERENCES `dispositivos` (`ip`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `aplicaciones_ibfk_4` FOREIGN KEY (`tipo`) REFERENCES `tipoaplicacion` (`tipo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aplicaciones`
--

LOCK TABLES `aplicaciones` WRITE;
/*!40000 ALTER TABLE `aplicaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `aplicaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria`
--

DROP TABLE IF EXISTS `auditoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `accion` text NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `cedula` (`usuario`),
  CONSTRAINT `auditoria_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria`
--

LOCK TABLES `auditoria` WRITE;
/*!40000 ALTER TABLE `auditoria` DISABLE KEYS */;
INSERT INTO `auditoria` VALUES (1,'manuelen','Modificar Dispositivo de IP: 31.13.73.23 a IP 31.13.73.23 Nombre Facebook, Tipo Servidor,ping 4 ,Red 1000','2013-03-14','11:39:02'),(2,'manuelen','Realizo Backup','2013-03-15','12:15:08'),(3,'manuelen','Realizo Backup','2013-03-15','12:15:36'),(4,'manuelen','Realizo Backup','2013-03-15','12:16:42'),(5,'manuelen','Realizo Backup','2013-03-15','12:17:24'),(6,'manuelen','Realizo Backup','2013-03-15','12:18:21'),(7,'manuelen','Realizo Backup','2013-03-15','12:18:41'),(8,'manuelen','Realizo Backup','2013-03-15','12:20:38'),(9,'manuelen','Realizo Backup','2013-03-15','12:21:45'),(10,'manuelen','Realizo Backup','2013-03-15','12:22:29'),(11,'manuelen','Realizo Backup','2013-03-15','12:24:58'),(12,'manuelen','Realizo Backup','2013-03-15','12:42:01'),(13,'manuelen','Realizo Backup','2013-03-15','12:43:56'),(14,'manuelen','Realizo Backup','2013-03-15','12:44:20'),(15,'manuelen','Realizo Backup','2013-03-15','12:45:51'),(16,'manuelen','Realizo Backup','2013-03-15','12:47:23'),(17,'manuelen','Realizo Backup','2013-03-15','12:49:38'),(18,'manuelen','Realizo Backup','2013-03-15','12:49:54'),(19,'manuelen','Realizo Backup','2013-03-15','12:50:38'),(20,'manuelen','Realizo Backup','2013-03-15','12:51:03');
/*!40000 ALTER TABLE `auditoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controldeerrores`
--

DROP TABLE IF EXISTS `controldeerrores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `controldeerrores` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL,
  `puerto` varchar(15) NOT NULL,
  `descripcion` text NOT NULL,
  `ping` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `horad` time NOT NULL,
  `horaa` time NOT NULL,
  `falla` varchar(2) NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `ip` (`ip`),
  KEY `puerto` (`puerto`),
  CONSTRAINT `controldeerrores_ibfk_1` FOREIGN KEY (`ip`) REFERENCES `dispositivos` (`ip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controldeerrores`
--

LOCK TABLES `controldeerrores` WRITE;
/*!40000 ALTER TABLE `controldeerrores` DISABLE KEYS */;
INSERT INTO `controldeerrores` VALUES (42,'199.59.148.82','','Existe un error en el Dispositivo: Twitter de ip: 199.59.148.82 el dia jueves 14 de marzo del 2013 a las 12:16:30 pm',3,'2013-03-14','12:16:30','12:16:35','no'),(44,'31.13.73.23','','Existe un error en el Dispositivo: Facebook de ip: 31.13.73.23 el dia jueves 14 de marzo del 2013 a las 12:56:43 pm',4,'2013-03-14','12:56:43','12:56:49','no'),(52,'31.13.73.23','','Existe un error en el Dispositivo: Facebook de ip: 31.13.73.23 el dia jueves 14 de marzo del 2013 a las 5:10:35 pm',4,'2013-03-14','05:10:35','10:01:31','no'),(53,'192.168.1.1','','Existe un error en el Dispositivo: Router de ip: 192.168.1.1 el dia jueves 14 de marzo del 2013 a las 5:10:40 pm',4,'2013-03-14','05:10:40','10:01:34','no'),(56,'127.0.0.1','','Existe un error en el Dispositivo: Servidor Super Mejor de ip: 127.0.0.1 el dia jueves 14 de marzo del 2013 a las 5:10:54 pm',4,'2013-03-14','05:10:54','10:01:45','no'),(57,'199.59.148.82','','Existe un error en el Dispositivo: Twitter de ip: 199.59.148.82 el dia jueves 14 de marzo del 2013 a las 5:11:00 pm',4,'2013-03-14','05:11:00','10:01:48','no'),(59,'31.13.73.23','','Existe un error en el Dispositivo: Facebook de ip: 31.13.73.23 el dia jueves 14 de marzo del 2013 a las 10:07:44 pm',3,'2013-03-14','10:07:44','10:07:46','no'),(60,'31.13.73.23','','Existe un error en el Dispositivo: Facebook de ip: 31.13.73.23 el dia jueves 14 de marzo del 2013 a las 10:10:47 pm',3,'2013-03-14','10:10:47','10:10:48','no'),(61,'192.168.1.1','','Existe un error en el Dispositivo: Router de ip: 192.168.1.1 el dia jueves 14 de marzo del 2013 a las 10:16:38 pm',3,'2013-03-14','10:16:38','10:16:40','no'),(62,'31.13.73.23','','Existe un error en el Dispositivo: Facebook de ip: 31.13.73.23 el dia jueves 14 de marzo del 2013 a las 10:20:06 pm',3,'2013-03-14','10:20:06','10:20:12','no'),(63,'192.168.1.1','','Existe un error en el Dispositivo: Router de ip: 192.168.1.1 el dia jueves 14 de marzo del 2013 a las 10:20:10 pm',3,'2013-03-14','10:20:10','10:20:12','no'),(64,'192.168.1.1','','Existe un error en el Dispositivo: Router de ip: 192.168.1.1 el dia jueves 14 de marzo del 2013 a las 10:29:46 pm',3,'2013-03-14','10:29:46','10:29:47','no'),(65,'192.168.1.1','','Existe un error en el Dispositivo: Router de ip: 192.168.1.1 el dia jueves 14 de marzo del 2013 a las 10:32:14 pm',3,'2013-03-14','10:32:14','10:32:17','no'),(66,'199.59.148.82','','Existe un error en el Dispositivo: Twitter de ip: 199.59.148.82 el dia jueves 14 de marzo del 2013 a las 10:40:34 pm',3,'2013-03-14','10:40:34','10:40:44','no'),(67,'31.13.73.23','','Existe un error en el Dispositivo: Facebook de ip: 31.13.73.23 el dia jueves 14 de marzo del 2013 a las 10:40:50 pm',3,'2013-03-14','10:40:50','10:40:53','no'),(68,'192.168.1.105','','Existe un error en el Dispositivo: Daniel Services de ip: 192.168.1.105 el dia viernes 15 de marzo del 2013 a las 12:30:06 am',4,'2013-03-15','12:30:06','12:30:46','no'),(69,'31.13.73.23','','Existe un error en el Dispositivo: Facebook de ip: 31.13.73.23 el dia viernes 15 de marzo del 2013 a las 12:30:08 am',4,'2013-03-15','12:30:08','12:30:47','no'),(70,'192.168.1.1','','Existe un error en el Dispositivo: Router de ip: 192.168.1.1 el dia viernes 15 de marzo del 2013 a las 12:30:11 am',4,'2013-03-15','12:30:11','12:30:47','no'),(71,'199.59.148.82','','Existe un error en el Dispositivo: Twitter de ip: 199.59.148.82 el dia viernes 15 de marzo del 2013 a las 12:30:13 am',4,'2013-03-15','12:30:13','12:30:45','no'),(72,'192.168.1.105','','Existe un error en el Dispositivo: Daniel Services de ip: 192.168.1.105 el dia viernes 15 de marzo del 2013 a las 12:50:51 am',4,'2013-03-15','12:50:51','00:00:00','si'),(73,'31.13.73.23','','Existe un error en el Dispositivo: Facebook de ip: 31.13.73.23 el dia viernes 15 de marzo del 2013 a las 12:56:41 am',4,'2013-03-15','12:56:41','12:56:51','no'),(74,'199.59.148.82','','Existe un error en el Dispositivo: Twitter de ip: 199.59.148.82 el dia viernes 15 de marzo del 2013 a las 12:56:47 am',3,'2013-03-15','12:56:47','12:56:52','no');
/*!40000 ALTER TABLE `controldeerrores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `correo`
--

DROP TABLE IF EXISTS `correo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `correo` (
  `ip` varchar(15) NOT NULL,
  `puerto` varchar(15) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  PRIMARY KEY (`ip`,`puerto`,`correo`),
  KEY `correo` (`correo`),
  CONSTRAINT `correo_ibfk_3` FOREIGN KEY (`correo`) REFERENCES `usuario` (`correo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `correo_ibfk_4` FOREIGN KEY (`ip`) REFERENCES `dispositivos` (`ip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correo`
--

LOCK TABLES `correo` WRITE;
/*!40000 ALTER TABLE `correo` DISABLE KEYS */;
INSERT INTO `correo` VALUES ('127.0.0.1','','manuelenchon@hotmail.com','si','si'),('127.0.0.1','','miguelangel18300@hotmail.com','si','si'),('192.168.1.1','','manuelenchon@hotmail.com','si','si'),('192.168.1.1','','miguelangel18300@hotmail.com','si','si'),('192.168.1.105','','manuelenchon@hotmail.com','si','error'),('192.168.1.105','','miguelangel18300@hotmail.com','si','error'),('192.168.1.109','','manuelenchon@hotmail.com','si','si'),('192.168.1.109','','miguelangel18300@hotmail.com','si','si'),('199.59.148.82','','manuelenchon@hotmail.com','si','si'),('199.59.148.82','','miguelangel18300@hotmail.com','si','si'),('31.13.73.23','','manuelenchon@hotmail.com','si','si'),('31.13.73.23','','miguelangel18300@hotmail.com','si','si');
/*!40000 ALTER TABLE `correo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dispositivos`
--

DROP TABLE IF EXISTS `dispositivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dispositivos` (
  `ip` varchar(15) NOT NULL,
  `nombreServidor` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `estado` varchar(50) NOT NULL,
  `ping` int(10) NOT NULL,
  `red` varchar(10) NOT NULL,
  `falla` varchar(2) NOT NULL,
  PRIMARY KEY (`ip`),
  KEY `tipo` (`tipo`),
  CONSTRAINT `dispositivos_ibfk_1` FOREIGN KEY (`tipo`) REFERENCES `tipodispositivo` (`tipo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dispositivos`
--

LOCK TABLES `dispositivos` WRITE;
/*!40000 ALTER TABLE `dispositivos` DISABLE KEYS */;
INSERT INTO `dispositivos` VALUES ('127.0.0.1','Personal-PC','Servidor Super Mejor','Servidor',' ','Conectado',4,'4',''),('192.168.1.1','192.168.1.1','Router','Router',' ','Conectado',4,'1000',''),('192.168.1.105','XTECH-PC','Daniel Services','Servidor',' ','Conectado',4,'4',''),('192.168.1.109','Personal-PC','Manuel Services','Servidor',' ','Conectado',4,'4',''),('199.59.148.82','r-199-59-148-82.twttr.com','Twitter','Servidor',' ','Conectado',4,'1000',''),('31.13.73.23','star-01-02-mia1.facebook.com','Facebook','Servidor',' ','Conectado',4,'1000','');
/*!40000 ALTER TABLE `dispositivos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER testref BEFORE INSERT ON dispositivos
  FOR EACH ROW BEGIN
   
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER dispositivo AFTER INSERT ON dispositivos 
  FOR EACH ROW BEGIN

  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pantalla`
--

DROP TABLE IF EXISTS `pantalla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pantalla` (
  `ip` varchar(15) NOT NULL,
  `puerto` varchar(15) NOT NULL,
  `modoa` varchar(50) NOT NULL,
  `ubicacion` varchar(50) NOT NULL,
  `duracion` int(6) NOT NULL,
  `ubicar` varchar(2) NOT NULL,
  `estado` varchar(50) NOT NULL,
  PRIMARY KEY (`ip`,`puerto`),
  CONSTRAINT `pantalla_ibfk_1` FOREIGN KEY (`ip`) REFERENCES `dispositivos` (`ip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pantalla`
--

LOCK TABLES `pantalla` WRITE;
/*!40000 ALTER TABLE `pantalla` DISABLE KEYS */;
INSERT INTO `pantalla` VALUES ('127.0.0.1','','error','center',10000,'si','si'),('192.168.1.1','','error','center',10000,'si','si'),('192.168.1.105','','error','center',10000,'si','falla'),('192.168.1.109','','error','center',10000,'si','si'),('199.59.148.82','','error','center',10000,'si','si'),('31.13.73.23','','error','center',10000,'si','si');
/*!40000 ALTER TABLE `pantalla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pantallas`
--

DROP TABLE IF EXISTS `pantallas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pantallas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `pantalla` varchar(50) NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `pantalla` (`pantalla`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pantallas`
--

LOCK TABLES `pantallas` WRITE;
/*!40000 ALTER TABLE `pantallas` DISABLE KEYS */;
/*!40000 ALTER TABLE `pantallas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sonido`
--

DROP TABLE IF EXISTS `sonido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sonido` (
  `ip` varchar(15) NOT NULL,
  `puerto` varchar(15) NOT NULL,
  `sonido` varchar(50) NOT NULL,
  `duracion` int(3) NOT NULL,
  `repetir` varchar(2) NOT NULL,
  `repeticiones` int(2) NOT NULL,
  `volumen` varchar(20) NOT NULL,
  `estado` varchar(50) NOT NULL,
  PRIMARY KEY (`ip`,`puerto`),
  KEY `sonido` (`sonido`),
  CONSTRAINT `sonido_ibfk_2` FOREIGN KEY (`ip`) REFERENCES `dispositivos` (`ip`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sonido_ibfk_3` FOREIGN KEY (`sonido`) REFERENCES `sonidopredeterminados` (`Sonido`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sonido`
--

LOCK TABLES `sonido` WRITE;
/*!40000 ALTER TABLE `sonido` DISABLE KEYS */;
INSERT INTO `sonido` VALUES ('127.0.0.1','','Alerta',0,'1',0,'0','si'),('192.168.1.1','','Alerta',0,'1',0,'0','si'),('192.168.1.105','','Alerta',0,'1',1,'0','falla'),('192.168.1.109','','Alerta',0,'1',0,'0','si'),('199.59.148.82','','Alerta',0,'1',0,'0','si'),('31.13.73.23','','Alerta',0,'1',0,'0','si');
/*!40000 ALTER TABLE `sonido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sonidopredeterminados`
--

DROP TABLE IF EXISTS `sonidopredeterminados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sonidopredeterminados` (
  `codigosonido` int(11) NOT NULL AUTO_INCREMENT,
  `Sonido` varchar(50) NOT NULL,
  `ubicacion` varchar(100) NOT NULL,
  PRIMARY KEY (`codigosonido`),
  KEY `Sonido` (`Sonido`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sonidopredeterminados`
--

LOCK TABLES `sonidopredeterminados` WRITE;
/*!40000 ALTER TABLE `sonidopredeterminados` DISABLE KEYS */;
INSERT INTO `sonidopredeterminados` VALUES (1,'Alerta','audio/alert.wav'),(2,'Alarma','audio/automovil.wav'),(3,'Nuclear','audio/nuclear.wav'),(4,'Policia','audio/policia.wav'),(5,'Sirena','audio/sirena.wav');
/*!40000 ALTER TABLE `sonidopredeterminados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoaplicacion`
--

DROP TABLE IF EXISTS `tipoaplicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoaplicacion` (
  `codigotipo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  PRIMARY KEY (`codigotipo`),
  UNIQUE KEY `tipo` (`tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoaplicacion`
--

LOCK TABLES `tipoaplicacion` WRITE;
/*!40000 ALTER TABLE `tipoaplicacion` DISABLE KEYS */;
INSERT INTO `tipoaplicacion` VALUES (2,'industria'),(1,'negosio');
/*!40000 ALTER TABLE `tipoaplicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipodispositivo`
--

DROP TABLE IF EXISTS `tipodispositivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipodispositivo` (
  `codigotipo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  PRIMARY KEY (`codigotipo`),
  UNIQUE KEY `tipo` (`tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipodispositivo`
--

LOCK TABLES `tipodispositivo` WRITE;
/*!40000 ALTER TABLE `tipodispositivo` DISABLE KEYS */;
INSERT INTO `tipodispositivo` VALUES (66,'Router'),(63,'Servidor');
/*!40000 ALTER TABLE `tipodispositivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `cedula` int(8) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `nivel` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `contrasena` blob NOT NULL,
  `pregunta` varchar(50) NOT NULL,
  `respuesta` varchar(50) NOT NULL,
  PRIMARY KEY (`cedula`),
  UNIQUE KEY `usuario` (`usuario`),
  KEY `correo` (`correo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (20695525,'Manuel Sotomayor','Administrador','mama ','miguelangel18300@hotmail.com','manuelen','25d55ad283aa400af464c76d713c07ad','123','123'),(25841105,'daniel','Administrador',' asa','manuelenchon@hotmail.com','manuelen12','25d55ad283aa400af464c76d713c07ad','Hola','Chao');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-15  1:10:43
