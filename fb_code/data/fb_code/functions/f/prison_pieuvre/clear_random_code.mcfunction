
# Set to an impossible value to disable the code and play the sound
scoreboard players set prison_pieuvre_code fb_code -1
execute positioned -11 58 86 run playsound minecraft:entity.ghast.warn master @a[distance=..10] ~ ~ ~ 1 0.5
