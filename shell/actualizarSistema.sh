#!/bin/sh
RES=8
while [ $RES -ne 0 ]
do
	echo "Actualizar sistema DEBIAN"
	echo "[0] Salir"
	echo "[1] Actualizar cache APT"
	echo "[2] Actualizar paquetes"
	echo "[3] Refrescar caché y actualizar"
	echo "[4] Borrar paquetes descargados"
	echo "[5] Borrar paquetes innecesarios"
	echo "Selecciona opción: "
	read RES
case $RES in
	1)
		clear
		echo
		echo "Actualizando caché APT..."
		echo
		sudo apt update
		;;
	2)
		clear
		echo
		echo "Actualizando paquetes..."
		echo 
		sudo apt upgrade
		;;
	3)
		clear
		echo
		echo "Actualizando el sistema..."
		echo
		sudo apt update && sudo apt upgrade
		;;
	4)
		clear
		echo
		echo "Borrando paquetes descargados"
		echo 
		sudo apt autoclean
		;;
	5)
		clear
		echo
		echo "Borrando paquetes innecesarios"
		echo
		sudo apt autoremove
		;;
	0)
		clear
		echo "Has salido del programa. Pulsa una tecla para volver a la línea de comandos."
		read pausa
		;;
	*)
		clear
		echo "Opción errónea. Prueba otra vez."
		echo "Pulsa cualquier tecla para volver al menú."
		read pausa
		;;
esac
done
