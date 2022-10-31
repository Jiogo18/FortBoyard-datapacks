# Move the armor_stand to it's reset position
scoreboard players reset @s fb_cle_action
execute if score @s fb_cle_etat matches 1 run scoreboard players reset @s fb_cle_tick
execute unless score @s fb_cle_etat matches 1 run scoreboard players set @s fb_cle_tick -100
scoreboard players set @s fb_cle_etat 1
