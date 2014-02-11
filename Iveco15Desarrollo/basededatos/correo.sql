-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 25-10-2012 a las 00:17:04
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

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `correo`
--
ALTER TABLE `correo`
  ADD CONSTRAINT `correo_ibfk_3` FOREIGN KEY (`correo`) REFERENCES `usuario` (`correo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `correo_ibfk_4` FOREIGN KEY (`ip`) REFERENCES `dispositivos` (`ip`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
