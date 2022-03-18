execute if data entity @s Inventory[{Slot:21b}] unless data entity @s Inventory[{Slot:21b,id:"minecraft:clock"}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b,PickupDelay:0s,tag:{dropHelper:1b}}}
execute if data entity @s Inventory[{Slot:21b}] unless data entity @s Inventory[{Slot:21b,id:"minecraft:clock"}] run data modify entity @e[type=minecraft:item,nbt={Item:{tag:{dropHelper:1b}}},limit=1] Item set from entity @p Inventory[{Slot:21b}]
clear @s minecraft:clock{filler21b:1b}
execute as @s[tag=creat_suspicion] run scoreboard players add @s purple_S 1
execute as @s[tag=creat_suspicion] if score @s purple_S matches 2.. run scoreboard players set @s purple_S 0
execute if score @s purple_S matches 1 run item replace entity @s container.21 with minecraft:clock{filler21b:1b,CustomModelData:14,display:{Name:'[{"translate":"clueblo.person.purple","color":"dark_purple"}]'}} 1
execute if score @s purple_S matches 0 run item replace entity @s container.21 with minecraft:clock{filler21b:1b,CustomModelData:50,display:{Name:'[{"translate":"clueblo.person.purple","color":"dark_purple","strikethrough":"true"}]'}} 1
scoreboard players add @s purple_S 1
execute if score @s purple_S matches 2.. run scoreboard players set @s purple_S 0

execute as @s[tag=creat_suspicion] run tellraw @a [{"text":"[","color":"gray"},{"selector":"@s","color":"aqua"},{"text":"]","color":"gray"},{"text":" --> ","color":"gray"},{"translate":"clueblo.person.purple","color":"dark_purple"}]
execute as @s[tag=creat_suspicion] run scoreboard players set suspect helper 4

execute as @s[tag=creat_suspicion] run scoreboard players reset Frau_Weiß questionDisplay
execute as @s[tag=creat_suspicion] run scoreboard players reset Reverend_Green questionDisplay
execute as @s[tag=creat_suspicion] run scoreboard players reset Baronin_von_Porz questionDisplay
execute as @s[tag=creat_suspicion] run scoreboard players set Prof._Bloom questionDisplay 2
execute as @s[tag=creat_suspicion] run scoreboard players reset Fräulein_Gloria questionDisplay
execute as @s[tag=creat_suspicion] run scoreboard players reset Oberst_von_Gatow questionDisplay

execute as @s[tag=creat_suspicion] run scoreboard players reset Miss_White questionD_EN
execute as @s[tag=creat_suspicion] run scoreboard players reset Reverend_Green questionD_EN
execute as @s[tag=creat_suspicion] run scoreboard players reset Mrs._Water questionD_EN
execute as @s[tag=creat_suspicion] run scoreboard players set Prof._Bloom questionD_EN 2
execute as @s[tag=creat_suspicion] run scoreboard players reset Miss_Scar questionD_EN
execute as @s[tag=creat_suspicion] run scoreboard players reset Colonel_Gatow questionD_EN