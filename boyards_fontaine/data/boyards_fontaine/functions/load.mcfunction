tellraw @a[tag=debug_boyards_font] "§e[FB Boyards] §fInitialisation"

scoreboard objectives add fb_boyards dummy
scoreboard objectives add fb_boyards_r dummy
scoreboard players set 1000000 fb_boyards 1000000
scoreboard players set 1000 fb_boyards 1000
scoreboard players set 500 fb_boyards 500

execute unless score etat fb_boyards matches 1.. run function boyards_fontaine:actions/demarrer

kill @e[type=item,tag=boyards_item]
