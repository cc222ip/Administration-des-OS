#!/bin/sh

if [ "$(echo $1 | grep "^[ [:digit:] ]*$")" ];
then
    echo $1 ' est un entier.'
    x=1
    for ((i=1;i<=$1;i++))
    do
        x=$(($x * $i))
    done
    echo "Factorielle de " $1 ":" $x
else
    echo "Le paramètre" $1 "n'est pas un entier."
    exit
fi
