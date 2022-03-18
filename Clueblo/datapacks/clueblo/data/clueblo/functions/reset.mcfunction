gamerule sendCommandFeedback false

function clueblo:summon_base_dices

execute if score language helper matches 2 run scoreboard objectives setdisplay sidebar questionDisplay
execute if score language helper matches 1 run scoreboard objectives setdisplay sidebar questionD_EN

scoreboard players set gamestate helper 0
scoreboard players set total_player helper 0
scoreboard players set @a rotation_num 0
scoreboard players set @a last_room 0
scoreboard players set @a block_color 0

scoreboard players set @a hall_S 1
scoreboard players set @a salon_S 1
scoreboard players set @a eating_S 1
scoreboard players set @a kitchen_S 1
scoreboard players set @a music_S 1
scoreboard players set @a winter_S 1
scoreboard players set @a bill_S 1
scoreboard players set @a bib_S 1
scoreboard players set @a workroom_S 1

scoreboard players set @a white_S 1
scoreboard players set @a green_S 1
scoreboard players set @a blue_S 1
scoreboard players set @a purple_S 1
scoreboard players set @a red_S 1
scoreboard players set @a yellow_S 1

scoreboard players set @a dolch_S 1
scoreboard players set @a lighter_S 1
scoreboard players set @a crossbow_S 1
scoreboard players set @a rope_S 1
scoreboard players set @a chain_S 1
scoreboard players set @a pipe_S 1

scoreboard players set @a steps 0

scoreboard players set @a secret_tunnel 0

scoreboard players set @a resetCounter 0

scoreboard players reset * questionDisplay
scoreboard players reset * questionD_EN

scoreboard players set tut_timer helper 0
# schedule function clueblo:tutorial/tutorial_deutsch 1t replace
# schedule function clueblo:tutorial/tutorial_english 1t replace

team leave @a

team add goldTeam
team modify goldTeam color gold
# german
team join goldTeam Halle
team join goldTeam Salon
team join goldTeam Speisezimmer
team join goldTeam Küche
team join goldTeam Musikzimmer
team join goldTeam Wintergarten
team join goldTeam Billardzimmer
team join goldTeam Bibiliothek
team join goldTeam Arbeitszimmer
# english
team join goldTeam Hall
team join goldTeam Salon
team join goldTeam Dining_room
team join goldTeam Kitchen
team join goldTeam Music_room
team join goldTeam Winter_garden
team join goldTeam Billiard_room
team join goldTeam Library
team join goldTeam Work_room

team add grayTeam
team modify grayTeam color gray
# german
team join grayTeam Dolch
team join grayTeam Leuchter
team join grayTeam Armbrust
team join grayTeam Seil
team join grayTeam Kette
team join grayTeam Rohrzange
# english
team join grayTeam Dagger
team join grayTeam Lantern
team join grayTeam Crossbow
team join grayTeam Rope
team join grayTeam Chain
team join grayTeam Pipe_wrench

team add greenTeam
team modify greenTeam color green
team join greenTeam Reverend_Green
# team join greenTeam Reverend_Green

team add blueTeam
team modify blueTeam color blue
team join blueTeam Baronin_von_Porz
team join blueTeam Mrs._Water

team add purpTeam
team modify purpTeam color dark_purple
team join purpTeam Prof._Bloom
# team join purpTeam Prof._Bloom

team add redTeam
team modify redTeam color dark_red
team join redTeam Fräulein_Gloria
team join redTeam Miss_Scar

team add yellowTeam
team modify yellowTeam color yellow
team join yellowTeam Oberst_von_Gatow
team join yellowTeam Colonel_Gatow

scoreboard players set suspect helper 0
scoreboard players set room helper 0
scoreboard players set weapon helper 0

scoreboard players set suspect hiddenCards 0
scoreboard players set room hiddenCards 0
scoreboard players set weapon hiddenCards 0

scoreboard players set suspect selectedCards 0
scoreboard players set room selectedCards 0
scoreboard players set weapon selectedCards 0

execute positioned 133 63 131 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.CustomModelData set value 50
execute positioned 133 63 131 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.display.Name set value '{"translate":"clueblo.machine.room","color":"gold"}'

execute positioned 131 63 131 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.CustomModelData set value 50
execute positioned 131 63 131 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.display.Name set value '{"translate":"clueblo.machine.person","color":"gold"}'

execute positioned 129 63 131 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.CustomModelData set value 50
execute positioned 129 63 131 run data modify entity @e[type=minecraft:item_frame,distance=..3,sort=nearest,limit=1] Item.tag.display.Name set value '{"translate":"clueblo.machine.weapon","color":"gold"}'

tag @a remove white
tag @a remove green
tag @a remove blue
tag @a remove purple
tag @a remove red
tag @a remove yellow

