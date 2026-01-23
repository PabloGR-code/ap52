#!/bin/bash
while read dia precipitacion;do
    if [ "$precipitacion" -eq 0 ]; then
        resto=$(( (dia-1)  % 7))

        if [ "$resto" -eq 0 ]; then
            echo "Lunes"
        elif [ "$resto" -eq 1 ]; then
            echo "Martes"
        elif [ "$resto" -eq 2 ]; then
            echo "Miercoles"
        elif [ "$resto" -eq 3 ]; then
            echo "Jueves"
        elif [ "$resto" -eq 4 ]; then
            echo "Viernes"
        elif [ "$resto" -eq 5 ]; then
            echo "Sabado"
        else
            echo "Domingo"
        fi
    fi
    
done < precipitaciones.txt