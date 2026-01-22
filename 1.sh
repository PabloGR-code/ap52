#!/bin/bash

while read numero
    do
        div=$(($numero%2))
        if [ $div -eq 0 ];then
            echo "$numero es par"
        fi
done < numeros.txt       