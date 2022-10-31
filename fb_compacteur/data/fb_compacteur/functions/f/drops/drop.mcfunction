
# Entre 4000 et 5000 ticks, drop dans les tuyaux du côté
execute if score tick fb_compacteur matches 3400.. run function fb_compacteur:f/drops/drop_side
execute if score tick fb_compacteur matches 3400.. run function fb_compacteur:f/drops/drop_side

# Entre 0 et 4000 ticks, drop dans les tuyaux du haut
execute if score tick fb_compacteur matches 100..3400 run function fb_compacteur:f/drops/drop_top
execute if score tick fb_compacteur matches 100..3400 run function fb_compacteur:f/drops/drop_top

# Kill des items qui ont trop d'items autour d'eux
execute as @e[type=item,tag=compacteur_item,sort=random,limit=4] at @s if entity @e[type=item,distance=0.000000001..0.3] run kill @s
