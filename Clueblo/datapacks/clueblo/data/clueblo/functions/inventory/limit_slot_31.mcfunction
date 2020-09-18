execute if data entity @s Inventory[{Slot:31b}] unless data entity @s Inventory[{Slot:31b,id:"minecraft:clock"}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b,PickupDelay:0s,tag:{dropHelper:1b}}}
execute if data entity @s Inventory[{Slot:31b}] unless data entity @s Inventory[{Slot:31b,id:"minecraft:clock"}] run data modify entity @e[type=minecraft:item,nbt={Item:{tag:{dropHelper:1b}}},limit=1] Item set from entity @p Inventory[{Slot:31b}]
clear @s minecraft:clock{filler31b:1b}
execute as @s[tag=creat_suspicion] run scoreboard players add @s chain_S 1
execute as @s[tag=creat_suspicion] if score @s chain_S matches 2.. run scoreboard players set @s chain_S 0
execute if score @s chain_S matches 1 run replaceitem entity @s container.31 minecraft:clock{filler31b:1b,CustomModelData:25,display:{Name:'[{"translate":"clueblo.weapon.chain","color":"#C4C4C4"}]'}} 1
execute if score @s chain_S matches 0 run replaceitem entity @s container.31 minecraft:clock{filler31b:1b,CustomModelData:50,display:{Name:'[{"translate":"clueblo.weapon.chain","color":"#C4C4C4","strikethrough":"true"}]'}} 1
scoreboard players add @s chain_S 1
execute if score @s chain_S matches 2.. run scoreboard players set @s chain_S 0

execute as @s[tag=creat_suspicion] run tellraw @a [{"text":"[","color":"gray"},{"selector":"@s","color":"aqua"},{"text":"]","color":"gray"},{"translate":"clueblo.suspicion.weapon2","color":"gray"},{"translate":"clueblo.weapon.chain","color":"#C4C4C4"}]
execute as @s[tag=creat_suspicion] run scoreboard players set weapon helper 5

execute as @s[tag=creat_suspicion] run scoreboard players reset Dolch questionDisplay
execute as @s[tag=creat_suspicion] run scoreboard players reset Leuchter questionDisplay
execute as @s[tag=creat_suspicion] run scoreboard players reset Armbrust questionDisplay
execute as @s[tag=creat_suspicion] run scoreboard players reset Seil questionDisplay
execute as @s[tag=creat_suspicion] run scoreboard players set Kette questionDisplay 1
execute as @s[tag=creat_suspicion] run scoreboard players reset Rohrzange questionDisplay

execute as @s[tag=creat_suspicion] run scoreboard players reset Dagger questionD_EN
execute as @s[tag=creat_suspicion] run scoreboard players reset Lantern questionD_EN
execute as @s[tag=creat_suspicion] run scoreboard players reset Crossbow questionD_EN
execute as @s[tag=creat_suspicion] run scoreboard players reset Rope questionD_EN
execute as @s[tag=creat_suspicion] run scoreboard players set Chain questionD_EN 1
execute as @s[tag=creat_suspicion] run scoreboard players reset Pipe_wrench questionD_EN