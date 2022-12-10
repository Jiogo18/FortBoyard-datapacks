execute if score etat fb_boyards matches 1 run tellraw @a[tag=debug_boyards_font] "§cLa fontaine de boyards est déjà démarrée"
execute unless score etat fb_boyards matches 1 run tellraw @a[tag=debug_boyards_font] "§6Démarage de la fontaine de boyards"
execute unless score etat fb_boyards matches 1 run function boyards_fontaine:f/main/start
scoreboard players set tick fb_boyards 1728000
# 1728000 = 1 jour
