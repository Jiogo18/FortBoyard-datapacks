

# Le Berger
execute if score le_berger fb_item_c matches 0..99 positioned 52.0 83.0 19.0 if entity @e[type=item,distance=..2] run function fb_item_collector:le_berger/tick
