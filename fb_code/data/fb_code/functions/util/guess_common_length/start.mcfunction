# Temp Scores needed :
# code
# input_code
# modulo
# Returns :
# length

# get the length of the code with log10(modulo)
scoreboard players operation log10_input fb_code = modulo fb_code
function fb_code:util/log10/start
scoreboard players operation length fb_code = log10_output fb_code
scoreboard players reset log10_output fb_code

# "ABCD" and "AAAB"
# " ABC" and " AAB"
# "  AB" and "  AB" => here the length is 2
# "   A" and "   B"

scoreboard players operation code_temp fb_code = code fb_code
scoreboard players operation input_temp fb_code = input_code fb_code
scoreboard players operation modulo_temp fb_code = modulo fb_code
execute unless score input_temp fb_code = code_temp fb_code run function fb_code:util/guess_common_length/loop

# now we have the common length of the code and the input


scoreboard players reset code_temp fb_code
scoreboard players reset input_temp fb_code
scoreboard players reset modulo_temp fb_code
