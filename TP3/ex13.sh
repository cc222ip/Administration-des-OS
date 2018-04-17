#!/bin/sh

function ex1 {
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
}

ex2 () {
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
}

ex3 () {
    res=0;
    for i in $*
    do
        if [ "$(echo $1 | grep "^[ [:digit:] ]*$")" ];
        then
            res=$(($res+$i))
        fi
    done
    echo "Somme des arguments passés : " $res
}

ex4 () {
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
}

ex5 () {
  cat /etc/passwd | awk -F: '{print $1, $4}'
}

ex6() {
    echo "Il n'y a pas d'exercice 6."
}

ex7 () {
    fichier=$1'.txt'

    cat /etc/group | tail -n +11 | awk -F: '{print $1, $4}'| while read group utilisateur;
    do
        for u in $utilisateur
        do
            echo $group >> fichier
        done
    done
}

ex8 () {
  users | uniq
}

ex9 () {
    for i in $*
    do
        echo "Contenu du fichier : "$i
        echo
        cat $i
        echo
    done
}

ex10 () {
    for i in *.c
    do
        mv -v $i ${i/%.c/.cpp};
    done
    rm MesProgrammesCPP
    mkdir MesProgrammesCPP
    mv *.cpp MesProgrammesCPP/

}

ex11 () {
    ls -l | grep '^-'
    fichier=`ls -l | grep '^-' | wc -l`
    ls -l | grep '^l'
    ls -l | grep '^d'
    rep=`ls -l | grep '^d' | wc -l`
    echo "Il y a" $fichier "fichiers."
    echo "Il y a" $rep "répertoires."
}

ex12 () {
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
}

case "$1" in
    1)
        ex1;;
    2)
        shift
        ex2 $@;;
    3)
        shift
        ex3 $@;;
    4)
        shift
        ex4 $@;;
    5)
        shift
        ex5 $@;;
    6)
        shift
        ex7 $@;;
    7)
        ex8;;
    8)
        shift
        ex9 $@;;
    9)
        ex10;;
    10)
        ex11;;
    11)
        ex12;;
    *)
        echo "Cet exercice n'existe pas."
esac
