#!/bin/bash

echo "Content-type: text/html"
echo ""

fechaActual=$(date -u +"%Y-%m-%d")
tiempoActual=$(date -u +"%Y-%m-%d %H:%M:%S")
anioActual=$(date -u +"%Y")

fechaInviernoActual="${anioActual}-12-21 00:00:00"

if [[ "$(date -u -d "$fechaActual" +%s)" -lt "$(date -u -d "$fechaInviernoActual" +%s)" ]]; then
    fechaInvierno="$fechaInviernoActual"
else
    anioSiguiente=$((anioActual + 1))
    fechaInvierno="${anioSiguiente}-12-21 00:00:00"
fi

segundosActuales=$(date -u -d "$tiempoActual" +%s)
segundosInvierno=$(date -u -d "$fechaInvierno" +%s)

diferencia=$((segundosInvierno - segundosActuales))

if [[ $diferencia -lt 0 ]]; then
    diferencia=0
fi

dias=$((diferencia / 86400))
horas=$(( (diferencia % 86400) / 3600 ))
minutos=$(( (diferencia % 3600) / 60 ))

echo "$dias:$horas:$minutos"