-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 17-05-2025 a las 08:23:10
-- Versión del servidor: 10.6.21-MariaDB-0ubuntu0.22.04.2
-- Versión de PHP: 8.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pruebascopi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrativos`
--

CREATE TABLE `administrativos` (
  `Id_Admin` int(10) UNSIGNED NOT NULL,
  `Dni_Admin` int(8) NOT NULL,
  `Ape_Nomb` varchar(45) NOT NULL,
  `Sexo` varchar(1) NOT NULL,
  `E_Mail` varchar(50) DEFAULT NULL,
  `Tel_1` varchar(45) DEFAULT NULL,
  `Tel_2` varchar(45) DEFAULT NULL,
  `Num_Interno` varchar(4) DEFAULT NULL,
  `Foto` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `Id_Alumno` int(10) UNSIGNED NOT NULL,
  `Fecha_Inscripcion` date DEFAULT NULL,
  `Libro` char(3) DEFAULT NULL,
  `Folio` char(3) DEFAULT NULL,
  `Matricula` int(11) DEFAULT NULL,
  `Dni_Alumno` int(8) DEFAULT 0,
  `Ape_Nomb` varchar(45) DEFAULT NULL,
  `Sexo` varchar(1) DEFAULT NULL,
  `Fec_Nac` date DEFAULT NULL,
  `Lug_Nac` varchar(35) DEFAULT NULL,
  `Nacionalidad` char(10) DEFAULT NULL,
  `Domicilio` varchar(45) DEFAULT NULL,
  `Barrio` varchar(25) DEFAULT NULL,
  `Localidad` varchar(25) DEFAULT NULL,
  `CP` varchar(10) DEFAULT NULL,
  `Provincia` varchar(35) DEFAULT NULL,
  `Pais` varchar(35) DEFAULT NULL,
  `Tel_Fijo` varchar(45) DEFAULT NULL,
  `Celu` varchar(45) DEFAULT NULL,
  `E_mail` varchar(50) DEFAULT NULL,
  `Foto` mediumblob DEFAULT NULL,
  `Estado` varchar(1) DEFAULT NULL,
  `Id_Curso` int(3) DEFAULT NULL,
  `Obs` varchar(200) DEFAULT NULL,
  `Inasistencias` decimal(4,2) NOT NULL DEFAULT 0.00,
  `Apercibimientos` int(2) NOT NULL DEFAULT 0,
  `Amonestaciones` int(2) NOT NULL DEFAULT 0,
  `TipoJor` char(1) DEFAULT NULL,
  `Saldo` decimal(8,2) NOT NULL DEFAULT 0.00,
  `Beca` int(3) NOT NULL DEFAULT 0,
  `Id_Grupo` tinyint(3) NOT NULL DEFAULT 0,
  `Id_Grupo_2` tinyint(3) NOT NULL DEFAULT 0,
  `Id_Grupo_3` tinyint(3) NOT NULL DEFAULT 0,
  `Id_Grupo_4` tinyint(3) NOT NULL DEFAULT 0,
  `Concepto` varchar(25) DEFAULT NULL,
  `Rei1` char(1) DEFAULT NULL,
  `Rei2` char(1) DEFAULT NULL,
  `Rei3` char(1) DEFAULT NULL,
  `Rei4` char(1) DEFAULT NULL,
  `Rei5` char(1) DEFAULT NULL,
  `Caca` char(2) DEFAULT NULL,
  `Cadmi` char(2) DEFAULT NULL,
  `Celular_de_contacto` varchar(12) DEFAULT NULL,
  `Email_de_contacto` varchar(50) DEFAULT NULL,
  `Informe` varchar(200) DEFAULT NULL,
  `Libreta` varchar(100) DEFAULT NULL,
  `Locker` int(3) DEFAULT NULL,
  `utp1` decimal(4,2) DEFAULT NULL,
  `utp2` decimal(4,2) DEFAULT NULL,
  `utp3` decimal(4,2) DEFAULT NULL,
  `utprom` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auxiliares`
--

