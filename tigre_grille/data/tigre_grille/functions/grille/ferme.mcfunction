fill -2 74 15 0 85 15 air

execute positioned ~ 80 ~ run function tigre_grille:grille/summon_grille_at_if_not

tag @e[type=armor_stand,tag=grille_block] add grille_block_down
