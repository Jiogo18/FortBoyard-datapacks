execute store result score mini_random fb_boyards_r run data get entity @e[sort=random,limit=1,tag=random_y] Pos[1] 1000000
scoreboard players operation random fb_boyards_r += mini_random fb_boyards_r
scoreboard players operation random fb_boyards_r %= 1000 fb_boyards
