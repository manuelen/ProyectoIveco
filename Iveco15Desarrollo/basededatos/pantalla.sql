-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 25-10-2012 a las 00:17:10
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

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pantalla`
--
ALTER TABLE `pantalla`
  ADD CONSTRAINT `pantalla_ibfk_1` FOREIGN KEY (`ip`) REFERENCES `dispositivos` (`ip`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
