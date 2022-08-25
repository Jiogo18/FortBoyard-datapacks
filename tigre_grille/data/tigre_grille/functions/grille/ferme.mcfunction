fill -2 74 15 0 85 15 air

execute positioned -2 80 15 run function tigre_grille:grille/summon_falling_blocks_at_y

execute as @e[type=falling_block,tag=grille_block] run tag @s add grille_block_down
