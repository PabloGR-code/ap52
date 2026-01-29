#!/bin/bash
totaldias=0
totalprec=0
while read linea

    do 
        dia=`echo $linea | awk '{print $1}'`
        prec=`echo $linea | awk '{print $2}'`

        totaldias=$((totaldias+1))
        totalprec=$((totalprec+prec))
        
done < precipitaciones.txt

media=$(($totalprec/$totaldias))

echo "La media de precipitaciones es: $media"
