# Script para regenerar todos los HTMLs con la nueva estructura interactiva
# Define los ejercicios con su información

$ejercicios = @(
    @{
        id = "ejemplo_1_13"
        titulo = "Promedio de Calificaciones"
        enunciado = "Dadas cinco calificaciones de un alumno, calcular su promedio."
        descripcion = "En este ejercicio aprenderás a trabajar con variables de entrada múltiples y realizar cálculos aritméticos básicos. Practicarás la lectura de datos, el cálculo de promedios y la presentación de resultados formateados."
    },
    @{
        id = "ejemplo_2_5"
        titulo = "Selector Múltiple"
        enunciado = "Implementar un selector múltiple utilizando estructuras condicionales."
        descripcion = "Este ejercicio te ayudará a dominar las estructuras de selección múltiple. Aprenderás a evaluar diferentes condiciones y ejecutar bloques de código específicos según el valor de una variable."
    },
    @{
        id = "ejemplo_4_3"
        titulo = "Análisis de Vendedores"
        enunciado = "Analizar datos de ventas utilizando arreglos y estructuras de control."
        descripcion = "Practicarás el uso de arreglos para almacenar y procesar conjuntos de datos. Aprenderás a iterar sobre colecciones y realizar análisis estadísticos básicos."
    },
    @{
        id = "ejemplo_4_7"
        titulo = "Operaciones con Matrices"
        enunciado = "Realizar operaciones básicas con matrices bidimensionales."
        descripcion = "En este ejercicio trabajarás con matrices (arreglos bidimensionales). Practicarás la navegación por filas y columnas, y realizarás operaciones matemáticas con matrices."
    },
    @{
        id = "problema_2_9"
        titulo = "Descuento en Tienda"
        enunciado = "Calcular el precio final de una compra aplicando descuentos según condiciones."
        descripcion = "Aprenderás a implementar lógica de negocio utilizando estructuras condicionales. Practicarás el cálculo de porcentajes y la toma de decisiones basada en múltiples criterios."
    },
    @{
        id = "problema_3_6"
        titulo = "Mayor y Menor de N Números"
        enunciado = "Determinar el mayor y menor valor de un conjunto de N números."
        descripcion = "Este ejercicio refuerza el uso de ciclos y comparaciones. Aprenderás a mantener valores acumulados durante iteraciones y a encontrar valores extremos en conjuntos de datos."
    },
    @{
        id = "problema_4_22"
        titulo = "Gestión de Inventario"
        enunciado = "Administrar un inventario utilizando arreglos y operaciones CRUD básicas."
        descripcion = "Practicarás operaciones de gestión de datos: crear, leer, actualizar y eliminar elementos en estructuras de datos. Aprenderás a manejar colecciones dinámicas de información."
    },
    @{
        id = "problema_ps_1_6"
        titulo = "Plan de Financiamiento Automotriz"
        enunciado = "Calcular el enganche y mensualidades de un plan de financiamiento."
        descripcion = "Aplicarás conceptos matemáticos en un contexto real. Practicarás el cálculo de porcentajes, divisiones y presentación de resultados financieros."
    },
    @{
        id = "problema_ps_3_1"
        titulo = "Suma de N Primeros Números Naturales"
        enunciado = "Calcular la suma de los N primeros números naturales usando un ciclo."
        descripcion = "En este ejercicio reforzarás el uso de ciclos acumulativos. Aprenderás a iterar desde 1 hasta N, acumulando valores en cada iteración y aplicando la lógica de suma progresiva."
    },
    @{
        id = "problema_ps_3_2"
        titulo = "Promedio de Calificaciones"
        enunciado = "Calcular el promedio de N calificaciones ingresadas por el usuario."
        descripcion = "Practicarás el uso de ciclos para procesar cantidades variables de datos. Aprenderás a acumular valores y calcular promedios de conjuntos dinámicos."
    },
    @{
        id = "problema_ps_3_3"
        titulo = "Contar Pares e Impares"
        enunciado = "Contar cuántos números pares e impares hay en un conjunto de N números."
        descripcion = "Reforzarás el uso del operador módulo para determinar paridad. Practicarás el conteo condicional y el manejo de múltiples contadores."
    },
    @{
        id = "problema_ps_3_39"
        titulo = "Análisis Numérico Complejo"
        enunciado = "Realizar análisis estadístico de un conjunto de números."
        descripcion = "Este ejercicio combina múltiples conceptos: ciclos, condiciones y acumuladores. Practicarás el análisis de datos y el cálculo de estadísticas descriptivas."
    },
    @{
        id = "problema_ps_3_4"
        titulo = "Tabla de Multiplicar"
        enunciado = "Generar la tabla de multiplicar de un número dado."
        descripcion = "Aprenderás a generar secuencias calculadas. Practicarás ciclos simples y la presentación formateada de resultados tabulares."
    },
    @{
        id = "problema_ps_3_5"
        titulo = "Factorial de un Número"
        enunciado = "Calcular el factorial de un número entero positivo."
        descripcion = "En este ejercicio trabajarás con productos acumulativos. Aprenderás a implementar algoritmos recursivos de manera iterativa y a manejar números grandes."
    },
    @{
        id = "problema_ps_4_11"
        titulo = "Operaciones con Arreglos"
        enunciado = "Realizar operaciones avanzadas con arreglos unidimensionales."
        descripcion = "Practicarás manipulación avanzada de arreglos. Aprenderás búsquedas, ordenamientos y transformaciones de datos en colecciones."
    },
    @{
        id = "problema_ps_4_27"
        titulo = "Generación de Vector desde Matriz"
        enunciado = "Generar un vector B desde una matriz A aplicando reglas condicionales."
        descripcion = "Este ejercicio combina matrices, condicionales y operaciones matemáticas. Practicarás suma de filas, producto de columnas y división con validación de divisor cero."
    },
    @{
        id = "problema_ps_5_6"
        titulo = "Algoritmos con Subprogramas"
        enunciado = "Implementar soluciones modulares utilizando funciones y procedimientos."
        descripcion = "Aprenderás a descomponer problemas complejos en subprogramas reutilizables. Practicarás el paso de parámetros y la organización de código en funciones."
    }
)

Write-Host "Total de ejercicios a procesar: $($ejercicios.Count)"
Write-Host "Generando plantilla HTML nueva estructura..."

# La plantilla se creará en el siguiente paso
