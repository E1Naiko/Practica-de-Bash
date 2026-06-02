#!/bin/bash

#   14. Renombrando Archivos: haga un script que renombre solo archivos de un
# directorio pasado como parámetro, agregando una CADENA, contemplando las
# opciones:
# 
# ➢ “-a CADENA”: renombra el fichero concatenando CADENA al final del nombre
#  del archivo
#
# ➢ “-b CADENA”: renombra el fichero concatenando CADENA al comienzo del
#  nombre del archivo
#
# Ejemplos:
#   Si tengo los siguientes archivos: /tmp/a /tmp/b , al ejecutar: ./renombra /tmp/ -a EJ
# obtendré como resultado: /tmp/aEJ /tmp/bEJ. Y si ejecuto: ./renombra /tmp/ -b EJ
# el resultado será: /tmp/EJa /tmp/EJb

comienzo () {
#	echo "Entre en comienzo, estoy re loco"
#	echo " -C Directorio: $1"
#	echo " -C Modo: $2"
#        echo " -C Cadena: $3"
#	for valor in "$1/$(basename "$valor")"; do
#		echo "$valor"
#		if [[ -f "$valor" ]]; then
#			echo -f "$(valor)"
#			mv "$valor" "$(1)/$(basename "$valor")"
#		fi
#	done
    echo "Entre en comienzo, estoy re loco"
    echo " -C Directorio: $1"
    echo " -C Modo: $2"
    echo " -C Cadena: $3"

    for valor in "$1"/*; do
        if [[ -f "$valor" ]]; then
            nombre=$(basename "$valor")
            mv "$valor" "$1/$3$nombre"
        fi
    done	       	
}

final () {
	echo "Ente en final, estoy re loco"
	echo " -F Directorio: $1"
	echo " -F Modo: $2"
        echo " -F Cadena: $3"

}

if [ $# -gt 0 ]; then
	echo "Averga"
	if [ $# -lt 3 ]; then
		echo "Papito te quedaste corto, dale media pila"
		exit
	fi
	if [ $# -gt 3 ]; then
                echo "Che pusiste mas cosas, pero me las pase por los huevos, yo te dije estoy re loco"
		exit
	fi
	echo " - Directorio: $1"
	echo " - Modo: $2"
	echo " - Cadena: $3"

	case $2 in
	"-a")
		echo "Concateno $3 al FINAL"
		final $1 $2 $3
		;;
	"-b")
		echo "Concateno $3 al COMIENZO"
		comienzo $1 $2 $3
		;;
	*)
		echo "No se que pingo es $1, papito vos estas muy equivocado"
		;;
	esac
else
	echo "Papito no pusiste nada, no flashees"
fi
