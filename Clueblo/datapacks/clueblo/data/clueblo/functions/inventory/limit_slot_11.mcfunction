execute if data entity @s Inventory[{Slot:11b}] unless data entity @s Inventory[{Slot:11b,id:"minecraft:clock"}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b,PickupDelay:0s,tag:{dropHelper:1b}}}
execute if data entity @s Inventory[{Slot:11b}] unless data entity @s Inventory[{Slot:11b,id:"minecraft:clock"}] run data modify entity @e[type=minecraft:item,nbt={Item:{tag:{dropHelper:1b}}},limit=1] Item set from entity @p Inventory[{Slot:11b}]
clear @s minecraft:clock{filler11b:1b}
execute if score @s eating_S matches 1 run replaceitem entity @s container.11 minecraft:clock{filler11b:1b,CustomModelData:3,display:{Name:'[{"translate":"clueblo.room.dining","color":"gold"}]'}} 1
execute if score @s eating_S matches 0 run replaceitem entity @s container.11 minecraft:clock{filler11b:1b,CustomModelData:50,display:{Name:'[{"translate":"clueblo.room.dining","color":"gold","strikethrough":"true"}]'}} 1
scoreboard players add @s eating_S 1
execute if score @s eating_S matches 2.. run scoreboard players set @s eating_S 0