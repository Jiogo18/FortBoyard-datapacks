# tourner
scoreboard players operation tigre_angle tigre_grille += tigre_sens tigre_grille
execute as @e[type=armor_stand,tag=tetedetigre] store result entity @s Rotation[0] float -0.075 run scoreboard players get tigre_angle tigre_grille

# son (son_tigre dans ferme_tick et ouvre_tick)
execute if score son_tigre tigre_grille matches 60 positioned -3.5 73.85 18.5 run playsound minecraft:block.wood.break master @a[distance=..30]
execute if score son_tigre tigre_grille matches 100 positioned -3.5 73.85 18.5 run playsound minecraft:block.chain.break master @a[distance=..30] ~ ~ ~ 1 .1
execute if score son_tigre tigre_grille matches 100.. run scoreboard players set son_tigre tigre_grille 0
