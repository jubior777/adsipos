-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-10-2021 a las 03:43:33
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `adsmimed`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activos`
--

CREATE TABLE `activos` (
  `idactivo` int(11) NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `codigo` varchar(150) NOT NULL,
  `nombreProducto` varchar(150) NOT NULL,
  `cantidad` varchar(150) NOT NULL,
  `fechaRegistro` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `activos`
--

INSERT INTO `activos` (`idactivo`, `imagen`, `codigo`, `nombreProducto`, `cantidad`, `fechaRegistro`) VALUES
(6, 'fotoproducto/escoba.jpg', '10024', 'Escoba verde', '2', '2021-05-18'),
(4, 'fotoproducto/valde.jpg', '1010', 'Balde', '44', '2021-05-18'),
(9, 'fotoproducto/parfait.jpg', '1017', 'Batido Especial', '10', '2021-10-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alerta`
--

CREATE TABLE `alerta` (
  `alertaId` int(11) NOT NULL,
  `tipoAlerta` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `mensaje` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `alerta`
--

INSERT INTO `alerta` (`alertaId`, `tipoAlerta`, `mensaje`) VALUES
(1, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefonoFijo` varchar(20) NOT NULL,
  `telefonoCelular` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `observaciones` text NOT NULL,
  `fechaRegistro` date NOT NULL,
  `cc` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idcliente`, `foto`, `nombre`, `apellido`, `direccion`, `telefonoFijo`, `telefonoCelular`, `email`, `observaciones`, `fechaRegistro`, `cc`) VALUES
(11, 'fotoproducto/user03.jpg', 'Jose', 'Cal', 'murillo', '3112557425', '5172585', 'juanperez@gmail.coml', '', '2021-10-14', '123445'),
(27, 'fotoproducto/userM3.jpg', ' santiago ', 'Cal', 'Av. Circunvalacion Melchor Perez', '7184858', '3112122210', ' juana@gmail.com', '', '2021-10-12', '1234567'),
(18, 'fotoproducto/user12.jpg', 'Jorge Andres ', 'Viloria', 'murillo 45', '7132425', '3112122222', 'jorgeavm7@hotmail.com', '', '2021-05-21', '1234567'),
(24, 'fotoproducto/user02.jpg', ' Juan   ', 'Perez ', 'murillo', '3112557425', '3112122210', ' juan@gmail.com', '', '2021-09-05', '123445');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientedato`
--

CREATE TABLE `clientedato` (
  `idCliente` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `cc` varchar(50) NOT NULL,
  `fecha` datetime NOT NULL,
  `totalApagar` double NOT NULL,
  `efectivo` double NOT NULL,
  `cambio` double NOT NULL,
  `idClientei` varchar(50) NOT NULL,
  `tipoVenta` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientedato`
--

INSERT INTO `clientedato` (`idCliente`, `nombre`, `cc`, `fecha`, `totalApagar`, `efectivo`, `cambio`, `idClientei`, `tipoVenta`) VALUES
(0, 'S/N', '00', '2021-06-21 01:22:30', 2500, 3500, 1000, '', ''),
(57, 'Cal', '0', '2021-06-21 01:24:56', 2050, 3000, 950, '1', 'Local'),
(22, 'Viloria', '1234567', '2021-06-14 02:53:44', 1750, 5000, 3250, '1', 'Local'),
(39, 'Sepulveda', '123456', '2021-06-14 17:09:56', 1750, 3000, 1250, '1', 'Local'),
(45, 'Sepulveda', '123456', '2021-06-14 17:36:04', 1750, 3000, 1250, '1', 'Local'),
(46, 'Sepulveda', '123456', '2021-06-14 18:03:03', 1750, 3000, 1250, '1', 'Local'),
(47, 'Sepulveda', '123456', '2021-06-14 18:04:00', 1750, 3000, 1250, '1', 'Local'),
(48, 'Sepulveda', '123456', '2021-06-17 17:58:18', 1750, 3000, 1250, '1', 'Local'),
(49, 'Sepulveda', '123456', '2021-06-21 00:15:43', 2050, 3000, 950, '1', 'Local'),
(50, 'Sepulveda', '123456', '2021-06-21 00:16:20', 2050, 3000, 950, '1', 'Local'),
(51, 'Sepulveda', '123456', '2021-06-21 00:16:25', 2050, 3000, 950, '1', 'Local'),
(52, 'Sepulveda', '123456', '2021-06-21 00:18:53', 2050, 3000, 950, '1', 'Local'),
(53, 'Sepulveda', '123456', '2021-06-21 00:45:05', 2050, 3000, 950, '1', 'Local'),
(54, 'Cal', '0', '2021-06-21 01:03:09', 2050, 3000, 950, '1', 'Local'),
(55, 'Cal', '0', '2021-06-21 01:03:42', 2050, 3000, 950, '1', 'Local'),
(58, 'Cal', '00', '2021-06-27 00:00:18', 2050, 3000, 950, '1', 'Local'),
(59, 'Cal', '00', '2021-06-27 00:00:36', 2050, 3000, 950, '1', 'Local'),
(60, 'Cal', '00', '2021-06-27 00:03:50', 2050, 3000, 950, '1', 'Local'),
(61, 'Cal', '00', '2021-06-27 00:05:40', 2050, 3000, 950, '1', 'Local'),
(62, 'Cal', '00', '2021-06-27 00:06:40', 2050, 3000, 950, '1', 'Local'),
(63, 'Cal', '00', '2021-06-27 00:45:15', 2050, 3000, 950, '1', 'Local'),
(64, 'Sepulveda', '123456', '2021-06-27 02:15:03', 1612, 3000, 1388, '1', 'Local'),
(65, 'Sepulveda', '123456', '2021-09-09 22:44:31', 80, 200, 120, '1', 'Local'),
(66, 'Sepulveda', '123456', '2021-09-09 22:44:47', 80, 200, 120, '1', 'Local'),
(67, 'Sepulveda', '123456', '2021-09-09 22:53:08', 80, 200, 120, '1', 'Local'),
(68, 'Sepulveda', '123456', '2021-09-09 22:53:15', 80, 200, 120, '1', 'Local'),
(69, 'Sepulveda', '123456', '2021-09-09 22:53:18', 80, 200, 120, '1', 'Local'),
(70, 'Sepulveda', '123456', '2021-09-09 22:54:12', 80, 200, 120, '1', 'Local'),
(71, 'Sepulveda', '123456', '2021-09-09 22:54:15', 80, 200, 120, '1', 'Local'),
(72, 'Sepulveda', '123456', '2021-09-09 23:01:48', 80, 200, 120, '1', 'Local'),
(73, 'Sepulveda', '123456', '2021-09-09 23:01:57', 80, 200, 120, '1', 'Local'),
(74, 'Sepulveda', '123456', '2021-09-09 23:02:44', 80, 200, 120, '1', 'Local'),
(75, 'Sepulveda', '123456', '2021-09-09 23:03:02', 80, 200, 120, '1', 'Local'),
(76, 'Sepulveda', '123456', '2021-09-09 23:03:48', 80, 200, 120, '1', 'Local'),
(77, 'Sepulveda', '123456', '2021-09-09 23:07:35', 80, 200, 120, '1', 'Local'),
(78, 'Sepulveda', '123456', '2021-09-09 23:07:37', 80, 200, 120, '1', 'Local'),
(79, 'Sepulveda', '123456', '2021-09-09 23:08:55', 80, 200, 120, '1', 'Local'),
(80, 'Sepulveda', '123456', '2021-09-09 23:09:12', 80, 200, 120, '1', 'Local'),
(81, 'Sepulveda', '123456', '2021-09-09 23:09:34', 80, 200, 120, '1', 'Local'),
(82, 'Sepulveda', '123456', '2021-09-09 23:10:32', 80, 200, 120, '1', 'Local'),
(83, 'Sepulveda', '123456', '2021-09-09 23:10:46', 80, 200, 120, '1', 'Local'),
(84, 'Sepulveda', '123456', '2021-09-09 23:13:03', 80, 200, 120, '1', 'Local'),
(85, 'Sepulveda', '123456', '2021-09-09 23:13:54', 80, 200, 120, '1', 'Local'),
(86, 'jorge andres viloria molina', '123456', '2021-10-12 00:23:52', 680, 700, 20, '1', 'Local'),
(87, 'jorge andres viloria molina', '123456', '2021-10-12 00:32:57', 2338, 2400, 62, '1', 'Local'),
(88, 'jorge andres viloria molina', '123456', '2021-10-12 00:33:01', 2338, 2400, 62, '1', 'Local'),
(89, 'jorge andres viloria molina', '123456', '2021-10-12 00:35:20', 2338, 2400, 62, '1', 'Local'),
(90, 'jorge andres viloria molina', '123456', '2021-10-12 00:51:29', 2338, 2400, 62, '1', 'Local'),
(91, 'jorge andres viloria molina', '123456', '2021-10-12 00:51:36', 2338, 2400, 62, '1', 'Local'),
(92, 'jorge andres viloria molina', '123456', '2021-10-12 03:13:43', 330, 350, 20, '1', 'Local'),
(93, 'jorge andres viloria molina', '123456', '2021-10-14 15:12:30', 10, 200, 190, '1', 'Local'),
(94, 'jorge andres viloria molina', '123456', '2021-10-14 15:12:38', 10, 200, 190, '1', 'Local'),
(95, 'jorge andres viloria molina', '123456', '2021-10-14 15:13:35', 10, 200, 190, '1', 'Local'),
(96, 'jorge andres viloria molina', '123456', '2021-10-14 15:16:10', 10, 200, 190, '1', 'Local'),
(97, 'jorge andres viloria molina', '123456', '2021-10-14 15:16:30', 10, 200, 190, '1', 'Local'),
(98, 'jorge andres viloria molina', '123456', '2021-10-14 15:16:32', 10, 200, 190, '1', 'Local'),
(99, 'jorge andres viloria molina', '123456', '2021-10-14 15:16:42', 10, 200, 190, '1', 'Local'),
(100, 'jorge andres viloria molina', '123456', '2021-10-14 15:17:30', 10, 200, 190, '1', 'Local'),
(101, 'jorge andres viloria molina', '123456', '2021-10-14 15:38:36', 10, 200, 190, '1', 'Local'),
(102, 'jorge andres viloria molina', '123456', '2021-10-14 15:38:38', 10, 200, 190, '1', 'Local'),
(103, 'jorge andres viloria molina', '123456', '2021-10-14 15:44:04', 10, 200, 190, '1', 'Local'),
(104, 'jorge andres viloria molina', '123456', '2021-10-14 15:44:14', 10, 200, 190, '1', 'Local'),
(105, 'jorge andres viloria molina', '123456', '2021-10-14 15:44:18', 10, 200, 190, '1', 'Local'),
(106, 'jorge andres viloria molina', '123456', '2021-10-14 15:59:28', 10, 200, 190, '1', 'Local'),
(107, 'jorge andres viloria molina', '123456', '2021-10-14 16:00:12', 10, 200, 190, '1', 'Local'),
(108, 'jorge andres viloria molina', '123456', '2021-10-14 16:09:22', 10, 200, 190, '1', 'Local'),
(109, 'jorge andres viloria molina', '123456', '2021-10-14 16:11:53', 10, 200, 190, '1', 'Local'),
(110, 'jorge andres viloria molina', '123456', '2021-10-14 16:12:52', 10, 200, 190, '1', 'Local'),
(111, 'jorge andres viloria molina', '123456', '2021-10-14 16:19:27', 10, 200, 190, '1', 'Local'),
(112, 'jorge andres viloria molina', '123456', '2021-10-14 16:19:28', 10, 200, 190, '1', 'Local'),
(113, 'jorge andres viloria molina', '123456', '2021-10-14 16:19:29', 10, 200, 190, '1', 'Local'),
(114, 'jorge andres viloria molina', '123456', '2021-10-14 16:34:30', 10, 20, 10, '1', 'Local'),
(115, 'jorge andres viloria molina', '123456', '2021-10-14 16:34:33', 10, 20, 10, '1', 'Local'),
(116, 'jorge andres viloria molina', '123456', '2021-10-14 16:48:45', 10, 20, 10, '1', 'Local'),
(117, 'jorge andres viloria molina', '123456', '2021-10-14 16:48:48', 10, 20, 10, '1', 'Local'),
(118, 'jorge andres viloria molina', '123456', '2021-10-14 16:52:27', 10, 20, 10, '1', 'Local'),
(119, 'jorge andres viloria molina', '123456', '2021-10-14 16:52:32', 10, 20, 10, '1', 'Local'),
(120, 'jorge andres viloria molina', '123456', '2021-10-14 16:52:34', 10, 20, 10, '1', 'Local'),
(121, 'jorge andres viloria molina', '123456', '2021-10-14 16:55:39', 10, 20, 10, '1', 'Local'),
(122, 'jorge andres viloria molina', '123456', '2021-10-14 16:55:40', 10, 20, 10, '1', 'Local'),
(123, 'jorge andres viloria molina', '123456', '2021-10-14 16:55:41', 10, 20, 10, '1', 'Local'),
(124, 'jorge andres viloria molina', '123456', '2021-10-14 16:56:46', 10, 20, 10, '1', 'Local'),
(125, 'jorge andres viloria molina', '123456', '2021-10-14 16:56:48', 10, 20, 10, '1', 'Local'),
(126, 'jorge andres viloria molina', '123456', '2021-10-14 16:56:48', 10, 20, 10, '1', 'Local'),
(127, 'jorge andres viloria molina', '123456', '2021-10-14 17:00:29', 10, 20, 10, '1', 'Local'),
(128, 'jorge andres viloria molina', '123456', '2021-10-14 17:00:56', 10, 20, 10, '1', 'Local'),
(129, 'jorge andres viloria molina', '123456', '2021-10-14 17:01:32', 10, 20, 10, '1', 'Local');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigocontrol`
--

CREATE TABLE `codigocontrol` (
  `idcodigo` int(11) NOT NULL,
  `autorizacion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `factura` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `llave` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `nit` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `fechaL` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `iddatos` int(11) NOT NULL,
  `propietario` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `razonSocial` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `nro` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`iddatos`, `propietario`, `razonSocial`, `direccion`, `nro`, `telefono`) VALUES
