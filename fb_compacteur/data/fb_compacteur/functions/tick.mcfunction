execute if score tick fb_compacteur matches 2.. run function fb_compacteur:f/animation/tick
execute if score tick fb_compacteur matches 1 run function fb_compacteur:f/animation/end

execute as @e[type=falling_block,tag=compacteur_wall_block] run data modify entity @s Time set value 1
effect give @e[type=shulker,tag=compacteur_wall_shulker] invisibility 999999 1 true

execute positioned 38 71 74 run kill @e[type=item,nbt={Item:{id:"minecraft:shulker_shell"}},distance=..10]
execute positioned 38 71 74 run kill @e[type=item,nbt={Item:{id:"minecraft:slime_ball"}},distance=..10]
execute positioned 51 74 74 run kill @e[type=item,nbt={Item:{id:"minecraft:gunpowder"}},distance=..3]
