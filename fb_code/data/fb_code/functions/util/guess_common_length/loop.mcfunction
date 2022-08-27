# Temp Scores needed :
# code_temp
# input_temp
# modulo_temp
# length
# Output :
# length

scoreboard players operation code_temp fb_code /= 10 fb_code
scoreboard players operation modulo_temp fb_code /= 10 fb_code
scoreboard players operation input_temp fb_code %= modulo_temp fb_code
scoreboard players remove length fb_code 1

# compare and continue the loop
execute unless score input_temp fb_code = code_temp fb_code unless score modulo_temp fb_code matches ..0 run function fb_code:util/guess_common_length/loop
