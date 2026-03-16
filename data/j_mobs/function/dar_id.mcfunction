execute as @n[tag=!custom,type=#j_data:need_id,tag=!has_id] unless score @s ids >= zero numero run scoreboard players add $global ids 1
execute as @n[tag=!custom,type=#j_data:need_id,tag=!has_id] unless score @s ids >= zero numero run scoreboard players operation @s ids = $global ids
execute as @n[tag=!custom,type=#j_data:need_id,tag=!has_id] run tag @s add has_id
