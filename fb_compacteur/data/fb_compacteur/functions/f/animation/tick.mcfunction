
scoreboard players remove tick fb_compacteur 1

# Wait 200 ticks before moving
execute if score tick fb_compacteur matches 0..5936 run function fb_compacteur:f/walls/move_walls

# Drop items
execute if score tick fb_compacteur matches 0..5800 run function fb_compacteur:f/drops/drop

# Sons
execute if score tick fb_compacteur matches 5800 positioned 39.0 78 74 run playsound minecraft:alarme ambient @a[distance=..40] ~ ~ ~ 0.2 0.5 0.01
execute if score tick fb_compacteur matches 0600 positioned 39.0 78 74 run playsound minecraft:alarme ambient @a[distance=..40] ~ ~ ~ 0.2 0.5 0.01

# Mangeur
function fb_compacteur:f/mangeur/tick

# Dégats
execute if score tick fb_compacteur matches 0..260 as @e[type=armor_stand,tag=compacteur_wall,tag=compacteur_texture] at @s as @a[distance=..1] if predicate fb_compacteur:participant run effect give @s minecraft:wither 1 9 true
execute if score tick fb_compacteur matches 0..40 run function fb_compacteur:f/animation/kill_at_end
execute if score tick fb_compacteur matches 32 as @e[type=creeper,tag=compacteur_mangeur] run data merge entity @s {ExplosionRadius:0b,ignited:1b}
