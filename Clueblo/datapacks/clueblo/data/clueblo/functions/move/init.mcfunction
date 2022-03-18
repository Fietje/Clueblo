# reset suspicion
scoreboard players set suspect helper 0
scoreboard players set room helper 0
scoreboard players set weapon helper 0

scoreboard players reset * questionDisplay
scoreboard players reset * questionD_EN

# reset dices
clear @a minecraft:player_head
function clueblo:summon_base_dices

# set new active player
function clueblo:move/set_next_player

# set current gamestate
scoreboard players set gamestate helper 1

scoreboard players set @a[tag=active_player] steps -10
execute as @a[tag=active_player,limit=1] run scoreboard players operation @s last_room = @s block_color

kill @e[type=armor_stand,tag=PlayerHolder]

execute as @a[tag=active_player,tag=white] run kill @e[type=minecraft:armor_stand,tag=White]
execute as @a[tag=active_player,tag=green] run kill @e[type=minecraft:armor_stand,tag=Green]
execute as @a[tag=active_player,tag=blue] run kill @e[type=minecraft:armor_stand,tag=Blue]
execute as @a[tag=active_player,tag=purple] run kill @e[type=minecraft:armor_stand,tag=Purple]
execute as @a[tag=active_player,tag=red] run kill @e[type=minecraft:armor_stand,tag=Red]
execute as @a[tag=active_player,tag=yellow] run kill @e[type=minecraft:armor_stand,tag=Yellow]

# give player two dices
item replace entity @a[tag=active_player,limit=1] container.8 with minecraft:player_head{display:{Name:'{"translate":"clueblo.dice.name"}'},SkullOwner:{Id:[I;1719126018,-1744418856,-1189114273,1353348557],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmUyMmMyOThlN2M2MzM2YWYxNzkwOWFjMWYxZWU2ODM0YjU4YjFhM2NjOTlhYmEyNTVjYTdlYWViNDc2MTczIn19fQ=="}]}}} 2

# summon armorstand if player has not rolled and teleport him back if he moves away without rolling
execute as @a[tag=active_player,tag=white] at @s align xz run summon armor_stand ~0.5 78 ~0.5 {NoGravity:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["White","PlayerHolderPre"],DisabledSlots:4144959}
execute as @a[tag=active_player,tag=green] at @s align xz run summon armor_stand ~0.5 78 ~0.5 {NoGravity:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["Green","PlayerHolderPre"],DisabledSlots:4144959}
execute as @a[tag=active_player,tag=blue] at @s align xz run summon armor_stand ~0.5 78 ~0.5 {NoGravity:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["Blue","PlayerHolderPre"],DisabledSlots:4144959}
execute as @a[tag=active_player,tag=purple] at @s align xz run summon armor_stand ~0.5 78 ~0.5 {NoGravity:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["Purple","PlayerHolderPre"],DisabledSlots:4144959}
execute as @a[tag=active_player,tag=red] at @s align xz run summon armor_stand ~0.5 78 ~0.5 {NoGravity:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["Red","PlayerHolderPre"],DisabledSlots:4144959}
execute as @a[tag=active_player,tag=yellow] at @s align xz run summon armor_stand ~0.5 78 ~0.5 {NoGravity:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["Yellow","PlayerHolderPre"],DisabledSlots:4144959}

# /execute as @a at @s run playsound minecraft:ambient.cave ambient @a ~ ~ ~