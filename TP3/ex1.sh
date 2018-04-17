#!/bin/bash

while [ 0 ]
do
    echo "### MENU ###"
    echo "Entrez le premier nombre : "
    read a
    if [ $a == 'quit' ]; then
        exit
    fi
    echo "Entrez le second nombre : "
    read b
    if [ $b == 'quit' ]; then
        exit
    fi
    echo "Somme : " $(($a + $b))
    echo "Différence : " $(($a - $b))
    echo "Produit : " $(($a * $b))
    echo
done
