-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 22-02-2023 a las 22:52:36
-- Versión del servidor: 5.7.17-log
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agencia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `clienteid` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `telefono` int(10) NOT NULL,
  `correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`clienteid`, `nombre`, `telefono`, `correo`) VALUES
(6, 'LOPEZ ANZURES ERIK ', 2147483647, 'lopezanzures@gmail.com'),
(7, 'alejandro ', 2147483647, 'alejandro@hotmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `inventarioid` int(10) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`inventarioid`, `fecha`, `hora`) VALUES
(116, '2021-12-01', '22:19:07'),
(117, '2023-02-16', '19:04:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelo`
--

CREATE TABLE `modelo` (
  `modeloid` int(10) NOT NULL,
  `nombre` varchar(50) CHARACTER SET latin1 NOT NULL,
  `precio` int(11) NOT NULL,
  `imagen` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `modelo`
--

INSERT INTO `modelo` (`modeloid`, `nombre`, `precio`, `imagen`) VALUES
(9, 'MAZDAN2 SEDAN 2022', 309900, 'IMG/auto1.png'),
(10, 'MAZDA2 HATCHBACK 2022', 329900, 'IMG/auto2.png'),
(11, 'MAZDA3 SEDAN 2021', 384900, 'IMG/auto3.png'),
(12, 'MAZDA CX-3 2022', 374900, 'IMG/auto4.png'),
(13, 'MAZDA CX-30 2021', 472900, 'IMG/auto5.png'),
(14, 'MAZDA CX-5 2021', 499900, 'IMG/auto6.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modeloversion`
--

CREATE TABLE `modeloversion` (
  `modeloid` int(10) NOT NULL,
  `versionid` int(10) NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `modeloversion`
--

INSERT INTO `modeloversion` (`modeloid`, `versionid`, `precio`) VALUES
(1, 1, 3000000),
(1, 2, 3100000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventadetalle`
--

CREATE TABLE `ventadetalle` (
  `Ventaid` int(10) NOT NULL,
  `modeloid` int(10) NOT NULL,
  `enganche` int(10) NOT NULL,
  `preciocompra` int(10) NOT NULL,
  `formadepago` varchar(50) NOT NULL,
  `totalconinteres` int(10) NOT NULL,
  `meses` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ventadetalle`
--

INSERT INTO `ventadetalle` (`Ventaid`, `modeloid`, `enganche`, `preciocompra`, `formadepago`, `totalconinteres`, `meses`) VALUES
(105, 10, 1, 329899, 'Metodo de pago: A 36 meses y aumeta 30% ', 428869, 2749),
(106, 14, 1, 499899, 'Metodo de pago: A 36 meses y aumeta 30% ', 649869, 4166),
(107, 9, 1, 309899, 'Metodo de pago:  De contado ', 309899, 0),
(108, 9, 1, 309899, 'Metodo de pago:  De contado ', 309899, 0),
(109, 9, 1, 309899, 'Metodo de pago:  De contado ', 309899, 0),
(110, 9, 1, 309899, 'Metodo de pago: A 12 meses y aumenta 10% ', 340889, 2582),
(111, 12, 20000, 354900, 'Metodo de pago: A 24 meses y aumenta 20% ', 425880, 2958),
(112, 10, 10000, 319900, 'Metodo de pago: A 24 meses y aumenta 20% ', 383880, 2666),
(113, 9, 100000, 209900, 'Metodo de pago:  De contado ', 209900, 0),
(114, 9, 1, 309899, 'Metodo de pago:  De contado ', 309899, 0),
(115, 11, 100000, 284900, 'Metodo de pago: A 24 meses y aumenta 20% ', 341880, 2374),
(116, 14, 1, 499899, 'Metodo de pago:  De contado ', 499899, 0),
(117, 9, 30000, 279900, 'Metodo de pago:  De contado ', 279900, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `version`
--

CREATE TABLE `version` (
  `versionid` int(11) NOT NULL,
  `nombreversion` varchar(50) NOT NULL,
  `puertas` int(11) NOT NULL,
  `pasajeros` int(11) NOT NULL,
  `motor` varchar(52) NOT NULL,
  `combustible` varchar(52) NOT NULL,
  `transmison` varchar(52) NOT NULL,
  `velocidades` int(11) NOT NULL,
  `cilindraje` int(11) NOT NULL,
  `potencia` int(11) NOT NULL,
  `toque` int(11) NOT NULL,
  `velocidad` int(11) NOT NULL,
  `aceleracion` int(11) NOT NULL,
  `traccion` int(11) NOT NULL,
  `direccion` int(11) NOT NULL,
  `suspension` int(11) NOT NULL,
  `frenosdelanteros` int(11) NOT NULL,
  `frenostraseros` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `version`
--

INSERT INTO `version` (`versionid`, `nombreversion`, `puertas`, `pasajeros`, `motor`, `combustible`, `transmison`, `velocidades`, `cilindraje`, `potencia`, `toque`, `velocidad`, `aceleracion`, `traccion`, `direccion`, `suspension`, `frenosdelanteros`, `frenostraseros`) VALUES
(1, 'sport', 4, 4, '1.5L SKYACTIV-G', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`clienteid`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`inventarioid`);

--
-- Indices de la tabla `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`modeloid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `clienteid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `inventarioid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT de la tabla `modelo`
--
ALTER TABLE `modelo`
  MODIFY `modeloid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
