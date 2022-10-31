tellraw @a[tag=staff] "§e[FB Clé] §fInitialisation"

# état de la clé : 1 = bas, 2 = monté
scoreboard objectives add fb_cle_etat dummy
# Id pour les armor_stands de tag fb_cle
scoreboard objectives add fb_cle_id dummy
# Ticks de déplacement des armor_stands
scoreboard objectives add fb_cle_tick dummy
# Action pour déplacer les armor_stands : 1 = bas, 2 = monté
scoreboard objectives add fb_cle_action dummy
