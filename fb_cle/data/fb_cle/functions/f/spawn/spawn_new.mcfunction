tag @e[tag=fb_cle_new] remove fb_cle_new

tellraw @a[tag=staff] "Summon d'une clé"

summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,NoBasePlate:1b,Tags:["fb_cle","fb_cle_new"]}
execute as @e[type=armor_stand,tag=fb_cle,tag=fb_cle_new] run scoreboard players operation @s fb_cle_id = id fb_cle_id
execute as @e[type=armor_stand,tag=fb_cle,tag=fb_cle_new] run function fb_cle:f/actions/tp_reset

tag @e[tag=fb_cle_new] remove fb_cle_new
