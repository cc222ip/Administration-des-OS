ceci est un essai

I. Commandes de base :

1/ En utilisant la commande echo, créer un fichier essai contenant le texte « ceci est un essai ».
echo "ceci est un essai" > essai

2/ Donner une commande qui permet d'afficher le contenu du fichier essai.
cat monfichier

3/ Afficher le nom du répertoire de travail.
pwd

4/ Sauvegarder la liste des fichiers contenus dans le répertoire de travail dans un fichier nommé list.txt
ls>list.txt

5/ Donner une commande qui permet de créer dans /tmp un répertoire L3 qui contient un répertoire nommé tp1
mkdir tmp/L3
mkdir L3/tp1

6/ Copier le fichier essai dans le répertoire /tmp/L3/tp1
cp essai tmp/L3/tp1

7/ Déplacer le fichier list.txt dans le répertoire /tmp/L3
mv list.txt /tmp/L3

8/ Effacer le fichier /tmp/L3/list.txt
rm tmp/L3/list.txt

9/ Donner une commande qui permet d'effacer le contenu du /tmp (y compris les sous répertoires de /tmp)
rm -r /tmp

10/ Donner une commande qui affiche les trois premiers lignes du fichier /etc/passwd
head -3 essai

11/ Donner une commande qui affiche l'avant dernière ligne de ce même fichier
tail -n 1 essai

II. Commandes avancées :

1. Créer des fichiers vides (de tailles 0 octets) dans /tmp.
touch fichier1 fichier2 fichier3

2. Donner une commande qui permet d'effacer tous les fichiers vides se trouvant dans /tmp.
find ./ -empty -delete

3. Donner une commande qui retourne le contenu du répertoire « / » trié en ordre alphabétique inversée.
ls -r

4. Sauvegarder dans un fichier liste.txt le résultat de la commande ls -l /etc
ls -l > liste.txt

5. Donner une commande qui donne la dernière colonne du fichier liste.txt.
awk '{print $(NF)}' liste.txt

6. Donner une commande qui donne les trois dernières colonnes du fichier liste.txt.
awk '{print $(NF) $(NF-1) $(NF-2)}' liste.txt

7. Dans le fichier liste.txt remplacer les mois par leur version complète (ex: janv. --> janvier).
sed -i -e "s/fév/février/g" liste.txt

8. Ordonner le contenue du fichier liste.txt par taille (5ème col.).
sort -k 5,5 liste.txt

III. Editeur (vi) :

1. Sauvegarder dans un fichier liste.txt le résultat de la commande ls -l /etc
ls -l /etc > liste.txt

2. Effacer la première ligne de ce fichier
vi liste.txt
dd

3. Insérer le texte : « Contenu de /etc » au début du fichier et sauvegarder la modification.
i pour insérer du texte.
Écrire "Contenu de /etc".
ESC pour quitter le mode insertion.
':w' pour sauvegarder.

4. Aller à la fin du fichier et ajouter le texte « fin de la liste »
SHIFT + G
i pour insérer du texte.
Écrire "fin de la liste".
ESC pour quitter le mode insertion.

5. Quitter l'éditeur sans sauvegarder les dernières modifications
:q pour quitter sans sauvegarder

6. Éditer à nouveau le fichier et effacer toutes le lignes correspondant à des répertoires.
Sauvegarder les modifications
vi liste.txt
:g/^d/d => ^ pour début de la ligne. d pour delete. d pour directory
':w' pour sauvegarder.
