execute if data entity @s Inventory[{Slot:15b}] unless data entity @s Inventory[{Slot:15b,id:"minecraft:clock"}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b,PickupDelay:0s,tag:{dropHelper:1b}}}
execute if data entity @s Inventory[{Slot:15b}] unless data entity @s Inventory[{Slot:15b,id:"minecraft:clock"}] run data modify entity @e[type=minecraft:item,nbt={Item:{tag:{dropHelper:1b}}},limit=1] Item set from entity @p Inventory[{Slot:15b}]
clear @s minecraft:clock{filler15b:1b}
execute if score @s bill_S matches 1 run replaceitem entity @s container.15 minecraft:clock{filler15b:1b,CustomModelData:7,display:{Name:'[{"translate":"clueblo.room.billiard","color":"gold"}]'}} 1
execute if score @s bill_S matches 0 run replaceitem entity @s container.15 minecraft:clock{filler15b:1b,CustomModelData:50,display:{Name:'[{"translate":"clueblo.room.billiard","color":"gold","strikethrough":"true"}]'}} 1
scoreboard players add @s bill_S 1
execute if score @s bill_S matches 2.. run scoreboard players set @s bill_S 0