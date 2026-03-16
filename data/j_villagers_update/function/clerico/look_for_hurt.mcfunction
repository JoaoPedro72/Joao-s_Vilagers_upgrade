$tag @e[tag=!hurt,tag=$(id).target] remove $(id).target
$execute as @e[tag=$(id).target] unless entity @s[tag=vilage,tag=!golen,tag=hurt] run tag @s remove $(id).target

$execute if entity @e[tag=$(id).target,distance=..25] run return fail

$execute as @e[distance=25..,tag=$(id).target] run tag @s remove $(id).target

execute unless entity @e[tag=hurt,tag=vilage,distance=..3] as @e[tag=hurt,tag=vilage,tag=!golen,distance=..15] anchored eyes facing entity @s eyes positioned ^ ^-0.5 ^1.5 run function j_ai:raycast with storage j:raycast

$execute unless entity @n[tag=$(id).target] run tag @n[tag=hurt,tag=vilage,tag=!golen,distance=..3] add $(id).target

$execute as @e[tag=$(id).target] unless entity @s[tag=vilage,tag=!golen,tag=hurt] run tag @s remove $(id).target

$execute if entity @n[tag=$(id).target] run playsound entity.villager.yes neutral @a[distance=..5]
$execute if entity @n[tag=$(id).target] run tellraw @a[distance=..5] {"text":"<Clerico> Vou te curar!"}