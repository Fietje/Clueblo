
# execute unless entity @s[nbt={Inventory:[{Slot:3b,Count:1b,tag:{filler3b:1b}}]}] run function clueblo:inventory/limit_slot_3
# execute unless entity @s[nbt={Inventory:[{Slot:4b,Count:1b,tag:{filler4b:1b}}]}] run function clueblo:inventory/limit_slot_4
# execute unless entity @s[nbt={Inventory:[{Slot:5b,Count:1b,tag:{filler5b:1b}}]}] run function clueblo:inventory/limit_slot_5
# execute unless entity @s[nbt={Inventory:[{Slot:6b,Count:1b,tag:{filler6b:1b}}]}] run function clueblo:inventory/limit_slot_6
# execute unless entity @s[nbt={Inventory:[{Slot:7b,Count:1b,tag:{filler7b:1b}}]}] run function clueblo:inventory/limit_slot_7
# execute unless entity @s[nbt={Inventory:[{Slot:8b,Count:1b,tag:{filler8b:1b}}]}] run function clueblo:inventory/limit_slot_8
execute unless entity @s[nbt={Inventory:[{Slot:9b,Count:1b,tag:{filler9b:1b}}]}] run function clueblo:inventory/limit_slot_9
execute unless entity @s[nbt={Inventory:[{Slot:10b,Count:1b,tag:{filler10b:1b}}]}] run function clueblo:inventory/limit_slot_10
execute unless entity @s[nbt={Inventory:[{Slot:11b,Count:1b,tag:{filler11b:1b}}]}] run function clueblo:inventory/limit_slot_11
execute unless entity @s[nbt={Inventory:[{Slot:12b,Count:1b,tag:{filler12b:1b}}]}] run function clueblo:inventory/limit_slot_12
execute unless entity @s[nbt={Inventory:[{Slot:13b,Count:1b,tag:{filler13b:1b}}]}] run function clueblo:inventory/limit_slot_13
execute unless entity @s[nbt={Inventory:[{Slot:14b,Count:1b,tag:{filler14b:1b}}]}] run function clueblo:inventory/limit_slot_14
execute unless entity @s[nbt={Inventory:[{Slot:15b,Count:1b,tag:{filler15b:1b}}]}] run function clueblo:inventory/limit_slot_15
execute unless entity @s[nbt={Inventory:[{Slot:16b,Count:1b,tag:{filler16b:1b}}]}] run function clueblo:inventory/limit_slot_16
execute unless entity @s[nbt={Inventory:[{Slot:17b,Count:1b,tag:{filler17b:1b}}]}] run function clueblo:inventory/limit_slot_17
execute unless entity @s[nbt={Inventory:[{Slot:18b,Count:1b,tag:{filler18b:1b}}]}] run function clueblo:inventory/limit_slot_18
execute unless entity @s[nbt={Inventory:[{Slot:19b,Count:1b,tag:{filler19b:1b}}]}] run function clueblo:inventory/limit_slot_19
execute unless entity @s[nbt={Inventory:[{Slot:20b,Count:1b,tag:{filler20b:1b}}]}] run function clueblo:inventory/limit_slot_20
execute unless entity @s[nbt={Inventory:[{Slot:21b,Count:1b,tag:{filler21b:1b}}]}] run function clueblo:inventory/limit_slot_21
execute unless entity @s[nbt={Inventory:[{Slot:22b,Count:1b,tag:{filler22b:1b}}]}] run function clueblo:inventory/limit_slot_22
execute unless entity @s[nbt={Inventory:[{Slot:23b,Count:1b,tag:{filler23b:1b}}]}] run function clueblo:inventory/limit_slot_23
execute unless entity @s[nbt={Inventory:[{Slot:24b,Count:1b,tag:{filler24b:1b}}]}] run function clueblo:inventory/limit_slot_24
execute unless entity @s[nbt={Inventory:[{Slot:25b,Count:1b,tag:{filler25b:1b}}]}] run function clueblo:inventory/limit_slot_25
execute unless entity @s[nbt={Inventory:[{Slot:26b,Count:1b,tag:{filler26b:1b}}]}] run function clueblo:inventory/limit_slot_26
execute unless entity @s[nbt={Inventory:[{Slot:27b,Count:1b,tag:{filler27b:1b}}]}] run function clueblo:inventory/limit_slot_27
execute unless entity @s[nbt={Inventory:[{Slot:28b,Count:1b,tag:{filler28b:1b}}]}] run function clueblo:inventory/limit_slot_28
execute unless entity @s[nbt={Inventory:[{Slot:29b,Count:1b,tag:{filler29b:1b}}]}] run function clueblo:inventory/limit_slot_29
execute unless entity @s[nbt={Inventory:[{Slot:30b,Count:1b,tag:{filler30b:1b}}]}] run function clueblo:inventory/limit_slot_30
execute unless entity @s[nbt={Inventory:[{Slot:31b,Count:1b,tag:{filler31b:1b}}]}] run function clueblo:inventory/limit_slot_31
execute unless entity @s[nbt={Inventory:[{Slot:32b,Count:1b,tag:{filler32b:1b}}]}] run function clueblo:inventory/limit_slot_32
execute unless entity @s[nbt={Inventory:[{Slot:33b,Count:1b,tag:{filler33b:1b}}]}] run function clueblo:inventory/limit_slot_33
execute unless entity @s[nbt={Inventory:[{Slot:34b,Count:1b,tag:{filler34b:1b}}]}] run function clueblo:inventory/limit_slot_34
execute unless entity @s[nbt={Inventory:[{Slot:35b,Count:1b,tag:{filler35b:1b}}]}] run function clueblo:inventory/limit_slot_35

execute unless entity @s[nbt={Inventory:[{Slot:103b,Count:1b,tag:{filler103b:1b}}]}] unless entity @s[tag=!white,tag=!green,tag=!blue,tag=!purple,tag=!red,tag=!yellow] run function clueblo:inventory/limit_slot_103
execute if entity @s[nbt={Inventory:[{Slot:103b,Count:1b,tag:{filler103b:1b}}]}] if entity @s[tag=!white,tag=!green,tag=!blue,tag=!purple,tag=!red,tag=!yellow] run function clueblo:inventory/clear_headslot

# kill items except for cards
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:black_stained_glass_pane"}}]
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:clock"}}] unless entity @s[type=item,nbt={Item:{tag:{card:1b}}}] run kill @s
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:leather_helmet"}}] unless entity @s[type=item,nbt={Item:{tag:{card:1b}}}] run kill @s
