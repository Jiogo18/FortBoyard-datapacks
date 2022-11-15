

setblock 23 49 -47 soul_sand
fill 22 50 -46 24 50 -48 bedrock
setblock 23 50 -47 water
execute unless entity @e[type=armor_stand,tag=fb_boyards_font] run summon minecraft:armor_stand 23 50.5 -47 {Tags:["random_y","fb_boyards_font"]}
setblock 24 50 -45 minecraft:oak_wall_sign[facing=south,waterlogged=false]
data merge block 24 50 -45 {Color:"black",Text4:'{"text":""}',Text3:'{"text":""}',Text2:'{"text":"item id"}',Text1:'{"text":""}'}
setblock 23 50 -45 minecraft:oak_wall_sign[facing=south,waterlogged=false]{Color:"black",Text4:'{"text":"J"}',Text3:'{"text":""}',Text2:'{"text":"fb_boyards_font"}',Text1:'{"text":"générateur de"}'}
