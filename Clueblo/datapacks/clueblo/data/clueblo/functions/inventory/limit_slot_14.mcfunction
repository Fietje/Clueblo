execute if data entity @s Inventory[{Slot:14b}] unless data entity @s Inventory[{Slot:14b,id:"minecraft:clock"}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b,PickupDelay:0s,tag:{dropHelper:1b}}}
execute if data entity @s Inventory[{Slot:14b}] unless data entity @s Inventory[{Slot:14b,id:"minecraft:clock"}] run data modify entity @e[type=minecraft:item,nbt={Item:{tag:{dropHelper:1b}}},limit=1] Item set from entity @p Inventory[{Slot:14b}]
clear @s minecraft:clock{filler14b:1b}
execute if score @s winter_S matches 1 run replaceitem entity @s container.14 minecraft:clock{filler14b:1b,CustomModelData:6,display:{Name:'[{"translate":"clueblo.room.winter","color":"gold"}]'}} 1
execute if score @s winter_S matches 0 run replaceitem entity @s container.14 minecraft:clock{filler14b:1b,CustomModelData:50,display:{Name:'[{"translate":"clueblo.room.winter","color":"gold","strikethrough":"true"}]'}} 1
scoreboard players add @s winter_S 1
execute if score @s winter_S matches 2.. run scoreboard players set @s winter_S 0