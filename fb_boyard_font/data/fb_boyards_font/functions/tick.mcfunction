execute if score etat fb_boyards matches 1 run function fb_boyards_font:f/drops/drop

execute if score tick fb_boyards matches 1.. run scoreboard players remove tick fb_boyards 1
execute if score tick fb_boyards matches 1 run function fb_boyards_font:f/main/stop
execute if score tick fb_boyards matches 1 run tellraw @a "§6Arrêt de la fontaine de boyards"
