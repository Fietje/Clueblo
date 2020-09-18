# set new active player
tag @a remove active_player
# reset secret_tunnel trigger and set the score back to 0
execute as @a run trigger secret_tunnel set 0
scoreboard players set @a secret_tunnel 0

#find next player
scoreboard players add current_player helper 1
execute if score current_player helper > total_player helper run scoreboard players set current_player helper 1

execute as @a if score @s rotation_num = current_player helper run tag @s add active_player

# enable secret tunnels for active player
scoreboard players enable @a[tag=active_player] secret_tunnel

# skip player if the player is dead
execute as @a[tag=active_player,tag=Dead] if entity @a[tag=!active_player,tag=!Dead,scores={rotation_num=1..}] run function clueblo:move/set_next_player
execute as @a[tag=active_player,tag=Dead] unless entity @a[tag=!active_player,tag=!Dead,scores={rotation_num=1..}] run tellraw @a [{"text":"[","color":"gray"},{"translate":"clueblo.machine.narrator","color":"white"},{"text":"] ","color":"gray"},{"translate":"clueblo.machine.noPlayers","color":"aqua"}]
