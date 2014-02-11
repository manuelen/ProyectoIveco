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
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=259 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria`
--

LOCK TABLES `auditoria` WRITE;
/*!40000 ALTER TABLE `auditoria` DISABLE KEYS */;
INSERT INTO `auditoria` VALUES (27,'manuelen12','Registrar Dispositivo de IP: 127.0.0.6','2013-01-16','11:37:48'),(28,'manuelen12','Registrar Dispositivo de IP: 127.0.0.32','2013-01-16','11:46:41'),(29,'manuelen12','Ingreso de Usuario','2013-01-16','11:46:59'),(30,'manuelen12','Desconectar Usuario','2013-01-16','11:48:36'),(31,'manuelen12','Ingreso de Usuario','2013-01-16','11:48:42'),(32,'manuelen12','Eliminar Dispositivo de IP: 127.0.0.32','2013-01-16','11:56:08'),(33,'manuelen12','Eliminar Dispositivo de IP: 127.0.0.6','2013-01-16','11:56:16'),(34,'manuelen12','Configurar Correo','2013-01-16','12:13:55'),(35,'manuelen12','Configurar Correo','2013-01-16','12:23:17'),(36,'manuelen12','Ingreso de Usuario','2013-01-23','09:07:01'),(37,'manuelen12','Registrar Dispositivo de IP: 172.18.104.117','2013-01-23','09:15:18'),(38,'manuelen12','Modificar Servicio de IP: 172.18.104.33 a IP 172.18.104.117, Puerto 515 a 515 Nombre Sistema de Impresion, Tipo negocio,descripcion !!','2013-01-23','09:16:04'),(39,'manuelen12','Modificar Dispositivo de IP: 172.28.30.50 a IP 172.28.30.50 Nombre Sistema SRM, Tipo Servidor,ping 4 ,Red 400','2013-01-23','09:19:03'),(40,'manuelen12','Ingreso de Usuario','2013-01-23','10:10:56'),(41,'manuelen12','Ingreso de Usuario','2013-02-06','09:49:15'),(42,'manuelen12','Ingreso de Usuario','2013-02-06','09:56:15'),(43,'manuelen12','Registrar Dispositivo de IP: 127.0.0.1','2013-02-06','10:01:25'),(44,'manuelen12','Ingreso de Usuario','2013-02-06','10:02:55'),(45,'manuelen12','Ingreso de Usuario','2013-02-06','04:40:57'),(46,'manuelen12','Ingreso de Usuario','2013-02-20','11:48:19'),(47,'manuelen','Ingreso de Usuario','2013-02-21','03:04:05'),(48,'manuelen','Configurar Correo','2013-02-21','03:04:57'),(49,'manuelen','Ingreso de Usuario','2013-02-21','03:50:43'),(50,'manuelen','Registrar Dispositivo de IP: 127.0.0.54','2013-02-21','04:02:15'),(51,'manuelen','Ingreso de Usuario','2013-03-04','02:26:19'),(52,'manuelen','Desconectar Usuario','2013-03-04','02:36:35'),(53,'manuelen','Ingreso de Usuario','2013-03-04','02:38:30'),(54,'manuelen','Configurar Correo','2013-03-04','02:39:16'),(55,'manuelen','Desconectar Usuario','2013-03-04','02:41:01'),(56,'manuelen','Ingreso de Usuario','2013-03-04','02:42:08'),(57,'manuelen','Configurar Correo','2013-03-04','02:42:22'),(58,'manuelen','Configurar Correo','2013-03-04','02:43:49'),(59,'manuelen','Desconectar Usuario','2013-03-04','02:44:15'),(60,'manuelen','Ingreso de Usuario','2013-03-04','02:45:09'),(61,'manuelen','Configurar Correo','2013-03-04','02:47:15'),(62,'manuelen','Desconectar Usuario','2013-03-04','02:48:57'),(63,'manuelen','RecupraciÃ³n de contraseÃ±a: Datos personales','2013-03-11','02:17:55'),(64,'manuelen','Ingreso de Usuario','2013-03-11','02:18:05'),(65,'manuelen','Eliminar Dispositivo de IP: 172.18.104.26','2013-03-11','03:24:42'),(66,'manuelen','Registrar Dispositivo de IP: 172.18.104.26','2011-03-13','03:27:59'),(67,'manuelen','Ingreso de Usuario','2013-03-11','03:39:38'),(68,'manuelen','Registrar Dispositivo de IP: 151.92.205.32','2012-03-13','12:20:34'),(69,'manuelen','Registrar Dispositivo de IP: 172.18.104.1','2012-03-13','12:23:41'),(70,'manuelen','Registrar Dispositivo de IP: 172.18.104.117','2012-03-13','12:24:26'),(71,'manuelen','Registrar Dispositivo de IP: 172.18.104.20','2012-03-13','12:26:37'),(72,'manuelen','Ingreso de Usuario','2013-03-15','09:14:13'),(73,'manuelen','Registrar Dispositivo de IP: 172.18.104.23','2015-03-13','09:22:41'),(74,'manuelen','Registrar Dispositivo de IP: 172.18.104.26','2015-03-13','09:23:41'),(75,'manuelen','Desconectar Usuario','2013-03-15','09:32:25'),(76,'miguel','RecupraciÃ³n de contraseÃ±a: via correo electronico','2013-03-15','09:32:52'),(77,'miguel','RecupraciÃ³n de contraseÃ±a: via correo electronico','2013-03-15','09:32:59'),(78,'miguel','RecupraciÃ³n de contraseÃ±a: via correo electronico','2013-03-15','09:33:11'),(79,'miguel','RecupraciÃ³n de contraseÃ±a: via correo electronico','2013-03-15','09:33:25'),(80,'manuelen','Ingreso de Usuario','2013-03-15','09:35:57'),(81,'manuelen','Registrar Dispositivo de IP: 172.18.104.28','2015-03-13','09:37:41'),(82,'manuelen','Registrar Dispositivo de IP: 172.18.104.29','2015-03-13','09:38:20'),(83,'manuelen','Registrar Dispositivo de IP: 172.18.104.3','2015-03-13','09:39:17'),(84,'manuelen','Registrar Dispositivo de IP: 172.18.104.30','2015-03-13','09:40:35'),(85,'manuelen','Registrar Dispositivo de IP: 172.18.104.33','2015-03-13','09:41:14'),(86,'manuelen','Registrar Dispositivo de IP: 172.18.104.35','2015-03-13','09:41:46'),(87,'manuelen','Registrar Dispositivo de IP: 172.18.104.36','2015-03-13','09:42:14'),(88,'manuelen','Registrar Dispositivo de IP: 172.18.104.37','2015-03-13','09:42:51'),(89,'manuelen','Registrar Dispositivo de IP: 172.18.104.44','2015-03-13','09:43:21'),(90,'manuelen','Registrar Dispositivo de IP: 172.18.104.50','2015-03-13','09:44:06'),(91,'manuelen','Registrar Dispositivo de IP: 172.18.104.51','2015-03-13','09:44:59'),(92,'manuelen','Registrar Dispositivo de IP: 172.18.104.56','2015-03-13','09:46:14'),(93,'manuelen','Registrar Dispositivo de IP: 172.18.104.6','2015-03-13','09:47:40'),(94,'manuelen','Registrar Dispositivo de IP: 172.18.104.7','2015-03-13','09:49:12'),(95,'manuelen','Modificar Dispositivo de IP: 172.18.104.6 a IP 172.18.104.6 Nombre Switch 1 Server Room, Tipo Switch,ping 4 ,Red 4','2013-03-15','09:49:41'),(96,'manuelen','Registrar Dispositivo de IP: 172.18.104.93','2015-03-13','09:50:19'),(97,'manuelen','Registrar Dispositivo de IP: 172.28.30.50','2015-03-13','09:51:23'),(98,'manuelen','Modificar Dispositivo de IP: 172.28.30.50 a IP 172.28.30.50 Nombre Sistema SRM, Tipo Servidor,ping 4 ,Red 1000','2013-03-15','09:51:38'),(99,'manuelen','Registrar Dispositivo de IP: 187.0.242.80','2015-03-13','09:52:27'),(100,'manuelen','Registrar Dispositivo de IP: 78.6.70.5','2015-03-13','09:54:08'),(101,'manuelen','Registrar Dispositivo de IP: 78.6.70.6','2015-03-13','09:54:48'),(102,'manuelen','Realizo Backup','2013-03-15','10:24:55'),(103,'manuelen','Realizo Backup','2013-03-15','10:26:58'),(104,'manuelen','Configurar Correo','2013-03-15','10:29:34'),(105,'manuelen','Configurar Correo','2013-03-15','10:31:15'),(106,'manuelen','Desconectar Usuario','2013-03-15','10:38:50'),(107,'joselin','RecupraciÃ³n de contraseÃ±a: via correo electronico','2013-03-15','10:39:09'),(108,'joselin','RecupraciÃ³n de contraseÃ±a: via correo electronico','2013-03-15','10:39:28'),(109,'joselin','RecupraciÃ³n de contraseÃ±a: via correo electronico','2013-03-15','10:39:31'),(110,'joselin','RecupraciÃ³n de contraseÃ±a: via correo electronico','2013-03-15','10:39:31'),(111,'joselin','RecupraciÃ³n de contraseÃ±a: via correo electronico','2013-03-15','10:39:31'),(112,'joselin','RecupraciÃ³n de contraseÃ±a: via correo electronico','2013-03-15','10:39:31'),(113,'joselin','RecupraciÃ³n de contraseÃ±a: via correo electronico','2013-03-15','10:40:22'),(114,'joselin','RecupraciÃ³n de contraseÃ±a: via correo electronico','2013-03-15','10:40:23'),(115,'joselin','RecupraciÃ³n de contraseÃ±a: via correo electronico','2013-03-15','10:40:23'),(116,'joselin','RecupraciÃ³n de contraseÃ±a: via correo electronico','2013-03-15','10:43:42'),(117,'joselin','RecupraciÃ³n de contraseÃ±a: via correo electronico','2013-03-15','10:44:05'),(118,'joselin','RecupraciÃ³n de contraseÃ±a: via correo electronico','2013-03-15','10:44:08'),(119,'joselin','RecupraciÃ³n de contraseÃ±a: via correo electronico','2013-03-15','10:44:19'),(120,'joselin','RecupraciÃ³n de contraseÃ±a: via correo electronico','2013-03-15','10:44:20'),(121,'joselin','RecupraciÃ³n de contraseÃ±a: via correo electronico','2013-03-15','10:44:45'),(122,'joselin','RecupraciÃ³n de contraseÃ±a: via correo electronico','2013-03-15','10:44:49'),(123,'joselin','RecupraciÃ³n de contraseÃ±a: via correo electronico','2013-03-15','10:45:07'),(124,'joselin','RecupraciÃ³n de contraseÃ±a: via correo electronico','2013-03-15','10:46:02'),(125,'joselin','RecupraciÃ³n de contraseÃ±a: via correo electronico','2013-03-15','10:46:03'),(126,'joselin','RecupraciÃ³n de contraseÃ±a: via correo electronico','2013-03-15','10:47:34'),(127,'manuelen','Ingreso de Usuario','2013-03-15','10:54:01'),(128,'joselin','RecupraciÃ³n de contraseÃ±a: via correo electronico','2013-03-15','11:00:23'),(129,'manuelen','Ingreso de Usuario','2013-03-18','09:17:05'),(130,'manuelen','Realizo Backup','2013-03-18','09:46:15'),(131,'manuelen','Realizo Backup','2013-03-18','09:46:28'),(132,'manuelen','Realizo Backup','2013-03-18','09:48:15'),(133,'manuelen','Ingreso de Usuario','2013-03-18','10:06:23'),(134,'manuelen','Realizo Backup','2013-03-18','10:07:17'),(135,'manuelen','Registro de Usuario manuelen13 de Cedula: 20695527','2013-03-18','10:08:39'),(136,'fblanco','Desconectar Usuario','2013-03-18','11:16:41'),(137,'manuelen','Ingreso de Usuario','2013-03-18','11:16:50'),(138,'manuelen','Registro de Usuario fblanco de Cedula: 12122465','2013-03-18','11:18:17'),(139,'manuelen','Ingreso de Usuario','2013-03-22','09:03:29'),(140,'manuelen','Desconectar Usuario','2013-03-22','10:10:38'),(141,'fblanco','Ingreso de Usuario','2013-03-22','10:11:31'),(142,'manuelen','Registrar Dispositivo de IP: 172.18.104.82','2002-04-13','12:09:40'),(143,'manuelen','Ingreso de Usuario','2013-04-04','10:11:44'),(144,'manuelen','Ingreso de Usuario','2013-04-04','10:30:44'),(145,'manuelen','Modificar Dispositivo de IP: 172.18.104.300 a IP 172.18.104.1 Nombre Enlaces MPLS, Tipo Router,ping 4 ,Red 1','2013-04-04','10:34:21'),(146,'manuelen','Desconectar Usuario','2013-04-04','10:50:25'),(147,'manuelen','Ingreso de Usuario','2013-04-04','10:50:36'),(148,'manuelen','Modificar Usuario  , de Cedula 20990261, Nombre Miguel Bracho, Nivel Encargado, DescripciÃ³n  , Correo miguelangel18300@hotmail.com','2013-04-04','10:51:14'),(149,'manuelen','Desconectar Usuario','2013-04-04','10:51:19'),(150,'miguel','Ingreso de Usuario','2013-04-04','10:51:32'),(151,'miguel','Desconectar Usuario','2013-04-04','10:51:54'),(152,'miguel','Ingreso de Usuario','2013-04-04','10:52:15'),(153,'manuelen','Ingreso de Usuario','2013-04-04','10:59:43'),(154,'manuelen','Desconectar Usuario','2013-04-04','10:59:47'),(155,'miguel','Ingreso de Usuario','2013-04-04','11:00:37'),(156,'miguel','Desconectar Usuario','2013-04-04','11:00:41'),(157,'miguel','Ingreso de Usuario','2013-04-04','06:35:20'),(158,'miguel','Desconectar Usuario','2013-04-04','11:12:09'),(159,'manuelen','Ingreso de Usuario','2013-04-04','11:12:22'),(160,'manuelen','Eliminar Usuario de Cedula: 20695545','2013-04-04','11:15:45'),(161,'manuelen','Registro de Usuario sistema de Cedula: 11111111','2013-04-04','11:16:34'),(162,'manuelen','Desconectar Usuario','2013-04-04','11:16:41'),(163,'sistema','Ingreso de Usuario','2013-04-04','11:16:50'),(164,'sistema','Desconectar Usuario','2013-04-04','11:16:56'),(165,'manuelen','Ingreso de Usuario','2013-04-04','11:18:44'),(166,'manuelen','Registrar Dispositivo de IP: 127.0.0.1','2004-04-13','11:19:18'),(167,'sistema','Ingreso de Usuario','2013-04-04','11:28:52'),(168,'sistema','Desconectar Usuario','2013-04-04','11:32:04'),(169,'manuelen','Ingreso de Usuario','2013-04-04','11:32:13'),(170,'manuelen','Registro de Usuario rereyes de Cedula: 82144539','2013-04-04','11:34:23'),(171,'manuelen','Desconectar Usuario','2013-04-04','11:36:06'),(172,'sistema','Ingreso de Usuario','2013-04-04','11:36:14'),(173,'sistema','Ingreso de Usuario','2013-04-09','11:03:46'),(174,'sistema','Desconectar Usuario','2013-04-09','11:04:47'),(175,'manuelen','Ingreso de Usuario','2013-04-09','11:05:04'),(176,'manuelen','Configurar Correo','2013-04-09','11:38:06'),(177,'miguel','RecupraciÃ³n de contraseÃ±a: via correo electronico','2013-04-09','11:39:57'),(178,'miguel','RecupraciÃ³n de contraseÃ±a: via correo electronico','2013-04-09','11:40:07'),(179,'sistema','Ingreso de Usuario','2013-04-29','10:04:53'),(180,'sistema','Ingreso de Usuario','2013-05-28','09:00:40'),(181,'manuelen','Desconectar Usuario','2013-06-20','06:38:14'),(182,'manuelen','Ingreso de Usuario','2013-06-20','06:38:21'),(183,'manuelen','Desconectar Usuario','2013-06-20','06:38:23'),(184,'sistema','Ingreso de Usuario','2013-06-20','06:38:30'),(185,'sistema','Desconectar Usuario','2013-06-20','06:38:33'),(186,'manuelen','Ingreso de Usuario','2013-06-20','06:41:01'),(187,'manuelen','Registrar Dispositivo de IP: 192.168.1.1','2026-06-13','07:16:22'),(188,'manuelen','Registrar Dispositivo de IP: 127.0.0.1','2026-06-13','07:17:02'),(189,'manuelen','Desconectar Usuario','2013-06-26','07:29:51'),(190,'leonardo','Desconectar Usuario','2013-06-26','07:50:38'),(191,'leonardo','Desconectar Usuario','2013-06-26','07:56:09'),(192,'manuelen','Desconectar Usuario','2013-06-26','08:00:30'),(193,'manuelen','Registrar Dispositivo de IP: 127.8.8.8','2026-06-13','08:27:30'),(194,'manuelen','Desconectar Usuario','2013-06-26','08:42:34'),(195,'manuelen','Desconectar Usuario','2013-06-26','10:32:23'),(196,'manuelen','Desconectar Usuario','2013-06-27','12:09:36'),(197,'sistema','Registro de Usuario 123 de Cedula: 25841105','2013-07-03','11:44:47'),(198,'sistema','Registro de Usuario 1233 de Cedula: 20695525','2013-07-03','11:45:33'),(199,'1233','RecuperaciÃ³n de contraseÃ±a: Datos personales','2013-07-18','07:36:48'),(200,'123','Ingreso de Usuario','2013-07-18','07:41:33'),(201,'123','Ingreso de Usuario','2013-07-18','08:43:18'),(202,'123','Ingreso de Usuario','2013-07-18','08:50:24'),(203,'123','Desconectar Usuario','2013-07-19','05:02:50'),(204,'manuelen','Desconectar Usuario','2013-07-19','05:37:43'),(205,'manuelen','Desconectar Usuario','2013-07-19','10:55:43'),(206,'sistema','Ingreso de Usuario','2013-07-23','12:53:06'),(207,'sistema','Registro de Usuario manuelen de Cedula: 20695526','2013-07-23','12:54:02'),(208,'manuelen','Registro de Usuario  de Cedula: 33','2013-08-13','10:42:27'),(209,'manuelen','Registro de Usuario  de Cedula: 33','2013-08-13','10:42:45'),(210,'manuelen','Registro de Usuario  de Cedula: 33','2013-08-13','10:43:04'),(211,'manuelen','Registro de Usuario  de Cedula: 33','2013-08-13','10:46:51'),(212,'manuelen','Registro de Usuario  de Cedula: 333','2013-08-13','10:48:45'),(213,'manuelen','Registro de Usuario  de Cedula: 444','2013-08-13','10:50:19'),(214,'manuelen','Registro de Usuario  de Cedula: 20695525','2013-08-13','11:01:52'),(215,'manuelen','Registro de Usuario  de Cedula: 20695528','2013-08-13','11:46:50'),(216,'manuelen','Registro de Usuario  de Cedula: 22','2013-08-13','11:47:23'),(217,'manuelen','Registro de Usuario  de Cedula: 223','2013-08-13','11:47:43'),(218,'manuelen','Desconectar Usuario','2013-08-20','11:26:02'),(219,'manuelen','Modificar Servicio de IP:  a IP , Puerto  a  Nombre , Tipo ,descripcion ','2013-08-20','03:27:33'),(220,'manuelen','Modificar Servicio de IP:  a IP , Puerto  a  Nombre , Tipo ,descripcion ','2013-08-20','03:27:37'),(221,'manuelen','Ingreso de Usuario','2013-09-01','04:17:44'),(222,'manuelen','Ingreso de Usuario','2013-09-01','09:41:10'),(223,'','Registro de Usuario  de Cedula: 20695523','2013-09-10','09:55:54'),(224,'','Registro de Usuario  de Cedula: 20695525','2013-09-10','09:56:32'),(225,'manuelen','Desconectar Usuario','2013-09-17','10:41:22'),(226,'manuelen','Desconectar Usuario','2013-09-17','11:30:39'),(227,'manuelen','Desconectar Usuario','2013-09-17','11:34:36'),(228,'','Registro de Usuario  de Cedula: 20695525','2013-09-17','11:37:45'),(229,'manuelen','Desconectar Usuario','2013-09-17','11:42:24'),(230,'manuelen','Desconectar Usuario','2013-09-17','11:42:48'),(231,'sistema','Ingreso de Usuario','2013-09-18','09:47:09'),(232,'manuelen','Desconectar Usuario','2013-10-06','06:26:34'),(233,'manuelen','Desconectar Usuario','2013-10-10','05:54:28'),(234,'manuelen','Ingreso de Usuario','2013-10-10','06:13:52'),(235,'manuelen','Desconectar Usuario','2013-10-10','06:13:56'),(236,'manuelen','Ingreso de Usuario','2013-10-23','10:41:20'),(237,'manuelen','Ingreso de Usuario','2013-10-23','11:24:55'),(238,'manuelen','Ingreso de Usuario','2013-11-18','08:08:02'),(239,'manuelen','Desconectar Usuario','2013-11-18','08:08:09'),(240,'1233','RecupraciÃ³n de contraseÃ±a: Datos personales','2013-11-18','08:37:18'),(241,'','RecupraciÃ³n de contraseÃ±a: Datos personales','2013-11-18','08:41:25'),(242,'Maye','RecupraciÃ³n de contraseÃ±a: Datos personales','2013-11-18','08:42:04'),(243,'Maye','RecupraciÃ³n de contraseÃ±a: Datos personales','2013-11-18','08:43:51'),(244,'manuelen','Envio de Correo Electronico por Seguridad','2013-11-24','02:29:51'),(245,'manuelen','Envio de Correo Electronico por Seguridad','2013-11-24','02:37:20'),(246,'manuelen','Modificar Dispositivo de IP: 192.168.1.1 a IP 192.168.0.1 Nombre Router, Tipo Router,ping 4 ,Red 4','2013-11-24','02:39:30'),(247,'manuelen','Desconectar Usuario','2013-11-24','02:41:50'),(248,'manuelen','Modificar Usuario  , de Cedula 20695526, Nombre Manuel Jose Sotomayor Torrealba, Nivel Administrador, DescripciÃ³n  , Correo manuelenchon@hotmail.com','2013-11-24','02:42:22'),(249,'manuelen','Desconectar Usuario','2013-11-24','04:49:01'),(250,'manuelen','Desconectar Usuario','2013-11-24','05:15:49'),(251,'manuelen','Desconectar Usuario','2013-11-24','07:16:43'),(252,'manuelen','Desconectar Usuario','2013-11-24','08:38:23'),(253,'manuelen','Desconectar Usuario','2013-11-24','09:25:40'),(254,'manuelen','Eliminar Dispositivo de IP: 127.8.8.8','2013-11-24','09:50:22'),(255,'manuelen','Eliminar Dispositivo de IP: 127.0.0.1','2013-11-24','09:50:37'),(256,'manuelen','Registrar Dispositivo de IP: 192.168.0.103','2024-11-13','09:51:31'),(257,'manuelen','Modificar Dispositivo de IP: 192.168.0.103 a IP 192.168.0.103 Nombre 112, Tipo Servidor,ping 4 ,Red 4','2013-11-24','09:51:58'),(258,'manuelen','Realizo Backup','2013-11-24','09:53:40');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controldeerrores`
--

