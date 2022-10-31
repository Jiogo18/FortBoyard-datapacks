execute facing entity @p[gamemode=!spectator,gamemode=!creative] feet run tp @s ~ ~ ~ ~ ~
execute unless entity @p[gamemode=!spectator,gamemode=!creative] facing entity @p[gamemode=creative,tag=compacteur_mangeur_debug] feet run tp @s ~ ~ ~ ~ ~

execute if block 51 74 74 minecraft:cake run function fb_compacteur:f/mangeur/mange_debut
