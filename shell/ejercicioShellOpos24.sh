#!/bin/bash

# Comprobar los argumentos
if [[ $# -ne 1 || ( "$1" != "dpt" && "$1" != "cla" ) ]]; then
    echo "Error: uso correcto: $0 dpt|cla" >&2
    exit 1
fi

if [[ ! -r alumnado.txt ]]; then
    echo "Error: no se puede leer alumnado.txt" >&2
    exit 1
fi

# Requiere ejecutarse con permisos suficientes para crear grupos y usuarios.
: > errores.txt

# Convierte a minúsculas y elimina acentos. Los nombres no ASCII se
# transliteran con iconv; por ejemplo, MARTÍNEZ pasa a martinez.
normalizar() {
    printf '%s' "$1" |
        iconv -f UTF-8 -t ASCII//TRANSLIT 2>/dev/null |
        tr '[:upper:]' '[:lower:]'
}

declare -A departamentos
creados=0
no_creados=0

# Se omite la primera línea, que contiene los encabezados.
while IFS='#' read -r dni ape1 ape2 nombre dia mes ano edad departamento clase; do
    # Ignorar líneas vacías
    [[ -z "$dni" ]] && continue

    ape1=$(normalizar "$ape1" | tr -d '[:space:]')
    ape2=$(normalizar "$ape2" | tr -d '[:space:]')
    nombre=$(normalizar "$nombre" | tr -d '[:space:]')
    departamento=$(normalizar "$departamento")
    clase=$(normalizar "$clase")

    # Guardar el departamento normalizado para el recuento final.
    departamento=${departamento// /_}
    departamentos["$departamento"]=1

    if [[ "$1" == "dpt" ]]; then
        grupo="g$departamento"
        caducidad=""
    else
        # Se sustituyen espacios para que el nombre del grupo sea válido.
        clase=${clase// /_}
        grupo="g$clase"
        caducidad=$(printf '2028-%02d-%02d' "$mes" "$dia")
    fi

    login="${nombre:0:1}.${ape1}.${ape2}"
    comentario="$nombre $ape1 $ape2"

    # Crear el grupo principal si todavía no existe.
    if ! getent group "$grupo" >/dev/null; then
        if ! groupadd "$grupo" 2>>errores.txt; then
            ((no_creados++))
            continue
        fi
    fi

    if [[ "$1" == "dpt" ]]; then
        useradd -m -c "$comentario" -s /bin/bash -g "$grupo" "$login" \
            2>>errores.txt
    else
        useradd -m -c "$comentario" -s /bin/bash -g "$grupo" \
            -e "$caducidad" "$login" 2>>errores.txt
    fi

    if [[ $? -eq 0 ]]; then
        if printf '%s:%s\n' "$login" "SiF2024" | chpasswd 2>>errores.txt; then
            ((creados++))
        else
            ((no_creados++))
        fi
    else
        ((no_creados++))
    fi
done < <(tail -n +2 alumnado.txt)

echo "Número de departamentos: ${#departamentos[@]}"
echo "Número de alumnos creados correctamente: $creados"
echo "Número de alumnos no creados: $no_creados"
