# close entry and exit door
fill 128 62 123 128 62 124 minecraft:redstone_torch destroy
fill 137 62 123 137 62 124 minecraft:air destroy

# tp player back to the top
execute as @a[tag=white] at @e[type=minecraft:villager,tag=White,limit=1] run tp @s ~ 78 ~
execute as @a[tag=green] at @e[type=minecraft:villager,tag=Green,limit=1] run tp @s ~ 78 ~
execute as @a[tag=blue] at @e[type=minecraft:villager,tag=Blue,limit=1] run tp @s ~ 78 ~
execute as @a[tag=purple] at @e[type=minecraft:villager,tag=Purple,limit=1] run tp @s ~ 78 ~
execute as @a[tag=red] at @e[type=minecraft:villager,tag=Red,limit=1] run tp @s ~ 78 ~
execute as @a[tag=yellow] at @e[type=minecraft:villager,tag=Yellow,limit=1] run tp @s ~ 78 ~

# remove tags
tag @a remove in_questioning
tag @a remove questioned

# start next gamestate
function clueblo:move/init