tag @e[tag=compacteur_new_item] remove compacteur_new_item

# Choisir un item (nombre aléatoire entre 0 et 999)
# 1 slot = 3,7 % = 37/1000
# 27 slots = 999/1000
# 999 : items spéciaux
function fb_compacteur:f/random/generate
execute if score random fb_compacteur_r matches 0..999 run summon item ~ ~ ~ {Item:{id:wheat_seeds,Count:1b},Tags:[compacteur_new_item]}
execute if score random fb_compacteur_r matches 000..036 run data modify entity @e[type=item,tag=compacteur_new_item,limit=1] Item set from block 30 73 64 Items[0]
execute if score random fb_compacteur_r matches 037..073 run data modify entity @e[type=item,tag=compacteur_new_item,limit=1] Item set from block 30 73 64 Items[1]
execute if score random fb_compacteur_r matches 074..110 run data modify entity @e[type=item,tag=compacteur_new_item,limit=1] Item set from block 30 73 64 Items[2]
execute if score random fb_compacteur_r matches 111..147 run data modify entity @e[type=item,tag=compacteur_new_item,limit=1] Item set from block 30 73 64 Items[3]
execute if score random fb_compacteur_r matches 148..184 run data modify entity @e[type=item,tag=compacteur_new_item,limit=1] Item set from block 30 73 64 Items[4]
execute if score random fb_compacteur_r matches 185..221 run data modify entity @e[type=item,tag=compacteur_new_item,limit=1] Item set from block 30 73 64 Items[5]
execute if score random fb_compacteur_r matches 222..258 run data modify entity @e[type=item,tag=compacteur_new_item,limit=1] Item set from block 30 73 64 Items[6]
execute if score random fb_compacteur_r matches 259..295 run data modify entity @e[type=item,tag=compacteur_new_item,limit=1] Item set from block 30 73 64 Items[7]
execute if score random fb_compacteur_r matches 296..332 run data modify entity @e[type=item,tag=compacteur_new_item,limit=1] Item set from block 30 73 64 Items[8]
execute if score random fb_compacteur_r matches 333..369 run data modify entity @e[type=item,tag=compacteur_new_item,limit=1] Item set from block 30 73 64 Items[9]
execute if score random fb_compacteur_r matches 370..406 run data modify entity @e[type=item,tag=compacteur_new_item,limit=1] Item set from block 30 73 64 Items[10]
execute if score random fb_compacteur_r matches 407..443 run data modify entity @e[type=item,tag=compacteur_new_item,limit=1] Item set from block 30 73 64 Items[11]
execute if score random fb_compacteur_r matches 444..480 run data modify entity @e[type=item,tag=compacteur_new_item,limit=1] Item set from block 30 73 64 Items[12]
execute if score random fb_compacteur_r matches 481..517 run data modify entity @e[type=item,tag=compacteur_new_item,limit=1] Item set from block 30 73 64 Items[13]
execute if score random fb_compacteur_r matches 518..554 run data modify entity @e[type=item,tag=compacteur_new_item,limit=1] Item set from block 30 73 64 Items[14]
execute if score random fb_compacteur_r matches 555..591 run data modify entity @e[type=item,tag=compacteur_new_item,limit=1] Item set from block 30 73 64 Items[15]
execute if score random fb_compacteur_r matches 592..628 run data modify entity @e[type=item,tag=compacteur_new_item,limit=1] Item set from block 30 73 64 Items[16]
execute if score random fb_compacteur_r matches 629..665 run data modify entity @e[type=item,tag=compacteur_new_item,limit=1] Item set from block 30 73 64 Items[17]
execute if score random fb_compacteur_r matches 666..702 run data modify entity @e[type=item,tag=compacteur_new_item,limit=1] Item set from block 30 73 64 Items[18]
execute if score random fb_compacteur_r matches 703..739 run data modify entity @e[type=item,tag=compacteur_new_item,limit=1] Item set from block 30 73 64 Items[19]
execute if score random fb_compacteur_r matches 740..776 run data modify entity @e[type=item,tag=compacteur_new_item,limit=1] Item set from block 30 73 64 Items[20]
execute if score random fb_compacteur_r matches 777..813 run data modify entity @e[type=item,tag=compacteur_new_item,limit=1] Item set from block 30 73 64 Items[21]
execute if score random fb_compacteur_r matches 814..850 run data modify entity @e[type=item,tag=compacteur_new_item,limit=1] Item set from block 30 73 64 Items[22]
execute if score random fb_compacteur_r matches 851..887 run data modify entity @e[type=item,tag=compacteur_new_item,limit=1] Item set from block 30 73 64 Items[23]
execute if score random fb_compacteur_r matches 888..924 run data modify entity @e[type=item,tag=compacteur_new_item,limit=1] Item set from block 30 73 64 Items[24]
execute if score random fb_compacteur_r matches 925..961 run data modify entity @e[type=item,tag=compacteur_new_item,limit=1] Item set from block 30 73 64 Items[25]
execute if score random fb_compacteur_r matches 962..998 run data modify entity @e[type=item,tag=compacteur_new_item,limit=1] Item set from block 30 73 64 Items[26]
execute if score random fb_compacteur_r matches 999 run function fb_compacteur:f/drops/spawn_item_special

tag @e[tag=compacteur_new_item] add compacteur_item
execute as @e[tag=compacteur_new_item] store result entity @s Motion[0] double 0.001 run scoreboard players get momentum_x fb_compacteur
execute as @e[tag=compacteur_new_item] store result entity @s Motion[2] double 0.001 run scoreboard players get momentum_z fb_compacteur
tag @e[tag=compacteur_new_item] remove compacteur_new_item
