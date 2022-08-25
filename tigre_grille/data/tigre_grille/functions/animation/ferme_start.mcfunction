function tigre_grille:animation/reset
function tigre_grille:grille/ferme
scoreboard players set animation tigre_grille 2
scoreboard players set tigre_sens tigre_grille -1
scoreboard players set tigre_angle tigre_grille 1200

tellraw @a[tag=staff] "§a[Tigre Grille] §fFermeture de la porte..."