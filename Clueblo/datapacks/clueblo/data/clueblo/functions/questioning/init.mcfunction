tag @a remove creat_suspicion
# set current gamestate
scoreboard players set gamestate helper 2

# tp active player to questioning room
tag @a[tag=active_player,limit=1] add in_questioning
tp @a[tag=active_player,limit=1] 133.1 64 127.5 179 3

# open entry and exit door
fill 128 62 123 128 62 124 minecraft:air destroy
fill 137 62 123 137 62 124 minecraft:redstone_torch destroy

scoreboard players operation questioned helper = @a[tag=active_player,limit=1] rotation_num
