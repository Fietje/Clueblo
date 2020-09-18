# tp villager with right color under the correstonding player
execute as @s[tag=green] as @e[type=minecraft:villager,tag=Green,limit=1] run tp @s ~ 64 ~ ~ 0

# summon armorstand if player has no more steps and teleport him back if he moves more
execute as @s[scores={steps=0},tag=green] unless entity @e[type=minecraft:armor_stand,tag=Green] at @s align xz run summon armor_stand ~0.5 78 ~0.5 {NoGravity:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["Green","PlayerHolder"],DisabledSlots:4144959}
execute as @s[scores={steps=-3..-1},tag=green] at @e[type=minecraft:armor_stand,tag=Green,limit=1] run tp @s ~ ~ ~

# reset if no more steps
execute as @s[scores={steps=-3..-1}] run scoreboard players set @s steps 0

# if player has not rolled and he moves away without rolling or has no more rolles teleport him back
execute as @s[scores={steps=..-11},tag=green] at @e[type=minecraft:armor_stand,tag=Green,limit=1] run tp @s ~ ~ ~

# if player is more than a defined distance from the armorstand tp him back to prevent diagonal movement (only on tiles)
execute at @e[type=minecraft:armor_stand,tag=Green,limit=1] if block ~ 63 ~ minecraft:smooth_stone as @s[tag=green,distance=1.3..] run tp @s ~ ~ ~
execute at @e[type=minecraft:armor_stand,tag=Green,limit=1] if block ~ 63 ~ minecraft:polished_andesite as @s[tag=green,distance=1.3..] run tp @s ~ ~ ~

# reset if not rolled yet
execute as @s[scores={steps=..-11}] run scoreboard players set @s steps -10

# check for position change
function clueblo:move/position_check
