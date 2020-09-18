# check if the player selection is right
execute if score suspect selectedCards = suspect hiddenCards if score room selectedCards = room hiddenCards if score weapon selectedCards = weapon hiddenCards run function clueblo:end_scene/init_end
execute unless score suspect selectedCards = suspect hiddenCards run tag @a[tag=active_player] add Dead
execute unless score room selectedCards = room hiddenCards run tag @a[tag=active_player] add Dead
execute unless score weapon selectedCards = weapon hiddenCards run tag @a[tag=active_player] add Dead

# reset machine
scoreboard players set suspect selectedCards 0
scoreboard players set room selectedCards 0
scoreboard players set weapon selectedCards 0

execute positioned 133 63 131 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.CustomModelData set value 50
execute positioned 133 63 131 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.display.Name set value '{"translate":"clueblo.machine.room","color":"gold"}'

execute positioned 131 63 131 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.CustomModelData set value 50
execute positioned 131 63 131 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.display.Name set value '{"translate":"clueblo.machine.person","color":"gold"}'

execute positioned 129 63 131 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.CustomModelData set value 50
execute positioned 129 63 131 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.display.Name set value '{"translate":"clueblo.machine.weapon","color":"gold"}'

setblock 135 65 130 minecraft:lever[facing=north,face=wall,powered=false] destroy

# if dead announce in chat and end questioning and play some effects
execute as @a[tag=Dead,tag=active_player] at @s run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 2
execute as @a[tag=Dead,tag=active_player] at @s run summon minecraft:lightning_bolt 133.30 69.00 127.68
execute as @a[tag=Dead,tag=active_player] at @s run summon minecraft:lightning_bolt 133 69.00 127
execute as @a[tag=Dead,tag=active_player] at @s run summon minecraft:lightning_bolt 133.80 69.00 127.68
execute as @a[tag=Dead,tag=active_player] at @s run summon minecraft:lightning_bolt 134 69.00 128
execute as @a[tag=Dead,tag=active_player] run effect give @s minecraft:blindness 6 0
execute as @a[tag=Dead,tag=active_player] run tellraw @a [{"text":"[","color":"gray"},{"translate":"clueblo.machine.narrator","color":"white"},{"text":"] ","color":"gray"},{"selector":"@a[tag=Dead]","color":"aqua"},{"translate":"clueblo.machine.wrong","color":"gray"}]
execute as @a[tag=Dead,tag=active_player] run function clueblo:questioning/end
