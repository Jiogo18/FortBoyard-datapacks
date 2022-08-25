kill @e[type=armor_stand,tag=tetedetigre]
summon minecraft:armor_stand -3.5 73.85 18.5 {Tags:["tetedetigre"],Invisible:1,NoBasePlate:1,NoGravity:1,Invulnerable:1,DisabledSlots:16777215,Rotation:[0.0f],ArmorItems:[{},{},{},{id:"minecraft:scute",Count:1}]}

tellraw @a[tag=staff] "§e[Tigre Grille] §fTête de tigre placée"

scoreboard objectives add tigre_grille dummy
scoreboard players set time tigre_grille 0
scoreboard players set animation tigre_grille 0
scoreboard players set tigre_angle tigre_grille 0
execute unless score etat tigre_grille matches 1 run scoreboard players set etat tigre_grille 0

execute if score etat tigre_grille matches 1 run function tigre_grille:grille/place_ouvert
execute if score etat tigre_grille matches 0 run function tigre_grille:grille/place_ferme

execute if score etat tigre_grille matches 1 as @e[type=armor_stand,tag=tetedetigre] at @s run tp @s ~ ~ ~ -90 0