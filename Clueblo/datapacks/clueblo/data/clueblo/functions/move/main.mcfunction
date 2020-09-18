# show which player needs to move
title @a actionbar [{"selector":"@a[tag=active_player,limit=1]","color":"aqua"},{"translate":"clueblo.onScreen.currentPlayer","color":"gold"}]

execute if entity @e[type=item,tag=!Dice,nbt={PickupDelay:25s,Item:{id:"minecraft:player_head"}}] run function clueblo:rotate_dice
