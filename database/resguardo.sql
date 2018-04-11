-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-04-2018 a las 18:37:16
-- Versión del servidor: 5.6.20
-- Versión de PHP: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `resguardo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
`id` int(11) NOT NULL,
  `branch` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `account` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `pwd` varchar(35) COLLATE utf8_spanish_ci NOT NULL,
  `update_date` date NOT NULL,
  `update_user` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `accounts`
--

INSERT INTO `accounts` (`id`, `branch`, `account`, `pwd`, `update_date`, `update_user`) VALUES
(1, 'BCN', 'bcalifornia.mexq@gmail.com', 'crac8uFE', '2018-02-21', 'cvalenciano'),
(2, 'CHI', 'chihuahua.mexq@gmail.com', 'drefadR2', '2018-02-21', 'cvalenciano'),
(3, 'AGS', 'jefeoperaciones.mexq@gmail.com', 'wapk@-qz', '2018-02-21', 'cvalenciano'),
(4, 'PUE', 'jcpinales.mexq@gmail.com', 'xZU0FbYo', '2018-02-21', 'cvalenciano'),
(5, 'BCN', 'omunguia.mexq@gmail.com', 'sPj2TQ9N', '2018-02-21', 'cvalenciano'),
(6, 'GTO', 'eortega.mexq@gmail.com', 'CQrdTRiN', '2018-02-21', 'cvalenciano'),
(7, 'GTO', 'guanajuato.mq@gmail.com', '2018-jmC', '2018-02-21', 'cvalenciano'),
(8, 'PUE', 'puebla.mexq@gmail.com', 'i67061vh-', '2018-02-21', 'cvalenciano'),
(9, 'SON', 'sonora.mexq@gmail.com', '3b7p70Nr', '2018-02-21', 'cvalenciano'),
(10, 'JAL', 'jalisco.mexq@gmail.com', 'iiSHIXGb', '2018-02-21', 'cvalenciano'),
(11, 'AGS', 'aguascalientes.mexq@gmail.com', 'zJCUrCKzn', '2018-02-21', 'cvalenciano'),
(12, 'QRO', 'queretaro.mexq@gmail.com', 'wIEeRqEC', '2018-02-21', 'cvalenciano'),
(13, 'CORPO', 'mexqrm@gmail.com', 'M3xq_RM99', '2018-02-21', 'cvalenciano'),
(14, 'MET', 'metro.mexq@gmail.com', 'M3tr0_mq', '2018-02-21', 'cvalenciano'),
(15, 'SLP', 'slp.mexq@gmail.com', '8tanAhan', '2018-02-21', 'cvalenciano'),
(16, 'CORPO', 'mexq.ventas@gmail.com', 'Ph4NAxwy', '2018-02-21', 'cvalenciano'),
(17, 'AGS', 'reclutamientoags.mexq@gmail.com', 'PArurek3', '2018-02-21', 'cvalenciano'),
(18, 'CORPO', 'corporativo.mexq@gmail.com', 'P@ssw0rdCOR', '2018-02-21', 'cvalenciano'),
(19, 'CORPO', 'ljimenez.mexq@gmail.com', 'YAKYes00', '2018-02-21', 'cvalenciano');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `code` varchar(5) NOT NULL DEFAULT '',
  `id_employee` varchar(5) DEFAULT NULL,
  `names` varchar(85) NOT NULL,
  `position` varchar(30) NOT NULL,
  `mail` varchar(35) NOT NULL,
  `branch` varchar(45) NOT NULL,
  `workstation` varchar(45) NOT NULL,
  `init_date` varchar(15) NOT NULL,
  `fin_date` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `history`
--

INSERT INTO `history` (`code`, `id_employee`, `names`, `position`, `mail`, `branch`, `workstation`, `init_date`, `fin_date`) VALUES
('MQ155', '00000', 'Sistemas Mexq', 'Jefe De Sistemas De Informació', 'correo@mexq.com.mx', 'Aguascalientes', 'Sistemas', '2017-12-04', '2017-12-04'),
('MQ165', '00000', 'Jose Guillermo Sanchez Retenaga  Jose Guillermo Sanchez Retenaga ', 'POS', 'correo@mexq.com.mx', 'Jalisco', 'MCI', '2017-02-15', '2017-12-04'),
('MQ144', '00000', 'Alfredo Dominguez  Alfredo Dominguez ', 'POS', 'correo@mexq.com.mx', 'Aguascalientes', 'Externas', '2016-11-08', '2017-12-04'),
('MQ189', '00000', 'Rodrigo Alonso Mora', 'Practicante De Calidad', 'sqe.nissan@mexq.com.mx', 'Aguascalientes', 'Calidad', '2017-12-01', '2017-12-06'),
('MQ88', '00000', 'Alejandro Olmos Alejandro Olmos', 'POS', 'correo@mexq.com.mx', 'Guanajuato', 'Operaciones', '2017-02-08', '2017-12-07'),
('MQ124', '00000', 'Cynthia Anahí Blanco Parada Cynthia Anahí Blanco Parada', 'POS', 'correo@mexq.com.mx', 'Aguascalientes', 'Ventas', '2017-04-08', '2017-12-12'),
('MQ139', '00000', 'Auxiliar de sistemas Auxiliar de sistemas', 'POS', 'correo@mexq.com.mx', 'Aguascalientes', 'Sistemas', '2017-08-28', '2017-12-12'),
('PC126', '0000', 'Rh1 No_lname', 'No_position', 'mail@mexq.com.mx', 'Aguascalientes', 'Recursos Humanos', '2017-12-12', '2017-12-13'),
('MQ126', '00000', 'JesuS (Alberto Leyva Urquijo JesuS (Alberto Leyva Urquijo', 'POS', 'correo@mexq.com.mx', 'Sonora', 'Calidad', '2016-02-27', '2017-12-13'),
('MQ131', '00000', 'Mariel Hermes Mariel Hermes', 'POS', 'correo@mexq.com.mx', 'Aguascalientes', 'Brandstaff', '2016-06-17', '2017-12-13'),
('PC102', '0000', 'AUXILIAR DESARROLLO HUMANO no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2017-12-14'),
('PC45', '0000', 'JESSICA SANCHEZ no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2017-12-26'),
('MQ44', '00000', 'Nah Ye Corzo Nah Ye Corzo', 'POS', 'correo@mexq.com.mx', 'Aguascalientes', 'Administracion del Servicio', '2017-02-13', '2017-12-27'),
('MQ97', '00000', 'Elizabeth Valdez Elizabeth Valdez', 'Pos', 'correo@mexq.com.mx', 'Aguascalientes', 'Sistemas', '2017-12-02', '2017-12-27'),
('PC128', '0000', 'Rh3 No_lname', 'No_position', 'mail@mexq.com.mx', 'Aguascalientes', 'Recursos Humanos', '2017-12-12', '2018-01-03'),
('PC115', '0000', 'PAOLA CERVANTES no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-03'),
('PC116', '0000', 'MAYRA GONZALEZ no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-03'),
('PC50', '0000', 'DAISY CANSIGNO no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-03'),
('PC124', '0000', 'DAISY CANSIGNO no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-03'),
('PC125', '0000', 'NAH YE CORZO no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-03'),
('PC17', '0000', 'BERTHA LUNA no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-03'),
('PC28', '0000', 'TANIA MONTOYA no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-03'),
('PC36', '0000', 'ADRIANA TREJO no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-03'),
('PC66', '0000', 'XOCHITL HIGAREDA no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-03'),
('PC73', '0000', 'LAURA CARDONA no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-03'),
('PC100', '0000', 'CARLOS AVALOS no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-03'),
('PC87', '0000', 'DORA CARRILLO no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-03'),
('PC104', '0000', 'YOLANDA AGUIRRE no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-03'),
('PC111', '0000', 'ISSAC SALAS no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-03'),
('PC112', '0000', 'ADRIAN GOMEZ no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-03'),
('PC114', '0000', 'DENNISE ESTRADA no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-03'),
('PC117', '0000', 'IRIS SALAS no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-03'),
('PC121', '0000', 'ARELI BARCENAS TERAN no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-03'),
('PC122', '0000', 'LESLIE KARINA VILLA MACIAS no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-03'),
('PC123', '0000', 'IVONNE MALDONADO no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-03'),
('MQ215', '00256', 'Lluvia Del Rosario Aguirre Rodriguez', 'Gerente De Unidad De Negocio', 'llaguirre@mexq.com.mx', 'Ags', 'Aguascalientes', '2017-12-05', '2018-01-05'),
('PC127', '0000', 'Rh2 No_lname', 'No_position', 'mail@mexq.com.mx', 'Aguascalientes', 'Recursos Humanos', '2017-12-12', '2018-01-08'),
('MQ119', '00000', 'Rocha Lopez Jorge Angel Rocha Lopez Jorge Angel', 'POS', 'correo@mexq.com.mx', 'SAN LUIS (POTOSI', 'FAURECIA', '2017-11-22', '2018-01-09'),
('MQ27', '00000', 'Mario Ibarra Mario Ibarra', 'POS', 'correo@mexq.com.mx', '', '', '2014-11-28', '2018-01-11'),
('MQ52', '00000', 'Mario Ibarra Mario Ibarra', 'POS', 'correo@mexq.com.mx', 'Jalisco', 'Operaciones', '2015-11-26', '2018-01-11'),
('MQ133', '00000', 'Mario Ibarra Mario Ibarra', 'POS', 'correo@mexq.com.mx', 'Jalisco', 'ZF', '2016-06-23', '2018-01-11'),
('PC35', '0000', 'SOPHOS FW no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-13'),
('PC35', '03733', 'Ana Dolores Gonzalez Martinez', 'Jefe De Administracion Del Ser', 'agonzalez@mexq.com.mx', 'Ags', 'ADMINISTRACIÓN DEL SERVICIO', '2018-01-13', '2018-01-13'),
('PC43', '0000', 'NORMA DIAZ no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-13'),
('PC107', '0000', 'AUXILIAR RM2 no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-13'),
('PC70', '0000', 'MAYELA MARTINEZ no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-13'),
('PC55', '0000', 'PRACTICANTE MCI  no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-15'),
('PC12', '0000', 'SOCORRO ESPARZA no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-15'),
('PC4', '0000', 'PATRICIA PEREZ no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-15'),
('PC108', '0000', 'AUXILIAR NOMINAS 5 no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-15'),
('PC93', '0000', 'AUXILIAR NOMINAS 4 no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-15'),
('PC75', '0000', 'ROCIO GARCIA no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-15'),
('PC92', '0000', 'AUXILIAR NOMINAS 2 no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-15'),
('PC91', '0000', 'AUXILIAR NOMINAS 1 no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-15'),
('PC10', '0000', 'ISABEL TORRES no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-16'),
('MQ134', '00000', 'MaciaS (MaciaS (Lucia Guadalupe MaciaS (MaciaS (Lucia Guadalupe', 'POS', 'correo@mexq.com.mx', 'Aguascalientes', 'JATCO MEXICO', '2017-10-13', '2018-01-16'),
('MQ125', '00000', 'Gerardo Cano Garcia Gerardo Cano Garcia', 'POS', 'correo@mexq.com.mx', 'Guanajuato', 'CIE', '2016-04-24', '2018-01-19'),
('PC85', '0000', 'AUXILIAR COORDINACION no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-19'),
('PC109', '0000', 'ANA KAREN MACIAS no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-19'),
('PC105', '0000', 'AUXILIAR COORDINACION no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-19'),
('PC106', '0000', 'PRACTICANTE AGS no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-19'),
('PC52', '0000', 'JESSICA MASCORRO no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-19'),
('MQ184', '00000', 'Reclutador 11 Reclutador 11', 'Pos', 'preclutamiento@mexq.com.mx', 'Aguascalientes', 'Reclutamiento', '2018-01-19', '2018-01-19'),
('MQ116', '00000', 'Patricia Andrea  Rodriguez Gutierrez', 'Asesora De Ventas', 'p.rodriguez@mexq.com.mx', 'Aguascalientes', 'Ventas', '2018-01-19', '2018-01-19'),
('PC98', '0000', 'KARLA AGUILAR no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-23'),
('PC97', '0000', 'AUXILIAR RM1 no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-23'),
('PC53', '0000', 'MONICA DE LUNA no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-23'),
('MQ187', '00000', 'Reclutador 14 Reclutador 14', 'POS', 'correo@mexq.com.mx', 'Aguascalientes', 'Reclutamiento', '2017-05-23', '2018-01-23'),
('PC1', '0000', 'Auxiliar De Capacitacion 1 No_lname', 'No_position', 'mail@mexq.com.mx', 'Ags', 'Recursos Humanos', '2018-01-15', '2018-01-23'),
('PC8', '0000', 'AUXILIAR DE CAPACITACION 2 no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-23'),
('PC46', '0000', 'JAZMIN VELA no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-23'),
('PC48', '0000', 'STAFF PSICOMETRIAS no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-23'),
('PC51', '0000', 'DANIELA ORTEGA no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-23'),
('PC71', '0000', 'PRACTICANTE DE CAPACITACION 3 no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-23'),
('PC89', '0000', 'PRICILA REAL no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-23'),
('PC34', '0000', 'JAQUELINE MARTINEZ no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-23'),
('PC36', '16438', 'Roldan Garcia Nina Maricela', 'Ejecutivo De Cuenta', 'nroldan@mexq.com.mx', 'Ags', 'ADMINISTRACIÓN DEL SERVICIO', '2018-01-03', '2018-01-23'),
('PC54', '0000', 'EJECUTIVA DE CUENTA 11 no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-23'),
('PC57', '0000', 'AUXLIAR DE FACTURACION 1 no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-23'),
('PC58', '0000', 'AUXLIAR DE FACTURACION 2 no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-23'),
('PC59', '0000', 'NINA ROLDAN no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-23'),
('PC77', '0000', 'AUXILIAR DE TRANSPORTE no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-23'),
('PC65', '0000', 'ERIKA CERVANTES no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-24'),
('PC67', '0000', 'CECI DE LIRA no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-24'),
('PC69', '0000', 'EJECUTIVA DE CUENTA 8 no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-24'),
('MQ137', '00000', 'Ana Georgina Hernandez Ana Georgina Hernandez', 'POS', 'correo@mexq.com.mx', 'Jalisco', 'Reclutamiento', '2016-06-30', '2018-01-24'),
('PC72', '0000', 'EJECUTIVA DE CUENTA 2 no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-24'),
('MQ42', '00000', 'Controller (BAJA FALLA DD) Controller (BAJA FALLA DD)', 'POS', 'correo@mexq.com.mx', 'Aguascalientes', 'Jatco 2', '2015-09-12', '2018-01-24'),
('MQ61', '00000', 'Lucy Macias ((baja) Lucy Macias ((baja)', 'Pos', 'correo@mexq.com.mx', 'Aguascalientes', 'Nissan', '2018-01-24', '2018-01-24'),
('MQ91', '00000', 'Sara Montelongo (Baja por robo) Sara Montelongo (Baja por robo)', 'POS', 'correo@mexq.com.mx', 'Aguascalientes', 'Calidad', '2016-02-10', '2018-01-24'),
('MQ104', '00000', 'Azul Gonzalez Navarro (Baja) Azul Gonzalez Navarro (Baja)', 'POS', 'correo@mexq.com.mx', 'Jalisco', 'ZF', '2016-03-30', '2018-01-24'),
('MQ92', '00000', 'Jose Elio Martinez Jose Elio Martinez', 'POS', 'correo@mexq.com.mx', 'Aguascalientes', 'Nissan Carrocerias', '2015-11-10', '2018-01-24'),
('MQ81', '00000', 'Lupita Jimenez Lupita Jimenez', 'POS', 'correo@mexq.com.mx', 'Aguascalientes', 'Administracion del Servicio', '2017-08-17', '2018-01-24'),
('MQ150', '00000', 'Lupita Jimenez Lupita Jimenez', 'POS', 'correo@mexq.com.mx', 'Aguascalientes', 'Gerencia', '2016-08-29', '2018-01-24'),
('MQ152', '00000', 'Evert Gibran Gonzalez Castañeda Evert Gibran Gonzalez Castañeda', 'POS', 'correo@mexq.com.mx', 'Guanajuato', 'Ryobi', '2016-10-07', '2018-01-24'),
('MQ154', '00000', 'Griselda Meza Griselda Meza', 'POS', 'correo@mexq.com.mx', 'Aguascalientes', 'Ventas', '2016-10-18', '2018-01-24'),
('PC9', '0000', 'PRACTICANTE CALIDAD no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-25'),
('PC31', '0000', 'DIANA ACOSTA no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-25'),
('PC49', '0000', 'AUXILIAR DE RECLUTAMIENTO 6 no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-25'),
('PC56', '0000', 'AUXILIAR DE RECLUTAMIENTO 1 no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-25'),
('PC74', '0000', 'AUXILIAR DE RECLUTAMIENTO 4 no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-25'),
('PC80', '0000', 'EJECUTIVA DE CUENTA 21 no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-25'),
('PC84', '0000', 'EJECUTIVA DE CUENTA 5 no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-25'),
('PC87', '20032', 'Valencia Fernandez Lorena Nayeli', 'Ejecutivo De Cuenta', 'l.valencia@mexq.com.mx', 'Ags', 'ADMINISTRACIÓN DEL SERVICIO', '2018-01-03', '2018-01-25'),
('PC88', '0000', 'VERONICA GARCIA no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-25'),
('PC103', '0000', 'AUXILIAR DE RECLUTAMIENTO 2 no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-25'),
('PC113', '0000', 'AUXILIAR DE RECLUTAMIENTO 5 no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-25'),
('PC119', '0000', 'AUXILIAR DE RECLUTAMIENTO 8 no_lname', 'no_position', 'mail@mexq.com.mx', '', 'Aguascalientes', '00-00-0000', '2018-01-25'),
('PC129', '0000', 'Rh4 No_lname', 'No_position', 'mail@mexq.com.mx', 'Aguascalientes', 'Recursos Humanos', '2018-01-25', '2018-01-25'),
('PC129', '00198', 'Sandra Lopez Macias', 'Jefe De Recursos Financieros C', 'slopez@mexq.com.mx', 'Ags', 'Recursos Financieros', '2018-01-25', '2018-01-25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maintenance`
--

