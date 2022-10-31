# Ajouter des clés

1) Ajouter la position dans fb_cle:f/tp_as
2) Ajouter le spawn dans fb_cle:f/spawn/spawn_all_dead (copier les lignes d'avant et incrémenter les deux scores de fb_cle_id)
3) (Facultatif) ajouter les actions dans fb_cle:f/actions/...

## Positions

- Le Berger : 47 84 17 Clé (S)
- LeCompacteur : 49 73 69 Clé (W)

# Organisation

## fb_cle:actions/*

Actions par les joueurs (ou utiliser le scoreboard direct)

## fb_cle:f/actions/*

Traitement de l'action enregistrée dans le scoreboard.
2. Tp au reset
3. Déplacement au reset (descend)
4. Tp au up
5. Déplacement au up (monte)

## fb_cle:f/move/*

Déplacer un armor_stand en fonction des ticks de fb_cle_tick

## fb_cle:f/spawn/*

Spawn d'un armor_stand ou spawn de tous les armor_stands qui n'existent pas/plus

## fb_cle:f/tp_as et fb_cle:f/tp_as_at

Téléporter l'armor_stand à l'état 1 (reset) ou 2 (haut)<br>
La première (tp_as) a uniquement besoin de l'armor_stand<br>
La seconde (tp_as_at) est appelé par tp_as avec l'armor_stand et la position de base (de reset)

Pour changer la position d'un armor_stand il faut modifier <b>fb_cle:f/tp_as</b>
