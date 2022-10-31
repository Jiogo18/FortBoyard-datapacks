scoreboard players set le_berger fb_item_c 100
setblock 47 85 17 air destroy
function fb_cle:actions/le_berger/monte_c1
tellraw @a[tag=debug_fb_items] "La collecte du berger est terminée"
