# Script para regenerar todos los HTMLs con nueva estructura interactiva
# Mantiene archivos separados pero con navegación entre ejercicios

$ejercicios = @(
    @{
        id = "ejemplo_1_13"
        titulo = "Promedio de Calificaciones"
        badge = "Ejemplo 1.13"
        enunciado = "Dadas cinco calificaciones de un alumno, calcular su promedio."
        descripcion = "En este ejercicio aprenderás a trabajar con variables de entrada múltiples y realizar cálculos aritméticos básicos. Practicarás la lectura de datos desde consola, el cálculo de promedios y la presentación de resultados formateados en programación estructurada Java."
        requisitos = @(
            "Leer la matrícula del alumno (variable entera <code>MAT</code>)",
            "Leer cinco calificaciones (<code>CAL1</code>, <code>CAL2</code>, <code>CAL3</code>, <code>CAL4</code>, <code>CAL5</code>) de tipo double",
            "Implementar método <code>calcularPromedio</code> que reciba las cinco calificaciones y devuelva el promedio",
            "Calcular: <code>(CAL1 + CAL2 + CAL3 + CAL4 + CAL5) / 5.0</code>",
            "Mostrar la matrícula y el promedio calculado"
        )
        ejemplo = @"
// Entrada:
Introduce la matrícula del alumno: 12345
Introduce las 5 calificaciones:
85.5 90.0 78.5 92.0 88.0

// Salida:
======================================
Matrícula del Alumno: 12345
Promedio de Calificaciones: 86.8
======================================
"@
        notas = @(
            "Usar <code>Scanner</code> para leer datos con <code>nextInt()</code> y <code>nextDouble()</code>",
            "Dividir entre <code>5.0</code> (no solo <code>5</code>) para resultado decimal preciso",
            "Cerrar el Scanner al finalizar con <code>scanner.close()</code>",
            "<strong>Tip:</strong> Usa <code>System.out.printf(&quot;%.2f&quot;, promedio)</code> para 2 decimales"
        )
    },
    @{
        id = "ejemplo_2_5"
        titulo = "Selector Múltiple"
        badge = "Ejemplo 2.5"
        enunciado = "Implementar un selector múltiple utilizando estructuras condicionales switch."
        descripcion = "Este ejercicio te ayudará a dominar las estructuras de selección múltiple en Java. Aprenderás a evaluar diferentes condiciones y ejecutar bloques de código específicos según el valor de una variable, utilizando la estructura switch-case de manera eficiente."
        requisitos = @(
            "Leer un valor entero que represente una opción",
            "Implementar estructura <code>switch-case</code> para evaluar la opción",
            "Ejecutar código específico para cada caso válido",
            "Manejar el caso <code>default</code> para opciones inválidas",
            "Mostrar mensajes apropiados para cada selección"
        )
        ejemplo = @"
// Entrada:
Seleccione una opción (1-4): 2

// Salida:
======================================
Ha seleccionado la opción 2
Ejecutando acción correspondiente...
======================================
"@
        notas = @(
            "La estructura <code>switch</code> es más eficiente que múltiples <code>if-else</code>",
            "No olvides incluir <code>break;</code> al final de cada caso",
            "El caso <code>default</code> maneja valores no contemplados",
            "<strong>Tip:</strong> Desde Java 12+ puedes usar switch expressions con <code>-></code>"
        )
    },
    @{
        id = "ejemplo_4_3"
        titulo = "Análisis de Vendedores"
        badge = "Ejemplo 4.3"
        enunciado = "Analizar datos de ventas utilizando arreglos y estructuras de control iterativas."
        descripcion = "Practicarás el uso de arreglos unidimensionales para almacenar y procesar conjuntos de datos. Aprenderás a iterar sobre colecciones, realizar análisis estadísticos básicos y encontrar valores extremos en conjuntos de información."
        requisitos = @(
            "Crear un arreglo para almacenar datos de ventas de N vendedores",
            "Leer las ventas de cada vendedor usando un ciclo <code>for</code>",
            "Calcular el total de ventas sumando todos los elementos",
            "Encontrar la venta máxima y la venta mínima",
            "Determinar qué vendedor tuvo la mejor y peor venta",
            "Calcular el promedio de ventas"
        )
        ejemplo = @"
// Entrada:
Número de vendedores: 5
Ventas: 1500.0 2300.0 1800.0 2100.0 1950.0

// Salida:
======================================
Total de ventas: 9650.0
Venta máxima: 2300.0 (Vendedor 2)
Venta mínima: 1500.0 (Vendedor 1)
Promedio: 1930.0
======================================
"@
        notas = @(
            "Inicializa max con el primer elemento del arreglo, no con 0",
            "Usa variables separadas para rastrear índices de max y min",
            "El promedio se calcula: <code>total / arreglo.length</code>",
            "<strong>Tip:</strong> Puedes usar <code>Arrays.stream(ventas).max()</code> en Java 8+"
        )
    },
    @{
        id = "ejemplo_4_7"
        titulo = "Operaciones con Matrices"
        badge = "Ejemplo 4.7"
        enunciado = "Realizar operaciones básicas con matrices bidimensionales (suma, transpuesta, diagonal)."
        descripcion = "En este ejercicio trabajarás con matrices (arreglos bidimensionales) en Java. Practicarás la navegación por filas y columnas, realizarás operaciones matemáticas con matrices y aprenderás a manipular estructuras de datos de dos dimensiones."
        requisitos = @(
            "Declarar matriz bidimensional <code>int[][] matriz = new int[N][M]</code>",
            "Leer elementos usando ciclos anidados (fila, columna)",
            "Implementar suma de todos los elementos de la matriz",
            "Calcular la suma de la diagonal principal (si es cuadrada)",
            "Implementar la transpuesta de la matriz",
            "Mostrar la matriz original y la transpuesta"
        )
        ejemplo = @"
// Entrada:
Filas: 3, Columnas: 3
Elementos:
1 2 3
4 5 6
7 8 9

// Salida:
Suma total: 45
Suma diagonal: 15
Transpuesta:
1 4 7
2 5 8
3 6 9
"@
        notas = @(
            "Para acceder: <code>matriz[fila][columna]</code>",
            "Diagonal principal: elementos donde <code>i == j</code>",
            "Transpuesta: intercambiar filas por columnas",
            "<strong>Tip:</strong> La transpuesta de A[i][j] es A[j][i]"
        )
    },
    @{
        id = "problema_2_9"
        titulo = "Descuento en Tienda"
        badge = "Problema 2.9"
        enunciado = "Calcular el precio final de una compra aplicando descuentos según el monto total."
        descripcion = "Aprenderás a implementar lógica de negocio utilizando estructuras condicionales anidadas. Practicarás el cálculo de porcentajes, la toma de decisiones basada en múltiples criterios y la aplicación de reglas de negocio reales."
        requisitos = @(
            "Leer el monto total de la compra",
            "Aplicar descuentos según rangos:
                <ul>
                    <li>Compra >= 1000: 10% de descuento</li>
                    <li>Compra >= 500 y < 1000: 5% de descuento</li>
                    <li>Compra < 500: sin descuento</li>
                </ul>",
            "Calcular el descuento aplicado",
            "Calcular el precio final: <code>total - descuento</code>",
            "Mostrar monto original, descuento y precio final"
        )
        ejemplo = @"
// Entrada:
Monto de compra: 750.50

// Salida:
======================================
Monto original: `$750.50
Descuento aplicado (5%): `$37.53
Precio final: `$712.97
======================================
"@
        notas = @(
            "Usa <code>if-else if-else</code> para los rangos",
            "Calcula descuento: <code>monto * porcentaje / 100</code>",
            "Valida que el monto sea mayor a 0",
            "<strong>Tip:</strong> Usa <code>printf(&quot;`$%.2f&quot;, precio)</code> para formato monetario"
        )
    },
    @{
        id = "problema_3_6"
        titulo = "Mayor y Menor de N Números"
        badge = "Problema 3.6"
        enunciado = "Determinar el mayor y menor valor de un conjunto de N números ingresados por el usuario."
        descripcion = "Este ejercicio refuerza el uso de ciclos y comparaciones en Java. Aprenderás a mantener valores acumulados durante iteraciones, a encontrar valores extremos en conjuntos de datos y a manejar variables de control eficientemente."
        requisitos = @(
            "Leer la cantidad N de números a procesar",
            "Inicializar variables <code>mayor</code> y <code>menor</code> con el primer número",
            "Usar ciclo <code>for</code> o <code>while</code> para leer los N números",
            "Actualizar <code>mayor</code> si se encuentra un número más grande",
            "Actualizar <code>menor</code> si se encuentra un número más pequeño",
            "Mostrar el mayor y menor valor encontrado"
        )
        ejemplo = @"
// Entrada:
Cantidad de números: 5
Números: 45 12 78 23 67

// Salida:
======================================
Mayor valor: 78
Menor valor: 12
======================================
"@
        notas = @(
            "Inicializa mayor y menor con el <strong>primer número leído</strong>, no con 0",
            "Usa operadores de comparación: <code>></code> y <code><</code>",
            "Valida que N sea al menos 1",
            "<strong>Tip:</strong> Puedes pedir el primer número antes del ciclo"
        )
    },
    @{
        id = "problema_4_22"
        titulo = "Gestión de Inventario"
        badge = "Problema 4.22"
        enunciado = "Administrar un inventario de productos utilizando arreglos paralelos."
        descripcion = "Practicarás operaciones de gestión de datos en Java. Aprenderás a manejar múltiples arreglos relacionados (paralelos), realizar búsquedas, actualizaciones y mantener la integridad de la información en estructuras de datos relacionadas."
        requisitos = @(
            "Crear arreglos paralelos: <code>nombres[]</code>, <code>cantidades[]</code>, <code>precios[]</code>",
            "Implementar funcionalidad para agregar productos",
            "Implementar búsqueda de productos por nombre",
            "Actualizar cantidad de un producto existente",
            "Calcular valor total del inventario",
            "Mostrar listado completo del inventario"
        )
        ejemplo = @"
// Operaciones:
1. Agregar: Laptop, 10, 15000.0
2. Agregar: Mouse, 50, 250.0
3. Buscar: Laptop -> Encontrado (10 unidades)
4. Valor total: `$162500.0

// Salida inventario:
1. Laptop - 10 unid. - `$15000.0 c/u
2. Mouse - 50 unid. - `$250.0 c/u
"@
        notas = @(
            "Los arreglos paralelos usan el mismo índice para datos relacionados",
            "Usa <code>String.equals()</code> para comparar nombres",
            "Valida que no se exceda la capacidad del arreglo",
            "<strong>Tip:</strong> Considera usar <code>ArrayList</code> para tamaño dinámico"
        )
    },
    @{
        id = "problema_ps_1_6"
        titulo = "Plan de Financiamiento Automotriz"
        badge = "PS 1.6"
        enunciado = "Calcular el enganche (35%) y las 18 mensualidades de un plan de financiamiento."
        descripcion = "Aplicarás conceptos matemáticos en un contexto real de financiamiento. Practicarás el cálculo de porcentajes, divisiones y la presentación de resultados financieros formateados adecuadamente."
        requisitos = @(
            "Leer el monto total del vehículo",
            "Calcular enganche: <code>monto * 0.35</code>",
            "Calcular saldo a financiar: <code>monto - enganche</code>",
            "Calcular mensualidad: <code>saldo / 18</code>",
            "Mostrar enganche, saldo y mensualidad con formato monetario"
        )
        ejemplo = @"
// Entrada:
Monto del vehículo: 300000

// Salida:
======================================
Monto del vehículo: `$300,000.00
Enganche (35%): `$105,000.00
Saldo a financiar: `$195,000.00
Mensualidad (18 meses): `$10,833.33
======================================
"@
        notas = @(
            "35% = 0.35 en decimal",
            "Usa <code>double</code> para evitar pérdida de decimales",
            "Formatea con <code>String.format(&quot;`$%,.2f&quot;, valor)</code>",
            "<strong>Tip:</strong> Valida que el monto sea positivo"
        )
    },
    @{
        id = "problema_ps_3_1"
        titulo = "Suma de N Primeros Números Naturales"
        badge = "PS 3.1"
        enunciado = "Calcular la suma de los N primeros números naturales: 1 + 2 + 3 + ... + N"
        descripcion = "En este ejercicio reforzarás el uso de ciclos acumulativos en Java. Aprenderás a iterar desde 1 hasta N, acumulando valores en cada iteración y aplicando la lógica de suma progresiva usando programación estructurada."
        requisitos = @(
            "Leer el valor de N (entero positivo)",
            "Inicializar acumulador <code>suma = 0</code>",
            "Usar ciclo <code>for</code> desde i=1 hasta i<=N",
            "En cada iteración: <code>suma = suma + i</code>",
            "Mostrar el resultado final de la suma"
        )
        ejemplo = @"
// Entrada:
Ingrese N: 5

// Salida:
======================================
Suma de 1 a 5: 15
(1 + 2 + 3 + 4 + 5 = 15)
======================================
"@
        notas = @(
            "Fórmula directa: <code>suma = N * (N + 1) / 2</code>",
            "Usa <code>int</code> si N <= 46340, <code>long</code> para valores mayores",
            "Valida que N sea mayor a 0",
            "<strong>Tip:</strong> Compara tu resultado iterativo con la fórmula"
        )
    },
    @{
        id = "problema_ps_3_2"
        titulo = "Promedio de N Calificaciones"
        badge = "PS 3.2"
        enunciado = "Calcular el promedio de N calificaciones ingresadas por el usuario."
        descripcion = "Practicarás el uso de ciclos para procesar cantidades variables de datos. Aprenderás a acumular valores, contar elementos procesados y calcular promedios de conjuntos dinámicos usando programación estructurada."
        requisitos = @(
            "Leer cantidad N de calificaciones a ingresar",
            "Inicializar <code>suma = 0</code>",
            "Usar ciclo para leer N calificaciones y acumularlas",
            "Calcular promedio: <code>suma / N</code>",
            "Mostrar el promedio con 2 decimales"
        )
        ejemplo = @"
// Entrada:
Cantidad de calificaciones: 4
Calificaciones: 85 90 78 92

// Salida:
======================================
Promedio: 86.25
======================================
"@
        notas = @(
            "Usa <code>double</code> para la suma y promedio",
            "Divide entre <code>(double)N</code> para evitar división entera",
            "Valida que N sea mayor a 0 antes de dividir",
            "<strong>Tip:</strong> Muestra las calificaciones ingresadas para confirmar"
        )
    },
    @{
        id = "problema_ps_3_3"
        titulo = "Contar Pares e Impares"
        badge = "PS 3.3"
        enunciado = "Contar cuántos números pares e impares hay en un conjunto de N números."
        descripcion = "Reforzarás el uso del operador módulo (%) para determinar paridad. Practicarás el conteo condicional, el manejo de múltiples contadores y la clasificación de datos según criterios específicos."
        requisitos = @(
            "Leer cantidad N de números",
            "Inicializar contadores <code>pares = 0</code> e <code>impares = 0</code>",
            "Para cada número: verificar si <code>numero % 2 == 0</code>",
            "Incrementar contador de pares o impares según corresponda",
            "Mostrar cantidad de números pares e impares"
        )
        ejemplo = @"
// Entrada:
Cantidad: 6
Números: 12 7 8 15 20 9

// Salida:
======================================
Números pares: 3
Números impares: 3
======================================
"@
        notas = @(
            "Un número es par si <code>n % 2 == 0</code>",
            "Los números negativos también pueden ser pares o impares",
            "Verifica que <code>pares + impares == N</code>",
            "<strong>Tip:</strong> El 0 se considera par"
        )
    },
    @{
        id = "problema_ps_3_39"
        titulo = "Análisis Estadístico de Números"
        badge = "PS 3.39"
        enunciado = "Realizar análisis estadístico completo: suma, promedio, mayor, menor, pares, impares."
        descripcion = "Este ejercicio combina múltiples conceptos: ciclos, condiciones, acumuladores y comparaciones. Practicarás el análisis de datos integral calculando múltiples estadísticas en un solo recorrido del conjunto de datos."
        requisitos = @(
            "Leer N números del usuario",
            "Calcular suma total y promedio",
            "Encontrar valor máximo y mínimo",
            "Contar números pares e impares",
            "Contar números positivos, negativos y ceros",
            "Mostrar todas las estadísticas calculadas"
        )
        ejemplo = @"
// Entrada:
N: 5
Números: 12 -5 0 8 -3

// Salida:
Suma: 12, Promedio: 2.4
Mayor: 12, Menor: -5
Pares: 3, Impares: 2
Positivos: 2, Negativos: 2, Ceros: 1
"@
        notas = @(
            "Usa un solo ciclo para calcular todas las estadísticas",
            "Inicializa max/min con el primer número",
            "Un número puede ser par/impar Y positivo/negativo/cero",
            "<strong>Tip:</strong> Usa variables descriptivas para cada contador"
        )
    },
    @{
        id = "problema_ps_3_4"
        titulo = "Tabla de Multiplicar"
        badge = "PS 3.4"
        enunciado = "Generar la tabla de multiplicar de un número dado del 1 al 10."
        descripcion = "Aprenderás a generar secuencias calculadas usando ciclos. Practicarás ciclos simples, operaciones aritméticas repetitivas y la presentación formateada de resultados tabulares."
        requisitos = @(
            "Leer el número base para la tabla",
            "Usar ciclo <code>for</code> desde i=1 hasta i<=10",
            "En cada iteración calcular: <code>resultado = numero * i</code>",
            "Mostrar cada operación: <code>numero x i = resultado</code>",
            "Formatear la salida de forma tabular"
        )
        ejemplo = @"
// Entrada:
Número: 7

// Salida:
Tabla del 7:
7 x 1 = 7
7 x 2 = 14
7 x 3 = 21
...
7 x 10 = 70
"@
        notas = @(
            "Usa <code>printf</code> para alinear columnas",
            "Puedes generar tablas hasta cualquier límite, no solo 10",
            "Considera números negativos en las pruebas",
            "<strong>Tip:</strong> Usa <code>printf(&quot;%d x %2d = %3d%n&quot;, ...)</code>"
        )
    },
    @{
        id = "problema_ps_3_5"
        titulo = "Factorial de un Número"
        badge = "PS 3.5"
        enunciado = "Calcular el factorial de un número entero positivo: N! = 1 × 2 × 3 × ... × N"
        descripcion = "En este ejercicio trabajarás con productos acumulativos. Aprenderás a implementar algoritmos matemáticos de manera iterativa, manejar números grandes y validar condiciones de entrada."
        requisitos = @(
            "Leer un número entero positivo N",
            "Validar que N >= 0",
            "Inicializar <code>factorial = 1</code>",
            "Usar ciclo desde i=1 hasta i<=N",
            "En cada iteración: <code>factorial = factorial * i</code>",
            "Mostrar el resultado (considerar <code>long</code> para N > 12)"
        )
        ejemplo = @"
// Entrada:
N: 5

// Salida:
======================================
5! = 120
(5 × 4 × 3 × 2 × 1 = 120)
======================================
"@
        notas = @(
            "0! = 1 por definición",
            "Usa <code>long</code> ya que factorial crece muy rápido",
            "Factoriales > 20 exceden el rango de <code>long</code>",
            "<strong>Tip:</strong> Considera usar <code>BigInteger</code> para valores grandes"
        )
    },
    @{
        id = "problema_ps_4_11"
        titulo = "Búsqueda y Ordenamiento"
        badge = "PS 4.11"
        enunciado = "Implementar búsqueda lineal y ordenamiento burbuja en un arreglo."
        descripcion = "Practicarás algoritmos fundamentales de búsqueda y ordenamiento. Aprenderás a implementar búsqueda lineal para encontrar elementos y el algoritmo de ordenamiento burbuja para organizar datos."
        requisitos = @(
            "Crear arreglo de N elementos",
            "Implementar <code>busquedaLineal(arr, valor)</code> que retorne el índice o -1",
            "Implementar <code>ordenamientoBurbuja(arr)</code> para ordenar ascendentemente",
            "Usar ciclos anidados para comparar elementos adyacentes",
            "Intercambiar elementos si están en orden incorrecto",
            "Mostrar arreglo original, ordenado y resultados de búsquedas"
        )
        ejemplo = @"
// Arreglo: [64, 34, 25, 12, 22, 11, 90]
Buscar 25: Encontrado en índice 2

Ordenado: [11, 12, 22, 25, 34, 64, 90]
Buscar 25: Encontrado en índice 3
"@
        notas = @(
            "Búsqueda lineal: O(n), compara elemento por elemento",
            "Burbuja: compara pares adyacentes y los intercambia si es necesario",
            "Usa variable auxiliar <code>temp</code> para intercambiar valores",
            "<strong>Tip:</strong> Optimiza burbuja con una bandera para detener si ya está ordenado"
        )
    },
    @{
        id = "problema_ps_4_27"
        titulo = "Vector desde Matriz con Reglas"
        badge = "PS 4.27"
        enunciado = "Generar vector B desde matriz A aplicando reglas según i mod 3."
        descripcion = "Este ejercicio combina matrices, condicionales y operaciones matemáticas. Practicarás suma de filas, producto de columnas, división con validación y uso de operador módulo para lógica condicional."
        requisitos = @(
            "Leer matriz cuadrada A de orden N×N",
            "Para cada posición i del vector B (i de 1 a N):
                <ul>
                    <li>Si i % 3 == 1: B[i] = suma de fila i</li>
                    <li>Si i % 3 == 2: B[i] = producto de columna i</li>
                    <li>Si i % 3 == 0: B[i] = (producto col i-1) / (suma fila i-2)</li>
                </ul>",
            "Validar división por cero en caso i % 3 == 0",
            "Mostrar matriz original y vector B generado"
        )
        ejemplo = @"
// Matriz 3x3:
1 2 3
4 5 6
7 8 9

// Vector B:
B[1] = 6 (suma fila 1: 1+2+3)
B[2] = 80 (producto col 2: 2×5×8)
B[3] = 13.33 (80 / 6)
"@
        notas = @(
            "Ajusta índices: problema usa base 1, Java usa base 0",
            "Producto de columna puede crecer muy rápido, usa <code>long</code>",
            "Valida divisor != 0 antes de dividir",
            "<strong>Tip:</strong> Usa métodos auxiliares para suma y producto"
        )
    },
    @{
        id = "problema_ps_5_6"
        titulo = "Programación Modular"
        badge = "PS 5.6"
        enunciado = "Implementar soluciones modulares utilizando funciones y procedimientos."
        descripcion = "Aprenderás a descomponer problemas complejos en subprogramas reutilizables. Practicarás el diseño modular, el paso de parámetros, valores de retorno y la organización de código en funciones bien definidas."
        requisitos = @(
            "Identificar tareas repetitivas y crear funciones para ellas",
            "Implementar funciones con parámetros y valores de retorno apropiados",
            "Implementar procedimientos (void) para tareas sin retorno",
            "Usar convenciones de nombres descriptivos para funciones",
            "Documentar funciones con comentarios JavaDoc",
            "Llamar funciones desde main y otros métodos"
        )
        ejemplo = @"
// Funciones modulares:
public static int sumar(int a, int b) {
    return a + b;
}

public static void mostrarResultado(int res) {
    System.out.println(&quot;Resultado: &quot; + res);
}

// Uso:
int resultado = sumar(5, 3);
mostrarResultado(resultado);
"@
        notas = @(
            "Función: retorna un valor, Procedimiento: no retorna (void)",
            "Parámetros por valor: Java pasa copias de primitivos",
            "Usa nombres verbales para funciones: <code>calcular</code>, <code>obtener</code>",
            "<strong>Tip:</strong> Mantén funciones pequeñas y con un solo propósito"
        )
    }
)

