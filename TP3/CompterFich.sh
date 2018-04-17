#!/bin/sh

ls -l | grep '^-'
fichier=`ls -l | grep '^-' | wc -l`
ls -l | grep '^l'
ls -l | grep '^d'
rep=`ls -l | grep '^d' | wc -l`
echo "Il y a" $fichier "fichiers."
echo "Il y a" $rep "répertoires."
