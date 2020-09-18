# show which player needs to move
title @a actionbar [{"selector":"@a[tag=active_player,limit=1]","color":"aqua"},{"text":" ist am Zug","color":"gold"}]

execute if entity @e[type=item,tag=!Dice,nbt={PickupDelay:25s,Item:{id:"minecraft:player_head"}}] run function clueblo:rotate_dice

# tp villager with right color under the correstonding player
execute as @s[tag=white] as @e[type=minecraft:villager,tag=White,limit=1] run tp @s ~ 64 ~ ~ 0
execute as @s[tag=green] as @e[type=minecraft:villager,tag=Green,limit=1] run tp @s ~ 64 ~ ~ 0
execute as @s[tag=blue] as @e[type=minecraft:villager,tag=Blue,limit=1] run tp @s ~ 64 ~ ~ 0
execute as @s[tag=purple] as @e[type=minecraft:villager,tag=Purple,limit=1] run tp @s ~ 64 ~ ~ 0
execute as @s[tag=red] as @e[type=minecraft:villager,tag=Red,limit=1] run tp @s ~ 64 ~ ~ 0
execute as @s[tag=yellow] as @e[type=minecraft:villager,tag=Yellow,limit=1] run tp @s ~ 64 ~ ~ 0

# summon armorstand if player has no more steps and teleport him back if he moves more
execute as @s[scores={steps=0},tag=white] unless entity @e[type=minecraft:armor_stand,tag=White] at @s align xz run summon armor_stand ~0.5 78 ~0.5 {NoGravity:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["White","PlayerHolder"],DisabledSlots:4144959}
execute as @s[scores={steps=0},tag=green] unless entity @e[type=minecraft:armor_stand,tag=Green] at @s align xz run summon armor_stand ~0.5 78 ~0.5 {NoGravity:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["Green","PlayerHolder"],DisabledSlots:4144959}
execute as @s[scores={steps=0},tag=blue] unless entity @e[type=minecraft:armor_stand,tag=Blue] at @s align xz run summon armor_stand ~0.5 78 ~0.5 {NoGravity:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["Blue","PlayerHolder"],DisabledSlots:4144959}
execute as @s[scores={steps=0},tag=purple] unless entity @e[type=minecraft:armor_stand,tag=Purple] at @s align xz run summon armor_stand ~0.5 78 ~0.5 {NoGravity:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["Purple","PlayerHolder"],DisabledSlots:4144959}
execute as @s[scores={steps=0},tag=red] unless entity @e[type=minecraft:armor_stand,tag=Red] at @s align xz run summon armor_stand ~0.5 78 ~0.5 {NoGravity:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["Red","PlayerHolder"],DisabledSlots:4144959}
execute as @s[scores={steps=0},tag=yellow] unless entity @e[type=minecraft:armor_stand,tag=Yellow] at @s align xz run summon armor_stand ~0.5 78 ~0.5 {NoGravity:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["Yellow","PlayerHolder"],DisabledSlots:4144959}

execute as @s[scores={steps=-3..-1},tag=white] at @e[type=minecraft:armor_stand,tag=White,limit=1] run tp @s ~ ~ ~
execute as @s[scores={steps=-3..-1},tag=green] at @e[type=minecraft:armor_stand,tag=Green,limit=1] run tp @s ~ ~ ~
execute as @s[scores={steps=-3..-1},tag=blue] at @e[type=minecraft:armor_stand,tag=Blue,limit=1] run tp @s ~ ~ ~
execute as @s[scores={steps=-3..-1},tag=purple] at @e[type=minecraft:armor_stand,tag=Purple,limit=1] run tp @s ~ ~ ~
execute as @s[scores={steps=-3..-1},tag=red] at @e[type=minecraft:armor_stand,tag=Red,limit=1] run tp @s ~ ~ ~
execute as @s[scores={steps=-3..-1},tag=yellow] at @e[type=minecraft:armor_stand,tag=Yellow,limit=1] run tp @s ~ ~ ~

# reset if no more steps
execute as @s[scores={steps=-3..-1}] run scoreboard players set @s steps 0

