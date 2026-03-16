scoreboard players add j_village_10_tick j_ticks 1
scoreboard players add j_village_20_tick j_ticks 1
scoreboard players add j_village_100_tick j_ticks 1
scoreboard players add j_village_300_tick j_ticks 1
scoreboard players add j_village_12000_tick j_ticks 1

execute if score j_village_10_tick j_ticks matches 10 run scoreboard players set j_village_10_tick j_ticks 0
execute if score j_village_20_tick j_ticks matches 20 run scoreboard players set j_village_20_tick j_ticks 0
execute if score j_village_100_tick j_ticks matches 100 run scoreboard players set j_village_100_tick j_ticks 0
execute if score j_village_300_tick j_ticks matches 300 run scoreboard players set j_village_300_tick j_ticks 0
execute if score j_village_12000_tick j_ticks matches 12000 run scoreboard players set j_village_12000_tick j_ticks 0