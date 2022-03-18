execute if data entity @s Inventory[{Slot:27b}] unless data entity @s Inventory[{Slot:27b,id:"minecraft:clock"}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b,PickupDelay:0s,tag:{dropHelper:1b}}}
execute if data entity @s Inventory[{Slot:27b}] unless data entity @s Inventory[{Slot:27b,id:"minecraft:clock"}] run data modify entity @e[type=minecraft:item,nbt={Item:{tag:{dropHelper:1b}}},limit=1] Item set from entity @p Inventory[{Slot:27b}]
clear @s minecraft:clock{filler27b:1b}
execute as @s[tag=creat_suspicion] run scoreboard players add @s dolch_S 1
execute as @s[tag=creat_suspicion] if score @s dolch_S matches 2.. run scoreboard players set @s dolch_S 0
execute if score @s dolch_S matches 1 run item replace entity @s container.27 with minecraft:clock{filler27b:1b,CustomModelData:21,display:{Name:'[{"translate":"clueblo.weapon.sword","color":"#C4C4C4"}]'}} 1
execute if score @s dolch_S matches 0 run item replace entity @s container.27 with minecraft:clock{filler27b:1b,CustomModelData:50,display:{Name:'[{"translate":"clueblo.weapon.sword","color":"#C4C4C4","strikethrough":"true"}]'}} 1
scoreboard players add @s dolch_S 1
execute if score @s dolch_S matches 2.. run scoreboard players set @s dolch_S 0

execute as @s[tag=creat_suspicion] run tellraw @a [{"text":"[","color":"gray"},{"selector":"@s","color":"aqua"},{"text":"]","color":"gray"},{"translate":"clueblo.suspicion.weapon1","color":"gray"},{"translate":"clueblo.weapon.sword","color":"#C4C4C4"}]
execute as @s[tag=creat_suspicion] run scoreboard players set weapon helper 1

execute as @s[tag=creat_suspicion] run scoreboard players set Dolch questionDisplay 1
execute as @s[tag=creat_suspicion] run scoreboard players reset Leuchter questionDisplay
execute as @s[tag=creat_suspicion] run scoreboard players reset Armbrust questionDisplay
execute as @s[tag=creat_suspicion] run scoreboard players reset Seil questionDisplay
execute as @s[tag=creat_suspicion] run scoreboard players reset Kette questionDisplay
execute as @s[tag=creat_suspicion] run scoreboard players reset Rohrzange questionDisplay

execute as @s[tag=creat_suspicion] run scoreboard players set Dagger questionD_EN 1
execute as @s[tag=creat_suspicion] run scoreboard players reset Lantern questionD_EN
execute as @s[tag=creat_suspicion] run scoreboard players reset Crossbow questionD_EN
execute as @s[tag=creat_suspicion] run scoreboard players reset Rope questionD_EN
execute as @s[tag=creat_suspicion] run scoreboard players reset Chain questionD_EN
execute as @s[tag=creat_suspicion] run scoreboard players reset Pipe_wrench questionD_EN