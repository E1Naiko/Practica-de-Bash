#r!/bin/bash
# Comentarios acerca de lo que hace el script
# Siempre comento mis scripts, si no lo hago hoy,
# mañana ya no me acuerdo de lo que quise hacer
echo "Introduzca su nombre y apellido:"
read nombre apellido
echo "Fecha y hora actual:"
date
echo "Su apellido y nombre es:"
echo "$apellido $nombre"
echo "Su usuario es: `whoami`"
echo "Su directorio actual es: $(pwd)"

#Realizar modificaciones al script anteriormente
#creado de manera de poder mostrar distintos resultados 
#(cuál es su directorio personal, 
#el contenido de un directorio en particular, 
#el espacio libre en disco, etc.). 
#Pida que se introduzcan por teclado (entrada estándar) otros datos.

echo "Su directorio personal es: $HOME"
echo "el contenido del directorio en particular es:"
ls -h /
echo "el espacio libre en disco es:`df -h`"

