
# last is wrong
execute if score prison_pieuvre_length fb_code matches 0 run setblock -11 58 86 minecraft:red_wool

# last is good
execute if score prison_pieuvre_length fb_code matches 1.. if score prison_pieuvre_length fb_code > prison_pieuvre_previous_length fb_code run setblock -11 58 86 minecraft:green_wool
execute if score prison_pieuvre_state fb_code matches 1 run setblock -11 58 86 minecraft:green_wool
