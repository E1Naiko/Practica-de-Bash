# Realice un script que implemente a través de la utilización de funciones las
# operaciones básicas sobre arreglos:

inicializar () {
	# ➢ inicializar: Crea un arreglo llamado array vacío
	
	return
}

agregar_elem () {
	# ➢ agregar_elem <parametro1>: Agrega al final del arreglo el parámetro
	# recibido
	if [ $# -eq 0 ]; then
		echo "papito te faltan parametros"
		return 1
	fi
	if [ $# -gt 1 ]; then
		echo "EEEE para se te fue la mano"
		return 1
	fi
	return
}

eliminar_elem () {
	# ➢ eliminar_elem <parametro1>: Elimina del arreglo el elemento que se
	# encuentra en la posición recibida como parámetro. Debe validar que
	# se reciba una posición válida
	if [ $# -eq 0 ]; then
		echo "papito te faltan parametros"
		return 1
	fi
	if [ $# -gt 1 ]; then
		echo "EEEE para se te fue la mano"
		return 1
	fi
	return
}

longitud () {
	# ➢ longitud: Imprime la longitud del arreglo en pantalla
	return
}

imprimir () {
	# ➢ imprimir: Imprime todos los elementos del arreglo en pantalla
	return
}


