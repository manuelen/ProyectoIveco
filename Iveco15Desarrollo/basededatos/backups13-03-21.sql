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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria`
--

LOCK TABLES `auditoria` WRITE;
/*!40000 ALTER TABLE `auditoria` DISABLE KEYS */;
INSERT INTO `auditoria` VALUES (53,'manuelen','Ingreso de Usuario','2012-12-01','09:18:52'),(54,'manuelen','Desconectar Usuario','2012-12-01','09:20:35'),(55,'manuelen','Ingreso de Usuario','2012-12-01','09:20:58'),(56,'manuelen','Modificar Usuario  , de Cedula 20695525, Nombre manuel, Nivel Administrador, DescripciÃ³n  asasa, Correo manuelenchon@hotmail.com','2012-12-01','09:26:34'),(57,'manuelen','Desconectar Usuario','2012-12-01','09:26:38'),(58,'manuelen','Ingreso de Usuario','2012-12-01','09:26:46'),(59,'manuelen','Modificar Usuario  , de Cedula 20695525, Nombre manuel, Nivel Administrador, DescripciÃ³n  asasa, Correo manuelenchon@hotmail.com','2012-12-01','09:27:48'),(60,'manuelen','Desconectar Usuario','2012-12-01','09:27:51'),(61,'manuelen','Ingreso de Usuario','2012-12-01','09:27:54'),(62,'manuelen','Desconectar Usuario','2012-12-02','12:35:00'),(63,'manuelen','Ingreso de Usuario','2012-12-02','12:35:52'),(64,'manuelen','Ingreso de Usuario','2012-12-02','12:37:24'),(65,'manuelen','Ingreso de Usuario','2012-12-02','10:07:21'),(66,'manuelen','Registrar Dispositivo de IP: 127.0.0.56','2012-12-02','10:07:48'),(67,'manuelen','Ingreso de Usuario','2012-12-09','03:47:05'),(68,'manuelen','Registrar Dispositivo de IP: 127.1.7.7','2012-12-09','03:50:06'),(69,'manuelen','Ingreso de Usuario','2012-12-09','04:57:00'),(70,'manuelen','Desconectar Usuario','2012-12-09','05:03:13'),(71,'manuelen','Ingreso de Usuario','2012-12-09','05:06:37'),(72,'manuelen','Ingreso de Usuario','2013-01-10','10:56:03'),(73,'manuelen','Ingreso de Usuario','2013-02-22','11:17:59'),(74,'manuelen','Ingreso de Usuario','2013-02-22','11:43:22'),(75,'manuelen','Desconectar Usuario','2013-02-22','11:49:38'),(76,'manuelen','Ingreso de Usuario','2013-03-01','01:53:21'),(77,'manuelen','Registrar Dispositivo de IP: 127.0.0.1','2013-03-01','01:54:57'),(78,'manuelen','RecupraciÃ³n de contraseÃ±a: Datos personales','2013-03-18','01:27:56'),(79,'manuelen','RecupraciÃ³n de contraseÃ±a: Datos personales','2013-03-18','01:29:24'),(80,'manuelen ','Ingreso de Usuario','2013-03-18','01:29:38'),(81,'manuelen ','Registrar Dispositivo de IP: 127.0.0.2','2018-03-13','02:48:07'),(82,'manuelen ','Modificar Dispositivo de IP: 127.0.0.1 a IP 127.0.0.1 Nombre local 1, Tipo Servidor,ping 4 ,Red 1','2013-03-18','02:49:29'),(83,'manuelen ','Modificar Dispositivo de IP: 127.0.0.2 a IP 127.0.0.2 Nombre local 2, Tipo Servidor,ping 4 ,Red 4','2013-03-18','02:49:45'),(84,'manuelen ','Registrar Dispositivo de IP: 127.0.0.3','2018-03-13','02:50:59'),(85,'manuelen ','Registrar Dispositivo de IP: 127.0.0.4','2018-03-13','02:51:33'),(86,'manuelen ','Registrar Dispositivo de IP: 127.0.0.5','2018-03-13','02:52:04'),(87,'manuelen ','Registrar Dispositivo de IP: 127.0.0.6','2018-03-13','03:08:02'),(88,'manuelen ','Registrar Dispositivo de IP: 127.0.0.7','2018-03-13','03:08:31'),(89,'manuelen ','Registrar Dispositivo de IP: 127.0.0.8','2018-03-13','03:09:04'),(90,'manuelen ','Ingreso de Usuario','2013-03-18','04:43:20'),(91,'manuelen ','Ingreso de Usuario','2013-03-18','04:55:28'),(92,'manuelen ','Ingreso de Usuario','2013-03-20','11:46:54');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controldeerrores`
--

