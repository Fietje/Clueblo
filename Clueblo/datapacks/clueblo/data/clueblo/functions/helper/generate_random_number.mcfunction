# generated a random number. See https://www.reddit.com/r/MinecraftCommands/wiki/questions/randomnumber
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid"]}
execute store result score @s random run data get entity @e[type=area_effect_cloud,tag=random_uuid,limit=1] UUID[0] 1
scoreboard players operation @s random %= my_range range
scoreboard players add @s random 1
kill @e[type=area_effect_cloud,tag=random_uuid]
