execute if score etat fb_boyards matches 1 run tellraw @a "§cLa fontaine de boyards est déjà démarrée"
execute unless score etat fb_boyards matches 1 run tellraw @a "§6Démarage de la fontaine de boyards"
execute unless score etat fb_boyards matches 1 run function fb_boyards_font:f/main/start
