-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 03-02-2018 a las 13:42:54
-- Versión del servidor: 5.7.19
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `marketbd`
--
DROP DATABASE IF EXISTS `marketbd`;
CREATE DATABASE IF NOT EXISTS `marketbd` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
USE `marketbd`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `id_cat` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `limite` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cat`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_cat`, `nombre`, `limite`) VALUES
(1, 'CARNES', 0),
(2, 'FRUTAS', 0),
(3, 'VERDURAS', 0),
(4, 'TUBERCULOS', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `id_cliente` bigint(20) NOT NULL AUTO_INCREMENT,
  `ci` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre` varchar(200) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra_r`
--

DROP TABLE IF EXISTS `compra_r`;
CREATE TABLE IF NOT EXISTS `compra_r` (
  `id_compra` bigint(20) NOT NULL AUTO_INCREMENT,
  `nro_recibo` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `total` float NOT NULL,
  `fecha` datetime NOT NULL,
  `id_cliente` bigint(20) NOT NULL,
  `id_usuario` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_compra`),
  KEY `FK_CLI_DET` (`id_cliente`),
  KEY `FK_USER_DET` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

DROP TABLE IF EXISTS `producto`;
CREATE TABLE IF NOT EXISTS `producto` (
  `id_prod` bigint(20) NOT NULL AUTO_INCREMENT,
  `nroplu` tinyint(1) NOT NULL COMMENT 'es el numero que esta registrado en la balanza',
  `descripcion` varchar(100) COLLATE utf8_spanish2_ci DEFAULT '2',
  `tipo` int(11) NOT NULL COMMENT 'si es pesable 2 y si es unidad 1',
  `precio` float DEFAULT NULL,
  `cod_barras` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `id_cat` bigint(11) NOT NULL,
  PRIMARY KEY (`id_prod`),
  KEY `id_cat` (`id_cat`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_prod`, `nroplu`, `descripcion`, `tipo`, `precio`, `cod_barras`, `id_cat`) VALUES
(1, 1, 'filete', 2, 60, '2001', 1),
(2, 2, 'pulpa', 2, 48, '2002', 1),
(3, 3, 'cabeza de lomo', 2, 48, '2003', 1),
(4, 4, 'peseto', 2, 48, '2004', 1),
(5, 5, 'churrasco', 2, 38, '2005', 1),
(6, 6, 'aujilla', 2, 30, '2006', 1),
(7, 7, 'costilla', 2, 28, '2007', 1),
(8, 8, 'cadera', 2, 32, '2008', 1),
(9, 9, 'pecho', 2, 28, '2009', 1),
(10, 10, 'lapin', 2, 32, '2010', 1),
(11, 11, 'molida', 2, 38, '2011', 1),
(12, 12, 'ozobuco', 2, 28, '2012', 1),
(13, 13, 'pollo', 2, 16, '2013', 1),
(14, 14, 'pescado_pacu', 2, 40, '2014', 1),
(15, 15, 'pescado_trucha', 2, 45, '2015', 1),
(16, 16, 'pesacado_pejerrey', 2, 50, '2016', 1),
(17, 17, 'huevo_setenta', 1, 0, '1017', 1),
(18, 18, 'huevo_ochenta', 1, 0, '1018', 1),
(19, 19, 'papaya', 1, 8, '1019', 2),
(20, 20, 'platano', 1, 0, '1020', 2),
(21, 21, 'naranja', 1, 0, '1021', 2),
(22, 22, 'durazno', 2, 8, '2022', 2),
(23, 23, 'tuna', 1, 1, '1023', 2),
(24, 24, 'piña', 1, 10, '1024', 2),
(25, 25, 'mandarina', 1, 0, '1025', 2),
(26, 26, 'uva', 2, 10, '2026', 2),
(27, 27, 'apio', 2, 3, '2027', 3),
(28, 28, 'zanahoria', 2, 6, '2028', 3),
(29, 29, 'vainitas', 2, 6, '2029', 3),
(30, 30, 'espinaca', 2, 8, '2030', 3),
(31, 31, 'arberja', 2, 10, '2031', 3),
(32, 32, 'postre', 1, 1, '1032', 3),
(33, 33, 'locoto', 2, 10, '2033', 3),
(34, 34, 'perejil', 2, 3, '2034', 3),
(35, 35, 'cebolla', 2, 8, '2035', 3),
(36, 36, 'papa', 2, 6, '2036', 4),
(37, 37, 'camote', 2, 6, '2037', 4),
(38, 38, 'yuca', 2, 8, '2038', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_etiquetado`
--

DROP TABLE IF EXISTS `producto_etiquetado`;
CREATE TABLE IF NOT EXISTS `producto_etiquetado` (
  `id_etiqueta` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_barras` varchar(300) COLLATE utf8_spanish2_ci NOT NULL COMMENT 'codigo de barras generado por productos etiquetados',
  `preciototal` float NOT NULL COMMENT 'precio deacurdo al peso o cantidad del producto',
  `peso_cantidad` float NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'estado si se vendio o no',
  `id_prod` bigint(20) DEFAULT NULL,
  `id_compra` bigint(20) DEFAULT NULL COMMENT 'aqui esta el id de la compra si es que se vende este producto',
  PRIMARY KEY (`id_etiqueta`),
  KEY `FK_PROD_DET` (`id_prod`),
  KEY `FK_COMPRA_DET` (`id_compra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_login`
--

DROP TABLE IF EXISTS `usuario_login`;
CREATE TABLE IF NOT EXISTS `usuario_login` (
  `id_usuario` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `usuario` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `contrasenia` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  `tipo` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario_login`
--

INSERT INTO `usuario_login` (`id_usuario`, `nombre`, `fecha_registro`, `usuario`, `contrasenia`, `estado`, `tipo`) VALUES
(1, 'Haki Ari', '2018-02-01 02:26:10', 'admin', '$2y$10$I18B6QvoVkPXvkgGTCdqNOx34WRsatkevdUvKbvfihfLizu/GmuTO', 1, 0);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compra_r`
--
ALTER TABLE `compra_r`
  ADD CONSTRAINT `FK_CLI_DET` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_USER_DET` FOREIGN KEY (`id_usuario`) REFERENCES `usuario_login` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_cat`) REFERENCES `categoria` (`id_cat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto_etiquetado`
--
ALTER TABLE `producto_etiquetado`
  ADD CONSTRAINT `FK_COMPRA_DET` FOREIGN KEY (`id_compra`) REFERENCES `compra_r` (`id_compra`),
  ADD CONSTRAINT `FK_PROD_DET` FOREIGN KEY (`id_prod`) REFERENCES `producto` (`id_prod`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
