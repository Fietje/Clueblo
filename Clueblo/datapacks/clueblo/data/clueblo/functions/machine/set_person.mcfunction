# change display on machine
# TODO change leather helmet slot
scoreboard players add suspect selectedCards 1
execute if score suspect selectedCards matches 7.. run scoreboard players set suspect selectedCards 1

execute if score suspect selectedCards matches 1 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.CustomModelData set value 11
execute if score suspect selectedCards matches 1 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.display.Name set value '{"translate":"clueblo.person.white","color":"white"}'

execute if score suspect selectedCards matches 2 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.CustomModelData set value 12
execute if score suspect selectedCards matches 2 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.display.Name set value '{"translate":"clueblo.person.green","color":"green"}'

execute if score suspect selectedCards matches 3 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.CustomModelData set value 13
execute if score suspect selectedCards matches 3 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.display.Name set value '{"translate":"clueblo.person.blue","color":"blue"}'

execute if score suspect selectedCards matches 4 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.CustomModelData set value 14
execute if score suspect selectedCards matches 4 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.display.Name set value '{"translate":"clueblo.person.purple","color":"dark_purple"}'

execute if score suspect selectedCards matches 5 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.CustomModelData set value 15
execute if score suspect selectedCards matches 5 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.display.Name set value '{"translate":"clueblo.person.red","color":"dark_red"}'

execute if score suspect selectedCards matches 6 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.CustomModelData set value 16
execute if score suspect selectedCards matches 6 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.display.Name set value '{"translate":"clueblo.person.yellow","color":"yellow"}'

