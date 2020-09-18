execute if score tut_timer helper matches 0 run title @a title {"text":"9 Rooms","color":"gold"}
execute if score tut_timer helper matches 0 run tp @a 134 70 102 0 45.5

execute if score tut_timer helper matches 15 run tp @a 152 70 101 0 45.5

execute if score tut_timer helper matches 30 run tp @a 151 70 121 0 45.5

execute if score tut_timer helper matches 45 run tp @a 152.5 70 140 0 45.5

execute if score tut_timer helper matches 60 run tp @a 133.8 70 137.0 0 45.5

execute if score tut_timer helper matches 75 run tp @a 115.4 70 140.9 0 45.5

execute if score tut_timer helper matches 90 run tp @a 115.4 70 127.0 0 45.5

execute if score tut_timer helper matches 105 run tp @a 116.6 70 114.8 0 45.5

execute if score tut_timer helper matches 120 run tp @a 115.9 70 101.5 0 45.5

execute if score tut_timer helper matches 135 run title @a title {"text":"6 Weapons","color":"gold"}
execute if score tut_timer helper matches 135 run tp @a 149.4 64.5 148.8 -180 0

execute if score tut_timer helper matches 135 run summon item 147 65.5 146 {Tags:["Card","Weapon"],Item:{id:"minecraft:clock",Count:1b,tag:{display:{Name:'{"translate":"clueblo.weapon.sword","color":"#C4C4C4","italic":false}'},CustomModelData:21,card:1b}}}
execute if score tut_timer helper matches 150 run summon item 148.3 65.5 146 {Tags:["Card","Weapon"],Item:{id:"minecraft:clock",Count:1b,tag:{display:{Name:'{"translate":"clueblo.weapon.lantern","color":"#C4C4C4","italic":false}'},CustomModelData:22,card:1b}}}
execute if score tut_timer helper matches 165 run summon item 149.1 65.5 146 {Tags:["Card","Weapon"],Item:{id:"minecraft:clock",Count:1b,tag:{display:{Name:'{"translate":"clueblo.weapon.crossbow","color":"#C4C4C4","italic":false}'},CustomModelData:23,card:1b}}}
execute if score tut_timer helper matches 180 run summon item 149.9 65.5 146 {Tags:["Card","Weapon"],Item:{id:"minecraft:clock",Count:1b,tag:{display:{Name:'{"translate":"clueblo.weapon.rope","color":"#C4C4C4","italic":false}'},CustomModelData:24,card:1b}}}
execute if score tut_timer helper matches 195 run summon item 150.7 65.5 146 {Tags:["Card","Weapon"],Item:{id:"minecraft:clock",Count:1b,tag:{display:{Name:'{"translate":"clueblo.weapon.chain","color":"#C4C4C4","italic":false}'},CustomModelData:25,card:1b}}}
execute if score tut_timer helper matches 210 run summon item 151 65.5 146 {Tags:["Card","Weapon"],Item:{id:"minecraft:clock",Count:1b,tag:{display:{Name:'{"translate":"clueblo.weapon.pipe","color":"#C4C4C4","italic":false}'},CustomModelData:26,card:1b}}}

execute if score tut_timer helper matches 240 run title @a title {"text":"6 Suspects","color":"gold"}
execute if score tut_timer helper matches 240 run tp @a 145.9 65.6 123.6 -52.3 9.2

execute if score tut_timer helper matches 240 run tp @e[type=minecraft:villager,tag=Purple] 152.5 64 124.5 0 7
execute if score tut_timer helper matches 255 run tp @e[type=minecraft:villager,tag=Green] 152.5 64 130.5 180 7
execute if score tut_timer helper matches 270 run tp @e[type=minecraft:villager,tag=Blue] 146.5 64 127.5 -90 7
execute if score tut_timer helper matches 285 run tp @e[type=minecraft:villager,tag=Red] 149.5 64 124.5 0 7
execute if score tut_timer helper matches 300 run tp @e[type=minecraft:villager,tag=Yellow] 155.5 64 127.5 90 7
execute if score tut_timer helper matches 315 run tp @e[type=minecraft:villager,tag=White] 149.5 64 130.5 180 7

execute if score tut_timer helper matches 330 run title @a title [{"text":"1 ","color":"gold"},{"text":"Murder","color":"dark_red"}]
execute if score tut_timer helper matches 330 run tp @a 173.0 64 53 0 0

# execute if score tut_timer helper matches 2000 run title @a title {"text":"Roam through the villa","color":"gold"}

# execute if score tut_timer helper matches 2500 run title @a title {"text":"Question your friends","color":"gold"}

# execute if score tut_timer helper matches 3000 run title @a title {"text":"Make notes!","color":"gold"}

# execute if score tut_timer helper matches 0 run title @a title [{"text":"And find the ","color":"gold"},{"text":"MURDERER","color":"dark_red"}]

# execute if score tut_timer helper matches 0 run title @a title [{"text":"PLAY ","color":"gold"},{"text":"CLUEBLO","color":"aqua"},{"text":" NOW!","color":"gold"}]

scoreboard players add tut_timer helper 1