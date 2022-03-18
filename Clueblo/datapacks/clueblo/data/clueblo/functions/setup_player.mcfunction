scoreboard players set @s rotation_num 0
scoreboard players set @s last_room 0
scoreboard players set @s block_color 0

scoreboard players set @s hall_S 1
scoreboard players set @s salon_S 1
scoreboard players set @s eating_S 1
scoreboard players set @s kitchen_S 1
scoreboard players set @s music_S 1
scoreboard players set @s winter_S 1
scoreboard players set @s bill_S 1
scoreboard players set @s bib_S 1
scoreboard players set @s workroom_S 1

scoreboard players set @s white_S 1
scoreboard players set @s green_S 1
scoreboard players set @s blue_S 1
scoreboard players set @s purple_S 1
scoreboard players set @s red_S 1
scoreboard players set @s yellow_S 1

scoreboard players set @s dolch_S 1
scoreboard players set @s lighter_S 1
scoreboard players set @s crossbow_S 1
scoreboard players set @s rope_S 1
scoreboard players set @s chain_S 1
scoreboard players set @s pipe_S 1

scoreboard players set @s steps 0

scoreboard players set @s secret_tunnel 0

scoreboard players set @s resetCounter 0

tag @s remove white
tag @s remove green
tag @s remove blue
tag @s remove purple
tag @s remove red
tag @s remove yellow

tag @s remove creat_suspicion
tag @s remove active_player
tag @s remove Dead

tag @s remove questioned

tag @s add PlayMusic

item replace entity @s armor.head with minecraft:air

clear @s
effect clear @s

tp @s 133.5 64 95 0 5 
gamemode adventure @s

tag @s add registered