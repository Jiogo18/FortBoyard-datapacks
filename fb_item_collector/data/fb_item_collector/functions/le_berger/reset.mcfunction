scoreboard players set le_berger fb_item_c 0
setblock 47 85 17 light_blue_stained_glass
function fb_cle:actions/le_berger/reset_c1
tellraw @a[tag=debug_fb_items] "Reset de la collecte du berger"


# The sign keeps the score
setblock 52 83 24 minecraft:stripped_jungle_wood[axis=y]
setblock 51 83 24 minecraft:dark_oak_wall_sign[facing=west]{Text4:'{"text":""}',Text3:'{"text":"0"',Text2:'{"text":"Score :"}',Text1:'{"text":""}'}

# The armor stand displays the score
kill @e[type=armor_stand,tag=le_berger_counter]
summon armor_stand 52.5 84.65 20.0 {NoGravity:1b,Marker:1b,Tags:["le_berger_counter"],Invisible:1b,CustomName:'{"text":"0"}',CustomNameVisible:1b}

function fb_item_collector:le_berger/update_counter
