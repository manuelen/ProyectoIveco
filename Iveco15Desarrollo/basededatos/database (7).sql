-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 25-10-2012 a las 00:17:23
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
('12051', 'IPNC - TCP', '172.18.104.56', 'negosio', ' ', 'conectado'),
('12052', 'MPH- TCP', '172.18.104.56', 'negosio', ' ', 'conectado'),
('12061', ' REG - TCP', '172.18.104.56', 'negosio', ' ', 'conectado'),
('12062', 'CAR - TCP', '172.18.104.56', 'negosio', ' ', 'conectado'),
('12063', 'Servidor CAR  - TCP', '172.18.104.56', 'negosio', ' ', 'conectado'),
('12200', ' DSL_DIAG - TCP', '172.18.104.56', 'negosio', ' ', 'conectado'),
('12950', 'H323_DYN_MIN - TCP', '172.18.104.56', 'negosio', ' ', 'conectado'),
('1300', 'H323-TLS     - TCP', '172.18.104.56', 'negosio', ' ', 'conectado'),
('1719', 'H225_RAS     - TCP', '172.18.104.56', 'negosio', ' ', 'conectado'),
('1720', ' H225_CS  - TCP', '172.18.104.56', 'negosio', ' ', 'conectado'),
('29100', 'RTP_MIN - TCP', '172.18.104.56', 'negosio', ' ', 'conectado'),
('29259', 'RTP_MAX    - TCP', '172.18.104.56', 'negosio', ' ', 'conectado'),
('3321', 'sapgw21', '172.18.104.23', 'negosio', '', 'Conectado'),
('3322', 'sapgw22', '172.18.104.23', 'negosio', '', 'Conectado'),
('3323', 'sapgw23', '172.18.104.23', 'negosio', '', 'Conectado'),
('3324', 'sapgw24', '172.18.104.23', 'negosio', '', 'Conectado'),
('3325', 'sapgw25', '172.18.104.23', 'negosio', '', 'Conectado'),
('3326', 'sapgw26', '172.18.104.23', 'negosio', '', 'Conectado'),
('3327', 'sapgw27', '172.18.104.23', 'negosio', '', 'Conectado'),
('3328', 'sapgw28', '172.18.104.23', 'negosio', '', 'Conectado'),
('3329', 'sapgw29', '172.18.104.23', 'negosio', '', 'Conectado'),
('3330', 'sapgw30', '172.18.104.23', 'negosio', '', 'Conectado'),
('3331', 'sapgw31', '172.18.104.23', 'negosio', '', 'Conectado'),
('3332', 'sapgw32', '172.18.104.23', 'negosio', '', 'Conectado'),
('3333', 'sapgw33', '172.18.104.23', 'negosio', '', 'Conectado'),
('3334', 'sapgw34', '172.18.104.23', 'negosio', '', 'Conectado'),
('3335', 'sapgw35', '172.18.104.23', 'negosio', '', 'Conectado'),
('3336', 'sapgw36', '172.18.104.23', 'negosio', '', 'Conectado'),
('3337', 'sapgw37', '172.18.104.23', 'negosio', '', 'Conectado'),
('3338', 'sapgw38', '172.18.104.23', 'negosio', '', 'Conectado'),
('3339', 'sapgw39', '172.18.104.23', 'negosio', '', 'Conectado'),
('3340', 'sapgw40', '172.18.104.23', 'negosio', '', 'Conectado'),
('3341', 'sapgw41', '172.18.104.23', 'negosio', '', 'Conectado'),
('3342', 'sapgw42', '172.18.104.23', 'negosio', '', 'Conectado'),
('3343', 'sapgw43', '172.18.104.23', 'negosio', '', 'Conectado'),
('3344', 'sapgw44', '172.18.104.23', 'negosio', '', 'Conectado'),
('3345', 'sapgw45', '172.18.104.23', 'negosio', '', 'Conectado'),
('3346', 'sapgw46', '172.18.104.23', 'negosio', '', 'Conectado'),
('3347', 'sapgw47', '172.18.104.23', 'negosio', '', 'Conectado'),
('3348', 'sapgw48', '172.18.104.23', 'negosio', '', 'Conectado'),
('3349', 'sapgw49', '172.18.104.23', 'negosio', '', 'Conectado'),
('3350', 'sapgw50', '172.18.104.23', 'negosio', '', 'Conectado'),
('3351', 'sapgw51', '172.18.104.23', 'negosio', '', 'Conectado'),
('3352', 'sapgw52', '172.18.104.23', 'negosio', '', 'Conectado'),
('3353', 'sapgw53', '172.18.104.23', 'negosio', '', 'Conectado'),
('3354', 'sapgw54', '172.18.104.23', 'negosio', '', 'Conectado'),
('3355', 'sapgw55', '172.18.104.23', 'negosio', '', 'Conectado'),
('3356', 'sapgw56', '172.18.104.23', 'negosio', '', 'Conectado'),
('3357', 'sapgw57', '172.18.104.23', 'negosio', '', 'Conectado'),
('3358', 'sapgw58', '172.18.104.23', 'negosio', '', 'Conectado'),
('3359', 'sapgw59', '172.18.104.23', 'negosio', '', 'Conectado'),
('3360', 'sapgw60', '172.18.104.23', 'negosio', '', 'Conectado'),
('3361', 'sapgw61', '172.18.104.23', 'negosio', '', 'Conectado'),
('3362', 'sapgw62', '172.18.104.23', 'negosio', '', 'Conectado'),
('3363', 'sapgw63', '172.18.104.23', 'negosio', '', 'Conectado'),
('3364', 'sapgw64', '172.18.104.23', 'negosio', '', 'Conectado'),
('3365', 'sapgw65', '172.18.104.23', 'negosio', '', 'Conectado'),
('3366', 'sapgw66', '172.18.104.23', 'negosio', '', 'Conectado'),
('3367', 'sapgw67', '172.18.104.23', 'negosio', '', 'Conectado'),
('3368', 'sapgw68', '172.18.104.23', 'negosio', '', 'Conectado'),
('3369', 'sapgw69', '172.18.104.23', 'negosio', '', 'Conectado'),
('3370', 'sapgw70', '172.18.104.23', 'negosio', '', 'Conectado'),
('3371', 'sapgw71', '172.18.104.23', 'negosio', '', 'Conectado'),
('3372', 'sapgw72', '172.18.104.23', 'negosio', '', 'Conectado'),
('3373', 'sapgw73', '172.18.104.23', 'negosio', '', 'Conectado'),
('3374', 'sapgw74', '172.18.104.23', 'negosio', '', 'Conectado'),
('3375', 'sapgw75', '172.18.104.23', 'negosio', '', 'Conectado'),
('3376', 'sapgw76', '172.18.104.23', 'negosio', '', 'Conectado'),
('3377', 'sapgw77', '172.18.104.23', 'negosio', '', 'Conectado'),
('3378', 'sapgw78', '172.18.104.23', 'negosio', '', 'Conectado'),
('3379', 'sapgw79', '172.18.104.23', 'negosio', '', 'Conectado'),
('3380', 'sapgw80', '172.18.104.23', 'negosio', '', 'Conectado'),
('3381', 'sapgw81', '172.18.104.23', 'negosio', '', 'Conectado'),
('3382', 'sapgw82', '172.18.104.23', 'negosio', '', 'Conectado'),
('3383', 'sapgw83', '172.18.104.23', 'negosio', '', 'Conectado'),
('3384', 'sapgw84', '172.18.104.23', 'negosio', '', 'Conectado'),
('3385', 'sapgw85', '172.18.104.23', 'negosio', '', 'Conectado'),
('3386', 'sapgw86', '172.18.104.23', 'negosio', '', 'Conectado'),
('3387', 'sapgw87', '172.18.104.23', 'negosio', '', 'Conectado'),
('3388', 'sapgw88', '172.18.104.23', 'negosio', '', 'Conectado'),
('3389', 'sapgw89', '172.18.104.23', 'negosio', '', 'Conectado'),
('3390', 'sapgw90', '172.18.104.23', 'negosio', '', 'Conectado'),
('3391', 'sapgw91', '172.18.104.23', 'negosio', '', 'Conectado'),
('3392', 'sapgw92', '172.18.104.23', 'negosio', '', 'Conectado'),
('3393', 'sapgw93', '172.18.104.23', 'negosio', '', 'Conectado'),
('3394', 'sapgw94', '172.18.104.23', 'negosio', '', 'Conectado'),
('3395', 'sapgw95', '172.18.104.23', 'negosio', '', 'Conectado'),
('3396', 'sapgw96', '172.18.104.23', 'negosio', '', 'Conectado'),
('3397', 'sapgw97', '172.18.104.23', 'negosio', '', 'Conectado'),
('3398', 'sapgw98', '172.18.104.23', 'negosio', '', 'Conectado'),
('3399', 'sapgw99', '172.18.104.23', 'negosio', '', 'Conectado'),
('3600', 'sapmsPRD', '172.18.104.23', 'negosio', '', 'Conectado'),
('4060', 'SYNCH', '172.18.104.56', 'negosio', ' ', 'conectado'),
('4061', ' HFA-TLS - TCP', '172.18.104.56', 'negosio', ' ', 'conectado'),
('4700', 'sapdp00s', '172.18.104.23', 'negosio', '', 'Conectado'),
('4711', 'H225_CS_RESERVE   - TCP', '172.18.104.56', 'negosio', ' ', 'conectado'),
('4800', 'sapgw00s', '172.18.104.23', 'negosio', '', 'Conectado'),
('5060', 'Puerto SIP  - TCP', '172.18.104.56', 'negosio', ' ', 'conectado'),
('7000', 'ADM   - TCP', '172.18.104.56', 'negosio', ' ', 'conectado'),
('7001', 'ADM2   - TCP', '172.18.104.56', 'negosio', ' ', 'conectado'),
('7024', 'SYNCH  - TCP', '172.18.104.56', 'negosio', ' ', 'conectado'),
('7100', 'FCT    - TCP', '172.18.104.56', 'negosio', ' ', 'conectado'),
('9000', 'Gestor de recursos RM   - TCP', '172.18.104.56', 'negosio', ' ', 'conectado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `controldeerrores`
--

CREATE TABLE IF NOT EXISTS `controldeerrores` (
  `codigo` varchar(10) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `puerto` varchar(15) NOT NULL,
  `subpuerto` varchar(15) NOT NULL,
  `descripcion` text NOT NULL,
  `tiempoinactivo` varchar(10) NOT NULL,
  `fecha` varchar(10) NOT NULL,
  `hora` varchar(10) NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `ip` (`ip`),
  KEY `puerto` (`puerto`),
  KEY `subpuerto` (`subpuerto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
('172.18.104.23', '3321', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3322', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3323', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3324', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3325', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3326', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3327', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3328', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3329', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3330', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3331', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3332', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3333', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3334', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3335', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3336', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3337', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3338', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3339', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3340', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3341', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3342', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3343', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3344', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3345', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3346', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3347', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3348', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3349', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3350', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3351', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3352', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3353', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3354', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3355', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3356', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3357', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3358', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3359', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3360', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3361', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3362', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3363', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3364', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3365', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3366', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3367', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3368', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3369', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3370', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3371', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3372', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3373', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3374', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3375', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3376', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3377', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3378', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3379', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3380', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3381', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3382', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3383', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3384', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3385', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3386', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3387', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3388', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3389', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3390', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3391', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3392', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3393', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3394', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3395', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3396', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3397', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3398', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3399', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '3600', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '4700', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.23', '4800', 'manuelenchon@hotmail.com', 'si', 'Si'),
('172.18.104.56', '12051', 'manuelenchon@hotmail.com', '', 'si'),
('172.18.104.56', '12052', 'manuelenchon@hotmail.com', '', 'si'),
('172.18.104.56', '12061', 'manuelenchon@hotmail.com', '', 'si'),
('172.18.104.56', '12062', 'manuelenchon@hotmail.com', '', 'si'),
('172.18.104.56', '12063', 'manuelenchon@hotmail.com', '', 'si'),
('172.18.104.56', '12200', 'manuelenchon@hotmail.com', '', 'si'),
('172.18.104.56', '12950', 'manuelenchon@hotmail.com', '', 'si'),
('172.18.104.56', '1300', 'manuelenchon@hotmail.com', '', 'si'),
('172.18.104.56', '171', 'manuelenchon@hotmail.com', '', 'si'),
('172.18.104.56', '1719', 'manuelenchon@hotmail.com', '', 'si'),
('172.18.104.56', '1720', 'manuelenchon@hotmail.com', '', 'si'),
('172.18.104.56', '29100', 'manuelenchon@hotmail.com', '', 'si'),
('172.18.104.56', '29259', 'manuelenchon@hotmail.com', '', 'si'),
('172.18.104.56', '4060', 'manuelenchon@hotmail.com', '', 'si'),
('172.18.104.56', '4061', 'manuelenchon@hotmail.com', '', 'si'),
('172.18.104.56', '4711', 'manuelenchon@hotmail.com', '', 'si'),
('172.18.104.56', '5060', 'manuelenchon@hotmail.com', '', 'si'),
('172.18.104.56', '7000', 'manuelenchon@hotmail.com', '', 'si'),
('172.18.104.56', '7001', 'manuelenchon@hotmail.com', '', 'si'),
('172.18.104.56', '7024', 'manuelenchon@hotmail.com', '', 'si'),
('172.18.104.56', '7100', 'manuelenchon@hotmail.com', '', 'si'),
('172.18.104.56', '9000', 'manuelenchon@hotmail.com', '', 'si');

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
('127.0.0.1', 'local', 'Servidor', ' ', 'Conectado', 4, '1'),
('172.18.104.23', 'SAP DESARROLLO', 'Servidor', '', 'Conectado', 4, '1'),
('172.18.104.56', 'Servicio de Telefonia', 'Servidor', '1', 'Desconectado', 4, '1');

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
('172.18.104.23', '3320', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3321', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3322', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3323', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3324', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3325', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3326', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3327', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3328', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3329', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3330', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3331', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3332', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3333', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3334', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3335', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3336', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3337', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3338', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3339', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3340', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3341', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3342', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3343', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3344', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3345', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3346', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3347', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3348', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3349', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3350', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3351', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3352', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3353', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3354', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3355', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3356', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3357', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3358', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3359', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3360', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3361', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3362', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3363', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3364', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3365', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3366', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3367', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3368', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3369', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3370', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3371', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3372', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3373', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3374', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3375', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3376', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3377', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3378', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3379', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3380', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3381', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3382', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3383', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3384', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3385', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3386', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3387', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3388', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3389', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3390', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3391', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3392', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3393', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3394', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3395', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3396', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3397', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3398', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3399', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '3600', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '4700', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.23', '4800', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.56', '12051', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.56', '12052', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.56', '12061', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.56', '12062', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.56', '12063', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.56', '12200', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.56', '12950', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.56', '1300', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.56', '171', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.56', '1719', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.56', '1720', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.56', '29100', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.56', '29259', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.56', '4060', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.56', '4061', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.56', '4711', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.56', '5060', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.56', '7000', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.56', '7001', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.56', '7024', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.56', '7100', 'error', 'topCenter', 10000, 'SI', 'falla'),
('172.18.104.56', '9000', 'error', 'topCenter', 10000, 'SI', 'falla');

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
('172.18.104.23', '', 'rock', 0, '0', 0, '0', 'falla'),
('172.18.104.23', '3320', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3321', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3322', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3323', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3324', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3325', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3326', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3327', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3328', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3329', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3330', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3331', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3332', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3333', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3334', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3335', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3336', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3337', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3338', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3339', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3340', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3341', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3342', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3343', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3344', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3345', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3346', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3347', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3348', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3349', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3350', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3351', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3352', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3353', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3354', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3355', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3356', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3357', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3358', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3359', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3360', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3361', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3362', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3363', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3364', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3365', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3366', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3367', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3368', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3369', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3370', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3371', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3372', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3373', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3374', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3375', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3376', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3377', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3378', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3379', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3380', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3381', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3382', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3383', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3384', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3385', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3386', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3387', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3388', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3389', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3390', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3391', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3392', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3393', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3394', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3395', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3396', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3397', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3398', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3399', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '3600', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '4700', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.23', '4800', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.56', '', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.56', '12051', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.56', '12052', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.56', '12061', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.56', '12062', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.56', '12063', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.56', '12200', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.56', '12950', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.56', '1300', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.56', '171', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.56', '1719', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.56', '1720', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.56', '29100', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.56', '29259', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.56', '4060', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.56', '4061', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.56', '4711', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.56', '5060', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.56', '7000', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.56', '7001', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.56', '7024', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.56', '7100', 'rock', 0, '0', 0, '0', 'si'),
('172.18.104.56', '9000', 'rock', 0, '0', 0, '0', 'si');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sonidopredeterminados`
--

CREATE TABLE IF NOT EXISTS `sonidopredeterminados` (
  `codigosonido` int(11) NOT NULL AUTO_INCREMENT,
  `Sonido` varchar(50) NOT NULL,
  PRIMARY KEY (`codigosonido`),
  KEY `Sonido` (`Sonido`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `sonidopredeterminados`
--

INSERT INTO `sonidopredeterminados` (`codigosonido`, `Sonido`) VALUES
(3, 'fail'),
(4, 'rock');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoaplicacion`
--

CREATE TABLE IF NOT EXISTS `tipoaplicacion` (
  `codigotipo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  PRIMARY KEY (`codigotipo`),
  KEY `tipo` (`tipo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tipoaplicacion`
--

INSERT INTO `tipoaplicacion` (`codigotipo`, `tipo`) VALUES
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `tipodispositivo`
--

INSERT INTO `tipodispositivo` (`codigotipo`, `tipo`) VALUES
(2, 'avion'),
(1, 'carro'),
(3, 'Servidor');

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
  ADD CONSTRAINT `controldeerrores_ibfk_1` FOREIGN KEY (`puerto`) REFERENCES `aplicaciones` (`puerto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `controldeerrores_ibfk_2` FOREIGN KEY (`ip`) REFERENCES `aplicaciones` (`ip`) ON DELETE CASCADE ON UPDATE CASCADE;

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
