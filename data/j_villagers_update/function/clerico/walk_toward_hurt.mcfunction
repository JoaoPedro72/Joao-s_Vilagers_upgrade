#Vilage healer AI

$execute unless entity @e[tag=$(id).target] run return fail

$rotate @s facing entity @n[tag=$(id).target] feet

$execute unless entity @n[tag=$(id).target,distance=..3] run function j_ai:move
