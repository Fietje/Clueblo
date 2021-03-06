# tp villager with right color under the correstonding player
execute as @s[tag=white] as @e[type=minecraft:villager,tag=White,limit=1] run tp @s ~ 64 ~ ~ 0

# summon armorstand if player has no more steps and teleport him back if he moves more
execute as @s[scores={steps=0},tag=white] unless entity @e[type=minecraft:armor_stand,tag=White] at @s align xz run summon armor_stand ~0.5 78 ~0.5 {NoGravity:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["White","PlayerHolder"],DisabledSlots:4144959}
execute as @s[scores={steps=-3..-1},tag=white] at @e[type=minecraft:armor_stand,tag=White,limit=1] run tp @s ~ ~ ~

# reset if no more steps
execute as @s[scores={steps=-3..-1}] run scoreboard players set @s steps 0

# if player has not rolled and he moves away without rolling or has no more rolles teleport him back
execute as @s[scores={steps=..-11},tag=white] at @e[type=minecraft:armor_stand,tag=White,limit=1] run tp @s ~ ~ ~

# if player is more than a defined distance from the armorstand tp him back to prevent diagonal movement (only on tiles)
execute at @e[type=minecraft:armor_stand,tag=White,limit=1] if block ~ 63 ~ minecraft:smooth_stone as @s[tag=white,distance=1.3..] run tp @s ~ ~ ~
execute at @e[type=minecraft:armor_stand,tag=White,limit=1] if block ~ 63 ~ minecraft:polished_andesite as @s[tag=white,distance=1.3..] run tp @s ~ ~ ~

# reset if not rolled yet
execute as @s[scores={steps=..-11}] run scoreboard players set @s steps -10

# check for position change
function clueblo:move/position_check
