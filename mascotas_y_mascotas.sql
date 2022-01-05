-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-01-2022 a las 02:53:11
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mascotas_y_mascotas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adopcion`
--

CREATE TABLE `adopcion` (
  `Id` int(11) NOT NULL,
  `descripcion` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `adopcion`
--

INSERT INTO `adopcion` (`Id`, `descripcion`) VALUES
(1, 'si'),
(2, 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascota`
--

CREATE TABLE `mascota` (
  `idmascota` int(11) NOT NULL,
  `nombre_mascota` varchar(45) NOT NULL,
  `tipo_mascota` int(11) NOT NULL,
  `propietario` int(11) NOT NULL,
  `adopcion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mascota`
--

INSERT INTO `mascota` (`idmascota`, `nombre_mascota`, `tipo_mascota`, `propietario`, `adopcion`) VALUES
(2, 'lucas', 1, 2, 2),
(3, 'negro', 1, 3, 1),
(4, 'miss', 2, 5, 2),
(5, 'pelusa', 3, 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietario`
--

CREATE TABLE `propietario` (
  `id_propietario` int(11) NOT NULL,
  `nombre_propietario` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `correo` varchar(60) NOT NULL,
  `comentarios` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `propietario`
--

INSERT INTO `propietario` (`id_propietario`, `nombre_propietario`, `direccion`, `telefono`, `correo`, `comentarios`) VALUES
(2, 'carlos', 'calle 80', '3175451828', 'carlos@gmail.com', 'lo encontre en la basura'),
(3, 'alejandra', 'calle 56', '3175451578', 'alejnadra@gmail.com', 'lo encontre en un costal'),
(4, 'luz', 'cra 80', '3177859621', 'luz@gmail.com', 'lo golpearon'),
(5, 'andres', 'cra 94', '3175451828', 'andres@gmail.com', 'lo tiraron de un carro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_mascota`
--

CREATE TABLE `tipo_mascota` (
  `idtipo_mascota` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_mascota`
--

INSERT INTO `tipo_mascota` (`idtipo_mascota`, `descripcion`) VALUES
(1, 'perro'),
(2, 'gato'),
(3, 'conejo'),
(4, 'caballo'),
(5, 'tortuga'),
(6, 'pajaro'),
(7, 'rana'),
(8, 'cerdo'),
(9, 'vaca'),
(10, 'Pez'),
(11, 'Hámsters');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `adopcion`
--
ALTER TABLE `adopcion`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD PRIMARY KEY (`idmascota`),
  ADD KEY `tipo_mascota` (`tipo_mascota`),
  ADD KEY `adopcion` (`adopcion`),
  ADD KEY `propietario` (`propietario`);

--
-- Indices de la tabla `propietario`
--
ALTER TABLE `propietario`
  ADD PRIMARY KEY (`id_propietario`);

--
-- Indices de la tabla `tipo_mascota`
--
ALTER TABLE `tipo_mascota`
  ADD PRIMARY KEY (`idtipo_mascota`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `adopcion`
--
ALTER TABLE `adopcion`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `mascota`
--
ALTER TABLE `mascota`
  MODIFY `idmascota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `propietario`
--
ALTER TABLE `propietario`
  MODIFY `id_propietario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipo_mascota`
--
ALTER TABLE `tipo_mascota`
  MODIFY `idtipo_mascota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD CONSTRAINT `mascota_ibfk_1` FOREIGN KEY (`tipo_mascota`) REFERENCES `tipo_mascota` (`idtipo_mascota`),
  ADD CONSTRAINT `mascota_ibfk_3` FOREIGN KEY (`adopcion`) REFERENCES `adopcion` (`Id`),
  ADD CONSTRAINT `mascota_ibfk_4` FOREIGN KEY (`propietario`) REFERENCES `propietario` (`id_propietario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
