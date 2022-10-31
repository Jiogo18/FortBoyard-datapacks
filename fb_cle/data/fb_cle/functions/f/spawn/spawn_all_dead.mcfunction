# Spawn les armor_stands s'ils n'existent pas dans le monde

# Les positions ici n'ont pas d'importante, il faut juste que le chunk soit chargé

scoreboard players set id fb_cle_id 1
execute unless entity @e[type=armor_stand,tag=fb_cle,scores={fb_cle_id=1}] run function fb_cle:f/spawn/spawn_new

scoreboard players set id fb_cle_id 2
execute unless entity @e[type=armor_stand,tag=fb_cle,scores={fb_cle_id=2}] run function fb_cle:f/spawn/spawn_new

scoreboard players reset id fb_cle_id