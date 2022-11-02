
kill @e[type=creeper,tag=compacteur_mangeur]

scoreboard players set mangeur_gateau fb_compacteur 0
scoreboard players set mangeur_etat fb_compacteur 0
summon creeper 51 73.0 73 {NoAI:1,NoGravity:1,ExplosionRadius:0b,Invulnerable:1b,Tags:[compacteur_mangeur],CustomName:'{"text":"§aGoinfre"}'}

# Retirer le gâteau
setblock 51 74 74 air

function fb_cle:actions/le_compacteur/reset_c2

# Reset les fours
scoreboard players set four_1 fb_compacteur 0
scoreboard players set four_2 fb_compacteur 0
