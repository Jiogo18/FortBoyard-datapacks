# À exécuter en tant que fb_cle, à la position de départ

# Default => Reset
execute unless score @s fb_cle_etat matches 1..2 run scoreboard players set @s fb_cle_etat 1

# Reset location
execute if score @s fb_cle_etat matches 1 run tp @s ~ ~ ~ ~ ~
# Up location
execute if score @s fb_cle_etat matches 2 run tp @s ~ ~1 ~ ~ ~

scoreboard players reset @s fb_cle_tick
scoreboard players reset @s fb_cle_action
