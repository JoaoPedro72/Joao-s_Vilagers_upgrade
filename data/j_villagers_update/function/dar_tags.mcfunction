tag @s add vilage
tag @s add AI

tag @s remove agressive
tag @s remove undead
tag @s remove illager
tag @s remove piglin

execute as @s[tag=!illager,tag=vilage] run tag @s add illager_enemy
execute as @s[tag=!undead,tag=vilage] run tag @s add undead_enemy
execute as @s[tag=!piglin,tag=vilage] run tag @s add piglin_enemy
