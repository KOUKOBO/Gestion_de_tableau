# Gestion_de_tableau
Il s'agit d'une présentation de quelque fonction du package dplyr pour la manipulation de tableau de données
Le package dplyr propose des fonctions pour extraire de données d’un tableau : filter() pour sélectionner des lignes (observations), et select() pour les colonnes(variables) remplissant les conditions.
•	La fonction select()  permet de ne conserver que certaines colonnes qu’on énumère explicitement (sans guillemets autour de leurs noms), ou pour lesquelles on utilise des fonctions telles que starts_with, ends_with ou contains pour repérer toutes les colonnes dont le nom commence par un certain texte (starts_with), ou se termine par un autre (ends_with), ou encore contient une séquence de caractères – qu’elle soit au début, en fin ou au milieu du nom de la colonne – avec la fonction contains.
•	Mutate() permet de créer de nouvelles colonnes dans le tableau de données, en général à partir de variables existantes,
•	La fonction filter()  sélectionne les lignes d’un tableaux selon une condition.
•	La fonction distinct() filtre les lignes du tableau pour ne conserver que les lignes distinctes, en supprimant toutes les lignes en double,
•	La fonction arrange() trie le tableau. Si l’on veut trier selon une colonne par ordre décroissant, on lui applique la fonction desc().

