# tp the next questioned player to room if there is one
scoreboard players add questioned helper 1
execute if score questioned helper > total_player helper run scoreboard players set questioned helper 1

# close entry door
fill 137 62 123 137 62 124 minecraft:air destroy

# tp and tag that allready questioned
execute as @a[tag=!questioned,tag=!active_player] if score @s rotation_num = questioned helper run tp @s 137.5 64 123.9 90 5
execute as @a[tag=!questioned,tag=!active_player] if score @s rotation_num = questioned helper run tag @s add in_questioning
execute as @a[tag=!questioned,tag=!active_player] if score @s rotation_num = questioned helper run tag @s add questioned