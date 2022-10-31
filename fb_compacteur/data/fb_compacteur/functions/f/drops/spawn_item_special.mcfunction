# 1 chance sur 1000 d'être appelé

# Choisir un item spécial (nombre aléatoire entre 0 et 999)
function fb_compacteur:f/random/generate
execute if score random fb_compacteur_r matches 0..99 run summon item ~ ~ ~ {Item:{id:"minecraft:totem_of_undying",Count:1b},Tags:[compacteur_new_item]}
