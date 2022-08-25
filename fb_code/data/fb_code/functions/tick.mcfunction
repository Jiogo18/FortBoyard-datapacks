scoreboard players add time fb_code 1

execute if score prison_anim fb_code matches 1 run function fb_code:f/prison/tick
execute if score prison_pieuvre_anim fb_code matches 1 run function fb_code:f/prison_pieuvre/tick