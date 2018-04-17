#!/bin/sh
if [ $# -eq 1 ]; then
    echo "Quelle valeur ?"
    read a
    echo "Quelle operation voulez-vous utiliser ?"
    read op
    let res=$1$op$a
    echo "Le résultat est " $res
else
    echo "Erreur. Le nombre d'arguments est incorrect."
fi
