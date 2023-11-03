-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 03-11-2023 a las 18:19:32
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mewoofdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `ID_Ciudad` varchar(5) NOT NULL,
  `Nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`ID_Ciudad`, `Nombre`) VALUES
('BGT', 'Bogota'),
('MDE', 'Medellin'),
('SCL', 'Cali');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especies`
--

CREATE TABLE `especies` (
  `ID_Especie` int(11) NOT NULL,
  `Especie` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `especies`
--

INSERT INTO `especies` (`ID_Especie`, `Especie`) VALUES
(1, 'Felinos'),
(2, 'Caninos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados_adopcion`
--

CREATE TABLE `estados_adopcion` (
  `ID_Estado_Adopcion` int(11) NOT NULL,
  `Estado` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estados_adopcion`
--

INSERT INTO `estados_adopcion` (`ID_Estado_Adopcion`, `Estado`) VALUES
(1, 'En Adopcion'),
(2, 'Adoptado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados_publicaciones`
--

CREATE TABLE `estados_publicaciones` (
  `ID_EstadoPublicacion` int(11) NOT NULL,
  `Estado` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estados_publicaciones`
--

INSERT INTO `estados_publicaciones` (`ID_EstadoPublicacion`, `Estado`) VALUES
(1, 'Perdido'),
(2, 'Encontrado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados_salud`
--

CREATE TABLE `estados_salud` (
  `ID_Estado_Salud` int(11) NOT NULL,
  `Estado` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estados_salud`
--

INSERT INTO `estados_salud` (`ID_Estado_Salud`, `Estado`) VALUES
(1, 'Optimo'),
(2, 'Con Cuidados Temporales'),
(3, 'Con Cuidados Permanentes'),
(4, 'Edad Avanzada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados_solicitudes`
--

CREATE TABLE `estados_solicitudes` (
  `ID_EstadoSolicitud` int(11) NOT NULL,
  `Estado` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estados_solicitudes`
--

INSERT INTO `estados_solicitudes` (`ID_EstadoSolicitud`, `Estado`) VALUES
(1, 'Recibida'),
(2, 'En Proceso'),
(3, 'Rechazada'),
(4, 'Finalizada'),
(5, 'Exitosa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascotas`
--

CREATE TABLE `mascotas` (
  `ID_Mascota` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Edad` int(11) NOT NULL,
  `ID_Especie` int(11) NOT NULL,
  `ID_Raza` int(11) NOT NULL,
  `ID_Size` int(11) NOT NULL,
  `ID_Usuario` int(11) NOT NULL,
  `ID_Estado_Salud` int(11) NOT NULL,
  `ID_Estado_Adopcion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mascotas`
--

INSERT INTO `mascotas` (`ID_Mascota`, `Nombre`, `Edad`, `ID_Especie`, `ID_Raza`, `ID_Size`, `ID_Usuario`, `ID_Estado_Salud`, `ID_Estado_Adopcion`) VALUES
(7, 'Fifi', 3, 1, 5, 1, 1, 1, 1),
(8, 'Lulu', 3, 1, 5, 1, 1, 1, 1),
(9, 'Luna', 3, 1, 5, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `ID_Pais` varchar(5) NOT NULL,
  `Nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`ID_Pais`, `Nombre`) VALUES
('COL', 'Colombia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `ID_Publicacion` int(11) NOT NULL,
  `ID_Usuario` int(11) NOT NULL,
  `Fecha` datetime NOT NULL,
  `ID_EstadoPublicacion` int(11) NOT NULL,
  `Nombre_Mascota` varchar(20) NOT NULL,
  `Descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `razas`
--

CREATE TABLE `razas` (
  `ID_Raza` int(11) NOT NULL,
  `ID_Especie` int(11) NOT NULL,
  `Raza` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `razas`
--

INSERT INTO `razas` (`ID_Raza`, `ID_Especie`, `Raza`) VALUES
(1, 2, 'Beagle'),
(2, 2, 'Border Collie'),
(3, 2, 'Boxer'),
(4, 2, 'Bulldog'),
(5, 2, 'Bulterrier'),
(6, 2, 'Chihuahua'),
(7, 2, 'Cocker'),
(8, 2, 'Doberman'),
(9, 2, 'Gran Danés'),
(10, 2, 'Golden Retriever'),
(11, 2, 'Labrador'),
(12, 2, 'Pinscher'),
(13, 2, 'Pitbull'),
(14, 2, 'Poodle'),
(15, 2, 'Rottweiler'),
(16, 2, 'Shih Tzu'),
(17, 2, 'Husky'),
(18, 2, 'Yorkshire Terrier'),
(19, 2, 'Frech Poodle'),
(20, 2, 'Mestizo'),
(21, 2, 'Otra'),
(22, 1, 'Mestizo'),
(23, 1, 'Parece de Raza'),
(24, 1, 'Otra');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sizes`
--

CREATE TABLE `sizes` (
  `ID_Size` int(11) NOT NULL,
  `Nombre` varchar(10) NOT NULL,
  `Dimension_Maxima_CM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sizes`
--

INSERT INTO `sizes` (`ID_Size`, `Nombre`, `Dimension_Maxima_CM`) VALUES
(1, 'Mini', 15),
(2, 'Pequeño', 40),
(3, 'Mediano', 60),
(4, 'Grande', 110);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes`
--

CREATE TABLE `solicitudes` (
  `ID_Solicitud` int(11) NOT NULL,
  `ID_Mascota` int(11) NOT NULL,
  `ID_Usuario` int(11) NOT NULL,
  `ID_EstadoSolicitud` int(11) NOT NULL,
  `Fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

CREATE TABLE `tipos` (
  `ID_Tipo` varchar(5) NOT NULL,
  `Nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipos`
--

INSERT INTO `tipos` (`ID_Tipo`, `Nombre`) VALUES
('UA', 'Adoptante'),
('UE', 'Entregando');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID_Usuario` int(11) NOT NULL,
  `Nombre` varchar(125) NOT NULL,
  `Apellido` varchar(125) NOT NULL,
  `ID_Pais` varchar(3) NOT NULL,
  `ID_Ciudad` varchar(3) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `PASSWORD` varchar(15) NOT NULL,
  `ID_Tipo` varchar(3) NOT NULL,
  `About` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID_Usuario`, `Nombre`, `Apellido`, `ID_Pais`, `ID_Ciudad`, `Telefono`, `Email`, `PASSWORD`, `ID_Tipo`, `About`) VALUES
(1, 'Pedro', 'Casas', 'COL', 'BGT', '300300200', 'email1@proof.com', '123456789', 'UE', 'AboutMe'),
(2, 'Antonio', 'Lopez', 'COL', 'MDE', '20020014', 'email2@proof.com', '987654321', 'UA', 'AboutMe'),
(3, 'Natalia', 'Parra', 'COL', 'BGT', '655758', 'email3@proof.com', '123456789', 'UE', 'AboutMe'),
(4, 'Jazmin', 'Illera', 'COL', 'BGT', '575757', 'email4@proof.com', '987654321', 'UA', 'AboutMe'),
(5, 'Steven', 'Mendez', 'COL', 'BGT', '655758', 'email5@proof.com', '123456789', 'UE', 'AboutMe'),
(6, 'Santiago', 'Zuluaga', 'COL', 'MDE', '575757', 'email6@proof.com', '987654321', 'UA', 'AboutMe');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`ID_Ciudad`);

--
-- Indices de la tabla `especies`
--
ALTER TABLE `especies`
  ADD PRIMARY KEY (`ID_Especie`);

--
-- Indices de la tabla `estados_adopcion`
--
ALTER TABLE `estados_adopcion`
  ADD PRIMARY KEY (`ID_Estado_Adopcion`);

--
-- Indices de la tabla `estados_publicaciones`
--
ALTER TABLE `estados_publicaciones`
  ADD PRIMARY KEY (`ID_EstadoPublicacion`);

--
-- Indices de la tabla `estados_salud`
--
ALTER TABLE `estados_salud`
  ADD PRIMARY KEY (`ID_Estado_Salud`);

--
-- Indices de la tabla `estados_solicitudes`
--
ALTER TABLE `estados_solicitudes`
  ADD PRIMARY KEY (`ID_EstadoSolicitud`);

--
-- Indices de la tabla `mascotas`
--
ALTER TABLE `mascotas`
  ADD PRIMARY KEY (`ID_Mascota`),
  ADD KEY `ID_Especie` (`ID_Especie`),
  ADD KEY `ID_Size` (`ID_Size`),
  ADD KEY `ID_Raza` (`ID_Raza`),
  ADD KEY `ID_Usuario` (`ID_Usuario`),
  ADD KEY `ID_Estado_Salud` (`ID_Estado_Salud`),
  ADD KEY `ID_Estado_Adopcion` (`ID_Estado_Adopcion`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`ID_Pais`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`ID_Publicacion`),
  ADD KEY `ID_Usuario` (`ID_Usuario`),
  ADD KEY `estadoss_publicaciones` (`ID_EstadoPublicacion`);

--
-- Indices de la tabla `razas`
--
ALTER TABLE `razas`
  ADD PRIMARY KEY (`ID_Raza`),
  ADD KEY `ID_Especie` (`ID_Especie`);

--
-- Indices de la tabla `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`ID_Size`);

--
-- Indices de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD PRIMARY KEY (`ID_Solicitud`),
  ADD KEY `ID_Mascota` (`ID_Mascota`),
  ADD KEY `ID_Usuario` (`ID_Usuario`),
  ADD KEY `ID_EstadoSolicitud` (`ID_EstadoSolicitud`);

--
-- Indices de la tabla `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`ID_Tipo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID_Usuario`),
  ADD KEY `ID_Ciudad` (`ID_Ciudad`),
  ADD KEY `ID_Pais` (`ID_Pais`),
  ADD KEY `ID_Tipo` (`ID_Tipo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `especies`
--
ALTER TABLE `especies`
  MODIFY `ID_Especie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `estados_adopcion`
--
ALTER TABLE `estados_adopcion`
  MODIFY `ID_Estado_Adopcion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `estados_salud`
--
ALTER TABLE `estados_salud`
  MODIFY `ID_Estado_Salud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `estados_solicitudes`
--
ALTER TABLE `estados_solicitudes`
  MODIFY `ID_EstadoSolicitud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `mascotas`
--
ALTER TABLE `mascotas`
  MODIFY `ID_Mascota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `ID_Publicacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `razas`
--
ALTER TABLE `razas`
  MODIFY `ID_Raza` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `sizes`
--
ALTER TABLE `sizes`
  MODIFY `ID_Size` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  MODIFY `ID_Solicitud` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `mascotas`
--
ALTER TABLE `mascotas`
  ADD CONSTRAINT `mascotas_ibfk_1` FOREIGN KEY (`ID_Especie`) REFERENCES `especies` (`ID_Especie`),
  ADD CONSTRAINT `mascotas_ibfk_2` FOREIGN KEY (`ID_Size`) REFERENCES `sizes` (`ID_Size`),
  ADD CONSTRAINT `mascotas_ibfk_3` FOREIGN KEY (`ID_Raza`) REFERENCES `razas` (`ID_Raza`),
  ADD CONSTRAINT `mascotas_ibfk_4` FOREIGN KEY (`ID_Usuario`) REFERENCES `usuarios` (`ID_Usuario`),
  ADD CONSTRAINT `mascotas_ibfk_5` FOREIGN KEY (`ID_Estado_Salud`) REFERENCES `estados_salud` (`ID_Estado_Salud`),
  ADD CONSTRAINT `mascotas_ibfk_6` FOREIGN KEY (`ID_Estado_Adopcion`) REFERENCES `estados_adopcion` (`ID_Estado_Adopcion`);

--
-- Filtros para la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD CONSTRAINT `estadoss_publicaciones` FOREIGN KEY (`ID_EstadoPublicacion`) REFERENCES `estados_publicaciones` (`ID_EstadoPublicacion`),
  ADD CONSTRAINT `publicaciones_ibfk_1` FOREIGN KEY (`ID_Usuario`) REFERENCES `usuarios` (`ID_Usuario`);

--
-- Filtros para la tabla `razas`
--
ALTER TABLE `razas`
  ADD CONSTRAINT `razas_ibfk_1` FOREIGN KEY (`ID_Especie`) REFERENCES `especies` (`ID_Especie`);

--
-- Filtros para la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD CONSTRAINT `solicitudes_ibfk_1` FOREIGN KEY (`ID_Mascota`) REFERENCES `mascotas` (`ID_Mascota`),
  ADD CONSTRAINT `solicitudes_ibfk_2` FOREIGN KEY (`ID_Usuario`) REFERENCES `usuarios` (`ID_Usuario`),
  ADD CONSTRAINT `solicitudes_ibfk_3` FOREIGN KEY (`ID_EstadoSolicitud`) REFERENCES `estados_solicitudes` (`ID_EstadoSolicitud`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`ID_Ciudad`) REFERENCES `ciudades` (`ID_Ciudad`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`ID_Pais`) REFERENCES `paises` (`ID_Pais`),
  ADD CONSTRAINT `usuarios_ibfk_3` FOREIGN KEY (`ID_Tipo`) REFERENCES `tipos` (`ID_Tipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
