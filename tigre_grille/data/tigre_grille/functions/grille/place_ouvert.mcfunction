# Remove the barrier blocks and tp the armor stand to the correct position
fill -2 74 15 0 80 15 air
tag @e[type=armor_stand,tag=grille_block] remove grille_block_up
execute positioned ~ 80 ~ run function tigre_grille:grille/summon_grille_at_if_not
