tellraw @a ""
tellraw @a ""
tellraw @a ""
tellraw @a ""
tellraw @a ""
tellraw @a ""
tellraw @a ""
tellraw @a [{"text":"┏-------------------------------------------------┓","color":"gold"}]
tellraw @a [{"text":"| Welcome to ","color":"gold"},{"text":"CLUEBLO","color":"aqua","bold":"true"},{"text":" created by ","color":"gold"},{"text":"Fietje","color":"aqua"},{"text":"                       |","color":"gold"}]
tellraw @a [{"text":"┗-------------------------------------------------┛","color":"gold"}]
# add tutorial link tellraw @a [{"text":"You can find the "},{"text":"Tutorial"},{"text":" created by "},{"text":"Fietje"}]
tellraw @a [{"text":"If you are making a ","color":"gold"},{"text":"video","color":"aqua"},{"text":" or ","color":"gold"},{"text":"stream","color":"aqua"},{"text":" the game please ","color":"gold"},{"text":"credit me","color":"aqua"},{"text":" at the beginning. ","color":"gold"},{"text":"Thanks ☺","color":"aqua"}]
tellraw @a [{"text":"Falls du die Map auf ","color":"dark_aqua"},{"text":"Deutsch","color":"aqua"},{"text":" spielen möchtest klicke ","color":"dark_aqua"},{"text":">>>hier<<<","color":"aqua","clickEvent":{"action":"run_command","value":"/function clueblo:init_deutsch"}},{"text":" (benötigt OP-Rechte!)","color":"gray"}]
tellraw @a [{"text":"If you only see clocks inside your inventory ","color":"gray"},{"text":">>>klick me<<<","color":"aqua","clickEvent":{"action":"run_command","value":"/function clueblo:resource_problem"}}]

scoreboard players set language helper 1
function clueblo:reset

# , the resource pack is not added correctly. To fix the problem add the file named resources.zip (from the map folder) to your resource pack folder and enable it or set it as the server resource pack.","color":"gray"