execute store result score mini_random fb_compacteur_r run data get entity @e[sort=random,limit=1,tag=random_y] Pos[1] 1000000
scoreboard players operation random fb_compacteur_r += mini_random fb_compacteur_r
scoreboard players operation random fb_compacteur_r %= 1000 fb_compacteur
