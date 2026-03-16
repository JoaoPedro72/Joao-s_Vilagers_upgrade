item modify entity @s armor.head j_villagers_update:encantar_raro
item modify entity @s armor.chest j_villagers_update:encantar_raro
item modify entity @s armor.legs j_villagers_update:encantar_raro
item modify entity @s armor.feet j_villagers_update:encantar_raro

item modify entity @s weapon.mainhand j_villagers_update:encantar_raro
item modify entity @s weapon.offhand j_villagers_update:encantar_raro

playsound minecraft:block.enchantment_table.use neutral @a[distance=..10] ~ ~ ~ 10 1
tag @s add j_guard.enchanted