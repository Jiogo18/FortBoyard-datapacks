
kill @e[type=armor_stand,tag=compacteur_wall]
kill @e[type=shulker,tag=compacteur_wall_shulker]
kill @e[type=falling_block,tag=compacteur_wall_block]
execute as @e[type=slime,tag=compacteur_wall] run data modify entity @s Size set value 0
kill @e[type=slime,tag=compacteur_wall]
