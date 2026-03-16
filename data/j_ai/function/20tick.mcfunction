execute unless score j_village_20_tick j_ticks matches 1 run return fail

#Salva a velocidade do mob na scoreboard para usar em outras funções
execute as @e[tag=AI] store result score @s mob_speed run attribute @s movement_speed get 100

#Controla o tempo entre os pulos dos mobs com IA personalizada
execute as @e[tag=AI] at @s unless block ~ ~-0.5 ~ #j_data:atravessavel unless score @s jump_cooldown >= pulo_cooldown numero run scoreboard players add @s jump_cooldown 1
execute as @e[tag=AI] at @s unless block ~ ~-0.5 ~ #j_data:atravessavel if score @s jump_cooldown > pulo_cooldown numero run scoreboard players remove @s jump_cooldown 1

#Era para fazer o controle do cooldown dos ataques, mas acaboou sendo usado para todos os cooldowns
execute as @e[tag=AI] unless score @s attack_cooldown <= zero numero run scoreboard players remove @s attack_cooldown 1
execute as @e[tag=AI] if score @s attack_cooldown < zero numero run scoreboard players set @s attack_cooldown 0
