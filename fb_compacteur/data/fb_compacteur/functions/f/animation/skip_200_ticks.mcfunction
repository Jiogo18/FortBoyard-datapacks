# Passer 20 ticks
# N'executer que si 202 < tick < 5900 minimum

scoreboard players remove tick fb_compacteur 200
execute if score tick fb_compacteur matches ..0 run scoreboard players set tick fb_compacteur 1

# Add 199 ticks of movement
scoreboard players add wall_1_z fb_compacteur 318400
scoreboard players remove wall_2_z fb_compacteur 318400
scoreboard players add idbox_timer fb_compacteur 318400
scoreboard players add ceil_timer fb_compacteur 318400
function fb_compacteur:f/walls/move_walls
execute as @e[type=armor_stand,tag=compacteur_wall,tag=wall_1,tag=compacteur_texture_ceil] at @s run tp @s ~ ~ ~0.3184
execute as @e[type=armor_stand,tag=compacteur_wall,tag=wall_2,tag=compacteur_texture_ceil] at @s run tp @s ~ ~ ~-0.3184
