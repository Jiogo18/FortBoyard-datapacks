# called if prison_anim is 1
# animate the block in the middle of the room

scoreboard players add prison_anim_tick fb_code 1

# open
execute if score prison_anim_tick fb_code matches 40 if score prison_state fb_code matches 1 run setblock 5 67 56 minecraft:redstone_block

# end
execute if score prison_anim_tick fb_code matches 100.. run function fb_code:f/prison/stop_anim
