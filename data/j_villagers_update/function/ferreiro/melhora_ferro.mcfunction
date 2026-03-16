item modify entity @s armor.chest {function:"minecraft:set_item",item:"iron_chestplate"}
item modify entity @s armor.legs {function:"minecraft:set_item",item:"iron_leggings"}
item modify entity @s armor.feet {function:"minecraft:set_item",item:"iron_boots"}

item modify entity @s[tag=AI_guarda] weapon.mainhand {function:"minecraft:set_item",item:"iron_sword"}

scoreboard players set @s j_dano 6

tag @s remove j_guard.enchanted
playsound entity.player.levelup neutral @a[distance=..10] ~ ~ ~ 1 1 1