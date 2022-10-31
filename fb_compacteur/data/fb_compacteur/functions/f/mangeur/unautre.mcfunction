
execute if score mangeur_etat fb_compacteur matches 2 run say J'en veux plus !
execute if score mangeur_etat fb_compacteur matches 4 run say Encore !
execute if score mangeur_etat fb_compacteur matches 6 run say Un autre !
execute if score mangeur_etat fb_compacteur matches 8 run say Allez, encore !

scoreboard players add mangeur_etat fb_compacteur 1