(1, 'Jorge viloria', 'Restaurante Adonaí', 'Calle 11 A # 27 -25', '1234567', '3053542628');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datosclienteventa`
--

CREATE TABLE `datosclienteventa` (
  `idClienteVenta` int(11) NOT NULL,
  `fechaVenta` datetime NOT NULL,
  `nitCliente` varchar(50) NOT NULL,
  `cliente` varchar(50) NOT NULL,
  `codigoControl` varchar(50) NOT NULL,
  `idVentas` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `datosclienteventa`
--

INSERT INTO `datosclienteventa` (`idClienteVenta`, `fechaVenta`, `nitCliente`, `cliente`, `codigoControl`, `idVentas`, `estado`) VALUES
(1, '2020-10-11 05:55:25', '0', 'S/N', 'C0-32-A1-2F', '1', 'Consolidado'),
(2, '2020-10-11 06:15:11', '0', 'S/N', 'C0-32-A1-2F', '2', 'Consolidado'),
(3, '2020-10-11 06:16:16', '0', 'S/N', 'C0-32-A1-2F', '3', 'Consolidado'),
(4, '2020-10-11 06:22:41', '0', 'S/N', 'C0-32-A1-2F', '4', 'Consolidado'),
(5, '2020-10-11 06:23:04', '0', 'S/N', '38-F5-57-B1', '5', 'Consolidado'),
(6, '2020-10-11 07:43:38', '0', 'S/N', '38-F5-57-B1', '6', 'Consolidado'),
(7, '2020-10-11 07:50:09', '0', 'S/N', 'F7-2E-18-10', '7', 'Consolidado'),
(8, '2020-10-11 07:51:51', '0', 'S/N', 'F7-2E-18-10', '8', 'Consolidado'),
(9, '2020-10-12 13:45:12', '6444685', 'Calani', '78-04-D8-27', '9', 'Consolidado'),
(10, '2020-10-13 13:46:17', '909090', 'Perez', 'CD-AF-BF-87', '10', 'Consolidado'),
(11, '2020-10-13 13:48:31', '909090', 'Perez', '43-00-D7-0A', '11', 'Consolidado'),
(12, '2020-10-13 13:48:45', '909090', 'Perez', 'CD-AF-BF-87', '12', 'Consolidado'),
(13, '2020-10-13 13:49:04', '77777', 'Encinas', 'F6-06-55-D5-E3', '13', 'Consolidado'),
(14, '2020-10-13 13:49:18', '77777', 'Encinas', 'F6-06-55-D5-E3', '14', 'Consolidado'),
(15, '2020-10-16 13:19:37', '5555', 'Perez Messil', '64-0F-64-D9-FE', '15', 'Consolidado'),
(16, '2020-10-17 12:16:56', '0', 'S/N', 'F8-8D-73-1D', '16', 'Consolidado'),
(17, '2020-10-18 12:46:28', '5555', 'Perez Messil', '18-8E-24-FC-55', '17', 'Consolidado'),
(18, '2020-11-01 22:33:01', '0', 'S/N', '9E-25-79-D2-F8', '18', 'Consolidado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datosfacturaventa`
--

