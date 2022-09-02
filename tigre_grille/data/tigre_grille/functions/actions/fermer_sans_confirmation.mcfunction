execute unless score animation tigre_grille matches 0 run tellraw @s "§cAnimation en cours"
execute if score animation tigre_grille matches 0 unless score etat tigre_grille matches 1 run tellraw @s "§cGrille déjà fermée"
execute if score animation tigre_grille matches 0 if score etat tigre_grille matches 1 run function tigre_grille:animation/ferme_start
