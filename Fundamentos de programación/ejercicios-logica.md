# Ejercicios de Lógica de Programación - Progresivo

---

## NIVEL 1: BÁSICO - Funciones y Lógica Fundamental

### 1. Calculadora de Operaciones Básicas
Crea funciones para:
- Sumar, restar, multiplicar y dividir dos números
- Validar división por cero
- Calcular potencia y raíz cuadrada
- Retornar mensajes de error apropiados

### 2. Validador de Números
Implementa funciones que determinen si un número es:
- Par o impar
- Primo
- Perfecto (suma de divisores igual al número)
- Palíndromo

### 3. Manipulación de Cadenas
Crea funciones para:
- Contar vocales y consonantes
- Invertir una cadena
- Verificar si es palíndromo
- Contar palabras en una frase

### 4. Operaciones con Listas
Implementa funciones que:
- Encuentren el mayor y menor elemento
- Calculen el promedio
- Eliminen duplicados
- Ordenen una lista (implementa bubble sort)

### 5. Conversor de Unidades
Crea funciones para convertir:
- Temperatura (Celsius, Fahrenheit, Kelvin)
- Longitud (metros, kilómetros, millas)
- Peso (kilogramos, libras, onzas)
- Tiempo (segundos, minutos, horas)

---

## NIVEL 2: INTERMEDIO - Estructuras de Datos y Clases Básicas

### 6. Clase Estudiante
Crea una clase con:
- Atributos: nombre, edad, calificaciones (lista)
- Métodos: agregar calificación, calcular promedio, aprobar/reprobar
- Método para mostrar información completa

### 7. Sistema de Contactos
Implementa:
- Clase `Contacto`: nombre, teléfono, email
- Clase `Agenda`: lista de contactos
- Métodos: agregar, eliminar, buscar por nombre, listar todos

### 8. Cuenta Bancaria Simple
Crea una clase `CuentaBancaria` con:
- Atributos: titular, saldo, número de cuenta
- Métodos: depositar, retirar, consultar saldo
- Validaciones: no permitir saldo negativo

### 9. Carrito de Compras
Implementa:
- Clase `Producto`: nombre, precio, cantidad
- Clase `Carrito`: lista de productos
- Métodos: agregar producto, eliminar, calcular total, aplicar descuento

### 10. Registro de Empleados
Crea:
- Clase `Empleado`: nombre, ID, salario, departamento
- Función para calcular salario anual
- Función para aplicar aumento porcentual
- Lista de empleados con búsqueda por ID

---

## NIVEL 3: INTERMEDIO-AVANZADO - Herencia y Polimorfismo

### 11. Jerarquía de Vehículos
Implementa:
- Clase base `Vehiculo`: marca, modelo, año
- Clases derivadas: `Auto`, `Moto`, `Camion`
- Método polimórfico: calcular_costo_mantenimiento()
- Atributos específicos por tipo

### 12. Sistema de Figuras Geométricas
Crea:
- Clase base `Figura`: con métodos abstractos
- Clases: `Circulo`, `Rectangulo`, `Triangulo`
- Métodos: calcular_area(), calcular_perimetro()
- Función que reciba lista de figuras y calcule área total

### 13. Gestión de Biblioteca Básica
Implementa:
- Clase `Libro`: título, autor, ISBN, disponible
- Clase `Usuario`: nombre, libros prestados
- Clase `Biblioteca`: préstamos y devoluciones
- Límite de 3 libros por usuario

### 14. Sistema de Reservas de Hotel
Crea:
- Clase `Habitacion`: número, tipo, precio, ocupada
- Clase `Reserva`: cliente, habitación, fechas
- Clase `Hotel`: gestionar reservas
- Calcular costo total según días

### 15. Juego de Dados
Implementa:
- Clase `Dado`: lanzar y obtener valor
- Clase `Jugador`: nombre, puntos
- Clase `Juego`: gestionar turnos y ganador
- Reglas: mayor suma de 3 lanzamientos gana

---

## NIVEL 4: AVANZADO - Algoritmos y Estructuras Complejas

### 16. Ordenamiento Avanzado
Implementa:
- QuickSort
- MergeSort
- Función para comparar tiempos de ejecución
- Ordenar objetos por múltiples criterios

### 17. Búsqueda en Listas
Crea funciones para:
- Búsqueda binaria
- Búsqueda lineal con centinela
- Buscar elemento más cercano a un valor
- Encontrar todos los índices de un elemento

### 18. Pila y Cola
Implementa:
- Clase `Pila`: push, pop, peek, is_empty
- Clase `Cola`: enqueue, dequeue, peek, is_empty
- Aplicación: validar paréntesis balanceados con pila
- Aplicación: simulador de fila de banco con cola

