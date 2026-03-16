
tag @s remove tem_alvo

$tag @e[tag=!agressive,tag=$(id).target] remove $(id).target
$execute if entity @e[tag=$(id).target,distance=..25] run return fail

$execute as @e[distance=25..,tag=$(id).target] run tag @s remove $(id).target 


execute unless entity @e[tag=agressive,distance=..3] as @e[tag=agressive,type=!creeper,distance=..15] anchored eyes facing entity @s eyes positioned ^ ^-0.5 ^1.5 run function j_ai:raycast with storage j:raycast

$execute unless entity @n[tag=$(id).target] run tag @n[tag=agressive,distance=..3] add $(id).target

$tag @e[type=creeper,tag=$(id).target] remove $(id).target
$tag @e[tag=!agressive,tag=$(id).target] remove $(id).target


$execute if entity @n[tag=$(id).target] run playsound entity.villager.yes neutral @a[distance=..4]
$execute if entity @n[tag=$(id).target] run tellraw @a[distance=..4] {"text":"<$(nome)> Inimigo avistado"}
$execute if entity @n[tag=$(id).target] run tag @s add tem_alvo