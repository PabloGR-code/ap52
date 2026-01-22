#!/bin/bash
contadorlinux=0
contadorwindows=0
procesoslinux=0
procesoswindows=0
while read _ sistemas procesos

    do
        if [ "$sistemas" = "Linux" ]; then
            contadorlinux=$((contadorlinux + 1))
            procesoslinux=$((procesoslinux + procesos))
        elif [ "$sistemas" = "Windows" ]; then
            contadorwindows=$((contadorwindows + 1))
            procesoswindows=$((procesoswindows + procesos))
        fi

done < listado.txt

echo "linux --> $contadorlinux $procesoslinux"
echo "Windows --> $contadorwindows $procesoswindows"