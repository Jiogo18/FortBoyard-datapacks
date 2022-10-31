tellraw @a[tag=compacteur_debug] "Réinitialisation du compacteur"

scoreboard players set etat fb_compacteur 1
scoreboard players set tick fb_compacteur 0

function fb_compacteur:f/walls/kill_walls

kill @e[type=item,tag=compacteur_item]
