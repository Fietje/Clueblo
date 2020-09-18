# check for position change
execute if score @s steps matches ..0 unless score @s block_color matches 0 if block ~ 63 ~ minecraft:smooth_stone run scoreboard players remove @s steps 1
execute if score @s steps matches ..0 unless score @s block_color matches 1 if block ~ 63 ~ minecraft:polished_andesite run scoreboard players remove @s steps 1

execute if score @s steps matches ..0 unless score @s block_color matches 2 if block ~ 62 ~ minecraft:gray_concrete run scoreboard players remove @s steps 1
execute if score @s steps matches ..0 unless score @s block_color matches 3 if block ~ 62 ~ minecraft:green_concrete run scoreboard players remove @s steps 1
execute if score @s steps matches ..0 unless score @s block_color matches 4 if block ~ 62 ~ minecraft:orange_concrete run scoreboard players remove @s steps 1
execute if score @s steps matches ..0 unless score @s block_color matches 5 if block ~ 62 ~ minecraft:purple_concrete run scoreboard players remove @s steps 1
execute if score @s steps matches ..0 unless score @s block_color matches 6 if block ~ 62 ~ minecraft:cyan_concrete run scoreboard players remove @s steps 1
execute if score @s steps matches ..0 unless score @s block_color matches 7 if block ~ 62 ~ minecraft:light_gray_concrete run scoreboard players remove @s steps 1
execute if score @s steps matches ..0 unless score @s block_color matches 8 if block ~ 62 ~ minecraft:yellow_concrete run scoreboard players remove @s steps 1
execute if score @s steps matches ..0 unless score @s block_color matches 9 if block ~ 62 ~ minecraft:pink_concrete run scoreboard players remove @s steps 1
execute if score @s steps matches ..0 unless score @s block_color matches 10 if block ~ 62 ~ minecraft:brown_concrete run scoreboard players remove @s steps 1

execute if score @s steps matches 1.. unless score @s block_color matches 0 if block ~ 63 ~ minecraft:smooth_stone run function clueblo:helper/white_check
execute if score @s steps matches 1.. unless score @s block_color matches 1 if block ~ 63 ~ minecraft:polished_andesite run function clueblo:helper/black_check

execute if score @s steps matches 1.. unless score @s block_color matches 2 unless score @s last_room matches 2 if block ~ 62 ~ minecraft:gray_concrete run function clueblo:room/salon
execute if score @s steps matches 1.. unless score @s block_color matches 3 unless score @s last_room matches 3 if block ~ 62 ~ minecraft:green_concrete run function clueblo:room/eating
execute if score @s steps matches 1.. unless score @s block_color matches 4 unless score @s last_room matches 4 if block ~ 62 ~ minecraft:orange_concrete run function clueblo:room/kitchen
execute if score @s steps matches 1.. unless score @s block_color matches 5 unless score @s last_room matches 5 if block ~ 62 ~ minecraft:purple_concrete run function clueblo:room/music
execute if score @s steps matches 1.. unless score @s block_color matches 6 unless score @s last_room matches 6 if block ~ 62 ~ minecraft:cyan_concrete run function clueblo:room/winter
execute if score @s steps matches 1.. unless score @s block_color matches 7 unless score @s last_room matches 7 if block ~ 62 ~ minecraft:light_gray_concrete run function clueblo:room/bill
execute if score @s steps matches 1.. unless score @s block_color matches 8 unless score @s last_room matches 8 if block ~ 62 ~ minecraft:yellow_concrete run function clueblo:room/bib
execute if score @s steps matches 1.. unless score @s block_color matches 9 unless score @s last_room matches 9 if block ~ 62 ~ minecraft:pink_concrete run function clueblo:room/workroom
execute if score @s steps matches 1.. unless score @s block_color matches 10 unless score @s last_room matches 10 if block ~ 62 ~ minecraft:brown_concrete run function clueblo:room/hall
