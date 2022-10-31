tellraw @a[tag=staff] "§e[FB Item Collector] §fRéinitialisation"

scoreboard objectives add fb_item_c dummy
scoreboard objectives add fb_item_count dummy
scoreboard players reset * fb_item_c
scoreboard players reset * fb_item_count
function fb_item_collector:le_berger/reset
