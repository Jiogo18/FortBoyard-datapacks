
# Change the score of the armor_stand with the score on the sign
data modify block 51 83 24 Text3 set value '[{"score":{"name":"le_berger","objective":"fb_item_c"}},{"text":" %"}]'
execute as @e[type=armor_stand,tag=le_berger_counter] run data modify entity @s CustomName set from block 51 83 24 Text3
