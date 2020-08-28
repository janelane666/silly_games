# - bienvenue dans le jeu (Jeu)
# - demander le nom des joueurs (garder en mémoire) (Jeu)
# - assigner les signes au joueur (x ou o) (Jeu)

- attibuer à chaque case une valeur (A1 = a1 : A1 : nom; a1 valeur) (Grille)
- afficher la grille avec la valeur/position de toutes les cases (Affichage, qui dépend de Grille et Cases) 

- partie commence (Jeu):
  - boucle jusqu'à condition de fin :
    - par defaut le joueur 1 commence, afficher le nom de celui qui joue
    - clear le terminal
    - grille de départ 
    - attente de la commande case
    - remplacer la valeur de la case par le signe du joueur
    - affichage de la nouvelle grille
    - afficher la grille modifiée (garder en mémoire)
    - afficher le nom du joueur
    - si le dernier tour est gagnant, préciser cette condition avant que le jeu s'arrête pour qu'il ne prenne pas ça comme un match nul.
- condition de victoire et de match-nul
  - ligne/colonne/diagonale
  - annoncer le résultat et demander "voulez vous prendre votre revanche" yes/no question
  - faire un compteur de score


Erreurs :
- si case non existante
- si la case demandé à déjà x ou o
- si le dernier tour est gagnant, préciser cette condition avant que le jeu s'arrête pour qu'il ne prenne pas ça comme un match nul.

