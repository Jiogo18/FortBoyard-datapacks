
tellraw @a[tag=compacteur_debug] "Fin du compacteur"

scoreboard players set tick fb_compacteur 0
scoreboard players set etat fb_compacteur 3

kill @e[type=item,tag=compacteur_item]
