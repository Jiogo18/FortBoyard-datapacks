function tigre_grille:animation/reset
function tigre_grille:grille/place_ouvert
scoreboard players set tigre_angle tigre_grille 1200
scoreboard players set etat tigre_grille 1

tellraw @a[tag=staff] "§a[Tigre Grille] §fPorte ouverte"