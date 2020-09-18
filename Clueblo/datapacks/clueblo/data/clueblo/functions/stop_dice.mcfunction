tag @s add Fallen

# set steps score to 0 if no dice was rolled before
execute if score @a[tag=active_player,limit=1] steps matches ..-10 run kill @e[type=armor_stand,tag=PlayerHolderPre]
execute if score @a[tag=active_player,limit=1] steps matches ..-10 run scoreboard players set @a[tag=active_player] steps 0

# add rolled number to steps
function clueblo:helper/generate_random_number
scoreboard players operation @a[tag=active_player,limit=1] steps += @s random

# set right display to dice
execute if score @s random matches 6 run data modify entity @s Item.tag.SkullOwner set from entity @e[type=minecraft:item,tag=BaseDice6,limit=1] Item.tag.SkullOwner
execute if score @s random matches 5 run data modify entity @s Item.tag.SkullOwner set from entity @e[type=minecraft:item,tag=BaseDice5,limit=1] Item.tag.SkullOwner
execute if score @s random matches 4 run data modify entity @s Item.tag.SkullOwner set from entity @e[type=minecraft:item,tag=BaseDice4,limit=1] Item.tag.SkullOwner
execute if score @s random matches 3 run data modify entity @s Item.tag.SkullOwner set from entity @e[type=minecraft:item,tag=BaseDice3,limit=1] Item.tag.SkullOwner
execute if score @s random matches 2 run data modify entity @s Item.tag.SkullOwner set from entity @e[type=minecraft:item,tag=BaseDice2,limit=1] Item.tag.SkullOwner
execute if score @s random matches 1 run data modify entity @s Item.tag.SkullOwner set from entity @e[type=minecraft:item,tag=BaseDice1,limit=1] Item.tag.SkullOwner
