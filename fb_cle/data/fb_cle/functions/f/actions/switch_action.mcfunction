execute if score @s fb_cle_action matches 2 run function fb_cle:f/actions/tp_reset
execute if score @s fb_cle_action matches 3 run function fb_cle:f/actions/move_reset
execute if score @s fb_cle_action matches 4 run function fb_cle:f/actions/tp_up
execute if score @s fb_cle_action matches 5 run function fb_cle:f/actions/move_up
scoreboard players reset @s fb_cle_action
