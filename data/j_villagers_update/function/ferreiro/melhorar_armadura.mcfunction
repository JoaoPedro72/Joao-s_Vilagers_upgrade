execute if score @s kills < guard_first_upgrade numero if entity @s[tag=!leather_armored] run function j_villagers_update:ferreiro/melhora_couro
execute if score @s kills < guard_first_upgrade numero if entity @s[tag=!leather_armored] run tag @s add leather_armored

execute if score @s kills > guard_first_upgrade numero if entity @s[tag=!gold_armored] run function j_villagers_update:ferreiro/melhora_ouro
execute if score @s kills > guard_first_upgrade numero if entity @s[tag=!gold_armored] run tag @s add gold_armored

execute if score @s kills > guard_second_upgrade numero if entity @s[tag=!iron_armored] run function j_villagers_update:ferreiro/melhora_ferro
execute if score @s kills > guard_second_upgrade numero if entity @s[tag=!iron_armored] run tag @s add iron_armored

execute if score @s kills > guard_third_upgrade numero if entity @s[tag=!diamond_armored] run function j_villagers_update:ferreiro/melhora_diamante
execute if score @s kills > guard_third_upgrade numero if entity @s[tag=!diamond_armored] run tag @s add diamond_armored
