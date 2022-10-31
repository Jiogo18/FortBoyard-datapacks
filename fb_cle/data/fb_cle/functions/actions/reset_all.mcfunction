function fb_cle:f/spawn/spawn_all_dead

execute as @e[type=armor_stand,tag=fb_cle] run function fb_cle:f/actions/tp_reset

tellraw @s "Clés FB réinitialisées"
