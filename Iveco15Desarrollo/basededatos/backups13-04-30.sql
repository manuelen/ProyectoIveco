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
INSERT INTO `aplicaciones` VALUES ('80','http','192.168.1.11','industria',' ','conectado');
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
  CONSTRAINT `auditoria_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=282 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria`
--

LOCK TABLES `auditoria` WRITE;
/*!40000 ALTER TABLE `auditoria` DISABLE KEYS */;
INSERT INTO `auditoria` VALUES (95,'administrador','Configurar Pantalla','2013-02-28','08:53:07'),(96,'administrador','Modificar Dispositivo de IP: 127.0.0.2 a IP 127.0.0.2 Nombre miguel, Tipo Servidor,ping 4 ,Red 4','2013-02-28','08:53:59'),(97,'administrador','Ingreso de Usuario','2013-02-28','09:06:54'),(98,'administrador','Desconectar Usuario','2013-02-28','09:13:52'),(141,'manuelen ','Ingreso de Usuario','2013-02-28','09:38:04'),(142,'manuelen ','Desconectar Usuario','2013-02-28','09:51:50'),(143,'administrador','Ingreso de Usuario','2013-03-01','07:44:37'),(144,'administrador','Modificar Usuario  , de Cedula 20695525, Nombre manuel, Nivel Administrador, DescripciÃ³n  asasa, Correo manuelenchon@hotmail.com','2013-03-01','07:48:34'),(145,'administrador','Realizo Backup','2013-03-01','07:48:57'),(146,'administrador','Realizo Backup','2013-03-01','07:49:02'),(147,'administrador','Realizo Backup','2013-03-01','07:49:07'),(148,'administrador','Realizo Backup','2013-03-01','07:49:28'),(149,'administrador','Realizo Backup','2013-03-01','07:50:40'),(150,'administrador','Desconectar Usuario','2013-03-01','07:55:10'),(151,'manuelen','Ingreso de Usuario','2013-03-01','07:55:32'),(152,'manuelen','Configurar Sonido','2013-03-01','08:04:02'),(201,'administrador','RecupraciÃ³n de contraseÃ±a: via correo electronico','2013-03-01','09:06:24'),(202,'administrador','RecupraciÃ³n de contraseÃ±a: Datos personales','2013-03-01','09:07:55'),(203,'administrador','Ingreso de Usuario','2013-03-01','09:08:09'),(204,'administrador','Registro de Usuario joselina de Cedula: 1233','2013-03-01','09:09:37'),(205,'administrador','Desconectar Usuario','2013-03-01','09:10:27'),(209,'administrador','Ingreso de Usuario','2013-03-01','09:14:54'),(210,'administrador','Eliminar Usuario de Cedula: undefined','2013-03-01','09:16:20'),(211,'administrador','Eliminar Usuario de Cedula: joselina','2013-03-01','09:23:06'),(212,'administrador','Eliminar Usuario de Cedula: 1233','2013-03-01','09:24:06'),(213,'administrador','Registro de Usuario joselina de Cedula: 20771115','2013-03-01','09:25:20'),(214,'administrador','Registro de Usuario jj de Cedula: 11','2013-03-01','09:44:23'),(215,'administrador','Registro de Usuario f de Cedula: 1233','2013-03-01','09:47:33'),(216,'administrador','Registro de Usuario r de Cedula: 2345','2013-03-01','09:48:17'),(217,'administrador','Desconectar Usuario','2013-03-01','09:50:38'),(218,'joselina','RecupraciÃ³n de contraseÃ±a: Datos personales','2013-03-01','09:51:24'),(219,'joselina','Ingreso de Usuario','2013-03-01','09:51:34'),(220,'joselina','Desconectar Usuario','2013-03-01','10:14:21'),(221,'administrador','Ingreso de Usuario','2013-03-01','11:04:24'),(222,'administrador','Registrar Dispositivo de IP: 127.0.0.1','2013-03-01','11:14:22'),(223,'administrador','Registrar Dispositivo de IP: 199.59.148.82','2013-03-01','11:36:32'),(224,'administrador','RecupraciÃ³n de contraseÃ±a: Datos personales','2013-03-10','10:39:23'),(225,'administrador','Ingreso de Usuario','2013-03-10','10:39:36'),(226,'administrador','Ingreso de Usuario','2013-03-11','08:27:02'),(227,'administrador','Ingreso de Usuario','2013-03-11','08:35:24'),(228,'administrador','Registrar Servicio de IP: 127.0.0.2222 y Puerto 25','2013-03-11','08:59:56'),(229,'administrador','Modificar Dispositivo de IP: 127.0.0.2222 a IP 127.0.0.18 Nombre miguel, Tipo Servidor,ping 4 ,Red 4','2013-03-11','09:01:39'),(230,'administrador','Ingreso de Usuario','2013-03-11','09:05:39'),(231,'administrador','Modificar Servicio de IP: 127.0.0.18 a IP 127.0.0.1, Puerto 25 a 25 Nombre mercury, Tipo correo,descripcion  ','2013-03-11','09:09:58'),(232,'manuelen','RecupraciÃ³n de contraseÃ±a: Datos personales','2013-03-12','08:17:36'),(233,'manuelen','Ingreso de Usuario','2013-03-12','08:17:47'),(234,'manuelen','Modificar Dispositivo de IP: 199.59.148.82 a IP 199.59.148.82 Nombre Twitter, Tipo Servidor,ping 4 ,Red 400','2013-03-12','08:20:19'),(235,'manuelen','Registrar Dispositivo de IP: 10.100.1.2','2012-03-13','08:36:40'),(236,'manuelen','Modificar Dispositivo de IP: 199.59.148.82 a IP 199.59.148.82 Nombre Twitter, Tipo Servidor,ping 4 ,Red 400','2013-03-12','08:42:02'),(237,'manuelen','Registrar Dispositivo de IP: 10.100.31.76','2012-03-13','08:58:48'),(238,'manuelen','Registrar Dispositivo de IP: 10.100.31.91','2012-03-13','09:01:13'),(239,'manuelen','Modificar Dispositivo de IP: 10.100.31.91 a IP 10.100.31.91 Nombre 123, Tipo Servidor,ping 2 ,Red 1','2013-03-12','09:56:10'),(240,'manuelen','Modificar Dispositivo de IP: 127.0.0.11 a IP 127.0.0.11 Nombre chao, Tipo Servidor,ping 2 ,Red 1','2013-03-12','09:56:27'),(241,'manuelen','Modificar Dispositivo de IP: 199.59.148.82 a IP 199.59.148.82 Nombre Twitter, Tipo Servidor,ping 4 ,Red 400','2013-03-12','09:56:40'),(242,'manuelen','Modificar Dispositivo de IP: 10.100.31.76 a IP 10.100.31.76 Nombre servidor2, Tipo casa,ping 3 ,Red 1','2013-03-12','09:56:55'),(243,'administrador','Ingreso de Usuario','2013-03-12','10:10:57'),(244,'administrador','Modificar Dispositivo de IP: 10.100.1.2 a IP 10.100.31.69 Nombre Servidor 1, Tipo Servidor,ping 4 ,Red 1','2013-03-12','10:13:08'),(245,'administrador','Ingreso de Usuario','2013-03-13','06:27:20'),(246,'administrador','Ingreso de Usuario','2013-03-14','10:18:58'),(247,'administrador','Registrar Servicio de IP: 127.0.0.1 y Puerto 80','2013-03-14','12:56:42'),(248,'administrador','Registrar Servicio de IP: 127.0.0.11 y Puerto 3306','2013-03-14','01:00:26'),(249,'administrador','Ingreso de Usuario','2013-04-24','09:28:57'),(250,'manuelen','Desconectar Usuario','2013-04-26','07:35:13'),(251,'manuelen','Envio de Correo Electronico por Seguridad','2013-04-26','07:36:20'),(252,'manuelen','Envio de Correo Electronico por Seguridad','2013-04-26','07:36:28'),(253,'manuelen','Envio de Correo Electronico por Seguridad','2013-04-26','07:36:37'),(254,'manuelen','RecuperaciÃ³n de contraseÃ±a: Datos personales','2013-04-26','07:37:32'),(255,'manuelen','Desconectar Usuario','2013-04-26','07:41:25'),(256,'manuelen','Desconectar Usuario','2013-04-26','07:42:05'),(257,'manuelen','Desconectar Usuario','2013-04-26','07:54:38'),(258,'administrador','Desconectar Usuario','2013-04-26','07:55:11'),(259,'administrador','Eliminar Dispositivo de IP: 127.0.0.11','2013-04-26','07:57:50'),(260,'administrador','Eliminar Dispositivo de IP: 10.100.31.91','2013-04-26','07:57:58'),(261,'administrador','Eliminar Dispositivo de IP: 127.0.0.18','2013-04-26','07:58:03'),(262,'administrador','Eliminar Dispositivo de IP: 127.0.0.10','2013-04-26','07:58:09'),(263,'administrador','Eliminar Dispositivo de IP: 127.0.0.1','2013-04-26','07:58:15'),(264,'administrador','Eliminar Dispositivo de IP: 10.100.31.76','2013-04-26','07:58:21'),(265,'administrador','Eliminar Dispositivo de IP: 10.100.31.69','2013-04-26','07:58:26'),(266,'administrador','Eliminar Dispositivo de IP: 199.59.148.82','2013-04-26','07:58:35'),(267,'administrador','Desconectar Usuario','2013-04-26','08:30:02'),(268,'manuelen','Realizo Backup','2013-04-26','08:30:46'),(269,'administrador','Registrar Dispositivo de IP: 192.168.1.11','2026-04-13','10:38:22'),(270,'administrador','Registrar Servicio de IP: 192.168.1.11 y Puerto 80','2013-04-26','10:38:54'),(271,'administrador','Registrar Dispositivo de IP: 192.168.1.12','2026-04-13','10:40:38'),(272,'administrador','Desconectar Usuario','2013-04-26','10:40:47'),(273,'administrador','Envio de Correo Electronico por Seguridad','2013-04-26','10:48:15'),(274,'administrador','Envio de Correo Electronico por Seguridad','2013-04-26','10:49:11'),(275,'administrador','Envio de Correo Electronico por Seguridad','2013-04-26','10:49:18'),(276,'administrador','RecuperaciÃ³n de contraseÃ±a: Datos personales','2013-04-26','10:50:19'),(277,'administrador','Realizo Backup','2013-04-26','10:52:48'),(278,'administrador','Modificar Usuario  , de Cedula 20771115, Nombre joselin, Nivel Encargado, DescripciÃ³n  , Correo joselinber@hotmail.com','2013-04-26','10:56:45'),(279,'administrador','Desconectar Usuario','2013-04-26','10:56:53'),(280,'joselina','Desconectar Usuario','2013-04-26','11:00:48'),(281,'administrador','Desconectar Usuario','2013-04-29','09:25:24');
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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controldeerrores`
--

LOCK TABLES `controldeerrores` WRITE;
/*!40000 ALTER TABLE `controldeerrores` DISABLE KEYS */;
INSERT INTO `controldeerrores` VALUES (131,'192.168.1.12','','Existe un error en el Dispositivo: Pc de prueba Leo de ip: 192.168.1.12 el dia viernes 26 de abril del 2013 a las 10:51:41 am',4,'2013-04-26','10:51:41','10:52:15','no'),(132,'192.168.1.12','','Existe un error en el Dispositivo: Pc de prueba Leo de ip: 192.168.1.12 el dia viernes 26 de abril del 2013 a las 10:52:25 am',4,'2013-04-26','10:52:25','10:53:27','no'),(133,'192.168.1.12','','Existe un error en el Dispositivo: Pc de prueba Leo de ip: 192.168.1.12 el dia viernes 26 de abril del 2013 a las 10:53:38 am',4,'2013-04-26','10:53:38','10:57:23','no'),(134,'192.168.1.12','','Existe un error en el Dispositivo: Pc de prueba Leo de ip: 192.168.1.12 el dia viernes 26 de abril del 2013 a las 10:57:34 am',4,'2013-04-26','10:57:34','10:58:22','no'),(135,'192.168.1.12','','Existe un error en el Dispositivo: Pc de prueba Leo de ip: 192.168.1.12 el dia viernes 26 de abril del 2013 a las 10:58:33 am',4,'2013-04-26','10:58:33','10:58:51','no'),(136,'192.168.1.11','','Existe un error en el Dispositivo: Pc de prueba Joso de ip: 192.168.1.11 el dia viernes 26 de abril del 2013 a las 10:58:44 am',4,'2013-04-26','10:58:44','10:59:16','no'),(137,'192.168.1.11','','Existe un error en el Dispositivo: Pc de prueba Joso de ip: 192.168.1.11 el dia lunes 29 de abril del 2013 a las 8:57:26 pm',4,'2013-04-29','08:57:26','00:00:00','si'),(138,'192.168.1.12','','Existe un error en el Dispositivo: Pc de prueba Leo de ip: 192.168.1.12 el dia lunes 29 de abril del 2013 a las 8:57:37 pm',4,'2013-04-29','08:57:37','00:00:00','si');
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
INSERT INTO `correo` VALUES ('192.168.1.11','','ddd@ws','si','error'),('192.168.1.11','','jjj@jj','si','error'),('192.168.1.11','','joselinber@hotmail.com','si','error'),('192.168.1.11','','manuelenchon@hotmail.com','si','error'),('192.168.1.11','','miguelangel18300@hotmail.com','si','error'),('192.168.1.11','','r@w','si','error'),('192.168.1.11','80','ddd@ws','','si'),('192.168.1.11','80','jjj@jj','','si'),('192.168.1.11','80','joselinber@hotmail.com','','si'),('192.168.1.11','80','manuelenchon@hotmail.com','','si'),('192.168.1.11','80','miguelangel18300@hotmail.com','','si'),('192.168.1.11','80','r@w','','si'),('192.168.1.12','','ddd@ws','si','error'),('192.168.1.12','','jjj@jj','si','error'),('192.168.1.12','','joselinber@hotmail.com','si','error'),('192.168.1.12','','manuelenchon@hotmail.com','si','error'),('192.168.1.12','','miguelangel18300@hotmail.com','si','error'),('192.168.1.12','','r@w','si','error');
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
  CONSTRAINT `dispositivos_ibfk_1` FOREIGN KEY (`tipo`) REFERENCES `tipodispositivo` (`tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dispositivos`
--

LOCK TABLES `dispositivos` WRITE;
/*!40000 ALTER TABLE `dispositivos` DISABLE KEYS */;
INSERT INTO `dispositivos` VALUES ('192.168.1.11','Josi-PC','Pc de prueba Joso','Servidor',' ','Conectado',4,'4'),('192.168.1.12','SANDRA_M-HP','Pc de prueba Leo','Servidor',' ','Conectado',4,'4');
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
INSERT INTO `pantalla` VALUES ('192.168.1.11','','error','center',10000,'si','falla'),('192.168.1.11','80','error','center',10000,'SI','si'),('192.168.1.12','','error','center',10000,'si','falla');
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
  CONSTRAINT `sonido_ibfk_3` FOREIGN KEY (`sonido`) REFERENCES `sonidopredeterminados` (`Sonido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sonido`
--

LOCK TABLES `sonido` WRITE;
/*!40000 ALTER TABLE `sonido` DISABLE KEYS */;
INSERT INTO `sonido` VALUES ('192.168.1.11','','Alerta',0,'1',1,'0','falla'),('192.168.1.12','','Alerta',0,'1',1,'0','falla');
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
  KEY `tipo` (`tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoaplicacion`
--

LOCK TABLES `tipoaplicacion` WRITE;
/*!40000 ALTER TABLE `tipoaplicacion` DISABLE KEYS */;
INSERT INTO `tipoaplicacion` VALUES (3,'123'),(4,'correo'),(2,'industria'),(1,'negosio');
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
INSERT INTO `usuario` VALUES (11,'dd','Encargado',' ','ddd@ws','jj','81dc9bdb52d04dc20036dbd8313ed055','ff','gg'),(1233,'jj','Encargado',' ','jjj@jj','f','fcea920f7412b5da7be0cf42b8c93759','tt','yy'),(2345,'2','Encargado',' ','r@w','r','25d55ad283aa400af464c76d713c07ad','f','g'),(20695525,'manuel','Administrador',' asasa','manuelenchon@hotmail.com','manuelen','25d55ad283aa400af464c76d713c07ad','123','123'),(20771115,'joselin','Encargado',' ','joselinber@hotmail.com','joselina','25d55ad283aa400af464c76d713c07ad','tu','yo'),(20990261,'Miguel Bracho','Administrador',' ','miguelangel18300@hotmail.com','administrador','25d55ad283aa400af464c76d713c07ad','hola','chao');
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

-- Dump completed on 2013-04-30  0:09:55
