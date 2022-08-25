# Temp Scores needed :
# code
# input_code
# modulo
# Returns :
# length

# /!\ currently this function only accept codes with 4 digits /!\


scoreboard players set length fb_code -1

# "ABCD" and "AAAB"
scoreboard players operation code_temp fb_code = code fb_code
scoreboard players operation input_temp fb_code = input_code fb_code
scoreboard players operation modulo_temp fb_code = modulo fb_code
execute if score length fb_code matches -1 if score input_temp fb_code = code_temp fb_code run scoreboard players set length fb_code 4

# " ABC" and " AAB"
scoreboard players operation code_temp fb_code /= 10 fb_code
scoreboard players operation modulo_temp fb_code /= 10 fb_code
scoreboard players operation input_temp fb_code %= modulo_temp fb_code
execute if score length fb_code matches -1 if score input_temp fb_code = code_temp fb_code run scoreboard players set length fb_code 3

# "  AB" and "  AB" => here the length is 2
scoreboard players operation code_temp fb_code /= 10 fb_code
scoreboard players operation modulo_temp fb_code /= 10 fb_code
scoreboard players operation input_temp fb_code %= modulo_temp fb_code
execute if score length fb_code matches -1 if score input_temp fb_code = code_temp fb_code run scoreboard players set length fb_code 2

# "   A" and "   B"
scoreboard players operation code_temp fb_code /= 10 fb_code
scoreboard players operation modulo_temp fb_code /= 10 fb_code
scoreboard players operation input_temp fb_code %= modulo_temp fb_code
execute if score length fb_code matches -1 if score input_temp fb_code = code_temp fb_code run scoreboard players set length fb_code 1

# Nothing in common => 0
execute if score length fb_code matches -1 run scoreboard players set length fb_code 0

scoreboard players reset code_temp fb_code
scoreboard players reset input_temp fb_code
scoreboard players reset modulo_temp fb_code