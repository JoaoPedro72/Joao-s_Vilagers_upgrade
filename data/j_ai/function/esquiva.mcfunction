kill @e[tag=j_path_used,tag=!j_path]

summon marker ^ ^ ^-1.5 {Tags:["j_path","j_path_used"]}

execute store result score @s posXalvo run data get entity @n[distance=..2,tag=j_path] Pos[0] 100
execute store result score @s posYalvo run data get entity @n[distance=..2,tag=j_path] Pos[1] 100
execute store result score @s posZalvo run data get entity @n[distance=..2,tag=j_path] Pos[2] 100

execute store result score @s posX run data get entity @s Pos[0] 100
execute store result score @s posY run data get entity @s Pos[1] 100
execute store result score @s posZ run data get entity @s Pos[2] 100

scoreboard players operation @s posXalvo -= @s posX
scoreboard players operation @s posYalvo -= @s posY
scoreboard players operation @s posZalvo -= @s posZ

scoreboard players operation @s posXalvo *= @s mob_speed
scoreboard players operation @s posZalvo *= @s mob_speed

execute store result entity @s Motion[0] double 0.00004 run scoreboard players get @s posXalvo
execute store result entity @s Motion[2] double 0.00004 run scoreboard players get @s posZalvo

tag @e[tag=j_path] remove j_path
kill @e[tag=j_path_used,tag=!j_path]
