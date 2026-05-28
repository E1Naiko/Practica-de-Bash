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
		Listar
		;;
	

	DondeEstoy)
		DondeEstoy
		;;


	QuienEsta)
		QuienEsta
		;;


	*) echo "Wachin vos estas muy equivocado."
esac

