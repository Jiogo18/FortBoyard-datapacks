tag @e[tag=compacteur_wall_new_blockstate] remove compacteur_wall_new_blockstate
tag @e[tag=compacteur_wall_new_shulker] remove compacteur_wall_new_shulker

summon armor_stand ~ ~-0.7406250089408 ~ {NoGravity:1b,Small:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b, Tags:[compacteur_wall_new,compacteur_texture], Passengers:[{id:falling_block,Tags:[compacteur_wall_new_blockstate],NoGravity:1b,Time:1,BlockState:{Name:"nether_bricks"}}]}
execute if score summon_shulker fb_compacteur matches 1 run summon armor_stand ~ ~-0.7406250089408 ~ {NoGravity:1b,Small:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b, Tags:[compacteur_wall_new,compacteur_idbox], Passengers:[{id:shulker,NoAI:1b,Tags:[compacteur_wall_new_shulker],Invulnerable:1b,PersistenceRequired:1b}]}
execute if score summon_slime fb_compacteur matches 1 run summon slime ~ ~-0.7406250089408 ~ {NoAI:1b,Size:2,Invulnerable:1b,Invisible:1b,Tags:[compacteur_wall_new]}

tag @e[tag=compacteur_wall_new] add compacteur_wall
tag @e[tag=compacteur_wall_new_blockstate] add compacteur_wall_block
tag @e[tag=compacteur_wall_new_shulker] add compacteur_wall_shulker

tag @e[tag=compacteur_wall_new_blockstate] remove compacteur_wall_new_blockstate
tag @e[tag=compacteur_wall_new_shulker] remove compacteur_wall_new_shulker

# Inconvéniant du slime : le joueur ne doit pas avoir speed V (effect niveau 4) sinon il traverse
