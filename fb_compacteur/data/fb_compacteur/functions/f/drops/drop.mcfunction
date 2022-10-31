

# scoreboard players add drop_ticks fb_compacteur 1
scoreboard players set drop_ticks fb_compacteur 1

# Entre 4000 et 5000 ticks, drop dans les tuyaux du côté
execute if score tick fb_compacteur matches 3000.. if score drop_ticks fb_compacteur matches 1 run function fb_compacteur:f/drops/drop_side

# Entre 0 et 4000 ticks, drop dans les tuyaux du haut
execute if score tick fb_compacteur matches ..3000 if score drop_ticks fb_compacteur matches 1 run function fb_compacteur:f/drops/drop_top

# Un drop tous les 2 ticks
# execute if score drop_ticks fb_compacteur matches 1.. run scoreboard players set drop_ticks fb_compacteur 0

# Kill des items qui ont trop d'items autour d'eux
execute as @e[type=item,tag=compacteur_item,sort=random,limit=4] at @s if entity @e[type=item,distance=0.000000001..0.2] run kill @s
