execute unless score animation tigre_grille matches 0 run tellraw @s "§cAnimation en cours"
execute if score animation tigre_grille matches 0 unless score etat tigre_grille matches 0 run tellraw @s "§cGrille déjà ouverte"
execute if score animation tigre_grille matches 0 if score etat tigre_grille matches 0 run function tigre_grille:animation/ouvre_start
