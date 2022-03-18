execute if data entity @s Inventory[{Slot:22b}] unless data entity @s Inventory[{Slot:22b,id:"minecraft:leather_helmet"}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b,PickupDelay:0s,tag:{dropHelper:1b}}}
execute if data entity @s Inventory[{Slot:22b}] unless data entity @s Inventory[{Slot:22b,id:"minecraft:leather_helmet"}] run data modify entity @e[type=minecraft:item,nbt={Item:{tag:{dropHelper:1b}}},limit=1] Item set from entity @p Inventory[{Slot:22b}]
clear @s minecraft:leather_helmet{filler22b:1b}
clear @s minecraft:clock{filler22b:1b}
execute as @s[tag=creat_suspicion] run scoreboard players add @s red_S 1
execute as @s[tag=creat_suspicion] if score @s red_S matches 2.. run scoreboard players set @s red_S 0
execute if score @s red_S matches 1 run item replace entity @s container.22 with minecraft:leather_helmet{filler22b:1b,CustomModelData:15,display:{color:11546150,Name:'[{"translate":"clueblo.person.red","color":"dark_red"}]'}} 1
execute if score @s red_S matches 0 run item replace entity @s container.22 with minecraft:clock{filler22b:1b,CustomModelData:50,display:{Name:'[{"translate":"clueblo.person.red","color":"dark_red","strikethrough":"true"}]'}} 1
scoreboard players add @s red_S 1
execute if score @s red_S matches 2.. run scoreboard players set @s red_S 0

execute as @s[tag=creat_suspicion] run tellraw @a [{"text":"[","color":"gray"},{"selector":"@s","color":"aqua"},{"text":"]","color":"gray"},{"text":" --> ","color":"gray"},{"translate":"clueblo.person.red","color":"dark_red"}]
execute as @s[tag=creat_suspicion] run scoreboard players set suspect helper 5

execute as @s[tag=creat_suspicion] run scoreboard players reset Frau_Weiß questionDisplay
execute as @s[tag=creat_suspicion] run scoreboard players reset Reverend_Green questionDisplay
execute as @s[tag=creat_suspicion] run scoreboard players reset Baronin_von_Porz questionDisplay
execute as @s[tag=creat_suspicion] run scoreboard players reset Prof._Bloom questionDisplay
execute as @s[tag=creat_suspicion] run scoreboard players set Fräulein_Gloria questionDisplay 2
execute as @s[tag=creat_suspicion] run scoreboard players reset Oberst_von_Gatow questionDisplay

execute as @s[tag=creat_suspicion] run scoreboard players reset Miss_White questionD_EN
execute as @s[tag=creat_suspicion] run scoreboard players reset Reverend_Green questionD_EN
execute as @s[tag=creat_suspicion] run scoreboard players reset Mrs._Water questionD_EN
execute as @s[tag=creat_suspicion] run scoreboard players reset Prof._Bloom questionD_EN
execute as @s[tag=creat_suspicion] run scoreboard players set Miss_Scar questionD_EN 2
execute as @s[tag=creat_suspicion] run scoreboard players reset Colonel_Gatow questionD_EN