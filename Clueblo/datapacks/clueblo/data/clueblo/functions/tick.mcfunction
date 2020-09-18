# gamestate 0=pre_game; 1=move_and_roll; 2=questioning; 2=end of game

execute as @a[gamemode=adventure] at @s run function clueblo:inventory/limit_inventory

execute if score gamestate helper matches 0 run function clueblo:gamestate/character_selection
execute if score gamestate helper matches 0 if score tut_timer helper matches 1..4000 run function clueblo:tutorial/tutorial
# execute if score gamestate helper matches 1 as @a at @s run function clueblo:move/main_old
execute if score gamestate helper matches 1 run function clueblo:move/main
# execute different function depending on character_selection
execute if score gamestate helper matches 1 as @a[tag=white,limit=1] at @s run function clueblo:move/main_white
execute if score gamestate helper matches 1 as @a[tag=green,limit=1] at @s run function clueblo:move/main_green
execute if score gamestate helper matches 1 as @a[tag=blue,limit=1] at @s run function clueblo:move/main_blue
execute if score gamestate helper matches 1 as @a[tag=purple,limit=1] at @s run function clueblo:move/main_purple
execute if score gamestate helper matches 1 as @a[tag=red,limit=1] at @s run function clueblo:move/main_red
execute if score gamestate helper matches 1 as @a[tag=yellow,limit=1] at @s run function clueblo:move/main_yellow

execute if score gamestate helper matches 1 as @a[tag=active_player,limit=1] at @s run function clueblo:move/main_active_player

execute if score gamestate helper matches 2 run function clueblo:questioning/main

execute if score gamestate helper matches 2 as @a[tag=white,tag=!in_questioning,limit=1] at @s run function clueblo:move/main_white
execute if score gamestate helper matches 2 as @a[tag=green,tag=!in_questioning,limit=1] at @s run function clueblo:move/main_green
execute if score gamestate helper matches 2 as @a[tag=blue,tag=!in_questioning,limit=1] at @s run function clueblo:move/main_blue
execute if score gamestate helper matches 2 as @a[tag=purple,tag=!in_questioning,limit=1] at @s run function clueblo:move/main_purple
execute if score gamestate helper matches 2 as @a[tag=red,tag=!in_questioning,limit=1] at @s run function clueblo:move/main_red
execute if score gamestate helper matches 2 as @a[tag=yellow,tag=!in_questioning,limit=1] at @s run function clueblo:move/main_yellow

# align armor_stands to prevent diagonal movement
execute if score gamestate helper matches 1..2 as @e[type=minecraft:armor_stand,tag=PlayerHolder,tag=!centered] at @s run function clueblo:helper/align_armorstands
execute if score gamestate helper matches 1..2 as @e[type=minecraft:armor_stand,tag=PlayerHolderPre,tag=!centered] at @s run function clueblo:helper/align_armorstands

execute as @a[scores={steps=..0}] run xp set @s 0 levels
execute as @a[scores={steps=1}] run xp set @s 1 levels
execute as @a[scores={steps=2}] run xp set @s 2 levels
execute as @a[scores={steps=3}] run xp set @s 3 levels
execute as @a[scores={steps=4}] run xp set @s 4 levels
execute as @a[scores={steps=5}] run xp set @s 5 levels
execute as @a[scores={steps=6}] run xp set @s 6 levels
execute as @a[scores={steps=7}] run xp set @s 7 levels
execute as @a[scores={steps=8}] run xp set @s 8 levels
execute as @a[scores={steps=9}] run xp set @s 9 levels
execute as @a[scores={steps=10}] run xp set @s 10 levels
execute as @a[scores={steps=11}] run xp set @s 11 levels
execute as @a[scores={steps=12}] run xp set @s 12 levels

execute as @a[tag=Dead] run effect give @s minecraft:invisibility 999999 1 false

# /scoreboard players operation suspect hiddenCards = person hiddenCards