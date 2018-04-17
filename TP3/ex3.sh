#!/bin/sh

res=0;
for i in $*
do
    if [ "$(echo $1 | grep "^[ [:digit:] ]*$")" ];
    then
        res=$(($res+$i))
    fi
done
echo "Somme des arguments passés : " $res
