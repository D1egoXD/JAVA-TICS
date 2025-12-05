# Script para eliminar el menú interactivo de todos los HTMLs

$archivos = @(
    "ejemplo_1_13.html",
    "ejemplo_2_5.html",
    "ejemplo_4_3.html",
    "ejemplo_4_7.html",
    "problema_2_9.html",
    "problema_3_6.html",
    "problema_4_22.html",
    "problema_ps_1_6.html",
    "problema_ps_3_1.html",
    "problema_ps_3_2.html",
    "problema_ps_3_3.html",
    "problema_ps_3_39.html",
    "problema_ps_3_4.html",
    "problema_ps_3_5.html",
    "problema_ps_4_11.html",
    "problema_ps_4_27.html",
    "problema_ps_5_6.html"
)

foreach ($archivo in $archivos) {
    $rutaArchivo = "ejercicios\$archivo"
    Write-Host "Procesando: $archivo"
    
    $contenido = Get-Content $rutaArchivo -Raw
    
    # Eliminar los estilos del menú interactivo (desde .exercises-nav hasta .notes-section)
    $contenido = $contenido -replace '(?s)        \.exercises-nav \{.*?\.notes-section h3 \{[^}]+\}', ''
    
    # Eliminar la sección hero completa
    $contenido = $contenido -replace '(?s)    <div class="hero-section">.*?</div>\r?\n\r?\n', ''
    
    # Eliminar el nav del menú completo
    $contenido = $contenido -replace '(?s)    <nav class="exercises-nav">.*?</nav>\r?\n\r?\n', ''
    
    # Eliminar el script de JavaScript al final
    $contenido = $contenido -replace '(?s)<script>.*?</script>\r?\n\r?\n', ''
    
    $contenido | Set-Content $rutaArchivo -NoNewline
}

Write-Host "`n¡Menú interactivo eliminado de $($archivos.Count) archivos!"
