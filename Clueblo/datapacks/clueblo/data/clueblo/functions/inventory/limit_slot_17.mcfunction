execute if data entity @s Inventory[{Slot:17b}] unless data entity @s Inventory[{Slot:17b,id:"minecraft:clock"}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b,PickupDelay:0s,tag:{dropHelper:1b}}}
execute if data entity @s Inventory[{Slot:17b}] unless data entity @s Inventory[{Slot:17b,id:"minecraft:clock"}] run data modify entity @e[type=minecraft:item,nbt={Item:{tag:{dropHelper:1b}}},limit=1] Item set from entity @p Inventory[{Slot:17b}]
clear @s minecraft:clock{filler17b:1b}
execute if score @s workroom_S matches 1 run replaceitem entity @s container.17 minecraft:clock{filler17b:1b,CustomModelData:9,display:{Name:'[{"translate":"clueblo.room.work","color":"gold"}]'}} 1
execute if score @s workroom_S matches 0 run replaceitem entity @s container.17 minecraft:clock{filler17b:1b,CustomModelData:50,display:{Name:'[{"translate":"clueblo.room.work","color":"gold","strikethrough":"true"}]'}} 1
scoreboard players add @s workroom_S 1
execute if score @s workroom_S matches 2.. run scoreboard players set @s workroom_S 0