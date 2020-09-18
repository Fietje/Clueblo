# catch written_book
execute if entity @s[tag=chooseName,tag=CSBuyChick] if data entity @s Inventory[{Slot:6b}] if data entity @s Inventory[{Slot:6b,id:"minecraft:written_book"}] if entity @e[type=minecraft:chicken,tag=needsName] run function harvestcube:chick_shop/name_chicken
execute if entity @s[tag=chooseName,tag=CSHatchingChick] if data entity @s Inventory[{Slot:6b}] if data entity @s Inventory[{Slot:6b,id:"minecraft:written_book"}] if entity @e[type=minecraft:chicken,tag=needsName] run function harvestcube:chicken/name_chicken
clear @s minecraft:written_book
