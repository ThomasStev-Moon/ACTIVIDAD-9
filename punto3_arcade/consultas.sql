-- =====================================================================
-- PUNTO 3: CONSULTAS DEL ARCADE DE DATOS
-- Jugador: Thomas Arismendi (ID: 101)
-- =====================================================================

-- a. Consulta simple con ORDER BY y LIMIT: mis 3 mejores partidas de Culebrita
SELECT puntaje, fecha FROM partidas WHERE jugador_id = 101 AND juego_id = 1 ORDER BY puntaje DESC LIMIT 3;

-- b. WHERE compuesto (con y sin paréntesis)
-- Con paréntesis: filtra solo partidas del juego 3 que sean ganadas O tengan más de 50 puntos
SELECT id, puntaje, resultado FROM partidas WHERE juego_id = 3 AND (resultado = 'gano' OR puntaje > 50);

-- Sin paréntesis: SQL lo interpreta diferente. Trae partidas ganadas del juego 3, 
-- O CUALQUIER partida (de cualquier juego) que tenga más de 50 puntos.
SELECT id, puntaje, resultado FROM partidas WHERE juego_id = 3 AND resultado = 'gano' OR puntaje > 50;

-- c. INSERT: agregar a un compañero como jugador
INSERT INTO jugadores (nombre, curso) VALUES ('Compañero de Clase', 10);

-- d. JOIN de las tres tablas: nombre del jugador, nombre del juego y puntaje
SELECT j.nombre AS jugador, g.nombre AS juego, p.puntaje 
FROM partidas p 
JOIN jugadores j ON p.jugador_id = j.id 
JOIN juegos g ON p.juego_id = g.id 
ORDER BY p.puntaje DESC LIMIT 10;

-- e. GROUP BY con HAVING: jugadores con más de 2 partidas de Triqui
SELECT j.nombre, COUNT(*) AS partidas 
FROM partidas p 
JOIN jugadores j ON p.jugador_id = j.id 
JOIN juegos g ON p.juego_id = g.id 
WHERE g.nombre = 'Triqui' 
GROUP BY j.nombre 
HAVING COUNT(*) > 2;