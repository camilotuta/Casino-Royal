-- cSpell:ignore cedula codigo carlos CODIGOS andres Diaz Holdem laura sofia telefono transaccion
-- delete from asistentes_juegos;
-- delete from jugadores;
-- delete from promotores;
-- delete from CODIGOS_PROMOCIONALES;
-- delete from TRANSACCIONES;
-- delete from JUEGOS;
-- ?-----------------------------------------------------------------------------------------? --

-- Tabla de Juegos
CREATE TABLE JUEGOS (
    juego_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_juego VARCHAR(100) NOT NULL,
    estado_juego ENUM('Activo', 'Inactivo') NOT NULL,
    apuesta_minima DOUBLE NOT NULL,
    apuesta_maxima DOUBLE NOT NULL,
    jugadores_activos INT NOT NULL
);

-- Tabla de Jugadores
CREATE TABLE JUGADORES (
    jugador_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_usuario VARCHAR(100) NOT NULL,
    correo_jugador VARCHAR(100) NOT NULL,
    cedula_jugador VARCHAR(20) UNIQUE NOT NULL,
    password_jugador VARCHAR(255) NOT NULL,
    fondos_jugador DOUBLE DEFAULT 0.0 NOT NULL,
    juego_id INT,
    FOREIGN KEY (juego_id) REFERENCES JUEGOS(juego_id)
);

-- Tabla de Asistentes de Juegos
CREATE TABLE ASISTENTES_JUEGOS (
    asistente_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_asistente VARCHAR(100) NOT NULL,
    correo_asistente VARCHAR(100) NOT NULL,
    telefono_asistente VARCHAR(20),
    cedula_asistente VARCHAR(20) UNIQUE NOT NULL,
    estado_asistente ENUM('Activo', 'Inactivo') NOT NULL,
    password_asistente VARCHAR(255) NOT NULL,
    juego_id INT,
    FOREIGN KEY (juego_id) REFERENCES JUEGOS(juego_id)
);

-- Tabla de Promotores
CREATE TABLE PROMOTORES (
    promotor_id INT AUTO_INCREMENT PRIMARY KEY,
    cedula_promotor VARCHAR(20) UNIQUE NOT NULL,
    nombre_promotor VARCHAR(100) NOT NULL,
    tipo_promotor ENUM('Independiente', 'Corporativo') NOT NULL,
    password_promotor VARCHAR(255) NOT NULL,
    correo_promotor VARCHAR(100) NOT NULL,
    fondos_promotor DOUBLE DEFAULT 0.0 NOT NULL,
    juego_id INT,
    bonus_probabilidad DOUBLE NOT NULL,
    FOREIGN KEY (juego_id) REFERENCES JUEGOS(juego_id)
);

-- Tabla de Códigos Promocionales
CREATE TABLE CODIGOS_PROMOCIONALES (
    codigo_id INT AUTO_INCREMENT PRIMARY KEY,
    valor_codigo DOUBLE NOT NULL,
    codigo_promocional VARCHAR(100) UNIQUE NOT NULL,
    estado_codigo ENUM('Activo', 'Usado', 'Expirado') NOT NULL,
    tipo_codigo ENUM('Descuento', 'Bonus', 'Otro') NOT NULL,
    jugador_id INT,
    FOREIGN KEY (jugador_id) REFERENCES JUGADORES(jugador_id)
);

-- Tabla de Transacciones
CREATE TABLE TRANSACCIONES (
    transaccion_id INT AUTO_INCREMENT PRIMARY KEY,
    fecha_transaccion DATETIME NOT NULL,
    jugador_id INT,
    valor_transaccion DOUBLE NOT NULL,
    tipo_transaccion ENUM('Deposito', 'Retiro', 'Apuesta', 'Premio') NOT NULL,
    estado_transaccion ENUM('Pendiente', 'Completada', 'Fallida') NOT NULL,
    FOREIGN KEY (jugador_id) REFERENCES JUGADORES(jugador_id)
);

-- *-----------------------------------------------------------------------------------------* --

-- Inserciones en la tabla JUEGOS
INSERT INTO JUEGOS (nombre_juego, estado_juego, apuesta_minima, apuesta_maxima, jugadores_activos) VALUES
('Poker Texas Holdem', 'Activo', 10.00, 1000.00, 200),
('Ruleta', 'Activo', 5.00, 500.00, 50),
('Blackjack', 'Inactivo', 20.00, 2000.00, 150);

-- Inserciones en la tabla JUGADORES
INSERT INTO JUGADORES (nombre_usuario, correo_jugador, cedula_jugador, password_jugador, fondos_jugador, juego_id) VALUES
('Juan Perez', 'juan.perez@example.com', 'V12345678', 'juanP123', 150.00, 1),
('Maria Lopez', 'maria.lopez@example.com', 'V87654321', 'mariaL456', 320.00, 2),
('Carlos Garcia', 'carlos.garcia@example.com', 'V11223344', 'carlosG789', 90.00, 3);

-- Inserciones en la tabla ASISTENTES_JUEGOS
INSERT INTO ASISTENTES_JUEGOS (nombre_asistente, correo_asistente, telefono_asistente, cedula_asistente, estado_asistente, password_asistente, juego_id) VALUES
('Andres Mendez', 'andres.mendez@example.com', '04141234567', 'V23456789', 'Activo', 'andresM123', 1),
('Laura Diaz', 'laura.diaz@example.com', '04148765432', 'V98765432', 'Inactivo', 'lauraD456', 2),
('Sofia Rojas', 'sofia.rojas@example.com', '04149876543', 'V66778899', 'Activo', 'sofiaR789', 3);

-- Inserciones en la tabla PROMOTORES
INSERT INTO PROMOTORES (cedula_promotor, nombre_promotor, tipo_promotor, password_promotor, correo_promotor, fondos_promotor, juego_id, bonus_probabilidad) VALUES
('V34567890', 'Pedro Martinez', 'Independiente', 'pedroM123', 'pedro.martinez@example.com', 500.00, 1, 0.10),
('V45678901', 'Ana Gonzalez', 'Corporativo', 'anaG456', 'ana.gonzalez@example.com', 1500.00, 2, 0.15),
('V56789012', 'Luis Ramirez', 'Independiente', 'luisR789', 'luis.ramirez@example.com', 300.00, 3, 0.05);

-- Inserciones en la tabla CODIGOS_PROMOCIONALES
INSERT INTO CODIGOS_PROMOCIONALES (valor_codigo, codigo_promocional, estado_codigo, tipo_codigo, jugador_id) VALUES
(50.00, 'PROMO50', 'Activo', 'Descuento', 1),
(25.00, 'BONUS25', 'Usado', 'Bonus', 2),
(100.00, 'SUPER100', 'Expirado', 'Descuento', 3);

-- Inserciones en la tabla TRANSACCIONES
INSERT INTO TRANSACCIONES (fecha_transaccion, jugador_id, valor_transaccion, tipo_transaccion, estado_transaccion) VALUES
('2024-08-01 10:30:00', 1, 50.00, 'Deposito', 'Completada'),
('2024-08-02 15:45:00', 2, 100.00, 'Apuesta', 'Completada'),
('2024-08-03 20:10:00', 3, 20.00, 'Retiro', 'Fallida');
