-- =========================================================
-- DDL: Creación de las tablas del Arcade
-- =========================================================
CREATE TABLE mis_jugadores (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(40) NOT NULL,
  curso INT
);

CREATE TABLE mis_juegos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(30) NOT NULL,
  categoria VARCHAR(20)
);

CREATE TABLE mis_partidas (
  id INT PRIMARY KEY AUTO_INCREMENT,
  jugador_id INT NOT NULL,
  juego_id INT NOT NULL,
  puntaje INT,
  duracion_s INT,
  resultado VARCHAR(10),
  piloto VARCHAR(10),
  fecha DATE,
  FOREIGN KEY (jugador_id) REFERENCES mis_jugadores(id),
  FOREIGN KEY (juego_id) REFERENCES mis_juegos(id)
);

-- =========================================================
-- DML: Inserción de datos
-- =========================================================
INSERT INTO mis_juegos (nombre, categoria) VALUES ('Culebrita', 'arcade');
INSERT INTO mis_juegos (nombre, categoria) VALUES ('Rompeladrillos', 'arcade');
INSERT INTO mis_juegos (nombre, categoria) VALUES ('Triqui', 'tablero');

INSERT INTO mis_jugadores (id, nombre, curso) VALUES (101, 'Invitado', 10);

-- Tus partidas del Arcade (puedes pegar más si quieres)
INSERT INTO mis_partidas (id, jugador_id, juego_id, puntaje, duracion_s, resultado, piloto, fecha) VALUES (1001, 101, 1, 40, 5, 'perdio', 'humano', '2026-11-06');
INSERT INTO mis_partidas (id, jugador_id, juego_id, puntaje, duracion_s, resultado, piloto, fecha) VALUES (1002, 101, 1, 40, 12, 'perdio', 'humano', '2026-11-06');
INSERT INTO mis_partidas (id, jugador_id, juego_id, puntaje, duracion_s, resultado, piloto, fecha) VALUES (1003, 101, 1, 0, 4, 'perdio', 'humano', '2026-11-06');
INSERT INTO mis_partidas (id, jugador_id, juego_id, puntaje, duracion_s, resultado, piloto, fecha) VALUES (1004, 101, 2, 580, 57, 'gano', 'humano', '2026-11-06');
INSERT INTO mis_partidas (id, jugador_id, juego_id, puntaje, duracion_s, resultado, piloto, fecha) VALUES (1005, 101, 3, 50, 518, 'empate', 'humano', '2026-11-06');
INSERT INTO mis_partidas (id, jugador_id, juego_id, puntaje, duracion_s, resultado, piloto, fecha) VALUES (1006, 101, 3, 100, 7, 'gano', 'humano', '2026-11-06');