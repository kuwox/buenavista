-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 06-07-2016 a las 11:18:49
-- Versión del servidor: 5.5.49-0+deb8u1
-- Versión de PHP: 5.6.20-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `buenavista`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `identification` varchar(13) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `package` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  `cell_phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `mac_address` varchar(255) DEFAULT NULL,
  `observation` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`id`, `name`, `lastname`, `identification`, `email`, `package`, `price`, `device`, `cell_phone`, `address`, `mac_address`, `observation`, `created`, `modified`, `user_id`) VALUES
(1, 'ALEXIS TIMAURE', '', '11268414', 'aletimaure@hotmail.com', '512MB', '350', 'TPLINK 7200ND', '04245838205', 'URB. LA CARUCIEÃ‘A, SECTOR 3, AV. 2 ENTRE 19 Y 21, CASA #34', 'E8:DE:27:0E:91:14', '', '2015-12-17 19:06:50', '2016-01-15 14:02:38', NULL),
(2, 'ESTHER OROPEZA', '', '', '', '1MB', '400', 'TPLINK 7200ND', '04145516672', '', 'E8:DE:27:10:58:F3', '', '2015-12-20 15:51:13', '2016-01-01 20:01:59', NULL),
(3, 'SAMIR ALEXANDER TREJO', '', '', 'alexamir_santiago2912@hotmail.com', '1 MB', '400', '', '04145504345', '', '', '', '2015-12-20 22:23:18', '2016-01-01 20:03:48', NULL),
(4, 'DAICY CACERES', '', '', '', '', '350', 'TPLINK 7200ND', '04145284450', '', '64:66:B3:1B:4E:1E', '', '2016-01-01 19:55:41', '2016-01-01 19:55:41', NULL),
(5, 'DORALIA DE CASTILLO', '', '', '', '', '350', 'TPLINK 7200ND', '04162553230', '', 'E8:DE:27:0B:E6:E5', '', '2016-01-01 19:56:16', '2016-01-01 19:56:29', NULL),
(7, 'EGLITZA CHIRINOS', '', '', '', '', '400', 'TPLINK 7200ND', '04165570013', '', '90:F6:52:0C:E7:89', '', '2016-01-01 19:58:40', '2016-01-01 19:58:40', NULL),
(8, 'ELOISA DE CORDERO', '', '', '', '512MB', '350', '', '04161529063', '', 'F8:1A:67:26:0C:5E', '', '2016-01-01 19:59:34', '2016-01-01 19:59:34', NULL),
(9, 'ELVIS GÃ“MEZ', '', '', '', '1MB', '400', 'TARJETA WIFI 54MBPS', '04262077127', '', '', '', '2016-01-01 20:00:20', '2016-01-01 20:00:20', NULL),
(11, 'FERGUNSON MORENO', '', '', '', '256KB', '400', 'CABLE UTP', '04262509120', '', 'E0:69:95:FF:35:39 - 00:0D:56:97:41:8A', 'TIENE DOS CUENTAS CREADAS EN EL SERVIDOR, SE ACORDÃ“ BS 400 DE RENTA POR LAS DOS PC', '2016-01-01 20:03:21', '2016-01-01 20:03:21', NULL),
(12, 'GISELA COLMENAREZ', '', '', '', '512KB', '400', 'TPLINK 7200ND', '04245136676', '', '10:FE:ED:11:2B:BC', '', '2016-01-01 20:04:24', '2016-01-01 20:04:24', NULL),
(13, 'GUSTAVO MARTINEZ', '', '', '', '512KB', '350', 'NANO STATION M2', '04165534774', '', '00:27:22:76:73:27', '', '2016-01-01 20:05:45', '2016-01-01 20:05:45', NULL),
(14, 'GLEIDY RODRIGUEZ', '', '', '', '512KB', '350', 'TPLINK 7200ND', '04246592029', '', 'F4:EC:38:93:32:DD', '', '2016-01-01 20:06:17', '2016-01-01 20:06:17', NULL),
(15, 'GONSALO SAYAGO', '', '', '', '512KB', '350', 'TPLINK 7200ND', '04145245835', '', 'E8:DE:27:0E:99:1C', '', '2016-01-01 20:06:58', '2016-01-01 20:06:58', NULL),
(16, 'IVON MOSQUERA', '', '', '', '512KB', '350', 'TPLINK 7200ND', '04245242051', '', 'F4:EC:38:93:32:FD', '', '2016-01-01 20:07:52', '2016-01-01 20:07:52', NULL),
(17, 'JAIBETH DE OLIVARES', '', '14695684', 'j_a_i_b_e_t_h@outlook.com', '512KB', '400', 'TPLINK 7200ND', '04264357791', 'URB. LA CARUCIEÃ‘A, SECTOR 3, VEREDA 26. CASA 12. FINAL CALLE 6.', 'F8:D1:11:0F:FB:88', '', '2016-01-01 20:08:52', '2016-01-11 18:27:15', NULL),
(18, 'JOSÃ‰ MELENDEZ', '', '', '', '512KB', '350', 'NANO STATION M2', '04245130796', '', '00:27:22:76:6F:22', '', '2016-01-01 20:10:00', '2016-01-01 20:10:00', NULL),
(19, 'JOSÃ‰ VEGAS', '', '', '', '1MB', '400', 'TPLINK 7200ND', '04161213376', '', '10:FE:ED:11:1B:FA', '', '2016-01-01 20:10:51', '2016-01-01 20:10:51', NULL),
(21, 'NESTOR MORALES', '', '', '', '512KB', '350', 'TPLINK 7200ND', '04262593152', '', 'E8:DE:27:0E:CF:64', '', '2016-01-01 20:12:37', '2016-01-01 20:12:37', NULL),
(23, 'WILLIAM RIVERO', '', '', '', '256KB', '400', 'CABLE UTP', '04145086329', '', '00:01:6C:55:04:50', '', '2016-01-01 20:14:08', '2016-01-15 19:35:08', NULL),
(24, 'YANFRI MONTILLA', '', '11611064', 'margoyanfri_33@hotmail.com', '512KB', '350', 'TPLINK USB WIFI', '04266513726', 'URB. LA CARUCIEÃ‘A, SECTOR 3, AV. 2 ENTRE 17 Y 19, CASA 17.', '00:25:86:E8:A3:2E', '', '2016-01-01 20:14:44', '2016-01-16 16:24:21', NULL),
(25, 'YERALDIN ARENAS', '', '', '', '512KB', '350', 'TPLINK 7200ND', '04140716260', '', '90:F6:52:0B:4A:7D', '', '2016-01-01 20:15:17', '2016-01-01 20:15:17', NULL),
(26, 'YUREILY RODRIGUEZ', '', '', '', '512KB', '350', 'TARJETA WIFI 54MBPS', '04265579462', '', '00:06:4F:8F:66:1D', '', '2016-01-01 20:16:13', '2016-01-01 20:16:13', NULL),
(27, 'CESAR ANZOLA', NULL, '19696649', 'luis_cesar11@hotmal.com', '512KB', '400', 'TPLINK 7200ND', '04245197349', 'URB. LA CARUCIEÃ‘A, SECTOR 3, CALLE 17 ENTRE AV. 2 Y AV. 4', '64:70:02:0B:AE:28', '', '2016-01-05 19:52:18', '2016-01-05 19:55:41', NULL),
(28, 'EDGAR ALEXANDER MARQUEZ', NULL, '14591115', 'marquezedgar74@hotmail.com', '384KB', '400', 'TPLINK 7200ND', '04268078263', 'URB. LA CARUCIEÃ‘A, SECTOR 3, VEREDA 28, CASA 39', 'B0:48:7A:8E:22:78', '', '2016-01-11 18:08:47', '2016-01-11 18:15:37', NULL),
(29, 'BELZAY MENDOZA', NULL, '7310977', 'anthonymarchan18@gmail.com', '512KB', '400', 'TPLINK 7200ND', '04245874662', 'URB. LA CARUCIEÃ‘A, SECTOR 3, VEREDA 26, CASA 26.', 'E8:DE:27:9D:E2:4E', '', '2016-01-12 19:09:33', '2016-01-15 18:33:56', NULL),
(30, 'YOLIMAR JIMENEZ', NULL, '', '', '512KB', '500', 'TPLINK 7200ND', '0414', '', '90:F6:52:0B:F2:E2', '', '2016-07-06 09:47:57', '2016-07-06 09:47:57', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i18n`
--

