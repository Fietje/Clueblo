# change display on machine
scoreboard players add room selectedCards 1
execute if score room selectedCards matches 10.. run scoreboard players set room selectedCards 1

execute if score room selectedCards matches 1 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.CustomModelData set value 1
execute if score room selectedCards matches 1 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.display.Name set value '{"translate":"clueblo.room.hall","color":"gold"}'

execute if score room selectedCards matches 2 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.CustomModelData set value 2
execute if score room selectedCards matches 2 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.display.Name set value '{"translate":"clueblo.room.salon","color":"gold"}'

execute if score room selectedCards matches 3 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.CustomModelData set value 3
execute if score room selectedCards matches 3 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.display.Name set value '{"translate":"clueblo.room.dining","color":"gold"}'

execute if score room selectedCards matches 4 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.CustomModelData set value 4
execute if score room selectedCards matches 4 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.display.Name set value '{"translate":"clueblo.room.kitchen","color":"gold"}'

execute if score room selectedCards matches 5 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.CustomModelData set value 5
execute if score room selectedCards matches 5 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.display.Name set value '{"translate":"clueblo.room.music","color":"gold"}'

execute if score room selectedCards matches 6 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.CustomModelData set value 6
execute if score room selectedCards matches 6 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.display.Name set value '{"translate":"clueblo.room.winter","color":"gold"}'

execute if score room selectedCards matches 7 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.CustomModelData set value 7
execute if score room selectedCards matches 7 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.display.Name set value '{"translate":"clueblo.room.billiard","color":"gold"}'

execute if score room selectedCards matches 8 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.CustomModelData set value 8
execute if score room selectedCards matches 8 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.display.Name set value '{"translate":"clueblo.room.library","color":"gold"}'

execute if score room selectedCards matches 9 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.CustomModelData set value 9
execute if score room selectedCards matches 9 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.display.Name set value '{"translate":"clueblo.room.work","color":"gold"}'
