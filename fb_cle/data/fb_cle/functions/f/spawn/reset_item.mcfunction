

replaceitem entity @s armor.head bowl
execute if score @s fb_cle_id matches 1 run replaceitem entity @s armor.head bowl{display:{Name:'{"text":"Clé (S)","bold":"true","italic":"false"}'}}
execute if score @s fb_cle_id matches 2 run replaceitem entity @s armor.head bowl{display:{Name:'{"text":"Clé (W)","bold":"true","italic":"false"}'}}