CREATE TABLE IF NOT EXISTS `i18n` (
`id` int(10) NOT NULL,
  `locale` varchar(6) NOT NULL,
  `model` varchar(255) NOT NULL,
  `foreign_key` int(10) NOT NULL,
  `field` varchar(255) NOT NULL,
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invoices`
--

CREATE TABLE IF NOT EXISTS `invoices` (
`id` int(10) unsigned NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `invoice_no` int(11) DEFAULT NULL,
  `invoice_date` datetime DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `amount` decimal(6,2) NOT NULL,
  `pay_method` varchar(25) NOT NULL,
  `pay_reference` varchar(255) DEFAULT NULL,
  `statu_id` varchar(7) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `invoices`
--

INSERT INTO `invoices` (`id`, `customer_id`, `invoice_no`, `invoice_date`, `description`, `amount`, `pay_method`, `pay_reference`, `statu_id`) VALUES
(1, 1, 1, '2015-12-28 00:00:00', 'MENSUALIDAD DEL 15 DICIEMBRE 2015 AL 15 ENERO 2016', 350.00, 'Efectivo', '', 'Pagado'),
(2, 3, 2, '2015-12-28 16:46:00', 'MENSUALIDAD DEL 15 DICIEMBRE 2015 AL 15 ENERO 2016', 400.00, 'Transferencia-DepÃ³sito', '0076657757', 'Pagado'),
(3, 2, 3, '2016-01-01 20:23:00', 'MENSUALIDAD DEL 15 DICIEMBRE 2015 AL 15 ENERO 2016', 400.00, 'Efectivo', '', 'Pagado'),
(4, 16, 4, '2016-01-02 15:07:00', 'MENSUALIDAD DEL 15 DICIEMBRE 2015 AL 15 ENERO 2016 ', 350.00, 'Transferencia-DepÃ³sito', '0025517010004', 'Pagado'),
(5, 17, 5, '2016-01-02 15:22:00', 'MENSUALIDAD DEL 15 DICIEMBRE 2015 AL 15 ENERO 2016 ', 400.00, 'Efectivo', '', 'Pagado'),
(6, 19, 6, '2016-01-03 15:39:00', 'MENSUALIDAD DEL 15 DICIEMBRE 2015 AL 15 ENERO 2016 ', 400.00, 'Efectivo', '', 'Pagado'),
(7, 19, 7, '2016-01-03 18:48:00', 'MENSUALIDAD DEL 15 ENERO 2016 AL 15 DE FEBRERO 2016', 400.00, 'Efectivo', '', 'Pagado'),
(8, 4, 8, '2016-01-03 21:42:00', 'MENSUALIDAD DEL 15 DICIEMBRE 2015 AL 15 ENERO 2016 ', 350.00, 'Efectivo', '', 'Pagado'),
(9, 6, NULL, '2016-01-03 21:52:00', 'MENSUALIDAD DEL 15 DICIEMBRE 2015 AL 15 ENERO 2016 ', 400.00, 'Transferencia-DepÃ³sito', '99913685', 'Pagado'),
(10, 7, NULL, '2016-01-03 21:53:00', 'MENSUALIDAD DEL 15 DICIEMBRE 2015 AL 15 ENERO 2016 ', 400.00, 'Efectivo', '', 'Pagado'),
(11, 8, NULL, '2016-01-03 21:53:00', 'MENSUALIDAD DEL 15 DICIEMBRE 2015 AL 15 ENERO 2016 ', 350.00, 'Transferencia-DepÃ³sito', 'NO RECUERDO LOS DATOS', 'Pagado'),
(12, 9, NULL, '2016-01-03 21:54:00', 'MENSUALIDAD DEL 15 DICIEMBRE 2015 AL 15 ENERO 2016 ', 400.00, 'Transferencia-DepÃ³sito', 'NO RECUERDO LOS DATOS', 'Pagado'),
(13, 10, NULL, '2016-01-03 21:55:00', 'MENSUALIDAD DEL 15 DICIEMBRE 2015 AL 15 ENERO 2016 ', 400.00, 'Efectivo', '', 'Pagado'),
(14, 2, NULL, '2016-01-03 21:55:00', 'MENSUALIDAD DEL 15 DICIEMBRE 2015 AL 15 ENERO 2016 ', 400.00, 'Efectivo', '', 'Pagado'),
(15, 11, NULL, '2016-01-03 21:55:00', 'MENSUALIDAD DEL 15 DICIEMBRE 2015 AL 15 ENERO 2016 ', 400.00, 'Efectivo', '', 'Pagado'),
(16, 12, NULL, '2016-01-03 21:56:00', 'MENSUALIDAD DEL 15 DICIEMBRE 2015 AL 15 ENERO 2016 ', 400.00, 'Transferencia-DepÃ³sito', 'NO RECUERDO LOS DATOS', 'Pagado'),
(17, 13, NULL, '2016-01-03 21:56:00', 'MENSUALIDAD DEL 15 DICIEMBRE 2015 AL 15 ENERO 2016 ', 350.00, 'Efectivo', '', 'Pagado'),
(18, 14, NULL, '2016-01-03 21:57:00', 'MENSUALIDAD DEL 15 DICIEMBRE 2015 AL 15 ENERO 2016 ', 350.00, 'Efectivo', '', 'Pagado'),
(19, 14, NULL, '2016-01-03 21:57:00', 'MENSUALIDAD DEL 15 ENERO 2016 AL 15 FEBRERO 2016', 350.00, 'Efectivo', '', 'Pagado'),
(20, 15, NULL, '2016-01-03 21:58:00', 'MENSUALIDAD DEL 15 DICIEMBRE 2015 AL 15 ENERO 2016 ', 400.00, 'Efectivo', '', 'Pagado'),
(21, 15, NULL, '2016-01-03 21:58:00', 'MENSUALIDAD DEL 15 ENERO 2016 AL 15 FEBRERO 2016', 400.00, 'Efectivo', '', 'Pagado'),
(22, 20, NULL, '2016-01-03 21:59:00', 'MENSUALIDAD DEL 15 DICIEMBRE 2015 AL 15 ENERO 2016 ', 350.00, 'Efectivo', '', 'Pagado'),
(23, 21, NULL, '2016-01-03 21:59:00', 'MENSUALIDAD DEL 15 DICIEMBRE 2015 AL 15 ENERO 2016 ', 350.00, 'Efectivo', '', 'Pagado'),
(24, 21, NULL, '2016-01-03 22:00:00', 'MENSUALIDAD DEL 15 ENERO 2016 AL 15 FEBRERO 2016', 350.00, 'Efectivo', '', 'Pagado'),
(25, 22, NULL, '2016-01-03 22:00:00', 'MENSUALIDAD DEL 15 DICIEMBRE 2015 AL 15 ENERO 2016 ', 350.00, 'Efectivo', '', 'Pagado'),
(26, 23, NULL, '2016-01-03 22:02:00', 'MENSUALIDAD DEL 15 DICIEMBRE 2015 AL 15 ENERO 2016 ', 350.00, 'Efectivo', '', 'Pagado'),
(27, 24, NULL, '2016-01-03 22:03:00', 'MENSUALIDAD DEL 15 DICIEMBRE 2015 AL 15 ENERO 2016 ', 350.00, 'Efectivo', '', 'Pagado'),
(28, 24, NULL, '2016-01-03 22:03:00', 'MENSUALIDAD DEL 15 ENERO 2016 AL 15 FEBRERO 2016', 350.00, 'Efectivo', '', 'Pagado'),
(29, 26, NULL, '2016-01-03 22:04:00', 'MENSUALIDAD DEL 15 DICIEMBRE 2015 AL 15 ENERO 2016 ', 350.00, 'Transferencia-DepÃ³sito', '527160624', 'Pagado'),
(30, 18, NULL, '2016-01-05 17:18:00', 'MENSUALIDAD DEL 15 DICIEMBRE 2015 AL 15 ENERO 2016 ', 350.00, 'Efectivo', '', 'Pagado'),
(31, 7, NULL, '2016-01-10 20:28:00', 'MENSUALIDAD DEL 15 ENERO 2016 AL 15 FEBRERO 2016', 400.00, 'Transferencia-DepÃ³sito', '25589983576', 'Pagado'),
(32, 28, NULL, '2016-01-11 18:08:00', 'MENSUALIDAD DEL 15 ENERO 2016 AL 15 FEBRERO 2016', 400.00, 'Efectivo', '', 'Pagado'),
(33, 17, NULL, '2016-01-11 18:16:00', 'MENSUALIDAD DEL 15 ENERO 2016 AL 15 FEBRERO 2016', 400.00, 'Efectivo', '', 'Pagado'),
(34, 1, NULL, '2016-01-15 11:51:00', 'MENSUALIDAD DEL 15 ENERO 2016 AL 15 FEBRERO 2016', 350.00, 'Efectivo', '', 'Pagado'),
(35, 29, NULL, '2016-01-15 18:32:00', 'MENSUALIDAD DEL 15 ENERO 2016 AL 15 FEBRERO 2016', 400.00, 'Efectivo', '', 'Pagado'),
(36, 23, NULL, '2016-01-15 19:35:00', 'SERVICIO INTERNET 15-ENE-2016 AL 15-FEB-2016', 400.00, 'Efectivo', '', 'Pagado'),
(37, 27, NULL, '2016-01-16 17:38:00', 'SERVICIO DE INTERNET DEL 15-ENE-2016 AL 15-FEB-2016', 400.00, 'Efectivo', '', 'Pagado'),
(38, 11, NULL, '2016-01-18 10:49:00', 'SERVICIO DE INTERNET DEL 15-ENE-2016 AL 15-FEB-2016', 400.00, 'Efectivo', '', 'Pagado'),
(39, 5, NULL, '2016-01-18 17:46:00', 'SERVICIO DE INTERNET 15-ENE-2016 AL 15-FEB-2016', 350.00, 'Transferencia-DepÃ³sito', '92455587', 'Pagado'),
(40, 13, NULL, '2016-01-18 17:47:00', 'SERVICIO DE INTERNET 15-ENE-2016 AL 15-FEB-2016', 350.00, 'Efectivo', '', 'Pagado'),
(41, 4, NULL, '2016-01-19 17:46:00', 'SERVICIO DE INTERNET DEL 15-ENE-2016 AL 15-FEB-2016 ', 350.00, 'Efectivo', '', 'Pagado'),
(42, 26, NULL, '2016-01-20 06:57:00', 'SERVICIO DE INTERNET DEL 15-ENE-2016 AL 15-FEB-2016', 350.00, 'Transferencia-DepÃ³sito', '541686349', 'Pagado'),
(43, 20, NULL, '2016-01-21 19:50:00', 'SERVICIO DE INTERNET DEL 15-ENE-2016 AL 15-FEB-2016', 350.00, 'Efectivo', '', 'Pagado'),
(44, 16, NULL, '2016-01-21 19:50:00', 'SERVICIO DE INTERNET DEL 15-ENE-2016 AL 15-FEB-2016', 350.00, 'Transferencia-DepÃ³sito', '25538953725', 'Pagado'),
(45, 3, NULL, '2016-01-21 22:06:00', 'SERVICIO INTERNET 15-ENE-2016 AL 15-FEB-2016', 400.00, 'Transferencia-DepÃ³sito', '3375978', 'Pagado'),
(46, 12, NULL, '2016-01-21 22:07:00', 'SERVICIO INTERNET 15-ENE-2016 AL 15-FEB-2016', 400.00, 'Transferencia-DepÃ³sito', '3375978', 'Pagado'),
(47, 6, NULL, '2016-01-21 22:08:00', 'SERVICIO INTERNET 15-ENE-2016 AL 15-FEB-2016', 400.00, 'Transferencia-DepÃ³sito', '3375978', 'Pagado'),
(48, 2, NULL, '2016-01-22 22:23:00', 'SERVICIO INTERNET 15-ENE-2016 AL 15-FEB-2016', 400.00, 'Efectivo', '', 'Pagado'),
(49, 22, NULL, '2016-02-01 11:44:00', 'SERVICIO INTERNET 15-ENE-2016 AL 15-FEB-2016', 350.00, 'Efectivo', '', 'Pagado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `username` varchar(128) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `role` varchar(64) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `role`, `created`, `modified`, `status`) VALUES
(1, 'kuwox', 'cf18f46637114332e00a4ceb866b33acaa3acf82', 'juan.spolisino@gmail.com', 'king', '2016-02-10 16:06:56', '2016-02-10 16:06:56', 1),
(2, 'juan', '$2a$10$rupfrk1ZtIdOFHzn8BoeMePhNNa8MuLmzlbjsZPfxq8IOPinZENIe', NULL, 'admin', '2016-07-06 10:15:21', '2016-07-06 10:15:21', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `customers`
--
ALTER TABLE `customers`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `i18n`
--
ALTER TABLE `i18n`
 ADD PRIMARY KEY (`id`), ADD KEY `locale` (`locale`), ADD KEY `model` (`model`), ADD KEY `row_id` (`foreign_key`), ADD KEY `field` (`field`);

--
-- Indices de la tabla `invoices`
--
ALTER TABLE `invoices`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `customers`
--
ALTER TABLE `customers`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `i18n`
--
ALTER TABLE `i18n`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `invoices`
--
ALTER TABLE `invoices`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
