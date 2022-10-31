
scoreboard players remove tick fb_compacteur 1

# Wait 200 ticks before moving
execute if score tick fb_compacteur matches 0..5800 run function fb_compacteur:f/walls/move_walls

# Drop items
execute if score tick fb_compacteur matches 0..5800 run function fb_compacteur:f/drops/drop

# Sons
execute if score tick fb_compacteur matches 5800 at @p run playsound minecraft:alarme ambient @p 39.0 78 74 0.1 0.5
execute if score tick fb_compacteur matches 0600 at @p run playsound minecraft:alarme ambient @p 39.0 78 74 0.1 0.5

# Mangeur
function fb_compacteur:f/mangeur/tick
