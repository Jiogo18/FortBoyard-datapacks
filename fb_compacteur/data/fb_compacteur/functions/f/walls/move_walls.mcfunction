
scoreboard players add wall_1_z fb_compacteur 1600
scoreboard players remove wall_2_z fb_compacteur 1600
scoreboard players operation distance_temp fb_compacteur = wall_1_z fb_compacteur
scoreboard players operation distance_temp fb_compacteur -= wall_1_z2 fb_compacteur
execute if score distance_temp fb_compacteur matches 62500.. run scoreboard players add wall_1_z2 fb_compacteur 62500
scoreboard players operation distance_temp fb_compacteur = wall_2_z fb_compacteur
scoreboard players operation distance_temp fb_compacteur -= wall_2_z2 fb_compacteur
execute if score distance_temp fb_compacteur matches ..-62500 run scoreboard players remove wall_2_z2 fb_compacteur 62500
scoreboard players reset distance_temp fb_compacteur

scoreboard players operation wall_1_z_item fb_compacteur = wall_1_z fb_compacteur
scoreboard players add wall_1_z_item fb_compacteur 630000
scoreboard players operation wall_2_z_item fb_compacteur = wall_2_z fb_compacteur
scoreboard players remove wall_2_z_item fb_compacteur 630000

# Move the texture (falling_block)
execute as @e[type=armor_stand,tag=compacteur_wall,tag=wall_1,tag=compacteur_texture] store result entity @s Pos[2] double 0.000001 run scoreboard players get wall_1_z fb_compacteur
execute as @e[type=armor_stand,tag=compacteur_wall,tag=wall_2,tag=compacteur_texture] store result entity @s Pos[2] double 0.000001 run scoreboard players get wall_2_z fb_compacteur

# Move the idbox (shulker)
execute as @e[type=armor_stand,tag=compacteur_wall,tag=wall_1,tag=compacteur_idbox] store result entity @s Pos[2] double 0.000001 run scoreboard players get wall_1_z2 fb_compacteur
execute as @e[type=armor_stand,tag=compacteur_wall,tag=wall_2,tag=compacteur_idbox] store result entity @s Pos[2] double 0.000001 run scoreboard players get wall_2_z2 fb_compacteur

# Move the slime
execute as @e[type=slime,tag=compacteur_wall,tag=wall_1] at @s at @e[type=armor_stand,tag=compacteur_idbox,tag=wall_1,sort=nearest,limit=1] run tp @s ~ ~ ~-0.3
execute as @e[type=slime,tag=compacteur_wall,tag=wall_2] at @s at @e[type=armor_stand,tag=compacteur_idbox,tag=wall_2,sort=nearest,limit=1] run tp @s ~ ~ ~0.3

# Move items
execute as @e[type=armor_stand,tag=compacteur_wall,tag=compacteur_texture,tag=wall_1] at @s positioned ~ ~ ~-0.48 as @e[type=item,dx=-10] store result entity @s Pos[2] double 0.000001 run scoreboard players get wall_1_z_item fb_compacteur
execute as @e[type=armor_stand,tag=compacteur_wall,tag=compacteur_texture,tag=wall_2] at @s positioned ~ ~ ~-0.52 as @e[type=item,dx=10] store result entity @s Pos[2] double 0.000001 run scoreboard players get wall_2_z_item fb_compacteur


# Move the floor
scoreboard players operation wall_1_ceil fb_compacteur = wall_1_z fb_compacteur
scoreboard players operation wall_1_ceil fb_compacteur %= 1000000 fb_compacteur
execute if score wall_1_ceil fb_compacteur matches 500000 run function fb_compacteur:f/walls/summon_ceils
scoreboard players reset wall_1_ceil fb_compacteur
execute as @e[type=armor_stand,tag=compacteur_wall,tag=wall_1,tag=compacteur_texture_ceil] at @s run tp @s ~ ~ ~0.0016
execute as @e[type=armor_stand,tag=compacteur_wall,tag=wall_2,tag=compacteur_texture_ceil] at @s run tp @s ~ ~ ~-0.0016