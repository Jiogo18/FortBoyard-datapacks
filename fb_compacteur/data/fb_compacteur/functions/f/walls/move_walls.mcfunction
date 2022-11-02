
scoreboard players add wall_1_z fb_compacteur 1600
scoreboard players remove wall_2_z fb_compacteur 1600

# Move the shulker (idbox)
scoreboard players add idbox_timer fb_compacteur 1600
execute if score idbox_timer fb_compacteur matches 62500.. run function fb_compacteur:f/walls/move_idbox

scoreboard players operation wall_1_z_item fb_compacteur = wall_1_z fb_compacteur
scoreboard players add wall_1_z_item fb_compacteur 630000
scoreboard players operation wall_2_z_item fb_compacteur = wall_2_z fb_compacteur
scoreboard players remove wall_2_z_item fb_compacteur 630000

# Spawn the roof
scoreboard players add ceil_timer fb_compacteur 1600
execute if score ceil_timer fb_compacteur matches 1000000.. run function fb_compacteur:f/walls/summon_ceils

# Move each entity
execute as @e[tag=compacteur_wall] run function fb_compacteur:f/walls/move_as_wall
