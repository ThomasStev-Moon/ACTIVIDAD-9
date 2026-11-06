# ACTIVIDAD 9
# 🍪 Laboratorio de Galletas y Arcade de Datos

![Python](https://img.shields.io/badge/Python-3.13-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Google Colab](https://img.shields.io/badge/Google-Colab-F9AB00?style=for-the-badge&logo=googlecolab&logoColor=white)
![SQLite](https://img.shields.io/badge/SQLite-3.0-003B57?style=for-the-badge&logo=sqlite&logoColor=white)
![OpenCV](https://img.shields.io/badge/OpenCV-4.x-5C3EE8?style=for-the-badge&logo=opencv&logoColor=white)
![YOLO](https://img.shields.io/badge/YOLO-v8-111F68?style=for-the-badge&logo=yolo&logoColor=white)
![Estado](https://img.shields.io/badge/Estado-Completado-2E7D32?style=for-the-badge)

> *"Un computador no ve una galleta: ve una tabla de números."*

Taller completo de algoritmos, lógica, bases de datos relacionales y visión por computador. El proyecto integra la simulación 3D de una panadería (Laboratorio de galletas), un cuaderno interactivo en Google Colab con retos autocorregibles, y un Arcade de datos con juegos clásicos que guardan sus puntajes en SQL.

---

## 👤 Autor

| Campo | Detalle |
|---|---|
| **Nombre** | Thomas Stev Arismendi |
| **Programa** | Programación de Software |
| **Instructor** | Diego Barragán |
| **Institución** | SENA |
| **Fecha** | Noviembre 2026 |

---

## 🎨 Diseño del proyecto

El proyecto se estructura en **5 puntos** progresivos que simulan el ciclo de vida de una planta de producción de galletas y la gestión de un arcade:

1. **Laboratorio 3D** (química + visión artificial)
2. **Cuaderno de Colab** (algoritmos, lógica, condicionales, bucles)
3. **Arcade de datos** (bases de datos relacionales y SQL)
4. **MySQL Workbench** (DDL, DML, diagramas entidad-relación)
5. **Propuesta Final** (diseño de una base de datos completa para un juego propio)

Cada punto resuelve un problema real: desde hornear galletas con la reacción de Maillard hasta analizar cómo un piloto automático juega al Rompeladrillos detectando colores con OpenCV.

---

## 📖 Descripción

En esta actividad se exploran los conceptos fundamentales de la programación y la ciencia de datos:

- **Algoritmos y lógica:** Convertir recetas en pseudocódigo, evaluar condiciones booleanas y usar bucles para simular el horno.
- **Bases de datos relacionales:** Diseñar tablas, aplicar claves primarias y foráneas, y realizar consultas con `JOIN`, `GROUP BY` y `HAVING`.
- **MVC:** Separar la lógica de negocio (Modelo), la interfaz de usuario (Vista) y el control de eventos (Controlador).
- **Visión por computador:** Segmentar galletas con OpenCV, aplicar umbrales de confianza e IoU en YOLO, y detectar zonas seguras de peligro.

---

## 🛠️ Tecnologías

| Herramienta | Versión | Uso |
|---|---|---|
| **Python** | 3.13 | Lenguaje anfitrión y lógica de programación |
| **Google Colab** | — | Entorno de ejecución en la nube |
| **SQLite / MySQL** | 3.0 / 8.0 | Motores de bases de datos relacionales |
| **Pandas** | última | Análisis de datos y tablas dinámicas |
| **OpenCV** | 4.x | Procesamiento de imágenes y visión artificial |
| **Ultralytics YOLOv8** | v8 | Detección de objetos (galletas y paquetes) |
| **GitHub** | — | Control de versiones y entrega |

---

## 📂 Estructura del repositorio

'''text
Actividad 9/
├── README.md                    ← este archivo
├── punto1_laboratorio/          ← Bitácora, SQL y capturas
│   ├── bitacora.md
│   ├── laboratorio.sql
│   └── captura_horno.png, etc.
├── punto2_colab/                ← Cuaderno y retos superados
│   └── laboratorio_galletas.ipynb
├── punto3_arcade/               ← Consultas SQL y bitácora de visión
│   ├── consultas.sql
│   ├── datos_arcade.sql
│   └── bitacora_punto3.md
├── punto4_workbench/            ← Diagrama ER y DDL/DML
│   ├── arcade_mysql.sql
│   └── diagrama_er.png
└── punto5_propuesta/            ← Propuesta de juego propio
    ├── propuesta.md
    ├── tablas.sql
    └── diagrama_er.png
'''

---

## 📚 Contenido del taller

- [Punto 1 · Laboratorio de Galletas 3D](#punto-1--laboratorio-de-galletas-3d)
- [Punto 2 · Cuaderno de Colab (Algoritmos y SQL)](#punto-2--cuaderno-de-colab-algoritmos-y-sql)
- [Punto 3 · Arcade de Datos](#punto-3--arcade-de-datos)
- [Punto 4 · MySQL Workbench (DDL y DML)](#punto-4--mysql-workbench-ddl-y-dml)
- [Punto 5 · Propuesta de Juego (Tetris)](#punto-5--propuesta-de-juego-tetris)

---

## Punto 1 · Laboratorio de Galletas 3D

### 1.1 Química y Visión

Se recorrieron las **7 estaciones** de la simulación 3D analizando la química y la visión por computador detrás de cada paso.

| Estación | Concepto de química | Concepto de visión |
|---|---|---|
| Ingredientes | Función de grasas, proteínas y gasificantes. | ROI y color promedio RGB. |
| Mezclar | Desarrollo del gluten. | Desviación estándar del color (homogeneidad). |
| Formar | Densidad y peso. | Cálculo de peso por área (A = πr²). |
| Hornear | Reacción de Maillard y caramelización. | Medición del índice de dorado (brillo/color). |
| Producción | — | Matriz de confusión y efecto del ruido. |
| Empaque | — | Umbral de confianza, NMS e IoU. |
| Despacho | — | Máscaras HSV y falsas alarmas por filtros de área. |

### 1.2 Patrón MVC

Al tocar un botón en el laboratorio 3D:
1.  **Controlador:** Recibe la orden (ej. "Hornear").
2.  **Modelo:** Actualiza las variables internas (temperatura = 180 °C).
3.  **Vista:** Redibuja la escena 3D y el panel de lectura.

**Evidencias:** `docs/punto1_laboratorio/`

---

## Punto 2 · Cuaderno de Colab (Algoritmos y SQL)

### 2.1 Retos Superados (A1 a Y2)

Se completaron todos los retos del cuaderno, desde la lógica condicional hasta la visión por computador con YOLO.

### 2.2 Reflexiones

**¿Por qué un alias del SELECT no se puede usar en el WHERE?**
> Porque SQL ejecuta el `FROM`, luego el `WHERE`, y de último el `SELECT`. Cuando se evalúa el `WHERE`, el alias del `SELECT` aún no existe en memoria.

**¿Qué pasa al mover los umbrales de OpenCV y YOLO?**
> - **OpenCV (Tono):** Un rango de 10-27 detecta el fondo y confunde al piloto. El rango estrecho (19-27) aísla la pelota.
> - **YOLO (IoU):** Un IoU de 0.9 no elimina cajas duplicadas (cuenta galletas de más). Un umbral de confianza de 0.9 puede perder galletas reales.

**Evidencias:** `docs/punto2_colab/laboratorio_galletas.ipynb`

---

## Punto 3 · Arcade de Datos

### 3.1 Algoritmos

-   **Culebrita:** Bucle `MIENTRAS` (while) que termina al chocar con la pared o el cuerpo. La culebrita crece al no eliminar la cola cuando come.
-   **Rompeladrillos:** Bucle `PARA CADA` que revisa los ladrillos. Al inicio revisa 48; al final, solo los pocos que quedan.
-   **Triqui:** Revisa 8 líneas posibles y usa un `break` si encuentra un ganador.

### 3.2 Cuadro de Visión

| Tono mínimo | Tono máximo | Píxeles detectados | ¿El piloto sigue la pelota? |
|---|---|---|---|
| 19 | 27 | (variable) | **Sí** (solo detecta la pelota). |
| 10 | 27 | (variable) | **No** (el rango es muy amplio y se confunde). |
| 19 | 27 (brillo 0.9) | (variable) | **No** (exige demasiado brillo). |

### 3.3 Consultas SQL

Se resolvieron consultas con `JOIN`, `WHERE` compuesto y `GROUP BY` para analizar las partidas, todo guardado en `punto3_arcade/consultas.sql`.

**Evidencias:** `docs/punto3_arcade/`

---

## Punto 4 · MySQL Workbench (DDL y DML)

### 4.1 Diagrama Entidad-Relación

Se diseñó el modelo de datos del Arcade en dbdiagram.io, identificando claves primarias (`id`) y foráneas (`jugador_id`, `juego_id`).

'''mermaid
erDiagram
    MIS_JUGADORES ||--o{ MIS_PARTIDAS : "juega"
    MIS_JUEGOS ||--o{ MIS_PARTIDAS : "pertenece"
    
    MIS_JUGADORES {
        int id PK
        string nombre
        int curso
    }
    MIS_JUEGOS {
        int id PK
        string nombre
        string categoria
    }
    MIS_PARTIDAS {
        int id PK
        int jugador_id FK
        int juego_id FK
        int puntaje
    }
'''

### 4.2 DDL y DML

Se crearon las tablas `mis_jugadores`, `mis_juegos` y `mis_partidas` con restricciones `AUTO_INCREMENT`, `NOT NULL` y `FOREIGN KEY`. Todo en el archivo `arcade_mysql.sql`.

**Evidencias:** `docs/punto4_workbench/`

---

## Punto 5 · Propuesta de Juego (Tetris)

### 5.1 Modelo de Datos

Se propone un modelo de 4 tablas para gestionar partidas de Tetris, permitiendo rastrear los movimientos de las piezas y el rendimiento del jugador.

**Tablas:**
-   `jugadores`: Almacena los datos del usuario.
-   `piezas`: Catálogo de las piezas (I, O, T, etc.) con su color y forma.
-   `partidas`: Registra cada partida con el puntaje y el nivel alcanzado.
-   `movimientos`: Almacena la posición y rotación de cada pieza en cada partida (para posibles repeticiones).

### 5.2 Requerimientos

-   **Funcionales:** El sistema debe guardar el puntaje automáticamente al terminar la partida y permitir mover/rotar piezas.
-   **No funcionales:** El sistema debe responder en menos de 50 ms a los controles. **No permitir borrar un jugador que tenga partidas registradas** (integridad referencial).

### 5.3 Inteligencia Artificial / Visión

Se propone un **bot con OpenCV** que capture la pantalla del juego, detecte el color de la pieza actual mediante máscaras HSV y calcule la mejor posición para dejarla caer (similar al piloto automático del Rompeladrillos).

**Evidencias:** `docs/punto5_propuesta/`

---

## 🏁 Conclusión

Este taller integró la lógica de programación con la persistencia de datos y la visión artificial. Aprendimos que un buen diseño de base de datos (con sus claves y restricciones) es tan importante como el código que la consulta, y que la visión por computador (OpenCV/YOLO) es una herramienta poderosa para automatizar procesos de control de calidad y seguridad en una planta de producción real.

---

**Repositorio organizado según las indicaciones del SENA.**
