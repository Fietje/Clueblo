# change display on machine
scoreboard players add weapon selectedCards 1
execute if score weapon selectedCards matches 7.. run scoreboard players set weapon selectedCards 1

execute if score weapon selectedCards matches 1 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.CustomModelData set value 21
execute if score weapon selectedCards matches 1 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.display.Name set value '{"translate":"clueblo.weapon.sword","color":"#C4C4C4"}'

execute if score weapon selectedCards matches 2 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.CustomModelData set value 22
execute if score weapon selectedCards matches 2 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.display.Name set value '{"translate":"clueblo.weapon.lantern","color":"#C4C4C4"}'

execute if score weapon selectedCards matches 3 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.CustomModelData set value 23
execute if score weapon selectedCards matches 3 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.display.Name set value '{"translate":"clueblo.weapon.crossbow","color":"#C4C4C4"}'

execute if score weapon selectedCards matches 4 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.CustomModelData set value 24
execute if score weapon selectedCards matches 4 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.display.Name set value '{"translate":"clueblo.weapon.rope","color":"#C4C4C4"}'

execute if score weapon selectedCards matches 5 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.CustomModelData set value 25
execute if score weapon selectedCards matches 5 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.display.Name set value '{"translate":"clueblo.weapon.chain","color":"#C4C4C4"}'

execute if score weapon selectedCards matches 6 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.CustomModelData set value 26
execute if score weapon selectedCards matches 6 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.display.Name set value '{"translate":"clueblo.weapon.pipe","color":"#C4C4C4"}'

