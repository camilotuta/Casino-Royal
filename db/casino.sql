-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-08-2024 a las 00:44:59
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `casino`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistentes_juegos`
--

CREATE TABLE `asistentes_juegos` (
  `asistente_id` int(11) NOT NULL,
  `nombre_asistente` varchar(100) NOT NULL,
  `correo_asistente` varchar(100) NOT NULL,
  `telefono_asistente` varchar(20) DEFAULT NULL,
  `cedula_asistente` varchar(20) NOT NULL,
  `estado_asistente` enum('Activo','Inactivo') NOT NULL,
  `password_asistente` varchar(255) NOT NULL,
  `juego_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asistentes_juegos`
--

INSERT INTO `asistentes_juegos` (`asistente_id`, `nombre_asistente`, `correo_asistente`, `telefono_asistente`, `cedula_asistente`, `estado_asistente`, `password_asistente`, `juego_id`) VALUES
(1, 'Andres Mendez', 'andres.mendez@example.com', '04141234567', 'V23456789', 'Activo', 'andresM123', 1),
(2, 'Laura Diaz', 'laura.diaz@example.com', '04148765432', 'V98765432', 'Inactivo', 'lauraD456', 2),
(3, 'Sofia Rojas', 'sofia.rojas@example.com', '04149876543', 'V66778899', 'Activo', 'sofiaR789', 3),
(23, 'Natalia Castro', 'natalia.castro@example.com', '04152345678', 'V34567890', 'Inactivo', 'nataliaC456', 14),
(24, 'Esteban Vargas', 'esteban.vargas@example.com', '04153456789', 'V45678901', 'Activo', 'estebanV789', 15),
(25, 'Lina Martinez', 'lina.martinez@example.com', '04154567890', 'V56789012', 'Activo', 'linaM123', 16),
(26, 'Rafael Morales', 'rafael.morales@example.com', '04155678901', 'V67890123', 'Inactivo', 'rafaelM456', 17),
(27, 'Camila Ortega', 'camila.ortega@example.com', '04156789012', 'V78901234', 'Activo', 'camilaO789', 18),
(28, 'Juan Pablo Santos', 'juan.pablo.santos@example.com', '04157890123', 'V89012345', 'Activo', 'juanP123', 19),
(29, 'Sofia Gonzalez', 'sofia.gonzalez@example.com', '04158901234', 'V90123456', 'Inactivo', 'sofiaG456', 20),
(30, 'Miguel Angel', 'miguel.angel@example.com', '04159012345', 'V01234567', 'Activo', 'miguelA789', 1),
(31, 'Catalina Pineda', 'catalina.pineda@example.com', '04160123456', 'V12345678', 'Activo', 'catalinaP123', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigos_promocionales`
--

