scoreboard players add four_1 fb_compacteur 4
execute store result block ~ ~ ~ CookTime short 1 run scoreboard players get four_1 fb_compacteur
execute if score four_1 fb_compacteur matches 180 run function fb_compacteur:f/mangeur/four/remplace_gateau
execute if score four_1 fb_compacteur matches 180 run scoreboard players set four_1 fb_compacteur 0
