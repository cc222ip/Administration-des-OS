#!/bin/sh

for i in *.c
do
    mv -v $i ${i/%.c/.cpp};
done
rm MesProgrammesCPP
mkdir MesProgrammesCPP
mv *.cpp MesProgrammesCPP/
