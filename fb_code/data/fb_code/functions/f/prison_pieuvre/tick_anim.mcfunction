# called if prison_pieuvre_anim is 1
# animate the block in the middle of the room

scoreboard players add prison_pieuvre_anim_tick fb_code 1

# wool
execute if score prison_pieuvre_anim_tick fb_code matches 2 run function fb_code:f/prison_pieuvre/place_wool
execute if score prison_pieuvre_anim_tick fb_code matches 2 positioned -11 58 86 run playsound minecraft:block.honey_block.fall master @a[distance=..10] ~ ~ ~ 3 0.5
# glowstone
execute if score prison_pieuvre_anim_tick fb_code matches 10 run function fb_code:f/prison_pieuvre/place_glowstone
# wool
execute if score prison_pieuvre_anim_tick fb_code matches 20 run function fb_code:f/prison_pieuvre/place_wool
# glowstone
execute if score prison_pieuvre_anim_tick fb_code matches 30 run function fb_code:f/prison_pieuvre/place_glowstone

# end
execute if score prison_pieuvre_anim_tick fb_code matches 100.. run function fb_code:f/prison_pieuvre/stop_anim
