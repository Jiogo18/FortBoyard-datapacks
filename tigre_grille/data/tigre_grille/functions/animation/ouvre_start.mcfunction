function tigre_grille:animation/reset
function tigre_grille:grille/ouvre
scoreboard players set animation tigre_grille 1
scoreboard players set tigre_angle tigre_grille 0
scoreboard players set tigre_sens tigre_grille 10

# open the door
setblock -6 72 18 redstone_block

tellraw @a[tag=staff] "§a[Tigre Grille] §fOuverture de la porte..."