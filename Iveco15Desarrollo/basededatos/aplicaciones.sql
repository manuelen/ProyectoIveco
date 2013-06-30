-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 25-10-2012 a las 00:16:55
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

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aplicaciones`
--
ALTER TABLE `aplicaciones`
  ADD CONSTRAINT `aplicaciones_ibfk_3` FOREIGN KEY (`ip`) REFERENCES `dispositivos` (`ip`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `aplicaciones_ibfk_4` FOREIGN KEY (`tipo`) REFERENCES `tipoaplicacion` (`tipo`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
