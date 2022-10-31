execute if score etat fb_compacteur matches 1 run tellraw @a[tag=compacteur_debug] "Démarage du compacteur"

execute if score etat fb_compacteur matches 1 run function fb_compacteur:f/animation/init

execute unless score etat fb_compacteur matches 1 run tellraw @a[tag=compacteur_debug] "Le compacteur n'est pas réinitialisé"