CREATE TABLE `auxiliares` (
  `Id_Auxiliares` int(10) UNSIGNED NOT NULL,
  `Dni_Auxiliares` int(8) NOT NULL,
  `Ape_Nomb` varchar(45) NOT NULL,
  `Sexo` varchar(1) NOT NULL,
  `E_Mail` varchar(50) DEFAULT NULL,
  `Tel_1` varchar(45) DEFAULT NULL,
  `Tel_2` varchar(45) DEFAULT NULL,
  `Num_Interno` varchar(4) DEFAULT NULL,
  `Foto` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bibliotecarios`
--

CREATE TABLE `bibliotecarios` (
  `Id_Biblio` int(10) UNSIGNED NOT NULL,
  `Dni_Biblio` int(8) NOT NULL,
  `Ape_Nomb` varchar(45) NOT NULL,
  `Sexo` varchar(1) DEFAULT NULL,
  `E_Mail` varchar(50) DEFAULT NULL,
  `Tel_1` varchar(45) DEFAULT NULL,
  `Tel_2` varchar(45) DEFAULT NULL,
  `Num_Interno` varchar(4) DEFAULT NULL,
  `Foto` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directivos`
--

CREATE TABLE `directivos` (
  `Id_Directivo` int(10) UNSIGNED NOT NULL,
  `Dni_Directivo` int(8) NOT NULL,
  `Ape_Nomb` varchar(45) NOT NULL,
  `Sexo` varchar(1) NOT NULL,
  `Cargo` varchar(35) DEFAULT NULL,
  `E_Mail` varchar(50) DEFAULT NULL,
  `Tel_1` varchar(45) DEFAULT NULL,
  `Tel_2` varchar(45) DEFAULT NULL,
  `Num_Interno` varchar(4) DEFAULT NULL,
  `Foto` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `attachment_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `message_recipients`
--

CREATE TABLE `message_recipients` (
  `id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `read_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `padres`
--

CREATE TABLE `padres` (
  `Id_Padres` int(10) UNSIGNED NOT NULL,
  `Dni_Padres` int(8) NOT NULL,
  `Ape_Nomb` varchar(45) NOT NULL,
  `Sexo` varchar(1) NOT NULL,
  `Domicilio` varchar(45) DEFAULT NULL,
  `Barrio` varchar(25) DEFAULT NULL,
  `Localidad` varchar(25) DEFAULT NULL,
  `CP` varchar(10) DEFAULT NULL,
  `Provincia` varchar(35) DEFAULT NULL,
  `Pais` varchar(35) DEFAULT NULL,
  `Tel_Fijo` varchar(45) DEFAULT NULL,
  `Celu` varchar(45) DEFAULT NULL,
  `E_mail` varchar(50) DEFAULT NULL,
  `Estado` varchar(1) DEFAULT NULL,
  `Profesion` varchar(35) DEFAULT NULL,
  `Ocupacion` varchar(35) DEFAULT NULL,
  `Nacionalidad` varchar(15) DEFAULT NULL,
  `EnvEmail` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `token` varchar(255) NOT NULL,
  `expires_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preceptores`
--

CREATE TABLE `preceptores` (
  `Id_Preceptores` int(10) UNSIGNED NOT NULL,
  `Dni_Preceptores` int(8) NOT NULL,
  `Ape_Nomb` varchar(45) NOT NULL,
  `Sexo` varchar(1) NOT NULL,
  `E_Mail` varchar(50) DEFAULT NULL,
  `Tel1` varchar(45) DEFAULT NULL,
  `Tel2` varchar(45) DEFAULT NULL,
  `Foto` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preinscriptos`
--

CREATE TABLE `preinscriptos` (
  `Id_Alumno` int(10) UNSIGNED NOT NULL,
  `Dni_Alumno` int(8) DEFAULT 0,
  `Apellido` varchar(45) DEFAULT NULL,
  `Nombres` varchar(55) NOT NULL,
  `Sexo` varchar(1) DEFAULT NULL,
  `Fec_Nac` date DEFAULT NULL,
  `Edad` int(2) DEFAULT NULL,
  `Nacionalidad` char(10) DEFAULT NULL,
  `Domicilio` varchar(45) DEFAULT NULL,
  `Barrio` varchar(25) DEFAULT NULL,
  `Localidad` varchar(25) DEFAULT NULL,
  `CP` varchar(10) DEFAULT NULL,
  `Provincia` varchar(35) DEFAULT NULL,
  `Pais` varchar(35) DEFAULT NULL,
  `E_mail` varchar(50) DEFAULT NULL,
  `Esc_Origen` varchar(60) DEFAULT NULL,
  `Motivo` varchar(250) DEFAULT NULL,
  `Hermanos` char(2) DEFAULT NULL,
  `Dni_Frente` varchar(60) DEFAULT NULL,
  `Dni_Dorso` varchar(60) DEFAULT NULL,
  `Cuil` varchar(60) DEFAULT NULL,
  `Libreta_Frente` varchar(60) DEFAULT NULL,
  `Libreta_Dorso` varchar(60) DEFAULT NULL,
  `Libreta_Dorso2` varchar(60) DEFAULT NULL,
  `Libreta_Dorso3` varchar(60) DEFAULT NULL,
  `Libreta_Dorso4` varchar(60) DEFAULT NULL,
  `Libreta_Dorso5` varchar(60) DEFAULT NULL,
  `Libreta_Dorso6` varchar(60) DEFAULT NULL,
  `Docu_Completa` char(2) DEFAULT NULL,
  `Fecha_Reunion` date DEFAULT NULL,
  `Dni_Pa` int(11) DEFAULT NULL,
  `Ape_Pa` varchar(45) DEFAULT NULL,
  `Nombre_Pa` varchar(55) DEFAULT NULL,
  `Domicilio_Pa` varchar(45) DEFAULT NULL,
  `Barrio_Pa` varchar(25) DEFAULT NULL,
  `Localidad_Pa` varchar(25) DEFAULT NULL,
  `CP_Pa` varchar(10) DEFAULT NULL,
  `Provincia_Pa` varchar(35) DEFAULT NULL,
  `Pais_Pa` varchar(35) DEFAULT NULL,
  `Tel_Fijo_Pa` varchar(45) DEFAULT NULL,
  `Celu_Pa` varchar(45) DEFAULT NULL,
  `E_Mail_Pa` varchar(50) DEFAULT NULL,
  `Dni_Ma` int(11) DEFAULT NULL,
  `Apellido_Ma` varchar(45) DEFAULT NULL,
  `Nombres_Ma` varchar(55) DEFAULT NULL,
  `Domicilio_Ma` varchar(45) DEFAULT NULL,
  `Barrio_Ma` varchar(25) DEFAULT NULL,
  `Localidad_Ma` varchar(25) DEFAULT NULL,
  `CP_Ma` varchar(10) DEFAULT NULL,
  `Provincia_Ma` varchar(35) DEFAULT NULL,
  `Pais_Ma` varchar(35) DEFAULT NULL,
  `TelFijo_Ma` varchar(45) DEFAULT NULL,
  `Celu_Ma` varchar(45) DEFAULT NULL,
  `Email_Ma` varchar(50) DEFAULT NULL,
  `Dni_Tu` varchar(11) NOT NULL,
  `Apellido_Tu` varchar(45) NOT NULL,
  `Nombres_Tu` varchar(55) NOT NULL,
  `Domicilio_Tu` varchar(45) NOT NULL,
  `Barrio_Tu` varchar(25) NOT NULL,
  `Localidad_Tu` varchar(25) NOT NULL,
  `Cp_Tu` varchar(10) NOT NULL,
  `Provincia_Tu` varchar(35) NOT NULL,
  `Pais_Tu` varchar(35) NOT NULL,
  `Tel_Fijo_Tu` varchar(45) NOT NULL,
  `Celu_Tu` varchar(45) NOT NULL,
  `Email_Tu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `Id_Profesor` int(10) UNSIGNED NOT NULL,
  `Dni_Profesor` int(8) NOT NULL,
  `Ape_Nomb` varchar(45) NOT NULL,
  `Sexo` varchar(1) NOT NULL,
  `E_Mail` varchar(50) DEFAULT NULL,
  `Tel1` varchar(45) DEFAULT NULL,
  `Tel2` varchar(45) DEFAULT NULL,
  `Foto` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `responses`
--

CREATE TABLE `responses` (
  `id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `body` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secredire`
--

CREATE TABLE `secredire` (
  `Id_Secredire` int(10) UNSIGNED NOT NULL,
  `Dni_Secredire` int(8) NOT NULL,
  `Ape_Nomb` varchar(45) NOT NULL,
  `Sexo` varchar(1) NOT NULL,
  `E_Mail` varchar(50) DEFAULT NULL,
  `Tel1` varchar(45) DEFAULT NULL,
  `Tel2` varchar(45) DEFAULT NULL,
  `Foto` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secretarias`
--

CREATE TABLE `secretarias` (
  `Id_Secre` int(10) UNSIGNED NOT NULL,
  `Dni_Secre` int(8) NOT NULL,
  `Ape_Nomb` varchar(45) NOT NULL,
  `Sexo` varchar(1) NOT NULL,
  `E_Mail` varchar(50) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  `Celular` varchar(45) DEFAULT NULL,
  `Num_Interno` varchar(4) DEFAULT NULL,
  `Foto` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tecnicos`
--

CREATE TABLE `tecnicos` (
  `Id_Tecnico` int(10) UNSIGNED NOT NULL,
  `Dni_Tecnico` int(8) NOT NULL,
  `Ape_Nomb` varchar(45) NOT NULL,
  `E_Mail` varchar(50) DEFAULT NULL,
  `Tel1` varchar(45) DEFAULT NULL,
  `Tel2` varchar(45) DEFAULT NULL,
  `Foto` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `dni` int(8) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `ultima_modificacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_roles`
--

CREATE TABLE `usuario_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `rol_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrativos`
--
ALTER TABLE `administrativos`
  ADD PRIMARY KEY (`Id_Admin`) USING BTREE;

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`Id_Alumno`),
  ADD KEY `PorDniAlumno` (`Dni_Alumno`);

--
-- Indices de la tabla `auxiliares`
--
ALTER TABLE `auxiliares`
  ADD PRIMARY KEY (`Id_Auxiliares`);

--
-- Indices de la tabla `bibliotecarios`
--
ALTER TABLE `bibliotecarios`
  ADD PRIMARY KEY (`Id_Biblio`,`Dni_Biblio`);

--
-- Indices de la tabla `directivos`
--
ALTER TABLE `directivos`
  ADD PRIMARY KEY (`Id_Directivo`);

--
-- Indices de la tabla `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `message_recipients`
--
ALTER TABLE `message_recipients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_id` (`message_id`);

--
-- Indices de la tabla `padres`
--
ALTER TABLE `padres`
  ADD PRIMARY KEY (`Id_Padres`),
  ADD KEY `Dni_Padres` (`Dni_Padres`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `preceptores`
--
ALTER TABLE `preceptores`
  ADD PRIMARY KEY (`Id_Preceptores`);

--
-- Indices de la tabla `preinscriptos`
--
ALTER TABLE `preinscriptos`
  ADD PRIMARY KEY (`Id_Alumno`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`Id_Profesor`);

--
-- Indices de la tabla `responses`
--
ALTER TABLE `responses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_id` (`message_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `secredire`
--
ALTER TABLE `secredire`
  ADD PRIMARY KEY (`Id_Secredire`);

--
-- Indices de la tabla `secretarias`
--
ALTER TABLE `secretarias`
  ADD PRIMARY KEY (`Id_Secre`);

--
-- Indices de la tabla `tecnicos`
--
ALTER TABLE `tecnicos`
  ADD PRIMARY KEY (`Id_Tecnico`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario_roles`
--
ALTER TABLE `usuario_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `rol_id` (`rol_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrativos`
--
ALTER TABLE `administrativos`
  MODIFY `Id_Admin` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `Id_Alumno` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bibliotecarios`
--
ALTER TABLE `bibliotecarios`
  MODIFY `Id_Biblio` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `directivos`
--
ALTER TABLE `directivos`
  MODIFY `Id_Directivo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `message_recipients`
--
ALTER TABLE `message_recipients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `padres`
--
ALTER TABLE `padres`
  MODIFY `Id_Padres` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `preceptores`
--
ALTER TABLE `preceptores`
  MODIFY `Id_Preceptores` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `preinscriptos`
--
ALTER TABLE `preinscriptos`
  MODIFY `Id_Alumno` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
  MODIFY `Id_Profesor` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `responses`
--
ALTER TABLE `responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario_roles`
--
ALTER TABLE `usuario_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `message_recipients`
--
ALTER TABLE `message_recipients`
  ADD CONSTRAINT `message_recipients_ibfk_1` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD CONSTRAINT `password_reset_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `responses`
--
ALTER TABLE `responses`
  ADD CONSTRAINT `responses_ibfk_1` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `usuario_roles`
--
ALTER TABLE `usuario_roles`
  ADD CONSTRAINT `usuario_roles_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `usuario_roles_ibfk_2` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
