# Choisir un égout (nombre aléatoire entre 0 et 999)
# 0-199 : rien
# 200-399 : 1
# 400-599 : 2
# 600-799 : 5
# 800-999 : 6
function fb_compacteur:f/random/generate
scoreboard players operation egout fb_compacteur = random fb_compacteur_r

function fb_compacteur:f/random/generate_momentum

scoreboard players add momentum_z fb_compacteur_r 1200
execute if score egout fb_compacteur matches 200..399 positioned 35 77 65 run function fb_compacteur:f/drops/spawn_item
execute if score egout fb_compacteur matches 400..599 positioned 42 77 65 run function fb_compacteur:f/drops/spawn_item
scoreboard players remove momentum_z fb_compacteur_r 1200

scoreboard players remove momentum_z fb_compacteur_r 1200
execute if score egout fb_compacteur matches 600..799 positioned 42 77 83 run function fb_compacteur:f/drops/spawn_item
execute if score egout fb_compacteur matches 800..999 positioned 35 77 83 run function fb_compacteur:f/drops/spawn_item

scoreboard players reset egout fb_compacteur
