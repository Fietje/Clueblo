execute if data entity @s Inventory[{Slot:34b}] unless data entity @s Inventory[{Slot:34b,id:"minecraft:black_stained_glass_pane"}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b,PickupDelay:0s,tag:{dropHelper:1b}}}
execute if data entity @s Inventory[{Slot:34b}] unless data entity @s Inventory[{Slot:34b,id:"minecraft:black_stained_glass_pane"}] run data modify entity @e[type=minecraft:item,nbt={Item:{tag:{dropHelper:1b}}},limit=1] Item set from entity @p Inventory[{Slot:34b}]
clear @s minecraft:black_stained_glass_pane{filler34b:1b}
replaceitem entity @s container.34 minecraft:black_stained_glass_pane{filler34b:1b,display:{Name:'[{"text":"","color":"black"}]'}} 1