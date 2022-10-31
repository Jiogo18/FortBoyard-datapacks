# Choisir un égout (nombre aléatoire entre 0 et 999)
# 0-499 : rien
# 500-749 : 3
# 750-999 : 4
function fb_compacteur:f/random/generate
scoreboard players operation egout fb_compacteur = random fb_compacteur_r

function fb_compacteur:f/random/generate_momentum

execute if score egout fb_compacteur matches 500..749 positioned 35 78 74 run function fb_compacteur:f/drops/spawn_item
execute if score egout fb_compacteur matches 750..999 positioned 42 78 74 run function fb_compacteur:f/drops/spawn_item

scoreboard players reset egout fb_compacteur