CREATE TABLE IF NOT EXISTS `maintenance` (
`id` int(5) NOT NULL,
  `computer_code` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `employee_code` int(5) NOT NULL,
  `maintenance_date` date NOT NULL,
  `maintenance_apply` date NOT NULL,
  `comments` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `status` int(11) NOT NULL,
  `user_update` varchar(35) COLLATE utf8_spanish_ci NOT NULL,
  `date_update` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `maintenance`
--

INSERT INTO `maintenance` (`id`, `computer_code`, `employee_code`, `maintenance_date`, `maintenance_apply`, `comments`, `status`, `user_update`, `date_update`) VALUES
(1, 'PC131', 8444, '2018-03-03', '2018-03-03', 'cvalenciano@mexq.com.mx', 1, 'César Valenciano', '2018-02-27 21:34:45'),
(2, 'PC127', 171, '2018-05-05', '2018-05-05', 'administrador@mexq.com.mx', 1, 'César Valenciano', '2018-02-27 22:00:04'),
(3, 'PC131', 8444, '2018-05-05', '2018-05-05', 'cvalenciano@mexq.com.mx', 1, 'César Valenciano', '2018-02-27 22:00:04'),
(4, 'PC127', 171, '2018-04-05', '2018-04-05', 'administrador@mexq.com.mx', 1, 'César Valenciano', '2018-02-27 22:03:00'),
(5, 'PC131', 8444, '2018-04-05', '2018-04-05', 'cvalenciano@mexq.com.mx', 1, 'César Valenciano', '2018-02-27 22:03:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registry`
--

CREATE TABLE IF NOT EXISTS `registry` (
`id` int(5) NOT NULL,
  `code` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_employee` varchar(5) COLLATE utf8_spanish_ci NOT NULL DEFAULT '0000',
  `employee_name` varchar(65) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'no_name',
  `position` varchar(55) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'no_position',
  `branch` varchar(35) COLLATE utf8_spanish_ci DEFAULT NULL,
  `workstation` varchar(35) COLLATE utf8_spanish_ci DEFAULT NULL,
  `mail` varchar(35) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'mail@mexq.com.mx',
  `phone` varchar(25) COLLATE utf8_spanish_ci NOT NULL DEFAULT '55555',
  `date` varchar(15) COLLATE utf8_spanish_ci NOT NULL DEFAULT '00-00-0000',
  `serial` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `product` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `brand` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `model` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `type` varchar(5) COLLATE utf8_spanish_ci DEFAULT NULL,
  `invoicenbr` varchar(35) COLLATE utf8_spanish_ci DEFAULT NULL,
  `invoicedate` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `status` varchar(1) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'A',
  `comment` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  `date_update` datetime NOT NULL,
  `user_update` varchar(25) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=384 ;

--
-- Volcado de datos para la tabla `registry`
--

INSERT INTO `registry` (`id`, `code`, `id_employee`, `employee_name`, `position`, `branch`, `workstation`, `mail`, `phone`, `date`, `serial`, `product`, `brand`, `model`, `type`, `invoicenbr`, `invoicedate`, `status`, `comment`, `active`, `date_update`, `user_update`) VALUES
(1, 'MQ1', '00497', 'Edson Christian Ortega Perez', 'Gerente De Unidad De Negocio', 'GTO', 'Hella', 'eortega@mexq.com.mx', '666666', '2018-01-11', '5CG319299M', 'E1Y49LT#ABM', 'HP', '240', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'En archivo muerto', 1, '0000-00-00 00:00:00', ''),
(2, 'MQ2', '19757', 'Guillermo Alejandro Olmos Rodriguez', 'Supervisor De Operaciones', 'GTO', 'Yorozu', 'aolmos@mexq.com.mx', '55655', '2018-02-08', '5CG3192FSG', 'E1Y49LT#ABM', 'HP', '240', 'MQ', '298419', '2014-02-06', 'A', 'ENTREGADA NOTEBOOK HP 240/WINDOWS 8SL 64x/INTEL CELERON 1.80 GHz/RAM 4/320 GB HDD/MAC', 1, '0000-00-00 00:00:00', ''),
(3, 'MQ3', '00025', 'Lluvia Del Rosario Aguirre Rodriguez', 'Gerente de Unidad de Negocio', 'AGS', 'Operaciones', 'llaguirre@mexq.com.mx', '555555', '2017-11-25', '5CG34823X8', 'E1Y70LT#ABM', 'HP', '245', 'MQ', '302114', '2014-04-11', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(4, 'MQ4', '02109', 'Francisco Olivas Muñoz', 'Jefe de operaciones', 'PUE', 'Operaciones', 'folivas@mexq.com.mx', '555555', '2014-04-16', '5CG34825F1', 'E1Y70LT', 'HP', '245 G1', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(5, 'MQ5', '02109', 'Francisco Olivas Muñoz', 'Jefe de operaciones', 'PUE', 'Operaciones', 'folivas@mexq.com.mx', '555555', '2014-04-16', '5CG348258F', 'E1Y70LT', 'HP', '245 G1', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(6, 'MQ6', '02109', 'Francisco Olivas Muñoz', 'Jefe de operaciones', 'PUE', 'Operaciones', 'folivas@mexq.com.mx', '555555', '2014-04-16', '5CG348258W', 'E1Y70LT', 'HP', '245 G1', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(7, 'MQ7', '02109', 'Francisco Olivas Muñoz', 'Jefe de operaciones', 'PUE', 'Operaciones', 'folivas@mexq.com.mx', '555555', '2014-04-16', '5CG348250Y', 'E1Y70LT', 'HP', '245 G1', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(8, 'MQ8', '02109', 'Francisco Olivas Muñoz', 'Jefe de operaciones', 'PUE', 'Operaciones', 'folivas@mexq.com.mx', '555555', '2014-04-16', '5CG34820NM', 'E1Y70LT', 'HP', '245 G1', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(9, 'MQ9', '02109', 'Francisco Olivas Muñoz', 'Jefe de operaciones', 'PUE', 'Operaciones', 'folivas@mexq.com.mx', '555555', '2014-04-16', '5CG3481Y8X', 'E1Y70LT', 'HP', '245 G1', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(10, 'MQ10', '00000', ' ', 'POS', '', 'Sistemas', 'correo@mexq.com.mx', '555555', '1900-01-00', 'CND53400TG', 'J2N31LA#ABM', 'HP', '15-G213LA', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(11, 'MQ11', '00000', ' ', 'POS', 'CHI', '', 'correo@mexq.com.mx', '555555', '2014-06-11', 'CB27143148', 'CB03103079', 'LENOVO', 'G400', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(12, 'MQ12', '16883', 'Claudia Angelica Sanchez Marquez', 'Ejecutivo De Cuenta', 'CORPORATIVO', 'ADMINISTRACION DEL SERVICIO', 'c.sanchez@mexq.com.mx', '555555', '2018-04-03', '5CG3400QSW', '', 'HP', '245 G1', 'MQ', '293005', '2013-11-04', 'A', 'Bajo el resguardo de Administración del servicio\r\ngsanchez@mexq.com.mx\r\nesanchez@mexq.com.mx', 1, '2018-04-03 12:22:48', 'César Valenciano'),
(13, 'MQ13', '00000', ' ', 'POS', 'CHI', '', 'correo@mexq.com.mx', '555555', '2014-06-11', 'NXMB3AL00334209C487600', 'NX.MB3AL.003', 'ACER', '472', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(14, 'MQ14', '15299', 'Oscar Alberto Blanco Urita', 'Lider De Operaciones', 'MET', 'FEDERAL MOGUL NAUCALPAN', 'oblanco@mexq.com.mx', '555555', '2018-02-07', '5CB3523YK9', 'F7V98LT#ABM', 'HP', '245', 'MQ', '305683', '2014-06-24', 'A', 'ENTREGADA - oblanco@mexq.com.mx -  - Reporte de fallas (24/11/2017)  - Pendiente envió a Corporativo, se envío equipo nuevo el día 7/02/2018', 1, '0000-00-00 00:00:00', ''),
(15, 'MQ15', '11929', 'Gerardo Haro', 'Pos', 'MET', 'OPERACIONES', 'correo@mexq.com.mx', '555555', '2018-04-11', '5CB35245XD', 'F7V10LT#ABM', 'HP', '240', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '2018-04-11 16:58:09', 'Valenciano Fonseca Cesar '),
(16, 'MQ16', '00000', 'Auxiliar de Calidad Auxiliar de Calidad', 'POS', 'PUE', '', 'correo@mexq.com.mx', '555555', '2014-08-01', '5CB35249WX', 'F7V10LT#ABM', 'HP', '240', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(17, 'MQ17', '02144', 'Yolanda Aguirre Yolanda Aguirre', 'POS', 'CORPORATIVO', 'Sistemas', 'correo@mexq.com.mx', '555555', '1900-01-00', 'CN2002PD8', '', 'HP', '14-R008LA', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'BAJA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(18, 'MQ18', '06206', 'Jesus Balbuena Valderrama', 'POS', '', '', 'correo@mexq.com.mx', '555555', '2014-09-09', 'CND4221G17', 'F4J41LA#ABM', 'HP', '14', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(19, 'MQ19', '00497', 'Edson Christian Ortega Perez', 'Gerente de Unidad de Negocio', '', '', 'eortega@mexq.com.mx', '555555', '2016-01-21', 'CND5460V35', '', 'HP', '14-G005LA', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(20, 'MQ20', '18114', 'Ana Rosa Díaz Díaz Ana Rosa Díaz Díaz', 'POS', 'AGS', 'Jatco 2', 'correo@mexq.com.mx', '555555', '2017-03-27', 'CND42216RD', 'F4J41LA#ABM', 'HP', '14-r016la', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA - adiaz@mexq.com.mx - mq20@ad - ', 1, '0000-00-00 00:00:00', ''),
(21, 'MQ21', '05641', 'Sergio Barrientos Sergio Barrientos', 'POS', 'AGS', '', 'correo@mexq.com.mx', '555555', '1900-01-00', '', '', '', '', 'MQ', 'INVOICENBR', '1990-01-01', 'A', ' -  -  - ', 1, '0000-00-00 00:00:00', ''),
(22, 'MQ22', '00000', 'Federal Mogul Federal Mogul', 'POS', '', '', 'correo@mexq.com.mx', '555555', '2014-09-19', 'CND42215H1', 'F4J41LA#ABM', 'HP', '14', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(23, 'MQ23', '00174', 'Yolanda Mariel Garcia Martinez', 'POS', 'CORPORATIVO', 'MCI', 'correo@mexq.com.mx', '555555', '2017-05-02', 'CND422175Q', 'F4J41LA#ABM', 'HP', '14-r016la', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA - practicante.mci2@mexq.com.mx - mq23@ad - ', 1, '0000-00-00 00:00:00', ''),
(24, 'MQ24', '06734', 'MICHAEL IVAN AGUILAR GONZALEZ', 'POS', '', '', 'correo@mexq.com.mx', '555555', '2014-10-17', '', '', 'HP', '14', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(25, 'MQ25', '00000', 'Manuel Martinez Manuel Martinez', 'POS', 'CORPORATIVO', 'MCI', 'correo@mexq.com.mx', '555555', '2014-11-05', '', '', 'Toshiba', 'L50B', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'BAJA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(26, 'MQ26', '00497', 'Edson Christian Ortega Perez', 'Gerente de Unidad de Negocio', '', '', 'eortega@mexq.com.mx', '555555', '2014-11-28', 'CND4346XX3', 'J8V74LT#ABM', 'HP', '', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(27, 'MQ27', '01186', 'Ibarra Briones Mario', 'Jos', 'JAL', 'JALISCO', 'correo@mexq.com.mx', '555555', '2018-01-11', 'CND4346JH6', 'J8V74LT#ABM', 'HP', '240G3', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(28, 'MQ28', '01966', 'Edgar Jimenez Edgar Jimenez', 'POS', '', '', 'correo@mexq.com.mx', '555555', '2014-11-28', '5CB4232L8R', 'J2M06LA#ABM', 'HP', '', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(29, 'MQ29', '00000', 'EXTERNAS EXTERNAS', 'POS', 'AGS', 'Externas', 'correo@mexq.com.mx', '555555', '2014-11-28', '5CB4232LL2', 'J2M06LA#ABM', 'HP', '', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(30, 'MQ30', '13154', 'Monica Alejandra Flores Cano', 'Pos', 'CORPORATIVO', 'Ventas', 'correo@mexq.com.mx', '555555', '2018-01-31', 'CND4462RCG', 'J2M68LA#ABM', 'HP', '14-g030la', 'MQ', '316597', '2015-01-12', 'A', 'NOTE BOOK HP 14/CELERON N2830/4GB RAM/500 GB HDD/WIN 8.1 x64', 1, '0000-00-00 00:00:00', ''),
(31, 'MQ31', '00000', 'Auxiliar de Coordinaciones Auxiliar de Coordinaciones', 'POS', 'GTO', '', 'correo@mexq.com.mx', '555555', '2016-04-11', '5CG5527Y83', 'K8P30LA#ABM', 'HP', '14-AFF116LA', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(32, 'MQ32', '00000', 'SISTEMAS SISTEMAS', 'POS', 'CORPORATIVO', 'Sistemas', 'correo@mexq.com.mx', '555555', '2016-09-02', 'NUSGEAL0012112E5127614', '21118971476', 'ACER', 'ASPIRE ONE D270', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'BAJA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(33, 'MQ33', '00000', 'SISTEMAS SISTEMAS', 'POS', 'CORPORATIVO', 'Sistemas', 'correo@mexq.com.mx', '555555', '2016-09-19', 'LUSFT08009118350321601', '11821713816', 'ACER', 'ASPIRE ONE 722', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'BAJA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(34, 'MQ34', '03009', 'Omar Munguia Munguia del Moral', 'POS', '', '', 'correo@mexq.com.mx', '555555', '2015-03-20', 'CND5076V89', 'L9H34LA#ABM', 'HP', '240', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(35, 'MQ35', '16389', 'Cynthia Ivette Rodriguez Sanez', 'POS', 'SON', 'Informacion', 'correo@mexq.com.mx', '555555', '2016-07-02', 'JZ3MMS1', '', 'DELL', 'optiplex 790', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA - crodriguez@mexq.com.mx -  - ', 1, '0000-00-00 00:00:00', ''),
(36, 'MQ36', '17789', 'Jaqueline Azurim Aguilar Avila', 'Auxiliar Administrativo', 'PUE', 'Coordinación', 'auxiliar.puebla02@mexq.com.mx', '555555', '2018-01-30', 'MXL4021721    ', 'E3T91LT#ABM', 'HP', '400 G1', 'MQ', '304038', '2014-05-23', 'A', 'auxiliar.puebla02@mexq.com.mx - mq36@ad - Computadora HP ProDesk 400 G1 - Core i3-4130 a 3.4 GHz - 4GB - 500GB - Windows 8/8.1 Pro', 1, '0000-00-00 00:00:00', ''),
(37, 'MQ37', '00000', 'Sistemas Sistemas', 'Pos', 'CORPORATIVO', 'Sistemas', 'correo@mexq.com.mx', '555555', '2018-02-02', '5CH13138QX                 ', 'LR991LA#ABM         ', 'HP', 'NOTEBOOK HP 3105M', 'MQ', 'INVOICENBR', '1990-01-01', 'I', 'RESGUARDADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(38, 'MQ38', '18100', 'Jose Roberto Fuentes Lemus', 'POS', 'GTO', 'VCST', 'correo@mexq.com.mx', '555555', '2017-03-02', 'LUSFS0D1861430DBC94760', '14304827676', 'ACER', 'D257', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'BAJA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(39, 'MQ39', '10097', 'Maria Trinidad Garcia Villa', 'Lider De Operaciones', 'SON', 'FORD MOTOR HERMOSILLO', 'm.garcia@mexq.com.mx', '6623150206', '2018-02-08', 'JZ3MPS1', '469-0545', 'DELL', 'OPTIPLEX 790', 'MQ', 'N/A', '1990-01-01', 'A', 'Dell OptiPlex 790 - DT - Core i5 2400 3.1 GHz - 4 GB - 500 GB ', 1, '0000-00-00 00:00:00', ''),
(40, 'MQ40', '00497', 'Edson Christian Ortega Perez', 'Gerente de Unidad de Negocio', 'GTO', 'Ryobi', 'eortega@mexq.com.mx', '555555', '2015-09-11', '5CG52037QR', 'N2S08LT#ABM', 'HP', '240 G4', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'BAJA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(41, 'MQ41', '00000', 'Controller Controller', 'POS', 'GTO', '', 'correo@mexq.com.mx', '555555', '2015-09-12', '5CG52030PV', 'N2S08LT#ABM', 'HP', '240', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(42, 'MQ42', '11111', 'Controller Jatco 2', 'Controller', 'AGS', 'Jatco 2', 'controler.jatco2@mexq.com.mx', '555555', '2018-01-24', '5CG5202ZZ4', 'N2S08LT#ABM', 'HP', '240', 'MQ', '328747', '2015-09-12', 'I', 'NOTEBOOK HP 240 G4 - CEL N3050, 4GB, 1TB, 14" LED, DVDSM, WIN 8.1EM 64x', 1, '0000-00-00 00:00:00', ''),
(43, 'MQ43', '21288', 'Jorge Angel Rocha Lopez', 'A Supervisor De Operaciones', 'SLP', 'FAURECIA', 'correo@mexq.com.mx', '555555', '2018-02-08', '5CG520394J', 'N2S08LT#ABM', 'HP', '240 G4', 'MQ', '328747', '2015-09-12', 'I', 'NOTEBOOK HP 240 G4 - CEL N3050, 4GB, 1TB, 14" LED, DVDSM, WIN 8.1EM 64x - BAJA POR GOLPE EN PANTALLA', 1, '0000-00-00 00:00:00', ''),
(44, 'MQ44', '00001', 'Resguardo Sistemas', 'Jefe De Sistemas De Información', 'CORPORATIVO', 'Sistemas', 'N/A', '9128686 107', '2017-12-27', 'UB00921528', 'UB020507ZU', 'LENOVO', 'IDEAPAD S110 ', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'mq44-1@ad - Resguardo Sistemas', 1, '0000-00-00 00:00:00', ''),
(45, 'MQ45', '00000', 'SISTEMAS SISTEMAS', 'POS', 'CORPORATIVO', 'Sistemas', 'correo@mexq.com.mx', '555555', '2017-03-02', '5CB302032G', 'C9J89LA#ABM', 'HP', '655', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'BAJA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(46, 'MQ46', '00000', 'SISTEMAS SISTEMAS', 'POS', 'CORPORATIVO', 'Sistemas', 'correo@mexq.com.mx', '555555', '2017-03-02', '5CB205741H', 'A2V22LA#ABM', 'HP', '435', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'BAJA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(47, 'MQ47', '12400', 'Omar Mendoza Ruiz', 'Jefe De Operaciones', 'Bcn', 'BCN', 'tijuanabcn@mexq.com.mx', '9128686', '2018-02-08', 'LKAKAZ5', '880894U', 'LENOVO', 'M55 8808-94U', 'MQ', 'N/A', '1990-01-01', 'A', 'Lenovo ThinkCentre M55 8808-94U Desktop Computer Intel Core 2 Duo (E6300) 1.86GHz 2GB DDR2 250GB HDD', 1, '0000-00-00 00:00:00', ''),
(48, 'MQ48', '12569', 'Esteban Aurelio Cortes Pinales', 'Lider De Operaciones', 'MET', 'FORD CUAUTITLAN', 'epinales@mexq.com.mx', '5550681588', '2018-02-12', 'MXL4281FSP', 'F4J88LT#ABM', 'HP', '200 G1 MT', 'PC', '310165', '2014-09-19', 'A', 'DESKTOP HP 200mt/INTEL CELERON J1750 @ 2.41 GHZ/4 GB RAM/500 GB HDD/W8.1PRO x64\r\nUsuarios: \r\nMendez Catarino Maria Isabel - 19994\r\nimendez@mexq.com.mx\r\nBermudez Romero Leslie - 22063\r\nl.romero@mexq.com.mx', 1, '0000-00-00 00:00:00', ''),
(49, 'MQ49', '03580', 'Miguel Hernandez Flores', 'Supervisor De Operaciones', 'JAL', 'SKFSEALING SOLUTIONS MEXICO', 'miguelhernandez@mexq.com.mx', '4493297660', '2018-02-16', '5CG3400QS0', '', 'HP', '245 G1', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'Laptop HP 245 G1 14'''', AMD Dual-Core E1-1500, 4GB, 320GB, Windows 8 64-bit, Negro', 1, '0000-00-00 00:00:00', ''),
(50, 'MQ50', '10766', 'Diana Maria Barragan Sotelo', 'Auxiliar De Informacion', 'SON', 'FORD MOTOR HERMOSILLO', 'dbarragan@mexq.com.mx', '6623 18 33 53', '2018-02-19', '2671VV1', '', 'DELL', 'OPTIPLEX 7010', 'PC', 'N/A', '1990-01-01', 'A', 'Anydesk: 705054956', 1, '0000-00-00 00:00:00', ''),
(51, 'MQ51', '21362', 'Jose Alberto Santana Jose Alberto Santana', 'POS', 'AGS', 'Nissan Ensamble', 'correo@mexq.com.mx', '555555', '2017-10-23', '5CG53418QN', 'N2S08LT#ABM', 'HP', '240', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA - jsantana@mexq.com.mx - mq51@ad - ', 1, '0000-00-00 00:00:00', ''),
(52, 'MQ52', '01186', 'Ibarra Briones Mario', 'Jos', 'JAL', 'JALISCO', 'correo@mexq.com.mx', '555555', '2018-02-14', 'CND53401X1', 'J2N31LA#ABM', 'HP', '15-G213LA', 'MQ', 'AIG1019251', '2015-11-26', 'A', 'NOTE BOOK HP 15-g213la / 4GBRAM / 1TB HDD / 15.6'''' / AMD A6-5200 QUAD-CORE', 1, '0000-00-00 00:00:00', ''),
(53, 'MQ53', '19087', 'Victor Manuel Samaniego Sierras', 'Auxiliar De Informacion', 'SON', 'SONORA', 'infoson@mexq.com.mx', '6621960872', '2018-02-19', '2G64VV1', '', 'DELL', 'OPTIPLEX 7010', 'PC', 'N/A', '1990-01-01', 'A', 'Anuydesk: 242792672', 1, '0000-00-00 00:00:00', ''),
(54, 'MQ54', '19757', 'Guillermo Alejandro  Olmos Rodriguez', 'Supervisor De Operaciones', 'GTO', 'MAHLE CELAYA', 'aolmos@mexq.com.mx', '555555', '2018-02-19', '3D170493C', '', 'TOSHIBA', 'SATELLITE C845', 'MQ', 'N/A', '1990-01-01', 'A', 'Laptop Toshiba Satellite C845-SP4277KM: Procesador Intel Core i3-3120M (2.5 GHz) 3era Generación, Memoria de 4 GB DDR3, D. D. de 640 GB, Pantalla LED de 14”, Video Intel HD Graphics 4000, DVD±R/RW DL, Red 802.11b/g/n, Windows 8 (64 Bits)', 1, '0000-00-00 00:00:00', ''),
(55, 'MQ55', '00000', ' ', 'POS', '', '', 'correo@mexq.com.mx', '555555', '1900-01-00', '', '', '', '', 'MQ', 'INVOICENBR', '1990-01-01', 'A', ' -  -  - ', 1, '0000-00-00 00:00:00', ''),
(56, 'MQ56', '00000', ' ', 'POS', '', '', 'correo@mexq.com.mx', '555555', '1900-01-00', '', '', '', '', 'MQ', 'INVOICENBR', '1990-01-01', 'A', ' -  -  - ', 1, '0000-00-00 00:00:00', ''),
(57, 'MQ57', '00000', ' ', 'POS', '', '', 'correo@mexq.com.mx', '555555', '1900-01-00', '', '', '', '', 'MQ', 'INVOICENBR', '1990-01-01', 'A', ' -  -  - ', 1, '0000-00-00 00:00:00', ''),
(58, 'MQ58', '00000', ' ', 'POS', '', '', 'correo@mexq.com.mx', '555555', '1900-01-00', '', '', '', '', 'MQ', 'INVOICENBR', '1990-01-01', 'A', ' -  -  - ', 1, '0000-00-00 00:00:00', ''),
(59, 'MQ59', '00000', ' ', 'POS', '', '', 'correo@mexq.com.mx', '555555', '1900-01-00', '', '', '', '', 'MQ', 'INVOICENBR', '1990-01-01', 'A', ' -  -  - ', 1, '0000-00-00 00:00:00', ''),
(60, 'MQ60', '05634', 'Elena Guadalupe Aguirre Rodriguez', 'Coordinador De Informacion', 'CORPORATIVO', 'Informacion', 'eaguirre@mexq.com.mx', '9128686 104', '2018-02-15', 'CND5077LK4', 'L9H34LA#ABM', 'HP', '240 G3', 'MQ', '327287', '2015-06-13', 'I', 'Laptop HP 240 G3 14'''', Intel Celeron N2840 2.16GHz, 2GB, 500GB, Windows 8.1 64-bit, Negro\r\nBAJA POR ROBO EL DIA 14/02/2018', 1, '0000-00-00 00:00:00', ''),
(61, 'MQ61', '00255', 'Luz Alicia Macias Ortiz', 'C Guardian De La Calidad', 'AGS', 'NISSAN ENSAMBLE', 'controler.jatco2@mexq.com.mx', '555555', '2018-01-24', 'CND414331G', 'F4H887LA#ABM', 'HP', '15', 'MQ', 'INVOICENBR', '1990-01-01', 'I', 'controler.jatco2@mexq.com.mx - BAJA POR FALLA DE TARJETA DE VIDEO', 1, '0000-00-00 00:00:00', ''),
(62, 'MQ62', '00000', 'Arturo Gonzalez Arturo Gonzalez', 'POS', 'JAL', 'ZF', 'correo@mexq.com.mx', '555555', '2015-03-20', 'CND5076RDX', 'L9H34LA#ABM', 'HP', '240 G3', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA - jagonzalez@mexq.com.mx -  - ', 1, '0000-00-00 00:00:00', ''),
(63, 'MQ63', '00000', ' ', 'POS', '', '', 'correo@mexq.com.mx', '555555', '1900-01-00', '', '', '', '', 'MQ', 'INVOICENBR', '1990-01-01', 'A', ' -  -  - ', 1, '0000-00-00 00:00:00', ''),
(64, 'MQ64', '22520', 'Kristen Nelly Cardenas Ramirez', 'A Supervisor De Operaciones', 'AGS', 'JATCO MEXICO', 'k.cardenas@mexq.com.mx', '555555', '2018-01-26', 'CND5076S76', 'L9H05LT#ABM', 'HP', '240 G3', 'MQ', '322869', '2015-05-14', 'A', 'mq64-1@ad / LAPTOP HP 240G3 CELERON N2815 2G 500G DVDRW W8.1 14" DVDSM L9H05LT', 1, '0000-00-00 00:00:00', ''),
(65, 'MQ65', '00000', 'Jorge Armando Lozano Vega Jorge Armando Lozano Vega', 'POS', 'AGS', 'Jatco 1', 'correo@mexq.com.mx', '555555', '2016-07-15', 'CND5076F48', 'L9H34LA#ABM', 'HP', '240 G3', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA - residenteaam@mexq.com.mx - pcmq-1@ad / a1b2c3 - ', 1, '0000-00-00 00:00:00', ''),
(66, 'MQ66', '00000', 'Jose Alberto Santana Jose Alberto Santana', 'POS', 'AGS', 'Nissan Motor', 'correo@mexq.com.mx', '555555', '2015-08-14', 'CND5076Z6W', 'L9H34LA#ABM', 'HP', '240 G3', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA - hlicencio@mexq.com.mx - mexqext07@ad / a1b2c3 - ', 1, '0000-00-00 00:00:00', ''),
(67, 'MQ67', '13225', 'Jessica Guadalupe Sanchez Esparza', 'Coordinador De Desarrollo Humano', 'CORPORATIVO', 'Recursos Humanos', 'represanterh@mexq.com.mx', '9128686 112', '2018-01-31', '5CG53125MM', 'N2S08LT#ABM', 'HP', '240 G4', 'MQ', '329790', '2015-10-05', 'A', 'ENTREGADA - represanterh@mexq.com.mx -  - ', 1, '0000-00-00 00:00:00', ''),
(68, 'MQ68', '00165', 'Maria Melissa Padilla Valdez', 'Practicante De Facturacion', 'CORPORATIVO', 'Facturacion', 'correo@mexq.com.mx', '555555', '2018-02-13', 'CND4142T54', 'F4H87LA#ABM', 'HP', '15-G011LA', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(69, 'MQ69', '00000', 'Brenda Janet Delgado Méndez Brenda Janet Delgado Méndez', 'Pos', 'AGS', 'Externas', 'correo@mexq.com.mx', '555555', '2018-02-12', 'NUSGDAL0162470B46A7601', 'UN.SGDAL.016', 'ACER', 'D270-1897', 'MQ', 'INVOICENBR', '1990-01-01', 'I', 'BAJA - practicanteexternas@mexq.com.mx -  - ', 1, '0000-00-00 00:00:00', ''),
(70, 'MQ70', '02109', 'Miguel Angel Romo Hernandez', 'B Supervisor General', 'AGS', 'Nissan Ensamble', 'miguel.romo@mexq.com.mx', '555555', '2016-09-28', 'CND42286KM', 'F4J41LA#A8M', 'HP', '14-R016LA', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(71, 'MQ71', '00000', 'Araceli Chavira Najera Araceli Chavira Najera', 'POS', 'BCN', 'Superior Industries', 'correo@mexq.com.mx', '555555', '2016-11-03', 'HTQQ91LCA00570', '', 'SAMSUNG', '300E4C', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA - achavira@mexq.com.mx -  - ', 1, '0000-00-00 00:00:00', ''),
(72, 'MQ72', '00000', ' ', 'POS', '', '', 'correo@mexq.com.mx', '555555', '1900-01-00', '', '', '', '', 'MQ', 'INVOICENBR', '1990-01-01', 'A', ' -  -  - ', 1, '0000-00-00 00:00:00', ''),
(73, 'MQ73', '00000', ' ', 'POS', '', '', 'correo@mexq.com.mx', '555555', '1900-01-00', '', '', '', '', 'MQ', 'INVOICENBR', '1990-01-01', 'A', ' -  -  - ', 1, '0000-00-00 00:00:00', ''),
(74, 'MQ74', '00000', ' ', 'POS', '', '', 'correo@mexq.com.mx', '555555', '1900-01-00', '', '', '', '', 'MQ', 'INVOICENBR', '1990-01-01', 'A', ' -  -  - ', 1, '0000-00-00 00:00:00', ''),
(75, 'MQ75', '00000', ' ', 'POS', '', '', 'correo@mexq.com.mx', '555555', '1900-01-00', '', '', '', '', 'MQ', 'INVOICENBR', '1990-01-01', 'A', ' -  -  - ', 1, '0000-00-00 00:00:00', ''),
(76, 'MQ76', '00000', ' ', 'POS', '', '', 'correo@mexq.com.mx', '555555', '1900-01-00', '', '', '', '', 'MQ', 'INVOICENBR', '1990-01-01', 'A', ' -  -  - ', 1, '0000-00-00 00:00:00', ''),
(77, 'MQ77', '00000', ' ', 'POS', '', '', 'correo@mexq.com.mx', '555555', '1900-01-00', '', '', '', '', 'MQ', 'INVOICENBR', '1990-01-01', 'A', ' -  -  - ', 1, '0000-00-00 00:00:00', ''),
(78, 'MQ78', '22074', 'Areli Juarez Tapia', 'Controller', 'PUE', 'PUEBLA', 'infopue@mexq.com.mx', '4491033356', '2018-01-31', 'MXL3480V4T', 'E3T61LT#ABM', 'HP', 'Prodesk 600 G1 SFF', 'PC', '298872', '2014-02-17', 'A', 'PC HP DESKTOP/600 SFF/CI3-4330/4GB RAM/500 GB HDD/WINDOWS 7 PROFESIONAL x64\r\n', 1, '0000-00-00 00:00:00', ''),
(79, 'MQ79', '00497', 'Edson Christian Ortega Perez', 'Gerente de Unidad de Negocio', 'GTO', 'Operaciones', 'eortega@mexq.com.mx', '555555', '2017-03-24', 'CND5202PD8', 'F4H88LA#ABM', 'HP', '14r008la', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA - eortega@mexq.com.mx -  - ', 1, '0000-00-00 00:00:00', ''),
(80, 'MQ80', '20920', 'Luis Gerardo Lopez Hernandez', 'Auxiliar Administrativo', 'CORPORATIVO', 'Recursos Humanos', 'coordinacionags@mexq.com.mx', '555555', '2018-01-29', 'CND51845PB', 'L9H68LA#ABM', 'HP', ' 240 G4', 'MQ', '331143', '2015-10-29', 'A', 'coordags01-1@ad', 1, '0000-00-00 00:00:00', ''),
(81, 'MQ81', '01885', 'Maria Guadalupe Jimenez Gutierrez', 'Subdirector Comercial', 'CORPORATIVO', 'GERENCIA CORPORATIVA', 'ljimenez@mexq.com.mx', '9128686 125', '2018-01-24', '5CG3182NXW', 'B8T40LA#ABM', 'HP', '1000-1210LA', 'MQ', '287783', '2013-08-08', 'A', 'ENTREGADA - arodriguez@mexq.com.mx - mq81@ad - Laptop Angelica Rodriguez HP NOTEBOOK 1000-1210LA/2GB RAM/500GB HDD/WIN8SL x64/INTEL CELERON B820 1.70GHz', 1, '0000-00-00 00:00:00', ''),
(82, 'MQ82', '16345', 'Minerva Dozal Hernandez', 'POS', 'BCN', 'Coordinacion', 'correo@mexq.com.mx', '555555', '2017-02-24', '67FMTM1', '', 'DELL', 'LATITUDE E6410', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  - mq82@ad - ', 1, '0000-00-00 00:00:00', ''),
(83, 'MQ83', '20391', 'Rodolfo Medrano Melendez', 'A Supervisor De Operaciones', 'AGS', 'EXEDY DINAX MEXICO', 'nomail@mexq.com.mx', '555555', '2018-02-06', '5CG31929V6', 'E1G49LT#ABM', 'HP', '240  G1', 'MQ', 'N/A', '1990-01-01', 'A', 'Laptop HP 240 G1 14'''', Intel Core i3-2348m 1.60GHz, 6GB, 500GB, Windows 8 64-bit, Negro', 1, '0000-00-00 00:00:00', ''),
(84, 'MQ84', '18579', 'Pamela                              Blancas Rivera Cruz', 'POS', 'AGS', 'Nissan Civac', 'correo@mexq.com.mx', '555555', '2016-08-02', '5CG312860', 'N2S08LT#ABM', 'HP', '240 G4', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(85, 'MQ85', '10257', 'Gabriela Soriano Cano', 'Coordinador Administrativo', 'MET', 'METROPOLITANA BAJIO', 'gsoriano@mexq.com.mx', '555555', '2018-02-09', 'CND4221711', 'F4J41LA#ABM', 'HP', '14-r016la', 'MQ', 'N/A', '1990-01-01', 'A', 'Laptop HP 14-r016la: Procesador Intel Celeron N2815 (hasta 2.13 GHz), Memoria de 4 GB DDR3, D. D. de 500 GB, Pantalla LED de 14", Video Intel HD Graphics, DVD±R/RW DL, Red 802.11b/g/n, Windows 8.1 (64 Bits)', 1, '0000-00-00 00:00:00', ''),
(86, 'MQ86', '02144', 'Yolanda Aguirre Calderon', 'Pos', 'CORPORATIVO', 'SISTEMAS', 'correo@mexq.com.mx', '555555', '2018-02-24', 'CND53401Y1', 'K8N88LA#ABM', 'HP', '15', 'MQ', 'INVOICENBR', '1990-01-01', 'I', 'BAJA -  -  - ', 1, '2018-02-24 11:30:02', 'César Valenciano'),
(87, 'MQ87', '00255', 'Luz Maria Flores Luz Maria Flores', 'POS', 'JAL', 'Calidad', 'correo@mexq.com.mx', '555555', '2015-12-11', 'CND53405ZT', 'K8N88LA#ABM', 'HP', '15-g253la', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(88, 'MQ88', '17483', 'Yamara Gioconda Velazquez Menez', 'Lider De Operaciones', 'GTO', 'HAL ALUMINIUM II', 'yvelazquez@mexq.com.mx', '4492436311', '2017-12-07', '5CB35246XD', '', 'HP', '240 G2', 'MQ', 'N/A', '1990-01-01', 'A', 'bajio-mq@ad', 1, '0000-00-00 00:00:00', ''),
(89, 'MQ89', '22802', 'Luis Rodrigo Alonso Mora', 'Sqe', 'CORPORATIVO', 'CALIDAD', 'sqe.nissan@mexq.com.mx', '555555', '2018-02-20', '5CG3400KZY', '', 'HP', '245 G1', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(90, 'MQ90', '00159', 'Rodrigo Alonso Mora', 'Practicante De Calidad', 'CORPORATIVO', 'CALIDAD', 'sqe.nissan@mexq.com.mx', '555555', '2017-12-06', 'CND534034Y', 'J2N31LA#ABM', 'HP', '15-g253la', 'MQ', 'n/a', '1990-01-01', 'A', 'mq90@ad - NOTE BOOK HP 15-g213la / 4GBRAM / 1TB HDD / 15.6'''' / AMD A6-5200 QUAD-CORE', 1, '0000-00-00 00:00:00', ''),
(91, 'MQ91', '13277', 'Sara Atzel Montelongo X ', 'Ingeniero De Calidad Del Servicio Sqes', 'CORPORATIVO', 'Calidad', 'smontelongo@mexq.com.mx', '555555', '2018-01-24', 'CND53401S3', 'J2N31LA#ABM', 'HP', '15-g253la', 'MQ', 'INVOICENBR', '1990-01-01', 'I', 'BAJA POR ROBO DE EQUIPO EN PLANTA', 1, '0000-00-00 00:00:00', ''),
(92, 'MQ92', '04219', 'Jose Elio Martinez Aguilar', 'B Lider De Operaciones', 'AGS', 'Nissan Carrocerias', 'lvaldez@mexq.com.mx', '555555', '2018-01-24', 'CND42226KM', 'J2N31LA#ABM', 'HP', '14', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'carroceria_mq@ad - Anterior usuario: Luis Valdez', 1, '0000-00-00 00:00:00', ''),
(93, 'MQ93', '00000', 'SISTEMAS SISTEMAS', 'POS', 'CORPORATIVO', 'Sistemas', 'correo@mexq.com.mx', '555555', '2016-05-18', 'SCG5202J0J', 'F4H88LA#ABM', 'HP', '240 G4', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'RESGUARDADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(94, 'MQ94', '00000', 'Concepcion Hernandez Concepcion Hernandez', 'Pos', 'GTO', 'COORDINACION', 'correo@mexq.com.mx', '555555', '2018-02-21', 'CND5077L2T', 'F4H88LA#ABM', 'HP', '240 G4', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA - coordinadora.gto@mexq.com.mx - mqcoordinacion@ad - ', 1, '0000-00-00 00:00:00', ''),
(95, 'MQ95', '00000', 'Sonia Segoviano Sonia Segoviano', 'POS', 'CORPORATIVO', 'RH', 'correo@mexq.com.mx', '555555', '2016-10-12', 'CND5202P18', 'F4H88LA#ABM', 'HP', '14-r008la', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(96, 'MQ96', '16409', 'Marcela Quiroga Martinez', 'Staff De Direccion', 'CORPORATIVO', 'Direccion', 'mquiroga@mexq.com.mx', '9128686 101', '2018-01-31', '8F205915C', 'PSCPJUY01WNB4', 'Toshiba', 'SATELLITE C55-C5222W', 'MQ', 'AIG1065152', '2016-02-12', 'A', 'mq96@ad - NOTEBOOK TOSHIBA SATELLITE C55-C5222W / RAM: 4GB / DD: 500 GB / PROCESADOR: INTEL CORE i5 / SO: WINDOWS 8x64 / 15.6"', 1, '0000-00-00 00:00:00', ''),
(97, 'MQ97', '18242', 'MarÃa Elizabeth Valdez Collazo', 'Staff De Sistemas', 'CORPORATIVO', 'Sistemas', 'staffsistemas@mexq.com.mx', '9128686 107', '2017-12-27', '8F205860C', 'PSCPJUY01WNB4', 'Toshiba', 'SATELLITE C55-C5222W', 'MQ', 'INVOICENBR', '1990-01-01', 'I', 'Baja por garantía ', 1, '0000-00-00 00:00:00', ''),
(98, 'MQ98', '00000', 'Sergio Barrientos Sergio Barrientos', 'Pos', 'AGS', 'EXTERNAS', 'correo@mexq.com.mx', '555555', '2018-04-03', '5CG5473F2S', 'T6E52LT#ABM', 'HP', ' x2 210 DETACHABLE', 'MQ', 'INVOICENBR', '1990-01-01', 'I', 'ENTREGADA - sbarrientos@mexq.com.mx - desktop-ecvbsop@ad - BAJA POR FALLA ELECTRICA', 1, '2018-04-03 10:53:13', 'César Valenciano'),
(99, 'MQ99', '00000', 'Pricila Trujillo Pricila Trujillo', 'POS', 'AGS', 'Vantec', 'correo@mexq.com.mx', '555555', '2015-10-05', '5CG53125W6', 'N2S08LT#ABM', 'HP', '240 G4', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA - ptrujillo@mexq.com.mx -  - ', 1, '0000-00-00 00:00:00', ''),
(100, 'MQ100', '00000', 'Gonzalez Garcia Norma Fabiola Gonzalez Garcia Norma Fab', 'POS', 'AGS', 'Nissan Ensamble', 'correo@mexq.com.mx', '555555', '2017-10-12', 'CND5077PRT', 'L9H34LA#ABM', 'HP', '240 G3', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(101, 'MQ101', '18099', 'Juan Carlos Flores Vazquez', 'A Supervisor De Operaciones', 'AGS', 'BODEGA VANTEC', 'supervisor.vantecindustrial@mexq.co', '555555', '2018-02-17', '5CG34821CR', 'E1Y70LT#ABM', 'HP', '245', 'MQ', '302114', '2014-04-11', 'A', 'Laptop HP 245 G1 - 14" - AMD E1-1500 - 4GB - 320GB - Win 8\r\nDesperfecto en el teclado (Falta teclas Q,X,F6, Bloq Mayus, botn izquierdo Mousepad)', 1, '0000-00-00 00:00:00', ''),
(102, 'MQ102', '00000', 'Residente Apextool Residente Apextool', 'POS', 'QRO', 'Apextool', 'correo@mexq.com.mx', '555555', '2016-03-24', 'CND534031V', 'J2N31LA#ABM', 'HP', '15-g253la', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(103, 'MQ103', '00000', 'Reclutamiento RH Reclutamiento RH', 'POS', 'AGS', 'Reclutamiento', 'correo@mexq.com.mx', '555555', '2016-03-28', '5CB205746H', 'A2V22LA#ABM', 'HP', '435', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(104, 'MQ104', '16946', 'Azul Celeste Gonzalez Navarro', 'Auxiliar De Calidad', 'JAL', 'ZF', 'correo@mexq.com.mx', '555555', '2018-01-24', 'HTQQ91AC800549', 'NP300E4C-A02MX', 'SAMSUNG', ' 300E4C/300E5C/3000E', 'MQ', '273597', '2012-11-16', 'I', 'NOTEBOOK 300E4C/300E5C/3000E7C SAMSUNG WINDOWS 7 HOME BASIC 64x PENTIUM B960 2,2 GHZ RAM 2GB 500GB HDD - BAJA POR TIEMPO DE ACTIVIDAD\r\n', 1, '0000-00-00 00:00:00', ''),
(105, 'MQ105', '00000', 'Yolanda Virginia Aguirre Calderon', 'Jefe De Sistemas De Informacion', 'CORPORATIVO', 'SISTEMAS', 'nomail@mexq.com.mx', '9128686 107', '2018-02-22', 'CND5077GJW', 'L9H34LA#ABM', 'HP', '240 G3', 'MQ', '322869', '2015-05-14', 'A', 'NOTEBOOK HP 240 G3 - CEL N2815, 2GB, 500GB, 14" LED, DVDSM, WIN 8.1EM 64 - Resguardo de equipo, reporta fallas de carga, baeria, cargador dañado, procesador reporte lentitud y fallas de funcionamiento.\r\n', 1, '0000-00-00 00:00:00', ''),
(106, 'MQ106', '00000', 'CarloS (Obed CarloS (Obed', 'POS', 'SLP', '', 'correo@mexq.com.mx', '555555', '2016-08-29', 'CND445HLGQ', 'J2M68LA#ABM', 'HP', '15', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA - supervisor.slp@meq.com.mx -  - ', 1, '0000-00-00 00:00:00', ''),
(107, 'MQ107', '00000', 'José Alfredo Dominguez Quintero José Alfredo Dominguez ', 'POS', 'AGS', 'Exedy', 'correo@mexq.com.mx', '555555', '2016-04-08', 'CND534061J', ' J2N31LA#ABM', 'HP', '15-g213la', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(108, 'MQ108', '00000', 'Lider Yorozu Lider Yorozu', 'POS', 'AGS', 'Yorozu', 'correo@mexq.com.mx', '555555', '2013-02-06', 'UB00917119', '59320794', 'Lenovo', 'IDEAPAD S110', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(109, 'MQ109', '15786', 'Erika Maria Evelyn Saucedo Orduña ', 'Coordinadora Administrativa', 'AGS', 'Aguascalientes', 'nomail@mexq.com.mx', '555555', '2018-01-29', '5CG33535S7', 'C7B44LA#ABM', 'COMPAQ', 'CQ45-910LA', 'MQ', '7080937', '2013-10-02', 'A', 'NOTEBOOK COMPAQ CQ45/WINDOWS 8 SL x64/INTEL CELERON 1000M @ 1.80 GHz/4 GB RAM/500 GB HDD\r\n', 1, '0000-00-00 00:00:00', ''),
(110, 'MQ110', '00000', 'SQE Jalisco SQE Jalisco', 'POS', 'JAL', 'Operaciones', 'correo@mexq.com.mx', '555555', '2016-04-21', '5CG6051vby', 'K8P30LA#ABM', 'HP', '14-aff116la', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA - sqe_jalisco@mexq.com.mx - mexq110@ad - ', 1, '0000-00-00 00:00:00', ''),
(111, 'MQ111', '00000', 'Mallely Angélica De la Rosa Valtierra  Mallely Angélica', 'POS', 'AGS', 'Jatco', 'correo@mexq.com.mx', '555555', '2016-07-05', 'CND5461L10', 'F4J29LA#ABM', 'HP', '14-aff116la', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA - sqejatco@mexq.com.mx -  - ', 1, '0000-00-00 00:00:00', ''),
(112, 'MQ112', '00000', 'Mariana Garcia Elizondo', 'Pos', 'NVL', 'RECURSOS HUMANOS', 'coordinacion.mty@mexq.com.mx', '555555', '2018-02-21', '5CG55242XJ', 'K8P30LA#ABM', 'HP', '14-aff116la', 'MQ', 'C247E69AAB38', '2016-04-11', 'A', 'LAPTOP HP 14-aff116la / RAM:6GB /  DD: 1TB / PROCESADOR: A8-77410 QUAD CORE / WINDOWS 10 / 14"\r\n', 1, '0000-00-00 00:00:00', ''),
(113, 'MQ113', '00000', 'SISTEMAS SISTEMAS', 'POS', 'CORPORATIVO', 'RH', 'correo@mexq.com.mx', '555555', '2016-09-15', '5CG337673P', 'E1ZZ9LT#ABM', 'HP', '240 G1', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'RESGUARDADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(114, 'MQ114', '00000', 'CarloS (Alberto Guerrero CarloS (Alberto Guerrero', 'POS', 'CORPORATIVO', 'Calidad', 'correo@mexq.com.mx', '555555', '2016-10-18', 'CND433609G', 'F4H94LA#ABM', 'HP', '15-r005la', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA - sqe.externas@mexq.com.mx - a_comercial@ad - ', 1, '0000-00-00 00:00:00', ''),
(115, 'MQ115', '00000', 'Natalie Alba Natalie Alba', 'POS', 'CORPORATIVO', 'Ventas', 'correo@mexq.com.mx', '555555', '2016-05-07', 'CND4462RCQ', 'J2M68LA#ABM', 'HP', '14-g030la', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(116, 'MQ116', '02201', 'Patricia Andrea  Rodriguez Gutierrez', 'Asesora De Ventas', 'CORPORATIVO', 'Ventas', 'p.rodriguez@mexq.com.mx', '4491512853', '2018-01-31', 'CND4335ZB3', 'F4H94LA#ABM', 'HP', '15-r005la', 'MQ', '318291', '2015-02-12', 'A', 'Especificaciones\r\n- Sistema operativo Windows 8.1 64\r\n- Procesador Intel® Pentium® N3520 con tarjeta de gráficos Intel HD (2,17 GHz, 2 MB de caché, 4 núcleos)\r\n- Tecnología Intel Turbo Boost\r\n- Memoria SDRAM DDR3L de 4 GB a 1600 MHz (1 x 4 GB)\r\n- Dis', 1, '0000-00-00 00:00:00', ''),
(117, 'MQ117', '00000', 'Marisol Díaz de Leon Marisol Díaz de Leon', 'POS', 'CORPORATIVO', 'Ventas', 'correo@mexq.com.mx', '555555', '2016-09-22', 'CND5461MWR', 'F4J29LA#ABM', 'HP', '14-g005la', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(118, 'MQ118', '00000', 'Luis Hernandez', 'Asistente De Aseguramiento De Calidad', 'CORPORATIVO', 'Calidad', 'aac@mexq.com.mx', '555555', '2017-12-04', 'CND534047B', 'J2N31LA#ABM', 'HP', '15-g213la', 'MQ', 'n/a', '1990-01-01', 'A', 'ENTREGADA - NOTE BOOK HP 15-g213la / 4GBRAM / 1TB HDD / 15.6'''' / AMD A6-5200 QUAD-CORE', 1, '0000-00-00 00:00:00', ''),
(119, 'MQ119', '18286', 'Fatima Cecilia Gomez Bautista', 'A Lider De Operaciones', 'AGS', 'AGUASCALIENTES STEEL COIL CENT', 'supervisor.asc@mexq.com.mx', '555555', '2018-01-09', 'CND4220MWB', 'F4J41LA#ABM', 'HP', '15-g213la', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'mq119@ad - Laptop HP 14-r016la: Procesador Intel Celeron N2815 (hasta 2.13 GHz), Memoria de 4 GB DDR3, D. D. de 500 GB, Pantalla LED de 14", Video Intel HD Graphics, DVD±R/RW DL, Red 802.11b/g/n, Windows 8.1 (64 Bits)', 1, '0000-00-00 00:00:00', ''),
(120, 'MQ120', '00000', 'Goreti AriaS (Hernandez Goreti AriaS (Hernandez', 'POS', 'AGS', 'Unipress', 'correo@mexq.com.mx', '555555', '2017-09-07', 'CNF1390XN5', 'J2N31LA#ABM', 'HP', 'Mini-210', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA - amontanez@mexq.com.mx - mq120@ad - ', 1, '0000-00-00 00:00:00', ''),
(121, 'MQ121', '00000', 'Julio Cesar Melchor Jimenez Julio Cesar Melchor Jimenez', 'POS', 'SON', 'Operaciones', 'correo@mexq.com.mx', '555555', '2016-05-26', '5CG3397FYM', 'E1Y69LT#ABM', 'HP', '245', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(122, 'MQ122', '00000', 'Cristihan Alejandro ReyeS (Rosas Cristihan Alejandro Re', 'POS', 'NVL', 'RH', 'correo@mexq.com.mx', '555555', '2016-05-27', '5CG6051Y2M', 'K8P30LA#ABM', 'HP', '14-aff116la', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA - reclutamiento.mty@mexq.com.mx -  - ', 1, '0000-00-00 00:00:00', ''),
(123, 'MQ123', '00000', 'Uriel Alejandro Yañez Zamora Uriel Alejandro Yañez Zamo', 'POS', 'GTO', 'Halmex', 'correo@mexq.com.mx', '555555', '2017-08-16', '5CG5523ZF7', 'K8P30LA#ABM', 'HP', '14-aff116la', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA - supervisor_hal@mexq.com.mx - mq123@ad - ', 1, '0000-00-00 00:00:00', ''),
(124, 'MQ124', '20391', 'Rodolfo Medrano Melendez', 'A Supervisor De Operaciones', 'AGS', 'EXEDY DINAX MEXICO', 'nomail@mexq.com.mx', '555555', '2018-02-06', 'YC026256C', 'PSC9AM-00QTM2 ', 'Toshiba', 'QTM2', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'Laptop Toshiba Satellite C845D-SP4379KM 14'''', AMD E-300 1.30GHz, 2GB, 320GB, Windows 7 Home Basic 64-bit, Negro', 1, '0000-00-00 00:00:00', ''),
(125, 'MQ125', '19757', 'Guillermo Alejandro Olmos Rodriguez', 'Supervisor De Operaciones', 'GTO', 'MAHLE CELAYA', 'lier.cie@mexq.com.mx', '555555', '2018-01-19', 'CND5460P94', 'F4J29LA#ABM', 'HP', '14-g005la', 'MQ', '3BD63F2B54D1', '2016-04-22', 'A', 'NOTEBOOK HP 14-g005la / RAM:4 GB / DD:500GB / PROCESADOR: AMD QUAD CORE A4-6210 / SO: WINDOWS 8.1 x64 /14" \r\n', 1, '0000-00-00 00:00:00', ''),
(126, 'MQ126', '17644', 'Jesus Alberto Leyva Urquijo', 'Ingeniero De Calidad Del Servicio Sqes', 'SON', 'Calidad', 'sqe.sonora@mexq.com.mx', '555555', '2017-12-13', 'CND53404P6', 'J2N31LA#ABM', 'HP', '15-g213la', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'mq126@ad - NOTE BOOK HP 15-g213la / 4GBRAM / 1TB HDD / 15.6'''' / AMD A6-5200 QUAD-CORE', 1, '0000-00-00 00:00:00', ''),
(127, 'MQ127', '01887', 'Fernando Lujan Salazar', 'Jefe De Aseguramiento De Calidad', 'CORPORATIVO', 'Calidad', 'flujan@mexq.com.mx', '9128686 223', '2018-02-15', 'CND53400MC', 'J2N31LA#ABM', 'HP', '15-g213la', 'MQ', 'N/A', '1990-01-01', 'I', 'BAJA POR ROBO EL DIA 14/02/2018', 1, '0000-00-00 00:00:00', ''),
(128, 'MQ128', '18098', 'Salvador Flores Hernandez', 'B Supervisor De Operaciones', 'AGS', 'JATCO MEXICO', 'supervisorjatco@mexq.com.mx', '4491032146', '2018-02-17', '5CG53124V5', 'N2S08LT#ABM', 'HP', '240 G4', 'MQ', '329790', '2015-10-05', 'A', 'Laptop HP 240 G4 - 14" - Intel Celeron N3050 1.6 GHz - 4GB - 500GB - No DVD - Gráficos Intel HD - Windows 10 Home 64 bits', 1, '0000-00-00 00:00:00', ''),
(129, 'MQ129', '00000', 'Alfredo Bernal Alfredo Bernal', 'POS', 'MOR', 'Operaciones', 'correo@mexq.com.mx', '555555', '2016-06-15', '5CD211557K', 'A7J63LA#ABM', 'HP', 'MINI CQ10-110LA', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(130, 'MQ130', '17457', 'Andrea De Pablo Vinatier', 'Brand Staff', 'CORPORATIVO', 'ESTRATEGIA DE MARCA', 'avinatier@mexq.com.mx', '9128686 218', '2018-02-21', '3CR60103T4', 'N4V13AA#ABM', 'HP', '23r151la', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'AMD Radeon(TM) R2 Graphics Driver for HP - 23-r151la', 1, '0000-00-00 00:00:00', ''),
(131, 'MQ131', '21921', 'Karla Veronica Cervantes Rios', 'Creativa De Marca', 'CORPORATIVO', 'ESTRATEGIA DE MARCA', 'vcervantes@mexq.com.mx', '555555', '2018-02-21', '4C160400GB', 'N4V13AA#ABM', 'HP', '23-Q154LA', 'MQ', '1276E39929DE', '2016-06-15', 'A', 'AMD Radeon(TM) R2 Graphics Driver for HP - 23-r151la', 1, '0000-00-00 00:00:00', ''),
(132, 'MQ132', '08444', 'César Adolfo Valenciano Fonseca', 'Team Leader De Sistemas', 'CORPORATIVO', 'SISTEMAS', 'cvalenciano@mexq.com.mx', '4499110398', '2018-02-21', '8CC6090GQH', 'N4V33AA#ABM', 'HP', '23-Q154LA', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'HP PAVILION ALL-IN-ONE - 23-Q153LA (TOUCH) (ENERGY STAR) - N4V33AA', 1, '0000-00-00 00:00:00', ''),
(133, 'MQ133', '01186', 'Ibarra Briones Mario', 'Jos', 'JAL', 'JALISCO', 'mibarra@mexq.com.mx', '555555', '2018-01-11', 'B3RRD82', '43YW7-A01', 'DELL', 'Inspiron 15 3000s 35', 'MQ', '9011378781FA', '2016-06-22', 'A', 'NOTEBOOK DELL Inspiron 15 3000s 3558 / RAM:4 GB / DD:500GB / PROCESADOR: Intel Core 5-5200U  / SO: WINDOWS 10 Home SL x64 /15.6" \r\n', 1, '0000-00-00 00:00:00', ''),
(134, 'MQ134', '00255', 'Luz Alicia Macias Ortiz', 'C Guardian De La Calidad', 'AGS', 'NISSAN ENSAMBLE', 'controler.jatco2@mexq.com.mx', '555555', '2018-01-16', 'CSSJ582', '43YW7-A00', 'DELL', 'Inspiron 15 3000s 35', 'MQ', '9011378781FA', '2016-06-22', 'A', 'NOTEBOOK DELL Inspiron 15 3000s 3558 / RAM:4 GB / DD:500GB / PROCESADOR: Intel Core 3-4005U  / SO: WINDOWS 10 Home SL x64 /15.6" \r\n', 1, '0000-00-00 00:00:00', ''),
(135, 'MQ135', '00000', 'Daniela Santillan Daniela Santillan', 'POS', 'CHI', 'Coordinacion', 'correo@mexq.com.mx', '555555', '2016-06-29', '60TJ582', '43YW7-A00', 'DELL', 'Inspiron 15 3000S (/', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA - dsantillan@mexq.com.mx -  - ', 1, '0000-00-00 00:00:00', ''),
(136, 'MQ136', '00000', 'Alicia del Rosario Alicia del Rosario', 'POS', 'JAL', 'Reclutamiento', 'correo@mexq.com.mx', '555555', '2016-06-30', '9PSJ582', '43YW7-A00', 'DELL', 'Inspiron 15 3000S (/', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA - reclutamiento.jal@mexq.com.mx -  - ', 1, '0000-00-00 00:00:00', ''),
(137, 'MQ137', '21860', 'Maria Del Carmen Rocio Tovar Galaviz ', 'Auxiliar Administrativo', 'JAL', 'SKF SEALING SOLUTIONS MEXICO', 'coordinadora.jal@mexq.com.mx', '333.800.7039', '2018-01-24', '15TJ82', '43YW7-A00', 'DELL', 'Inspiron 3558', 'MQ', '9011378781FA', '2016-06-22', 'A', 'mq137@ad - NOTEBOOK DELL Inspiron 15 3000s 3558 / RAM:4 GB / DD:500GB / PROCESADOR: Intel Core 5-5200U  / SO: WINDOWS 10 Home SL x64 /15.6" ', 1, '0000-00-00 00:00:00', ''),
(138, 'MQ138', '00000', 'Diego Duran Diego Duran', 'POS', 'GTO', 'VCST', 'correo@mexq.com.mx', '555555', '2016-07-07', '5VSJ582', '43YW7-A00', 'DELL', 'Inspiron 15 3000S (/', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'RESGUARDADA - dduran@mexq.com.mx -  - ', 1, '0000-00-00 00:00:00', ''),
(139, 'MQ139', '21629', 'Rodrigo Gonzalez Aguilar', 'Auxiliar De Sistemas', 'CORPORATIVO', 'Sistemas', 'auxiliar.sistemas@mexq.com.mx', '4499110398', '2017-12-12', 'G3RRD82', '43YW7-A01', 'DELL', 'Inspiron 15', 'MQ', '9011378781FA', '2016-06-22', 'A', 'mq139-4@ad - NOTEBOOK DELL Inspiron 15 3000s 3558 / RAM:4 GB / DD:500GB / PROCESADOR: Intel Core 5-5200U  / SO: WINDOWS 10 Home SL x64 /15.6" \r\n', 1, '0000-00-00 00:00:00', ''),
(140, 'MQ140', '22828', 'Maria Guadalupe Gonzalez Acosta', 'Controller', 'AGS', 'JATCO MEXICO', ' controllerjatco1@mexq.com.mx', '555555', '2018-02-12', '5CG5524FZZ', 'K8P30LA#ABM', 'HP', '14-af116la', 'MQ', 'N/A', '1990-01-01', 'A', 'RESGUARDADA - controllerjatco1@mexq.com.mx -  - ', 1, '0000-00-00 00:00:00', ''),
(141, 'MQ141', '00000', 'Francisco Olivas Francisco Olivas', 'POS', 'PUE', 'Operaciones', 'correo@mexq.com.mx', '555555', '2016-06-28', 'CND53401X9', 'J2N31LA#ABM', 'HP', '15', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA - folivas@mexq.com.mx -  - ', 1, '0000-00-00 00:00:00', ''),
(142, 'MQ142', '00000', 'Renata Medina Renata Medina', 'POS', 'AGS', 'Reclutamiento', 'correo@mexq.com.mx', '555555', '2016-06-30', '5CG5322D83', 'K8P10LA#ABM', 'HP', '14-ac112la', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA - reclutamiento1@mexq.com.mx -  - ', 1, '0000-00-00 00:00:00', ''),
(143, 'MQ143', '01900', 'Juan Jose Bojalil Perez', 'Supervisor De Operaciones', 'MET', 'ELRING KLINGER', 'jbojalil@mexq.com.mx', '555555', '2018-02-02', 'C2V1682', '43YW7-A00', 'DELL', 'Inspiron 15 3000s / ', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA -  -  - ', 1, '0000-00-00 00:00:00', ''),
(144, 'MQ144', '20391', 'Rodolfo Medrano Melendez', 'A Supervisor De Operaciones', 'AGS', 'EXEDY DINAX MEXICO', 'supervisorexternas@mexq.com.mx', '4492013516', '2017-12-04', 'BQSJ582', '43YW7-A00', 'DELL', 'Inspiron 15 3000S (/', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA - supervisorexternas@mexq.com.mx - mq144@ad - ', 1, '0000-00-00 00:00:00', ''),
(145, 'MQ145', '19160', 'Jesus Emmanuel Chavez Diaz', 'Analista De Procesos', 'CORPORATIVO', 'MCI', 'liderdeproyectomci@mexq.com.mx', '9128686', '2018-02-02', '9RSJ582', '43YW7-A00', 'DELL', 'Inspiron 15 3000s / ', 'MQ', '68C55FBB7A67', '2016-07-06', 'A', 'NOTEBOOK DELL Inspiron 15 3000s 3558 / RAM:4 GB / DD:500GB / PROCESADOR: Intel Core 5-5200U  / SO: WINDOWS 10 Home SL x64 /15.6" ', 1, '0000-00-00 00:00:00', ''),
(146, 'MQ146', '22396', 'Jose Alfredo Bernal Mejorada', 'Supervisor De Operaciones', 'MOR', 'NISSAN CIVAC', 'abernal@mexq.com.mx', '555555', '2018-02-02', '5CG5337C53', 'K8P10LA#ABM', 'HP', '14-AC112LA', 'MQ', '5362004919', '2016-08-09', 'A', 'NOTEBOOK HP 14-AC112LA / RAM: 8GB / DD: 1TB/ PROCESADOR: Intel Core i3-5005U / SO: WINDOWS 10 HOME SL x64 / 14"\r\n', 1, '0000-00-00 00:00:00', ''),
(147, 'MQ147', '01902', 'Gabriel Conde Sanchez', 'Supervisor General', 'PUE', 'PUEBLA', 'gconde@mexq.com.mx', '555555', '2018-02-02', '5CG6104JS1', 'K8P10LA#ABM', 'HP', '14-AC112LA', 'MQ', '5362004919', '2016-08-09', 'A', 'NOTEBOOK HP 14-AC112LA / RAM: 8GB / DD: 1TB/ PROCESADOR: Intel Core i3-5005U / SO: WINDOWS 10 HOME SL x64 / 14"\r\n', 1, '0000-00-00 00:00:00', ''),
(148, 'MQ148', '00000', 'Gerardo Sandoval Gerardo Sandoval', 'POS', 'CORPORATIVO', 'Sistemas', 'correo@mexq.com.mx', '555555', '2016-08-12', '14RRD82', '668810645', 'DELL', 'Inspiron 15 3558', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA - gsandoval@mexq.com.mx -  - ', 1, '0000-00-00 00:00:00', ''),
(149, 'MQ149', '00000', 'Ana Karen Macias Ana Karen Macias', 'POS', 'AGS', 'Reclutamiento', 'correo@mexq.com.mx', '555555', '2016-08-23', '5CG6033XSC', 'K8P10LA#ABM', 'HP', '14-AC112LA', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'BAJA - kmacias@mexq.com.mx -  - ', 1, '0000-00-00 00:00:00', ''),
(150, 'MQ150', '01885', 'Maria Guadalupe Jimenez Gutierrez', 'Subdirector Comercial', 'CORPORATIVO', 'GERENCIA CORPORATIVA', 'ljimenez@mexq.com.mx', '9128686 125', '2018-02-15', '8CG546BHK', 'K8P11LA#ABM', 'HP', 'Pavilion 13-S101la', 'MQ', 'BMG2005998', '2016-08-24', 'I', 'LAPTOP HPPavilion x360 13-S101la / RAM:4GB /  DD: 500GB/ PROCESADOR: CORE i3 6100U / WINDOWS 10 / 13.3"\r\nBAJA POR ROBO EL DIA 14/02/2018\r\n', 1, '0000-00-00 00:00:00', ''),
(151, 'MQ151', '00000', 'Juan Jose Lopez Mota Juan Jose Lopez Mota', 'POS', 'QRO', 'Operaciones', 'correo@mexq.com.mx', '555555', '2016-09-17', 'E4N0CJ001041149', '', 'ASUS', 'ASUS (P45VA', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA - jlopezm@mexq.com.mx -  - ', 1, '0000-00-00 00:00:00', ''),
(152, 'MQ152', '15431', 'Evert Gibran Gonzalez Castañeda', 'Supervisor De Operaciones', 'QRO', 'GRUPO ABC', 'egibran@mexq.com.mx', '555555', '2018-01-24', 'B692982', 'I3458_I5H450BW10S_5', 'DELL', 'INSPIRON 14-3458', 'MQ', 'PA000616', '2016-11-26', 'A', 'desktop-h8cpvdcpv@ad - NOTEBOOK DELL 3458 C15 4210U / 4GB 500GB / 14W10 PLANTA I345815H450BW10S5 9460276\r\n', 1, '0000-00-00 00:00:00', ''),
(153, 'MQ153', '00000', 'Diana Marín', 'Pos', 'AGS', 'Recepcion', 'correo@mexq.com.mx', '555555', '2017-12-04', '3CR61004JQ', 'P3Q41AA#ABM', 'HP', '20-r154la', 'MQ', 'AR90982', '2016-10-13', 'A', 'mq153@ad - En mantenimiento', 1, '0000-00-00 00:00:00', ''),
(154, 'MQ154', '13231', 'Griselda Meza Aleman', 'Coordinador De Ventas Y Facturacion', 'CORPORATIVO', 'Ventas', 'gmeza@mexq.com.mx', '9128686 111', '2018-01-24', '5CG6215SD5', 'T3L43LT#ABM', 'HP', '240 G4', 'MQ', 'AR91175', '2016-10-17', 'A', 'LAPTOP HP240 G4  / RAM: 8GB / DD: 1TB / PROCESADOR:  CORE I3-5005U / SO: WINDOWS 10 x64 / 14"\r\n', 1, '0000-00-00 00:00:00', ''),
(155, 'MQ155', '01986', 'Sandra Lopez Macias', 'Jefe De Recursos Financieros Contables', 'CORPORATIVO', 'RECURSOS FINANCIEROS Y CONTABLES', 'slopez@mexq.com.mx', '555555', '2018-02-07', '5CD6335W4F', 'V7S27LA#ABM', 'HP', 'Pavilion 15-aw003la', 'MQ', 'BMG2035842', '2016-10-17', 'A', 'mq155', 1, '0000-00-00 00:00:00', ''),
(156, 'MQ156', '02109', 'Raul Villagran Regalado', 'B Supervisor General', 'AGS', 'Nissan Ensamble', 'rvillagran@mexq.com.mx', '555555', '2018-01-31', '5CG60235FX', 'V2V81LT#ABM', 'HP', '240 G4', 'MQ', 'PA000869', '2016-10-26', 'A', 'LAPTOP HP240 G4  / RAM: 4GB / DD: 1TB / PROCESADOR:  INTEL CELERON N3050 / SO: WINDOWS 10 x64 / 14"', 1, '0000-00-00 00:00:00', ''),
(157, 'MQ157', '02019', 'Jesus Arturo Reveles Gomez', 'A Supervisor De Operaciones', 'AGS', 'NISSAN 2 ENSAMBLE', 'jreveles@mexq.com.mx', '555555', '2018-02-15', '5CG60235T9', 'V2V81LT#ABM', 'HP', '240 G4', 'MQ', 'PA000869', '2016-10-26', 'A', 'LAPTOP HP240 G4  / RAM: 4GB / DD: 1TB / PROCESADOR:  INTEL CELERON N3050 / SO: WINDOWS 10 x64 / 14"', 1, '0000-00-00 00:00:00', ''),
(158, 'MQ158', '15399', 'Vicencio Hernandez  Jaime Humberto', 'POS', 'AGS', 'Coordinacion', 'correo@mexq.com.mx', '555555', '2016-11-09', '5CG5474CDS', 'T3L43LT#ABM', 'HP', '240 G4', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA - hvicencio@mexq.com.mx - mq158@ad - ', 1, '0000-00-00 00:00:00', ''),
(159, 'MQ159', '00000', 'Marisol Diaz de Leon Marisol Diaz de Leon', 'POS', 'CORPORATIVO', 'Ventas', 'correo@mexq.com.mx', '555555', '2016-11-18', '5CG60755B', 'T3L43LT#ABM', 'HP', '240 G4', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA - m.diaz@mexq.com.mx - mq159@ad - ', 1, '0000-00-00 00:00:00', ''),
(160, 'MQ160', '00000', 'Ana Gonzalez Ana Gonzalez', 'POS', 'CORPORATIVO', 'ADMINISTRACIÓN DEL SERVICIO', 'correo@mexq.com.mx', '555555', '2016-11-28', '36G21C2', '43YW7A01', 'DELL', '3558', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA - agonzalez@mexq.com.mx - mq160@ad - ', 1, '0000-00-00 00:00:00', '');
INSERT INTO `registry` (`id`, `code`, `id_employee`, `employee_name`, `position`, `branch`, `workstation`, `mail`, `phone`, `date`, `serial`, `product`, `brand`, `model`, `type`, `invoicenbr`, `invoicedate`, `status`, `comment`, `active`, `date_update`, `user_update`) VALUES
(161, 'MQ161', '00000', 'Rocio Téllez Garcia Rocio Téllez Garcia', 'Pos', 'PUE', 'FEDERAL MOGUL COJINETES', 'liderlinea@mexq.com.mx', '555555', '2018-04-03', '5CG6075G9Q', 'T3L43LT#ABM', 'HP', '240 G4', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA - liderlinea@mexq.com.mx - mq161@ad', 1, '2018-04-03 11:55:20', 'César Valenciano'),
(162, 'MQ162', '00000', 'Francisco Olivas Francisco Olivas', 'POS', 'PUE', 'Operaciones', 'correo@mexq.com.mx', '555555', '2017-02-03', '5CG6323HP6', 'Y4B27LA#ABM', 'HP', '240 G5', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA - folivas@mexq.com.mx - mq162@ad - ', 1, '0000-00-00 00:00:00', ''),
(163, 'MQ163', '01905', 'Renata Celia Medina Rios', 'Coordinador General De Reclutamiento', 'AGS', 'Aguascalientes', 'rmedina@mexq.com.mx', '2105074', '2018-02-02', '5CG6075DTF', 'T3L43LT#ABM', 'HP', '240 G4', 'MQ', '5362006057', '2017-02-02', 'A', 'mq163@ad - NOTEBOOK HP 240 G5 / RAM: 4 GB / DD: 500 GB / PROCESADOR: CORE i5-6200U / SO: WINDOWS 10 x64 / 14" - Falla de mousepad, se le asigno un mouse para su correcto uso.', 1, '0000-00-00 00:00:00', ''),
(164, 'MQ164', '00000', 'Eder Gomez Martinez Eder Gomez Martinez', 'POS', 'BCN', 'MCI', 'correo@mexq.com.mx', '555555', '2017-02-15', 'NXGE7AL001621081187600', 'NX.GE7AL.001', 'ACER', 'ASPIRE E 15', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA - implementador.bcn@mexq.com.mx - mq164@ad - ', 1, '0000-00-00 00:00:00', ''),
(165, 'MQ165', '16730', 'Jose Guillermo Sanchez Retenaga ', 'Implementador', 'JAL', 'SKF SEALING SOLUTIONS MEXICO', 'implementador.jal@mexq.com.mx', '555555', '2017-12-04', 'NXGE7AL0016210811B7600', 'NX.GE7AL.001', 'ACER', 'ASPIRE E 15', 'MQ', 'PB005716', '2017-02-14', 'A', 'mq165@ad - NOTEBOOK ACER ASPIRE E15 / RAM: 8 GB / DD: 1 TB / PROCESADOR: CORE i3-6100U / SO: WINDOWS 10 x64 Home / 15.6"', 1, '0000-00-00 00:00:00', ''),
(166, 'MQ166', '00000', 'Gilberto Camargo Benitez', 'Implementador', 'SON', 'MCI', 'implementador.son@mexq.com.mx', '555555', '2017-12-04', 'NXGE7AL001621081277600', 'NX.GE7AL.001', 'ACER', 'ASPIRE E 15', 'MQ', 'PB005716', '2017-02-14', 'A', 'mq166@ad - NOTEBOOK ACER ASPIRE E15 / RAM: 8 GB / DD: 1 TB / PROCESADOR: CORE i3-6100U / SO: WINDOWS 10 x64 Home / 15.6"', 1, '0000-00-00 00:00:00', ''),
(167, 'MQ167', '10888', 'Carlos Ignacio Avalos Lezama', 'A Supervisor De Operaciones', 'AGS', 'UNIPRES 2', 'cavalos@mexq.com.mx', '555555', '2017-12-02', 'NXGE7AL0016210815E7600', 'NX.GE7AL.001', 'ACER', 'ASPIRE E 15', 'MQ', 'PA001540', '2017-02-17', 'A', 'mq167@ad - NOTEBOOK ACER ASPIRE E15 / RAM: 8 GB / DD: 1 TB / PROCESADOR: CORE i3-6100U / SO: WINDOWS 10 x64 Home / 15.6"', 1, '0000-00-00 00:00:00', ''),
(168, 'MQ168', '05641', 'Sergio Barrientos Flores', 'B Supervisor General', 'AGS', 'EXEDY DINAX MEXICO', 'sbarrientos@mexq.com.mx', '555555', '2017-12-02', 'NXGE7AL001621080D67600', 'NX.GE7AL.001', 'ACER', 'ASPIRE E 15', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'mq168@ad - NOTEBOOK ACER ASPIRE E15 / RAM: 8 GB / DD: 1 TB / PROCESADOR: CORE i3-6100U / SO: WINDOWS 10 x64 Home / 15.6"', 1, '0000-00-00 00:00:00', ''),
(169, 'MQ169', '17869', 'Jose Francisco Chavez Alonso', 'C Guardian De La Calidad', 'AGS', 'NISSAN 2 ENSAMBLE', 'fchavez@mexq.com.mx', '555555', '2018-01-31', 'NXGE7AL00162107FF37600', 'NX.GE7AL.001', 'ACER', 'ASPIRE E 15', 'MQ', 'PB005870', '2017-02-17', 'A', 'mq169@ad - NOTEBOOK ACER ASPIRE E15 / RAM: 8 GB / DD: 1 TB / PROCESADOR: CORE i3-6100U / SO: WINDOWS 10 x64 Home / 15.6"', 1, '0000-00-00 00:00:00', ''),
(170, 'MQ170', '00000', 'Guadalupe Morales', 'Pos', 'GTO', 'Ryobi', 'correo@mexq.com.mx', '555555', '2017-12-02', 'NXGE7AL0016210811D7600', 'NX.GE7AL.001', 'ACER', 'ASPIRE E 15', 'MQ', 'PB005870', '2017-02-17', 'A', 'mq170@ad - NOTEBOOK ACER ASPIRE E15 / RAM: 8 GB / DD: 1 TB / PROCESADOR: CORE i3-6100U / SO: WINDOWS 10 x64 Home / 15.6"', 1, '0000-00-00 00:00:00', ''),
(171, 'MQ171', '18146', 'Francisco Javier Rocha Garcia', 'Lider De Operaciones', 'GTO', 'ASAHI ALUMINIUM', 'ebarajas@mexq.com.mx', '555555', '2017-12-02', 'NXGE7AL001621081707600', 'NX.GE7AL.001', 'ACER', 'ASPIRE E 15', 'MQ', 'PB005870', '2017-02-17', 'A', 'mq171@ad - NOTEBOOK ACER ASPIRE E15 / RAM: 8 GB / DD: 1 TB / PROCESADOR: CORE i3-6100U / SO: WINDOWS 10 x64 Home / 15.6"', 1, '0000-00-00 00:00:00', ''),
(172, 'MQ172', '13277', 'Sara Atzel Montelongo X', 'Ingeniero De Calidad Del Servicio Sqes', 'CORPORATIVO', 'CALIDAD', 'smontelongo@mexq.com.mx', '555555', '2017-12-02', 'NXGE7AL001621081577600', 'NX.GE7AL.001', 'ACER', 'ASPIRE E 15', 'MQ', 'PA001540', '2017-02-20', 'A', 'mq172@ad - ', 1, '0000-00-00 00:00:00', ''),
(173, 'MQ173', '00000', 'Rosy Violeta Castilla Morales', 'Pos', 'QRO', 'Coordinacion', 'correo@mexq.com.mx', '555555', '2017-12-02', 'NXGE7AL001621081757600', 'NX.GE7AL.001', 'ACER', 'ASPIRE E 15', 'MQ', 'PA001572', '2017-02-24', 'A', 'mq173@ad - NOTEBOOK ACER ASPIRE E15 / RAM: 8 GB / DD: 1 TB / PROCESADOR: CORE i3-6100U / SO: WINDOWS 10 x64 Home / 15.6"', 1, '0000-00-00 00:00:00', ''),
(174, 'MQ174', '18107', 'José De Jesús Moran Pacheco', 'Pos', 'MET', 'FEDERAL MOGUL NAUCALPAN', 'jmoran@mexq.com.mx', '555555', '2017-12-02', 'NXGE7AL001621080A97600', 'NX.GE7AL.001', 'ACER', 'ASPIRE E 15', 'MQ', 'PA001572', '2017-02-24', 'A', 'mq174@ad - NOTEBOOK ACER ASPIRE E15 / RAM: 8 GB / DD: 1 TB / PROCESADOR: CORE i3-6100U / SO: WINDOWS 10 x64 Home / 15.6"', 1, '0000-00-00 00:00:00', ''),
(175, 'MQ175', '06921', 'Candy Paramo Rios', 'Supervisor De Operaciones', 'BCN', 'AUTOLIV', 'cparamo@mexq.com.mx', '664 221 5481', '2018-01-31', '5CG6404T6J', 'Y4B27LA#ABM', 'HP', '240 G5', 'MQ', '5362006201', '2017-03-01', 'A', 'ENTREGADA - mq175@ad - NOTEBOOK HP 240 G5 / RAM: 4 GB / DD: 500 GB / PROCESADOR: CORE i5-6200U / SO: WINDOWS 10 x64 / 14" \r\n', 1, '0000-00-00 00:00:00', ''),
(176, 'MQ176', '02109', 'Miguel Angel Romo Hernandez', 'B Supervisor General', 'AGS', 'Nissan Ensamble', 'miguel.romo@mexq.com.mx', '555555', '2017-11-17', 'NXGE7AL0016210814F7600', 'NX.GE7AL.001', 'ACER', 'ASPIRE E 15', 'MQ', 'INVOICENBR', '1990-01-01', 'A', 'ENTREGADA - miguel.romo@mexq.com.mx - mq176@ad - ', 1, '0000-00-00 00:00:00', ''),
(177, 'MQ177', '02144', 'Yolanda Virginia Aguirre Calderon', 'Jefe De Sistemas De Información', 'CORPORATIVO', 'Sistemas', 'yaguirre@mexq.com.mx', '4499110398', '2018-01-31', '5CG6481QLR', 'Z1Y82LT#ABM', 'HP', '640 G2', 'MQ', 'AG2593', '2017-03-17', 'A', 'mq177@ad - NOTEBOOK HP PROBOOK 640 G2 / RAM: 16 GB / DD: 1 TB / PROCESADOR: CORE i7-6600U / SO: WINDOWS 10 x64 Pro / 14"', 1, '0000-00-00 00:00:00', ''),
(178, 'MQ178', '21255', 'Sandra Judith López Pinedo', 'Implementador', 'CORPORATIVO', 'MCI', 'implementador.ags2@mexq.com.mx', '9128686', '2018-02-16', 'NXGE7AL00161900FB27600', 'NX.GE7AL.001', 'ACER', 'ASPIRE E 15', 'MQ', 'PA001742', '2017-03-30', 'A', 'Laptop Acer Aspire E5-575-379X: Procesador Intel Core i3 6100U (2.3 GHz), Memoria de 8GB DDR3L, Disco Duro de 1TB, Pantalla de 15.6" LED, Video Intel HD Graphics 520, Unidad Óptica No Incluida, S.O. Windows 10 Home (64 Bits)', 1, '0000-00-00 00:00:00', ''),
(179, 'MQ179', '19015', 'Maria Jacqueline Garcia Garcia', 'Implementador', 'CORPORATIVO', 'MCI', 'jgarcia@mexq.com.mx', '555555', '2017-12-02', 'NXGE7AL001619011F47600', 'NX.GE7AL.001', 'ACER', 'ASPIRE E 15', 'MQ', 'PA001742', '2017-03-30', 'A', 'mq179@ad - NOTEBOOK ACER ASPIRE E15 / RAM: 8 GB / DD: 1 TB / PROCESADOR: CORE i3-6100U / SO: WINDOWS 10 x64 Home / 15.6"', 1, '0000-00-00 00:00:00', ''),
(180, 'MQ180', '16588', 'Juan Carlos Reyes Santoyo', 'Implementador', 'CORPORATIVO', 'MCI', 'implementador.ags4@mexq.com.mx', '555555', '2017-12-02', 'NXGE7AL001619010E57600', 'NX.GE7AL.001', 'ACER', 'ASPIRE E 15', 'MQ', 'PA001742', '2017-03-30', 'A', 'mq180@ad - NOTEBOOK ACER ASPIRE E15 / RAM: 8 GB / DD: 1 TB / PROCESADOR: CORE i3-6100U / SO: WINDOWS 10 x64 Home / 15.6"', 1, '0000-00-00 00:00:00', ''),
(181, 'MQ181', '21733', 'Jose Daniel Reynoso Organista', 'Staff De Sistemas', 'CORPORATIVO', 'Sistemas', 'staffsistemas@mexq.com.mx', '4499110398', '2017-12-02', '5CD6518N3H', 'Z1Y99LT#ABM', 'HP', '440 G3', 'MQ', 'PB007439', '2017-04-17', 'A', 'mq181@ad - NOTEBOOK HP 440 G3 / RAM: 12 GB / DD: 1 TB / PROCESADOR: CORE i5 / SO: WINDOWS 10 x64 Pro / 14"', 1, '0000-00-00 00:00:00', ''),
(182, 'MQ182', '22794', 'Karen Renteria', 'Champion De Mci', 'CORPORATIVO', 'MCI', 'krenteria@mexq.com.mx', '9128686 131', '2018-02-08', 'NXGE7AL001619010057600', 'NX.GE7AL.001', 'ACER', 'ASPIRE E 15', 'MQ', 'PA001869', '2017-04-26', 'A', 'mq182-1@ad - NOTEBOOK ACER ASPIRE E15 / RAM: 8 GB / DD: 1 TB / PROCESADOR: CORE i3-6100U / SO: WINDOWS 10 x64 Home / 15.6"', 1, '0000-00-00 00:00:00', ''),
(183, 'MQ183', '22008', 'Delia Alvarado Aguirre', 'Coordinadora Reclutamiento', 'AGS', 'Reclutamiento', 'coordinadora.reclutamientoags@mexq.', '4493524906', '2018-02-15', '8CC61603XZ', 'T6F63AA#ABM', 'HP', 'PC 20-e111la', 'MQ', '5362006676', '2017-05-18', 'A', 'ENTREGADA -  - mq183@ad -', 1, '0000-00-00 00:00:00', ''),
(184, 'MQ184', '00155', 'Practicante Reclutamiento', 'Practicante De Reclutamiento', 'AGS', 'RECLUTAMIENTO', 'preclutamiento@mexq.com.mx', '555555', '2018-03-08', '4CE54803C4', 'P5W05LT#ABM', 'HP', 'Pavilion 205', 'MQ', '5362006676', '2017-05-19', 'A', 'Computadora AIO HP Pavilion 205 (P5W05LT#ABM), Procesador Intel Pentium J2900 (Hasta 2.66 GHz), Memoria 4GB DDR3L, D.D. 1 TB, Video Intel HD Graphics, DVD±R/RW DL, 802.11b/g/n, Windows 8.1 (64 Bits), Pantalla LED de 18.5"\r\n', 1, '2018-03-08 10:17:22', 'Administrador Sistemas'),
(185, 'MQ185', '00000', 'Reclutador 12 Reclutador 12', 'Pos', 'AGS', 'Reclutamiento', 'correo@mexq.com.mx', '555555', '2018-01-31', '8CC6440RPG', 'Z8M58LT#ABM', 'HP', '205 G3 AIO', 'MQ', '5362006676', '2017-05-18', 'A', 'ENTREGADA -  - mq185@ad - ', 1, '0000-00-00 00:00:00', ''),
(186, 'MQ186', '22008', 'Mariana Guadalupe  Baez Hernandez', 'Practicante De Reclutamiento', 'AGS', 'AGUASCALIENTES', 'reclutamiento.ags11@mexq.com.mx', '555555', '2018-03-08', '8CC6490NZ4', 'Z8M58LT#ABM', 'HP', '205 G3 AIO', 'MQ', '5362006676', '2017-05-19', 'A', 'ENTREGADA - coordinadora.reclutamientoags@mexq.com.mx - mq186@ad - ', 1, '2018-03-08 10:16:28', 'Administrador Sistemas'),
(187, 'MQ187', '20612', 'Jessica Danai Vilchis Vazquez', 'Coordinador De Reclutamiento', 'AGS', 'Reclutamiento', 'correo@mexq.com.mx', '9128686', '2018-01-31', '8CC6440RP5', 'Z8M58LT#ABM', 'HP', '205 G3 AIO', 'MQ', '5362006676', '2017-05-19', 'A', 'mq187@ad - DESKTOP AIO HP PC 205 G3 / RAM: 4GB / DD: 1TB / PROCESADOR: AMD E2-7110 / SO: WINDOWS 10 HOME x64 /19.5"', 1, '0000-00-00 00:00:00', ''),
(188, 'MQ188', '00000', 'Reclutador 15 Reclutador 15', 'Pos', 'AGS', 'Reclutamiento', 'correo@mexq.com.mx', '555555', '2018-01-31', '8CC6440RVW', 'Z8M58LT#ABM', 'HP', '205 G3 AIO', 'MQ', '5362006676', '2017-05-18', 'A', 'ENTREGADA -  - mq188@ad - ', 1, '0000-00-00 00:00:00', ''),
(189, 'MQ189', '13331', 'Giovani Vital Monroy', 'Ingeniero De Calidad Del Servicio Sqes', 'CORPORATIVO', 'Calidad', 'gvital@mexq.com.mx', '555555', '2017-12-06', 'BG44KC2', 'V3M7J', 'DELL', 'Inspiron 15 5559', 'MQ', 'AG2936', '2017-06-13', 'A', 'mq189@ad - NOTEBOOK DELL INSPIRON 15 559 / RAM: 8 GB / DD: 1 TB / PROCESADOR: CORE i5-6200U 6g / SO: WINDOWS 10 x64 Home / 15.6"', 1, '0000-00-00 00:00:00', ''),
(190, 'MQ190', '12400', 'Omar Mendoza Ruiz', 'Jefe De Operaciones', 'Bcn', 'BCN', 'omendoza@mexq.com.mx', '555555', '2017-12-01', 'NXGE6AL01971204E1E7600', 'NX.GE6AL.09', 'ACER', 'Aspire E15', 'MQ', '5362006963', '62019-06-29', 'A', 'mq190@ad - NOTEBOOK ACER ASPIRE E15 / RAM: 8 GB / DD: 1 TB / PROCESADOR: CORE i5-7200U / SO: WINDOWS 10 x64 Home / 15.6"', 1, '0000-00-00 00:00:00', ''),
(191, 'MQ191', '23108', 'Jesus Ariel Ruelas Rivera', 'Supervisor De Operaciones', 'BCN', 'AUTOLIV', 'aruelas@mexq.com.mx', '555555', '2018-04-04', '5CD63366TS', 'V7S04LA#ABM', 'HP', 'Pavilion 14-al006la', 'MQ', '5362006963', '2017-06-29', 'A', 'mq191@ad - NOTEBOOK HP PAVILION 14-la006la / RAM: 8 GB / DD: 500 TB / PROCESADOR: CORE i3-6100u / SO: WINDOWS 10 x64 Pro / 14"', 1, '2018-04-04 14:41:24', 'César Valenciano'),
(192, 'MQ192', '00000', 'Viridiana Berenice Sierra Espinosa', 'Supervisor De Operaciones', 'SLP', 'Coordinacion', 'correo@mexq.com.mx', '555555', '2018-01-31', 'NXGE6AL01971204F127600', 'NX.GE6AL.09', 'ACER', 'Aspire E15', 'MQ', '5362006963', '2017-06-30', 'A', 'mq192@ad - NOTEBOOK ACER ASPIRE E15 / RAM: 8 GB / DD: 1 TB / PROCESADOR: CORE i5-7200U / SO: WINDOWS 10 x64 Home / 15.6"', 1, '0000-00-00 00:00:00', ''),
(193, 'MQ193', '19868', 'Norma Fabiola Gonzalez Garcia', 'A Supervisor De Operaciones', 'AGS', 'Compas', 'correo@mexq.com.mx', '555555', '2017-12-01', '5CD63366VK', 'V7S04LA#ABM', 'HP', 'Pavilion 14-al006la', 'MQ', '5362007218', '2017-06-18', 'A', 'mq193@ad - NOTEBOOK HP PAVILION 14-la006la / RAM: 8 GB / DD: 500 TB / PROCESADOR: CORE i3-6100u / SO: WINDOWS 10 x64 / 14" - Anterior de Alvaro Noriega\r\n', 1, '0000-00-00 00:00:00', ''),
(194, 'MQ194', '00000', 'Gerardo Cano Garcia ', 'Lider De Operaciones', 'GTO', 'MAHLE CELAYA', 'correo@mexq.com.mx', '555555', '2018-02-08', '5CG6202DBR', 'V7R70LA#ABM', 'HP', '14-am012la', 'MQ', 'N/A', '2017-08-30', 'A', 'mq194@ad - NOTEBOOK HP 14-am012la / RAM: 4 GB / DD: 500 GB / PROCESADOR: CORE i5-6100u / SO: WINDOWS 10 x64 / 14"', 1, '0000-00-00 00:00:00', ''),
(195, 'MQ195', '00173', 'Ivan De Jesús Flores Aguilar', 'Coordinador De Sqe', 'CORPORATIVO', 'Calidad', 'iflores@mexq.com.mx', '555555', '2018-01-31', 'NXGE6AL02070907E6C7600', 'NX.GE6AL.020', 'ACER', 'Aspire E15', 'MQ', 'PA002439', '2017-08-10', 'A', 'mq195@ad - NOTEBOOK ACER Aspire E15 / RAM: 4 GB / DD: 500 GB / PROCESADOR: CORE i3-6006U / SO: WINDOWS 10 x64 / 15.6"', 1, '0000-00-00 00:00:00', ''),
(196, 'MQ196', '18955', 'Alfonso Flores Ahumada', 'C Supervisor De Operaciones', 'AGS', 'NISSAN ENSAMBLE', 'aflores@mexq.com.mx', '555555', '2017-12-01', '5CG708024B', 'V7R65LA#ABM', 'HP', '14-am009la', 'MQ', '85E7DA866C95', '2017-08-17', 'A', 'NOTEBOOK HP 14-am009la / RAM: 4 GB / DD: 500 GB / PROCESADOR: CORE i35005U / SO: WINDOWS 10 x64 / 14" - Comparte con: Juan Carlos Acosta Medina', 1, '0000-00-00 00:00:00', ''),
(197, 'MQ197', '19411', 'Cecilia Hernández Trejo', 'Supervisor De Operaciones', 'GTO', 'ASAHI ALUMINIUM', 'chernandez@mexq.com.mx', '555555', '2017-11-29', '5CG70809KX', 'V7R65LA#ABM', 'HP', '14-am009la', 'MQ', '85E7DA866C95', '2017-08-17', 'A', 'ENTREGADA - mq197@ad - NOTEBOOK HP 14-am009la / RAM: 4 GB / DD: 500 GB / PROCESADOR: CORE i35005U / SO: WINDOWS 10 x64 / 14"', 1, '0000-00-00 00:00:00', ''),
(198, 'MQ198', '19260', 'Uriel Alejandro Yáñez Zamora ', 'Supervisor de Operaciones', 'GTO', 'Inalfa', 'uyanez@mexq.com.mx', '555555', '2017-11-28', '5CG70805YB', 'V7R65LA#ABM', 'HP', '14-am009la', 'MQ', '85E7DA866C95', '2017-08-17', 'A', 'ENTREGADA  - mq198@ad - NOTEBOOK HP 14-am009la / RAM: 4 GB / DD: 500 GB / PROCESADOR: CORE i35005U / SO: WINDOWS 10 x64 / 14"', 1, '0000-00-00 00:00:00', ''),
(199, 'MQ199', '18110', 'Arturo Zamorano Martinez', 'B Supervisor General', 'AGS', 'NISSAN MOTOR', 'azamorano@mexq.com.mx', '4491199762', '2018-02-26', '5CG70808J0', 'V7R65LA#ABM', 'HP', '14-am009la', 'MQ', '85E7DA866C95', '2017-08-17', 'A', 'Otras cuentas configuradas kortiz@mexq.com.mx / rhuizar@mexq.com.mx', 1, '2018-02-26 14:06:55', 'César Valenciano'),
(200, 'MQ200', '01966', 'Edgar Jimenez Bernabe', 'Gerente de Aseguramiento de Calidad', 'CORPORATIVO', 'Calidad', 'correo@mexq.com.mx', '555555', '2017-11-28', 'GAN0WU13765343E', '90NB0BA2-M05130', 'ASUS', 'UX360C', 'MQ', 'NA', '2017-09-06', 'A', 'ENTREGADA - ejimenez@mexq.com.mx - mq200@ad - "NOTEBOOK ASUS ZenBook Flip UX360CA\r\n / RAM: 4 GB / SSD: 512 GB  / PROCESADOR: CORE i5-7Y54-BGA / SO: WINDOWS 10 x64 / 13.3"', 1, '0000-00-00 00:00:00', ''),
(201, 'MQ201', '11303', 'Maribell Cruz Sanchez', 'Lider de Operaciones', 'PUE', 'Federal Mogul Pistones', 'liderproveedoresfm@mexq.com.mx', '555555', '2017-11-28', 'CZ59N52', '657736330', 'DELL', 'INSPIRON 14-3458', 'MQ', '532007486', '2017-09-07', 'A', 'ENTREGADA - mq201@ad - NOTEBOOK ACER ASPIRE E 15-575-526A / RAM: 8 GB / HHD: 1 TB  / PROCESADOR: CORE i5-7200U / SO: WINDOWS 10 x64 / 15.6" - Comparte con Perez Neri Jose Luis', 1, '0000-00-00 00:00:00', ''),
(202, 'MQ202', '12454', 'Jessica Lizbeth Mascorro Cuellar', 'Coordinador General De Laborales', 'CORPORATIVO', 'RH', 'jmascorro@mexq.com.mx', '555555', '2018-01-31', 'NXGE6AL019712102017600', 'NXGE6AL.019', 'ACER', 'Aspire E15', 'MQ', '5362007530', '2017-09-11', 'A', 'ENTREGADA - jmascorro@mexq.com.mx - mq202@ad - NOTEBOOK ACER ASPIRE E 15-575-526A / RAM: 8 GB / HHD: 1 TB  / PROCESADOR: CORE i5-7200U / SO: WINDOWS 10 x64 / 15.6"', 1, '0000-00-00 00:00:00', ''),
(203, 'MQ203', '00029', 'Miguel Angel Romo Hernandez', 'B Supervisor General', 'AGS', 'NISSAN MOTOR', 'miguel.romo@mexq.com.mx', '555555', '2018-02-26', 'NXGE6AL0197120A3A47600', 'NXGE6AL.019', 'ACER', 'Aspire E15', 'MQ', '5362007531', '2017-09-11', 'A', 'mq203@ad - NOTEBOOK ACER ASPIRE E 15-575-526A / RAM: 8 GB / HHD: 1 TB  / PROCESADOR: CORE i5-7200U / SO: WINDOWS 10 x64 / 15.6" \r\nCuentas de correo azamorano@mexq.com.mx / rhuizar@mexq.com.mx', 1, '2018-02-26 14:17:59', 'César Valenciano'),
(204, 'MQ204', '04219', 'Jose Elio Martinez Aguilar', 'B Lider De Operaciones', 'AGS', 'NISSAN CARROCERIAS', 'jose.martinez@mexq.com.mx', '4492052726', '2018-02-08', 'NXGE1AL003711003227600', 'NXGE6AL.003', 'ACER', 'Aspire E15', 'MQ', 'A31F90C7109E', '2017-09-25', 'A', 'mq204@ad - NOTEBOOK ACER ASPIRE E 15-575-34ZM / RAM: 8 GB / HHD: 1 TB  / PROCESADOR: CORE i5-7200U / SO: WINDOWS 10 x64 / 15.6"', 1, '0000-00-00 00:00:00', ''),
(205, 'MQ205', '18119', 'Nubia Gabriela Martinez Barron', 'Coordinador Administrativo', 'GTO', 'Coordinacion', 'auxiliar.gto@mexq.com.mx', '555555', '2018-02-08', 'GCN0WU08828450A', '90NB0C91-M01150', 'ASUS', 'X441U', 'MQ', 'PA002735', '2017-10-05', 'A', 'ENTREGADA -  - mq205@ad - NOTEBOOK ASUS X441U / RAM: 4 GB / HHD: 1 TB  / PROCESADOR: CORE i3 / SO: WINDOWS 10 x64 / 14"', 1, '0000-00-00 00:00:00', ''),
(206, 'MQ206', '22151', 'Goreti Arias Hernandez', 'Residente', 'AGS', 'Compas', 'garias@mexq.com.mx', '555555', '2018-02-02', '6BW17F2', 'YT07K', 'DELL', 'Inspiron 15-3567', 'MQ', '5362007770', '2017-10-12', 'A', 'ENTREGADA - g.arias@mexq.com.mx - mq206@ad - NOTEBOOK INSPIRON 15-3567 / RAM: 4 GB / HHD: 1 TB  / PROCESADOR: CORE i3-6006U / SO: WINDOWS 10 x64 / 15.6" ', 1, '0000-00-00 00:00:00', ''),
(207, 'MQ207', '21732', 'Gerardo Gonzalez Rosado', 'Developer', 'CORPORATIVO', 'MCI', 'developer.mci@mexq.com.mx', '555555', '2018-01-31', '5CD725506S', 'Z1Y99LT#ABM', 'HP', '440 g3', 'MQ', 'PA002921', '2017-11-08', 'A', 'ENTREGADA - developermci@mexq.com.mx - mq207@ad - WindowS (10 Pro x64', 1, '0000-00-00 00:00:00', ''),
(208, 'MQ208', '12569', 'Esteban Pinales Esteban Pinales', 'Lider De Operaciones', 'MET', 'FORD CUATITLAN', 'epinales@mexq.com.mx', '555555', '2018-01-31', 'NXGE6AL0197120A70C7600 ', 'NX.GE6AL.019 ', 'ACER', 'ASPIRE E5 575', 'MQ', '5362008011', '2017-11-09', 'A', 'ENTREGADA - epinales@mexq.com.mx - mq208@ad - VPN: metropolitana1', 1, '0000-00-00 00:00:00', ''),
(209, 'MQ209', '12569', 'Cynthia Ivette Rodriguez Sanez', 'Controler', 'SON', 'FORD MOTOR HERMOSILLO', 'crodriguez@mexq.com.mx', '555555', '2018-01-31', 'NXGE6AL0197120A6DF7600', 'NX.GE6AL.019 ', 'ACER', 'ASPIRE E5 575', 'MQ', '5362008021', '2017-11-10', 'A', 'NOTEBOOK ASPIRE E 15-575-526a / RAM: 8 GB / HHD: 1 TB  / PROCESADOR: CORE i5-7200U / ', 1, '0000-00-00 00:00:00', ''),
(210, 'MQ210', '14529', 'Jesus Arturo Reveles Gomez', 'A Supervisor De Operaciones', 'AGS', 'NISSAN 2 ENSAMBLE', 'jreveles@mexq.com.mx', '555555', '2017-11-29', 'NXGE6AL0197120A6EA7600', 'NX.GE6AL.019 ', 'ACER', 'ASPIRE E5 575', 'MQ', '5362008106', '2017-11-22', 'A', 'MQ210@ad - NOTEBOOK ASPIRE E5-575-526A / RAM: 8 GB / HHD: 1 TB  / PROCESADOR: CORE i5-7200 / SO:', 1, '0000-00-00 00:00:00', ''),
(211, 'MQ211', '19869', 'Rocio Guadalupe Jaramillo Falcon', 'A Supervisor De Operaciones', 'AGS', 'ITW', 'supervisor.itw@mexq.com.mx', '555555', '2018-01-31', 'NXGCUAL022709028877600', 'NX.GCUAL.022', 'ACER', 'Aspire E14', 'MQ', 'PB13542', '2017-12-01', 'A', 'mq211@ad - NOTEBOOK ACER ASPIRE E14 E5-475-3032 / RAM: 16 GB / HHD: 1 TB  / PROCESADOR: CORE i3-6006U / SO: WINDOWS 10 x64 / 14" - Responsables: Valentín Cruz / David Dávila', 1, '0000-00-00 00:00:00', ''),
(212, 'MQ212', '21995', 'Oscar Eduardo Barraza Lozano ', 'D Guardian De La Calidad', 'AGS', 'ZF CHASSIS TECHNOLOGY', 'bodega.boomerang@mexq.com.mx', '555555', '2018-01-31', 'NXGE6AL0197120A3E37600', 'NX.GE6AL.09', 'ACER', 'Aspire E15', 'MQ', '5362008191', '2017-12-04', 'A', 'mq212@ad - NOTEBOOK ACER ASPIRE E-15 E5-575-526A/ RAM: 8 GB / HHD: 1 TB  / PROCESADOR: CORE i5-7200U / SO: WINDOWS 10 x64 / 15.6" \r\n', 1, '0000-00-00 00:00:00', ''),
(213, 'MQ213', '22134', 'Adriel Gomez Flores', 'Implementador', 'CORPORATIVO', 'MCI', 'correo@mexq.com.mx', '555555', '2018-01-31', 'NXGCUAL022709028807600', 'NX.GCUAL.022', 'ACER', 'Aspire E14', 'MQ', 'PB013539', '2017-12-01', 'A', 'mq211@ad - NOTEBOOK ACER ASPIRE E14 E5-475-3032 / RAM: 16 GB / HHD: 1 TB  / PROCESADOR: CORE i3-6006U / SO: WINDOWS 10 x64 / 14"\r\n', 1, '0000-00-00 00:00:00', ''),
(214, 'MQ214', '15240', 'Francisco Armando Rangel Rosas', 'Ingeniero Iq', 'SON', 'FORD MOTOR HERMOSILLO', 'arangel@mexq.com.mx', '555555', '2018-01-29', 'NXGE6AL01971204E377600 ', 'NX.GE6AL.019 ', 'ACER', 'Aspire E15', 'MQ', '5362008191', '2017-12-04', 'A', 'mq214@ad - NOTEBOOK ACER ASPIRE E-15 E5-575-526A/ RAM: 8 GB / HHD: 1 TB  / PROCESADOR: CORE i5-7200U / SO: WINDOWS 10 x64 / 15.6"', 1, '0000-00-00 00:00:00', ''),
(215, 'MQ215', '21288', 'Jorge Angel Rocha Garcia', 'A Supervisor De Operaciones', 'SLP', 'FAURECIA', 'supervisor.faurecia@mexq.com.mx', '555555', '2018-01-29', 'NXGCUAL022709028947600', 'NX.GCUAL.022', 'ACER', 'Aspire E14', 'MQ', 'PA003101', '2017-12-05', 'A', 'mq215@ad - NOTEBOOK ACER ASPIRE E14 E5-475-3032 / RAM: 16 GB / HHD: 1 TB  / PROCESADOR: CORE i3-6006U / SO: WINDOWS 10 x64 / 14"', 1, '0000-00-00 00:00:00', ''),
(218, 'PC1', '11844', 'Jessica Jasmin Vela Campos', 'Coordinador De Reclutamiento', 'CORPORATIVO', 'RECURSOS HUMANOS', 'jvela@mexq.com.mx', '9128686 112', '2018-03-23', 'MXL9520VYW', 'WB957LA#ABM', 'HP', 'COMPAQ DX2400 MT', 'PC', '', '', 'I', 'HP COMPAQ DX2400 MT/ DCORE 2.6GHZ/ 320GB/ 2GB/ DVD+-RW/ W7PRO', 1, '2018-03-23 13:23:09', 'Administrador Sistemas'),
(219, 'PC2', '00000', 'Mayela (irapuato) No_lname', 'No_position', '', 'Aguascalientes', 'mail@mexq.com.mx', '55555', '2018-01-15', '', '', '', '', 'PC', '', '', 'I', '', 1, '0000-00-00 00:00:00', ''),
(220, 'PC3', '00000', 'Practicante  Finanzas', 'Practicante De Finanzas', 'CORPORATIVO', 'RECURSOS FINANCIEROS Y CONTABLES', 'comprobaciones@mexq.com.mx', '9128686', '2018-01-25', 'MXL9520W07', '', 'HP', '', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(221, 'PC4', '03134', 'Hilda Patricia Perez Flores', 'Coordinador Contable', 'CORPORATIVO', 'RECURSOS FINANCIEROS Y CONTABLES', 'pperez@mexq.com.mx', '9128686 119', '2018-01-15', 'MXL9520ZK1', 'WB957LA#ABM', 'HP', 'COMPAQ DX2400 MT', 'PC', 'N/A', '', 'A', 'HP COMPAQ DX2400 MT/ DCORE 2.6GHZ/ 320GB/ 2GB/ DVD+-RW/ W7PRO', 1, '0000-00-00 00:00:00', ''),
(222, 'PC5', '00000', 'Practicante Capacitacion No_lname', 'No_position', '', 'Aguascalientes', 'mail@mexq.com.mx', '55555', '2018-01-15', '', '', '', '', 'PC', '', '', 'I', '', 1, '0000-00-00 00:00:00', ''),
(223, 'PC6', '00000', 'Auxiliar  Informacion 6', 'No_position', 'AGS', 'Aguascalientes', 'mail@mexq.com.mx', '55555', '2018-01-25', 'MXJ92803FL', 'NW784LA#ABM', 'HP', '', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(224, 'PC7', '00000', 'MAURY HERNANDEZ no_lname', 'no_position', '', 'Aguascalientes', 'mail@mexq.com.mx', '55555', '00-00-0000', '', '', '', '', 'PC', '', '', 'I', '', 1, '0000-00-00 00:00:00', ''),
(225, 'PC8', '00172', 'Andrea Jazmin Garcia Betts', 'Auxiliar De Capacitación ', 'CORPORATIVO', 'Recursos Humanos', 'capacitacionrh@mexq.com.mx', '9128686 112', '2018-01-23', 'MXLL0221H9W', '', 'HP', 'Pro 3000 SFF', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(226, 'PC9', '17937', 'Maria Magdalena Flores Muro', 'Staff De Aseguramiento De Calidad', 'AGS', 'Aguascalientes', 'staff_qa@mexq.com.mx', '9128686 ', '2018-01-25', 'MXL9520ZK6', '', 'HP', 'Compaq dx2400 Microt', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(227, 'PC10', '21751', 'Maria Isabel Torres López', 'Ejecutivo De Cuenta', 'CORPORATIVO', 'ADMINISTRACIÓN DEL SERVICIO', 'itorres@mexq.com.mx', '9128686 232', '2018-01-16', 'MXL9520W08', 'WB957LA#ABM', 'HP', 'DX2400MT', 'PC', '', '', 'A', 'HP Cpmpaq DX2400MT D.Core 2.6GHz. 320GB 4GB Ram Windows 7 Profesional Color Negra', 1, '0000-00-00 00:00:00', ''),
(228, 'PC11', '00000', 'Practicante R.h. No_lname', 'No_position', '', 'Aguascalientes', 'mail@mexq.com.mx', '55555', '2018-01-24', '', '', '', '', 'PC', '', '', 'I', '', 1, '0000-00-00 00:00:00', ''),
(229, 'PC12', '18118', 'Auxiliar De Capacitacion', 'Recursos Humanos', 'CORPORATIVO', 'Recursos Humanos', 'sesparza@mexq.com.mx', '9128686 112', '2018-01-25', 'MXL0221HSS', 'WG990LA#ABM', 'HP', 'Pro 3000 SFF', 'PC', 'N/A', '', 'A', 'Computadora HP 3000 Pro SFF - Dual Core E5400 - 320GB - 2GB', 1, '0000-00-00 00:00:00', ''),
(230, 'PC13', '00000', 'SIA ALVAREZ no_lname', 'no_position', '', 'Aguascalientes', 'mail@mexq.com.mx', '55555', '00-00-0000', '', '', '', '', 'PC', '', '', 'I', '', 1, '0000-00-00 00:00:00', ''),
(231, 'PC14', '00000', 'Auxiliar Requerimientos', 'Auxiliar De Informacion', 'CORPORATIVO', 'INFORMACION', 'requerimientos.informacion@mexq.com', '9128686 104', '2018-01-25', 'MXL9520ZJR', '', 'HP', 'Compaq dx2400', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(232, 'PC15', '00000', 'PRACTICANTE DE DEMANDAS no_lname', 'no_position', '', 'Aguascalientes', 'mail@mexq.com.mx', '55555', '00-00-0000', '', '', '', '', 'PC', '', '', 'I', '', 1, '0000-00-00 00:00:00', ''),
(233, 'PC16', '00000', 'Auxiliar De Informacion 11', 'Informacion', 'CORPORATIVO', 'INFORMACION', 'informacion11@mexq.com.mx', '55555', '2018-02-21', 'MXL0242GFX', 'VVG990LA#ABM', 'HP', '3000 PRO SFF', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(234, 'PC17', '18374', 'Martha Alicia Ruiz Avalos', 'Auxiliar De Nominas', 'CORPORATIVO', 'RECURSOS FINANCIEROS Y CONTABLES', 'mruiz@mexq.com.mx', '9128686', '2018-01-15', 'MXL9520ZK9', '', 'HP', 'COMPAQ DX2400 MT', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(235, 'PC18', '00000', 'Auxiliar De Informacion 1', 'Informacion', 'CORPORATIVO', 'INFORMACION', 'informacion@mexq.com.mx', '912 86 86 104', '2018-03-03', 'MXL9520ZK9', 'MXL0221N05', 'HP', 'Compaq dx2400 Microt', 'PC', '', '', 'A', 'Computadora Compaq dx2400, Procesador Intel Pentium E5300 (2,6 GHz), Memoria de 2GB PC2-6400 DDR2, D.D. de 320GB, SuperMulti DVD±R/RW, Red, Módem, Windows Vista Business, No Incluye Monitor. / pc18-info@ad', 1, '2018-03-03 11:35:16', 'César Valenciano'),
(236, 'PC19', '00000', 'Auxiliar De Informacion 14', 'Informacion', 'CORPORATIVO', 'INFORMACION', 'informacion14@mexq.com.mx', '912 8686', '2018-02-21', 'MXL0221HF7', '', '', '', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(237, 'PC20', '00000', 'SERGIO IBARRA no_lname', 'no_position', '', 'Aguascalientes', 'mail@mexq.com.mx', '55555', '00-00-0000', '', '', '', '', 'PC', '', '', 'I', '', 1, '0000-00-00 00:00:00', ''),
(238, 'PC21', '00000', 'SERGIO IBARRA no_lname', 'no_position', '', 'Aguascalientes', 'mail@mexq.com.mx', '55555', '00-00-0000', '', '', '', '', 'PC', '', '', 'I', '', 1, '0000-00-00 00:00:00', ''),
(239, 'PC22', '00000', 'LUZ MACIAS (PLANTA) no_lname', 'no_position', '', 'Aguascalientes', 'mail@mexq.com.mx', '55555', '00-00-0000', '', '', '', '', 'PC', '', '', 'I', '', 1, '0000-00-00 00:00:00', ''),
(240, 'PC23', '00000', 'PRACTICANTE CAPACITACION 2 no_lname', 'no_position', '', 'Aguascalientes', 'mail@mexq.com.mx', '55555', '00-00-0000', '', '', '', '', 'PC', '', '', 'I', '', 1, '0000-00-00 00:00:00', ''),
(241, 'PC24', '00000', 'OMAR (TIJUANA) no_lname', 'no_position', '', 'Aguascalientes', 'mail@mexq.com.mx', '55555', '00-00-0000', '', '', '', '', 'PC', '', '', 'I', '', 1, '0000-00-00 00:00:00', ''),
(242, 'PC25', '00000', 'MARY MUÃ‘OZ no_lname', 'no_position', '', 'Aguascalientes', 'mail@mexq.com.mx', '55555', '00-00-0000', '', '', '', '', 'PC', '', '', 'I', '', 1, '0000-00-00 00:00:00', ''),
(243, 'PC26', '00000', 'ESCANER VENTAS no_lname', 'no_position', '', 'Aguascalientes', 'mail@mexq.com.mx', '55555', '00-00-0000', '', '', '', '', 'PC', '', '', 'I', '', 1, '0000-00-00 00:00:00', ''),
(244, 'PC27', '00000', 'PRACT. ADMON SERV no_lname', 'no_position', '', 'Aguascalientes', 'mail@mexq.com.mx', '55555', '00-00-0000', '', '', '', '', 'PC', '', '', 'I', '', 1, '0000-00-00 00:00:00', ''),
(245, 'PC28', '16891', 'Alba Villalobos Natalie', 'Team Leader De Ingresos Y Presupuestos', 'CORPORATIVO', 'VENTAS', 'n.alba@mexq.com.mx', '9128686 218', '2018-03-11', 'MXL9520XK7', 'WB957LA#ABM', '', '', 'PC', 'N/A', '', 'A', '', 1, '2018-03-11 14:53:39', 'César Valenciano'),
(246, 'PC29', '00000', 'IRIS DE LA CRUZ no_lname', 'no_position', '', 'Aguascalientes', 'mail@mexq.com.mx', '55555', '00-00-0000', '', '', '', '', 'PC', '', '', 'I', '', 1, '0000-00-00 00:00:00', ''),
(247, 'PC30', '00000', 'IVAN DAVILA no_lname', 'no_position', '', 'Aguascalientes', 'mail@mexq.com.mx', '55555', '00-00-0000', '', '', '', '', 'PC', '', '', 'I', '', 1, '0000-00-00 00:00:00', ''),
(248, 'PC31', '18652', 'Paola Brito Torres', 'Staff De Ventas', 'CORPORATIVO', 'VENTAS', 'pbrito@mexq.com.mx', '912 8686', '2018-03-10', 'MXJ95300FL', 'WB476LA#ABM', 'HP', 'Compaq 6000', 'PC', '', '', 'A', '', 1, '2018-03-10 15:21:20', 'César Valenciano'),
(249, 'PC32', '00000', 'PRACTICANTE DE FACTURACION no_lname', 'no_position', '', 'Aguascalientes', 'mail@mexq.com.mx', '55555', '00-00-0000', '', '', '', '', 'PC', '', '', 'I', '', 1, '0000-00-00 00:00:00', ''),
(250, 'PC33', '00000', 'ERNESTO PALOMINO (AHRESTHY) no_lname', 'no_position', '', 'Aguascalientes', 'mail@mexq.com.mx', '55555', '00-00-0000', '', '', '', '', 'PC', '', '', 'I', '', 1, '0000-00-00 00:00:00', ''),
(251, 'PC34', '21651', 'Roberta Xiomy Diaz Ascencio', 'Ejecutivo De Cuenta', 'CORPORATIVO', 'ADMINISTRACIÓN DEL SERVICIO', 'xidaz@mexq.com.mx', '9128686', '2018-03-10', 'MXL0221HF6', 'WG990LA#ABM', 'HP', 'Pro 3000 SFF', 'PC', '', '', 'A', '', 1, '2018-03-10 15:28:31', 'César Valenciano'),
(252, 'PC35', '00000', 'Firewall Sistemas', 'Jefe De Sistemas De Información', 'CORPORATIVO', 'SISTEMAS', 'nomail@mexq.com.mx', '9128686 130', '2018-01-26', 'MXL01503Z2', 'WG990LA#ABM', 'HP', '3000 Pro SFF', 'PC', 'N/A', '', 'I', 'Computadora HP 3000 Pro SFF - Dual Core E5400 - 320GB - 2GB - 22 en 1+ Monitor 20 - Cumplir funciones de Firewall y VPN - Sustituido por bajo rendimiento.', 1, '0000-00-00 00:00:00', ''),
(253, 'PC36', '01696', 'Azul Anahi Arteaga Quiñones', 'Ejecutivo De Cuenta', 'CORPORATIVO', 'ADMINISTRACIÓN DEL SERVICIO', 'aarteaga@mexq.com.mx', '9128686 106', '2018-01-23', 'MXL13705W8', '', 'HP', 'COMPAQ PRO 6200', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(254, 'PC37', '00000', 'YONATAN URRUTIA no_lname', 'no_position', '', 'Aguascalientes', 'mail@mexq.com.mx', '55555', '00-00-0000', '', '', '', '', 'PC', '', '', 'I', '', 1, '0000-00-00 00:00:00', ''),
(255, 'PC38', '00000', 'LUCY PEREZ no_lname', 'no_position', '', 'Aguascalientes', 'mail@mexq.com.mx', '55555', '00-00-0000', '', '', '', '', 'PC', '', '', 'I', '', 1, '0000-00-00 00:00:00', ''),
(256, 'PC39', '00000', 'ESCANER INFORMACION no_lname', 'no_position', '', 'Aguascalientes', 'mail@mexq.com.mx', '55555', '00-00-0000', '', '', '', '', 'PC', '', '', 'I', '', 1, '0000-00-00 00:00:00', ''),
(257, 'PC40', '00000', 'PRACTICANTE ADMON.SERV. no_lname', 'no_position', '', 'Aguascalientes', 'mail@mexq.com.mx', '55555', '00-00-0000', '', '', '', '', 'PC', '', '', 'I', '', 1, '0000-00-00 00:00:00', ''),
(258, 'PC41', '00000', 'WENDY SANCHEZ no_lname', 'no_position', '', 'Aguascalientes', 'mail@mexq.com.mx', '55555', '00-00-0000', '', '', '', '', 'PC', '', '', 'I', '', 1, '0000-00-00 00:00:00', ''),
(259, 'PC42', '00000', 'MARISOL LARA no_lname', 'no_position', '', 'Aguascalientes', 'mail@mexq.com.mx', '55555', '00-00-0000', '', '', '', '', 'PC', '', '', 'I', '', 1, '0000-00-00 00:00:00', ''),
(260, 'PC43', '08603', 'Norma Angelica Diaz Del Villar', 'Team Leader', 'CORPORATIVO', 'ADMINISTRACIÓN DEL SERVICIO', 'nadiaz@mexq.com.mx', '9128686', '2018-01-13', 'MXL9330SHG', 'VQ795LA#ABM', 'HP', 'Compaq dx2400', 'PC', '', '', 'I', 'Compaq dx2400, Procesador Intel Pentium E5300 (2,6 GHz), Memoria de 2GB PC2-6400 DDR2, D.D. de 320GB, SuperMulti DVD±R/RW, Red, Módem, Windows Vista Business', 1, '0000-00-00 00:00:00', ''),
(261, 'PC44', '00000', 'Auxiliar De Informacion 4', 'Informacion', 'CORPORATIVO', 'INFORMACION', 'informacion4@mexq.com.mx', '912 8686', '2018-02-21', 'MXL2032D36', '', '', '', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(262, 'PC45', '00169', 'Ana Laura  Calleja López', 'Practicante De Comunicación', 'CORPORATIVO', 'Recursos Humanos', 'practicante.comunicacion@mexq.com.m', '912.86.88 112', '2018-01-23', 'MXL01905LK', '', 'HP', '', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(263, 'PC46', '21591', 'Joel Guzman Martinez', 'Supervisor De Operaciones', 'PUE', 'FEDERAL MOGUL PISTONES', 'lider.pistonesfm@mexq.com.mx', '4491033356', '2018-02-19', 'MXL01905D0', 'WG990LA#ABM', 'HP', 'Pro 3000 SFF', 'PC', 'N/A', '', 'A', 'Anydesk: pc46-77@ad / Computadora HP 3000 Pro SFF - Dual Core E5400 - 320GB - 2.8GB - 22 en 1', 1, '0000-00-00 00:00:00', ''),
(264, 'PC47', '00000', 'Auxiliar  De Informacion 5', 'Informacion', 'CORPORATIVO', 'INFORMACION', 'informacion5@mexq.com.mx', '912 8686', '2018-02-21', 'MXL0221MW6', '', '', '', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(265, 'PC48', '22473', 'Paulina Elizabeth Valdez Lopez', 'Staff De Demandas', 'CORPORATIVO', 'Recursos Humanos', 'laboralesrh@mexq.com.mx', '9128686', '2018-01-23', '', '', 'HP', 'Pro 3000 SFF', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(266, 'PC49', '02200', 'Delia Alvarado Aguirre', 'Coordinador De Reclutamiento', 'AGS', 'Reclutamiento', 'reclutamiento.ags06@mexq.com.mx', '912 86 86', '2018-01-25', 'MXL0261Q5P', '', 'HP', 'Pro 3000 Small', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(267, 'PC50', '09666', 'Daisy Stephania Cansigno Gonzalez', 'Ejecutivo De Cuenta', 'CORPORATIVO', 'ADMINISTRACIÓN DEL SERVICIO', 'scansigno@mexq.com.mx', '9128686 120', '2018-01-13', 'MXL04007VC', 'XL365LA#ABM', 'HP', 'Pro 3000 SFF', 'PC', 'N/A', '', 'I', 'HP XL365LA#ABM Pro 3000 Small Form Factor PC, 2800 MHz, Intel Pentium Dual-Core, E6300, 2 MB, 1066 MHz, Intel G45S', 1, '0000-00-00 00:00:00', ''),
(268, 'PC51', '00117', 'Jennifer Guadalupe Mascorro Ibarra', 'Practicante De Laborales', 'CORPORATIVO', 'Recursos Humanos', 'plaborales@mexq.com.mx', '9128686 112', '2018-01-23', 'MXL04007TK', 'WG990LA#ABM', 'HP', 'Pro 3000 SFF', 'PC', '', '', 'A', 'Computadora HP 3000 Pro SFF - Dual Core E5400 - 320GB - 2GB - 22 en 1+ Monitor 20', 1, '0000-00-00 00:00:00', ''),
(269, 'PC52', '15786', 'Erika Maria Evelyn Saucedo Orduña ', 'Coordinadora Administrativa', 'AGS', 'Aguascalientes', 'esaucedo@mexq.com.mx', '9128686', '2018-01-19', 'MXL04007TL', '', 'HP', 'Prodesk 3000 SFF', 'PC', 'N/A', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(270, 'PC53', '16029', 'Gloria Araceli Gomez Cruz', 'Staff De Compras', 'CORPORATIVO', 'RECURSOS MATERIALES', 'a.gomezl@mexq.com.mx', '9128686', '2018-01-23', 'MXL040077K', '', 'HP', 'Pro 3000 SFF', 'PC', 'N/A', '', 'A', 'HP Pro 3000 - SFF - Core 2 Quad Q8400 2.66 GHz - 2 GB - 320 GB', 1, '0000-00-00 00:00:00', ''),
(271, 'PC54', '11305', 'Viridiana Perez Garcia', 'Ejecutivo De Cuenta', 'CORPORATIVO', 'ADMINISTRACIÓN DEL SERVICIO', 'vperez@mexq.com.mx', '9128686', '2018-03-10', 'MXL01503VP', 'WG990LA#ABM', 'HP', 'PRO 3000 SFF', 'PC', 'N/A', '', 'A', 'Computadora HP 3000 Pro SFF - Dual Core E5400 - 320GB - 2GB', 1, '2018-03-10 14:22:25', 'César Valenciano'),
(272, 'PC55', '00148', 'Roberto Carlos Vazquez Corpus', 'Practicante De Mci', 'CORPORATIVO', 'MCI', 'practicante_mci@mexq.com.mx', '9128686 131', '2018-01-25', 'MXL0480DHV', 'XX633LT#ABM', 'HP', '3000Pro MT', 'PC', 'N/A', '', 'A', '3000Pro - MT - Dual Core E5700 - 2GB - 500GB DVD RW - Win 7 Pro', 1, '0000-00-00 00:00:00', ''),
(273, 'PC56', '02083', 'Perla Yeralda Gonzalez Barcenas', 'Reclutador', 'AGS', 'Reclutamiento', 'reclutamiento.ags04@mexq.com.mx', '912 8686', '2018-01-25', 'MXL1011RGH', '', 'HO', 'Pro 3000 Small', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(274, 'PC57', '22009', 'Lesly Daniela Romo Rios', 'Auxiliar De Facturación', 'CORPORATIVO', 'FACTURACION', 'esoto@mexq.com.mx', '9128686 218', '2018-03-11', 'MXL1181RX1', 'LK554LT#ABM', 'HP', 'COMPAQ 4000 PRO SFF', 'PC', '', '', 'A', '', 1, '2018-03-11 14:52:16', 'César Valenciano'),
(275, 'PC58', '00165', 'Maria Melissa Padilla Valdez', 'Auxiliar De Facturación', 'CORPORATIVO', 'FACTURACION', 'facturacion@mexq.com.mx', '9128686 218', '2018-03-11', 'MXL1181RWY', 'LK554LT#ABM', 'HP', 'COMPAQ 4000 PRO SFF', 'PC', '', '', 'A', '', 1, '2018-03-11 14:52:27', 'César Valenciano'),
(276, 'PC59', '16438', 'Nina Maricela Roldan Garcia', 'Ejecutivo De Cuenta', 'CORPORATIVO', 'ADMINISTRACIÓN DEL SERVICIO', 'nroldan@mexq.com.mx', '9128686', '2018-03-11', 'MXL0500XJP', 'AT493AV#ABM', 'HP', 'COMPAQ PRO 6005 MT', 'PC', 'N/A', '', 'A', '', 1, '2018-03-11 14:47:43', 'César Valenciano'),
(277, 'PC60', '00000', 'Auxiliar De Informacion 17', 'Informacion', 'CORPORATIVO', 'Informacion', 'informacion17@mexq.com.mx', '912 86 86 ', '2018-02-12', 'MXL0221MW5', '', 'HP', '3000 Pro SFF', 'PC', '', '', 'A', 'Computadora HP 3000 Pro SFF - Dual Core E5400 - 320GB - 2GB', 1, '0000-00-00 00:00:00', ''),
(278, 'PC61', '00000', 'Ejecutiva De Cuenta 4', 'Ejecutiva De Cuenta 4', 'CORPORATIVO', 'ADMINISTRACIÓN DEL SERVICIO', 'mail@mexq.com.mx', '912 86 86', '2018-01-25', 'MXL0480TXQ', '', '', '', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(279, 'PC62', '00000', 'Ejecutiva  De Cuenta 20', 'Ejecutiva De Cuenta 20', 'CORPORATIVO', 'ADMINISTRACIÓN DEL SERVICIO', 'mail@mexq.com.mx', '9128686', '2018-03-10', 'MXL1140DHQ', 'LAT493AV#997', 'HP', 'Compaq 6005', 'PC', 'N/A', '', 'A', 'HP Compaq 6005 Pro - SFF - Athlon II X2 B24 3 GHz - 2 GB - 160 GB', 1, '2018-03-10 14:24:01', 'César Valenciano'),
(280, 'PC63', '10706', 'Iris Salas No_lname', 'No_position', '', 'Aguascalientes', 'mail@mexq.com.mx', '55555', '2018-01-26', '', '', '', '', 'PC', '', '', 'I', '', 1, '0000-00-00 00:00:00', ''),
(281, 'PC64', '00000', 'PAULINA ESPARZ no_lname', 'no_position', '', 'Aguascalientes', 'mail@mexq.com.mx', '55555', '00-00-0000', '', '', '', '', 'PC', '', '', 'I', '', 1, '0000-00-00 00:00:00', ''),
(282, 'PC65', '20032', 'Lorena Nayeli Valencia Fernandez', 'Ejecutivo De Cuenta', 'CORPORATIVO', 'ADMINISTRACIÓN DEL SERVICIO', 'l.valencia@mexq.com.mx', '9128686', '2018-03-10', 'MXL0442SRV', 'LE629LT#ABM', 'HP', 'COMPAQ 6005 PRO MT', 'PC', '', '', 'A', '', 1, '2018-03-10 15:16:39', 'César Valenciano'),
(283, 'PC66', '08101', 'Xochitl Higareda Real', 'Ejecutivo De Cuenta', 'CORPORATIVO', 'ADMINISTRACIÓN DEL SERVICIO', 'xhigareda@mexq.com.mx', '9128686 123', '2018-02-14', 'MXL0221HBG', '', 'HP', 'Pro 3000 SFF', 'PC', '', '', 'I', '', 1, '0000-00-00 00:00:00', ''),
(284, 'PC67', '0136', 'Erika Del Carmen Herrera Ledesma', 'Practicante De Administración Del Servicio', 'AGS', 'Aguascalientes', 'mflores@mexq.com.mx', '9128686', '2018-01-24', 'MXL045067J', '', 'HP', 'Compaq 6005', 'PC', 'N/A', '', 'A', 'Sistema operativo instalado: Windows 7 Professional 32bit\r\nProcesador: AMD Phenom II X2 B59 CPU\r\nDisco duro: 500GB SATA 3.5 1st Hard Drive\r\nMemoria: 4GB\r\nFactor de forma: Reducido', 1, '0000-00-00 00:00:00', ''),
(285, 'PC68', '00000', 'Auxiliar De Informacion 8', 'Informacion', 'CORPORATIVO', 'Informacion', 'informacion8@mexq.com.mx', '912 86 86  104', '2018-01-25', 'MXL10918JB', '', '', '', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(286, 'PC69', '00157', 'Samantha Veronica Domínguez Blanquet', 'Asesora De Ventas', 'AGS', 'AGUASCALIENTES', 'arubalcava@mexq.com.mx', '9128686 111', '2018-03-11', 'MXL2032QHH', 'A7H52LT#ABM', 'HP', 'Compaq 6200', 'PC', 'N/A', '', 'A', 'HP Compaq 6200 PRO SFF Intel Core i5-2400 3.10 GHz, Disk 250 GB, RAM 4 GB, DVD/RW, Windows 7 Home Premium SP1 64 o Windows 7 Professional SP1 64 hasta 29/07/2016 actualizable gratis a Windows 10. El HP Compaq 8100 Elite SFF Intel Core i5-2400 3.10 GH', 1, '2018-03-11 14:43:18', 'César Valenciano'),
(287, 'PC70', '19676', 'Mayela Fabiola Martinez Teran', 'Coordinador De Recursos Materiales', 'CORPORATIVO', 'RECURSOS MATERIALES', 'mteran@mexq.com.mx', '9128686 109', '2018-01-24', 'MXL2032QJ3', 'A7H52LT#ABM', 'HP', 'COMPAQ 6200 PRO SFF', 'PC', '', '', 'A', 'EQUIPO HP COMPAQ 6200 PRO SFF PC                            WINDOWS 7 PROFESIONAL 32 BITS SP1         INTEL® CORE™ i3-2120 CPU @ 3.30 GHZ             3.00 GB                                                                           456 GB HDD     ', 1, '0000-00-00 00:00:00', ''),
(288, 'PC71', '19905', 'Sofia Elizabeth Gomez Chavarria', 'Staff De Certificación Y Capacitación', 'CORPORATIVO', 'Recursos Humanos', 'sgomez@mexq.com.mx', '9128686 112', '2018-02-03', 'MXL1050K63', '', 'HP', 'Pro 3000 SFF', 'PC', '', '', 'I', '', 1, '0000-00-00 00:00:00', ''),
(289, 'PC72', '19637', 'Martha Alejandra Perez Ramos ', 'Ejecutiva De Cuenta', 'CORPORATIVO', 'ADMINISTRACIÓN DEL SERVICIO', 'aperez@mexq.com.mx', '912 86 86', '2018-03-10', 'MXL1370602', 'LK602LT#ABM', 'HP', 'Compaq 6200', 'PC', '', '', 'A', 'HP Compaq 6200 PRO SFF Intel Core i5-2400 3.10 GHz, Disk 250 GB, RAM 4 GB, DVD/RW, Windows 7 Home Premium SP1 64 o Windows 7 Professional SP1 64 hasta 29/07/2016 actualizable gratis a Windows 10. El HP Compaq 8100 Elite SFF Intel Core i5-2400 3.10 GH', 1, '2018-03-10 15:24:28', 'César Valenciano'),
(290, 'PC73', '08443', 'Laura Ivette Cardona Rodriguez', 'Auxiliar De Administracion Del Servicio', 'CORPORATIVO', 'ADMINISTRACIÓN DEL SERVICIO', 'lcardona@mexq.com.mx', '9128686 231', '2018-04-11', '', '', 'HP', 'Compaq 6200', 'MQ', '', '', 'A', '....', 1, '2018-04-11 16:57:12', 'Valenciano Fonseca Cesar '),
(291, 'PC74', '01846', 'Lorena Lizbeth Barajas Santillan', 'Auxiliar De Recutamiento', 'AGS', 'Reclutamiento', 'reclutamiento.ags07@mexq.com.mx', '912 86 86 ', '2018-01-25', 'MXL2032QJ5', '', 'HP', 'Compaq 6200 Pro SFF ', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(292, 'PC75', '10438', 'Cecilia Arriaga Moncivais', 'Nominista', 'CORPORATIVO', 'RECURSOS FINANCIEROS Y CONTABLES', 'carriaga@mexq.com.mx', '9128686 114', '2018-01-24', 'MXL2032QJJ', 'A7H52LT#ABM', 'HP', 'COMPAQ 6200 PRO SFF', 'PC', '258839', '2012-03-27', 'A', 'EQUIPO HP COMPAQ 6200 PRO SFF PC                            WINDOWS 7 PROFESIONAL 32 BITS SP1         INTEL® CORE™ i3-2120 CPU @ 3.30 GHZ             3.00 GB                                                                           456 GB HDD    \r\n', 1, '0000-00-00 00:00:00', ''),
(293, 'PC76', '00000', 'Auxiliar  De Informacion 13', 'Informacion 13', 'CORPORATIVO', 'Informacion', 'informacion13@mexq.com.mx', '912 86 86', '2018-01-25', 'MXL2091NZK', '', '', '', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(294, 'PC77', '21443', 'Evangelina Lopez Delgado', 'Auxiliar Administrativo', 'AGS', 'Aguascalientes', 'transportesags@mexq.com.mx', '9128686', '2018-01-23', 'MXL2032D3D', '', 'HP', 'Compaq 6200 Pro SFF', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(295, 'PC78', '00000', 'Equipo  Sala De Juntas', 'Sala De Juntas', 'CORPORATIVO', 'Direccion', 'invitado@mexq.com.mx', '55555', '2018-01-03', '', '', '', '', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(296, 'PC79', '00000', 'Ejecutiva  De Cuenta 24', 'Ejecutiva De Cuenta 24', 'CORPORATIVO', 'ADMINISTRACIÓN DEL SERVICIO', 'mail@mexq.com.mx', '55555', '2018-01-25', 'MXL2091NXT', '', 'HP', 'Compaq 6200 Pro SFF ', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(297, 'PC80', '02150', 'Aranxa Luna Trejo', 'Ejecutivo De Cuenta', 'CORPORATIVO', 'ADMINISTRACIÓN DEL SERVICIO', 'aluna@mexq.com.mx', '912 86 86', '2018-03-10', 'MXL2140X2L', 'A7H49LT#ABM', 'HP', 'Pro 3400 Series MT', 'PC', '', '', 'A', '', 1, '2018-03-10 15:16:00', 'César Valenciano'),
(298, 'PC81', '02144', 'Yolanda Virginia Aguirre Calderon (trafico De Red)', 'Jefe De Sistemas De Información', 'CORPORATIVO', 'Sistemas', 'yaguirre@mexq.com.mx', '9128686', '2018-01-26', 'MXL2140X3P', 'A7H49LT#ABM', 'HP', 'PRO 3400 MT', 'PC', 'N/A', '', 'A', 'Computadora HP 3400 MT - Pentium G840 - 2GB - 500GB', 1, '0000-00-00 00:00:00', ''),
(299, 'PC82', '01986', 'Sandra Lopez Macias (servidor Nomipaq)', 'Jefe De Recursos Financieros Contables', 'CORPORATIVO', 'RECURSOS FINANCIEROS Y CONTABLES', 'slopez@mexq.com.mx', '9128686', '2018-01-26', 'MXL2032QHQ', 'A7H52LT#ABM', 'HP', 'COMPAQ 6200 PRO SFF', 'PC', 'N/A', '', 'A', 'Servidor de NomiPAQ / IP: 192.168.2.203 / Computadora HP 6200 Pro, Procesador Intel Core i3-2120 (3.30 GHz), Memoria 3GB DDR3, D.D. de 500GB, Super Multi DVD±R/RW, Video Intel HD Graphics 2000, Windows 7 Professional (32 bit).', 1, '0000-00-00 00:00:00', ''),
(300, 'PC83', '00000', 'AUXILIAR SISTEMAS 1 no_lname', 'no_position', '', 'Aguascalientes', 'mail@mexq.com.mx', '55555', '00-00-0000', '', '', '', '', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(301, 'PC84', '01792', 'Nataly Denisse Chavez Martinez', 'Ejecutiva De Cuenta', 'CORPORATIVO', 'ADMINISTRACIÓN DEL SERVICIO', 'nchavez@mexq.com.mx', '912 86 86', '2018-01-25', 'MXL2460BQK', '', 'HP', 'Compaq 6300 Pro SFF ', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(302, 'PC85', '20785', 'Dulce Maria Diaz Palos', 'Practicante', 'AGS', 'Aguascalientes', 'padministrativo@mexq.com.mx', '9128686', '2018-01-19', 'MXL2460BQ1', 'B2D16LT#ABM', 'HP', 'Compaq Pro 6300 SFF', 'PC', '279584', '2013-03-01', 'A', 'HP COMPAQ PRO 6300 SFF 500GB HDD INTEL CORE i3-3220 3.30 GHz 4GB RAM 64x (REGULADOR 8 CNTCS/1300VA)\r\n', 1, '0000-00-00 00:00:00', ''),
(303, 'PC86', '00000', 'Auxiliar  De Informacion 12', 'Informacion', 'CORPORATIVO', 'Informacion', 'informacion12@mexq.com.mx', '55555', '2018-01-25', 'MX130228D1', '', '', '', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(304, 'PC87', '00174', 'Kenia Alexia Rodriguez Cruz', 'Practicante De Campañas', 'CORPORATIVO', 'ADMINISTRACIÓN DEL SERVICIO', 'krodriguez@mexq.com.mx', '9128686', '2018-03-10', 'MXL30225P4', 'D3H57LT#ABM', 'HP', 'Compaq 6300 Pro SFF ', 'PC', 'N/A', '', 'A', 'Computadora HP Pro 6300, Procesador Intel Core i3-3220 (3.3 GHz) 3ra Generación, Memoria 4 GB DDR3, D.D. de 500 GB, Video Intel HD Graphics 2500, DVD±R/RW DL, Red Gigabit, Windows 7 Professional (64 Bits), No Incluye Monitor.', 1, '2018-03-10 13:43:10', 'César Valenciano'),
(305, 'PC88', '01993', 'Adriana Isabel Calderon Valdez', 'Ejecutiva De Cuenta', 'CORPORATIVO', 'ADMINISTRACIÓN DEL SERVICIO', 'icalderon@mexq.com.mx', '912 86 86', '2018-01-25', 'MXL30228DG', '', 'HP', 'Compaq 6300 Pro SFF ', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(306, 'PC89', '17896', 'Esmeralda Segura Jimenez', 'Staff De Incidencias Y Reclutamiento', 'CORPORATIVO', 'Recursos Humanos', 'esegura@mexq.com.mx', '9128686', '2018-01-23', 'MXL30228DD', '', 'HP', 'Compaq Pro 6300 SFF', 'PC', 'N/A', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(307, 'PC90', '02144', 'Yolanda Virginia Aguirre Calderon (firewall Y Vpn)', 'Jefe De Sistemas De Información', 'CORPORATIVO', 'SISTEMAS', 'yaguirre@mexq.com.mx', '9128686 130', '2018-02-21', 'MXL30204V1', 'D3H57LT#ABM', 'HP', 'Compaq Pro 6300 SFF', 'PC', '', '', 'A', 'FIREWALL Y VPN / IP: 192.168.2.1 / Computadora HP Pro 6300, Procesador Intel Core i3-3220 (3.3 GHz) 3ra Generación, Memoria 4 GB DDR3, D.D. de 500 GB, Video Intel HD Graphics 2500, DVD±R/RW DL, Red Gigabit, Windows 7 Professional (64 Bits)', 1, '0000-00-00 00:00:00', ''),
(308, 'PC91', '11653', 'Monica Ivon De Luna Garcia', 'Auxiliar De Impuestos Y Obligaciones', 'CORPORATIVO', 'RECURSOS FINANCIEROS Y CONTABLES', 'mdeluna@mexq.com.mx', '9128686 114', '2018-01-15', 'MXL30228C1', '', 'HP', 'Compaq Pro 6300 SFF', 'PC', 'N/A', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(309, 'PC92', '11965', 'Ibis Sarahi Rivera Paredes', 'Auxiliar De Capacidad Instalada', 'CORPORATIVO', 'RECURSOS FINANCIEROS Y CONTABLES', 'irivera@mexq.com.mx', '9128686 114', '2018-01-15', 'MXL30228D8', '', 'HP', 'Compaq Pro 6300 SFF', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(310, 'PC93', '12268', 'Itzel Alexandra Rodriguez Perez', 'Staff Nominista', 'CORPORATIVO', 'RECURSOS FINANCIEROS Y CONTABLES', 'a.rodriguez@mexq.com.mx', '9128686 114', '2018-01-15', 'MXL30228CJ', '', 'HP', 'Prodesk 6300 SFF', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(311, 'PC94', '00000', 'Auxiliar  De Informacion 12', 'Informacion', 'CORPORATIVO', 'Informacion', 'informacion12@mexq.com.mx', '55555', '2018-01-25', 'MXL313060K', '', 'HP', '', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(312, 'PC95', '00000', 'Auxiliar  De Informacion 15', 'Informacion', 'CORPORATIVO', 'Informacion', 'informacion15@mexq.com.mx', '912 86 86', '2018-01-25', 'MXL31305ZM', '', '', '', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(313, 'PC96', '00000', 'FIREWALL MEXQ no_lname', 'no_position', '', 'Aguascalientes', 'mail@mexq.com.mx', '55555', '00-00-0000', '', '', '', '', 'PC', '', '', 'I', '', 1, '0000-00-00 00:00:00', ''),
(314, 'PC97', '15612', 'Carolina Alejandra Rodriguez Ortiz', 'Staff De Recursos Materiales', 'CORPORATIVO', 'RECURSOS MATERIALES', 'c.rodriguez@mexq.com.mx', '9128686', '2018-01-23', 'JZ3M4V1', '', 'DELL', 'OPTIPLEX 790', 'PC', 'N/A', '', 'A', 'Dell OptiPlex 790 - DT - Core i5 2400 3.1 GHz - 4 GB - 500 GB', 1, '0000-00-00 00:00:00', '');
INSERT INTO `registry` (`id`, `code`, `id_employee`, `employee_name`, `position`, `branch`, `workstation`, `mail`, `phone`, `date`, `serial`, `product`, `brand`, `model`, `type`, `invoicenbr`, `invoicedate`, `status`, `comment`, `active`, `date_update`, `user_update`) VALUES
(315, 'PC98', '16410', 'Viridiana Berenice Zavala Ibarra', 'Staff Contable', 'CORPORATIVO', 'RECURSOS FINANCIEROS Y CONTABLES', 'vzavala@mexq.com.mx', '9128686', '2018-01-23', 'JZ3MNS1', '', 'DELL', '', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(316, 'PC99', '00000', 'Ericka Fabiola Esparza Flores', 'Reclutador', 'AGS', 'Reclutamiento', 'reclutamiento.ags02@mexq.com.mx', '912 86 86', '2018-01-25', 'J23M4V1', '', '', 'OPTIPLEX 790', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(317, 'PC100', '06868', 'Garcia Barcenas Rocio Ayerim', 'Team Leader De Impuestos Y Obligaciones', 'CORPORATIVO', 'RECURSOS FINANCIEROS Y CONTABLES', 'rgarcia@mexq.com.mx', '9128686 114', '2018-01-15', 'MXL41007V0', '', 'HP', 'Compaq Pro 6305 SFF', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(318, 'PC101', '00000', 'Practicante  Administración Del Servicio', 'Practicante De Administración Del Servicio', 'CORPORATIVO', 'ADMINISTRACIÓN DEL SERVICIO', 'admonserv@mexq.com.mx', '9128686', '2018-01-23', 'MXL4240CHM', '', '', 'PRO 200 G1 MT', 'PC', '', '', 'A', 'Computadora HP G1 200, Intel Celeron J1800 2.41GHz, 4GB, 500GB, Ubuntu Linux 64-bit, Negro', 1, '0000-00-00 00:00:00', ''),
(319, 'PC102', '00152', ' Luz Fernanda Rodriguez Sánchez', 'Auxiliar De Desarrollo Humano', 'CORPORATIVO', 'Recursos Humanos', 'auxiliardh@mexq.com.mx', '9128686 112', '2018-01-23', 'MXL4310HXY', '', 'HP', '', 'PC', '', '', 'A', 'Monitor: HP ProDisplay P202 NS: CNC64902CB', 1, '0000-00-00 00:00:00', ''),
(320, 'PC103', '01322', ' Jessica Guadalupe Sanchez Esparza', 'Coordinador De Desarrollo Humano', 'AGS', 'Reclutamiento', 'reclutamiento.ags08@mexq.com.mx', '912 86 86', '2018-01-25', 'MXL4240CK7', '', 'HP', '200 G1 MT', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(321, 'PC104', '02144', 'Aguirre Calderón Yolanda Virginia', 'Jefe De Sistemas De Informacion', 'CORPORATIVO', 'SISTEMAS', 'yaguirre@mexq.com.mx', '9128686 130', '2018-01-31', 'MXL44241HBW', 'E3T61L#ABM', 'HP', '600 SFF', 'PC', '321263', '2015-04-10', 'A', 'HP DESKTOP/HP-600 SFF/CI3-4330/4GB RAM/500 GB HDD/WINDOWS 7 PRO X64\r\n', 1, '0000-00-00 00:00:00', ''),
(322, 'PC105', '19848', 'Tania Karina Arellano Cleto', 'Auxiliar Administrativo', 'AGS', 'Aguascalientes', 'tarellano@mexq.com.mx', '9128686', '2018-01-31', 'MXL41502P6', 'E3T61L#ABM', 'HP', 'Prodesk 600 G1 SFF', 'PC', '321259', '2015-04-10', 'A', 'HP DESKTOP/HP-600 SFF/CI3-4330/4GB RAM/500 GB HDD/WINDOWS 7 PRO X64\r\n', 1, '0000-00-00 00:00:00', ''),
(323, 'PC106', '16390', 'Maria De Nazareth Hernandez Araujo ', 'Auxiliar Administrativo', 'AGS', 'Aguascalientes', 'auxiliar.administrativo@mexq.com.mx', '9128686', '2018-01-19', 'MXL5151JJJ', '', 'HP', 'Prodesk 405 MT', 'PC', '323890', '2015-06-05', 'A', 'HP DESKTOP/405 MT/A4-6250/4G RAM/500 GB HDD/WINDOWS 7 PRO X64\r\n', 1, '0000-00-00 00:00:00', ''),
(324, 'PC107', '08101', 'Xochitl Higareda Real', 'Ejecutivo De Cuenta', 'CORPORATIVO', 'ADMINISTRACIÓN DEL SERVICIO', 'xhigareda@mexq.com.mx', '9128686 121', '2018-02-15', 'MXL5151JJF', 'K1L89LT#ABM', 'HP', '405 MT', 'PC', '323890', '2015-06-05', 'A', 'HP DESKTOP/405 MT/A4-6250/4G RAM/500 GB HDD/WINDOWS 7 PRO X64\r\n', 1, '0000-00-00 00:00:00', ''),
(325, 'PC108', '19594', 'Ana Cecilia Salas Vazquez', 'Auxiliar De Nominas', 'CORPORATIVO', 'RECURSOS FINANCIEROS Y CONTABLES', 'asalas@mexq.com.mx', '9128686 114', '2018-01-15', 'MXL50620Y9', 'K6Q39LT#ABM', 'HP', 'Prodesk 600 G1 SFF', 'PC', '331143', '2015-10-29', 'A', 'HP PRODESK 600 G1 SFF/WINDOWS 7 PRO x64/8 GB RAM/ 1 TB HDD/INTEL i3\r\n', 1, '0000-00-00 00:00:00', ''),
(326, 'PC109', '21688', 'Mariana Guadalupe Gaytan Ortiz', 'Auxiliar Administrativo', 'AGS', 'Aguascalientes', 'materialesags@mexq.com.mx', '9128686', '2018-01-25', 'MXL5062TJ', '', 'HP', 'Prodesk 600 G1 SFF', 'PC', 'N/A', '', 'A', 'Computadora HP Prodesk 600 G1 SFF - Core i3-4590 - 8GB - 500GB', 1, '0000-00-00 00:00:00', ''),
(327, 'PC110', '00000', 'Auxiliar Información 9', 'Auxiliar De Información', 'CORPORATIVO', 'INFORMACION', 'informacion9@mexq.com.mx', '9128686 104', '2018-03-03', 'MXL4281FSG', '', 'HP', 'HP 200 G1 MT', 'PC', '', '', 'A', 'HP 200 G1 - micro tower - Pentium J2850 2.41 GHz - 4 GB - 500 GB', 1, '2018-03-03 11:45:16', 'César Valenciano'),
(328, 'PC111', '11426', 'Salas Martinez Issac Diogenesis', 'Staff Financiero', 'CORPORATIVO', 'RECURSOS FINANCIEROS Y CONTABLES', 'dsalas@mexq.com.mx', '9128686 217', '2018-01-03', '', '', 'HP', '', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(329, 'PC112', '02894', 'Gomez Medina Adrian', 'Coordinador De Nominas', 'CORPORATIVO', 'RECURSOS FINANCIEROS Y CONTABLES', 'agomez@mexq.com.mx', '9128686 114', '2018-01-15', 'MXL50620Y2', 'K6Q39LT#ABM', 'HP', 'Prodesk 600 G1 SFF', 'PC', '331143', '2015-10-29', 'A', 'HP PRODESK 600 G1 SFF/WINDOWS 7 PRO x64/8 GB RAM/ 1 TB HDD/INTEL i3\r\n', 1, '0000-00-00 00:00:00', ''),
(330, 'PC113', '02102', 'Mariana Itzel Cortes Campos ', 'Reclutador', 'AGS', 'Reclutamiento', 'reclutamiento.ags09@mexq.com.mx', '912 86 86', '2018-01-25', 'MXL2460BMG', '', 'HP', 'Compaq 6300 Pro SFF ', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(331, 'PC114', '19905', 'Sofia Elizabeth Gomez Chavarria', 'Staff De Certificación Y Capacitación', 'CORPORATIVO', 'RECURSOS HUMANOS', 'sgomez@mexq.com.mx', '9128686 115', '2018-04-03', '3CR61805PS', 'P7P95LT#ABM', 'HP', '280 G1', 'MQ', 'AR91632', '2016-10-24', 'I', 'Desktop HP Slim Tower 280, Procesador Intel Core i3 4170 (3.7 GHz), Memoria de 4GB DDR3, Disco Duro 500GB, Video Intel HD Graphics 4400, Unidad Óptica DVD±R/RW, S.O. Windows 10 Pro/Windows 7 Pro / pc114-rh@ad', 1, '2018-04-03 17:59:50', 'César Valenciano'),
(332, 'PC115', '14918', 'Sonia Arriaga Moncivais', 'Auxiliar De Informacion', 'CORPORATIVO', 'RECURSOS FINANCIEROS Y CONTABLES', 'pcervantes@mexq.com.mx', '9128686 109', '2018-01-31', '3CR1805N8', 'V2V81LT#ABM', 'HP', '280 G1', 'PC', 'AR91632', '2016-10-24', 'A', 'Desktop HP Slim Tower 280, Procesador Intel Core i3 4170 (3.7 GHz), Memoria de 4GB DDR3, Disco Duro 500GB, Video Intel HD Graphics 4400, Unidad Óptica DVD±R/RW, S.O. Windows 10 Pro/Windows 7 Pro', 1, '0000-00-00 00:00:00', ''),
(333, 'PC116', '17663', 'Padilla Valdez Blanca Esthela', 'Ejecutivo De Cuenta', 'CORPORATIVO', 'ADMINISTRACIÓN DEL SERVICIO', 'bpadilla@mexq.com.mx', '9128686 122', '2018-01-31', '3CR61805NP', 'V2V81LT#ABM', 'HP', '280 G1', 'PC', 'AR91632', '2016-10-24', 'A', 'Desktop HP Slim Tower 280, Procesador Intel Core i3 4170 (3.7 GHz), Memoria de 4GB DDR3, Disco Duro 500GB, Video Intel HD Graphics 4400, Unidad Óptica DVD±R/RW, S.O. Windows 10 Pro/Windows 7 Pro\r\n', 1, '0000-00-00 00:00:00', ''),
(334, 'PC117', '10706', 'Salas Chavez Iris Lucero', 'Staff De Compras', 'CORPORATIVO', 'RECURSOS FINANCIEROS Y CONTABLES', 'isalas@mexq.com.mx', '9128686 108', '2018-01-03', '3CR62106CC', 'V2V81LT#ABM', 'HP', '280 G1', 'PC', 'PA000983', '2016-11-08', 'A', 'DESKTOP / HP / 280 G1/ PROCESADOR: CORE I3-4170 / SO: WINDOWS 7 PRO x64 / DD: 500 GB / RAM: 4GB', 1, '0000-00-00 00:00:00', ''),
(335, 'PC118', '00000', 'Auxiliar De Información 14', 'Auxiliar De Informacion', 'CORPORATIVO', 'INFORMACION', 'mail@mexq.com.mx', '9128686 104', '2018-01-31', 'MXL50620R8', '', 'HP', '', 'PC', '', '', 'A', '', 1, '0000-00-00 00:00:00', ''),
(336, 'PC119', '01948', 'Michell Alejandra Hernandez Casas', 'Capturista De Altas', 'AGS', 'Reclutamiento', 'reclutamiento.ags03@mexq.com.mx', '912 86 86', '2018-01-31', '3CR62201FW', '', 'HP', '280 G1 ST Bussiness ', 'PC', 'AG2263', '2017-01-20', 'A', '', 1, '0000-00-00 00:00:00', ''),
(337, 'PC120', '22008', 'Delia Alvarado Aguirre', 'Coordinador De Reclutamiento', 'AGS', 'Reclutamiento', 'reclutamiento.ags06@mexq.com.mx', '912 86 86', '2018-01-31', '3CR553024D', '', 'HP', '280 G1 ST Bussiness ', 'PC', 'AG2263', '2017-01-20', 'A', '', 1, '0000-00-00 00:00:00', ''),
(338, 'PC121', '20565', 'Areli De La Luz Barcenas Jasso', 'Staff De Recursos Materiales', 'CORPORATIVO', 'RECURSOS MATERIALES', 'mtinoco@mexq.com.mx', '9128686', '2018-01-23', '4C364912BK', '', 'HP', '280 G2 SFF', 'PC', 'N/A', '', 'A', 'Desktop HP 280 G2 SFF, Procesador Intel Core i3 6100 (3.70 GHz), Memoria de 4GB DDR4, Disco Duro de 1TB, Video Intel HD Graphics 530, Unidad Óptica DVD±R/RW, S.O. Windows 10 Pro (64 Bits)', 1, '0000-00-00 00:00:00', ''),
(339, 'PC122', '19590', 'Villa Macias Leslie Karina', 'Staff Fiscal', 'CORPORATIVO', 'RECURSOS FINANCIEROS Y CONTABLES', 'lvilla@mexq.com.mx', '9128686 115', '2018-01-23', '4CE64911GP', '', 'HP', '280 G2 SFF', 'PC', 'N/A', '', 'A', 'Desktop HP 280 G2 SFF, Procesador Intel Core i3 6100 (3.70 GHz), Memoria de 4GB DDR4, Disco Duro de 1TB, Video Intel HD Graphics 530, Unidad Óptica DVD±R/RW, S.O. Windows 10 Pro (64 Bits)', 1, '0000-00-00 00:00:00', ''),
(340, 'PC123', '21366', 'Ivonne Araceli Maldonado Rosales', 'Staff De Transporte', 'CORPORATIVO', 'RECURSOS FINANCIEROS Y CONTABLES', 'imaldonado@mexq.com.mx', '9128686 109', '2018-01-31', '4CE6420ZLK', '', 'HP', '280 G2 SFF', 'PC', 'PA001852', '2017-04-21', 'A', 'Desktop HP 280 G2 SFF, Procesador Intel Core i3 6100 (3.70 GHz), Memoria de 4GB DDR4, Disco Duro de 1TB, Video Intel HD Graphics 530, Unidad Óptica DVD±R/RW, S.O. Windows 10 Pro (64 Bits)', 1, '0000-00-00 00:00:00', ''),
(341, 'PC124', '09666', 'Daisy Stephania Cansigno Gonzalez', 'Ejecutivo De Cuenta', 'CORPORATIVO', 'ADMINISTRACIÓN DEL SERVICIO', 'scansigno@mexq.com.mx', '9128686 120', '2018-01-31', '4CE7223647', 'W5Y89LT#ABM', 'HP', '280 G2', 'PC', 'PA002952', '2017-11-13', 'A', 'Desktop HP 280 G2 SFF, Procesador Intel Core i5 6500 (hasta 3.60 GHz), Memoria de 4GB DDR4, Disco Duro de 1TB, Video Intel HD Graphics 530, Unidad Óptica DVD±R/RW, S.O. Windows 10 Pro (64 Bits)', 1, '0000-00-00 00:00:00', ''),
(342, 'PC125', '08125', 'Maria Nah Yeli Corzo Ramirez', 'Team Leader', 'CORPORATIVO', 'ADMINISTRACIÓN DEL SERVICIO', 'ncorzo@mexq.com.mx', '9128686 220', '2018-01-31', '4CE72235F8', 'W5Y89LT#ABM', 'HP', '280 G2', 'PC', 'PA002952', '2017-11-13', 'A', 'Desktop HP 280 G2 SFF, Procesador Intel Core i5 6500 (hasta 3.60 GHz), Memoria de 4GB DDR4, Disco Duro de 1TB, Video Intel HD Graphics 530, Unidad Óptica DVD±R/RW, S.O. Windows 10 Pro (64 Bits)', 1, '0000-00-00 00:00:00', ''),
(343, 'PC126', '13225', 'Jessica Guadalupe Sanchez Esparza', 'Coordinador De Desarrollo Humano', 'CORPORATIVO', 'Recursos Humanos', 'jessica.sanchez@mexq.com.mx', '9128686 112', '2018-01-31', '4CE7091HGY', 'W5Y88LT#ABM', 'HP', '280 G2', 'MQ', 'PA003109', '2017-12-06', 'A', 'pc126-rh@ad - Desktop HP 280 G2 SFF, Procesador Intel Core i3 6100 (3.70 GHz), Memoria de 4GB DDR4, Disco Duro de 1TB, Video Intel HD Graphics 530, Unidad Óptica DVD±R/RW, S.O. Windows 10 Pro (64 Bits) - Pantalla HP Prodisplay P202 NS: 6CM64809XF', 1, '0000-00-00 00:00:00', ''),
(344, 'PC127', '00171', 'Diana Helena Parga Guillen', 'Practicante De Mesa Redonda', 'CORPORATIVO', 'Recursos Humanos', 'retencion.rh@mexq.com.mx', '9128686 112', '2018-01-31', '4CE7091HGB', 'W5Y88LT#ABM', 'HP', '280 G2', 'MQ', 'PA003109', '2017-12-06', 'A', 'pc127-rh@ad - Desktop HP 280 G2 SFF, Procesador Intel Core i3 6100 (3.70 GHz), Memoria de 4GB DDR4, Disco Duro de 1TB, Video Intel HD Graphics 530, Unidad Óptica DVD±R/RW, S.O. Windows 10 Pro (64 Bits)', 1, '0000-00-00 00:00:00', ''),
(345, 'PC128', '18118', 'Maria Del Socorro Esparza Hurtado', 'Team Leader De Capacitación Y Certificación', 'CORPORATIVO', 'Recursos Humanos', 'sesparza@mexq.com.mx', '9128686 112', '2018-01-31', '4CE7091HVM', 'W5Y88LT#ABM', 'HP', '280 G2', 'PC', 'PA003109', '2017-12-06', 'A', 'pc128-rh@ad - Desktop HP 280 G2 SFF, Procesador Intel Core i3 6100 (3.70 GHz), Memoria de 4GB DDR4, Disco Duro de 1TB, Video Intel HD Graphics 530, Unidad Óptica DVD±R/RW, S.O. Windows 10 Pro (64 Bits)', 1, '0000-00-00 00:00:00', ''),
(346, 'PC129', '19905', 'Sofia Elizabeth Gomez Chavarria', 'Staff De Certificación Y Capacitación', 'CORPORATIVO', 'RECURSOS HUMANOS', 'sgomez@mexq.com.mx', '9128686 112', '2018-04-03', '4CE7091HQF', 'W5Y88LT#ABM', 'HP', '280 G2', 'PC', 'PA003109', '2017-12-06', 'A', 'mq129-rh@ad - Desktop HP 280 G2 SFF, Procesador Intel Core i3 6100 (3.70 GHz), Memoria de 4GB DDR4, Disco Duro de 1TB, Video Intel HD Graphics 530, Unidad Óptica DVD±R/RW, S.O. Windows 10 Pro (64 Bits)', 1, '2018-04-03 17:59:38', 'César Valenciano'),
(347, 'MQ216', '00170', 'Manuel Longoria', 'Practicante De Sistemas', 'CORPORATIVO', 'SISTEMAS', 'practicante.sistemas@mexq.com.mx', '912-86-88 130', '2018-02-21', 'NXGCWAL0117102795F7600', 'NX.GCWAL.011', 'Acer', 'Aspire E14', 'MQ', '', '1999-01-01', 'A', 'Laptop Acer Aspire E5-475-52ZU - 14" - Intel Core i5-7200u - 12GB - 1TB + 128GB SSD - Windows 10 Home', 1, '0000-00-00 00:00:00', ''),
(350, 'MQ217', '21528', 'Elizabeth Rojas Martinez', 'Auxiliar Administrativo', 'MOR', 'ELRING KLINGER', 'metropolitanasur.rh@mexq.com.mx', '449 243 8989', '2018-03-13', 'NXGPAAL00728016FF3400', 'NX.GPAAL.002', 'ACER', 'A515-51-31ZZ', 'MQ', 'POSE45211456', '2017-12-07', 'A', 'Laptop Acer Aspire A515-51 15.6 Pulgadas Intel Core i3 8 GB RAM 1 TB Disco Duro', 1, '2018-03-13 10:46:08', 'César Valenciano'),
(351, 'MQ218', '17789', 'Jaqueline Azurim Aguilar Avila ', 'Auxiliar Administrativo', 'PUE', 'PUEBLA', 'auxiliar.puebla02@mexq.com.mx', '555555', '2018-01-31', 'NXGPAAL00278016B03400', 'NXGPAAL.002', 'ACER', 'Aspire E5 - A515-51-', 'MQ', 'POSE45211882', '2017-12-07', 'A', 'Laptop Acer Aspire A515-51 15.6 Pulgadas Intel Core i3 8 GB RAM 1 TB Disco Duro', 1, '0000-00-00 00:00:00', ''),
(352, 'MQ219', '18102', 'Sergio Hernandez Angeles', 'Ingeniero De Calidad Del Servicio Sqes', 'PUE', 'PUEBLA', 'correo@mexq.com.mx', '555555', '2018-01-31', 'NXGPAAL002728016F816F23400', 'NX.GPAAL.002', 'ACER', 'Aspire E5 - A515-51-', 'MQ', 'POSE45211882', '2017-12-07', 'A', 'Laptop Acer Aspire A515-51 15.6 Pulgadas Intel Core i3 8 GB RAM 1 TB Disco Duro', 1, '0000-00-00 00:00:00', ''),
(353, 'MQ220', '22432', 'Martha Paola Zavala Acevedo', 'Asesor Comercial', 'CORPORATIVO', 'Ventas', 'm.zavala@mexq.com.mx', '9128686 111', '2018-01-11', 'CND7373ZP9', '1GR84LA#ABM', 'HP', '15-bs011la', 'MQ', 'AIG1430135', '2018-01-10', 'A', 'HP - Laptop 15-BS011LA de 15,6" - Intel Core i3-6006U - Memoria 8 GB - Disco Duro de 1 TB - Plata', 1, '0000-00-00 00:00:00', ''),
(354, 'PC130', '14571', 'Denisse Estrada Acosta', 'Staff Financiero', 'CORPORATIVO', 'RECURSOS FINANCIEROS Y CONTABLES', 'destrada@mexq.com.mx', '9128686 107', '2018-01-11', '4CE7311JXH', 'W5Y89LT#ABM', 'HP', '280 G2', 'PC', '', '1999-01-01', 'A', 'Desktop HP 280 G2 SFF, Procesador Intel Core i5 6500 (hasta 3.60 GHz), Memoria de 4GB DDR4, Disco Duro de 1TB, Video Intel HD Graphics 530, Unidad Óptica DVD±R/RW, S.O. Windows 10 Pro (64 Bits)', 1, '0000-00-00 00:00:00', ''),
(355, 'MQ221', '15299', 'Oscar Alberto Blanco Urita', 'Lider De Operaciones', 'MET', 'FEDERAL MOGUL NAUCALPAN', 'oblanco@mexq.com.mx', '555555', '2018-02-09', '1M7QTJ2', 'TDXFC', 'DELL', 'INSPIRON 14', 'MQ', 'E1010943849', '2018-02-06', 'A', 'Características\r\nProcesador: Intel Core i3 6006U (Dual-core / 2000 MHz)\r\nRAM: 4GB DDR4 (2133 MHz)\r\nPantalla: LED 14.0" (1366x768)\r\nBateria: 4 celdas (40000 mWh)\r\nAlmacenamiento: HDD 1TB (5400rpm)\r\nTarjetas de video: Intel HD Graphics 520 (Integrada)\r', 1, '0000-00-00 00:00:00', ''),
(356, 'MQ222', '10766', 'Diana Maria Barragan Sotelo', 'Auxiliar De Informacion', 'SON', 'FORD MOTOR HERMOSILLO', 'dbarragan@mexq.com.mx', '555555', '2018-02-09', 'CL7QTJ2', 'TDXFC', 'DELL', 'INSPIRON 14', 'MQ', 'E1010943849', '2018-02-06', 'A', 'Características\r\nProcesador: Intel Core i3 6006U (Dual-core / 2000 MHz)\r\nRAM: 4GB DDR4 (2133 MHz)\r\nPantalla: LED 14.0" (1366x768)\r\nBateria: 4 celdas (40000 mWh)\r\nAlmacenamiento: HDD 1TB (5400rpm)\r\nTarjetas de video: Intel HD Graphics 520 (Integrada)\r', 1, '0000-00-00 00:00:00', ''),
(357, 'MQ223', '12823', 'Juan Ramon Flores Martinez', 'A Supervisor De Operaciones', 'AGS', 'JATCO MEXICO', 'jflores@mexq.com.mx', '9128686', '2018-02-17', 'FL7QTJ2', 'TDXFC ', 'DELL', 'INSPIRON 14', 'MQ', 'E1010943849', '2018-02-06', 'A', 'Laptop Dell Inspiron 14 Serie 3000 De 14 plg Intel Core i3-5005U', 1, '0000-00-00 00:00:00', ''),
(358, 'MQ224', '19869', 'Rocio Guadalupe Jaramillo Falcon', 'A Supervisor De Operaciones', 'AGS', 'ITW AUTOMOTIVE AGUASCALIENTES', 'rjaramillo@mexq.com.mx', '4492053456', '2018-02-13', 'CND744BCQ5', '1GR84LA#ABM', 'HP', '15-BS011LA', 'MQ', 'AIG1442693', '2018-02-20', 'A', 'HP - Laptop 15-BS011LA de 15,6" - Intel Core i3-6006U - Memoria 8 GB - Disco Duro de 1 TB - Plata', 1, '0000-00-00 00:00:00', ''),
(359, 'MQ225', '19756', 'Cesar Armando Velazquez Menez', 'Supervisor De Operaciones', 'GTO', 'HAL ALUMINIUM', 'cvelazquez@mexq.com.mx', '9128686', '2018-03-01', 'CND744BCX5', '1GR84LA#ABM', 'HP', '15-BS011LA', 'MQ', 'AIG1442693', '2018-02-02', 'A', 'HP - Laptop 15-BS011LA de 15,6" - Intel Core i3-6006U - Memoria 8 GB - Disco Duro de 1 TB - Plata\r\nsupervisor_hal@mexq.com.mx', 1, '2018-03-01 08:35:11', 'César Valenciano'),
(360, 'MQ226', '03432', 'Miguel Hernandez Flores', 'Supervisor De Operaciones', 'JAL', 'SKF SEALING SOLUTIONS MEXICO', ' miguelhernandez@mexq.com.mx', '9128686', '2018-02-15', 'CND744BD5S', '1GR84LA#ABM', 'HP', '15-BS011LA', 'MQ', 'AIG1442693', '2018-02-02', 'A', 'HP - Laptop 15-BS011LA de 15,6" - Intel Core i3-6006U - Memoria 8 GB - Disco Duro de 1 TB - Plata', 1, '0000-00-00 00:00:00', ''),
(361, 'PC131', '21106', 'Maricruz Lopez Davila', 'Staff De Atencion', 'CORPORATIVO', 'Recursos Humanos', 'incidencias@mexq.com.mx', '9128686 112', '2018-02-09', '4CE7332J42', '3FG68LT#ABM', 'HP', '280 G2', 'PC', 'A312', '2018-02-08', 'A', '3FG68LT Computadora HP 280 G2 SFF Intel Ci3-7100 4GB 1TB DVD-RW Windows 10 Pro', 1, '0000-00-00 00:00:00', ''),
(362, 'MQ227', '01900', 'Juan Jose Bojalil Perez', 'Supervisor De Operaciones', 'MET', 'ELRING KLINGER', 'nomail@mexq.com.mx', '555555', '2018-02-14', 'CND744BD97', '1GR84LA#ABM', 'HP', '15-bs011la', 'MQ', 'AIG1442693', '2018-02-02', 'A', 'LAPTOP HP 15-BS011LA 15.6 INTEL CORE i3-6006U, 8GB, 1TB DD, WIN 10 HOME', 1, '0000-00-00 00:00:00', ''),
(363, 'MQ228', '05641', 'Sergio Barrientos Flores', 'B Supervisor General', 'AGS', 'EXEDY DINAX MEXICO', 'nomail@mexq.com.mx', '55555', '2018-02-15', 'NXGR5AL002721219027600', 'NX.GR5AL.002', 'ACER', 'ASPIRE 3', 'MQ', 'AR121302', '2018-02-14', 'A', 'Laptop Acer Aspire 3 A315-31-C7W1 - 15.6" - Intel Celeron N3350 - 4GB - 500GB - Windows 10 Home - Rojo\r\nEquipo con cargo a cliente Exedy', 1, '0000-00-00 00:00:00', ''),
(364, 'MQ229', '05641', 'Sergio Barrientos Flores', 'B Supervisor General', 'AGS', 'EXEDY DINAX MEXICO', 'nomail@mexq.com.mx', '555555', '2018-02-15', 'NXGR5AL002721214BB7600', 'NX.GR5AL.002', 'ACER', 'ASPIRE 3', 'MQ', 'AR121302', '2018-02-14', 'A', 'Laptop Acer Aspire 3 A315-31-C7W1 - 15.6" - Intel Celeron N3350 - 4GB - 500GB - Windows 10 Home - Rojo\r\nEquipo con cargo a cliente Exedy.', 1, '0000-00-00 00:00:00', ''),
(365, 'MQ230', '01887', 'Fernando Lujan Salazar', 'Jefe De Aseguramiento De Calidad', 'CORPORATIVO', 'CALIDAD', 'flujan@mexq.com.mx', '555555', '2018-02-20', '5CG7281909', '1NL66LA#ABM', 'HP', '240 G5', 'MQ', 'PB015394', '2018-02-15', 'A', 'Laptop HP 240 G5: Procesador Intel Core i5 6200U (hasta 2.80 GHz), Memoria de 8GB DDR4, Disco Duro de 1TB, Pantalla de 14" LED, Video Intel HD Graphics 520, Unidad Óptica No Incluida, S.O. Windows 10 Home (64 Bits)', 1, '0000-00-00 00:00:00', ''),
(366, 'MQ231', '05634', 'Elena Guadalupe Aguirre Rodriguez ', 'Coordinador De Informacion', 'CORPORATIVO', 'INFORMACION', 'eaguirre@mexq.com.mx', '9128686 104', '2018-02-20', 'NXGD0AL0467320AAC33400', 'NX.GD0AL.046', 'ACER', 'ASPIRE ES 15', 'MQ', 'PB015395', '2018-02-15', 'A', 'Laptop Acer Aspire ES1-572-3230: Procesador Intel Core i3 6006U (2.0 GHz), Memoria de 4GB DDR4, Disco Duro de 1TB, Pantalla de 15.6" LED, Video HD Graphics 520, S.O. Windows 10 Home (64 Bits)', 1, '0000-00-00 00:00:00', ''),
(367, 'MQ232', '01885', 'Maria Guadalupe Jimenez Gutiérrez', 'Subdirector Comercial', 'CORPORATIVO', 'GERENCIA CORPORATIVA', 'ljimenez@mexq.com.mx', '9128686 125', '2018-02-23', 'MP1B3MJS', 'MPNXB772606J ', 'LENOVO', 'Yoga 510', 'MQ', 'A3686', '2018-02-20', 'A', 'LENOVO YOGA 510-14ISK i5/8/1TB\r\n- Back and Sync (Respaldo en la nube)\r\n- VPN (subdirector_comercial)', 1, '0000-00-00 00:00:00', ''),
(368, 'MQ233', '01986', 'Sandra Lopez Macias', 'Jefe De Recursos Financieros Contables', 'CORPORATIVO', 'RECURSOS FINANCIEROS Y CONTABLES', 'slopez@mexq.com.mx', '9128686 114', '2018-03-05', 'CND75161L4', '1GR88LA#ABM', 'HP', '15-bs015la', 'MQ', 'A3693', '2018-02-28', 'A', 'Laptop HP Pavilion 15-bs015la - 15.6" - Core I5 7200u - 8GB - 1TB - AMD Radeon 2GB - Windows 10 Home - Plata / mq234@ad / Respaldo en la nube de Google activado / VPN: finanzas1 / Dynamics SL 2011 Instalado', 1, '2018-03-05 14:54:10', 'César Valenciano'),
(369, 'MQ234', '16028', 'Claudia Rocio Ramirez Zubia', 'Controler', 'CHI', 'CHIHUAHUA', 'cramirez@mexq.com.mx', '555555', '2018-03-08', 'CND7513ZWL', '1GR84LA#ABM', 'HP', '15-bs011la', 'MQ', 'A3694', '2018-02-28', 'A', '16028 / LAPTOP HP 15-BS011LA 15.6 INTEL CORE i3-6006U, 8GB, 1TB DD, WIN 10 HOME', 1, '2018-03-08 08:16:10', 'César Valenciano'),
(370, 'MQ235', '05244', 'Maria Guadalupe Rios Pedroza', 'Auxiliar De Informacion', 'CORPORATIVO', 'INFORMACION', 'eaguirre@mexq.com.mx', '9128686 104', '2018-03-07', '5CD7450WH7', '1GR66LA#ABM', 'HP', '14-bs012la', 'MQ', '5362008804', '2018-03-01', 'A', 'Laptop HP Pavilion 14-bs012la 14"- Intel Core I3 6006u - 4GB - 1TB - Windows 10 Home - Blanco / VPN: informacion6 / Dynamics de forma Local', 1, '2018-03-07 10:08:11', 'César Valenciano'),
(371, 'PC132', '22846', 'Wendi Melani Merlos Escobar', 'Ejecutivo De Cuenta', 'CORPORATIVO', 'ADMINISTRACIÓN DEL SERVICIO', 'nomail@mexq.com.mx', '9128686', '2018-03-26', '4CE7332J67', '3FG68LT#ABM', 'HP', '280 G2', 'PC', 'A3698', '2018-03-02', 'A', 'Computadora HP 280 SFF - Intel Core i3-6100 - 4GB - 500GB - DVD-RW - Windows 10 Home', 1, '2018-03-26 09:24:06', 'César Valenciano'),
(372, 'MQ236', '17483', 'Yamara Gioconda Velazquez Menez', 'Lider De Operaciones', 'GTO', 'HAL ALUMINIUM II', 'yvelazquez@mexq.com.mx', '449 243 63 11', '2018-03-08', 'NXGT8AL0027340B3EC3400', 'NX.GT8AL.002', 'DELL', 'ASPIRE 5', 'MQ', '5362008848', '2018-03-06', 'A', 'Laptop Acer Aspire A515-51-51NZ - 15.6" - Intel Core i5-7200 - 12GB - 1TB - Windows 10 Home - Rojo', 1, '2018-03-08 08:15:50', 'César Valenciano'),
(373, 'MQ237', '15431', 'Evert Gibran Gonzalez Castañeda', 'Staff Recursos Materiales', 'QUERETARO', 'GRUPO ABC', '', '5555', '2018-03-21', '5CD7450WBN', '1GR66LA#ABM', 'HP', '14-bs012la', 'MQ', '5362008804', '2018-03-01', 'A', '', 1, '2018-03-21 13:07:20', 'Administrador Sistemas'),
(374, 'MQ238', '12400', 'Omar Mendoza Ruiz', 'Jefe De Operaciones', 'BCN', 'FORD CHIHUAHUA', 'omendoza@mexq.com.mx', '55555', '2018-03-21', '6DZ9F82', '1211087PZA Y44X8', 'DELL', 'INSPIRON 15 3000 SER', 'MQ', '5362008875', '2018-03-09', 'A', '', 1, '2018-03-21 13:08:44', 'Administrador Sistemas'),
(375, 'MQ239', '12400', 'Omar Mendoza Ruiz', 'Jefe De Operaciones', 'BCN', 'FORD CHIHUAHUA', 'omendoza@mexq.com.mx', '5555', '2018-03-21', '1VZ9F82', '1211087PZA Y44X8', 'DELL', 'INSPIRON 15 3000 SER', 'MQ', '5362008875', '2018-03-09', 'A', '', 1, '2018-03-21 13:09:41', 'Administrador Sistemas'),
(376, 'MQ240', '11844', 'Jessica Jasmin Vela Campos', 'Coordinador De Reaclutamiento', 'AGS', 'RECURSOS HUMANOS', 'jvela@mex.com.mx', '55555', '2018-03-21', 'NXGPAAL002734093263400', 'NX.GPAAL.002', 'ACER', 'A515-51-31ZZ', 'MQ', '5362008848', '2018-03-06', 'A', '', 1, '2018-03-21 13:14:39', 'Administrador Sistemas'),
(377, 'MQ241', '18286', 'Fatima Cecilia Gomez Bautista', 'Lider De Operaciones', 'AGS', 'AGUASCALIENTES', 'supervisor.howa@mexq.com.mx', '', '2018-03-22', 'NXGD0AL0467320B15E3400', 'NX.GD0AL.046', 'ACER', 'ES1-572-3230', 'MQ', '', '1999-01-01', 'A', '', 1, '2018-03-22 14:10:54', 'Administrador Sistemas'),
(378, 'MQ242', '22441', 'Nieves Gabriela Muñoz Montañez', 'Guardian De Calidad', 'AGS', 'ITW AUTOMOVILE POWERTRAIN', '', '55555', '2018-03-23', 'NXGPAAL0027340CA983400', 'NX.GPAAL.002', 'ACER', 'A515-51-31ZZ', 'MQ', '43211503', '2018-03-16', 'A', '', 1, '2018-03-23 17:27:00', 'Administrador Sistemas'),
(379, 'MQ243', '00255', 'Luz Alicia Macias Ortiz', 'Guardian de Calidad', 'AGS', 'NISSAN ENSAMBLE', '', '55555', '2018-03-23', 'NXGPAAL0027340CB2B3400', 'NX.GPAAL.002', 'ACER', 'A515-51-31ZZ', 'MQ', '43211503', '2018-03-16', 'A', '', 1, '2018-03-23 15:19:20', 'Administrador Sistemas'),
(380, 'MQ244', '23111', 'Estefany Fabiola Marquez Martinez', 'Implementador De Proyectos', 'CORPORATIVO', 'MCI', 'nomail@mexq.com.mx', '9128686', '2018-04-05', '9KQM3L2', '7CGSM ', 'DELL', 'INSPIRON 15 3000', 'MQ', 'PA003661', '2018-04-04', 'A', 'Dell Inspiron 15 3000 (i3 6006U / 4 GB / 500 GB)', 1, '2018-04-05 15:18:11', 'Administrador Sistemas'),
(381, 'MQ245', '23213', 'Luis Jaime Rodriguez Esparza', 'Implementador De Proyectos', 'CORPORATIVO', 'MCI', 'mail@mexq.com.mx', '9128686', '2018-04-11', '50XS3L2', '7CG5M', 'DELL', 'INSPIRON 3567', 'MQ', 'PA003661', '2018-04-04', 'A', 'Dell Inspiron 15 3000 (i3 6006U / 4 GB / 500 GB)', 1, '2018-04-11 16:09:35', 'Valenciano Fonseca Cesar ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smartphone`
--

CREATE TABLE IF NOT EXISTS `smartphone` (
`id` int(11) NOT NULL,
  `code_smartphone` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `employee_code` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `employee_name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `branch` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `area` varchar(35) COLLATE utf8_spanish_ci NOT NULL,
  `color` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `brand` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `model` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `imei` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `account` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `status` int(1) NOT NULL,
  `comment` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `deliver_date` date NOT NULL,
  `update_time` datetime NOT NULL,
  `user_update` varchar(25) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=230 ;

--
-- Volcado de datos para la tabla `smartphone`
--

INSERT INTO `smartphone` (`id`, `code_smartphone`, `employee_code`, `employee_name`, `branch`, `area`, `color`, `brand`, `model`, `imei`, `account`, `phone_number`, `status`, `comment`, `deliver_date`, `update_time`, `user_update`) VALUES
(1, 'SP1', '00029', 'Carina Yesenia Cazares', 'Sonora', 'FORD', 'blanco', 'SAMSUNG', 'SM-G318ML(ACE 4', '352661071567674', 'sonora.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '2018-02-24 19:00:44', 'César Valenciano'),
(2, 'SP2', '00030', 'Omar Munguia', 'Sonora', 'FORD', 'Blanco', 'MOTOROLA', 'XT1021 (MOTO E)', '359300058000622', 'sonora.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '2018-02-24 19:01:46', 'César Valenciano'),
(3, 'SP3', '00031', 'Carina Yesenia Cazares', 'Sonora', 'FORD', 'blanco', 'SAMSUNG', 'SM-G318ML(ACE 4', '352661071567856', 'sonora.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '2018-02-24 19:03:29', 'César Valenciano'),
(4, 'SP4', '00032', 'Azul Celeste', 'JAL', 'JAL', 'negro', 'SAMSUNG', 'SM-G318ML(ACE 4', '358317070260886', 'jalisco.mexq@gmail.com', '', 1, 'Comentario', '2016-05-09', '2018-02-14 00:00:00', ''),
(5, 'SP5', '00033', 'Fernando Lujan', 'JAL', '', 'negro', 'SAMSUNG', 'SM-G318ML(ACE 4', '358317070260746', 'aguascalientes.mexq@gmail.com', '3334030999', 1, 'Comentario', '2016-05-09', '2018-02-26 19:32:40', 'Recursos Materiales 1'),
(6, 'SP6', '00034', 'Omar Munguia', 'Sonora', '', 'Blanco', 'MOTOROLA', 'XT1021 (MOTO E)', '359300057969611', 'sonora.mexq@gmail.com', '', 1, 'Comentario', '2016-03-16', '2016-03-16 00:00:00', ''),
(7, 'SP7', '00035', 'Omar Munguia', 'Sonora', '', 'Blanco', 'MOTOROLA', 'XT1021 (MOTO E)', '359300057999246', 'sonora.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(8, 'SP8', '00036', 'Omar Munguia', 'SON', '', 'Blanco', 'MOTOROLA', 'XT1021 (MOTO E)', '359300057972847', 'sonora.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '2018-02-26 19:37:53', 'Recursos Materiales 1'),
(9, 'SP9', '00037', 'Omar Munguia', 'Sonora', '', 'Blanco', 'MOTOROLA', 'XT1021 (MOTO E)', '359300058004483', 'sonora.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(10, 'SP10', '00038', 'Omar Munguia', 'Sonora', '', 'Blanco', 'MOTOROLA', 'XT1021 (MOTO E)', '359300057994825', 'sonora.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(11, 'SP11', '00039', 'Elena Aguirre', 'Aguascalie', 'Informacion', 'Blanco', 'MOTOROLA', 'XT1021 (MOTO E)', '359300057996465', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(12, 'SP12', '00040', 'Omar Munguia', 'Sonora', '', 'Blanco', 'MOTOROLA', 'XT1021 (MOTO E)', '359300058007395', 'sonora.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(13, 'SP13', '00041', 'Christian Velasco', 'Aguascalie', 'Corporativo', 'negro', 'COBIA', 'CB515-COBIA', '867727023006323', 'aguascalientes.mexq@gmail.com', '4493524902', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(14, 'SP14', '00042', 'Marcos Daniel Rdz.', 'Aguascalie', 'Corporativo', 'negro', 'COBIA', 'CB515-COBIA', '867727023006448', 'aguascalientes.mexq@gmail.com', '4493524906', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(15, 'SP15', '00043', 'Horacio Vicencio', 'Aguascalie', 'MOTOR NISSAN 1', 'Negro', 'SAMSUNG', 'Moto-e ZX1B23NS', '359300057062144', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2016-02-26', '2016-02-26 00:00:00', ''),
(16, 'SP16', '00044', 'Jose Roberto Fuentes', 'Queretaro', 'Operaciones', 'GOLD', 'LG', 'LG-X210G', '356238073339331', 'queretaro.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(17, 'SP17', '00045', 'Iris Salas', 'Corporativ', 'Recursos Materiales', 'GOLD', 'LG', 'LG-X210G', '356238073339323', 'corporativo.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(18, 'SP18', '00046', 'Iris Salas', 'Corporativ', 'Recursos Materiales', 'GOLD', 'LG', 'LG-X210G', '356238073339406', 'mexqrm@gmail.com', '4491017405', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(19, 'SP19', '00047', 'Francisco Olivas', 'Puebla', 'Operaciones', 'GOLD', 'LG', 'LG-X210G', '356238073340230', 'puebla.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(20, 'SP20', '00048', 'Francisco Olivas', 'Puebla', 'Operaciones', 'GOLD', 'LG', 'LG-X210G', '356238073340172', 'puebla.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(21, 'SP21', '00049', 'Francisco Olivas', 'Puebla', 'Operaciones', 'GOLD', 'LG', 'LG-X210G', '356238073339950', 'puebla.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(22, 'SP22', '00050', 'Omar Mendoza', 'Baja Calif', 'Operaciones', 'SILVER', 'LG', 'LG-X180G', '354597074031367', 'bcalifornia.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(23, 'SP23', '00051', 'Karen Macias', 'Aguascalie', 'Reclutamiento', 'NEGRO', 'ALCATEL', '5036A', '014207006155407', 'aguascalientes.mexq@gmail.com', '4492058645', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(24, 'SP24', '00052', 'Edson Ortega', 'Queretaro', 'Magna', 'PLATEADO', 'LG', 'LG-X210g', '356238073340149', 'queretaro.mexq@gmail.com', '4727371539', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(25, 'SP25', '00053', 'Edson Ortega', 'Queretaro', 'Magna', 'PLATEADO', 'LG', 'LG-X210g', '356238073341576', 'queretaro.mexq@gmail.com', '4422300927', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(26, 'SP26', '00054', 'Sonia Segoviano', 'Corporativ', 'Recursos Humanos', 'NEGRO', 'MOTOROLA', 'MotoX', '354984054918831', 'corporativo.mexq@gmail.com', '4492053351', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(27, 'SP27', '00055', 'Juan Ramon Flores', 'Aguascalie', 'Jatco 1', 'Negro', 'Lanix', 'IliumX110', '352155078348949', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(28, 'SP28', '00056', 'Jesus Alberto Robles', 'Sonora', 'Operaciones', 'GOLD', 'LG', 'LG-X210g', '356238073373421', 'sonora.mexq@gmail.com', '6623183354', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(29, 'SP29', '00057', 'Czarina Gastelum Valenzuela', 'Sonora', 'Operaciones', 'GOLD', 'LG', 'LG-X210g', '356238073374213', 'sonora.mexq@gmail.com', '6623183353', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(30, 'SP30', '00058', 'Itzel Najar Amarillas', 'Sonora', 'Operaciones', 'GOLD', 'LG', 'LG-X210g', '356238073373561', 'sonora.mexq@gmail.com', '6623183356', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(31, 'SP31', '00059', 'Gonzalez Garcia David Roberto', 'Sonora', 'Operaciones', 'GOLD', 'LG', 'LG-X210g', '356238073371086', 'sonora.mexq@gmail.com', '6623183355', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(32, 'SP32', '00060', 'Ventura Alfonso Mancilla Ruiz', 'Sonora', 'Operaciones', 'GOLD', 'LG', 'LG-X210g', '356238073373553', 'sonora.mexq@gmail.com', '6623183359', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(33, 'SP33', '00061', 'Carolina Chavarin Gastelum', 'Sonora', 'Operaciones', 'GOLD', 'LG', 'LG-X210g', '356238073370807', 'sonora.mexq@gmail.com', '6623183358', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(34, 'SP34', '00062', 'Yunuen Guadalupe Lopez Madrid', 'Sonora', 'Operaciones', 'GOLD', 'LG', 'LG-X210g', '356238073373652', 'sonora.mexq@gmail.com', '6622040905', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(35, 'SP35', '00063', 'Flores Parra Jesus Antonio', 'Sonora', 'Operaciones', 'GOLD', 'LG', 'LG-X210g', '356238073373371', 'sonora.mexq@gmail.com', '6622984467', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(36, 'SP36', '00064', 'Carlos Alberto Gurrero Briones', 'Aguascalie', 'Calidad', 'GOLD', 'LG', 'LG-X210g', '356238073341329', 'corporativo.mexq@gmail.com', '4491117769', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(37, 'SP37', '00065', 'Jose de Jesus Moran Pacheco', 'Metropolit', 'Operaciones', 'GOLD', 'LG', 'LG-X210g', '356238073371227', 'metro.mexq@gmail.com', '5527243278', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(38, 'SP38', '00066', 'Oscar Blanco Urita', 'Metropolit', 'Operaciones', 'GOLD', 'LG', 'LG-X210g', '356238073373546', 'metro.mexq@gmail.com', '5534669449', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(39, 'SP39', '00067', 'Esteban Pinales', 'Metropolit', 'Operaciones', 'GOLD', 'LG', 'LG-X210g', '356238073373546', 'metro.mexq@gmail.com', '5512244170', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(40, 'SP40', '00068', 'Jasmin Vela', 'Aguascalie', 'Reclutamiento', 'NEGRO', 'NYX', 'JOIN', '357899064165784', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(41, 'SP41', '00069', 'Jasmin Vela', 'Aguascalie', 'Reclutamiento', 'NEGRO', 'NYX', 'JOIN', '357899064189560', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(42, 'SP42', '00070', 'Reveles', 'AGS', 'Nissan2', 'GOLD', 'LG', 'LG-X210G', '356238073339349', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '2018-02-26 19:42:04', 'Recursos Materiales 1'),
(43, 'SP43', '00143', 'Coordinacion Ags', 'Corporativ', 'Coordinacion', 'NEGRO', 'COBIA', 'CB515-COBIA', '867727023006505 / 867727023506504', 'coordinacion.ags.slp@gmail.com', '', 1, 'Comentario', '2017-07-03', '2017-07-03 00:00:00', ''),
(44, 'SP44', '00144', 'Gabriela Soriano', 'GTO', 'Coordinacion', 'GOLD', 'LG', 'LG-X210G', '356238073341584', 'guanajuato.mq@gmail.com', '5533318139', 1, 'Comentario', '0000-00-00', '2018-02-26 19:45:05', 'Recursos Materiales 1'),
(45, 'SP45', '00145', 'Victor Hugo', 'Metropolit', 'Operaciones', 'GOLD', 'LG', 'LG-X210G', '356238073341535', 'metro.mexq@gmail.com', '7351269436', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(46, 'SP46', '00146', 'Diego Armando Lopez Martinez', 'Aguascalie', 'Jatco 1', 'Blanco', 'Lanix', 'IliumX210', '356308074204204', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-01-03', '2017-01-03 00:00:00', ''),
(47, 'SP47', '00147', 'Ernesto Montero', 'Metropolit', 'Lear', 'GOLD', 'LG', 'LG-X210G', '356238073339521', 'metro.mexq@gmail.com', '', 1, 'Comentario', '2017-01-03', '2017-01-03 00:00:00', ''),
(48, 'SP48', '00148', 'Cesar Becerra Alvarez', 'Metropolit', 'Operaciones', 'GOLD', 'LG', 'LG-X210G', '356238073339356', 'metro.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(49, 'SP49', '00149', 'Salvador Flores Hernandez', 'Aguascalie', 'Operaciones', 'NEGRO', 'MOTOROLA', 'XT1021 (MOTO E)', '353318062906994', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(50, 'SP50', '00150', 'Ana Gonzalez', 'Corporativ', 'Admon. Serv.', 'NEGRO', 'LG', 'LG-X210G', '356238073339448', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-11-24', '2017-11-24 00:00:00', ''),
(51, 'SP51', '00151', 'Sergio Barrientos', 'Aguascalie', 'Operaciones', 'GOLD', 'LG', 'LG-X210G', '356238073339380', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(52, 'SP52', '00152', 'Paola Zavala Acevedo', 'Corporativ', 'Ventas', 'NEGRO', 'LG', 'LG-X210G', '356238072130277', 'mexq.ventas@gmail.com', '', 1, 'Comentario', '2018-01-24', '2018-01-24 00:00:00', ''),
(53, 'SP53', '00153', 'Ana Gonzalez', 'Corporativ', 'Admon. Serv.', 'NEGRO', 'SAMSUNG', 'SM-G313ML', '351950071293394', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-02-08', '2017-02-08 00:00:00', ''),
(54, 'SP54', '00154', 'Cony', 'Guanajuato', 'Coordinacion', 'NEGRO', 'SAMSUNG', 'SM-G31ML', '352661071432747', 'guanajuato.mq@gmail.com', '', 1, 'Comentario', '2017-02-08', '2017-02-08 00:00:00', ''),
(55, 'SP55', '00155', 'Jose Guillermo Sanchez Retenaga ', 'Jalisco', 'MCI', 'NEGRO', 'MOTOROLA', 'Moto G play', '354138072716152', 'jalisco.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(56, 'SP56', '00156', 'Daniel Chofer', 'Aguascalie', 'Operaciones', 'NEGRO', 'Hisense', 'L675', '860567032877794', 'aguascalientes.mexq@gmail.com', '4493523206', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(57, 'SP57', '00157', 'Juan Carlos Flores', 'Aguascalie', 'ASC', 'NEGRO', 'LG', 'LG-K200MT', '358936073608740', 'aguascalientes.mexq@gmail.com', '4491061476', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(58, 'SP58', '00158', 'Arturo Montañez', 'Aguascalie', 'Unipress', 'NEGRO', 'LG', 'LG-K200MT', '358936073492483', 'aguascalientes.mexq@gmail.com', '4491301433', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(59, 'SP59', '00159', 'Sara Montelongo', 'Aguascalie', 'Calidad', 'NEGRO', 'LG', 'LG-K200MT', '358936073540562', 'aguascalientes.mexq@gmail.com', '4491063701', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(60, 'SP60', '00160', 'Jorge Rocha', 'Aguascalie', 'Exedy', 'NEGRO', 'LG', 'LG-K200MT', '358936073540638', 'aguascalientes.mexq@gmail.com', '4498042953', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(61, 'SP60', '00161', 'Rodolfo Medrano', 'Aguascalie', 'Exedy', 'NEGRO', 'LG', 'LG-K200MT', '358936073540638', 'aguascalientes.mexq@gmail.com', '4498042953', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(62, 'SP60', '00162', 'David Gomez', 'Aguascalie', 'Exedy', 'NEGRO', 'LG', 'LG-K200MT', '358936073540638', 'aguascalientes.mexq@gmail.com', '4498042953', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(63, 'SP61', '00163', 'Juan Ramon Flores', 'Aguascalie', 'Jatco', 'NEGRO', 'LG', 'LG-K200MT', '358936073608765', 'aguascalientes.mexq@gmail.com', '4491032146', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(64, 'SP62', '00164', 'Claudia Iliana Santiago Velez', 'Puebla', 'Operaciones', 'NEGRO', 'LG', 'LG-X210g', '356238073339398', 'puebla.mexq@gmail.com', '2225361168', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(65, 'SP63', '00165', 'Ubaldo Martinez', 'Aguascalie', 'Chofer', 'BLANCO', 'SAMSUNG', 'SM-G318ML(ACE 4', '352661071570959', 'aguascalientes.mexq@gmail.com', '4493523203', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(66, 'SP64', '00166', 'Cony Hernandez', 'Guanajuato', 'Coordinacion', 'NEGRO', 'Hisense', 'L675', '860567032874643', 'guanajuato.mq@gmail.com', '3314098023', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(67, 'SP65', '00167', 'Icuaclanetzi Rosales Diaz', 'Aguascalie', 'MCI', 'NEGRO', 'MOTOROLA', 'XT1601', '354138074069931', 'aguascalientes.mexq@gmail.com', '4492735183', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(68, 'SP66', '00168', 'Gilberto Camargo', 'Aguascalie', 'MCI', 'NEGRO', 'MOTOROLA', 'XT1601', '354138074069469', 'aguascalientes.mexq@gmail.com', '4492735177', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(69, 'SP67', '00169', 'Ana Gonzalez', 'Aguascalie', 'Admon. Serv.', 'NEGRO', 'MOTOROLA', 'XT1601', '354138074068883', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(70, 'SP68', '00170', 'Eder Gomez Martinez', 'Aguascalie', 'MCI', 'NEGRO', 'MOTOROLA', 'XT1601', '354138074069972', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(71, 'SP69', '00171', 'Everardo', 'Aguascalie', 'Chofer', 'Blanco', 'SAMSUNG', 'SM-G318ML(ACE 4', '352661071567674', 'aguascalientes.mexq@gmail.com', '4493297672', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(72, 'SP70', '00172', 'Ricardo', 'Aguascalie', 'Chofer', 'Blanco', 'SAMSUNG', 'SM-G318ML(ACE 4', '351950071293394', 'aguascalientes.mexq@gmail.com', '4493247671', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(73, 'SP71', '00173', 'Francisco Olivas', 'Toluca', 'Magna', 'NEGRO', 'MOTOROLA', 'XT1601', '354138074069717', 'metro.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(74, 'SP72', '00174', 'Edgar Barajas', 'Guanajuato', 'Asahi', 'NEGRO', 'MOTOROLA', 'XT1601', '354138074067414', 'guanajuato.mq@gmail.com', '4492436047', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(75, 'SP73', '00175', 'Leonardo Perez Geronimo', 'Guanajuato', 'Inalfa', 'NEGRO', 'MOTOROLA', 'XT1601', '354138071824171', 'guanajuato.mq@gmail.com', '4492436311', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(76, 'SP74', '00176', 'Edson Ortega', 'Guanajuato', 'Operaciones', 'NEGRO', 'MOTOROLA', 'XT1601', '354138072781461', 'guanajuato.mq@gmail.com', '4492439079', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(77, 'SP75', '00177', 'Jesus Moran Pacheco', 'Guanajuato', 'Viño Plastic', 'NEGRO', 'MOTOROLA', 'XT1601', '354138074069675', 'guanajuato.mq@gmail.com', '4492438989', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(78, 'SP76', '00178', 'Alfonso Ahumada', 'Aguascalie', 'Nissan 1', 'NEGRO', 'MOTOROLA', 'XT1601', '354138074069634', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-03-01', '2017-03-01 00:00:00', ''),
(79, 'SP77', '00179', 'Fabiola Gonzalez', 'Aguascalie', 'Nissan 1', 'NEGRO', 'MOTOROLA', 'XT1601', '354138072219330', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-03-01', '2017-03-01 00:00:00', ''),
(80, 'SP78', '00180', 'Alvaro Noriega', 'Aguascalie', 'Nissan 1', 'NEGRO', 'MOTOROLA', 'XT1601', '354138072219330', 'aguascalientes.mexq@gmail.com', '4492433539', 1, 'Comentario', '2017-03-01', '2017-03-01 00:00:00', ''),
(81, 'SP79', '00181', 'Omar Mendoza', 'Baja Calif', 'Operaciones', 'Blanco', 'Hisense', 'L675', '860567034467297', 'bcalifornia.mexq@gmail.com', '', 1, 'Comentario', '2017-03-01', '2017-03-01 00:00:00', ''),
(82, 'SP80', '00182', 'Edson Ortega', 'Guanajuato', 'Operaciones', 'Blanco', 'Hisense', 'L675', '860567034490448', 'guanajuato.mq@gmail.com', '', 1, 'Comentario', '2017-03-01', '2017-03-01 00:00:00', ''),
(83, 'SP81', '00183', 'Francisco Olivas', 'Puebla', 'Operaciones', 'NEGRO', 'LG', 'LG-X180g', '354597074031490', 'puebla.mexq@gmail.com', '', 1, 'Comentario', '2017-03-01', '2017-03-01 00:00:00', ''),
(84, 'SP82', '00184', 'Gilberto Camargo', 'Sonora', 'Operaciones', 'NEGRO', 'LG', 'LG-K200MT', '358936074710172', 'sonora.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(85, 'SP83', '00185', 'Carlos Gonzalez Nava', 'Sonora', 'FORD MOTOR HERMOSILLO', 'NEGRO', 'LG', 'LG-K200MT', '358936074717359', 'sonora.mexq@gmail.com', '', 1, 'Comentario', '2017-03-06', '2017-03-06 00:00:00', ''),
(86, 'SP84', '00186', 'Jusaino Castillo Thelma Gloria', 'Sonora', 'FORD MOTOR HERMOSILLO', 'NEGRO', 'LG', 'LG-K200MT', '358936074709943', 'sonora.mexq@gmail.com', '', 1, 'Comentario', '2017-03-06', '2017-03-06 00:00:00', ''),
(87, 'SP85', '00187', 'Vega Valdez Flor De Maria', 'Sonora', 'FORD MOTOR HERMOSILLO', 'NEGRO', 'LG', 'LG-K200MT', '358936074710198', 'sonora.mexq@gmail.com', '', 1, 'Comentario', '2017-03-06', '2017-03-06 00:00:00', ''),
(88, 'SP85', '00188', 'Garcia Villa Maria Trinidad', 'Sonora', 'FORD MOTOR HERMOSILLO', 'NEGRO', 'LG', 'LG-K200MT', '358936074710198', 'sonora.mexq@gmail.com', '', 1, 'Comentario', '2017-03-06', '2017-03-06 00:00:00', ''),
(89, 'SP85', '00189', 'Valdez Gutierrez Miriam Amor', 'Sonora', 'FORD MOTOR HERMOSILLO', 'NEGRO', 'LG', 'LG-K200MT', '358936074710198', 'sonora.mexq@gmail.com', '', 1, 'Comentario', '2017-03-06', '2017-03-06 00:00:00', ''),
(90, 'SP86', '00190', 'Lopez Cordova Alexis Gilberto', 'Sonora', 'FORD MOTOR HERMOSILLO', 'NEGRO', 'LG', 'LG-K200MT', '358936074709869', 'sonora.mexq@gmail.com', '', 1, 'Comentario', '2017-03-10', '2017-03-10 00:00:00', ''),
(91, 'SP87', '00191', 'Armenta Cubillas Francisco Arnoldo', 'Sonora', 'FORD MOTOR HERMOSILLO', 'NEGRO', 'LG', 'LG-K200MT', '358936074630750', 'sonora.mexq@gmail.com', '', 1, 'Comentario', '2017-03-06', '2017-03-06 00:00:00', ''),
(92, 'SP87', '00192', 'Armenta Cubillas Francisco Arnoldo', 'Sonora', 'FORD MOTOR HERMOSILLO', 'NEGRO', 'LG', 'LG-K200MT', '358936074630750', 'sonora.mexq@gmail.com', '', 1, 'Comentario', '2017-03-06', '2017-03-06 00:00:00', ''),
(93, 'SP87', '00193', 'Armenta Cubillas Francisco Arnoldo', 'Sonora', 'FORD MOTOR HERMOSILLO', 'NEGRO', 'LG', 'LG-K200MT', '358936074630750', 'sonora.mexq@gmail.com', '', 1, 'Comentario', '2017-03-06', '2017-03-06 00:00:00', ''),
(94, 'SP88', '00194', 'Berreyes Flores Dinorah Iveth', 'Sonora', 'FORD MOTOR HERMOSILLO', 'NEGRO', 'LG', 'LG-K200MT', '358936074709885', 'sonora.mexq@gmail.com', '', 1, 'Comentario', '2017-03-06', '2017-03-06 00:00:00', ''),
(95, 'SP89', '00195', 'Esparza Espinoza Manuel Angel', 'Sonora', 'IACNA HERMOSILLO', 'NEGRO', 'LG', 'LG-K200MT', '358936074630719', 'sonora.mexq@gmail.com', '', 1, 'Comentario', '2017-03-06', '2017-03-06 00:00:00', ''),
(96, 'SP90', '00196', 'Ledgard Lamadrid Luis Fernando', 'Sonora', 'FORD MOTOR HERMOSILLO', 'NEGRO', 'LG', 'LG-K200MT', '358936074630735', 'sonora.mexq@gmail.com', '', 1, 'Comentario', '2017-03-06', '2017-03-06 00:00:00', ''),
(97, 'SP91', '00197', 'Rosi Castillo Morales', 'Queretaro', 'Operaciones', 'NEGRO', 'LG', 'LG-K200MT', '358936074630651', 'queretaro.mexq@gmail.com', '', 1, 'Comentario', '2017-03-06', '2017-03-06 00:00:00', ''),
(98, 'SP92', '00198', 'Dozal Hernandez Minerva', 'Baja Calif', 'Coordinacion', 'NEGRO', 'LG', 'LG-K200MT', '358936074630693', 'bcalifornia.mexq@gmail.com', '', 1, 'Comentario', '2017-03-06', '2017-03-06 00:00:00', ''),
(99, 'SP93', '00199', 'Mario Ibarra', 'Jalisco', 'SKF', 'NEGRO', 'LG', 'LG-K200MT', '358936074630131', 'jalisco.mexq@gmail.com', '', 1, 'Comentario', '2017-03-06', '2017-03-06 00:00:00', ''),
(100, 'SP94', '00200', 'Vega Valdez Flor De Maria', 'Sonora', 'FORD MOTOR HERMOSILLO', 'NEGRO', 'LG', 'LG-K200MT', '358936074709927', 'sonora.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(101, 'SP94', '00201', 'Garcia Villa Maria Trinidad', 'Sonora', 'FORD MOTOR HERMOSILLO', 'NEGRO', 'LG', 'LG-K200MT', '358936074709927', 'sonora.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(102, 'SP94', '00202', 'Valdez Gutierrez Miriam Amor', 'Sonora', 'FORD MOTOR HERMOSILLO', 'NEGRO', 'LG', 'LG-K200MT', '358936074709927', 'sonora.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(103, 'SP95', '00203', 'Lluvia Aguirre', 'Aguascalie', 'Chofer', 'NEGRO', 'AVVIO', '750-Single', '865771024619520', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-03-10', '2017-03-10 00:00:00', ''),
(104, 'SP96', '00204', 'Lluvia Aguirre', 'Aguascalie', 'Chofer', 'NEGRO', 'ALCATEL', 'PIXIE-4009F', '014649004942551', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-03-10', '2017-03-10 00:00:00', ''),
(105, 'SP97', '00205', 'Lluvia Aguirre', 'Aguascalie', 'Chofer', 'NEGRO', 'ALCATEL', 'PIXIE-4009F', '014649004957351', 'aguascalientes.mexq@gmail.com', '4494029069', 1, 'Comentario', '2017-03-10', '2017-03-10 00:00:00', ''),
(106, 'SP98', '00206', 'Lluvia Aguirre', 'Aguascalie', 'Chofer', 'NEGRO', 'ALCATEL', 'PIXIE-4009F', '014649004957195', 'aguascalientes.mexq@gmail.com', '4494029068', 1, 'Comentario', '2017-03-10', '2017-03-10 00:00:00', ''),
(107, 'SP99', '00207', 'Lluvia Aguirre', 'Aguascalie', 'Chofer', 'NEGRO', 'Lenovo', 'A2016b30', '862569038192895', 'aguascalientes.mexq@gmail.com', '4491909029', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(108, 'SP100', '00208', 'Lluvia Aguirre', 'Aguascalie', 'Exedy', 'Negro', 'MOTOROLA', 'XT1058 (MOTO X)', '353318062907554', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(109, 'SP101', '00209', 'Chavez Diaz Jesus Emmanuel', 'Aguascalie', 'MCI', 'NEGRO', 'MOTOROLA', 'XT1601', '354138072763634', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-03-15', '2017-03-15 00:00:00', ''),
(110, 'SP102', '00210', 'Escalera Birant', 'Aguascalie', 'Unipress', 'NEGRO', 'MOTOROLA', 'XT1601', '354138072772346', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-03-15', '2017-03-15 00:00:00', ''),
(111, 'SP103', '00211', 'Narvaez Gomez Benjamin', 'Aguascalie', 'Nissan Carrocerias', 'NEGRO', 'MOTOROLA', 'XT1601', '354138072775612', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-03-15', '2017-03-15 00:00:00', ''),
(112, 'SP103', '00212', 'Ortiz Ortiz Hilario', 'Aguascalie', 'Nissan Carrocerias', 'NEGRO', 'MOTOROLA', 'XT1601', '354138072775612', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-03-15', '2017-03-15 00:00:00', ''),
(113, 'SP104', '00213', 'Lopez Rangel Jose Carlos', 'Aguascalie', 'Estampados', 'NEGRO', 'MOTOROLA', 'XT1601', '354138072775703', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-03-15', '2017-03-15 00:00:00', ''),
(114, 'SP105', '00214', 'Jaramillo Rocio', 'Aguascalie', 'Nissan 1', 'NEGRO', 'MOTOROLA', 'XT1601', '354138072767031', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-03-15', '2017-03-15 00:00:00', ''),
(115, 'SP106', '00215', 'Bernal Mejorada Jose Alfredo', 'Morelos', 'Nissan Civac', 'NEGRO', 'MOTOROLA', 'XT1601', '354138072775406', 'metro.mexq@gmail.com', '', 1, 'Comentario', '2017-03-15', '2017-03-15 00:00:00', ''),
(116, 'SP107', '00216', 'Salazar Reyes Yeritza Angelina', 'Baja Calif', 'Coordinacion', 'NEGRO', 'MOTOROLA', 'XT1601', '354138072775596', 'bcalifornia.mexq@gmail.com', '', 1, 'Comentario', '2017-03-15', '2017-03-15 00:00:00', ''),
(117, 'SP107', '00217', 'Paramo Rios Candy', 'Baja Calif', 'Coordinacion', 'NEGRO', 'MOTOROLA', 'XT1601', '354138072775596', 'bcalifornia.mexq@gmail.com', '', 1, 'Comentario', '2017-03-15', '2017-03-15 00:00:00', ''),
(118, 'SP107', '00218', 'Zamora Tania', 'Baja Calif', 'Coordinacion', 'NEGRO', 'MOTOROLA', 'XT1601', '354138072775596', 'bcalifornia.mexq@gmail.com', '', 1, 'Comentario', '2017-03-15', '2017-03-15 00:00:00', ''),
(119, 'SP108', '00219', 'Cruz Sandoval Yurai', 'Aguascalie', 'NISSAN ENSAMBLE', 'NEGRO', 'MOTOROLA', 'XT1601', '354138072775984', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-03-15', '2017-03-15 00:00:00', ''),
(120, 'SP108', '00220', 'Diaz De Leon Ramos Jose De Jesus', 'Aguascalie', 'NISSAN ENSAMBLE', 'NEGRO', 'MOTOROLA', 'XT1601', '354138072775984', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-03-15', '2017-03-15 00:00:00', ''),
(121, 'SP109', '00221', 'Iris Salas', 'Aguascalie', 'MATERIALES', 'NEGRO', 'LG', 'LG-X210g', '356232073339406', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(122, 'SP110', '00222', 'Manuel Martinez', 'Aguascalie', 'MCI', 'NEGRO', 'MOTOROLA', 'XT1601', '354138072768724', 'aguascalientes.mexq@gmail.com', '4493297918', 1, 'Comentario', '2017-03-28', '2017-03-28 00:00:00', ''),
(123, 'SP111', '00223', 'Manuel Martinez', 'Aguascalie', 'MCI', 'NEGRO', 'MOTOROLA', 'XT1601', '354138072769110', 'aguascalientes.mexq@gmail.com', '4493298468', 1, 'Comentario', '2017-03-28', '2017-03-28 00:00:00', ''),
(124, 'SP112', '00224', 'Muñoz Padilla Lucero Del Rocio', 'Aguascalie', 'UNIPRES 2', 'NEGRO', 'MOTOROLA', 'XT1601', '354138072768740', 'aguascalientes.mexq@gmail.com', '4493298462', 1, 'Comentario', '2017-03-28', '2017-03-28 00:00:00', ''),
(125, 'SP112', '00225', 'Rodriguez Martinez Norma Angelica', 'Aguascalie', 'UNIPRES 2', 'NEGRO', 'MOTOROLA', 'XT1601', '354138072768740', 'aguascalientes.mexq@gmail.com', '4493298462', 1, 'Comentario', '2017-03-28', '2017-03-28 00:00:00', ''),
(126, 'SP113', '00226', 'Reyna Huizar Garcia', 'Aguascalie', 'NISSAN ENSAMBLE', 'NEGRO', 'MOTOROLA', 'XT1601', '354138072768781', 'aguascalientes.mexq@gmail.com', '4493298442', 1, 'Comentario', '2018-02-02', '2018-02-02 00:00:00', ''),
(127, 'SP114', '00227', 'Avalos Lezama Carlos Ignacio', 'Aguascalie', 'NISSAN ENSAMBLE', 'NEGRO', 'MOTOROLA', 'XT1601', '354138072769227', 'aguascalientes.mexq@gmail.com', '4493298457', 1, 'Comentario', '2017-03-28', '2017-03-28 00:00:00', ''),
(128, 'SP115', '00228', 'Hernandez Zavala Ana Georgina', 'Jalisco', 'Coordinacion', 'NEGRO', 'MOTOROLA', 'XT1601', '354138072769961', 'jalisco.mexq@gmail.com', '4493298469', 1, 'Comentario', '2017-03-28', '2017-03-28 00:00:00', ''),
(129, 'SP116', '00229', 'Martinez Aguilar Enriqueta', 'Aguascalie', 'NISSAN MOTOR', 'NEGRO', 'MOTOROLA', 'XT1601', '354138072769300', 'aguascalientes.mexq@gmail.com', '4493298456', 1, 'Comentario', '2017-03-28', '2017-03-28 00:00:00', ''),
(130, 'SP116', '00230', 'Salazar Zamorano Karina', 'Aguascalie', 'NISSAN MOTOR', 'NEGRO', 'MOTOROLA', 'XT1601', '354138072769300', 'aguascalientes.mexq@gmail.com', '4493298456', 1, 'Comentario', '2017-03-28', '2017-03-28 00:00:00', ''),
(131, 'SP117', '00231', 'Noriega Gallegos Alvaro', 'Aguascalie', 'Operaciones', 'NEGRO', 'MOTOROLA', 'XT1601', '354138072768708', 'aguascalientes.mexq@gmail.com', '4493298463', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(132, 'SP118', '00232', 'Zamorano Marquez Francisco Javier', 'Aguascalie', 'NISSAN ENSAMBLE', 'NEGRO', 'MOTOROLA', 'XT1601', '354138072771280', 'aguascalientes.mexq@gmail.com', '4493297910', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(133, 'SP118', '00233', 'Mora Castañeda Rolando', 'Aguascalie', 'NISSAN ENSAMBLE', 'NEGRO', 'MOTOROLA', 'XT1601', '354138072771280', 'aguascalientes.mexq@gmail.com', '4493297910', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(134, 'SP119', '00234', 'Omar Mendoza', 'BCN', 'PARKER TIJUANA', 'NEGRO', 'MOTOROLA', 'XT1601', '354138072766702', 'bcalifornia.mexq@gmail.com', '4493297927', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(135, 'SP120', '00235', 'Sandra Lopez', 'Aguascalie', 'MATERIALES', 'NEGRO', 'MOTOROLA', 'XT1601', '354138072769433', 'mexqrm@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(136, 'SP121', '00236', 'Sandra Lopez', 'Aguascalie', 'MATERIALES', 'NEGRO', 'LG', 'LG-X210g', '356238072129832', 'mexqrm@gmail.com', '4491017405', 1, 'Comentario', '2017-04-07', '2017-04-07 00:00:00', ''),
(137, 'SP122', '00237', 'Luz Alicia Macias', 'Aguascalie', 'NISSAN ENSAMBLE', 'NEGRO', 'MOTOROLA', 'XT1601', '354138072769284', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-04-07', '2017-04-07 00:00:00', ''),
(138, 'SP123', '00238', 'Jose alberto Santana', 'Aguascalie', 'NISSAN ENSAMBLE', 'GOLD', 'LG', 'LG-K200MT', '358936074515712', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-04-20', '2017-04-20 00:00:00', ''),
(139, 'sP124', '00239', 'Luis Gabriela Valdez', 'Aguascalie', 'NISSAN ENSAMBLE', 'GOLD', 'LG', 'LG-K200MT', '358936074517189', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-04-20', '2017-04-20 00:00:00', ''),
(140, 'SP125', '00240', 'Arturo Zamorano', 'Aguascalie', 'NISSAN ENSAMBLE', 'GOLD', 'LG', 'LG-K200MT', '358936074515464', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-04-20', '2017-04-20 00:00:00', ''),
(141, 'sp126', '00241', 'Raul Barrera Muñoz', 'Aguascalie', '', 'GOLD', 'LG', 'LG-K200MT', '358936074515795', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-04-20', '2017-04-20 00:00:00', ''),
(142, 'Sp127', '00242', 'Juan Carlos Reyes Santoyo', 'Aguascalie', '', 'GOLD', 'LG', 'LG-K200MT', '358936074515829', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-04-20', '2017-04-20 00:00:00', ''),
(143, 'sp128', '00243', 'Christian Donjuan Carbajal', 'SLP', 'VALEO', 'GOLD', 'LG', 'LG-K200MT', '358936074515928', 'slp.mexq@gmail.com', '', 1, 'Comentario', '2017-05-12', '2017-05-12 00:00:00', ''),
(144, 'sp129', '00244', 'Veronica Gomez Arriola', 'SLP', 'VALEO', 'GOLD', 'LG', 'LG-K200MT', '358936074515837', 'slp.mexq@gmail.com', '', 0, 'Comentario', '2017-05-12', '2017-05-12 00:00:00', ''),
(145, 'SP130', '00245', 'Sergio Barrientos', 'Aguascalie', 'Operaciones', 'GOLD', 'LG', 'LG-K200MT', '358936075022627', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(146, 'SP131', '00246', 'Sierra Espinosa Viridiana Berenice', 'Puebla', 'Coordinacion', 'NEGRO', 'Hisense', 'F20', '860643033627551', 'puebla.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(147, 'SP132', '00247', 'Gonzalez Garcia Laura Patricia Guadalupe', 'Jalisco', 'SKF', 'GRAY', 'LG', 'LG-K200MT', '358936075784762', 'jalisco.mexq@gmail.com', '', 1, 'Comentario', '2017-06-12', '2017-06-12 00:00:00', ''),
(148, 'SP133', '00248', 'Cruz Balderas Andrea', 'Puebla', 'Federal Mogul', 'GRAY', 'LG', 'LG-K200MT', '358936075479330', 'puebla.mexq@gmail.com', '', 1, 'Comentario', '2017-06-12', '2017-06-12 00:00:00', ''),
(149, 'SP134', '00249', 'Gomez Romero Lazaro David Alejandro', 'Aguascalie', 'Exedy', 'GOLD', 'LG', 'LG-K200MT', '358936075030778', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-06-12', '2017-06-12 00:00:00', ''),
(150, 'SP135', '00250', 'Hernandez Angeles Sergio', 'Puebla', 'Operaciones', 'GOLD', 'LG', 'LG-K200MT', '358936075022643', 'puebla.mexq@gmail.com', '', 1, 'Comentario', '2017-06-12', '2017-06-12 00:00:00', ''),
(151, 'SP136', '00251', 'Lluvia Aguirre', 'Aguascalie', 'Exedy', 'GOLD', 'LG', 'LG-K200MT', '358936075029713', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-08-15', '2017-08-15 00:00:00', ''),
(152, 'SP137', '00252', 'Gomez Bautista Fatima Cecilia', 'Aguascalie', 'Steel', 'GOLD', 'LG', 'LG-K200MT', '358936075022866', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-06-12', '2017-06-12 00:00:00', ''),
(153, 'SP138', '00253', 'Benitez Flores Gerardo', 'Morelos', 'Nissan Civac', 'GRAY', 'LG', 'LG-K200MT', '358936075784556', 'metro.mexq@gmail.com', '', 1, 'Comentario', '2017-06-12', '2017-06-12 00:00:00', ''),
(154, 'SP139', '00254', 'Juarez Tapia Areli', 'Puebla', 'Operaciones', 'GRAY', 'LG', 'LG-K200MT', '358936075784549', 'puebla.mexq@gmail.com', '', 1, 'Comentario', '2017-06-12', '2017-06-12 00:00:00', ''),
(155, 'SP140', '00255', 'Renata Medina', 'Aguascalie', 'Reclutamiento', 'Blanco', 'MOTOROLA', 'XT1021 (MOTO E)', '359300059208455', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-06-14', '2017-06-14 00:00:00', ''),
(156, 'SP141', '00256', 'Issac Salas', 'Aguascalie', 'Finanzas', 'GOLD', 'LG', 'LG-K200MT', '358936075022205', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-06-13', '2017-06-13 00:00:00', ''),
(157, 'SP142', '00257', 'Sonia Segoviano', 'Aguascalie', 'Recursos Humanos', 'Negro', 'MOTOROLA', 'XT1021 (MOTO E)', '359300059204330', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-06-13', '2017-06-13 00:00:00', ''),
(158, 'SP143', '00258', 'Sanchez Retenaga Jose Guillermo', 'Jalisco', 'SKF', 'GOLD', 'LG', 'LG-K200MT', '358936075022650', 'jalisco.mexq@gmail.com', '', 1, 'Comentario', '2017-06-14', '2017-06-14 00:00:00', ''),
(159, 'SP144', '00259', 'Ortiz Delgado Karen Yareli', 'Aguascalie', 'NISSAN ENSAMBLE', 'GOLD', 'LG', 'LG-K200MT', '358936075023021', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-06-21', '2017-06-21 00:00:00', ''),
(160, 'SP145', '00260', 'Acosta Medina Juan Carlos', 'Aguascalie', 'NISSAN ENSAMBLE', 'GOLD', 'LG', 'LG-K200MT', '358936072023336', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-06-21', '2017-06-21 00:00:00', ''),
(161, 'SP146', '00261', 'Macias Collazo Eloy Omar', 'Aguascalie', 'Calidad', 'NEGRO', 'Lanix', 'Ilium X110', '355070082755905', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-06-22', '2017-06-22 00:00:00', ''),
(162, 'SP147', '00262', 'Mario Ibarra', 'Jalisco', 'Operaciones', 'NEGRO', 'LG', 'LG-M250H', '354952080756574', 'jalisco.mexq@gmail.com', '', 1, 'Comentario', '2017-06-27', '2017-06-27 00:00:00', ''),
(163, 'SP148', '00263', 'Martinez Barron Nubia Gabriela', 'GUANAJUATO', 'Coordinacion', 'NEGRO', 'Lanix', 'Ilium X110', '355070082756184', 'guanajuato.mq@gmail.com', '', 1, 'Comentario', '2017-06-29', '2017-06-29 00:00:00', ''),
(164, 'SP149', '00264', 'Coodinadora', 'Aguascalie', 'Coordinacion', 'NEGRO', 'Lanix', 'Ilium X110', '355070082755939', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-06-30', '2017-06-30 00:00:00', ''),
(165, 'SP150', '00265', 'SP151', 'Aguascalie', 'Ventas', 'GRAY', 'LG', 'LG-K200MT', '358936075035058', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-07-13', '2017-07-13 00:00:00', ''),
(166, 'SP151', '00266', 'Flores Hernandez Salvador', 'Aguascalie', 'Operaciones', 'NEGRO', 'Lanix', 'Ilium X110', '355070082756119', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-08-04', '2017-08-04 00:00:00', ''),
(167, 'SP152', '00267', 'Rodolfo Vega Amador', 'Aguascalie', 'Nissan 2', 'GOLD', 'LG', 'LG-K200MT', '358936075034721', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-08-04', '2017-08-04 00:00:00', ''),
(168, 'SP153', '00268', 'Petra Belmares', 'Aguascalie', 'Nissan 2', 'GOLD', 'LG', 'LG-K200MT', '358936075034622', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-08-04', '2017-08-04 00:00:00', ''),
(169, 'SP154', '00269', 'Alvaro Noriega', 'Aguascalie', 'Compas', 'NEGRO', 'AZUMI', 'L2Z', '359591080452100', '', '', 1, 'Comentario', '2017-08-15', '2017-08-15 00:00:00', ''),
(170, 'SP155', '00270', 'Grettel Hernandez Esparza', 'Aguascalie', 'Compas', 'NEGRO', 'AZUMI', 'L2Z', '359591080458685', '', '', 1, 'Comentario', '2017-08-15', '2017-08-15 00:00:00', ''),
(171, 'SP156', '00271', 'Veronica Gomez Arriola', 'Jalisco', 'SKF', 'GOLD', 'LG', 'LG-K200MT', '358936075033749', 'JALisco.mexq@gmail.com', '', 1, 'Comentario', '2017-08-31', '2017-08-31 00:00:00', ''),
(172, 'SP157', '00272', 'Guillermo Olmos', 'Guanajuato', 'MAHLE', 'GOLD', 'LG', 'LG-K200MT', '358936075033681', 'guanajuato.mq@gmail.com', '', 1, 'Comentario', '2017-08-31', '2017-08-31 00:00:00', ''),
(173, 'SP158', '00273', 'Veronica Gomez Arriola', 'Jalisco', 'SKF', 'GOLD', 'LG', 'LG-K200MT', '358936075035447', 'jalisco.mexq@gmail.com', '', 1, 'Comentario', '2017-09-21', '2017-09-21 00:00:00', ''),
(174, 'SP159', '00274', 'Goreti Arias Hernandez', 'Aguascalie', 'ITW', 'GOLD', 'LG', 'LG-K200MT', '358936075033749', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-09-21', '2017-09-21 00:00:00', ''),
(175, 'SP160', '00275', 'Veronica Gomez Arriola', 'Jalisco', 'SKF', 'NEGRO', 'MOTOROLA', 'XT1601', '354138072772346', 'Jalisco.mexq@gmail.com', '', 1, 'Comentario', '2017-09-21', '2017-09-21 00:00:00', ''),
(176, 'SP161', '00276', 'Renata Medina', 'Aguascalie', 'Reclutamiento', 'NEGRO', 'HUAWEI', 'Y520-U03', '865278023465533', 'reclutamientoags.mexq@gmail.com', '', 1, 'Comentario', '2017-10-10', '2017-10-10 00:00:00', ''),
(177, 'SP162', '00277', 'Susana Cervantes Quintero', 'Aguascalie', 'ITW', 'GOLD', 'LG', 'LG-K200MT', '358936075034374', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-10-10', '2017-10-10 00:00:00', ''),
(178, 'SP163', '00278', 'Arias Hernande Goreti', 'Aguascalie', 'COMPAS', 'GOLD', 'LG', 'LG-K200MT', '358936075034333', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-10-10', '2017-10-10 00:00:00', ''),
(179, 'SP164', '00279', 'Oscar Alberto Blanco Urita', 'Aguascalie', 'Chofer', 'GOLD', 'LG', 'LG-K200MT', '358936075035371', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-10-18', '2017-10-18 00:00:00', ''),
(180, 'SP165', '00280', 'Raul Hernandez Montoyo', 'Aguascalie', 'Chofer', 'NEGRO', 'Lanix', 'Ilium X110', '355070082755855', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-10-23', '2017-10-23 00:00:00', ''),
(181, 'SP166', '00281', 'Eva ', 'Aguascalie', 'Chofer', 'NEGRO', 'Lanix', 'llium X110', '355070082756366', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-10-23', '2017-10-23 00:00:00', ''),
(182, 'SP167', '00282', 'Eva ', 'Aguascalie', 'Chofer', 'NEGRO', 'Lanix', 'Ilium X110', '355070082755947', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-10-23', '2017-10-23 00:00:00', ''),
(183, 'SP168', '00283', 'Mari Isabel Mendez Catarino', 'Metropolit', 'Operaciones', 'nEGRO', 'Lanix', 'Ilium X110', '355070082756176', 'metro.mexq@gmail.com', '', 1, 'Comentario', '2017-11-07', '2017-11-07 00:00:00', ''),
(184, 'SP169', '00284', 'Araceli Salas Ibarra', 'Aguascalie', 'Jatco', 'AZUL', 'MOTOROLA', 'XT1680', '354107090671517', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-12-15', '2017-12-15 00:00:00', ''),
(185, 'SP170', '00285', 'Juan Carlos Flores', 'Aguascalie', 'Vantec', 'AZUL', 'MOTOROLA', 'XT1680', '354107090665162', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-12-15', '2017-12-15 00:00:00', ''),
(186, 'SP171', '00286', 'Rosario Marquez', 'Aguascalie', 'Jatco Destruccion', 'AZUL', 'MOTOROLA', 'XT1680', '354107090670113', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-12-15', '2017-12-15 00:00:00', ''),
(187, 'SP172', '00287', 'Ana Rosa Diaz', 'Aguascalie', 'Jatco 2', 'AZUL', 'MOTOROLA', 'XT1680', '354107090670253', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-12-15', '2017-12-15 00:00:00', ''),
(188, 'SP173', '00288', 'Ricardo Garcia', 'Aguascalie', 'Jatco 1', 'AZUL', 'MOTOROLA', 'XT1680', '354107090670451', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-12-15', '2017-12-15 00:00:00', ''),
(189, 'SP174', '00289', 'Juan Carlos Flores', 'Aguascalie', 'Bodega Vante', 'AZUL', 'MOTOROLA', 'XT1680', '354107090669610', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-12-15', '2017-12-15 00:00:00', ''),
(190, 'SP175', '00290', 'Armando Rangel', 'Sonora', 'Operaciones', 'AZUL', 'MOTOROLA', 'XT1680', '351858085588719', 'sonora.mexq@gmail.com', '', 1, 'Comentario', '2017-12-15', '2017-12-15 00:00:00', ''),
(191, 'SP176', '00291', 'Cristina Magdaleno', 'Aguascalie', 'Boomerang', 'AZUL', 'MOTOROLA', 'XT1680', '354107090670220', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-12-15', '2017-12-15 00:00:00', ''),
(192, 'SP177', '00292', 'Rodolfo Medrano Melendez', 'Aguascalie', 'Exedy', 'AZUL', 'MOTOROLA', 'XT1680', '354107090671053', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-12-15', '2017-12-15 00:00:00', ''),
(193, 'SP178', '00293', 'Jose Antonio Astudillo Navarro', 'Morelos', 'Nissan Civan', 'AZUL', 'MOTOROLA', 'XT1680', '354107090671194', 'metro.mexq@gmail.com', '', 1, 'Comentario', '2017-12-15', '2017-12-15 00:00:00', ''),
(194, 'SP179', '00294', 'Blanca Rivera', 'Morelos', 'Nissan Civan', 'AZUL', 'MOTOROLA', 'XT1680', '354107090670246', 'metro.mexq@gmail.com', '', 1, 'Comentario', '2017-12-15', '2017-12-15 00:00:00', ''),
(195, 'SP180', '00295', 'Jose Alfredo Bernal', 'Morelos', 'Nissan Civan', 'AZUL', 'MOTOROLA', 'XT1680', '354107090669321', 'metro.mexq@gmail.com', '', 1, 'Comentario', '2017-12-15', '2017-12-15 00:00:00', ''),
(196, 'SP181', '00296', 'Fernando Lujan', 'Aguascalie', 'Corporativo', 'negro', 'MOTOROLA', 'XT1670', '354107090669198', 'corporativo.mexq@gmail.com', '', 1, 'Comentario', '2017-12-15', '2017-12-15 00:00:00', ''),
(197, 'SP182', '00297', 'Ivan Flores', 'Aguascalie', 'Corporativo', 'NEGRO', 'MOTOROLA', 'XT1670', '354107090670345', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2017-12-26', '2017-12-26 00:00:00', ''),
(198, 'SP183', '00298', 'Humberto Luevano Silva Cano', 'Aguascalie', 'ITW', 'NEGRO', 'MOTOROLA', 'XT1670', '354107090669404', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2018-01-04', '2018-01-04 00:00:00', ''),
(199, 'SP184', '00299', 'Valentin Cruz', 'Aguascalie', 'ITW', 'NEGRO', 'MOTOROLA', 'XT1671', '354107090669180', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2018-01-04', '2018-01-04 00:00:00', ''),
(200, 'SP185', '00300', 'David Davila', 'Aguascalie', 'ITW', 'NEGRO', 'MOTOROLA', 'XT1670', '354107090669479', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2018-01-04', '2018-01-04 00:00:00', ''),
(201, 'SP186', '00301', 'Marisol Diaz ', 'Aguascalie', 'Ventas', 'NEGRO', 'MOTOROLA', 'XT1670', '354107090669750', 'mexq.ventas@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(202, 'SP187', '00302', 'Paola Brito', 'Aguascalie', 'Ventas', 'NEGRO', 'MOTOROLA', 'XT1670', '354107090671582', 'mexq.ventas@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(203, 'SP188', '00303', 'Mario Alberto Moreno Jean', 'Chihuahua', 'FORD CHIHUAHUA', 'NEGRO', 'MOTOROLA', 'XT1670', '354107090669214', 'chihuahua.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(204, 'SP189', '00304', 'Marisela Loya Seas', 'Chihuahua', 'FORD CHIHUAHUA', 'NEGRO', 'MOTOROLA', 'XT1670', '354107090667895', 'chihuahua.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(205, 'SP190', '00305', 'Lupita Jimenez', 'Aguascalie', 'Corporativo', 'NEGRO', 'MOTOROLA', 'XT1670', '351858085587489', 'ljimenez.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(206, 'SP191', '00306', 'Fernando Lujan', 'Aguascalie', 'Calidad', 'NEGRO', 'MOTOROLA', 'XT1670', '351858085589600', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(207, 'SP192', '00307', 'Guillermo Olmos', 'GUANAJUATO', 'CIE CELAYA', 'NEGRO', 'MOTOROLA', 'XT1670', '354107090671467', 'guanajuato.mq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(208, 'SP192', '00308', 'Guillermo Olmos', 'GUANAJUATO', 'CIE CELAYA', 'NEGRO', 'MOTOROLA', 'XT1670', '354107090671467', 'guanajuato.mq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(209, 'SP192', '00309', 'Guillermo Olmos', 'GUANAJUATO', 'CIE CELAYA', 'NEGRO', 'MOTOROLA', 'XT1670', '354107090671467', 'guanajuato.mq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(210, 'SP193', '00310', 'Guillermo Olmos', 'GUANAJUATO', 'CIE CELAYA', 'Gris', 'SAMSUNG', 'SM-G531H (GRAND', '355643071894289', 'guanajuato.mq@gmail.com', '', 1, 'Comentario', '2018-12-28', '2018-12-28 00:00:00', ''),
(211, 'SP194', '00311', 'Chofer', 'Aguascalie', 'Operaciones', 'Negro', 'Lanix', 'X220', '353072081963474', 'aguascalientes.mexq@gmail.com', '4494581025', 1, 'Comentario', '2018-01-24', '2018-01-24 00:00:00', ''),
(212, 'SP195', '00312', 'Edson Ortega', 'GUANAJUATO', 'Operaciones', 'NEGRO', 'MOTOROLA', 'XT1670', '351858085589618', 'eortega.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(213, 'SP196', '00313', 'Thelma Gloria Jusaino Castillo ', 'Sonora', 'FORD', 'NEGRO', 'MOTOROLA', 'XT1772', '359555080521719', 'sonora.mexq@gmail.com', '', 1, 'Comentario', '2018-02-02', '2018-02-02 00:00:00', ''),
(214, 'SP197', '00314', '', 'GUANAJUATO', 'HALMEX', 'NEGRO', 'MOTOROLA', 'XT1772', '355639081981934', 'guanajuato.mq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(215, 'SP198', '00315', '', 'Aguascalie', 'JATCO', 'NEGRO', 'MOTOROLA', 'XT1772', '355636081758841', 'aguascalientes.mexq@gmail.com', '4498672210', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(216, 'SP199', '00316', '', 'Metropolit', 'FORD CUATITLAN', 'NEGRO', 'MOTOROLA', 'XT1772', '355636082506090', 'metro.mexq@gmail.com', '4498671848', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(217, 'SP200', '00317', '', 'Metropolit', 'FORD CUATITLAN', 'NEGRO', 'MOTOROLA', 'XT1772', '359555080402274', 'metro.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(218, 'SP201', '00318', 'Griselda Meza Aleman', 'Aguascalie', 'Ventas', 'NEGRO', 'MOTOROLA', 'XT1772', '355639081645372', 'mexq.ventas@gmail.com', '4493537435', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(219, 'SP202', '00319', 'Mancillas Ruiz Ventura Alfonso', 'Sonora', 'IACNA', 'NEGRO', 'MOTOROLA', 'XT1772', '359555081414989', 'sonora.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(220, 'SP203', '00320', 'Cardenas Ramirez Kristen Nelly', 'Aguascalie', 'ITW', 'NEGRO', 'MOTOROLA', 'XT1772', '359555080524291', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(221, 'SP204', '00321', 'Liliana Rebolledo', 'SLP', 'FAURECIA', 'NEGRO', 'MOTOROLA', 'XT1772', '355636082509078', 'slp.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(222, 'SP205', '00322', 'Hernandez Lopez Jorge', 'SLP', 'FAURECIA', 'NEGRO', 'MOTOROLA', 'XT1772', '355636082514755', 'slp.mexq@gmail.com', '4495578978', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(223, 'SP206', '00323', 'Rocha Marquez Jonathan Alejandro', 'SLP', 'FAURECIA', 'NEGRO', 'MOTOROLA', 'XT1772', '359555080522931', 'slp.mexq@gmail.com', '4494063093', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(224, 'SP207', '00324', '', 'Puebla', 'BENTELER', 'AZUL', 'MOTOROLA', 'XT1763', '355639081670875', 'puebla.mexq@gmail.com', '4493372376', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(225, 'SP208', '00325', 'FRANCISCO OLMOS', '', '', 'AZUL', 'MOTOROLA', 'XT1680', '351858055588800', 'corporativo.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(226, 'SP209', '00326', 'JESSICA ALVARES LUQUIN', 'GUANAJUATO', 'Asahi', 'AZUL', 'MOTOROLA', 'XT1763', '355639081645356', 'guanajuato.mq@gmail.com', '4492699847', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(227, 'SP210', '00327', 'Yesenia Cardenas', 'Aguascalie', 'Exedy', 'AZUL', 'MOTOROLA', 'XT1763', '355639081675114', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '0000-00-00', '0000-00-00 00:00:00', ''),
(228, 'SP210', '00328', 'Araceli Macias', 'AGS', 'Exedy', 'AZUL', 'MOTOROLA', 'XT1763', '355639081675114', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2018-02-13', '2018-02-14 00:00:00', ''),
(229, 'SP211', '00329', 'Eduardo Matias', 'AGS', 'Exedy', 'AZUL', 'MOTOROLA', 'XT1763', '355639081656114', 'aguascalientes.mexq@gmail.com', '', 1, 'Comentario', '2018-02-13', '2018-02-14 00:00:00', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `support`
--

CREATE TABLE IF NOT EXISTS `support` (
`id` int(11) NOT NULL,
  `computer_code` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `employee_code` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `employee_name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `reason` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `comment` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `description` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `support_date` date NOT NULL,
  `agent` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `support`
--

INSERT INTO `support` (`id`, `computer_code`, `employee_code`, `employee_name`, `reason`, `comment`, `description`, `support_date`, `agent`, `status`) VALUES
(1, 'MQ1', '08444', 'César Valenciano', 'Internet', 'Cable de red desconectado', 'Cable de red desconectado', '2018-02-09', 'César Valenciano', 1),
(2, 'MQ101', '00000', 'Supervisor Jatco Supervisor Jatco', 'Internet', '1', '', '0000-00-00', '', 1),
(3, 'MQ204', '00029', 'Miguel Angel Romo Hernandez', 'Correo', 'No puede enviar', '2018-02-07', '0000-00-00', '', 1),
(4, 'MQ204', '00029', 'Miguel Angel Romo Hernandez', 'Correo', 'No puede enviar', 'No puede enviar correos debido a la lentitud de la red, esta conectado mediante datos de teléfono, se recomendó buscar un lugar con mejor señal', '2018-02-07', '', 1),
(5, 'MQ204', '00029', 'Miguel Angel Romo Hernandez', 'Hardware', 'No enciende pantalla', 'kfbsdhfbaksfbsdblhfasbdjkfsdhklaflhasbdñf', '2018-02-01', '', 1),
(6, 'MQ185', '00000', 'Reclutador 12 Reclutador 12', 'Correo', 'No puede enviar', 'fsdfsdffsdfsdfs', '2018-02-06', '', 1),
(7, 'MQ1', '00497', 'Edson Christian Ortega Perez', 'Software', 'Instalar Office', 'Realizado', '2018-02-08', 'César Valenciano', 1),
(8, 'MQ186', '00000', 'Jessica  Jessica ', 'Hardware', 'Instalar Webcam', 'Instalacion de camara web\r\n', '2018-02-08', '', 1),
(9, 'MQ1', '00497', 'Edson Christian Ortega Perez', 'Internet', 'Cable de red desconectado', 'qwety', '2018-02-05', 'César Valenciano', 2),
(10, 'PC92', '11965', 'Ibis Sarahi Rivera Paredes', 'Correo', 'No envia', 'Puerto actualizado 587 a 465 con SSL', '2018-02-07', 'César Valenciano', 3),
(11, 'PC92', '11965', 'Ibis Sarahi Rivera Paredes', 'Software', 'Instalar Office', 'sdfsdfds', '2018-02-10', 'César Valenciano', 1),
(12, 'MQ100', '00000', 'Gonzalez Garcia Norma Fabiola Gonzalez Garcia Norm', 'Correo', 'Configurar cuenta de correo', 'Configurar cuenta de Leslie Romero (l.romero@mexq.com.mx) / Se elimino de la configuración la cuenta de jmoran@mexq.com.mx', '2018-12-31', 'César Valenciano', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `login` varchar(35) COLLATE utf8_spanish_ci NOT NULL,
  `pwd` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `employee_id` varchar(5) COLLATE utf8_spanish_ci DEFAULT NULL,
  `employee_name` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `employee_position` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `employee_branch` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `employee_area` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `employee_phone` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `roll` int(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `login`, `pwd`, `employee_id`, `employee_name`, `employee_position`, `employee_branch`, `employee_area`, `employee_phone`, `roll`) VALUES
(1, 'admin@mexq.com.mx', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2', '00001', 'Administrador De Sistemas', 'SISTEMAS', 'CORPORATIVO', 'SISTEMAS', '', 0),
(2, 'rm@mexq.com.mx', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2', '19676', 'Recursos Materiales 1', NULL, NULL, NULL, '', 1),
(6, 'auxiliar.sistemas@mexq.com.mx', 'cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e', '21629', 'Rodrigo Gonzalez Aguilar', NULL, NULL, NULL, '', 0),
(7, 'cvalenciano@mexq.com.mx', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2', '08444', 'Valenciano Fonseca Cesar Adolfo', 'TEAM LEADER DE SISTEMAS', 'CORPORATIVO', 'SISTEMAS', '', 0),
(8, 'llaguirre@mexq.com.mx', '6bfcc4026b5f162799a6dc8305c09db9c1674ac616bd5c7422a45fbb6d0816ac163047c47a1f426f4f4c6b5b5042c671eabc4fdc7310fd5b183eef59dc274604', '00256', 'Lluvia Del Rosario Aguirre Rodriguez', NULL, NULL, NULL, '', 3),
(10, 'eortega@mexq.com.mx', '6bfcc4026b5f162799a6dc8305c09db9c1674ac616bd5c7422a45fbb6d0816ac163047c47a1f426f4f4c6b5b5042c671eabc4fdc7310fd5b183eef59dc274604', '00497', 'Ortega Perez Edson Christian', 'GERENTE DE UNIDAD DE NEGOCIO', 'GTO', 'GTO', '', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accounts`
--
ALTER TABLE `accounts`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `maintenance`
--
ALTER TABLE `maintenance`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registry`
--
ALTER TABLE `registry`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `smartphone`
--
ALTER TABLE `smartphone`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `support`
--
ALTER TABLE `support`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `employee_id` (`employee_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accounts`
--
ALTER TABLE `accounts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `maintenance`
--
ALTER TABLE `maintenance`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `registry`
--
ALTER TABLE `registry`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=384;
--
-- AUTO_INCREMENT de la tabla `smartphone`
--
ALTER TABLE `smartphone`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=230;
--
-- AUTO_INCREMENT de la tabla `support`
--
ALTER TABLE `support`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