CREATE TABLE `codigos_promocionales` (
  `codigo_id` int(11) NOT NULL,
  `valor_codigo` double NOT NULL,
  `codigo_promocional` varchar(100) NOT NULL,
  `estado_codigo` enum('Activo','Usado','Expirado') NOT NULL,
  `tipo_codigo` enum('Descuento','Bonus','Otro') NOT NULL,
  `jugador_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `codigos_promocionales`
--

INSERT INTO `codigos_promocionales` (`codigo_id`, `valor_codigo`, `codigo_promocional`, `estado_codigo`, `tipo_codigo`, `jugador_id`) VALUES
(1, 50, 'PROMO50', 'Activo', 'Descuento', 1),
(2, 25, 'BONUS25', 'Usado', 'Bonus', 2),
(3, 100, 'SUPER100', 'Expirado', 'Descuento', 3),
(4, 10, 'WELCOME10', 'Activo', 'Descuento', 4),
(5, 15, 'FIRST15', 'Usado', 'Bonus', 5),
(6, 200, 'BIG200', 'Expirado', 'Descuento', 6),
(7, 30, 'SAVE30', 'Activo', 'Bonus', 7),
(8, 75, 'EXTRA75', 'Usado', 'Descuento', 8),
(9, 50, 'REWARD50', 'Activo', 'Bonus', 9),
(10, 120, 'HUGE120', 'Expirado', 'Descuento', 10),
(11, 5, 'CHEAP5', 'Activo', 'Descuento', 11),
(12, 60, 'OFFER60', 'Usado', 'Bonus', 12),
(13, 40, 'DISCOUNT40', 'Activo', 'Descuento', 13),
(14, 90, 'PROMO90', 'Usado', 'Bonus', 14),
(15, 110, 'GIFT110', 'Expirado', 'Descuento', 15),
(16, 70, 'BONUS70', 'Activo', 'Bonus', 16),
(17, 25, 'DEAL25', 'Usado', 'Descuento', 17),
(18, 15, 'SPECIAL15', 'Activo', 'Bonus', 18),
(19, 85, 'BIG85', 'Expirado', 'Descuento', 19),
(20, 45, 'SUPER45', 'Activo', 'Bonus', 20),
(21, 35, 'TOP35', 'Usado', 'Descuento', 1),
(22, 55, 'HOT55', 'Activo', 'Bonus', 2),
(23, 95, 'EXCLUSIVE95', 'Expirado', 'Descuento', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE `juegos` (
  `juego_id` int(11) NOT NULL,
  `nombre_juego` varchar(100) NOT NULL,
  `estado_juego` enum('Activo','Inactivo') NOT NULL,
  `apuesta_minima` double NOT NULL,
  `apuesta_maxima` double NOT NULL,
  `jugadores_activos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `juegos`
--

INSERT INTO `juegos` (`juego_id`, `nombre_juego`, `estado_juego`, `apuesta_minima`, `apuesta_maxima`, `jugadores_activos`) VALUES
(1, 'Poker Texas Holdem', 'Activo', 10, 1000, 200),
(2, 'Ruleta', 'Activo', 5, 500, 50),
(3, 'Blackjack', 'Inactivo', 20, 2000, 150),
(4, 'Bingo', 'Activo', 1, 100, 75),
(5, 'Sistemas de Apuestas', 'Inactivo', 50, 5000, 20),
(6, 'Keno', 'Activo', 2, 200, 60),
(7, 'Dados', 'Activo', 1, 150, 90),
(8, 'Craps', 'Inactivo', 5, 1000, 10),
(9, 'Sic Bo', 'Activo', 5, 500, 40),
(10, 'Baccarat', 'Activo', 10, 1000, 55),
(11, 'Video Poker', 'Inactivo', 5, 500, 30),
(12, 'Solitario', 'Activo', 0.5, 50, 80),
(13, 'Apuestas Deportivas', 'Activo', 1, 1000, 100),
(14, 'Póker Caribeño', 'Inactivo', 10, 500, 25),
(15, 'Raspaditas', 'Activo', 1, 10, 90),
(16, 'Juegos de Casino', 'Activo', 1, 1000, 110),
(17, 'Ruleta Electrónica', 'Activo', 5, 500, 70),
(18, 'Lotería', 'Inactivo', 2, 200, 15),
(19, 'Apuestas en Vivo', 'Activo', 5, 2000, 50),
(20, 'Carreras de Caballos', 'Activo', 10, 500, 25),
(21, 'Juegos de Cartas', 'Activo', 3, 300, 60),
(22, 'Rueda de la Fortuna', 'Activo', 1, 50, 85),
(23, 'Juegos de Mesa', 'Inactivo', 5, 500, 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

CREATE TABLE `jugadores` (
  `jugador_id` int(11) NOT NULL,
  `nombre_usuario` varchar(100) NOT NULL,
  `correo_jugador` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `cedula_jugador` varchar(20) NOT NULL,
  `password_jugador` varchar(255) NOT NULL,
  `fondos_jugador` double NOT NULL DEFAULT 0,
  `juego_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`jugador_id`, `nombre_usuario`, `correo_jugador`, `cedula_jugador`, `password_jugador`, `fondos_jugador`, `juego_id`,`telefono`) VALUES
(1, 'Juan Perez', 'juan.perez@example.com', 'V12345678', 'juanP123', 150, 1,`(614) 530-6819`),
(2, 'Maria Lopez', 'maria.lopez@example.com', 'V87654321', 'mariaL456', 320, 2,`(550) 947-1827`),
(3, 'Carlos Garcia', 'carlos.garcia@example.com', 'V11223344', 'carlosG789', 90, 3,`(789) 892-8633`),
(4, 'Pedro Alvarez', 'pedro.alvarez@example.com', 'V11223355', 'pedroA123', 200, 4,`(753) 478-3712`),
(5, 'Luis Ortega', 'luis.ortega@example.com', 'V22334466', 'luisO456', 250, 5,`(233) 683-4097`),
(6, 'Sonia Castro', 'sonia.castro@example.com', 'V33445577', 'soniaC789', 80, 6,`(817) 683-6133`),
(7, 'Rosa Martinez', 'rosa.martinez@example.com', 'V44556688', 'rosaM123', 120, 7,`(510) 774-2279`),
(8, 'Jorge Ruiz', 'jorge.ruiz@example.com', 'V55667799', 'jorgeR456', 300, 8,`(703) 555-4058`),
(9, 'Ana Torres', 'ana.torres@example.com', 'V66778800', 'anaT789', 150, 9,`(570) 345-8176`),
(10, 'Felipe Hernandez', 'felipe.hernandez@example.com', 'V77889911', 'felipeH123', 200, 10,`(703) 366-1245`),
(11, 'Gabriela Romero', 'gabriela.romero@example.com', 'V88990022', 'gabrielaR456', 90, 11,`(432) 625-6727`),
(12, 'Ricardo Silva', 'ricardo.silva@example.com', 'V99001133', 'ricardoS789', 160, 12,`(751) 742-3679`),
(13, 'Natalia Rivas', 'natalia.rivas@example.com', 'V00112244', 'nataliaR123', 250, 13,`(412) 303-7845`),
(14, 'Julian Gomez', 'julian.gomez@example.com', 'V11223366', 'julianG456', 170, 14,`(926) 378-2275`),
(15, 'Camila Castro', 'camila.castro@example.com', 'V22334477', 'camilaC789', 80, 15,`(519) 882-6688`),
(16, 'Sebastian Vasquez', 'sebastian.vasquez@example.com', 'V33445588', 'sebastianV123', 220, 16,`(575) 203-2094`),
(17, 'Daniela Mora', 'daniela.mora@example.com', 'V44556699', 'danielaM456', 130, 17,`(720) 756-1918`),
(18, 'Mauricio Jimenez', 'mauricio.jimenez@example.com', 'V55667700', 'mauricioJ789', 140, 18,`(533) 875-6428`),
(19, 'Laura Gomez', 'laura.gomez@example.com', 'V66778811', 'lauraG123', 250, 19,`(485) 806-4686`),
(20, 'Andres Paredes', 'andres.paredes@example.com', 'V77889922', 'andresP456', 90, 20,`(868) 232-7891`),
(21, 'Valeria Morales', 'valeria.morales@example.com', 'V88990033', 'valeriaM789', 110, 1,`(525) 271-1740`),
(22, 'Javier Correa', 'javier.correa@example.com', 'V99001144', 'javierC123', 200, 2,`(914) 427-8733`);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promotores`
--

CREATE TABLE `promotores` (
  `promotor_id` int(11) NOT NULL,
  `cedula_promotor` varchar(20) NOT NULL,
  `nombre_promotor` varchar(100) NOT NULL,
  `tipo_promotor` enum('Independiente','Corporativo') NOT NULL,
  `password_promotor` varchar(255) NOT NULL,
  `correo_promotor` varchar(100) NOT NULL,
  `fondos_promotor` double NOT NULL DEFAULT 0,
  `juego_id` int(11) DEFAULT NULL,
  `bonus_probabilidad` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `promotores`
--

INSERT INTO `promotores` (`promotor_id`, `cedula_promotor`, `nombre_promotor`, `tipo_promotor`, `password_promotor`, `correo_promotor`, `fondos_promotor`, `juego_id`, `bonus_probabilidad`) VALUES
(1, 'V34567890', 'Pedro Martinez', 'Independiente', 'pedroM123', 'pedro.martinez@example.com', 500, 1, 0.1),
(2, 'V45678901', 'Ana Gonzalez', 'Corporativo', 'anaG456', 'ana.gonzalez@example.com', 1500, 2, 0.15),
(3, 'V56789012', 'Luis Ramirez', 'Independiente', 'luisR789', 'luis.ramirez@example.com', 300, 3, 0.05);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transacciones`
--

CREATE TABLE `transacciones` (
  `transaccion_id` int(11) NOT NULL,
  `fecha_transaccion` datetime NOT NULL,
  `jugador_id` int(11) DEFAULT NULL,
  `valor_transaccion` double NOT NULL,
  `tipo_transaccion` enum('Deposito','Retiro','Apuesta','Premio') NOT NULL,
  `estado_transaccion` enum('Pendiente','Completada','Fallida') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `transacciones`
--

INSERT INTO `transacciones` (`transaccion_id`, `fecha_transaccion`, `jugador_id`, `valor_transaccion`, `tipo_transaccion`, `estado_transaccion`) VALUES
(1, '2024-08-01 10:30:00', 1, 50, 'Deposito', 'Completada'),
(2, '2024-08-02 15:45:00', 2, 100, 'Apuesta', 'Completada'),
(3, '2024-08-03 20:10:00', 3, 20, 'Retiro', 'Fallida'),
(4, '2024-08-04 11:00:00', 4, 70, 'Apuesta', 'Completada'),
(5, '2024-08-05 12:15:00', 5, 150, 'Deposito', 'Completada'),
(6, '2024-08-06 14:30:00', 6, 30, 'Retiro', 'Fallida'),
(7, '2024-08-07 16:45:00', 7, 40, 'Deposito', 'Completada'),
(8, '2024-08-08 18:00:00', 8, 20, 'Apuesta', 'Completada'),
(9, '2024-08-09 19:15:00', 9, 60, 'Retiro', 'Fallida'),
(10, '2024-08-10 20:30:00', 10, 90, 'Deposito', 'Completada'),
(11, '2024-08-11 21:45:00', 11, 15, 'Apuesta', 'Completada'),
(12, '2024-08-12 22:00:00', 12, 100, 'Retiro', 'Fallida'),
(13, '2024-08-13 23:15:00', 13, 50, 'Deposito', 'Completada'),
(14, '2024-08-14 10:30:00', 14, 75, 'Apuesta', 'Completada'),
(15, '2024-08-15 11:45:00', 15, 20, 'Retiro', 'Fallida'),
(16, '2024-08-16 12:00:00', 16, 45, 'Deposito', 'Completada'),
(17, '2024-08-17 13:15:00', 17, 80, 'Apuesta', 'Completada'),
(18, '2024-08-18 14:30:00', 18, 25, 'Retiro', 'Fallida'),
(19, '2024-08-19 15:45:00', 19, 55, 'Deposito', 'Completada'),
(20, '2024-08-20 16:00:00', 20, 90, 'Apuesta', 'Completada'),
(21, '2024-08-21 17:15:00', 1, 30, 'Retiro', 'Fallida'),
(22, '2024-08-22 18:30:00', 2, 70, 'Deposito', 'Completada'),
(23, '2024-08-23 19:45:00', 3, 40, 'Apuesta', 'Completada'),
(24, '2024-08-24 20:00:00', 4, 60, 'Retiro', 'Fallida');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistentes_juegos`
--
ALTER TABLE `asistentes_juegos`
  ADD PRIMARY KEY (`asistente_id`),
  ADD UNIQUE KEY `cedula_asistente` (`cedula_asistente`),
  ADD KEY `juego_id` (`juego_id`);

--
-- Indices de la tabla `codigos_promocionales`
--
ALTER TABLE `codigos_promocionales`
  ADD PRIMARY KEY (`codigo_id`),
  ADD UNIQUE KEY `codigo_promocional` (`codigo_promocional`),
  ADD KEY `jugador_id` (`jugador_id`);

--
-- Indices de la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD PRIMARY KEY (`juego_id`);

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`jugador_id`),
  ADD UNIQUE KEY `cedula_jugador` (`cedula_jugador`),
  ADD KEY `juego_id` (`juego_id`);

--
-- Indices de la tabla `promotores`
--
ALTER TABLE `promotores`
  ADD PRIMARY KEY (`promotor_id`),
  ADD UNIQUE KEY `cedula_promotor` (`cedula_promotor`),
  ADD KEY `juego_id` (`juego_id`);

--
-- Indices de la tabla `transacciones`
--
ALTER TABLE `transacciones`
  ADD PRIMARY KEY (`transaccion_id`),
  ADD KEY `jugador_id` (`jugador_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asistentes_juegos`
--
ALTER TABLE `asistentes_juegos`
  MODIFY `asistente_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `codigos_promocionales`
--
ALTER TABLE `codigos_promocionales`
  MODIFY `codigo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `juegos`
--
ALTER TABLE `juegos`
  MODIFY `juego_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  MODIFY `jugador_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `promotores`
--
ALTER TABLE `promotores`
  MODIFY `promotor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `transacciones`
--
ALTER TABLE `transacciones`
  MODIFY `transaccion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asistentes_juegos`
--
ALTER TABLE `asistentes_juegos`
  ADD CONSTRAINT `asistentes_juegos_ibfk_1` FOREIGN KEY (`juego_id`) REFERENCES `juegos` (`juego_id`);

--
-- Filtros para la tabla `codigos_promocionales`
--
ALTER TABLE `codigos_promocionales`
  ADD CONSTRAINT `codigos_promocionales_ibfk_1` FOREIGN KEY (`jugador_id`) REFERENCES `jugadores` (`jugador_id`);

--
-- Filtros para la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD CONSTRAINT `jugadores_ibfk_1` FOREIGN KEY (`juego_id`) REFERENCES `juegos` (`juego_id`);

--
-- Filtros para la tabla `promotores`
--
ALTER TABLE `promotores`
  ADD CONSTRAINT `promotores_ibfk_1` FOREIGN KEY (`juego_id`) REFERENCES `juegos` (`juego_id`);

--
-- Filtros para la tabla `transacciones`
--
ALTER TABLE `transacciones`
  ADD CONSTRAINT `transacciones_ibfk_1` FOREIGN KEY (`jugador_id`) REFERENCES `jugadores` (`jugador_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