tag @a remove creat_suspicion
tag @a remove active_player
tag @a remove Dead

tag @a remove questioned

tag @e[type=minecraft:villager] remove murder_villager

schedule clear clueblo:sound_effects/center_1
schedule clear clueblo:sound_effects/center_2
schedule clear clueblo:sound_effects/corner_1
schedule clear clueblo:sound_effects/corner_2
schedule clear clueblo:sound_effects/corner_3
schedule clear clueblo:sound_effects/corner_4
stopsound @a 

item replace entity @a armor.head with minecraft:air 

clear @a
effect clear @a

kill @e[type=minecraft:villager,tag=PlayerNPC]
kill @e[type=minecraft:armor_stand,tag=PlayerHolder]
kill @e[type=minecraft:armor_stand,tag=PlayerHolderPre]
kill @e[type=minecraft:armor_stand,tag=murder_show]

kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:clock"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:leather_helmet"}}]

summon minecraft:villager 110.5 64 113.5 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["PlayerNPC","Purple"],CustomName:'{"translate":"clueblo.person.purple","color":"light_purple"}',VillagerData:{profession:"minecraft:butcher"},VillagerData:{type:"minecraft:swamp"},Offers:{},Rotation:[-90F,0F]}
summon minecraft:villager 128.5 64 151.5 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["PlayerNPC","Green"],CustomName:'{"translate":"clueblo.person.green","color":"green"}',VillagerData:{profession:"minecraft:nitwit"},VillagerData:{type:"minecraft:swamp"},Offers:{},Rotation:[179F,0F]}
summon minecraft:villager 110.5 64 139.5 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["PlayerNPC","Blue"],CustomName:'{"translate":"clueblo.person.blue","color":"blue"}',VillagerData:{profession:"minecraft:fletcher"},VillagerData:{type:"minecraft:snow"},Offers:{},Rotation:[-90F,0F]}
summon minecraft:villager 142.5 64 103.5 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["PlayerNPC","Red"],CustomName:'{"translate":"clueblo.person.red","color":"red"}',VillagerData:{profession:"minecraft:fisherman"},VillagerData:{type:"minecraft:savanna"},Offers:{},Rotation:[0F,0F]}
summon minecraft:villager 156.5 64 117.5 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["PlayerNPC","Yellow"],CustomName:'{"translate":"clueblo.person.yellow","color":"yellow"}',VillagerData:{profession:"minecraft:librarian"},VillagerData:{type:"minecraft:desert"},Offers:{},Rotation:[90F,0F]}
summon minecraft:villager 138.5 64 151.5 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["PlayerNPC","White"],CustomName:'{"translate":"clueblo.person.white","color":"white"}',VillagerData:{profession:"minecraft:nitwit"},VillagerData:{type:"minecraft:snow"},Offers:{},Rotation:[179F,0F]}

execute as @e[type=villager,tag=PlayerNPC] at @s run tp @s ~0.5 ~ ~0.5

# set signs with the right language
execute as @p run setblock 134 64 127 oak_wall_sign[facing=south]{Text1:'{"text":"/\\\\"}',Text2:'{"translate":"clueblo.suspicion.buttons.next1"}',Text3:'{"translate":"clueblo.suspicion.buttons.next2"}'} destroy
execute as @p run setblock 131 64 127 oak_wall_sign[facing=south]{Text1:'{"text":"/\\\\"}',Text2:'{"translate":"clueblo.suspicion.buttons.end1"}',Text3:'{"translate":"clueblo.suspicion.buttons.end2"}'} destroy
execute as @p run setblock 135 64 130 dark_oak_wall_sign[facing=north]{Text1:'{"text":"/\\\\"}',Text2:'{"translate":"clueblo.suspicion.levers.machine1"}',Text3:'{"translate":"clueblo.suspicion.levers.machine2"}',Text4:'{"translate":"clueblo.suspicion.levers.machine3"}'} destroy

tp @a 134 64 103.6 0 5 
gamemode adventure @a
difficulty peaceful

# OPEN entry and exit door
fill 128 62 123 128 62 124 minecraft:air destroy
fill 137 62 123 137 62 124 minecraft:redstone_torch destroy

# remove glass form rope animation
fill 157 67 103 110 67 148 air replace minecraft:brown_stained_glass_pane

# tellraw @p [{"text":"Tutorial Video: ","color":"gold"},{"text":"www.google.com","color":"aqua","bold":false,"clickEvent":{"action":"open_url","value":"https://www.google.com/"},"hoverEvent":{"action":"show_text","contents":{"text":"Click me to open the link.","color":"gold"}}},{"text":" <-- Click Me ^^ ","color":"gold"}]