CREATE TABLE `datosfacturaventa` (
  `idDatosFactura` int(11) NOT NULL,
  `nit` varchar(50) NOT NULL,
  `factura` varchar(50) NOT NULL,
  `numeroAutorizacion` varchar(50) NOT NULL,
  `codigoControl` varchar(50) NOT NULL,
  `idVentas` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `datosfacturaventa`
--

INSERT INTO `datosfacturaventa` (`idDatosFactura`, `nit`, `factura`, `numeroAutorizacion`, `codigoControl`, `idVentas`, `estado`) VALUES
(1, '1689353', '1503', '29040011007', 'C0-32-A1-2F', '1', 'Consolidado'),
(2, '1689353', '1503', '29040011007', 'C0-32-A1-2F', '2', 'Consolidado'),
(3, '1689353', '1503', '29040011007', 'C0-32-A1-2F', '3', 'Consolidado'),
(4, '1689353', '1503', '29040011007', 'C0-32-A1-2F', '4', 'Consolidado'),
(5, '1689353', '1503', '29040011007', '38-F5-57-B1', '5', 'Consolidado'),
(6, '1689353', '1503', '29040011007', '38-F5-57-B1', '6', 'Consolidado'),
(7, '1689353', '1503', '29040011007', 'F7-2E-18-10', '7', 'Consolidado'),
(8, '1689353', '1503', '29040011007', 'F7-2E-18-10', '8', 'Consolidado'),
(9, '1689353', '1503', '29040011007', '78-04-D8-27', '9', 'Consolidado'),
(10, '1689353', '1503', '29040011007', 'CD-AF-BF-87', '10', 'Consolidado'),
(11, '1689353', '1503', '29040011007', '43-00-D7-0A', '11', 'Consolidado'),
(12, '1689353', '1503', '29040011007', 'CD-AF-BF-87', '12', 'Consolidado'),
(13, '1689353', '1503', '29040011007', 'F6-06-55-D5-E3', '13', 'Consolidado'),
(14, '1689353', '1503', '29040011007', 'F6-06-55-D5-E3', '14', 'Consolidado'),
(15, '1689353', '1503', '29040011007', '64-0F-64-D9-FE', '15', 'Consolidado'),
(16, '1689353', '1503', '29040011007', 'F8-8D-73-1D', '16', 'Consolidado'),
(17, '1689353', '1503', '29040011007', '18-8E-24-FC-55', '17', 'Consolidado'),
(18, '1689353', '1503', '29040011007', '9E-25-79-D2-F8', '18', 'Consolidado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datosventa`
--

CREATE TABLE `datosventa` (
  `idDatosVentas` int(11) NOT NULL,
  `cantidad` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `precio` varchar(50) NOT NULL,
  `total` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `fechaVenta` datetime NOT NULL,
  `codigoControl` varchar(50) NOT NULL,
  `idVentas` double NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `datosventa`
--

INSERT INTO `datosventa` (`idDatosVentas`, `cantidad`, `descripcion`, `precio`, `total`, `tipo`, `fechaVenta`, `codigoControl`, `idVentas`, `estado`) VALUES
(1, '1', 'DUOPOLLO', '16', '16', 'Mesa', '2020-10-11 05:55:25', 'C0-32-A1-2F', 1, 'Consolidado'),
(2, '2', 'LIMITO', '13', '26', 'Mesa', '2020-10-11 05:55:25', 'C0-32-A1-2F', 1, 'Consolidado'),
(3, '1', 'DUOPOLLO', '16', '16', 'Mesa', '2020-10-11 06:15:11', 'C0-32-A1-2F', 2, 'Consolidado'),
(4, '2', 'LIMITO', '13', '26', 'Mesa', '2020-10-11 06:15:11', 'C0-32-A1-2F', 2, 'Consolidado'),
(5, '1', 'DUOPOLLO', '16', '16', 'Mesa', '2020-10-11 06:16:16', 'C0-32-A1-2F', 3, 'Consolidado'),
(6, '2', 'LIMITO', '13', '26', 'Mesa', '2020-10-11 06:16:16', 'C0-32-A1-2F', 3, 'Consolidado'),
(7, '1', 'DUOPOLLO', '16', '16', 'Mesa', '2020-10-11 06:22:41', 'C0-32-A1-2F', 4, 'Consolidado'),
(8, '2', 'LIMITO', '13', '26', 'Mesa', '2020-10-11 06:22:41', 'C0-32-A1-2F', 4, 'Consolidado'),
(9, '1', 'Pepsi de 500 ml', '5', '5', 'Mesa', '2020-10-11 06:23:04', '38-F5-57-B1', 5, 'Consolidado'),
(10, '1', 'Pepsi de 500 ml', '5', '5', 'Mesa', '2020-10-11 07:43:38', '38-F5-57-B1', 6, 'Consolidado'),
(11, '1', 'LIMITO', '13', '13', 'Mesa', '2020-10-11 07:50:09', 'F7-2E-18-10', 7, 'Consolidado'),
(12, '1', 'LIMITO', '13', '13', 'Mesa', '2020-10-11 07:51:51', 'F7-2E-18-10', 8, 'Consolidado'),
(13, '1', 'LIMITO', '13', '13', 'Mesa', '2020-10-12 13:45:12', '78-04-D8-27', 9, 'Consolidado'),
(14, '1', 'Coca Cola 500 gr', '7', '7', 'Mesa', '2020-10-12 13:45:12', '78-04-D8-27', 9, 'Consolidado'),
(15, '1', 'LIMITO', '13', '13', 'Mesa', '2020-10-13 13:46:17', 'CD-AF-BF-87', 10, 'Consolidado'),
(16, '1', 'DUOPOLLO', '16', '16', 'Mesa', '2020-10-13 13:48:31', '43-00-D7-0A', 11, 'Consolidado'),
(17, '1', 'LIMITO', '13', '13', 'Mesa', '2020-10-13 13:48:45', 'CD-AF-BF-87', 12, 'Consolidado'),
(18, '1', 'DUOPOLLO', '16', '16', 'Mesa', '2020-10-13 13:49:04', 'F6-06-55-D5-E3', 13, 'Consolidado'),
(19, '1', 'DUOPOLLO', '16', '16', 'Mesa', '2020-10-13 13:49:18', 'F6-06-55-D5-E3', 14, 'Consolidado'),
(20, '1', 'LIMITO', '13', '13', 'Mesa', '2020-10-16 13:19:37', '64-0F-64-D9-FE', 15, 'Consolidado'),
(21, '4', 'LIMITO', '13', '52', 'Mesa', '2020-10-17 12:16:56', 'F8-8D-73-1D', 16, 'Consolidado'),
(22, '1', 'LIMITO', '13', '13', 'Mesa', '2020-10-18 12:46:28', '18-8E-24-FC-55', 17, 'Consolidado'),
(23, '1', 'LIMITO', '13', '13', 'Mesa', '2020-11-01 22:33:01', '9E-25-79-D2-F8', 18, 'Consolidado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datosventatotal`
--

CREATE TABLE `datosventatotal` (
  `idVentas` int(11) NOT NULL,
  `cliente` varchar(50) NOT NULL,
  `cantidad` varchar(50) NOT NULL,
  `precio` varchar(50) NOT NULL,
  `total` varchar(50) NOT NULL,
  `codigoControl` varchar(50) NOT NULL,
  `fechaVenta` datetime NOT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `comentario` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `datosventatotal`
--

INSERT INTO `datosventatotal` (`idVentas`, `cliente`, `cantidad`, `precio`, `total`, `codigoControl`, `fechaVenta`, `estado`, `comentario`) VALUES
(1, 'S/N', '2', '13', '26', 'C0-32-A1-2F', '2020-01-11 05:55:25', 'Consolidado', 'No se encontro la Ficha'),
(2, 'S/N', '2', '13', '26', 'C0-32-A1-2F', '2020-02-11 06:15:11', 'Consolidado', 'La hoja si se encontro'),
(3, 'S/N', '2', '13', '26', 'C0-32-A1-2F', '2020-03-11 06:16:16', 'Consolidado', 'La hoja esta duplicada no tomar en cuenta'),
(4, 'S/N', '2', '13', '26', 'C0-32-A1-2F', '2020-04-11 06:22:41', 'Consolidado', ''),
(5, 'S/N', '1', '5', '5', '38-F5-57-B1', '2020-05-11 06:23:04', 'Consolidado', ''),
(6, 'S/N', '1', '5', '5', '38-F5-57-B1', '2020-06-11 07:43:38', 'Consolidado', ''),
(7, 'S/N', '1', '13', '13', 'F7-2E-18-10', '2020-07-11 07:50:09', 'Consolidado', ''),
(8, 'S/N', '1', '13', '13', 'F7-2E-18-10', '2020-08-11 07:51:51', 'Consolidado', ''),
(9, 'Calani', '1', '7', '7', '78-04-D8-27', '2020-09-12 13:45:12', 'Consolidado', ''),
(10, 'Perez', '1', '13', '13', 'CD-AF-BF-87', '2020-10-13 13:46:17', 'Consolidado', ''),
(11, 'Perez', '1', '16', '16', '43-00-D7-0A', '2020-11-13 13:48:31', 'Consolidado', ''),
(12, 'Perez', '1', '13', '13', 'CD-AF-BF-87', '2020-12-13 13:48:45', 'Consolidado', ''),
(13, 'Encinas', '1', '16', '16', 'F6-06-55-D5-E3', '2020-10-13 13:49:04', 'Consolidado', ''),
(14, 'Encinas', '1', '16', '16', 'F6-06-55-D5-E3', '2020-10-13 13:49:18', 'Consolidado', ''),
(15, 'Perez Messil', '1', '13', '13', '64-0F-64-D9-FE', '2020-10-16 13:19:37', 'Consolidado', ''),
(16, 'S/N', '4', '13', '52', 'F8-8D-73-1D', '2020-10-17 12:16:56', 'Consolidado', ''),
(17, 'Perez Messil', '1', '13', '13', '18-8E-24-FC-55', '2020-10-18 12:46:28', 'Consolidado', ''),
(18, 'S/N', '1', '13', '13', '9E-25-79-D2-F8', '2020-11-01 22:33:01', 'Consolidado', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dosificacion`
--

CREATE TABLE `dosificacion` (
  `idcodigo` int(11) NOT NULL,
  `autorizacion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `factura` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `llave` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `nit` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `fechaL` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `dosificacion`
--

INSERT INTO `dosificacion` (`idcodigo`, `autorizacion`, `factura`, `llave`, `nit`, `fechaL`) VALUES
(1, '29040011007', '1503', '9rCB7Sv4X29d)5k7N%3a', '1689353', '2021-12-31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha`
--

CREATE TABLE `ficha` (
  `idficha` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos`
--

CREATE TABLE `gastos` (
  `idgastos` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `entrada` double NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `salida` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `fechaRegistro` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `gastos`
--

INSERT INTO `gastos` (`idgastos`, `descripcion`, `entrada`, `usuario`, `salida`, `tipo`, `fechaRegistro`) VALUES
(1, 'compra de Botellones', 0, 'jorgev', '100', 'S', '2021-05-25'),
(11, 'panela', 234, 'Juan', 'pedro', 'ADMINISTRADOR', '2021-10-10'),
(3, 'Tinte de Cabello platino', 20, 'jorgev', '0', 'E', '2021-05-25'),
(8, 'Cobro de Alquiler de Botellon', 12, 'jorgev', '0', 'E', '2021-05-25'),
(7, 'Compra de tarjetas de celulares', 0, 'jorgev', '100', 'S', '2021-05-25'),
(9, 'Pollo broaster al Team', 50, 'jorgev', '0', 'E', '2021-05-25'),
(12, 'panela', 234, 'Juan', 'pedro', 'ADMINISTRADOR', '2021-10-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idioma`
--

CREATE TABLE `idioma` (
  `idIdioma` int(11) NOT NULL,
  `pais` varchar(150) NOT NULL,
  `idioma` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `idioma`
--

INSERT INTO `idioma` (`idIdioma`, `pais`, `idioma`) VALUES
(1, 'Bolivia', 'Español');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `idmenu` int(11) NOT NULL,
  `opcion` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `location` varchar(150) DEFAULT NULL,
  `color` varchar(150) NOT NULL,
  `acceso` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`idmenu`, `opcion`, `estado`, `icon`, `location`, `color`, `acceso`) VALUES
(1, 'Principal', 'Activo', 'icon_house_alt', 'AccessUsers.php', '#0061c2', 'A'),
(2, 'Configuracion', 'NoActivo', 'icon_tools', 'Usuario.php', '#0061c2', 'D'),
(3, 'Proveedores', 'NoActivo', 'icon_briefcase', 'Proveedor.php', '#0061c2', 'D'),
(4, 'Clientes', 'NoActivo', 'icon_group', 'Cliente.php', '#0061c2', 'A'),
(5, 'Productos', 'NoActivo', 'icon_bag_alt', 'Producto.php', '#0061c2', 'A'),
(6, 'Inventario', 'NoActivo', 'icon_refresh', 'Inventario.php', '#0061c2', 'D'),
(7, 'Ventas', 'NoActivo', 'icon_cart', 'Ventas.php', '#0061c2', 'A'),
(8, 'Cuentas', 'NoActivo', 'arrow_down_alt', 'Cuenta.php', '#0061c2', 'D'),
(9, 'Pedidos', 'NoActivo', 'icon_zoom-in_alt', 'Pedido.php', '#0061c2', 'D'),
(10, 'Consolidar', 'NoActivo', 'icon_documents_alt', 'Consolidar.php', '#0061c2', 'D'),
(11, 'Reporte', 'NoActivo', 'icon_piechart', 'ReportesVentas.php', '#4e4e4e', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moneda`
--

CREATE TABLE `moneda` (
  `idMoneda` int(11) NOT NULL,
  `pais` varchar(150) NOT NULL,
  `tipoMoneda` varchar(150) NOT NULL,
  `contexto` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `moneda`
--

INSERT INTO `moneda` (`idMoneda`, `pais`, `tipoMoneda`, `contexto`) VALUES
(1, 'Colombia', '$', 'Peso Colombiano');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `idPedido` int(11) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `total` double NOT NULL,
  `proveedor` varchar(500) NOT NULL,
  `usuario` varchar(150) NOT NULL,
  `fechaRegistro` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`idPedido`, `descripcion`, `total`, `proveedor`, `usuario`, `fechaRegistro`) VALUES
(8, 'Coca cola 3 Litros', 12, 'ARIEL SAm', 'jorgev', '2021-10-10'),
(3, 'Detergente de 500 mg', 15, 'Unilever', 'jorgev', '2021-05-19'),
(6, 'Grano de Oro exportacion', 2, 'Arroz Okinawa', 'jorgev', '2021-05-19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preventa`
--

CREATE TABLE `preventa` (
  `idPreventa` int(11) NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `producto` varchar(150) NOT NULL,
  `precio` double NOT NULL,
  `idProducto` varchar(100) NOT NULL,
  `pventa` varchar(150) NOT NULL,
  `idUser` int(11) NOT NULL,
  `tipo` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `preventa`
--

INSERT INTO `preventa` (`idPreventa`, `imagen`, `producto`, `precio`, `idProducto`, `pventa`, `idUser`, `tipo`) VALUES
(2, 'fotoproducto/7up.jpg', '7up Personal', 10, '46', '10', 20, 'Llevar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` int(11) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `codigo` varchar(25) NOT NULL,
  `nombreProducto` varchar(50) NOT NULL,
  `cantidad` varchar(25) NOT NULL,
  `fechaRegistro` varchar(25) NOT NULL,
  `precioVenta` varchar(25) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `proveedor` varchar(50) NOT NULL,
  `precioCompra` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `imagen`, `codigo`, `nombreProducto`, `cantidad`, `fechaRegistro`, `precioVenta`, `tipo`, `proveedor`, `precioCompra`) VALUES
(48, 'fotoproducto/agua cielo.jpg', '004', 'Agua Cielo', '10', '2021-10-10', '10', 'REFRESCO GASEOSA', '', '60'),
(46, 'fotoproducto/7up.jpg', '002', '7up Personal', '100', '2021-09-27', '10', 'REFRESCO GASEOSA', '', '50'),
(47, 'fotoproducto/agua brisa.jpg', '003', 'Agua Brisa', '50', '2021-10-10', '10', 'REFRESCO GASEOSA', '', '60'),
(7, 'fotoproducto/imagen_1349564229.jpg', 'SEGUNDO', 'SEGUNDO', '7', '2021-05-19', '80', 'POLLO', '', '6'),
(8, 'fotoproducto/imagen_1349564269.jpg', 'HAMBURGUESA', 'HAMBURGUESA', '15', '2021-05-19', '80', 'POLLO', '', '6'),
(10, 'fotoproducto/imagen_1349563882.jpg', 'MEDIO POLLO', 'MEDIO POLLO', '25', '2021-05-19', '300', 'POLLO', '', '6'),
(11, 'fotoproducto/imagen_1349564000.jpg', 'SILLPANCHO', 'SILLPANCHO', '13', '2021-05-19', '130', 'POLLO', '', '6'),
(12, 'fotoproducto/imagen_1349564103.jpg', 'SOPA DE MANI  GRANDE', 'SOPA DE MANI  GRANDE', '10', '2021-05-19', '70', 'POLLO', '', '6'),
(13, 'fotoproducto/imagen_1349564195.jpg', 'SOPA DE MANI MEDIANA', 'SOPA DE MANI MEDIANA', '10', '2021-05-26', '4', 'POLLO', '', '6'),
(14, 'fotoproducto/imagen_1349564195.jpg', 'PIPOCA DE POLLO', 'PIPOCA DE POLLO', '150', '2021-05-26', '12', 'POLLO', '', '6'),
(15, 'fotoproducto/imagen_1349564365.jpg', 'Cuero', 'Cuero', '110', '2021-05-26', '15', 'POLLO', '', '60'),
(16, 'fotoproducto/imagen_1349564382.jpg', 'Hueso', 'Hueso', '110', '2021-05-26', '12', 'POLLO', '', '60'),
(17, 'fotoproducto/imagen_1349564425.jpg', 'Presa', 'Presa', '100', '2021-05-26', '70', 'POLLO', '', '60'),
(18, 'fotoproducto/imagen_134951011.jpg', 'PORCION DE ARROZ', 'PORCION DE ARROZ', '100', '2021-05-26', '70', 'POLLO', '', '60'),
(19, 'fotoproducto/imagen_134951110.jpg', 'PORCION DE PAPA', 'PORCION DE PAPA', '100', '2021-05-26', '70', 'POLLO', '', '60'),
(20, 'fotoproducto/imagen_1385599810.jpg', 'SPIEDO PERSONAL', 'SPIEDO PERSONAL', '120', '2021-05-26', '13', 'POLLO', '', '6'),
(21, 'fotoproducto/imagen_1349564053.jpg', 'CUEARTO SPIEDO ', 'CUEARTO SPIEDO ', '100', '2021-05-26', '18', 'POLLO', '', '60'),
(22, 'fotoproducto/imagen_1349564463.jpg', 'SIMBA MANZANA', 'SIMBA MANZANA', '5', '2021-05-26', '10', 'REFRESCO', '', '6'),
(23, 'fotoproducto/imagen_1349564498.jpg', 'Popular Sprite', 'Popular Sprite', '100', '2021-05-26', '50', 'REFRESCO', '', '60'),
(24, 'fotoproducto/imagen_1349564524.jpg', 'Popular Coca Cola', 'Popular Coca Cola', '110', '2021-05-26', '5', 'REFRESCO', '', '6'),
(25, 'fotoproducto/imagen_1349564587.jpg', 'DEL VALLE', 'DEL VALLE', '100', '2021-05-26', '15', 'REFRESCO', '', '6'),
(26, 'fotoproducto/imagen_1349564926.jpg', 'COCA COLA 1 ltr', 'COCA COLA 1 ltr', '110', '2021-05-26', '8', 'REFRESCO', '', '6'),
(27, 'fotoproducto/imagen_1349564902.jpg', 'COCA COLA 2 1/2 lts', 'COCA COLA 2 1/2 lts', '100', '2021-05-26', '13', 'REFRESCO', '', '6'),
(28, 'fotoproducto/imagen_1349564958.jpg', 'COCA COLA DE 3 lts', 'COCA COLA DE 3 lts', '120', '2021-05-26', '14', 'REFRESCO', '', '6'),
(29, 'fotoproducto/imagen_1349564989.jpg', 'Fanta 2 1/2 lts ', 'Fanta 2 1/2 lts ', '100', '2021-05-26', '10', 'REFRESCO', '', '6'),
(30, 'fotoproducto/imagen_1349565020.jpg', 'Sprite ', 'Sprite ', '110', '2021-05-26', '11', 'REFRESCO', '', '6'),
(31, 'fotoproducto/imagen_1349565068.jpg', 'SIMBA PIÃ‘A', 'SIMBA PIÃ‘A', '110', '2021-05-26', '10', 'REFRESCO', '', '6'),
(32, 'fotoproducto/imagen_1349564618.jpg', 'Tostada', 'Tostada', '45', '2021-05-26', '4', 'HERVIDO', '', '4'),
(33, 'fotoproducto/imagen_1349564663.jpg', 'Limonada 1/2', 'Limonada 1/2', '9', '2021-05-26', '10', 'HERVIDO', '', '4'),
(34, 'fotoproducto/imagen_1349564697.jpg', 'Limonada 1 1/2 ', 'Limonada 1 1/2 ', '70', '2021-05-26', '7', 'HERVIDO', '', '10'),
(35, 'fotoproducto/imagen_1349564726.jpg', 'Limonada 1lts', 'Limonada 1lts', '44', '2021-05-26', '4', 'HERVIDO', '', '7'),
(36, 'fotoproducto/imagen_1349564784.jpg', 'Tostada 1lts', 'Tostada 1lts', '100', '2021-05-26', '10', 'HERVIDO', '', '7'),
(37, 'fotoproducto/imagen_1349564824.jpg', 'Tostada 1 1/2 lts', 'Tostada 1 1/2 lts', '70', '2021-05-26', '10', 'HERVIDO', '', '10'),
(38, 'fotoproducto/imagen_1349564545.jpg', 'POPULAR FANTA', 'POPULAR FANTA', '100', '2021-05-26', '5', 'REFRESCO', '', '6'),
(39, 'fotoproducto/imagen_1349564587.jpg', 'TROPI FRUT', 'TROPI FRUT', '100', '2021-05-26', '6', 'REFRESCO', '', '6'),
(40, 'fotoproducto/images (1).jpg', '003', 'Piernas Imba 3', '2', '2021-05-26', '2300', 'ARIEL SA', '', '6000'),
(41, 'fotoproducto/imagen_1349565020.jpg', 'Sprite 2 1/2 ', 'Sprite 2 1/2 ', '90', '2021-05-26', '13', 'REFRESCO', '', '6'),
(44, 'fotoproducto/cocacola.jpg', '101', 'Coca Cola 500 gr', '10', '2021-05-26', '7', 'POLLO', '', '6'),
(45, 'fotoproducto/pepsi.jpg', '001', 'Pepsi de 500 ml', '10', '2021-05-26', '12', 'REFRESCO GASEOSA', '', '11'),
(49, 'fotoproducto/coca cola lata.jpg', '005', 'Coca cola Lata', '50', '2021-09-27', '8', 'REFRESCO GASEOSA', '', '15'),
(50, 'fotoproducto/fanta uva.jpg', '006', 'Fanta Lata', '10', '2021-09-27', '6', 'REFRESCO GASEOSA', '', '10'),
(51, 'fotoproducto/jugos dieteticos.jpg', '007', 'Jugos Dieteticos', '100', '2021-09-27', '8', 'REFRESCO GASEOSA', '', '12'),
(52, 'fotoproducto/jugos natruales variados.jpg', '008', 'Jugos naturales', '100', '2021-09-27', '10', 'REFRESCO GASEOSA', '', '15'),
(53, 'fotoproducto/jugos naturales.jpg', '009', 'Jugos Combinados', '50', '2021-09-27', '12', 'REFRESCO GASEOSA', '', '15'),
(54, 'fotoproducto/pepsi 2 litros.jpg', '010', 'Pepsi 2 litros', '10', '2021-09-27', '12', 'REFRESCO GASEOSA', '', '17'),
(55, 'fotoproducto/pepsi litro y medio.jpg', '011', 'Pepsi litro y medio', '10', '2021-09-27', '10', 'REFRESCO GASEOSA', '', '15'),
(56, 'fotoproducto/pepsi personal.jpg', '012', 'Pepsi personal', '50', '2021-09-27', '5', 'REFRESCO GASEOSA', '', '8'),
(57, 'fotoproducto/pepsi lata.jpg', '013', 'Pepsi Lata', '50', '2021-09-27', '9', 'REFRESCO GASEOSA', '', '12'),
(58, 'fotoproducto/plato 1.jpg', '014', 'Menu 1', '100', '2021-09-27', '30', 'ARROZ', '', '200'),
(59, 'fotoproducto/plato2.jpg', '014', 'Menu 2', '50', '2021-09-27', '35', 'ARROZ', '', '220'),
(60, 'fotoproducto/plato 3.jpg', '015', 'Menu 3', '50', '2021-09-27', '35', 'ARROZ', '', '50'),
(61, 'fotoproducto/plato 4.jpg', '016', 'Menu 4', '50', '2021-09-27', '40', 'ARROZ', '', '100'),
(62, 'fotoproducto/plato 5.jpg', '017', 'Menu 5', '50', '2021-09-27', '50', 'POLLO', '', '100'),
(63, 'fotoproducto/plato 6.jpg', '018', 'Menu 6', '50', '2021-09-27', '55', 'POLLO', '', '110'),
(64, 'fotoproducto/plato 7.jpg', '018', 'Menu 7', '50', '2021-09-27', '60', 'ARROZ', '', '100'),
(65, 'fotoproducto/plato 8.jpg', '019', 'Menu 8', '50', '2021-09-27', '50', 'ARROZ', '', '100'),
(66, 'fotoproducto/plato 9.jpg', '020', 'Menu 9', '50', '2021-09-27', '30', 'ARROZ', '', '50'),
(67, 'fotoproducto/plato 10.jpg', '021', 'Menu 10', '50', '2021-09-27', '60', 'ARROZ', '', '400'),
(68, 'fotoproducto/139. Pollo-crocante-con-papas-doradas.jpg', '022', 'Pollos con papas', '10', '2021-09-27', '20', 'POLLO', '', '150'),
(69, 'fotoproducto/images (1).jpg', '023', 'Pollo entero con aderesos', '50', '2021-09-27', '120', 'POLLO', '', '700'),
(70, 'fotoproducto/images.jpg', '024', 'Colombinas  6UN', '50', '2021-09-27', '30', 'POLLO', '', '150');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `idproveedor` int(11) NOT NULL,
  `proveedor` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `responsable` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `fechaRegistro` date NOT NULL,
  `direccion` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `fechaAviso` date NOT NULL,
  `valor` double NOT NULL,
  `valorCobrado` double NOT NULL,
  `saldo` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`idproveedor`, `proveedor`, `responsable`, `fechaRegistro`, `direccion`, `telefono`, `estado`, `fechaAviso`, `valor`, `valorCobrado`, `saldo`) VALUES
(13, 'Aceite de canola', 'denver', '2021-10-10', 'murillo', 'murillo', '', '0000-00-00', 0, 0, ''),
(14, 'Aceite de canola', 'denver', '2021-10-11', 'Avenida Aereopuerto calle Esperanza', 'Avenida Aereopuerto calle Esperanza', '', '0000-00-00', 0, 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoproducto`
--

CREATE TABLE `tipoproducto` (
  `idtipoproducto` int(11) NOT NULL,
  `tipoproducto` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipoproducto`
--

INSERT INTO `tipoproducto` (`idtipoproducto`, `tipoproducto`) VALUES
(1, 'POLLO'),
(2, 'ARROZ'),
(3, 'REFRESCO GASEOSA'),
(7, 'Frigorificos'),
(8, 'Aseo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usu` int(11) NOT NULL,
  `login` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usu`, `login`, `tipo`, `nombre`, `password`, `foto`) VALUES
(25, 'mary', 'ADMINISTRADOR', 'maria', '123456', 'fotoproducto/avatar1.jpg'),
(20, 'donato', 'ADMINISTRADOR', 'donato', '123456', 'fotoproducto/donato.png'),
(27, 'Ilmer', 'ADMINISTRADOR', 'Ilmer', '123456', 'fotoproducto/Ilmer.png'),
(26, 'Santiago', 'ADMINISTRADOR', 'santiago', '123456', 'fotoproducto/medellin.jpg'),
(23, 'jorgev', 'ADMINISTRADOR', 'jorge', 'jorgev', 'fotoproducto/jor1.jpg'),
(30, 'pepe1', 'ADMINISTRADOR', 'pepe1', '123456', 'fotoproducto/user04.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventatotal`
--

CREATE TABLE `ventatotal` (
  `idVentas` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `cc` varchar(50) NOT NULL,
  `fecha` datetime NOT NULL,
  `totalApagar` double NOT NULL,
  `efectivo` double NOT NULL,
  `cambio` double NOT NULL,
  `idCliente` varchar(50) NOT NULL,
  `codigoControl` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ventatotal`
--

INSERT INTO `ventatotal` (`idVentas`, `nombre`, `cc`, `fecha`, `totalApagar`, `efectivo`, `cambio`, `idCliente`, `codigoControl`) VALUES
(1, 'Jorge Andres Viloria', '1234567', '2021-05-25 22:34:17', 4200, 5000, 800, '14', 'C0-32-A1-2F'),
(2, 'pedro morales', '212121', '2021-05-25 06:15:11', 4200, 5000, 800, '14', 'C0-32-A1-2F'),
(19, 'Juan Sepulveda', '123456', '2021-05-25 01:47:11', 4000, 5000, 1000, '2122', ''),
(20, 'Mario fernandez', '123456', '2021-05-25 02:25:19', 4000, 5000, 1000, '2458', 'CD-AF-BF-88');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `activos`
--
ALTER TABLE `activos`
  ADD PRIMARY KEY (`idactivo`);

--
-- Indices de la tabla `alerta`
--
ALTER TABLE `alerta`
  ADD PRIMARY KEY (`alertaId`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`);

--
-- Indices de la tabla `clientedato`
--
ALTER TABLE `clientedato`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `codigocontrol`
--
ALTER TABLE `codigocontrol`
  ADD PRIMARY KEY (`idcodigo`);

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`iddatos`);

--
-- Indices de la tabla `datosclienteventa`
--
ALTER TABLE `datosclienteventa`
  ADD PRIMARY KEY (`idClienteVenta`);

--
-- Indices de la tabla `datosfacturaventa`
--
ALTER TABLE `datosfacturaventa`
  ADD PRIMARY KEY (`idDatosFactura`);

--
-- Indices de la tabla `datosventa`
--
ALTER TABLE `datosventa`
  ADD PRIMARY KEY (`idDatosVentas`);

--
-- Indices de la tabla `datosventatotal`
--
ALTER TABLE `datosventatotal`
  ADD PRIMARY KEY (`idVentas`);

--
-- Indices de la tabla `dosificacion`
--
ALTER TABLE `dosificacion`
  ADD PRIMARY KEY (`idcodigo`);

--
-- Indices de la tabla `ficha`
--
ALTER TABLE `ficha`
  ADD PRIMARY KEY (`idficha`);

--
-- Indices de la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`idgastos`);

--
-- Indices de la tabla `idioma`
--
ALTER TABLE `idioma`
  ADD PRIMARY KEY (`idIdioma`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`idmenu`);

--
-- Indices de la tabla `moneda`
--
ALTER TABLE `moneda`
  ADD PRIMARY KEY (`idMoneda`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idPedido`);

--
-- Indices de la tabla `preventa`
--
ALTER TABLE `preventa`
  ADD PRIMARY KEY (`idPreventa`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`idproveedor`);

--
-- Indices de la tabla `tipoproducto`
--
ALTER TABLE `tipoproducto`
  ADD PRIMARY KEY (`idtipoproducto`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usu`);

--
-- Indices de la tabla `ventatotal`
--
ALTER TABLE `ventatotal`
  ADD PRIMARY KEY (`idVentas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `activos`
--
ALTER TABLE `activos`
  MODIFY `idactivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `alerta`
--
ALTER TABLE `alerta`
  MODIFY `alertaId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `clientedato`
--
ALTER TABLE `clientedato`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT de la tabla `codigocontrol`
--
ALTER TABLE `codigocontrol`
  MODIFY `idcodigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `iddatos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `datosclienteventa`
--
ALTER TABLE `datosclienteventa`
  MODIFY `idClienteVenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `datosfacturaventa`
--
ALTER TABLE `datosfacturaventa`
  MODIFY `idDatosFactura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `datosventa`
--
ALTER TABLE `datosventa`
  MODIFY `idDatosVentas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `datosventatotal`
--
ALTER TABLE `datosventatotal`
  MODIFY `idVentas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `dosificacion`
--
ALTER TABLE `dosificacion`
  MODIFY `idcodigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ficha`
--
ALTER TABLE `ficha`
  MODIFY `idficha` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `gastos`
--
ALTER TABLE `gastos`
  MODIFY `idgastos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `idioma`
--
ALTER TABLE `idioma`
  MODIFY `idIdioma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `idmenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `moneda`
--
ALTER TABLE `moneda`
  MODIFY `idMoneda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idPedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `preventa`
--
ALTER TABLE `preventa`
  MODIFY `idPreventa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `idproveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `tipoproducto`
--
ALTER TABLE `tipoproducto`
  MODIFY `idtipoproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `ventatotal`
--
ALTER TABLE `ventatotal`
  MODIFY `idVentas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
