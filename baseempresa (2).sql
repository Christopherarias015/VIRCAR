-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-02-2021 a las 18:11:35
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `baseempresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `cod_cli` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `nom_cli` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `ape_cli` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono_cli` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `año` year(4) NOT NULL,
  `correo_cli` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `clave_cli` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `direccion_cli` varchar(30) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`cod_cli`, `nom_cli`, `ape_cli`, `telefono_cli`, `año`, `correo_cli`, `clave_cli`, `direccion_cli`) VALUES
('1341241324', 'Rodrigo', 'Teran', '0947289483', 0000, 'ttbr@ute.edu.ec', '12345', 'Valle de los chillos'),
('1722786959', 'David', 'Caicedo', '0985028207', 2000, 'david.caicedo@ute.edu.ec', 'gta5david', 'Pedro sabio'),
('1727756190', 'Richi', 'Casa', '0984736271', 2000, 'richardcasa2000@gmail.com', '1234', 'LLano Grande');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `cod_pedi` int(11) NOT NULL,
  `cedula` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `Placa` varchar(8) COLLATE utf8_spanish2_ci NOT NULL,
  `lugar_inicio` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `lugar_destino` varchar(30) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`cod_pedi`, `cedula`, `Placa`, `lugar_inicio`, `lugar_destino`) VALUES
(2, '1727756190', 'PCB-5556', 'Conocoto', 'Mena'),
(3, '1341241324', 'PCB-5556', 'Conocoto', 'Mena'),
(4, '1727756190', 'PCB-5556', 'Conocoto', 'Mena'),
(5, '1727756190', 'PCB-5556', 'Conocoto', 'Mena'),
(6, '1341241324', 'PDA-3453', 'Conocoto', 'Mena'),
(7, '1341241324', 'PDA-3453', 'Llano grande', 'Mena');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `Placa` varchar(8) COLLATE utf8_spanish2_ci NOT NULL,
  `modelo` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `tipo` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `cilindraje` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`Placa`, `modelo`, `tipo`, `cilindraje`) VALUES
('PCB-5556', 'Toyota', 'Camioneta', 3),
('PDA-3453', 'Toyota', 'Camioneta', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cod_cli`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`cod_pedi`,`cedula`),
  ADD KEY `Pedir` (`cedula`),
  ADD KEY `Es` (`Placa`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`Placa`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `cod_pedi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `Es` FOREIGN KEY (`Placa`) REFERENCES `vehiculo` (`Placa`),
  ADD CONSTRAINT `Pedir` FOREIGN KEY (`cedula`) REFERENCES `cliente` (`cod_cli`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