LOCK TABLES `controldeerrores` WRITE;
/*!40000 ALTER TABLE `controldeerrores` DISABLE KEYS */;
INSERT INTO `controldeerrores` VALUES (1,'127.0.0.1','','Existe un error en el Dispositivo: mmm de ip: 127.0.0.1 el dia lunes 18 de marzo del 2013 a las 1:29:46 am',4,'2013-03-18','01:29:46','02:05:36','no'),(2,'127.0.0.2','','Existe un error en el Dispositivo: local 2 de ip: 127.0.0.2222 el dia lunes 18 de marzo del 2013 a las 4:39:05 am',4,'2013-03-18','04:39:05','04:44:11','no'),(4,'127.0.0.3','','Existe un error en el Dispositivo: local 3 de ip: 127.0.0.333 el dia lunes 18 de marzo del 2013 a las 4:45:32 am',4,'2013-03-18','04:45:32','04:46:25','no'),(5,'127.0.0.4','','Existe un error en el Dispositivo: local 4 de ip: 127.0.0.444 el dia lunes 18 de marzo del 2013 a las 4:45:36 am',4,'2013-03-18','04:45:36','04:46:25','no'),(6,'127.0.0.5','','Existe un error en el Dispositivo: local 5 de ip: 127.0.0.555 el dia lunes 18 de marzo del 2013 a las 4:45:41 am',4,'2013-03-18','04:45:41','04:46:25','no'),(7,'127.0.0.6','','Existe un error en el Dispositivo: local 6 de ip: 127.0.0.666 el dia lunes 18 de marzo del 2013 a las 4:45:46 am',4,'2013-03-18','04:45:46','04:46:25','no'),(11,'127.0.0.1','','Existe un error en el Dispositivo: local 1 de ip: 127.0.0.1111 el dia lunes 18 de marzo del 2013 a las 4:47:14 am',4,'2013-03-18','04:47:14','04:47:50','no'),(12,'127.0.0.2','','Existe un error en el Dispositivo: local 2 de ip: 127.0.0.2222 el dia lunes 18 de marzo del 2013 a las 4:47:19 am',4,'2013-03-18','04:47:19','04:47:50','no'),(13,'127.0.0.3','','Existe un error en el Dispositivo: local 3 de ip: 127.0.0.333 el dia lunes 18 de marzo del 2013 a las 4:47:24 am',4,'2013-03-18','04:47:24','04:47:51','no'),(14,'127.0.0.4','','Existe un error en el Dispositivo: local 4 de ip: 127.0.0.444 el dia lunes 18 de marzo del 2013 a las 4:47:29 am',4,'2013-03-18','04:47:29','04:47:51','no'),(19,'127.0.0.1','','Existe un error en el Dispositivo: local 1 de ip: 127.0.0.1111 el dia lunes 18 de marzo del 2013 a las 4:47:59 am',4,'2013-03-18','04:47:59','04:49:06','no'),(20,'127.0.0.2','','Existe un error en el Dispositivo: local 2 de ip: 127.0.0.2222 el dia lunes 18 de marzo del 2013 a las 4:48:04 am',4,'2013-03-18','04:48:04','04:49:07','no'),(21,'127.0.0.3','','Existe un error en el Dispositivo: local 3 de ip: 127.0.0.333 el dia lunes 18 de marzo del 2013 a las 4:48:19 am',4,'2013-03-18','04:48:19','04:48:55','no'),(27,'127.0.0.1','','Existe un error en el Dispositivo: local 1 de ip: 127.0.0.1111 el dia lunes 18 de marzo del 2013 a las 4:49:14 am',4,'2013-03-18','04:49:14','04:49:15','no'),(28,'127.0.0.7','','Existe un error en el Dispositivo: local 7 de ip: 127.0.0.7 el dia lunes 18 de marzo del 2013 a las 11:05:28 am',4,'2013-03-18','11:05:28','11:06:00','no'),(29,'127.0.0.3','','Existe un error en el Dispositivo: local 3 de ip: 127.0.0.3 el dia lunes 18 de marzo del 2013 a las 11:05:39 am',4,'2013-03-18','11:05:39','11:05:56','no'),(30,'127.0.0.4','','Existe un error en el Dispositivo: local 4 de ip: 127.0.0.4 el dia lunes 18 de marzo del 2013 a las 11:05:40 am',4,'2013-03-18','11:05:40','11:05:57','no'),(31,'127.0.0.5','','Existe un error en el Dispositivo: local 5 de ip: 127.0.0.5 el dia lunes 18 de marzo del 2013 a las 11:05:40 am',4,'2013-03-18','11:05:40','11:05:59','no'),(32,'127.0.0.6','','Existe un error en el Dispositivo: local 6 de ip: 127.0.0.6 el dia lunes 18 de marzo del 2013 a las 11:05:41 am',4,'2013-03-18','11:05:41','11:05:59','no'),(33,'127.0.0.8','','Existe un error en el Dispositivo: local 8 de ip: 127.0.0.8 el dia lunes 18 de marzo del 2013 a las 11:05:42 am',4,'2013-03-18','11:05:42','11:06:01','no');
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
INSERT INTO `correo` VALUES ('127.0.0.1','','manuelenchon@hotmail.com','si','si'),('127.0.0.2','','manuelenchon@hotmail.com','si','si'),('127.0.0.3','','manuelenchon@hotmail.com','si','si'),('127.0.0.4','','manuelenchon@hotmail.com','si','si'),('127.0.0.5','','manuelenchon@hotmail.com','si','si'),('127.0.0.6','','manuelenchon@hotmail.com','si','si'),('127.0.0.7','','manuelenchon@hotmail.com','si','si'),('127.0.0.8','','manuelenchon@hotmail.com','si','si');
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
INSERT INTO `dispositivos` VALUES ('127.0.0.1','','local 1','',' ','Conectado',4,'1'),('127.0.0.2','127.0.0.2','local 2','',' ','Conectado',4,'4'),('127.0.0.3','127.0.0.3','local 3','Servidor',' ','Conectado',4,'4'),('127.0.0.4','127.0.0.4','local 4','Servidor',' ','Conectado',4,'4'),('127.0.0.5','127.0.0.5','local 5','Servidor',' ','Conectado',4,'4'),('127.0.0.6','127.0.0.6','local 6','Servidor',' ','Conectado',4,'4'),('127.0.0.7','127.0.0.7','local 7','Servidor',' ','Conectado',4,'4'),('127.0.0.8','127.0.0.8','local 8','Servidor',' ','Conectado',4,'4');
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
INSERT INTO `pantalla` VALUES ('127.0.0.1','','error','center',10000,'si','si'),('127.0.0.2','','error','center',10000,'si','si'),('127.0.0.3','','error','center',10000,'si','si'),('127.0.0.4','','error','center',10000,'si','si'),('127.0.0.5','','error','center',10000,'si','si'),('127.0.0.6','','error','center',10000,'si','si'),('127.0.0.7','','error','center',10000,'si','si'),('127.0.0.8','','error','center',10000,'si','si');
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
INSERT INTO `sonido` VALUES ('127.0.0.1','','Alert',0,'1',0,'0','si');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sonidopredeterminados`
--

LOCK TABLES `sonidopredeterminados` WRITE;
/*!40000 ALTER TABLE `sonidopredeterminados` DISABLE KEYS */;
INSERT INTO `sonidopredeterminados` VALUES (3,'fail','audio/123.wav'),(4,'Alert','audio/123.wav');
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
  KEY `tipo` (`tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoaplicacion`
--

LOCK TABLES `tipoaplicacion` WRITE;
/*!40000 ALTER TABLE `tipoaplicacion` DISABLE KEYS */;
INSERT INTO `tipoaplicacion` VALUES (3,'123'),(2,'industria'),(1,'negosio');
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
  KEY `tipo` (`tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipodispositivo`
--

LOCK TABLES `tipodispositivo` WRITE;
/*!40000 ALTER TABLE `tipodispositivo` DISABLE KEYS */;
INSERT INTO `tipodispositivo` VALUES (64,''),(65,'casa'),(63,'Servidor');
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
INSERT INTO `usuario` VALUES (20695525,'manuel','Administrador',' asasa','manuelenchon@hotmail.com','manuelen','648ceaa6447a6a2004ec51b797c78247','123','123');
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

-- Dump completed on 2013-03-21  0:09:55
