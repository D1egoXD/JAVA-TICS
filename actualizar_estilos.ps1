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
    
    # Reemplazar las tres líneas de CSS con la nueva referencia
    # Para archivos con comillas simples
    $contenido = $contenido -replace "    <link rel='stylesheet' href='\.\.\/Styles\/style\.css'>`r?`n    <link rel='stylesheet' href='\.\.\/Styles\/exercises\.css'>`r?`n    <link rel='stylesheet' href='\.\.\/Styles\/navigation\.css'>", "    <link rel=`"stylesheet`" href=`"../Styles/exercises-new.css`">"
    
    # Para archivos con comillas dobles
    $contenido = $contenido -replace '    <link rel="stylesheet" href="\.\.\/Styles\/style\.css">\r?\n    <link rel="stylesheet" href="\.\.\/Styles\/exercises\.css">\r?\n    <link rel="stylesheet" href="\.\.\/Styles\/navigation\.css">', '    <link rel="stylesheet" href="../Styles/exercises-new.css">'
    
    # Eliminar bloques <style> con estilos de test-table (ya están en el nuevo CSS)
    $contenido = $contenido -replace '    <style>\r?\n        \.test-table \{[^}]+\}[^<]+<\/style>\r?\n', ''
    
    $contenido | Set-Content $rutaArchivo -NoNewline
}

Write-Host "`nActualizacion completada!"
