# open entry door
execute as @a[x=128,y=64,z=123,dx=0,dy=1,dz=1] run fill 137 62 123 137 62 124 minecraft:redstone_torch destroy

# tp player out of room when there are in the door and remove tags
tag @a[x=128,y=64,z=123,dx=0,dy=1,dz=1] remove in_questioning
execute as @a[tag=white,limit=1,x=128,y=64,z=123,dx=0,dy=1,dz=1] at @e[type=minecraft:villager,tag=White,limit=1] run tp @s ~ 78 ~
execute as @a[tag=green,limit=1,x=128,y=64,z=123,dx=0,dy=1,dz=1] at @e[type=minecraft:villager,tag=Green,limit=1] run tp @s ~ 78 ~
execute as @a[tag=blue,limit=1,x=128,y=64,z=123,dx=0,dy=1,dz=1] at @e[type=minecraft:villager,tag=Blue,limit=1] run tp @s ~ 78 ~
execute as @a[tag=purple,limit=1,x=128,y=64,z=123,dx=0,dy=1,dz=1] at @e[type=minecraft:villager,tag=Purple,limit=1] run tp @s ~ 78 ~
execute as @a[tag=red,limit=1,x=128,y=64,z=123,dx=0,dy=1,dz=1] at @e[type=minecraft:villager,tag=Red,limit=1] run tp @s ~ 78 ~
execute as @a[tag=yellow,limit=1,x=128,y=64,z=123,dx=0,dy=1,dz=1] at @e[type=minecraft:villager,tag=Yellow,limit=1] run tp @s ~ 78 ~
