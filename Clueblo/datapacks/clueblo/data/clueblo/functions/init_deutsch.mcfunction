tellraw @a ""
tellraw @a ""
tellraw @a ""
tellraw @a ""
tellraw @a ""
tellraw @a ""
tellraw @a ""
tellraw @a [{"text":"┏-------------------------------------------------┓","color":"gold"}]
tellraw @a [{"text":"| Willkommen zu ","color":"gold"},{"text":"CLUEBLO","color":"aqua","bold":"true"},{"text":" erstellt von ","color":"gold"},{"text":"Fietje","color":"aqua"},{"text":"                   |","color":"gold"}]
tellraw @a [{"text":"┗-------------------------------------------------┛","color":"gold"}]
# add tutorial link tellraw @a [{"text":"You can find the "},{"text":"Tutorial"},{"text":" created by "},{"text":"Fietje"}]
tellraw @a [{"text":"Falls du ein ","color":"gold"},{"text":"Video","color":"aqua"},{"text":" machst oder die Map ","color":"gold"},{"text":"streamst","color":"aqua"},{"text":" benenne mich bitte am Anfang als ","color":"gold"},{"text":"Ersteller","color":"aqua"},{"text":". ","color":"gold"},{"text":"Danke ☺","color":"aqua"}]
tellraw @a [{"text":"If you want to play the map in ","color":"dark_aqua"},{"text":"english","color":"aqua"},{"text":" please click ","color":"dark_aqua"},{"text":">>>here<<<","color":"aqua","clickEvent":{"action":"run_command","value":"/function clueblo:init"}},{"text":" (needs OP-rights!)","color":"gray"}]
tellraw @a [{"text":"Falls du nur Uhren in deinem Inventar siehst ","color":"gray"},{"text":">>>klick mich<<<","color":"aqua","clickEvent":{"action":"run_command","value":"/function clueblo:resource_problem"}}]

scoreboard players set language helper 2
function clueblo:reset