LOCK TABLES `controldeerrores` WRITE;
/*!40000 ALTER TABLE `controldeerrores` DISABLE KEYS */;
INSERT INTO `controldeerrores` VALUES (1,'192.168.0.1','','Existe un error en el Dispositivo: Router de ip: 192.168.1.1 el dia miércoles 26 de junio del 2013 a las 7:16:30 pm',4,'2013-06-26','07:16:30','07:19:48','no'),(3,'192.168.0.1','','Existe un error en el Dispositivo: Router de ip: 192.168.1.1 el dia miércoles 26 de junio del 2013 a las 9:10:26 pm',4,'2013-06-26','09:10:26','09:10:44','no'),(4,'192.168.0.1','','Existe un error en el Dispositivo: Router de ip: 192.168.1.1 el dia miércoles 26 de junio del 2013 a las 9:10:53 pm',4,'2013-06-26','09:10:53','09:12:11','no'),(5,'192.168.0.1','','Existe un error en el Dispositivo: Router de ip: 192.168.1.1 el dia miércoles 26 de junio del 2013 a las 9:12:19 pm',4,'2013-06-26','09:12:19','09:12:22','no'),(6,'192.168.0.1','','Existe un error en el Dispositivo: Router de ip: 192.168.1.1 el dia miércoles 26 de junio del 2013 a las 9:12:29 pm',4,'2013-06-26','09:12:29','09:13:12','no'),(7,'192.168.0.1','','Existe un error en el Dispositivo: Router de ip: 192.168.1.1 el dia miércoles 26 de junio del 2013 a las 9:13:20 pm',4,'2013-06-26','09:13:20','09:14:13','no'),(8,'192.168.0.1','','Existe un error en el Dispositivo: Router de ip: 192.168.1.1 el dia miércoles 26 de junio del 2013 a las 9:14:26 pm',4,'2013-06-26','09:14:26','09:15:04','no'),(9,'192.168.0.1','','Existe un error en el Dispositivo: Router de ip: 192.168.1.1 el dia miércoles 26 de junio del 2013 a las 9:15:12 pm',4,'2013-06-26','09:15:12','09:15:24','no'),(10,'192.168.0.1','','Existe un error en el Dispositivo: Router de ip: 192.168.1.1 el dia miércoles 26 de junio del 2013 a las 10:26:36 pm',3,'2013-06-26','10:26:36','10:26:38','no'),(11,'192.168.0.1','','Existe un error en el Dispositivo: Router de ip: 192.168.1.1 el dia miércoles 26 de junio del 2013 a las 10:59:01 pm',4,'2013-06-26','10:59:01','10:59:04','no'),(12,'192.168.0.1','','Existe un error en el Dispositivo: Router de ip: 192.168.1.1 el dia miércoles 26 de junio del 2013 a las 11:13:11 pm',4,'2013-06-26','11:13:11','11:13:14','no'),(13,'192.168.0.1','','Existe un error en el Dispositivo: Router de ip: 192.168.1.1 el dia miércoles 26 de junio del 2013 a las 11:28:32 pm',4,'2013-06-26','11:28:32','11:28:55','no'),(14,'192.168.0.1','','Existe un error en el Dispositivo: Router de ip: 192.168.1.1 el dia miércoles 26 de junio del 2013 a las 11:29:03 pm',4,'2013-06-26','11:29:03','11:30:19','no'),(15,'192.168.0.1','','Existe un error en el Dispositivo: Router de ip: 192.168.1.1 el dia Wednesday 26 de June del 2013 a las 11:54:10 pm',4,'2013-06-26','11:54:10','11:44:11','no'),(16,'192.168.0.1','','Existe un error en el Dispositivo: Router de ip: 192.168.1.1 el dia martes 23 de julio del 2013 a las 12:53:20 am',4,'2013-07-23','12:53:20','04:17:56','no'),(17,'192.168.0.1','','Existe un error en el Dispositivo: Router de ip: 192.168.1.1 el dia domingo 06 de octubre del 2013 a las 6:26:48 am',4,'2013-10-06','06:26:48','10:41:36','no'),(18,'192.168.0.1','','Existe un error en el Dispositivo: Router de ip: 192.168.1.1 el dia miércoles 23 de octubre del 2013 a las 11:25:09 pm',3,'2013-10-23','11:25:09','02:39:37','no');
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
INSERT INTO `correo` VALUES ('192.168.0.1','','132@ss','si','si'),('192.168.0.1','','222@jhh.c','si','si'),('192.168.0.1','','ds@w','si','si'),('192.168.0.1','','manuelenchon@hotmail.com','si','si'),('192.168.0.1','','mjmiveco@gmail.com','si','si'),('192.168.0.103','','132@ss','si','si'),('192.168.0.103','','222@jhh.c','si','si'),('192.168.0.103','','ds@w','si','si'),('192.168.0.103','','manuelenchon@hotmail.com','si','si'),('192.168.0.103','','mjmiveco@gmail.com','si','si');
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
INSERT INTO `dispositivos` VALUES ('192.168.0.1','192.168.1.1','Router','Router',' ya tu sabes','Conectado',4,'4'),('192.168.0.103','Personal-PC.cantv.net','112','Servidor',' ','Conectado',4,'4');
/*!40000 ALTER TABLE `dispositivos` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `pantalla` VALUES ('192.168.0.1','','error','center',10000,'si','si'),('192.168.0.103','','error','center',10000,'si','si');
/*!40000 ALTER TABLE `pantalla` ENABLE KEYS */;
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
INSERT INTO `sonido` VALUES ('192.168.0.1','','Alerta',0,'1',1,'0','si'),('192.168.0.103','','Alerta',0,'1',0,'0','si');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoaplicacion`
--

LOCK TABLES `tipoaplicacion` WRITE;
/*!40000 ALTER TABLE `tipoaplicacion` DISABLE KEYS */;
INSERT INTO `tipoaplicacion` VALUES (2,'Industria'),(1,'Negocio'),(3,'Web');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipodispositivo`
--

LOCK TABLES `tipodispositivo` WRITE;
/*!40000 ALTER TABLE `tipodispositivo` DISABLE KEYS */;
INSERT INTO `tipodispositivo` VALUES (5,'Router'),(6,'Sensor'),(3,'Servidor'),(7,'Switch');
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
INSERT INTO `usuario` VALUES (22222,'222222','Encargado',' ','222@jhh.c','222','bcbe3365e6ac95ea2c0343a2395834dd','222','222'),(11111111,'Sistema','Administrador',' ','mjmiveco@gmail.com','sistema','25d55ad283aa400af464c76d713c07ad','Sistema','Sistema'),(20695525,'123','Administrador','123 ','132@ss','1233','25d55ad283aa400af464c76d713c07ad','123456','123456'),(20695526,'Manuel Jose Sotomayor Torrealba','Administrador',' ','manuelenchon@hotmail.com','manuelen','25d55ad283aa400af464c76d713c07ad','12345678','12345678'),(25841105,'da','Administrador','d ','ds@w','123','25d55ad283aa400af464c76d713c07ad','123','123');
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

-- Dump completed on 2013-11-24 21:53:48
