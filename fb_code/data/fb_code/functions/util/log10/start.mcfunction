# Input
# log10_input
# Output
# log10_output

scoreboard players set log10_temp fb_code 0
scoreboard players set log10_output fb_code -1

execute if score log10_input fb_code matches 10.. run function fb_code:util/log10/loop

scoreboard players reset log10_temp fb_code
scoreboard players reset log10_input fb_code
