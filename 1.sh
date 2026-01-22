#!/bin/bash
contador=0
totalpar=0
totalimpar=0
while read numero
do
    resto=$(($numero % 2))
    if [ $resto -eq 0 ];then
        echo "Numero pares"
        contador=$((contador + 1))
        totalpar=$((totalpar + numero))
        echo "$contador "-" $numero"
    fi

done < numeros.txt
echo "El total de los números pares es: $totalpar"

while read numero
do
    resto=$(($numero % 2))
    if [ $resto -ne 0 ];then
        echo "Numero impar"
        contador=$((contador + 1))
        totalimpar=$((totalimpar + numero))
        echo "$contador "-" $numero"
    fi

done < numeros.txt
echo "El total de los numeros impares es: $totalimpar"