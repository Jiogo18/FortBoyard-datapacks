# Le Berger : laine => points

# Add score to the item
scoreboard players reset * fb_item_count
execute positioned 52.0 83.0 19.0 as @e[type=item,dx=1,dy=0.5,dz=2] run function fb_item_collector:le_berger/count_item

# Add points and kill items
execute as @e[type=item,scores={fb_item_count=1..}] run scoreboard players operation le_berger fb_item_c += @s fb_item_count
kill @e[type=item,scores={fb_item_count=1..}]

# If points = 100 % => win
execute if score le_berger fb_item_c matches 99.. run function fb_item_collector:le_berger/win

function fb_item_collector:le_berger/update_counter
