execute if data entity @s Inventory[{Slot:35b}] unless data entity @s Inventory[{Slot:35b,id:"minecraft:clock"}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b,PickupDelay:0s,tag:{dropHelper:1b}}}
execute if data entity @s Inventory[{Slot:35b}] unless data entity @s Inventory[{Slot:35b,id:"minecraft:clock"}] run data modify entity @e[type=minecraft:item,nbt={Item:{tag:{dropHelper:1b}}},limit=1] Item set from entity @p Inventory[{Slot:35b}]
clear @s minecraft:clock{filler35b:1b}
item replace entity @s container.35 with minecraft:clock{filler35b:1b,CustomModelData:51,display:{Name:'[{"translate":"clueblo.reset.button","color":"dark_aqua","italic":"false"}]'}} 1

execute as @s[scores={resetCounter=1..}] run tellraw @s [{"translate":"clueblo.reset.question","color":"gray"},{"translate":"gui.yes","color":"aqua","clickEvent":{"action":"run_command","value":"/function clueblo:reset"}},{"text":"/","color":"gray"},{"translate":"gui.no","color":"aqua"}]
scoreboard players set @s resetCounter 1