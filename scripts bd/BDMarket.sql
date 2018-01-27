/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 10.1.8-MariaDB : Database - marketbd
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`marketbd` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci */;

USE `marketbd`;

/*Table structure for table `categoria` */

DROP TABLE IF EXISTS `categoria`;

CREATE TABLE `categoria` (
  `id_cat` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `limite` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `categoria` */

/*Table structure for table `cliente` */

DROP TABLE IF EXISTS `cliente`;

CREATE TABLE `cliente` (
  `id_cliente` bigint(20) NOT NULL AUTO_INCREMENT,
  `ci` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre` varchar(200) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `cliente` */

/*Table structure for table `compra_r` */

DROP TABLE IF EXISTS `compra_r`;

CREATE TABLE `compra_r` (
  `id_compra` bigint(20) NOT NULL AUTO_INCREMENT,
  `nro_recibo` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `total` float NOT NULL,
  `fecha` datetime NOT NULL,
  `id_cliente` bigint(20) NOT NULL,
  `id_usuario` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_compra`),
  KEY `FK_CLI_DET` (`id_cliente`),
  KEY `FK_USER_DET` (`id_usuario`),
  CONSTRAINT `FK_CLI_DET` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_USER_DET` FOREIGN KEY (`id_usuario`) REFERENCES `usuario_login` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `compra_r` */

/*Table structure for table `producto` */

DROP TABLE IF EXISTS `producto`;

CREATE TABLE `producto` (
  `id_prod` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `cod_barras` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `precioxkilo` float DEFAULT NULL COMMENT 'este puede ser nulo si es que tiene un producto derivado',
  `subproducto` tinyint(1) DEFAULT '0' COMMENT 'sera 0 si no existe un subproducto y uno si existe',
  `estado` tinyint(1) DEFAULT '1' COMMENT 'El estdo se pondra en 0 cuando esteproducto sea descontinuado',
  `limite` int(11) DEFAULT NULL COMMENT 'el limite sera nulo si no esta en la categoria de carne',
  `id_cat` bigint(11) NOT NULL,
  PRIMARY KEY (`id_prod`),
  KEY `id_cat` (`id_cat`),
  CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_cat`) REFERENCES `categoria` (`id_cat`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `producto` */

/*Table structure for table `producto_etiquetado` */

DROP TABLE IF EXISTS `producto_etiquetado`;

CREATE TABLE `producto_etiquetado` (
  `id_etiqueta` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_barras` varchar(300) COLLATE utf8_spanish2_ci NOT NULL COMMENT 'codigo de barras generado por productos etiquetados',
  `preciototal` float NOT NULL COMMENT 'precio deacurdo al peso o cantidad del producto',
  `peso_cantidad` float NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'estado si se vendio o no',
  `id_prod` bigint(20) DEFAULT NULL,
  `id_deriv` bigint(20) DEFAULT NULL,
  `id_compra` bigint(20) DEFAULT NULL COMMENT 'aqui esta el id de la compra si es que se vende este producto',
  PRIMARY KEY (`id_etiqueta`),
  KEY `FK_PROD_DET` (`id_prod`),
  KEY `FK_DERIV_DET` (`id_deriv`),
  KEY `FK_COMPRA_DET` (`id_compra`),
  CONSTRAINT `FK_COMPRA_DET` FOREIGN KEY (`id_compra`) REFERENCES `compra_r` (`id_compra`),
  CONSTRAINT `FK_DERIV_DET` FOREIGN KEY (`id_deriv`) REFERENCES `productos_deriados` (`id_deriv`),
  CONSTRAINT `FK_PROD_DET` FOREIGN KEY (`id_prod`) REFERENCES `producto` (`id_prod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `producto_etiquetado` */

/*Table structure for table `productos_deriados` */

DROP TABLE IF EXISTS `productos_deriados`;

CREATE TABLE `productos_deriados` (
  `id_deriv` bigint(20) NOT NULL AUTO_INCREMENT,
  `tiponombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `precio` float NOT NULL COMMENT 'es el precio por cantidad o por peso deacuerdo al producto',
  `cod_barras` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  `id_prod` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_deriv`),
  KEY `FK_PRODDERIV` (`id_prod`),
  CONSTRAINT `FK_PRODDERIV` FOREIGN KEY (`id_prod`) REFERENCES `producto` (`id_prod`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `productos_deriados` */

/*Table structure for table `usuario_login` */

DROP TABLE IF EXISTS `usuario_login`;

CREATE TABLE `usuario_login` (
  `id_usuario` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `usuario` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `contrasenia` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  `tipo` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `usuario_login` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
