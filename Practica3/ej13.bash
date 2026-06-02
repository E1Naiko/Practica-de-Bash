#!/bin/bash
#13. Uso de las estructuras de control:

#a. Realizar un script que visualice por pantalla los números del 1 al 100 así
# como sus cuadrados.

#b. Crear un script que muestre 3 opciones al usuario: Listar, DondeEstoy y
# QuienEsta. Según la opción elegida se le debe mostrar:

# ➢ Listar: lista el contenido del directorio actual.
# ➢ DondeEstoy: muestra la ruta del directorio donde me encuentro ubicado.
# ➢ QuienEsta: muestra los usuarios conectados al sistema.

#c. Crear un script que reciba como parámetro el nombre de un archivo e
# informe si el mismo existe o no, y en caso afirmativo indique si es un
# directorio o un archivo. En caso de que no exista el archivo/directorio cree
# un directorio con el nombre recibido como parámetro.

Listar(){
	echo "$1"
	ls
}

DondeEstoy(){
	pwd
}

QuienEsta(){
	who
}

for ((i=0; i < 100; i++))
do
	echo $i
done 

echo "Wachin elegi:"
echo " ➢ Listar: lista el contenido del directorio actual."
echo " ➢ DondeEstoy: muestra la ruta del directorio donde me encuentro ubicado."
echo " ➢ QuienEsta: muestra los usuarios conectados al sistema."

read decision

case $decision in
	
	
	Listar)
		Listar 4
		;;
	

	DondeEstoy)
		DondeEstoy
		;;


	QuienEsta)
		QuienEsta
		;;


	*) echo "Wachin vos estas muy equivocado."
esac

if [ $# -gt 0 ]; then
	echo "Papito encontre $# parametros"
	
	echo "Parametro $1"
	if [ -d "$1" ]; then
		echo "Efectivamente, es un archivo"
		exit
	
	else
		echo "Nose que es eso amigo, ahi te hago un directorio para romper los huevos"
		mkdir "$1"
	fi
	exit
	
else
	echo "Papito te olvidaste los parametros, vos estas muy equivocado"

fi
