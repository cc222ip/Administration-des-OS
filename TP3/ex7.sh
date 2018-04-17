#!/bin/sh

fichier=$1'.txt'

cat /etc/group | tail -n +11 | awk -F: '{print $1, $4}'| while read group utilisateur;
do
    for u in $utilisateur
    do
        echo $group >> fichier
    done
done
