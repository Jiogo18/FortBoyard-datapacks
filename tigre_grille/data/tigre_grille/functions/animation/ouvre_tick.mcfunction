scoreboard players add time tigre_grille 1

scoreboard players add son_tigre tigre_grille 10
function tigre_grille:tigre/tick

execute if score time tigre_grille matches 120 run function tigre_grille:animation/ouvre_end