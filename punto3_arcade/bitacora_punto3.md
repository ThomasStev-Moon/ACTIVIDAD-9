# Bitácora Punto 3: Arcade de Datos y Visión

**Estudiante:** Thomas Stev Arismendi
**Fecha:** Noviembre 2026

## 1. Cuadro de Visión (Rompeladrillos)

| Tono mínimo | Tono máximo | Píxeles detectados | ¿El piloto sigue la pelota? | ¿Por qué? |
| :--- | :--- | :--- | :--- | :--- |
| 19 | 27 | [Anota el número que viste] | **Sí** | El rango de tono captura exactamente el amarillo de la pelota, sin incluir otros objetos. |
| 15 | 27 | [Anota el número que viste] | **Sí, pero con ruido** | Al bajar el tono mínimo, el filtro empieza a captar los tonos naranjas de los ladrillos. El piloto se confunde y a veces se mueve hacia donde no debe. |
| 10 | 27 | [Anota el número que viste] | **No** | El rango es demasiado amplio. Detecta casi toda la pantalla (fondo, ladrillos, etc.). El centro de la mancha se vuelve impredecible. |
| 19 | 27 (con brillo mínimo 0.9) | [Anota el número que viste] | **No** | Al exigir un brillo de 0.9, el filtro se vuelve muy estricto. La pelota (que es amarilla, no blanca) no alcanza ese brillo y desaparece de la máscara. |

## 2. Preguntas de Algoritmos e IA

### Culebrita
*   **¿Qué tipo de bucle es?** El juego entero es un bucle **MIENTRAS (while)**. 
*   **¿Cuándo termina?** Termina cuando la nueva cabeza de la culebrita choca contra la pared o contra su propio cuerpo.
*   **¿Por qué crece?** Porque en cada vuelta del bucle se agrega una cabeza nueva, pero la cola solo se quita si **no** se comió la galleta. Al comer, la cola se queda y el cuerpo se alarga.
*   **Búsqueda en anchura (BFS):** El piloto automático explora el tablero por capas (como una mancha de agua), buscando el camino más corto hacia la galleta. Pierde cuando la culebrita se hace muy larga y se encierra a sí misma. Se mejoraría usando una búsqueda A* o verificando siempre que haya espacio libre antes de moverse.

### Rompeladrillos
*   **El bucle PARA CADA:** Al inicio de la partida, el bucle revisa todos los ladrillos (48). Cerca del final, revisa muy pocos (3 o 4) porque ya fueron destruidos. Su trabajo cambia porque la lista de ladrillos vivos disminuye.

### Triqui
*   **El bucle de victoria:** Revisa las 8 líneas posibles. Se detiene antes de revisarlas todas (con un `break`) si encuentra un ganador, para no perder tiempo comprobando el resto.
*   **Modo Reglas:** La máquina usa una cadena de `if/elif/else`: 1. Si puede ganar, gana. 2. Si el rival puede ganar, bloquea. 3. Si el centro está libre, lo toma. 4. Si hay esquina, la toma. 5. Si no, juega en cualquier casilla.
*   **Modo Minimax:** Los números en las casillas son la evaluación de la jugada: positivo (la máquina gana), 0 (empate) y negativo (tú ganas).