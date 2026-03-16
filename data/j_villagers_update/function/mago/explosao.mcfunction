particle minecraft:flame ~ ~ ~ 2 0 0 0.05 0
particle minecraft:flame ~ ~ ~ -2 0 0 0.05 0
particle minecraft:flame ~ ~ ~ 0 0 2 0.05 0
particle minecraft:flame ~ ~ ~ 0 0 -2 0.05 0
particle minecraft:flame ~ ~ ~ 0 2 0 0.05 0
particle minecraft:flame ~ ~ ~ 0 -2 0 0.05 0

particle minecraft:flame ~ ~ ~ 2 0 2 0.05 0
particle minecraft:flame ~ ~ ~ -2 0 2 0.05 0
particle minecraft:flame ~ ~ ~ 2 0 -2 0.05 0
particle minecraft:flame ~ ~ ~ -2 0 -2 0.05 0

particle minecraft:flame ~ ~ ~ 2 2 0 0.05 0
particle minecraft:flame ~ ~ ~ -2 2 0 0.05 0
particle minecraft:flame ~ ~ ~ 0 2 2 0.05 0
particle minecraft:flame ~ ~ ~ 0 2 -2 0.05 0

particle minecraft:flame ~ ~ ~ 2 -2 0 0.05 0
particle minecraft:flame ~ ~ ~ -2 -2 0 0.05 0
particle minecraft:flame ~ ~ ~ 0 -2 2 0.05 0
particle minecraft:flame ~ ~ ~ 0 -2 -2 0.05 0

playsound entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 1 1 1

execute as @e[tag=agressive,distance=..2.5,type=!creeper] run damage @s 17 magic by @n[tag=AI_mago]
execute as @e[tag=agressive,distance=..2.5,type=!creeper] run effect give @s slowness 4 2 true
execute as @e[tag=agressive,distance=..2.5,type=!creeper] run data merge entity @s {Fire:100}

kill @s