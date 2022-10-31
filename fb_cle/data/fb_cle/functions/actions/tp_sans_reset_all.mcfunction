function fb_cle:f/spawn/spawn_all_dead

execute as @e[type=armor_stand,tag=fb_cle] run function fb_cle:f/tp_as

tellraw @s "Clés FB téléportées à l'endroit prévu /!\\ Ne met pas les clés en position basse !"
