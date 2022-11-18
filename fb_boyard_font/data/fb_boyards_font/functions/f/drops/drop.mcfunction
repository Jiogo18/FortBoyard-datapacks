
function fb_boyards_font:f/drops/drop_top

# Kill des items qui ont trop d'items autour d'eux
execute as @e[type=item,tag=boyards_item,sort=random,limit=30,nbt={Motion:[0d,0d,0d]}] at @s if entity @e[type=item,distance=0.000000001..0.2] run kill @s
