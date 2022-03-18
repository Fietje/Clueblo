execute if data entity @s Inventory[{Slot:9b}] unless data entity @s Inventory[{Slot:9b,id:"minecraft:clock"}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b,PickupDelay:0s,tag:{dropHelper:1b}}}
execute if data entity @s Inventory[{Slot:9b}] unless data entity @s Inventory[{Slot:9b,id:"minecraft:clock"}] run data modify entity @e[type=minecraft:item,nbt={Item:{tag:{dropHelper:1b}}},limit=1] Item set from entity @p Inventory[{Slot:9b}]
clear @s minecraft:clock{filler9b:1b}
execute if score @s hall_S matches 1 run item replace entity @s container.9 with minecraft:clock{filler9b:1b,CustomModelData:1,display:{Name:'[{"translate":"clueblo.room.hall","color":"gold"}]'}} 1
execute if score @s hall_S matches 0 run item replace entity @s container.9 with minecraft:clock{filler9b:1b,CustomModelData:50,display:{Name:'[{"translate":"clueblo.room.hall","color":"gold","strikethrough":"true"}]'}} 1
scoreboard players add @s hall_S 1
execute if score @s hall_S matches 2.. run scoreboard players set @s hall_S 0