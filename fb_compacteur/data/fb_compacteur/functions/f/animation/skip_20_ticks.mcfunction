# Passer 20 ticks
# N'executer que si 22 < tick < 5900 minimum

scoreboard players remove tick fb_compacteur 20
execute if score tick fb_compacteur matches ..0 run scoreboard players set tick fb_compacteur 1

# Add 19 ticks of movement
scoreboard players add wall_1_z fb_compacteur 30400
scoreboard players remove wall_2_z fb_compacteur 30400
scoreboard players add idbox_timer fb_compacteur 30400
scoreboard players add ceil_timer fb_compacteur 30400
function fb_compacteur:f/walls/move_walls
execute as @e[type=armor_stand,tag=compacteur_wall,tag=wall_1,tag=compacteur_texture_ceil] at @s run tp @s ~ ~ ~0.0304
execute as @e[type=armor_stand,tag=compacteur_wall,tag=wall_2,tag=compacteur_texture_ceil] at @s run tp @s ~ ~ ~-0.0304
