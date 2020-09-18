# number player and count total number of players
scoreboard players operation @p[tag=white] rotation_num = total_player helper
scoreboard players add @p[tag=white] rotation_num 1
execute as @p[tag=white] run scoreboard players add total_player helper 1

scoreboard players operation @p[tag=green] rotation_num = total_player helper
scoreboard players add @p[tag=green] rotation_num 1
execute as @p[tag=green] run scoreboard players add total_player helper 1

scoreboard players operation @p[tag=blue] rotation_num = total_player helper
scoreboard players add @p[tag=blue] rotation_num 1
execute as @p[tag=blue] run scoreboard players add total_player helper 1

scoreboard players operation @p[tag=purple] rotation_num = total_player helper
scoreboard players add @p[tag=purple] rotation_num 1
execute as @p[tag=purple] run scoreboard players add total_player helper 1

scoreboard players operation @p[tag=red] rotation_num = total_player helper
scoreboard players add @p[tag=red] rotation_num 1
execute as @p[tag=red] run scoreboard players add total_player helper 1

scoreboard players operation @p[tag=yellow] rotation_num = total_player helper
scoreboard players add @p[tag=yellow] rotation_num 1
execute as @p[tag=yellow] run scoreboard players add total_player helper 1

# remove any music discs the player could have
clear @a minecraft:music_disc_pigstep

# tp to corresponding villager
execute as @p[tag=white] at @e[type=minecraft:villager,tag=White] run tp @s ~ 78 ~ ~ ~
execute as @p[tag=green] at @e[type=minecraft:villager,tag=Green] run tp @s ~ 78 ~ ~ ~
execute as @p[tag=blue] at @e[type=minecraft:villager,tag=Blue] run tp @s ~ 78 ~ ~ ~
execute as @p[tag=purple] at @e[type=minecraft:villager,tag=Purple] run tp @s ~ 78 ~ ~ ~
execute as @p[tag=red] at @e[type=minecraft:villager,tag=Red] run tp @s ~ 78 ~ ~ ~
execute as @p[tag=yellow] at @e[type=minecraft:villager,tag=Yellow] run tp @s ~ 78 ~ ~ ~

scoreboard players set @p[tag=white] block_color 1
scoreboard players set @p[tag=green] block_color 0
scoreboard players set @p[tag=blue] block_color 1
scoreboard players set @p[tag=purple] block_color 0
scoreboard players set @p[tag=red] block_color 1
scoreboard players set @p[tag=yellow] block_color 1

# set active user
tag @a[scores={rotation_num=1},limit=1] add active_player

# only start if at least one player is playing
execute if score total_player helper matches 1.. run function clueblo:distribute_cards

execute if score total_player helper matches 1.. run schedule function clueblo:sound_effects/center_1 20s replace
execute if score total_player helper matches 1.. run schedule function clueblo:sound_effects/corner_1 90s replace

# close entry and exit door
execute if score total_player helper matches 1.. run fill 128 62 123 128 62 124 minecraft:redstone_torch destroy
execute if score total_player helper matches 1.. run fill 137 62 123 137 62 124 minecraft:air destroy

# start move phase
execute if score total_player helper matches 1.. run function clueblo:move/init