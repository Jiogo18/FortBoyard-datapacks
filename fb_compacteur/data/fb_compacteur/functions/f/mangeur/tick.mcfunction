
# 0) Attend le joueur pour lancer
execute if score mangeur_etat fb_compacteur matches 0 positioned 51 73.0 73 if entity @p[distance=..5,gamemode=!spectator] run function fb_compacteur:f/mangeur/bonjour
execute if score mangeur_etat fb_compacteur matches 1 positioned 51 73.0 73 unless entity @p[distance=..6,gamemode=!spectator] run scoreboard players set mangeur_etat fb_compacteur 0

# 1) Attend le joueur
execute if score mangeur_etat fb_compacteur matches 1 as @e[type=creeper,tag=compacteur_mangeur] at @s run function fb_compacteur:f/mangeur/attendre_gateau

# 2) Mange
execute if score mangeur_etat fb_compacteur matches 2 as @e[type=creeper,tag=compacteur_mangeur] at @s run function fb_compacteur:f/mangeur/mange

# 3) Attend le joueur
execute if score mangeur_etat fb_compacteur matches 3 as @e[type=creeper,tag=compacteur_mangeur] at @s run function fb_compacteur:f/mangeur/attendre_gateau

# 4) Mange
execute if score mangeur_etat fb_compacteur matches 4 as @e[type=creeper,tag=compacteur_mangeur] at @s run function fb_compacteur:f/mangeur/mange

# 5) Attend le joueur
execute if score mangeur_etat fb_compacteur matches 5 as @e[type=creeper,tag=compacteur_mangeur] at @s run function fb_compacteur:f/mangeur/attendre_gateau

# 6) Mange
execute if score mangeur_etat fb_compacteur matches 6 as @e[type=creeper,tag=compacteur_mangeur] at @s run function fb_compacteur:f/mangeur/mange

# 7) Attend le joueur
execute if score mangeur_etat fb_compacteur matches 7 as @e[type=creeper,tag=compacteur_mangeur] at @s run function fb_compacteur:f/mangeur/attendre_gateau

# 8) Mange
execute if score mangeur_etat fb_compacteur matches 8 as @e[type=creeper,tag=compacteur_mangeur] at @s run function fb_compacteur:f/mangeur/mange

# 9) Attend le joueur
execute if score mangeur_etat fb_compacteur matches 9 as @e[type=creeper,tag=compacteur_mangeur] at @s run function fb_compacteur:f/mangeur/attendre_gateau

# 10) Mange
execute if score mangeur_etat fb_compacteur matches 10 as @e[type=creeper,tag=compacteur_mangeur] at @s run function fb_compacteur:f/mangeur/mange

# 11) Fin (début de l'animation)
execute if score mangeur_etat fb_compacteur matches 11 as @e[type=creeper,tag=compacteur_mangeur] at @s run function fb_compacteur:f/mangeur/fin

# 12) Fin
execute if score mangeur_etat fb_compacteur matches 12 unless score mangeur_gateau fb_compacteur matches ..0 run scoreboard players remove mangeur_gateau fb_compacteur 1
execute if score mangeur_etat fb_compacteur matches 12 if score mangeur_gateau fb_compacteur matches 1 run function fb_cle:actions/le_compacteur/monte_c2

# Remplacer le gâteau avec un gâteau plaçable
execute positioned 51 73.0 73 as @a[distance=..5,gamemode=!spectator] run function fb_compacteur:f/mangeur/remplace_gateau
execute positioned 49 73 80 if block ~ ~ ~ minecraft:blast_furnace{Items:[{Slot:0b,id:"minecraft:cake",Count:1b}]} unless block ~ ~ ~ minecraft:blast_furnace{Items:[{Slot:2b}]} run function fb_compacteur:f/mangeur/remplace_gateau
execute positioned 50 73 80 if block ~ ~ ~ minecraft:blast_furnace{Items:[{Slot:0b,id:"minecraft:cake",Count:1b}]} unless block ~ ~ ~ minecraft:blast_furnace{Items:[{Slot:2b}]} run function fb_compacteur:f/mangeur/remplace_gateau
