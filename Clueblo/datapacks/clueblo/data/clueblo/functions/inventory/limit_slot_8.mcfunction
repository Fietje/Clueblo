execute if data entity @s Inventory[{Slot:8b}] unless data entity @s Inventory[{Slot:8b,id:"minecraft:black_stained_glass_pane"}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b,PickupDelay:0s,tag:{dropHelper:1b}}}
execute if data entity @s Inventory[{Slot:8b}] unless data entity @s Inventory[{Slot:8b,id:"minecraft:black_stained_glass_pane"}] run data modify entity @e[type=minecraft:item,nbt={Item:{tag:{dropHelper:1b}}},limit=1] Item set from entity @p Inventory[{Slot:8b}]
clear @s minecraft:black_stained_glass_pane{filler8b:1b}
item replace entity @s container.8 with minecraft:black_stained_glass_pane{filler8b:1b,display:{Name:'[{"text":"","color":"black"}]'}} 1