#!/bin/sh
RES=8
while [ $RES -ne 0 ]
do
    echo
    echo "Información del sistema"
    echo "[1] Información de particiones"
    echo "[2] Información de memoria"
    echo "[3] Información de procesos"
    echo "[0] Salir"
    echo Selecciona una opción: 
    read RES
case $RES in
    1)
        clear
        echo
        df -h
        echo
        ;;
    2)
        clear
        echo
        free -h
        echo
        ;;
    3)
        clear
        echo
        ps aux
        echo
        ;;
    0)
        clear
        echo Fin de ejecución. Pulse una tecla para salir.
        read pausa
        ;;
    *)
        echo Error. Selecciona otra opción.
        echo Pulsa cualquier tecla.
        read pausa
        ;;
esac
done

