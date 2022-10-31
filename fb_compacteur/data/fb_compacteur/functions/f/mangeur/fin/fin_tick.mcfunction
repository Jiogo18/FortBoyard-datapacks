
execute unless score mangeur_gateau fb_compacteur matches ..0 run scoreboard players remove mangeur_gateau fb_compacteur 1

execute if score mangeur_gateau fb_compacteur matches 100..119 as @e[type=creeper,tag=compacteur_mangeur] at @s run tp @s ~-0.05 ~ ~ 90 0
execute if score mangeur_gateau fb_compacteur matches 090..099 as @e[type=creeper,tag=compacteur_mangeur] at @s run tp @s ~-0.046 ~ ~-0.019 112.5 0
execute if score mangeur_gateau fb_compacteur matches 080..089 as @e[type=creeper,tag=compacteur_mangeur] at @s run tp @s ~-0.035 ~ ~-0.035 135 0
execute if score mangeur_gateau fb_compacteur matches 070..079 as @e[type=creeper,tag=compacteur_mangeur] at @s run tp @s ~-0.019 ~ ~-0.046 157.5 0
execute if score mangeur_gateau fb_compacteur matches 060..069 as @e[type=creeper,tag=compacteur_mangeur] at @s run tp @s ~ ~ ~-0.05 180 0
execute if score mangeur_gateau fb_compacteur matches 00000050 as @e[type=creeper,tag=compacteur_mangeur] at @s run say Euh, je...
execute if score mangeur_gateau fb_compacteur matches 00000030 as @e[type=creeper,tag=compacteur_mangeur] at @s run data merge entity @s {ExplosionRadius:0b,ignited:1b}
execute if score mangeur_gateau fb_compacteur matches 1 run setblock 49 74 69 air destroy
execute if score mangeur_gateau fb_compacteur matches 1 run function fb_cle:actions/le_compacteur/monte_c2

# Passe à l'état 13 => plus rien
execute if score mangeur_gateau fb_compacteur matches ..0 run scoreboard players set mangeur_etat fb_compacteur 13
