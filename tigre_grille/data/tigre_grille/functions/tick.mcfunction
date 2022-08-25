function tigre_grille:grille/tick

execute if score animation tigre_grille matches 1 run function tigre_grille:animation/ouvre_tick
execute if score animation tigre_grille matches 2 run function tigre_grille:animation/ferme_tick
