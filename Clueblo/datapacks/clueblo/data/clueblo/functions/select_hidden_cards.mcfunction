# tp card item to every player if player exists
tag @e[type=minecraft:item,tag=Card,tag=Room,sort=random,limit=1] add HiddenCard
tag @e[type=minecraft:item,tag=Card,tag=Person,sort=random,limit=1] add HiddenCard
tag @e[type=minecraft:item,tag=Card,tag=Weapon,sort=random,limit=1] add HiddenCard

execute if entity @e[type=minecraft:item,tag=HiddenCard,tag=Room,nbt={Item:{tag:{CustomModelData: 1}}}] run scoreboard players set room hiddenCards 1
execute if entity @e[type=minecraft:item,tag=HiddenCard,tag=Room,nbt={Item:{tag:{CustomModelData: 2}}}] run scoreboard players set room hiddenCards 2
execute if entity @e[type=minecraft:item,tag=HiddenCard,tag=Room,nbt={Item:{tag:{CustomModelData: 3}}}] run scoreboard players set room hiddenCards 3
execute if entity @e[type=minecraft:item,tag=HiddenCard,tag=Room,nbt={Item:{tag:{CustomModelData: 4}}}] run scoreboard players set room hiddenCards 4
execute if entity @e[type=minecraft:item,tag=HiddenCard,tag=Room,nbt={Item:{tag:{CustomModelData: 5}}}] run scoreboard players set room hiddenCards 5
execute if entity @e[type=minecraft:item,tag=HiddenCard,tag=Room,nbt={Item:{tag:{CustomModelData: 6}}}] run scoreboard players set room hiddenCards 6
execute if entity @e[type=minecraft:item,tag=HiddenCard,tag=Room,nbt={Item:{tag:{CustomModelData: 7}}}] run scoreboard players set room hiddenCards 7
execute if entity @e[type=minecraft:item,tag=HiddenCard,tag=Room,nbt={Item:{tag:{CustomModelData: 8}}}] run scoreboard players set room hiddenCards 8
execute if entity @e[type=minecraft:item,tag=HiddenCard,tag=Room,nbt={Item:{tag:{CustomModelData: 9}}}] run scoreboard players set room hiddenCards 9

execute if entity @e[type=minecraft:item,tag=HiddenCard,tag=Person,nbt={Item:{tag:{CustomModelData: 11}}}] run scoreboard players set suspect hiddenCards 1
execute if entity @e[type=minecraft:item,tag=HiddenCard,tag=Person,nbt={Item:{tag:{CustomModelData: 12}}}] run scoreboard players set suspect hiddenCards 2
execute if entity @e[type=minecraft:item,tag=HiddenCard,tag=Person,nbt={Item:{tag:{CustomModelData: 13}}}] run scoreboard players set suspect hiddenCards 3
execute if entity @e[type=minecraft:item,tag=HiddenCard,tag=Person,nbt={Item:{tag:{CustomModelData: 14}}}] run scoreboard players set suspect hiddenCards 4
execute if entity @e[type=minecraft:item,tag=HiddenCard,tag=Person,nbt={Item:{tag:{CustomModelData: 15}}}] run scoreboard players set suspect hiddenCards 5
execute if entity @e[type=minecraft:item,tag=HiddenCard,tag=Person,nbt={Item:{tag:{CustomModelData: 16}}}] run scoreboard players set suspect hiddenCards 6

execute if entity @e[type=minecraft:item,tag=HiddenCard,tag=Weapon,nbt={Item:{tag:{CustomModelData: 21}}}] run scoreboard players set weapon hiddenCards 1
execute if entity @e[type=minecraft:item,tag=HiddenCard,tag=Weapon,nbt={Item:{tag:{CustomModelData: 22}}}] run scoreboard players set weapon hiddenCards 2
execute if entity @e[type=minecraft:item,tag=HiddenCard,tag=Weapon,nbt={Item:{tag:{CustomModelData: 23}}}] run scoreboard players set weapon hiddenCards 3
execute if entity @e[type=minecraft:item,tag=HiddenCard,tag=Weapon,nbt={Item:{tag:{CustomModelData: 24}}}] run scoreboard players set weapon hiddenCards 4
execute if entity @e[type=minecraft:item,tag=HiddenCard,tag=Weapon,nbt={Item:{tag:{CustomModelData: 25}}}] run scoreboard players set weapon hiddenCards 5
execute if entity @e[type=minecraft:item,tag=HiddenCard,tag=Weapon,nbt={Item:{tag:{CustomModelData: 26}}}] run scoreboard players set weapon hiddenCards 6

kill @e[type=minecraft:item,tag=Card,tag=HiddenCard]
