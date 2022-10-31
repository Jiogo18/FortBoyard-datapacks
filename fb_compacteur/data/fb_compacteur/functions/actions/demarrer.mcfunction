execute unless score etat fb_compacteur matches 2 run tellraw @a[tag=compacteur_debug] "Démarage du compacteur"

execute unless score etat fb_compacteur matches 2 run function fb_compacteur:f/animation/init
