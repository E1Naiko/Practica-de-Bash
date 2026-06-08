#!/bin/bash

# Realice un script que implemente a través de la utilización de funciones las
# operaciones básicas sobre arreglos:

inicializar () {
	# ➢ inicializar: Crea un arreglo llamado array vacío
	arrayVacio=()	
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
	arrayVacio+=("$1")
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
	 # Verificar si el índice es un número
   	if ! [[ "$1" =~ ^[0-9]+$ ]]; then
       		echo "Error: el índice debe ser un número"
        	return 1
    	fi
	if [ $1 -ge ${#arrayVacio[@]} ] || [ $1 -lt 0 ]; then
		echo "Papito no lo encontre"
		return 1
	fi

	unset arrayVacio[$1]
	echo "Elemento $1 elmiminado"
	return
}

longitud () {
	# ➢ longitud: Imprime la longitud del arreglo en pantalla
	echo "${#arrayVacio[@]}"
	return
}

imprimir () {
	# ➢ imprimir: Imprime todos los elementos del arreglo en pantalla
	echo "Imprimiendo:"
	for i in "${arrayVacio[@]}"; do
		echo " - $i"
	done
	return
}

echo "pinga"
inicializar
agregar_elem "juas"
agregar_elem "Herlan"
echo "Intento Borrar"
imprimir
echo "borro 1 2"
eliminar_elem 1 2
echo "no borro nada"
eliminar_elem
echo "borro 2"
eliminar_elem 2
imprimir
echo "intento 2"
agregar_elem "AlexElCalvo"
imprimir
echo "borro 2"
eliminar_elem 2
imprimir
echo "res"
agregar_elem "AlexElCalcio"
imprimir
longitud
agregar_elem "AlexPotacio"
agregar_elem "AlejandroMagno"
agregar_elem "AlexElChancho"
agregar_elem "AlexHernando"
agregar_elem "AlexEstando"
agregar_elem "AlexFernando"
agregar_elem "AlexBronceando"
agregar_elem "AlejandroLinuxDistroDeUwuntuOs100%LibreSinCoppyrightTutorialSoonyVegasElProfeEnEl99SeVinoAVivirALaPlataYPirateabaPeliculasPorTelefonoPeroElFilesystemEraFatYSiElPornoPesabaMasDe4GbNoLoDejabaPeroComoNoPrestasteAtencionNoPodesSaberCualEsLaLimitacionQueNoTeDejaBajarMasDe4gbDePornoPeroElTamañoDeCampoEraDe32BitsAsiQueNoTeDaElPresupuestoDeDatosPapitoSeEntiendeEsUnaPabadaEsComoSiEnUnAmbitoQueNoTrabajasLaCagasYNoSabesComoASiQueNoServisAsiQueNadaAhiQuedo"
imprimir
longitud
