execute if entity @s[scores={attack_cooldown=5}] run item replace entity @s weapon.offhand with bread 1
execute if entity @s[scores={attack_cooldown=1..4}] if score j_village_10_tick j_ticks matches 1 run playsound minecraft:entity.generic.eat neutral @a[distance=..10] ~ ~ ~ 1 1
execute if entity @s[scores={attack_cooldown=1}] run item replace entity @s weapon.offhand with air
execute if entity @s[scores={attack_cooldown=1}] run effect give @s instant_health
execute if entity @s[scores={attack_cooldown=1}] run playsound minecraft:entity.player.burp neutral @a[distance=..10] ~ ~ ~ 1 1
execute if entity @s[scores={attack_cooldown=..1}] run tag @s remove com_fome