execute if score etat fb_boyards matches 1 run tellraw @a[tag=debug_boyards_font] "§cLa fontaine de boyards est déjà démarrée"
execute unless score etat fb_boyards matches 1 run tellraw @a[tag=debug_boyards_font] "§6Démarage de la fontaine de boyards pour 120 secondes"
execute unless score etat fb_boyards matches 1 run function fb_boyards_font:f/main/start
scoreboard players set tick fb_boyards 2400
