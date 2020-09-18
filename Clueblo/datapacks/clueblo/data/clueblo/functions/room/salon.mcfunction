scoreboard players set @s block_color 2
scoreboard players set @s steps 0
clear @a minecraft:player_head

execute as @s[tag=active_player] run tellraw @a [{"text":"[","color":"gray"},{"selector":"@s","color":"aqua"},{"text":"]","color":"gray"},{"translate":"clueblo.suspicion.start","color":"gray"}]
execute as @s[tag=active_player] run tellraw @a [{"text":"[","color":"gray"},{"selector":"@s","color":"aqua"},{"text":"]","color":"gray"},{"translate":"clueblo.suspicion.room1","color":"gray"},{"translate":"clueblo.room.salon","color":"gold"}]

tag @s[tag=active_player] add creat_suspicion
execute as @s[tag=creat_suspicion] run scoreboard players set room helper 1

execute as @s[tag=creat_suspicion] run scoreboard players set Salon questionDisplay 3
execute as @s[tag=creat_suspicion] run scoreboard players set Salon questionD_EN 3