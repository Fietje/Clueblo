# effect give @s minecraft:glowing 10
# center armorstand on tile if it is on one
execute if block ~ 63 ~ minecraft:smooth_stone if block ~1 63 ~ minecraft:smooth_stone if block ~ 63 ~1 minecraft:smooth_stone run tp @s ~0.5 ~ ~0.5
execute if block ~ 63 ~ minecraft:smooth_stone if block ~1 63 ~ minecraft:smooth_stone if block ~ 63 ~-1 minecraft:smooth_stone run tp @s ~0.5 ~ ~-0.5
execute if block ~ 63 ~ minecraft:smooth_stone if block ~-1 63 ~ minecraft:smooth_stone if block ~ 63 ~1 minecraft:smooth_stone run tp @s ~-0.5 ~ ~0.5
execute if block ~ 63 ~ minecraft:smooth_stone if block ~-1 63 ~ minecraft:smooth_stone if block ~ 63 ~-1 minecraft:smooth_stone run tp @s ~-0.5 ~ ~-0.5

execute if block ~ 63 ~ minecraft:polished_andesite if block ~1 63 ~ minecraft:polished_andesite if block ~ 63 ~1 minecraft:polished_andesite run tp @s ~0.5 ~ ~0.5
execute if block ~ 63 ~ minecraft:polished_andesite if block ~1 63 ~ minecraft:polished_andesite if block ~ 63 ~-1 minecraft:polished_andesite run tp @s ~0.5 ~ ~-0.5
execute if block ~ 63 ~ minecraft:polished_andesite if block ~-1 63 ~ minecraft:polished_andesite if block ~ 63 ~1 minecraft:polished_andesite run tp @s ~-0.5 ~ ~0.5
execute if block ~ 63 ~ minecraft:polished_andesite if block ~-1 63 ~ minecraft:polished_andesite if block ~ 63 ~-1 minecraft:polished_andesite run tp @s ~-0.5 ~ ~-0.5

tag @s add centered