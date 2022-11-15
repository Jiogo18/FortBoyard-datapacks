execute if score etat fb_boyards matches 1 run tellraw @a[tag=boyards_debug] "La fontaine de boyards est déjà démarrée"
execute unless score etat fb_boyards matches 1 run tellraw @a[tag=boyards_debug] "Démarage de la fontaine de boyards"
execute unless score etat fb_boyards matches 1 run function fb_boyards_font:f/main/start
