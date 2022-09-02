# Temp Scores needed (are reset at end) :
# button
# input_code
# input_time
# code
# modulo

# Return (please reset after use) :
# input_code
# input_state
# time (not set here but must be used)
# length (from guess_common_length)

scoreboard players set input_state fb_code -1

# Is too late => reset the code (30 seconds)
scoreboard players operation input_delay fb_code = time fb_code
scoreboard players operation input_delay fb_code -= input_time fb_code
execute if score input_delay fb_code matches 600.. run scoreboard players set input_code fb_code 0
scoreboard players reset input_delay fb_code

# Push button at the end of the code
# (code*10 + button) % 10000
scoreboard players operation input_code fb_code *= 10 fb_code
scoreboard players operation input_code fb_code += button fb_code
scoreboard players operation input_code fb_code %= modulo fb_code


scoreboard players set input_state fb_code 0

# Is valid
execute if score input_code fb_code = code fb_code run scoreboard players set input_state fb_code 1

# Switch
function fb_code:util/guess_common_length/start

scoreboard players reset button fb_code
scoreboard players reset code fb_code
scoreboard players reset modulo fb_code
