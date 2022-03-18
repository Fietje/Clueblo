execute if data entity @s Inventory[{Slot:13b}] unless data entity @s Inventory[{Slot:13b,id:"minecraft:clock"}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b,PickupDelay:0s,tag:{dropHelper:1b}}}
execute if data entity @s Inventory[{Slot:13b}] unless data entity @s Inventory[{Slot:13b,id:"minecraft:clock"}] run data modify entity @e[type=minecraft:item,nbt={Item:{tag:{dropHelper:1b}}},limit=1] Item set from entity @p Inventory[{Slot:13b}]
clear @s minecraft:clock{filler13b:1b}
execute if score @s music_S matches 1 run item replace entity @s container.13 with minecraft:clock{filler13b:1b,CustomModelData:5,display:{Name:'[{"translate":"clueblo.room.music","color":"gold"}]'}} 1
execute if score @s music_S matches 0 run item replace entity @s container.13 with minecraft:clock{filler13b:1b,CustomModelData:50,display:{Name:'[{"translate":"clueblo.room.music","color":"gold","strikethrough":"true"}]'}} 1
scoreboard players add @s music_S 1
execute if score @s music_S matches 2.. run scoreboard players set @s music_S 0