Write-Host "Generando $($ejercicios.Count) archivos HTML..."

$menuHTML = ""
foreach ($ej in $ejercicios) {
    $label = $ej.badge -replace "Ejemplo ", "Ej " -replace "Problema ", "Prob " -replace "PS ", "PS "
    $menuHTML += "        <a href='$($ej.id).html'>$label</a>`n"
}

foreach ($ej in $ejercicios) {
    $requisitosHTML = ""
    foreach ($req in $ej.requisitos) {
        $requisitosHTML += "                <li>$req</li>`n"
    }
    
    $notasHTML = ""
    foreach ($nota in $ej.notas) {
        $notasHTML += "                <li>$nota</li>`n"
    }

    $html = @"
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$($ej.titulo) - Ejercicios Java</title>
    <link rel="stylesheet" href="../Styles/exercises-new.css">
    <style>
        .exercises-nav {
            display: flex;
            flex-wrap: wrap;
            gap: 8px;
            margin-bottom: 24px;
            padding: 16px;
            background: var(--color-bg-sidebar);
            border-radius: var(--border-radius-lg);
        }
        
        .exercises-nav a {
            padding: 8px 16px;
            background: white;
            border: 2px solid var(--color-bg-example);
            border-radius: var(--border-radius-sm);
            text-decoration: none;
            color: var(--color-text);
            font-weight: 500;
            font-size: 0.85rem;
            transition: all 0.2s;
        }
        
        .exercises-nav a:hover {
            background: var(--color-primary);
            color: white;
            border-color: var(--color-primary);
        }
        
        .exercises-nav a.active {
            background: var(--color-primary);
            color: white;
            border-color: var(--color-primary);
        }
        
        .hero-section {
            text-align: center;
            padding: 32px 24px;
            background: linear-gradient(135deg, var(--color-bg-sidebar) 0%, var(--color-bg-card) 100%);
            border-radius: var(--border-radius-lg);
            margin-bottom: 24px;
        }
        
        .hero-section h1 {
            font-size: 1.75rem;
            margin-bottom: 8px;
            color: var(--color-primary);
        }
        
        .hero-section p {
            color: var(--color-text-light);
            font-size: 1rem;
            margin: 0;
        }
        
        .requirements-list {
            background: var(--color-bg-example);
            padding: 20px;
            border-radius: var(--border-radius-md);
            margin: 20px 0;
        }
        
        .requirements-list h3 {
            margin-top: 0;
            color: var(--color-primary);
        }
        
        .requirements-list ul {
            margin-bottom: 0;
        }
        
        .example-section {
            background: var(--color-bg-sidebar);
            padding: 20px;
            border-radius: var(--border-radius-md);
            margin: 20px 0;
        }
        
        .example-section h3 {
            margin-top: 0;
            color: var(--color-primary);
        }
        
        .notes-section {
            background: #fff4e6;
            border-left: 4px solid var(--color-code-inline);
            padding: 16px 20px;
            border-radius: var(--border-radius-sm);
            margin: 20px 0;
        }
        
        .notes-section h3 {
            margin-top: 0;
            color: var(--color-code-inline);
            font-size: 1.1rem;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="hero-section">
        <h1>Ejercicios de Programación Estructurada en Java</h1>
        <p>Selecciona un ejercicio del menú para ver los detalles.</p>
    </div>

    <nav class="exercises-nav">
$menuHTML
    </nav>

    <div class="exercise-card">
        <div class="exercise-header">
            <span class="exercise-badge">$($ej.badge)</span>
            <h2>$($ej.titulo)</h2>
        </div>

        <div class="exercise-description">
            <p>$($ej.descripcion)</p>
        </div>

        <div class="requirements-list">
            <h3>Requisitos</h3>
            <ul>
$requisitosHTML
            </ul>
        </div>

        <div class="example-section">
            <h3>Ejemplo de uso esperado</h3>
            <pre class="code-block">$($ej.ejemplo)</pre>
        </div>

        <div class="notes-section">
            <h3>Notas rápidas</h3>
            <p>Asegúrate de:</p>
            <ul>
$notasHTML
            </ul>
        </div>

        <div class="requirements-list">
            <h3>📊 Diagrama de Flujo</h3>
            <div style="text-align: center; margin: 20px 0;">
                <img src="../images/$($ej.id).png" alt="Diagrama de Flujo - $($ej.titulo)" style="max-width: 100%; height: auto; border-radius: var(--border-radius-md);">
            </div>
            <p style="text-align: center; color: var(--color-text-light); font-size: 0.9rem;">
                <em>Diagrama de flujo del algoritmo</em>
            </p>
        </div>

        <div class="page-footer">
            <a href="../index.html">← Volver al Menú Principal</a>
        </div>
    </div>

</div>

<script>
    // Marcar el ejercicio actual como activo
    document.addEventListener('DOMContentLoaded', function() {
        const currentPage = window.location.pathname.split('/').pop();
        document.querySelectorAll('.exercises-nav a').forEach(link => {
            if (link.getAttribute('href') === currentPage) {
                link.classList.add('active');
            }
        });
    });
</script>

</body>
</html>
"@

    $rutaArchivo = "ejercicios\$($ej.id).html"
    $html | Out-File -FilePath $rutaArchivo -Encoding UTF8
    Write-Host "✓ Generado: $rutaArchivo"
}

Write-Host "`n¡Proceso completado! Se generaron $($ejercicios.Count) archivos HTML."
