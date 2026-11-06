# Actividad 9: Laboratorio de Galletas y Arcade de Datos

**Estudiante:** ThomasStev-Moon
**Cuaderno de Colab:** [Pega aquí el enlace de tu cuaderno]

## 📌 Punto 1: Laboratorio de Galletas 3D
- **Bitácora:** Se recorrieron las 7 estaciones analizando la química de los ingredientes, la reacción de Maillard, el gluten, y la visión por computador (ROI, YOLO, máscaras HSV). Todo guardado en `punto1_laboratorio/`.
- **MVC:** El controlador recibe el clic, el modelo actualiza la temperatura/tiempo, y la vista redibuja la escena 3D.

## 📌 Punto 2: Cuaderno de Colab (Retos A1 a Y2)
- **Evidencias:** Archivo `.ipynb` descargado en `punto2_colab/`.
- **Reflexión Alias en WHERE:** Un alias del `SELECT` no se puede usar en el `WHERE` porque SQL ejecuta primero el `FROM` y el `WHERE`, y el alias se crea al final (en el `SELECT`).
- **Reflexión OpenCV/YOLO:** El umbral de confianza y el IoU (NMS) deben equilibrarse para no perder galletas buenas ni contar falsos positivos.

## 📌 Punto 3: Arcade de Datos
- **Cuadro de Visión:** Rango de tono 19-27 detecta solo la pelota; 10-27 confunde al piloto con el fondo/ladrillos.
- **Algoritmos:** La Culebrita usa un bucle `MIENTRAS`; el Rompeladrillos un bucle `PARA CADA`; el Triqui revisa 8 líneas y se detiene si hay ganador.
- **SQL:** Consultas guardadas en `punto3_arcade/consultas.sql` (JOINs, WHERE compuesto, GROUP BY).

## 📌 Punto 4: MySQL y DDL/DML (Plan B)
- **Diagrama ER:** Generado en dbdiagram.io (`punto4_workbench/diagrama_er.png`).
- **DDL y DML:** Creación de las tablas `mis_jugadores`, `mis_juegos` y `mis_partidas` con claves foráneas, guardado en `punto4_workbench/arcade_mysql.sql`.

## 📌 Punto 5: Propuesta de Juego (Tetris)
- **Modelo de Datos:** 4 tablas (`jugadores`, `piezas`, `partidas`, `movimientos`) diseñadas con claves primarias y foráneas.
- **Requerimientos:** No funcional clave: "No permitir borrar un jugador con partidas" (integridad referencial).
- **IA/Visión:** Un bot que usa OpenCV para leer el color de las piezas en pantalla y mover el teclado automáticamente.
- **Evidencias:** `punto5_propuesta/propuesta.md`, `tablas.sql` y `diagrama_er.png`.
