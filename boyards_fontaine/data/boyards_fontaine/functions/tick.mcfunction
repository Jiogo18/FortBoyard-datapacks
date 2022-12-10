execute if score etat fb_boyards matches 1 if score tick fb_boyards matches 1500.. run function boyards_fontaine:f/drops/drop

execute if score tick fb_boyards matches 1.. run scoreboard players remove tick fb_boyards 1
execute if score tick fb_boyards matches 1 run tellraw @a[tag=debug_boyards_font] "§6Arrêt de la fontaine de boyards"
execute if score tick fb_boyards matches 1 run function boyards_fontaine:f/main/stop
