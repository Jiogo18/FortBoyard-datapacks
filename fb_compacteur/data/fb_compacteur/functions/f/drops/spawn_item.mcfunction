tag @e[tag=compacteur_new_item] remove compacteur_new_item

# Choisir un item (nombre aléatoire entre 0 et 999)
# 1 slot = 3,7 % = 37/1000
# 27 slots = 999/1000
# 999 : items spéciaux
function fb_compacteur:f/random/generate
execute if score random fb_compacteur_r matches 000..999 run summon item ~ ~ ~ {Item:{id:wheat_seeds,Count:1b},Tags:[compacteur_new_item,compacteur_item]}
execute if score random fb_compacteur_r matches 000..332 run function fb_compacteur:f/drops/spawn_item/0-8
execute if score random fb_compacteur_r matches 333..665 run function fb_compacteur:f/drops/spawn_item/9-17
execute if score random fb_compacteur_r matches 666..998 run function fb_compacteur:f/drops/spawn_item/18-26
execute if score random fb_compacteur_r matches 999 run function fb_compacteur:f/drops/spawn_item_special

execute as @e[tag=compacteur_new_item] store result entity @s Motion[0] double 0.001 run scoreboard players get momentum_x fb_compacteur_r
execute as @e[tag=compacteur_new_item] store result entity @s Motion[2] double 0.001 run scoreboard players get momentum_z fb_compacteur_r
tag @e[tag=compacteur_new_item] remove compacteur_new_item
