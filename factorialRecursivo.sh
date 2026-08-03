#!/bin/sh
factorial() {
	n="$1"
	if [ "$n" -le 1 ]; then
		echo 1
	else
		previo=$(factorial $(($n - 1)))
		echo $(($n * $previo))
	fi
}
echo "Ingresa un entero positivo: "
read n
case "$n" in
	''|*[!0-9]*) echo "Entrada inválida. Solo enteros positivos."; exit 1;;
esac
res=$(factorial "$n")
echo "El factorial de $n es $res."
