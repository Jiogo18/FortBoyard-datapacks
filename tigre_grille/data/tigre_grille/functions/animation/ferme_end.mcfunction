function tigre_grille:animation/reset
function tigre_grille:grille/place_ferme
scoreboard players set tigre_angle tigre_grille 0
scoreboard players set etat tigre_grille 0

# close the door
setblock -6 72 18 bedrock

tellraw @a[tag=staff] "§a[Tigre Grille] §fPorte fermée"
