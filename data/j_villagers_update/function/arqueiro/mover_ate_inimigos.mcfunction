
$execute if entity @s[tag=tem_alvo] unless entity @n[tag=$(id).target] run scoreboard players add @s kills 1
$execute if entity @s[tag=tem_alvo] unless entity @n[tag=$(id).target] run tag @s remove tem_alvo

$execute unless entity @n[tag=$(id).target] run scoreboard players set @s attack_cooldown 3
$execute unless entity @n[tag=$(id).target] run return fail

$execute as @n[tag=$(id).target,tag=!agressive] run return fail

tag @s add tem_alvo

$execute if score j_village_20_tick j_ticks matches 1 if score @s j_vida_atual > dez numero run rotate @s facing entity @n[tag=$(id).target] feet
execute if score @s j_vida_atual <= dez numero run rotate @s ~180 ~


$execute if score @s j_vida_atual > dez numero unless entity @n[tag=$(id).target,distance=..10] run function j_ai:move

$execute if score @s j_vida_atual > dez numero if entity @n[tag=$(id).target,distance=..8] run function j_ai:esquiva


$execute if entity @n[tag=$(id).target,distance=..10] if score @s attack_cooldown matches 0 run playsound minecraft:entity.arrow.shoot neutral @a[distance=..10] ~ ~ ~ 1 1
$execute if entity @n[tag=$(id).target,distance=..10] if score @s attack_cooldown matches 0 run function j_ai:arrow
$execute if entity @n[tag=$(id).target,distance=..10] if score @s attack_cooldown matches 0 run scoreboard players set @s attack_cooldown 3

