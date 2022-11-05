
tellraw @a[tag=compacteur_debug] "Fin du compacteur"

scoreboard players set tick fb_compacteur 0
scoreboard players set etat fb_compacteur 3

kill @e[type=item,tag=compacteur_item]

# Kill les joueurs dans la zone de compactage
execute positioned 49 73 74 as @a[distance=..8] if predicate fb_compacteur:participant run clear
execute positioned 49 73 74 as @a[distance=..8] if predicate fb_compacteur:participant run kill

# Retirer le gâteau
setblock 51 74 74 air destroy
# Reset les fours
function fb_compacteur:f/mangeur/four/reset
