#!/bin/bash
dias=0
total=0
while read _ litros

    do 
        dias=$(($dias + 1))
        total=$(($total + $litros))
done < precipitaciones.txt

media=$(($total / $dias))

echo "La media de precipitaciones es: $media"