# if player has not rolled and he moves away without rolling or has no more rolles teleport him back
execute as @s[scores={steps=..-11},tag=white] at @e[type=minecraft:armor_stand,tag=White,limit=1] run tp @s ~ ~ ~
execute as @s[scores={steps=..-11},tag=green] at @e[type=minecraft:armor_stand,tag=Green,limit=1] run tp @s ~ ~ ~
execute as @s[scores={steps=..-11},tag=blue] at @e[type=minecraft:armor_stand,tag=Blue,limit=1] run tp @s ~ ~ ~
execute as @s[scores={steps=..-11},tag=purple] at @e[type=minecraft:armor_stand,tag=Purple,limit=1] run tp @s ~ ~ ~
execute as @s[scores={steps=..-11},tag=red] at @e[type=minecraft:armor_stand,tag=Red,limit=1] run tp @s ~ ~ ~
execute as @s[scores={steps=..-11},tag=yellow] at @e[type=minecraft:armor_stand,tag=Yellow,limit=1] run tp @s ~ ~ ~

# if player is more than a defined distance from the armorstand tp him back to prevent diagonal movement (only on tiles)
execute at @e[type=minecraft:armor_stand,tag=White,limit=1] if block ~ 63 ~ minecraft:smooth_stone as @s[tag=white,distance=1.3..] run tp @s ~ ~ ~
execute at @e[type=minecraft:armor_stand,tag=Green,limit=1] if block ~ 63 ~ minecraft:smooth_stone as @s[tag=green,distance=1.3..] run tp @s ~ ~ ~
execute at @e[type=minecraft:armor_stand,tag=Blue,limit=1] if block ~ 63 ~ minecraft:smooth_stone as @s[tag=blue,distance=1.3..] run tp @s ~ ~ ~
execute at @e[type=minecraft:armor_stand,tag=Purple,limit=1] if block ~ 63 ~ minecraft:smooth_stone as @s[tag=purple,distance=1.3..] run tp @s ~ ~ ~
execute at @e[type=minecraft:armor_stand,tag=Red,limit=1] if block ~ 63 ~ minecraft:smooth_stone as @s[tag=red,distance=1.3..] run tp @s ~ ~ ~
execute at @e[type=minecraft:armor_stand,tag=Yellow,limit=1] if block ~ 63 ~ minecraft:smooth_stone as @s[tag=yellow,distance=1.3..] run tp @s ~ ~ ~

execute at @e[type=minecraft:armor_stand,tag=White,limit=1] if block ~ 63 ~ minecraft:polished_andesite as @s[tag=white,distance=1.3..] run tp @s ~ ~ ~
execute at @e[type=minecraft:armor_stand,tag=Green,limit=1] if block ~ 63 ~ minecraft:polished_andesite as @s[tag=green,distance=1.3..] run tp @s ~ ~ ~
execute at @e[type=minecraft:armor_stand,tag=Blue,limit=1] if block ~ 63 ~ minecraft:polished_andesite as @s[tag=blue,distance=1.3..] run tp @s ~ ~ ~
execute at @e[type=minecraft:armor_stand,tag=Purple,limit=1] if block ~ 63 ~ minecraft:polished_andesite as @s[tag=purple,distance=1.3..] run tp @s ~ ~ ~
execute at @e[type=minecraft:armor_stand,tag=Red,limit=1] if block ~ 63 ~ minecraft:polished_andesite as @s[tag=red,distance=1.3..] run tp @s ~ ~ ~
execute at @e[type=minecraft:armor_stand,tag=Yellow,limit=1] if block ~ 63 ~ minecraft:polished_andesite as @s[tag=yellow,distance=1.3..] run tp @s ~ ~ ~

# reset if not rolled yet
execute as @s[scores={steps=..-11}] run scoreboard players set @s steps -10

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

