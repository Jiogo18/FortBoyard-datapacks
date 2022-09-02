execute if score prison_pieuvre_anim fb_code matches 1 run function fb_code:f/prison_pieuvre/tick_anim

# Prison pieuvre : If the previous input was 60 seconds ago, reset the code to generate a random latter
scoreboard players operation input_delay fb_code = time fb_code
scoreboard players operation input_delay fb_code -= prison_pieuvre_input_time fb_code
execute if score input_delay fb_code matches 1200 unless score prison_pieuvre_input_time fb_code matches 0 run function fb_code:f/prison_pieuvre/clear_random_code
scoreboard players reset input_delay fb_code
