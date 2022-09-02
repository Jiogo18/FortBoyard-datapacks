# Place the barrier blocks and tp the armor stand to the correct position
fill -2 76 15 0 80 15 air
fill -2 74 15 0 75 15 minecraft:barrier
tag @e[type=armor_stand,tag=grille_block] remove grille_block_down
execute positioned ~ 74 ~ run function tigre_grille:grille/summon_grille_at_if_not
