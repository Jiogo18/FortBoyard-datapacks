tag @e[tag=boyards_new_item] remove boyards_new_item

# Spawn un item et lui donner un CustomModelData unique
summon item ~ ~ ~ {Item:{id:"gold_nugget",Count:1b},Tags:[boyards_new_item,boyards_item]}

execute as @e[tag=boyards_new_item] store result entity @s Motion[0] double 0.0005 run scoreboard players get momentum_x fb_boyards_r
execute as @e[tag=boyards_new_item] store result entity @s Motion[2] double 0.0005 run scoreboard players get momentum_z fb_boyards_r

# Modifier le panneau et incrémenter le score
data modify block 1 120 -90 Text3 set value '{"score":{"name":"item_id","objective":"fb_boyards"}}'
execute as @e[tag=boyards_new_item] run data modify entity @s Item.tag.CustomModelData set from block 1 120 -90 Text3
scoreboard players add item_id fb_boyards 1

tag @e[tag=boyards_new_item] remove boyards_new_item

