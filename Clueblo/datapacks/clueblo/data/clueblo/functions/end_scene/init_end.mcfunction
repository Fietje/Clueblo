scoreboard players set gamestate helper 3

execute if score language helper matches 2 run tellraw @a [{"text":"[","color":"gray"},{"selector":"@a[tag=active_player,limit=1]","color":"aqua"},{"text":"]","color":"gray"},{"text":" Ich hab es immer gewusst!!! (","color":"gold"},{"selector":"@a[tag=active_player,limit=1]","color":"aqua"},{"text":" hat gewonnen!)","color":"gold"}]
execute if score language helper matches 1 run tellraw @a [{"text":"[","color":"gray"},{"selector":"@a[tag=active_player,limit=1]","color":"aqua"},{"text":"]","color":"gray"},{"text":" I always knew! (","color":"gold"},{"selector":"@a[tag=active_player,limit=1]","color":"aqua"},{"text":" has won!)","color":"gold"}]

# tellraw @a [{"text":"[","color":"gray"},{"selector":"@a[tag=active_player,limit=1]","color":"aqua"},{"text":"]","color":"gray"},{"text":" Ich hab es immer gewusst!!! (","color":"gold"},{"selector":"@a[tag=active_player,limit=1]","color":"aqua"},{"text":" hat gewonnen!)","color":"gold"}]

execute if score room hiddenCards matches 1 run tp @a[gamemode=adventure] 133 64 108 0 15
execute if score room hiddenCards matches 2 run tp @a[gamemode=adventure] 152 64 107 0 15
execute if score room hiddenCards matches 3 run tp @a[gamemode=adventure] 147 64 129 0 15
execute if score room hiddenCards matches 4 run tp @a[gamemode=adventure] 154 64 143 0 15
execute if score room hiddenCards matches 5 run tp @a[gamemode=adventure] 133 64 143 0 15
execute if score room hiddenCards matches 6 run tp @a[gamemode=adventure] 115 64 145 0 15
execute if score room hiddenCards matches 7 run tp @a[gamemode=adventure] 119 64 130 0 15
execute if score room hiddenCards matches 8 run tp @a[gamemode=adventure] 112 64 118 0 15
execute if score room hiddenCards matches 9 run tp @a[gamemode=adventure] 115 64 104 0 15

playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 10

execute if score suspect hiddenCards matches 1 run tag @e[type=minecraft:villager,tag=White,limit=1] add murder_villager
execute if score suspect hiddenCards matches 2 run tag @e[type=minecraft:villager,tag=Green,limit=1] add murder_villager
execute if score suspect hiddenCards matches 3 run tag @e[type=minecraft:villager,tag=Blue,limit=1] add murder_villager
execute if score suspect hiddenCards matches 4 run tag @e[type=minecraft:villager,tag=Purple,limit=1] add murder_villager
execute if score suspect hiddenCards matches 5 run tag @e[type=minecraft:villager,tag=Red,limit=1] add murder_villager
execute if score suspect hiddenCards matches 6 run tag @e[type=minecraft:villager,tag=Yellow,limit=1] add murder_villager

execute if score weapon hiddenCards matches 1 run function clueblo:end_scene/sword
execute if score weapon hiddenCards matches 2 run function clueblo:end_scene/light
execute if score weapon hiddenCards matches 3 run function clueblo:end_scene/crossbow
execute if score weapon hiddenCards matches 4 run function clueblo:end_scene/rope
execute if score weapon hiddenCards matches 5 run function clueblo:end_scene/chains
execute if score weapon hiddenCards matches 6 run function clueblo:end_scene/pipe

# TODO add fireworks