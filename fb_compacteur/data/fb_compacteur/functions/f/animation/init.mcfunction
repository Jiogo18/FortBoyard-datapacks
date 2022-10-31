
# Reset
function fb_compacteur:f/walls/kill_walls

# Spawn the blocks and begin the animation
scoreboard players set etat fb_compacteur 2
# 5 minutes = 6000
scoreboard players set tick fb_compacteur 6000
function fb_compacteur:f/walls/summon_walls

kill @e[type=item,tag=compacteur_item]

# Reset mangeur
function fb_compacteur:f/mangeur/reset
setblock 49 74 69 orange_stained_glass
setblock 49 73 80 minecraft:blast_furnace[facing=north,lit=true]
setblock 50 73 80 minecraft:blast_furnace[facing=north,lit=true]