-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 22-11-2012 a las 01:38:29
-- Versión del servidor: 5.5.16
-- Versión de PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `database`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicaciones`
--

CREATE TABLE IF NOT EXISTS `aplicaciones` (
  `puerto` varchar(15) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `estado` varchar(15) NOT NULL,
  PRIMARY KEY (`puerto`,`ip`),
  KEY `ip` (`ip`),
  KEY `tipo` (`tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `aplicaciones`
--

INSERT INTO `aplicaciones` (`puerto`, `nombre`, `ip`, `tipo`, `descripcion`, `estado`) VALUES
('3306', '80', '127.0.0.1', 'industria', ' 80', 'conectado'),
('80', '80', '127.0.0.1', 'industria', ' 80', 'conectado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `controldeerrores`
--

CREATE TABLE IF NOT EXISTS `controldeerrores` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL,
  `puerto` varchar(15) NOT NULL,
  `descripcion` text NOT NULL,
  `ping` int(11) NOT NULL,
  `tiempoinactivo` time NOT NULL,
  `fecha` date NOT NULL,
  `horad` time NOT NULL,
  `horaa` time NOT NULL,
  `falla` varchar(2) NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `ip` (`ip`),
  KEY `puerto` (`puerto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `controldeerrores`
--

INSERT INTO `controldeerrores` (`codigo`, `ip`, `puerto`, `descripcion`, `ping`, `tiempoinactivo`, `fecha`, `horad`, `horaa`, `falla`) VALUES
(1, '127.0.0.1', '', 'Existe un error en el Dispositivo: caca de ip: 12.0.0.1 el dia jueves 22 de noviembre del 2012 a las 1:17:03 am', 4, '12:00:25', '2012-11-22', '01:17:03', '01:17:28', 'no'),
(3, '127.0.0.1', '', 'Existe un error en el Dispositivo: caca de ip: 12.0.0.1 el dia jueves 22 de noviembre del 2012 a las 1:18:09 am', 4, '12:01:19', '2012-11-22', '01:18:09', '01:19:28', 'no'),
(4, '127.0.0.4', '', 'Existe un error en el Dispositivo: 4 de ip: 12.0.0.4 el dia jueves 22 de noviembre del 2012 a las 1:18:41 am', 4, '12:00:51', '2012-11-22', '01:18:41', '01:19:32', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `correo`
--

CREATE TABLE IF NOT EXISTS `correo` (
  `ip` varchar(15) NOT NULL,
  `puerto` varchar(15) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  PRIMARY KEY (`ip`,`puerto`,`correo`),
  KEY `correo` (`correo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `correo`
--

INSERT INTO `correo` (`ip`, `puerto`, `correo`, `descripcion`, `estado`) VALUES
('127.0.0.1', '', 'manuelenchon@hotmail.com', 'si', 'si'),
('127.0.0.1', '3306', 'manuelenchon@hotmail.com', '', 'si'),
('127.0.0.1', '80', 'manuelenchon@hotmail.com', '', 'si'),
('127.0.0.4', '', 'manuelenchon@hotmail.com', 'si', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dispositivos`
--

CREATE TABLE IF NOT EXISTS `dispositivos` (
  `ip` varchar(15) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `estado` varchar(50) NOT NULL,
  `ping` int(10) NOT NULL,
  `red` varchar(10) NOT NULL,
  PRIMARY KEY (`ip`),
  KEY `tipo` (`tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dispositivos`
--

INSERT INTO `dispositivos` (`ip`, `nombre`, `tipo`, `descripcion`, `estado`, `ping`, `red`) VALUES
('127.0.0.1', 'caca', 'Servidor', ' ', 'Conectado', 4, '1'),
('127.0.0.4', '4', 'Servidor', ' ', 'Conectado', 4, '1');

--
-- Disparadores `dispositivos`
--
DROP TRIGGER IF EXISTS `testref`;
DELIMITER //
CREATE TRIGGER `testref` BEFORE INSERT ON `dispositivos`
 FOR EACH ROW BEGIN
   
  END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `dispositivo`;
DELIMITER //
CREATE TRIGGER `dispositivo` AFTER INSERT ON `dispositivos`
 FOR EACH ROW BEGIN

  END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pantalla`
--

CREATE TABLE IF NOT EXISTS `pantalla` (
  `ip` varchar(15) NOT NULL,
  `puerto` varchar(15) NOT NULL,
  `modoa` varchar(50) NOT NULL,
  `ubicacion` varchar(50) NOT NULL,
  `duracion` int(6) NOT NULL,
  `ubicar` varchar(2) NOT NULL,
  `estado` varchar(50) NOT NULL,
  PRIMARY KEY (`ip`,`puerto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pantalla`
--

INSERT INTO `pantalla` (`ip`, `puerto`, `modoa`, `ubicacion`, `duracion`, `ubicar`, `estado`) VALUES
('127.0.0.1', '', 'error', 'center', 10000, 'si', 'si'),
('127.0.0.1', '3306', 'error', 'center', 10000, 'SI', 'si'),
('127.0.0.1', '80', 'error', 'center', 10000, 'SI', 'si'),
('127.0.0.4', '', 'error', 'center', 10000, 'si', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pantallas`
--

CREATE TABLE IF NOT EXISTS `pantallas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `pantalla` varchar(50) NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `pantalla` (`pantalla`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puertos`
--

CREATE TABLE IF NOT EXISTS `puertos` (
  `puerto` varchar(15) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `estado` varchar(15) NOT NULL,
  PRIMARY KEY (`puerto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `puertos`
--

INSERT INTO `puertos` (`puerto`, `nombre`, `ip`, `tipo`, `descripcion`, `estado`) VALUES
('3200', 'sapdp00', '172.18.104.23', 'negosio', '', 'conectado'),
('3201', 'sapdp01', '172.18.104.23', 'negosio', '', 'conectado'),
('3202', 'sapdp02', '172.18.104.23', 'negosio', '', 'conectado'),
('3203', 'sapdp03', '172.18.104.23', 'negosio', '', 'conectado'),
('3204', 'sapdp04', '172.18.104.23', 'negosio', '', 'conectado'),
('3205', 'sapdp05', '172.18.104.23', 'negosio', '', 'conectado'),
('3206', 'sapdp06', '172.18.104.23', 'negosio', '', 'conectado'),
('3207', 'sapdp07', '172.18.104.23', 'negosio', '', 'conectado'),
('3208', 'sapdp08', '172.18.104.23', 'negosio', '', 'conectado'),
('3209', 'sapdp09', '172.18.104.23', 'negosio', '', 'conectado'),
('3210', 'sapdp10', '172.18.104.23', 'negosio', '', 'conectado'),
('3211', 'sapdp11', '172.18.104.23', 'negosio', '', 'conectado'),
('3212', 'sapdp12', '172.18.104.23', 'negosio', '', 'conectado'),
('3213', 'sapdp13', '172.18.104.23', 'negosio', '', 'conectado'),
('3214', 'sapdp14', '172.18.104.23', 'negosio', '', 'conectado'),
('3215', 'sapdp15', '172.18.104.23', 'negosio', '', 'conectado'),
('3216', 'sapdp16', '172.18.104.23', 'negosio', '', 'conectado'),
('3217', 'sapdp17', '172.18.104.23', 'negosio', '', 'conectado'),
('3218', 'sapdp18', '172.18.104.23', 'negosio', '', 'conectado'),
('3219', 'sapdp19', '172.18.104.23', 'negosio', '', 'conectado'),
('3220', 'sapdp20', '172.18.104.23', 'negosio', '', 'conectado'),
('3221', 'sapdp21', '172.18.104.23', 'negosio', '', 'conectado'),
('3222', 'sapdp22', '172.18.104.23', 'negosio', '', 'conectado'),
('3223', 'sapdp23', '172.18.104.23', 'negosio', '', 'conectado'),
('3224', 'sapdp24', '172.18.104.23', 'negosio', '', 'conectado'),
('3225', 'sapdp25', '172.18.104.23', 'negosio', '', 'conectado'),
('3226', 'sapdp26', '172.18.104.23', 'negosio', '', 'conectado'),
('3227', 'sapdp27', '172.18.104.23', 'negosio', '', 'conectado'),
('3228', 'sapdp28', '172.18.104.23', 'negosio', '', 'conectado'),
('3229', 'sapdp29', '172.18.104.23', 'negosio', '', 'conectado'),
('3230', 'sapdp30', '172.18.104.23', 'negosio', '', 'conectado'),
('3231', 'sapdp31', '172.18.104.23', 'negosio', '', 'conectado'),
('3232', 'sapdp32', '172.18.104.23', 'negosio', '', 'conectado'),
('3233', 'sapdp33', '172.18.104.23', 'negosio', '', 'conectado'),
('3234', 'sapdp34', '172.18.104.23', 'negosio', '', 'conectado'),
('3235', 'sapdp35', '172.18.104.23', 'negosio', '', 'conectado'),
('3236', 'sapdp36', '172.18.104.23', 'negosio', '', 'conectado'),
('3237', 'sapdp37', '172.18.104.23', 'negosio', '', 'conectado'),
('3238', 'sapdp38', '172.18.104.23', 'negosio', '', 'conectado'),
('3239', 'sapdp39', '172.18.104.23', 'negosio', '', 'conectado'),
('3240', 'sapdp40', '172.18.104.23', 'negosio', '', 'conectado'),
('3241', 'sapdp41', '172.18.104.23', 'negosio', '', 'conectado'),
('3242', 'sapdp42', '172.18.104.23', 'negosio', '', 'conectado'),
('3243', 'sapdp43', '172.18.104.23', 'negosio', '', 'conectado'),
('3244', 'sapdp44', '172.18.104.23', 'negosio', '', 'conectado'),
('3245', 'sapdp45', '172.18.104.23', 'negosio', '', 'conectado'),
('3246', 'sapdp46', '172.18.104.23', 'negosio', '', 'conectado'),
('3247', 'sapdp47', '172.18.104.23', 'negosio', '', 'conectado'),
('3248', 'sapdp48', '172.18.104.23', 'negosio', '', 'conectado'),
('3249', 'sapdp49', '172.18.104.23', 'negosio', '', 'conectado'),
('3250', 'sapdp50', '172.18.104.23', 'negosio', '', 'conectado'),
('3251', 'sapdp51', '172.18.104.23', 'negosio', '', 'conectado'),
('3252', 'sapdp52', '172.18.104.23', 'negosio', '', 'conectado'),
('3253', 'sapdp53', '172.18.104.23', 'negosio', '', 'conectado'),
('3254', 'sapdp54', '172.18.104.23', 'negosio', '', 'conectado'),
('3255', 'sapdp55', '172.18.104.23', 'negosio', '', 'conectado'),
('3256', 'sapdp56', '172.18.104.23', 'negosio', '', 'conectado'),
('3257', 'sapdp57', '172.18.104.23', 'negosio', '', 'conectado'),
('3258', 'sapdp58', '172.18.104.23', 'negosio', '', 'conectado'),
('3259', 'sapdp59', '172.18.104.23', 'negosio', '', 'conectado'),
('12601', 'home 1 ', '172.18.104.30', 'negosio', '', 'conectado'),
('12401', 'home 2', '172.18.104.30', 'negosio', '', 'conectado'),
('12501', 'home 3', '172.18.104.30', 'negosio', '', 'conectado'),
('12602', 'OC4J_BI_Forms 1', '172.18.104.30', 'negosio', '', 'conectado'),
('12402', 'OC4J_BI_Forms 2', '172.18.104.30', 'negosio', '', 'conectado'),
('12502', 'OC4J_BI_Forms 3', '172.18.104.30', 'negosio', '', 'conectado'),
('6101', 'OPMN 1', '172.18.104.30', 'negosio', '', 'conectado'),
('6200', 'OPMN 2', '172.18.104.30', 'negosio', '', 'conectado'),
('6003', 'OPMN 3', '172.18.104.30', 'negosio', '', 'conectado'),
('18100', 'Oracle Enterprise Manager 10g 1', '172.18.104.30', 'negosio', '', 'conectado'),
('18120', 'Oracle Enterprise Manager 10g 2', '172.18.104.30', 'negosio', '', 'conectado'),
('18140', 'Oracle Enterprise Manager 10g 3', '172.18.104.30', 'negosio', '', 'conectado'),
('7200', 'Oracle HTTP Server 1', '172.18.104.30', 'negosio', '', 'conectado'),
('7778', 'Oracle HTTP Server 2', '172.18.104.30', 'negosio', '', 'conectado'),
('14021', 'Reports Services 1', '172.18.104.30', 'negosio', '', 'conectado'),
('14011', 'Reports Services 2', '172.18.104.30', 'negosio', '', 'conectado'),
('1950', 'Reports Services 3', '172.18.104.30', 'negosio', '', 'conectado'),
('9400', 'Web Cache 1', '172.18.104.30', 'negosio', '', 'conectado'),
('9402', 'Web Cache 2', '172.18.104.30', 'negosio', '', 'conectado'),
('9401', 'Web Cache 3', '172.18.104.30', 'negosio', '', 'conectado'),
('80', 'Web Cache 4', '172.18.104.30', 'negosio', '', 'conectado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sonido`
--

CREATE TABLE IF NOT EXISTS `sonido` (
  `ip` varchar(15) NOT NULL,
  `puerto` varchar(15) NOT NULL,
  `sonido` varchar(50) NOT NULL,
  `duracion` int(3) NOT NULL,
  `repetir` varchar(2) NOT NULL,
  `repeticiones` int(2) NOT NULL,
  `volumen` varchar(20) NOT NULL,
  `estado` varchar(50) NOT NULL,
  PRIMARY KEY (`ip`,`puerto`),
  KEY `sonido` (`sonido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sonido`
--

INSERT INTO `sonido` (`ip`, `puerto`, `sonido`, `duracion`, `repetir`, `repeticiones`, `volumen`, `estado`) VALUES
('127.0.0.1', '', 'rock', 0, '1', 0, '0', 'si'),
('127.0.0.1', '3306', 'rock', 0, '1', 0, '0', 'si'),
('127.0.0.1', '80', 'rock', 0, '1', 0, '0', 'si'),
('127.0.0.4', '', 'rock', 0, '1', 0, '0', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sonidopredeterminados`
--

CREATE TABLE IF NOT EXISTS `sonidopredeterminados` (
  `codigosonido` int(11) NOT NULL AUTO_INCREMENT,
  `Sonido` varchar(50) NOT NULL,
  `ubicacion` varchar(100) NOT NULL,
  PRIMARY KEY (`codigosonido`),
  KEY `Sonido` (`Sonido`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `sonidopredeterminados`
--

INSERT INTO `sonidopredeterminados` (`codigosonido`, `Sonido`, `ubicacion`) VALUES
(3, 'fail', ''),
(4, 'rock', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoaplicacion`
--

CREATE TABLE IF NOT EXISTS `tipoaplicacion` (
  `codigotipo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  PRIMARY KEY (`codigotipo`),
  KEY `tipo` (`tipo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `tipoaplicacion`
--

INSERT INTO `tipoaplicacion` (`codigotipo`, `tipo`) VALUES
(3, '123'),
(2, 'industria'),
(1, 'negosio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodispositivo`
--

CREATE TABLE IF NOT EXISTS `tipodispositivo` (
  `codigotipo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  PRIMARY KEY (`codigotipo`),
  KEY `tipo` (`tipo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;

--
-- Volcado de datos para la tabla `tipodispositivo`
--

INSERT INTO `tipodispositivo` (`codigotipo`, `tipo`) VALUES
(64, ''),
(65, 'casa'),
(63, 'Servidor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `cedula` int(8) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `nivel` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `contrasena` varchar(50) NOT NULL,
  `pregunta` varchar(50) NOT NULL,
  `respuesta` varchar(50) NOT NULL,
  PRIMARY KEY (`cedula`),
  UNIQUE KEY `usuario` (`usuario`),
  KEY `correo` (`correo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`cedula`, `nombre`, `nivel`, `descripcion`, `correo`, `usuario`, `contrasena`, `pregunta`, `respuesta`) VALUES
(20695525, 'Manuel Sotomayor', 'Administrador', ' ', 'manuelenchon@hotmail.com', 'manuelen', '123', 'quien soy', 'manuel');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aplicaciones`
--
ALTER TABLE `aplicaciones`
  ADD CONSTRAINT `aplicaciones_ibfk_3` FOREIGN KEY (`ip`) REFERENCES `dispositivos` (`ip`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `aplicaciones_ibfk_4` FOREIGN KEY (`tipo`) REFERENCES `tipoaplicacion` (`tipo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `controldeerrores`
--
ALTER TABLE `controldeerrores`
  ADD CONSTRAINT `controldeerrores_ibfk_1` FOREIGN KEY (`ip`) REFERENCES `dispositivos` (`ip`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `correo`
--
ALTER TABLE `correo`
  ADD CONSTRAINT `correo_ibfk_3` FOREIGN KEY (`correo`) REFERENCES `usuario` (`correo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `correo_ibfk_4` FOREIGN KEY (`ip`) REFERENCES `dispositivos` (`ip`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `dispositivos`
--
ALTER TABLE `dispositivos`
  ADD CONSTRAINT `dispositivos_ibfk_1` FOREIGN KEY (`tipo`) REFERENCES `tipodispositivo` (`tipo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pantalla`
--
ALTER TABLE `pantalla`
  ADD CONSTRAINT `pantalla_ibfk_1` FOREIGN KEY (`ip`) REFERENCES `dispositivos` (`ip`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sonido`
--
ALTER TABLE `sonido`
  ADD CONSTRAINT `sonido_ibfk_2` FOREIGN KEY (`ip`) REFERENCES `dispositivos` (`ip`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sonido_ibfk_3` FOREIGN KEY (`sonido`) REFERENCES `sonidopredeterminados` (`Sonido`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
