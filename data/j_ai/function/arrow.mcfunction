summon arrow ^ ^ ^2 {Tags:["new"]}
data modify entity @n[type=arrow] damage set value 5

data modify entity @n[tag=new] Owner set from entity @e[distance=..1,tag=AI_arqueiro,limit=1] UUID

rotate @n[tag=new] ~ ~

execute store result score @s posX run data get entity @s Pos[0] 5
execute store result score @s posY run data get entity @s Pos[1] 5
execute store result score @s posZ run data get entity @s Pos[2] 5

execute as @n[tag=new,type=arrow] store result score @s posX run data get entity @s Pos[0] 5
execute as @n[tag=new,type=arrow] store result score @s posY run data get entity @s Pos[1] 5
execute as @n[tag=new,type=arrow] store result score @s posZ run data get entity @s Pos[2] 5

scoreboard players operation @n[tag=new] posX -= @s posX
scoreboard players operation @n[tag=new] posY -= @s posY
scoreboard players operation @n[tag=new] posZ -= @s posZ

execute anchored eyes run tp @n[tag=new] ^ ^ ^1

execute as @n[tag=new] run function j_ai:launch
execute as @n[tag=new] run tag @s remove new
