#!/bin/bash
contadorlinux=0
contadorwindows=0
procesoslinux=0
procesoswindows=0
while read linea

    do
    
    col2=`echo $linea | awk '{print $2}'`
    col3=`echo $linea | awk '{print $3}'`
    
        if [ $col2 = "Linux" ]; then
            contadorlinux=$((contadorlinux+1))
            procesoslinux=$((procesoslinux+col3))
        elif [ $col2 = "Windows" ]; then
            contadorwindows=$((contadorwindows+1))
            procesoswindows=$((procesoswindows+col3))
        fi

done < listado.txt

echo "linux --> $contadorlinux $procesoslinux"
echo "Windows --> $contadorwindows $procesoswindows"