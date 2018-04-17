#!/bin/sh

for i in $*
do
    echo "Contenu du fichier : "$i
    echo
    cat $i
    echo
done