### 19. Lista Enlazada
Crea:
- Clase `Nodo`: dato y referencia al siguiente
- Clase `ListaEnlazada`: insertar, eliminar, buscar
- Métodos: invertir lista, detectar ciclos
- Obtener elemento en posición n

### 20. Árbol Binario de Búsqueda
Implementa:
- Clase `NodoArbol`: valor, izquierdo, derecho
- Clase `ArbolBinario`: insertar, buscar, eliminar
- Recorridos: inorden, preorden, postorden
- Encontrar altura del árbol

---

## NIVEL 5: AVANZADO - Aplicaciones Complejas

### 21. Sistema de Gestión de Inventario
Crea:
- Clase base `Producto`: código, nombre, precio, stock
- Clases derivadas: `ProductoPerecible`, `ProductoElectronico`
- Alertas de stock bajo
- Descuentos por vencimiento
- Reporte de productos más vendidos

### 22. Analizador de Expresiones Matemáticas
Implementa:
- Convertir infija a postfija
- Evaluar expresión postfija
- Manejar paréntesis y precedencia
- Operadores: +, -, *, /, ^

### 23. Simulador de Cajero Automático
Crea:
- Clase `Cuenta`: saldo, historial, PIN
- Clase `Transaccion`: tipo, monto, fecha
- Validación de PIN (3 intentos)
- Retiros con billetes disponibles
- Límite diario de retiro

### 24. Sistema de Reservas de Vuelos
Implementa:
- Clase `Vuelo`: origen, destino, asientos, precio
- Clase `Pasajero`: datos, historial
- Búsqueda de vuelos por criterios
- Reservas múltiples
- Cancelación con políticas de reembolso

### 25. Validador y Resolvedor de Sudoku
Crea:
- Función para validar Sudoku
- Resolver usando backtracking
- Generar Sudokus aleatorios
- Verificar solución única

---

## NIVEL 6: EXPERTO - Algoritmos Avanzados y Sistemas Complejos

### 26. Grafos y Caminos Más Cortos
Implementa:
- Clase `Grafo`: representación con matriz/lista de adyacencia
- Algoritmo de Dijkstra
- Búsqueda en anchura (BFS)
- Búsqueda en profundidad (DFS)
- Detectar ciclos

### 27. Sistema de Red Social
Crea:
- Clase `Usuario`: perfil, amigos, publicaciones
- Sugerencia de amigos (amigos de amigos)
- Camino más corto entre usuarios
- Feed ordenado por relevancia
- Detección de comunidades

### 28. Algoritmo de Compresión Huffman
Implementa:
- Construcción del árbol de frecuencias
- Generación de códigos binarios
- Comprimir y descomprimir texto
- Calcular tasa de compresión

### 29. Caché LRU (Least Recently Used)
Crea:
- Estructura con capacidad limitada
- Operaciones get y put en O(1)
- Usar diccionario y lista doblemente enlazada
- Eliminar elemento menos usado

### 30. Sistema de Recomendación
Implementa:
- Filtrado colaborativo
- Similitud entre usuarios (coseno)
- Recomendar productos
- Sistema híbrido (contenido + colaborativo)

### 31. Planificador de Tareas con Dependencias
Crea:
- Clase `Tarea`: prioridad, dependencias, duración
- Ordenamiento topológico
- Detectar dependencias circulares
- Calcular ruta crítica (CPM)

### 32. Motor de Búsqueda Simple
Implementa:
- Índice invertido de documentos
- Búsqueda por palabras clave
- Ranking con TF-IDF
- Búsqueda booleana (AND, OR, NOT)

### 33. Sistema de Detección de Plagio
Crea:
- Comparación con n-gramas
- Similitud de Jaccard y coseno
- Identificar fragmentos copiados
- Reporte con porcentaje

### 34. Juego de Ajedrez
Implementa:
- Clases para cada pieza
- Validar movimientos legales
- Detectar jaque y jaque mate
- Enroque y captura al paso
- IA con Minimax (opcional)

### 35. Base de Datos en Memoria
Crea:
- Clase `Tabla`: columnas tipadas
- Operaciones CRUD
- Consultas con filtros
- Índices para búsqueda rápida
- Joins entre tablas
- Persistencia en archivos

---

## Criterios de Evaluación

Para cada ejercicio considera:
- **Diseño orientado a objetos:** Uso apropiado de clases, herencia, polimorfismo
- **Eficiencia:** Complejidad temporal y espacial óptima
- **Manejo de errores:** Validaciones y excepciones
- **Código limpio:** Nombres descriptivos, funciones pequeñas, comentarios cuando sea necesario
- **Testing:** Casos de prueba que cubran escenarios normales y extremos
