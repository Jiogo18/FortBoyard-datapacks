
# ONSE = 2134 (temporaire)
# scoreboard players set prison_pieuvre_code fb_code 2134

# Code aléatoire (les chiffres de 1 à 4 ordonnés aléatoirement)
function fb_code:util/random/generate_random_code_4
scoreboard players operation prison_pieuvre_code fb_code = random_code fb_code
scoreboard players reset random_code fb_code
