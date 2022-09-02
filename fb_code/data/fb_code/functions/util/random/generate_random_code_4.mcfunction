# Objectif : avoir un code à 4 chiffress qui correspond au regex [1-4]{4}
# Un chiffre ne peut être utilisé qu'une seule fois

# Aléatoire en fonction du gametime (4*3*2*1 = 24 combinaisons possibles) :
execute store result score random_code_id fb_code run time query gametime
scoreboard players operation random_code_id fb_code %= 24 fb_code

execute if score random_code_id fb_code matches 0 run scoreboard players set random_code fb_code 1234
execute if score random_code_id fb_code matches 1 run scoreboard players set random_code fb_code 1243
execute if score random_code_id fb_code matches 2 run scoreboard players set random_code fb_code 1324
execute if score random_code_id fb_code matches 3 run scoreboard players set random_code fb_code 1342
execute if score random_code_id fb_code matches 4 run scoreboard players set random_code fb_code 1423
execute if score random_code_id fb_code matches 5 run scoreboard players set random_code fb_code 1432
execute if score random_code_id fb_code matches 6 run scoreboard players set random_code fb_code 2134
execute if score random_code_id fb_code matches 7 run scoreboard players set random_code fb_code 2143
execute if score random_code_id fb_code matches 8 run scoreboard players set random_code fb_code 2314
execute if score random_code_id fb_code matches 9 run scoreboard players set random_code fb_code 2341
execute if score random_code_id fb_code matches 10 run scoreboard players set random_code fb_code 2413
execute if score random_code_id fb_code matches 11 run scoreboard players set random_code fb_code 2431
execute if score random_code_id fb_code matches 12 run scoreboard players set random_code fb_code 3124
execute if score random_code_id fb_code matches 13 run scoreboard players set random_code fb_code 3142
execute if score random_code_id fb_code matches 14 run scoreboard players set random_code fb_code 3214
execute if score random_code_id fb_code matches 15 run scoreboard players set random_code fb_code 3241
execute if score random_code_id fb_code matches 16 run scoreboard players set random_code fb_code 3412
execute if score random_code_id fb_code matches 17 run scoreboard players set random_code fb_code 3421
execute if score random_code_id fb_code matches 18 run scoreboard players set random_code fb_code 4123
execute if score random_code_id fb_code matches 19 run scoreboard players set random_code fb_code 4132
execute if score random_code_id fb_code matches 20 run scoreboard players set random_code fb_code 4213
execute if score random_code_id fb_code matches 21 run scoreboard players set random_code fb_code 4231
execute if score random_code_id fb_code matches 22 run scoreboard players set random_code fb_code 4312
execute if score random_code_id fb_code matches 23 run scoreboard players set random_code fb_code 4321

scoreboard players reset random_code_id fb_code
