
# Nouvelle action à traiter
execute as @e[type=armor_stand,tag=fb_cle] unless score @s fb_cle_action matches 0 run function fb_cle:f/actions/switch_action

# En déplacement
execute as @e[type=armor_stand,tag=fb_cle] unless score @s fb_cle_tick matches 0 run function fb_cle:f/move/tick
