tellraw @a[tag=debug_boyards_font] "§e[FB Boyards] §fRéinitialisation"

scoreboard players set etat fb_boyards 1

function boyards_fontaine:f/main/stop

kill @e[type=item,tag=boyards_item]
