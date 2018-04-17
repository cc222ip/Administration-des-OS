#!/bin/sh

dateformat=`date +"%H"`
if [ "$dateformat" -ge 0 ] && [ "$dateformat" -le 12 ];
then
    echo "Bonjour"
elif [ "$dateformat" -gt 12 ] && [ "$dateformat" -le 17 ];
then
    echo "Bon après-midi"
else
    echo "Bonne soirée"
fi
