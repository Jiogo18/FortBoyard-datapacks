
# Move the texture (falling_block)
execute if entity @s[type=armor_stand,tag=wall_1,tag=compacteur_texture] store result entity @s Pos[2] double 0.000001 run scoreboard players get wall_1_z fb_compacteur
execute if entity @s[type=armor_stand,tag=wall_2,tag=compacteur_texture] store result entity @s Pos[2] double 0.000001 run scoreboard players get wall_2_z fb_compacteur

# Move the idbox (shulker)
execute if entity @s[type=armor_stand,tag=wall_1,tag=compacteur_idbox] store result entity @s Pos[2] double 0.000001 run scoreboard players get wall_1_z2 fb_compacteur
execute if entity @s[type=armor_stand,tag=wall_2,tag=compacteur_idbox] store result entity @s Pos[2] double 0.000001 run scoreboard players get wall_2_z2 fb_compacteur

# Move the slime
execute if entity @s[type=slime,tag=wall_1] at @s at @e[type=armor_stand,tag=compacteur_idbox,tag=wall_1,sort=nearest,limit=1] run tp @s ~ ~ ~-0.3
execute if entity @s[type=slime,tag=wall_2] at @s at @e[type=armor_stand,tag=compacteur_idbox,tag=wall_2,sort=nearest,limit=1] run tp @s ~ ~ ~0.3

# Move items
execute if entity @s[type=armor_stand,tag=compacteur_texture,tag=wall_1] at @s positioned ~ ~ ~-0.48 as @e[type=item,dx=-10] store result entity @s Pos[2] double 0.000001 run scoreboard players get wall_1_z_item fb_compacteur
execute if entity @s[type=armor_stand,tag=compacteur_texture,tag=wall_2] at @s positioned ~ ~ ~-0.52 as @e[type=item,dx=10] store result entity @s Pos[2] double 0.000001 run scoreboard players get wall_2_z_item fb_compacteur

# Move the floor
execute if entity @s[type=armor_stand,tag=wall_1,tag=compacteur_texture_ceil] at @s run tp @s ~ ~ ~0.0016
execute if entity @s[type=armor_stand,tag=wall_2,tag=compacteur_texture_ceil] at @s run tp @s ~ ~ ~-0.0016
