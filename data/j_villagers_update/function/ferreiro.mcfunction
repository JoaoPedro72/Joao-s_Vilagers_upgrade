execute if entity @n[tag=hurt,type=iron_golem,distance=..5] unless score @s attack_cooldown > zero numero run function j_villagers_update:ferreiro/curar_iron_golens

execute as @e[tag=AI_guarda,distance=..25] at @s run function j_villagers_update:ferreiro/melhorar_armadura
execute as @e[tag=AI_arqueiro,distance=..25] at @s run function j_villagers_update:ferreiro/melhorar_armadura

execute store result storage j:raycast id int 1 run scoreboard players get @s ids
data modify storage j:raycast follow_distance set value 15

execute if score j_village_300_tick j_ticks matches 1 run function j_ai:lost_target with storage j:raycast

function j_villagers_update:ferreiro/andar_ate with storage j:raycast
execute if score j_village_20_tick j_ticks matches 12 run function j_villagers_update:ferreiro/procurar_iron_golen with storage j:raycast