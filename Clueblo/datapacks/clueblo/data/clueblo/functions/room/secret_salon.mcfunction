# tp player to other room
tp @s 115 78 146

# kill currently rolling dices and dice inside players inventory
clear @a minecraft:player_head
kill @e[type=item,tag=Dice,tag=!BaseDice,tag=!Fallen]

kill @e[type=armor_stand,tag=PlayerHolderPre]

# set new anchor armor_stand
execute as @s[tag=white] run summon armor_stand 115 78 146 {NoGravity:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["White","PlayerHolder"],DisabledSlots:4144959}
execute as @s[tag=green] run summon armor_stand 115 78 146 {NoGravity:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["Green","PlayerHolder"],DisabledSlots:4144959}
execute as @s[tag=blue] run summon armor_stand 115 78 146 {NoGravity:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["Blue","PlayerHolder"],DisabledSlots:4144959}
execute as @s[tag=purple] run summon armor_stand 115 78 146 {NoGravity:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["Purple","PlayerHolder"],DisabledSlots:4144959}
execute as @s[tag=red] run summon armor_stand 115 78 146 {NoGravity:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["Red","PlayerHolder"],DisabledSlots:4144959}
execute as @s[tag=yellow] run summon armor_stand 115 78 146 {NoGravity:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["Yellow","PlayerHolder"],DisabledSlots:4144959}

# reset trigger
scoreboard players set @s secret_tunnel 0

function clueblo:room/winter