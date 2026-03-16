execute as @e[tag=vilage,type=zombie_villager] run function j_villagers_update:zombie_villager
execute as @e[tag=undead,type=villager] run function j_villagers_update:dar_tags

execute as @e[type=villager,tag=!AI] run tag @s add AI

execute as @e[tag=AI_guarda] at @s run function j_villagers_update:guarda
execute as @e[tag=AI_arqueiro] at @s run function j_villagers_update:arqueiro
execute as @e[tag=AI_mago] at @s run function j_villagers_update:mago

execute as @e[type=villager] at @s if data entity @s VillagerData{profession:"minecraft:cleric"} run function j_villagers_update:clerico

execute as @e[type=villager] at @s if data entity @s VillagerData{profession:"minecraft:weaponsmith"} run function j_villagers_update:ferreiro
execute as @e[type=villager] at @s if data entity @s VillagerData{profession:"minecraft:armorer"} run function j_villagers_update:ferreiro
execute as @e[type=villager] at @s if data entity @s VillagerData{profession:"minecraft:toolsmith"} run function j_villagers_update:ferreiro

execute as @e[type=villager] at @s if data entity @s VillagerData{profession:"minecraft:librarian"} run function j_villagers_update:bibliotecario
execute as @e[type=villager] at @s if data entity @s VillagerData{profession:"minecraft:butcher"} run function j_villagers_update:acougueiro

execute as @e[type=marker,tag=bola_de_fogo_mago] at @s run function j_villagers_update:mago/magia_mover
