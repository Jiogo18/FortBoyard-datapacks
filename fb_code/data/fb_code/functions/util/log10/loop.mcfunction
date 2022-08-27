# Input
# log10_input
# log10_output (-1)
# Output
# log10_temp

scoreboard players operation log10_input fb_code /= 10 fb_code
scoreboard players add log10_temp fb_code 1

# if > 10
execute if score log10_input fb_code matches 10.. run function fb_code:util/log10/loop
# else
execute unless score log10_input fb_code matches 10.. run scoreboard players operation log10_output fb_code = log10_temp fb_code
