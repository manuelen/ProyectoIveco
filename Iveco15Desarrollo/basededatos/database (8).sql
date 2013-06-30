-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 01-11-2012 a las 06:21:11
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
('12401', 'home 2', '172.18.104.30', 'negosio', '', 'conectado'),
('12402', 'OC4J_BI_Forms 2', '172.18.104.30', 'negosio', '', 'conectado'),
('12501', 'home 3', '172.18.104.30', 'negosio', '', 'conectado'),
('12502', 'OC4J_BI_Forms 3', '172.18.104.30', 'negosio', '', 'conectado'),
('12601', 'home 1 ', '172.18.104.30', 'negosio', '', 'conectado'),
('12602', 'OC4J_BI_Forms 1', '172.18.104.30', 'negosio', '', 'conectado'),
('12950', 'H323_DYN_MIN - TCP', '172.18.104.56', 'negosio', ' ', 'conectado'),
('1300', 'H323-TLS     - TCP', '172.18.104.56', 'negosio', ' ', 'conectado'),
('14011', 'Reports Services 2', '172.18.104.30', 'negosio', '', 'conectado'),
('14021', 'Reports Services 1', '172.18.104.30', 'negosio', '', 'conectado'),
('1433', 'SQL Server (SAP)', '172.18.104.93', 'negosio', '', 'Conectado'),
('1521', 'Oracle Database', '172.18.104.51', 'negosio', '', 'Conectado'),
('1719', 'H225_RAS     - TCP', '172.18.104.56', 'negosio', ' ', 'conectado'),
('1720', ' H225_CS  - TCP', '172.18.104.56', 'negosio', ' ', 'conectado'),
('18100', 'Oracle Enterprise Manager 10g 1', '172.18.104.30', 'negosio', '', 'conectado'),
('18120', 'Oracle Enterprise Manager 10g 2', '172.18.104.30', 'negosio', '', 'conectado'),
('18140', 'Oracle Enterprise Manager 10g 3', '172.18.104.30', 'negosio', '', 'conectado'),
('1950', 'Reports Services 3', '172.18.104.30', 'negosio', '', 'conectado'),
('29100', 'RTP_MIN - TCP', '172.18.104.56', 'negosio', ' ', 'conectado'),
('29259', 'RTP_MAX    - TCP', '172.18.104.56', 'negosio', ' ', 'conectado'),
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
('3261', 'sapdp61', '172.18.104.23', 'negosio', '', 'Conectado'),
('3262', 'sapdp62', '172.18.104.23', 'negosio', '', 'Conectado'),
('3263', 'sapdp63', '172.18.104.23', 'negosio', '', 'Conectado'),
('3264', 'sapdp64', '172.18.104.23', 'negosio', '', 'Conectado'),
('3265', 'sapdp65', '172.18.104.23', 'negosio', '', 'Conectado'),
('3266', 'sapdp66', '172.18.104.23', 'negosio', '', 'Conectado'),
('3267', 'sapdp67', '172.18.104.23', 'negosio', '', 'Conectado'),
('3268', 'sapdp68', '172.18.104.23', 'negosio', '', 'Conectado'),
('3269', 'sapdp69', '172.18.104.23', 'negosio', '', 'Conectado'),
('3270', 'sapdp70', '172.18.104.23', 'negosio', '', 'Conectado'),
('3271', 'sapdp71', '172.18.104.23', 'negosio', '', 'Conectado'),
('3272', 'sapdp72', '172.18.104.23', 'negosio', '', 'Conectado'),
('3273', 'sapdp73', '172.18.104.23', 'negosio', '', 'Conectado'),
('3274', 'sapdp74', '172.18.104.23', 'negosio', '', 'Conectado'),
('3275', 'sapdp75', '172.18.104.23', 'negosio', '', 'Conectado'),
('3276', 'sapdp76', '172.18.104.23', 'negosio', '', 'Conectado'),
('3277', 'sapdp77', '172.18.104.23', 'negosio', '', 'Conectado'),
('3278', 'sapdp78', '172.18.104.23', 'negosio', '', 'Conectado'),
('3279', 'sapdp79', '172.18.104.23', 'negosio', '', 'Conectado'),
('3280', 'sapdp80', '172.18.104.23', 'negosio', '', 'Conectado'),
('3281', 'sapdp81', '172.18.104.23', 'negosio', '', 'Conectado'),
('3282', 'sapdp82', '172.18.104.23', 'negosio', '', 'Conectado'),
('3283', 'sapdp83', '172.18.104.23', 'negosio', '', 'Conectado'),
('3284', 'sapdp84', '172.18.104.23', 'negosio', '', 'Conectado'),
('3285', 'sapdp85', '172.18.104.23', 'negosio', '', 'Conectado'),
('3286', 'sapdp86', '172.18.104.23', 'negosio', '', 'Conectado'),
('3287', 'sapdp87', '172.18.104.23', 'negosio', '', 'Conectado'),
('3288', 'sapdp88', '172.18.104.23', 'negosio', '', 'Conectado'),
('3289', 'sapdp89', '172.18.104.23', 'negosio', '', 'Conectado'),
('3290', 'sapdp90', '172.18.104.23', 'negosio', '', 'Conectado'),
('3291', 'sapdp91', '172.18.104.23', 'negosio', '', 'Conectado'),
('3292', 'sapdp92', '172.18.104.23', 'negosio', '', 'Conectado'),
('3293', 'sapdp93', '172.18.104.23', 'negosio', '', 'Conectado'),
('3294', 'sapdp94', '172.18.104.23', 'negosio', '', 'Conectado'),
('3295', 'sapdp95', '172.18.104.23', 'negosio', '', 'Conectado'),
('3296', 'sapdp96', '172.18.104.23', 'negosio', '', 'Conectado'),
('3297', 'sapdp97', '172.18.104.23', 'negosio', '', 'Conectado'),
('3298', 'sapdp98', '172.18.104.23', 'negosio', '', 'Conectado'),
('3299', 'sapdp99', '172.18.104.23', 'negosio', '', 'Conectado'),
('3300', 'sapgw00', '172.18.104.23', 'negosio', '', 'Conectado'),
('3301', 'sapgw01', '172.18.104.23', 'negosio', '', 'Conectado'),
('3302', 'sapgw02', '172.18.104.23', 'negosio', '', 'Conectado'),
('3303', 'sapgw03', '172.18.104.23', 'negosio', '', 'Conectado'),
('3304', 'sapgw04', '172.18.104.23', 'negosio', '', 'Conectado'),
('3305', 'sapgw05', '172.18.104.23', 'negosio', '', 'Conectado'),
('3306', 'sapgw06', '172.18.104.23', 'negosio', '', 'Conectado'),
('3307', 'sapgw07', '172.18.104.23', 'negosio', '', 'Conectado'),
('3308', 'sapgw08', '172.18.104.23', 'negosio', '', 'Conectado'),
('3309', 'sapgw09', '172.18.104.23', 'negosio', '', 'Conectado'),
('3310', 'sapgw10', '172.18.104.23', 'negosio', '', 'Conectado'),
('3311', 'sapgw11', '172.18.104.23', 'negosio', '', 'Conectado'),
('3312', 'sapgw12', '172.18.104.23', 'negosio', '', 'Conectado'),
('3313', 'sapgw13', '172.18.104.23', 'negosio', '', 'Conectado'),
('3314', 'sapgw14', '172.18.104.23', 'negosio', '', 'Conectado'),
('3315', 'sapgw15', '172.18.104.23', 'negosio', '', 'Conectado'),
('3316', 'sapgw16', '172.18.104.23', 'negosio', '', 'Conectado'),
('3317', 'sapgw17', '172.18.104.23', 'negosio', '', 'Conectado'),
('3318', 'sapgw18', '172.18.104.23', 'negosio', '', 'Conectado'),
('3319', 'sapgw19', '172.18.104.23', 'negosio', '', 'Conectado'),
('3320', 'sapgw20', '172.18.104.23', 'negosio', '', 'Conectado'),
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
('3343', 'SQL Server(SAP)', '172.18.104.93', 'negosio', '', 'Conectado'),
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
('515', 'Sistema de Impresion', '172.18.104.33', 'negosio', '', 'Conectado'),
('5555', 'Sistema CRM', '172.18.104.35', 'negosio', '', 'Conectado'),
('6000', 'Call Center', '172.18.104.44', 'negosio', '', 'Conectado'),
('6001', 'Call Center', '172.18.104.44', 'negosio', '', 'Conectado'),
('6002', 'Call Center', '172.18.104.44', 'negosio', '', 'Conectado'),
('6003', 'OPMN 3', '172.18.104.30', 'negosio', '', 'conectado'),
('6003', 'Call Center', '172.18.104.44', 'negosio', '', 'Conectado'),
('6004', 'Call Center', '172.18.104.44', 'negosio', '', 'Conectado'),
('6005', 'Call Center', '172.18.104.44', 'negosio', '', 'Conectado'),
('6009', 'Call Center', '172.18.104.44', 'negosio', '', 'Conectado'),
('6010', 'Call Center', '172.18.104.44', 'negosio', '', 'Conectado'),
('6014', 'Call Center', '172.18.104.44', 'negosio', '', 'Conectado'),
('6101', 'OPMN 1', '172.18.104.30', 'negosio', '', 'conectado'),
('6200', 'OPMN 2', '172.18.104.30', 'negosio', '', 'conectado'),
('7000', 'ADM   - TCP', '172.18.104.56', 'negosio', ' ', 'conectado'),
('7001', 'ADM2   - TCP', '172.18.104.56', 'negosio', ' ', 'conectado'),
('7024', 'SYNCH  - TCP', '172.18.104.56', 'negosio', ' ', 'conectado'),
('7100', 'FCT    - TCP', '172.18.104.56', 'negosio', ' ', 'conectado'),
('7200', 'Oracle HTTP Server 1', '172.18.104.30', 'negosio', '', 'conectado'),
('7778', 'Oracle HTTP Server 2', '172.18.104.30', 'negosio', '', 'conectado'),
('80', 'Web Cache 4', '172.18.104.30', 'negosio', '', 'conectado'),
('80', 'Intranet', '172.18.104.33', 'negosio', '', 'Conectado'),
('80', 'Sistema Simex', '172.18.104.36', 'negosio', '', 'Conectado'),
('80', 'Sistema Helpdesk', '172.18.104.37', 'negosio', '', 'Conectado'),
('80', 'Internet', '187.0.242.80', 'negosio', '', 'Conectado'),
('8081', 'Sistema MP', '172.18.104.29', 'negosio', '', 'Conectado'),
('8091', 'CS Time', '172.18.104.28', 'negosio', '', 'Conectado'),
('9000', 'Gestor de recursos RM   - TCP', '172.18.104.56', 'negosio', ' ', 'conectado'),
('9400', 'Web Cache 1', '172.18.104.30', 'negosio', '', 'conectado'),
('9401', 'Web Cache 3', '172.18.104.30', 'negosio', '', 'conectado'),
('9402', 'Web Cache 2', '172.18.104.30', 'negosio', '', 'conectado'),
('TCP 30718', 'ROOM Alert Device Manager', '172.18.104.37', 'negosio', '', 'Conectado'),
('TCP 80', 'ROOM Alert', '172.18.104.20', 'negosio', '', 'Conectado'),
('UDP 123', 'ROOM Alert', '172.18.104.37', 'negosio', '', 'Conectado'),
('UDP 30718', 'ROOM Alert Device Manager', '172.18.104.37', 'negosio', '', 'Conectado');

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
('151.92.205.32', 'Correo Electronico', 'Servidor', ' ', 'Conectado', 4, '4000'),
('172.18.104.1', 'Enlaces MPLS', 'Servidor', '', 'Conectado', 4, '4'),
('172.18.104.116', 'hambreeeee', 'Servidor', ' ', 'Conectado', 4, '1'),
('172.18.104.1166', 'Pruebas Servidor', 'Servidor', 'conectado', 'Conectado', 4, '4'),
('172.18.104.20', 'ROOM Alert', 'Servidor', '', 'Conectado', 4, '4'),
('172.18.104.23', 'SAP Desarrollo', 'Servidor', ' ', 'Conectado', 4, '4'),
('172.18.104.28', 'CS Time', 'Servidor', '', 'Conectado', 4, '4'),
('172.18.104.29', 'Sistema MP', 'Servidor', '', 'Conectado', 4, '4'),
('172.18.104.3', 'Router1', 'Servidor', ' ', 'Conectado', 4, '4'),
('172.18.104.30', 'Oracle Applications', 'Servidor', '', 'Conectado', 4, '4'),
('172.18.104.33', 'Intranet', 'Servidor', '', 'Conectado', 4, '4'),
('172.18.104.35', 'Sistema CRM', 'Servidor', '', 'Conectado', 4, '4'),
('172.18.104.36', 'Sistema Simex', 'Servidor', '', 'Conectado', 4, '4'),
('172.18.104.37', 'Sistema Helpdesk', 'Servidor', ' ', 'Conectado', 4, '4'),
('172.18.104.44', 'Call Center', 'Servidor', '', 'Conectado', 4, '4'),
('172.18.104.50', 'SAP Calidad', 'Servidor', ' ', 'Conectado', 4, '4'),
('172.18.104.51', 'ORACLE database', 'Servidor', ' ', 'Conectado', 4, '4'),
('172.18.104.56', 'Servicio de Telefonia', 'Servidor', ' ', 'Conectado', 4, '4'),
('172.18.104.6', 'Swich 1 Server Room', 'Servidor', '', 'Conectado', 4, '4'),
('172.18.104.7', 'Swich 2 Server Room', 'Servidor', '', 'Conectado', 4, '4'),
('172.18.104.93', 'SAP Productivo', 'Servidor', ' ', 'Conectado', 4, '4'),
('172.28.30.50', 'Sistema SRM', 'Servidor', '', 'Conectado', 4, '4'),
('187.0.242.80', 'Internet', 'Servidor', 'Normal', 'Conectado', 4, '4000');

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
