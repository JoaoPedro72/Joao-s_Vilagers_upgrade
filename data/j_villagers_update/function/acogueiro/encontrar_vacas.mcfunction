
tag @s remove achou_vacas

$tag @e[tag=!agressive,tag=$(id).target] remove $(id).target
$execute if entity @e[tag=$(id).target,distance=..25] run return fail

$execute as @e[distance=25..,tag=$(id).target] run tag @s remove $(id).target 

execute unless entity @e[type=cow,distance=..3,nbt={Age:0}] as @e[type=cow,distance=..15,nbt={Age:0}] anchored eyes facing entity @s eyes positioned ^ ^-0.5 ^1.5 run function j_ai:raycast with storage j:raycast

$execute unless entity @n[tag=$(id).target] run tag @n[type=cow,distance=..3,nbt={Age:0}] add $(id).target

$tag @e[type=!cow,tag=$(id).target] remove $(id).target

$execute if entity @n[tag=$(id).target] run tag @s add achou_vacas