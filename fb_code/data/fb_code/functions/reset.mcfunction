tellraw @a[tag=staff] "§e[FB Code] §fRéinitialisation"

scoreboard objectives add fb_code dummy
scoreboard players reset * fb_code
scoreboard players set time fb_code 0
scoreboard players set 10 fb_code 10
execute unless score etat tigre_grille matches 1 run scoreboard players set etat tigre_grille 0

function fb_code:f/prison/close
function fb_code:f/prison_pieuvre/close
