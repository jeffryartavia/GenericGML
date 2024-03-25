if (!is_eol) {
    if (indice < string_length(current_text)) {
        indice += velocidad;
    } else {
        // Se ha terminado de escribir todo el texto
        is_eol = true;
        // Ejecutar la función deseada
        // Por ejemplo:
        // funcion_ejecutar_despues_de_texto();
    }
}

