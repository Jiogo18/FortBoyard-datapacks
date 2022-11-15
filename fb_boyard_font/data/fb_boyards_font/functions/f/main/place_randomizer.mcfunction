

setblock 0 119 -92 soul_sand
fill 1 120 -91 -1 120 -93 glass
setblock 0 120 -92 water
summon minecraft:armor_stand 0 120 -92 {Tags:["random_y"]}
setblock 1 120 -90 minecraft:oak_wall_sign[facing=south,waterlogged=false]
data merge block 1 120 -90 {Color:"black",Text4:'{"text":""}',Text3:'{"text":""}',Text2:'{"text":"item id"}',Text1:'{"text":""}'}
setblock 0 120 -90 minecraft:oak_wall_sign[facing=south,waterlogged=false]{Color:"black",Text4:'{"text":"après utilisation"}',Text3:'{"text":"peut être cassé"}',Text2:'{"text":"fb_boyards_font"}',Text1:'{"text":"générateur de"}'}
