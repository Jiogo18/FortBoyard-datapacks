
# Move the falling blocks
execute as @e[type=falling_block,tag=grille_block_up] run data modify entity @s Motion[1] set value 0.05
execute as @e[type=falling_block,tag=grille_block_down] run data modify entity @s Motion[1] set value -0.005

# execute as @e[type=falling_block,tag=grille_block_up] at @s run tp ~ ~0.05 ~
# execute as @e[type=falling_block,tag=grille_block_down] at @s run tp ~ ~-0.005 ~

