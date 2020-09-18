execute if data entity @s Inventory[{Slot:18b}] unless data entity @s Inventory[{Slot:18b,id:"minecraft:clock"}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b,PickupDelay:0s,tag:{dropHelper:1b}}}
execute if data entity @s Inventory[{Slot:18b}] unless data entity @s Inventory[{Slot:18b,id:"minecraft:clock"}] run data modify entity @e[type=minecraft:item,nbt={Item:{tag:{dropHelper:1b}}},limit=1] Item set from entity @p Inventory[{Slot:18b}]
clear @s minecraft:clock{filler18b:1b}
execute as @s[tag=creat_suspicion] run scoreboard players add @s white_S 1
execute as @s[tag=creat_suspicion] if score @s white_S matches 2.. run scoreboard players set @s white_S 0
execute if score @s white_S matches 1 run replaceitem entity @s container.18 minecraft:clock{filler18b:1b,CustomModelData:11,display:{Name:'[{"translate":"clueblo.person.white","color":"white"}]'}} 1
execute if score @s white_S matches 0 run replaceitem entity @s container.18 minecraft:clock{filler18b:1b,CustomModelData:50,display:{Name:'[{"translate":"clueblo.person.white","color":"white","strikethrough":"true"}]'}} 1
scoreboard players add @s white_S 1
execute if score @s white_S matches 2.. run scoreboard players set @s white_S 0

execute as @s[tag=creat_suspicion] run tellraw @a [{"text":"[","color":"gray"},{"selector":"@s","color":"aqua"},{"text":"]","color":"gray"},{"text":" --> ","color":"gray"},{"translate":"clueblo.person.white","color":"white"}]
execute as @s[tag=creat_suspicion] run scoreboard players set suspect helper 1

execute as @s[tag=creat_suspicion] run scoreboard players set Frau_Weiß questionDisplay 2
execute as @s[tag=creat_suspicion] run scoreboard players reset Reverend_Green questionDisplay
execute as @s[tag=creat_suspicion] run scoreboard players reset Baronin_von_Porz questionDisplay
execute as @s[tag=creat_suspicion] run scoreboard players reset Prof._Bloom questionDisplay
execute as @s[tag=creat_suspicion] run scoreboard players reset Fräulein_Gloria questionDisplay
execute as @s[tag=creat_suspicion] run scoreboard players reset Oberst_von_Gatow questionDisplay

execute as @s[tag=creat_suspicion] run scoreboard players set Miss_White questionD_EN 2
execute as @s[tag=creat_suspicion] run scoreboard players reset Reverend_Green questionD_EN
execute as @s[tag=creat_suspicion] run scoreboard players reset Mrs._Water questionD_EN
execute as @s[tag=creat_suspicion] run scoreboard players reset Prof._Bloom questionD_EN
execute as @s[tag=creat_suspicion] run scoreboard players reset Miss_Scar questionD_EN
execute as @s[tag=creat_suspicion] run scoreboard players reset Colonel_Gatow questionD_EN