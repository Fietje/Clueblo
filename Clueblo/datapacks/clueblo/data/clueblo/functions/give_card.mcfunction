# tp card item to every player if player exists
execute as @p[tag=white] at @s run tp @e[type=minecraft:item,tag=Card,tag=!Taken,sort=random,limit=1] @s
execute as @p[tag=white] at @s run tag @e[type=minecraft:item,tag=Card,sort=nearest,limit=1] add Taken

execute as @p[tag=green] at @s run tp @e[type=minecraft:item,tag=Card,tag=!Taken,sort=random,limit=1] @s
execute as @p[tag=green] at @s run tag @e[type=minecraft:item,tag=Card,sort=nearest,limit=1] add Taken

execute as @p[tag=purple] at @s run tp @e[type=minecraft:item,tag=Card,tag=!Taken,sort=random,limit=1] @s
execute as @p[tag=purple] at @s run tag @e[type=minecraft:item,tag=Card,sort=nearest,limit=1] add Taken

execute as @p[tag=red] at @s run tp @e[type=minecraft:item,tag=Card,tag=!Taken,sort=random,limit=1] @s
execute as @p[tag=red] at @s run tag @e[type=minecraft:item,tag=Card,sort=nearest,limit=1] add Taken

execute as @p[tag=yellow] at @s run tp @e[type=minecraft:item,tag=Card,tag=!Taken,sort=random,limit=1] @s
execute as @p[tag=yellow] at @s run tag @e[type=minecraft:item,tag=Card,sort=nearest,limit=1] add Taken

execute as @p[tag=blue] at @s run tp @e[type=minecraft:item,tag=Card,tag=!Taken,sort=random,limit=1] @s
execute as @p[tag=blue] at @s run tag @e[type=minecraft:item,tag=Card,sort=nearest,limit=1] add Taken

execute if entity @e[type=minecraft:item,tag=Card] run schedule function clueblo:give_card 10t replace