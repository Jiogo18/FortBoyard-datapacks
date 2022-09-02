# Si position fermée ou pas en animation => recommence l'animation à 0
execute if score prison_pieuvre_state fb_code matches 0 run scoreboard players set prison_pieuvre_anim_tick fb_code 0
execute if score prison_anim fb_code matches 0 run scoreboard players set prison_pieuvre_anim_tick fb_code 0
scoreboard players set prison_pieuvre_anim fb_code 1
