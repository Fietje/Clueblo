execute if data entity @s Inventory[{Slot:103b}] unless data entity @s Inventory[{Slot:103b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b,PickupDelay:0s,tag:{dropHelper:1b}}}
execute if data entity @s Inventory[{Slot:103b}] unless data entity @s Inventory[{Slot:103b}] run data modify entity @e[type=minecraft:item,nbt={Item:{tag:{dropHelper:1b}}},limit=1] Item set from entity @p Inventory[{Slot:103b}]
clear @s minecraft:iron_helmet{filler103b:1b}
clear @s minecraft:turtle_helmet{filler103b:1b}
clear @s minecraft:diamond_helmet{filler103b:1b}
clear @s minecraft:netherite_helmet{filler103b:1b}
clear @s minecraft:leather_helmet{filler103b:1b}
clear @s minecraft:golden_helmet{filler103b:1b}

replaceitem entity @s[tag=white] armor.head minecraft:iron_helmet{filler103b:1b,display:{Name:'[{"text":"Frau Weiß","color":"white","italic":"false"}]'}} 1
replaceitem entity @s[tag=green] armor.head minecraft:turtle_helmet{filler103b:1b,display:{Name:'[{"text":"Reverend Grün","color":"green"}]'}} 1
replaceitem entity @s[tag=blue] armor.head minecraft:diamond_helmet{filler103b:1b,display:{Name:'[{"text":"Baronin von Porz","color":"blue"}]'}} 1
replaceitem entity @s[tag=purple] armor.head minecraft:netherite_helmet{filler103b:1b,display:{Name:'[{"text":"Prof. Bloom","color":"dark_purple"}]'}} 1
replaceitem entity @s[tag=red] armor.head minecraft:leather_helmet{filler103b:1b,display:{color:11546150, Name:'[{"text":"Fräulein Gloria","color":"dark_red"}]'}} 1
replaceitem entity @s[tag=yellow] armor.head minecraft:golden_helmet{filler103b:1b,display:{Name:'[{"text":"Oberst von Gatow","color":"yellow"}]'}} 1