# secret tunnels, secret tunnels, WUHU
execute as @s[tag=active_player,tag=!creat_suspicion,tag=OnSecret] unless block ~ 59 ~ minecraft:black_concrete run tag @s remove OnSecret
execute if score @s[tag=active_player,tag=!creat_suspicion,tag=!OnSecret] block_color matches 2 if block ~ 59 ~ minecraft:black_concrete run tellraw @s [{"text":"Möchtest du den ","color":"gray"},{"text":"Geheimgang","color":"aqua"},{"text":" zum ","color":"gray"},{"text":"Wintergarten","color":"aqua"},{"text":" benutzen? ","color":"gray"},{"text":"Ja","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger secret_tunnel"}},{"text":"/","color":"gray"},{"text":"Nein","color":"aqua"}]
execute if score @s[tag=active_player,tag=!creat_suspicion,tag=!OnSecret] block_color matches 4 if block ~ 59 ~ minecraft:black_concrete run tellraw @s [{"text":"Möchtest du den ","color":"gray"},{"text":"Geheimgang","color":"aqua"},{"text":" zum ","color":"gray"},{"text":"Arbeitszimmer","color":"aqua"},{"text":" benutzen? ","color":"gray"},{"text":"Ja","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger secret_tunnel"}},{"text":"/","color":"gray"},{"text":"Nein","color":"aqua"}]
execute if score @s[tag=active_player,tag=!creat_suspicion,tag=!OnSecret] block_color matches 6 if block ~ 59 ~ minecraft:black_concrete run tellraw @s [{"text":"Möchtest du den ","color":"gray"},{"text":"Geheimgang","color":"aqua"},{"text":" zum ","color":"gray"},{"text":"Salon","color":"aqua"},{"text":" benutzen? ","color":"gray"},{"text":"Ja","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger secret_tunnel"}},{"text":"/","color":"gray"},{"text":"Nein","color":"aqua"}]
execute if score @s[tag=active_player,tag=!creat_suspicion,tag=!OnSecret] block_color matches 9 if block ~ 59 ~ minecraft:black_concrete run tellraw @s [{"text":"Möchtest du den ","color":"gray"},{"text":"Geheimgang","color":"aqua"},{"text":" zur ","color":"gray"},{"text":"Küche","color":"aqua"},{"text":" benutzen? ","color":"gray"},{"text":"Ja","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger secret_tunnel"}},{"text":"/","color":"gray"},{"text":"Nein","color":"aqua"}]
execute as @s[tag=active_player,tag=!creat_suspicion,tag=!OnSecret] if block ~ 59 ~ minecraft:black_concrete run tag @s add OnSecret
# convert trigger in real command
execute as @s[tag=active_player,tag=!creat_suspicion,scores={secret_tunnel=1..,block_color=2}] at @s if block ~ 59 ~ minecraft:black_concrete run function clueblo:room/secret_salon
execute as @s[tag=active_player,tag=!creat_suspicion,scores={secret_tunnel=1..,block_color=4}] at @s if block ~ 59 ~ minecraft:black_concrete run function clueblo:room/secret_kitchen
execute as @s[tag=active_player,tag=!creat_suspicion,scores={secret_tunnel=1..,block_color=6}] at @s if block ~ 59 ~ minecraft:black_concrete run function clueblo:room/secret_winter
execute as @s[tag=active_player,tag=!creat_suspicion,scores={secret_tunnel=1..,block_color=9}] at @s if block ~ 59 ~ minecraft:black_concrete run function clueblo:room/secret_workroom

# if player has no more steps and is not inside a room end move
execute if score @s[scores={steps=0},tag=active_player,tag=!creat_suspicion] block_color matches 0..1 run function clueblo:move/init

# if player inside room and have full suspicion start questioning
execute as @s[tag=active_player,tag=creat_suspicion] if score suspect helper matches 1.. if score room helper matches 1.. if score weapon helper matches 1.. run tellraw @a [{"text":"[","color":"gray"},{"selector":"@s","color":"aqua"},{"text":"]","color":"gray"},{"text":" den ","color":"gray"},{"text":"Mord","color":"dark_red"},{"text":" begangen zu haben!","color":"gray"}]
execute as @s[tag=active_player,tag=creat_suspicion] if score suspect helper matches 1.. if score room helper matches 1.. if score weapon helper matches 1.. run function clueblo:questioning/init