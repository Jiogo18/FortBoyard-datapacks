
scoreboard players remove mangeur_gateau fb_compacteur 1

execute if score mangeur_gateau fb_compacteur matches 130 run setblock 51 74 74 cake[bites=1]
execute if score mangeur_gateau fb_compacteur matches 130 run playsound entity.fox.eat ambient @a 51 74 74 1 0.5
execute if score mangeur_gateau fb_compacteur matches 110 run setblock 51 74 74 cake[bites=2]
execute if score mangeur_gateau fb_compacteur matches 110 run playsound entity.fox.eat ambient @a 51 74 74 1 0.5
execute if score mangeur_gateau fb_compacteur matches 90 run setblock 51 74 74 cake[bites=3]
execute if score mangeur_gateau fb_compacteur matches 90 run playsound entity.fox.eat ambient @a 51 74 74 1 0.5
execute if score mangeur_gateau fb_compacteur matches 70 run setblock 51 74 74 cake[bites=4]
execute if score mangeur_gateau fb_compacteur matches 70 run playsound entity.fox.eat ambient @a 51 74 74 1 0.5
execute if score mangeur_gateau fb_compacteur matches 50 run setblock 51 74 74 cake[bites=5]
execute if score mangeur_gateau fb_compacteur matches 50 run playsound entity.fox.eat ambient @a 51 74 74 1 0.5
execute if score mangeur_gateau fb_compacteur matches 30 run setblock 51 74 74 cake[bites=6]
execute if score mangeur_gateau fb_compacteur matches 30 run playsound entity.fox.eat ambient @a 51 74 74 1 0.5
execute if score mangeur_gateau fb_compacteur matches 10 run setblock 51 74 74 air
execute if score mangeur_gateau fb_compacteur matches 10 run playsound entity.fox.eat ambient @a 51 74 74 1 0.5

execute if score mangeur_gateau fb_compacteur matches ..0 run function fb_compacteur:f/mangeur/unautre
