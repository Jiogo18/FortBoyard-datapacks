# Scores :
# button is set

# Store the previous length to compare it during the animation
scoreboard players operation prison_pieuvre_previous_length fb_code = prison_pieuvre_length fb_code

# Code random with 4 digits
scoreboard players operation input_code fb_code = prison_pieuvre_input_code fb_code
scoreboard players operation input_time fb_code = prison_pieuvre_input_time fb_code
execute if score prison_pieuvre_code fb_code matches ..1000 run function fb_code:f/prison_pieuvre/create_random_code
scoreboard players operation code fb_code = prison_pieuvre_code fb_code
scoreboard players set modulo fb_code 10000

# Main (add the button in input_code, calc input_state...)
function fb_code:util/input
scoreboard players operation prison_pieuvre_input_code fb_code = input_code fb_code
scoreboard players operation prison_pieuvre_input_time fb_code = time fb_code
scoreboard players operation prison_pieuvre_state fb_code = input_state fb_code
scoreboard players operation prison_pieuvre_length fb_code = length fb_code
scoreboard players reset input_code fb_code
scoreboard players reset input_time fb_code
scoreboard players reset input_state fb_code
scoreboard players reset length fb_code

# Switch
execute if score prison_pieuvre_state fb_code matches 1 run function fb_code:f/prison_pieuvre/open
execute if score prison_pieuvre_state fb_code matches 0 run function fb_code:f/prison_pieuvre/close

# If open, reset the length to 0
execute if score prison_pieuvre_state fb_code matches 1 run scoreboard players set prison_pieuvre_length fb_code 0
