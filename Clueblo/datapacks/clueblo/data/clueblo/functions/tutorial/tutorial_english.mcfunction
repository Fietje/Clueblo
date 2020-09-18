# execute if score tut_timer helper matches 34.. run scoreboard players set tut_timer helper 1

execute if score tut_timer helper matches 1 run tellraw @a [{"text":"---------------------------------------------------","color":"gray"}]
execute if score tut_timer helper matches 1 run tellraw @a [{"text":"[","color":"gray"},{"text":"Narrator","color":"white"},{"text":"]","color":"gray"},{"text":" A murder took place in this ","color":"gray"},{"text":"villa","color":"aqua"},{"text":"!","color":"gray"}]

execute if score tut_timer helper matches 100 run tellraw @a [{"text":"[","color":"gray"},{"text":"Narrator","color":"white"},{"text":"]","color":"gray"},{"text":" The ","color":"gray"},{"text":"goal of the game","color":"aqua"},{"text":" is to find out who the murder is and how it was done.","color":"gray"}]

execute if score tut_timer helper matches 200 run tellraw @a [{"text":"[","color":"gray"},{"text":"Narrator","color":"white"},{"text":"]","color":"gray"},{"text":" There were ","color":"gray"},{"text":"6 suspects","color":"aqua"},{"text":" in the building at the time of the ","color":"gray"},{"text":"murder","color":"aqua"},{"text":".","color":"gray"}]

execute if score tut_timer helper matches 300 run tellraw @a [{"text":"[","color":"gray"},{"text":"Narrator","color":"white"},{"text":"]","color":"gray"},{"text":" ","color":"gray"},{"text":"6 possible weapons","color":"aqua"},{"text":" were found.","color":"gray"}]

execute if score tut_timer helper matches 400 run tellraw @a [{"text":"[","color":"gray"},{"text":"Narrator","color":"white"},{"text":"]","color":"gray"},{"text":" You need to find out ","color":"gray"},{"text":"who","color":"aqua"},{"text":", with ","color":"gray"},{"text":"which weapon","color":"aqua"},{"text":" and in ","color":"gray"},{"text":"which room","color":"aqua"},{"text":" committed the murder.","color":"gray"}]

execute if score tut_timer helper matches 500 run tellraw @a [{"text":"[","color":"gray"},{"text":"Narrator","color":"white"},{"text":"]","color":"gray"},{"text":" Go into the ","color":"gray"},{"text":"Dining room","color":"aqua"},{"text":" and choose a character, through standing on his chair.","color":"gray"}]

execute if score tut_timer helper matches 600 run tellraw @a [{"text":"[","color":"gray"},{"text":"Narrator","color":"white"},{"text":"]","color":"gray"},{"text":" When everyone selected a character and is ready press the button '","color":"gray"},{"text":"START GAME","color":"aqua"},{"text":"' to start the game.","color":"gray"}]

execute if score tut_timer helper matches 700 run tellraw @a [{"text":"[","color":"gray"},{"text":"Narrator","color":"white"},{"text":"]","color":"gray"},{"text":" With your selected character you are allowed to explore the villa.","color":"gray"}]

execute if score tut_timer helper matches 800 run tellraw @a [{"text":"[","color":"gray"},{"text":"Narrator","color":"white"},{"text":"]","color":"gray"},{"text":" At the start of the game every player gets a certain amount of ","color":"gray"},{"text":"items","color":"aqua"},{"text":" into his ","color":"gray"},{"text":"Hotbar","color":"aqua"},{"text":".","color":"gray"}]

execute if score tut_timer helper matches 900 run tellraw @a [{"text":"[","color":"gray"},{"text":"Narrator","color":"white"},{"text":"]","color":"gray"},{"text":" ","color":"gray"},{"text":"Every possible room, weapon and person","color":"aqua"},{"text":" is distributed between the players ","color":"gray"},{"text":"except","color":"aqua"},{"text":" the ","color":"gray"},{"text":"murder","color":"aqua"},{"text":", the ","color":"gray"},{"text":"murder weapon","color":"aqua"},{"text":" and the ","color":"gray"},{"text":"murder room","color":"aqua"},{"text":".","color":"gray"}]

execute if score tut_timer helper matches 1100 run tellraw @a [{"text":"[","color":"gray"},{"text":"Narrator","color":"white"},{"text":"]","color":"gray"},{"text":" So all distributed items are ","color":"gray"},{"text":"NOT","color":"aqua"},{"text":" the murder weapon, the murderer or the murder room.","color":"gray"}]

execute if score tut_timer helper matches 1200 run tellraw @a [{"text":"[","color":"gray"},{"text":"Narrator","color":"white"},{"text":"]","color":"gray"},{"text":" To win you should keep your own items ","color":"gray"},{"text":"secret","color":"aqua"},{"text":"!","color":"gray"}]

execute if score tut_timer helper matches 1300 run tellraw @a [{"text":"[","color":"gray"},{"text":"Narrator","color":"white"},{"text":"]","color":"gray"},{"text":" All possible rooms, weapons and characters are also inside your inventory as a '","color":"gray"},{"text":"notebook","color":"aqua"},{"text":"'.","color":"gray"}]

execute if score tut_timer helper matches 1400 run tellraw @a [{"text":"[","color":"gray"},{"text":"Narrator","color":"white"},{"text":"]","color":"gray"},{"text":" If you think that one item is not part of the solution (for example if you have the item in your hotbar), you can ","color":"gray"},{"text":"click","color":"aqua"},{"text":" at it in your inventory to ","color":"gray"},{"text":"cross it out","color":"aqua"},{"text":".","color":"gray"}]

execute if score tut_timer helper matches 1600 run tellraw @a [{"text":"[","color":"gray"},{"text":"Narrator","color":"white"},{"text":"]","color":"gray"},{"text":" If it's your turn you can roll ","color":"gray"},{"text":"two dice","color":"aqua"},{"text":" (throw them out of the inventory).","color":"gray"}]

execute if score tut_timer helper matches 1700 run tellraw @a [{"text":"[","color":"gray"},{"text":"Narrator","color":"white"},{"text":"]","color":"gray"},{"text":" With the number rolled you can then go through the villa. A tile corresponds to a dice point.","color":"gray"}]

execute if score tut_timer helper matches 1800 run tellraw @a [{"text":"[","color":"gray"},{"text":"Narrator","color":"white"},{"text":"]","color":"gray"},{"text":" Diagonal moves are not allowed.","color":"gray"}]

execute if score tut_timer helper matches 1900 run tellraw @a [{"text":"[","color":"gray"},{"text":"Narrator","color":"white"},{"text":"]","color":"gray"},{"text":" If you enter a room you can express a ","color":"gray"},{"text":"suspicion","color":"aqua"},{"text":".","color":"gray"}]

execute if score tut_timer helper matches 2000 run tellraw @a [{"text":"[","color":"gray"},{"text":"Narrator","color":"white"},{"text":"]","color":"gray"},{"text":" To do this, ","color":"gray"},{"text":"click in your inventory","color":"aqua"},{"text":" on the weapon and person you want to suspect in the current room. (Items that have been crossed out can also be clicked!) ","color":"gray"}]

execute if score tut_timer helper matches 2200 run tellraw @a [{"text":"[","color":"gray"},{"text":"Narrator","color":"white"},{"text":"]","color":"gray"},{"text":" The ","color":"gray"},{"text":"interrogation","color":"aqua"},{"text":" then starts.","color":"gray"}]

execute if score tut_timer helper matches 2300 run tellraw @a [{"text":"[","color":"gray"},{"text":"Narrator","color":"white"},{"text":"]","color":"gray"},{"text":" When you click the button '","color":"gray"},{"text":"Next Player","color":"aqua"},{"text":"', the first player you interrogate comes into the room.","color":"gray"}]

execute if score tut_timer helper matches 2400 run tellraw @a [{"text":"[","color":"gray"},{"text":"Narrator","color":"white"},{"text":"]","color":"gray"},{"text":" If this player has one of the items you ","color":"gray"},{"text":"suspect","color":"aqua"},{"text":" in his hotbar, he ","color":"gray"},{"text":"MUST","color":"aqua"},{"text":" show it to you.","color":"gray"}]

execute if score tut_timer helper matches 2500 run tellraw @a [{"text":"[","color":"gray"},{"text":"Narrator","color":"white"},{"text":"]","color":"gray"},{"text":" If he owns ","color":"gray"},{"text":"several items","color":"aqua"},{"text":" he can ","color":"gray"},{"text":"choose","color":"aqua"},{"text":" which one to show you.","color":"gray"}]

execute if score tut_timer helper matches 2600 run tellraw @a [{"text":"[","color":"gray"},{"text":"Narrator","color":"white"},{"text":"]","color":"gray"},{"text":" If he has no suspected item, he leaves the room and the next player can be questioned.","color":"gray"}]

execute if score tut_timer helper matches 2700 run tellraw @a [{"text":"[","color":"gray"},{"text":"Narrator","color":"white"},{"text":"]","color":"gray"},{"text":" After you have been shown an item, you have to end your suspicions. Press the button '","color":"gray"},{"text":"End Questioning","color":"aqua"},{"text":"' to do so.","color":"gray"}]

execute if score tut_timer helper matches 2800 run tellraw @a [{"text":"[","color":"gray"},{"text":"Narrator","color":"white"},{"text":"]","color":"gray"},{"text":" The turn is over and it is the next player's turn.","color":"gray"}]

execute if score tut_timer helper matches 2900 run tellraw @a [{"text":"[","color":"gray"},{"text":"Narrator","color":"white"},{"text":"]","color":"gray"},{"text":" If you think you know how the murder happened, you can enter your solution in the ","color":"gray"},{"text":"suspicion room","color":"aqua"},{"text":" on the machine and pull the ","color":"gray"},{"text":"lever","color":"aqua"},{"text":".","color":"gray"}]

execute if score tut_timer helper matches 3100 run tellraw @a [{"text":"[","color":"gray"},{"text":"Narrator","color":"white"},{"text":"]","color":"gray"},{"text":" If you are correct, you have won! If you are wrong you are out and can ","color":"gray"},{"text":"no longer express suspicions","color":"aqua"},{"text":" and only play along to be able to show your items if you are questioned.","color":"gray"}]

execute if score tut_timer helper matches 3300 run tellraw @a [{"text":"[","color":"gray"},{"text":"Narrator","color":"white"},{"text":"]","color":"gray"},{"text":" Rooms ","color":"gray"},{"text":"cannot","color":"aqua"},{"text":" be left and ","color":"gray"},{"text":"re-entered","color":"aqua"},{"text":" during a turn.","color":"gray"}]

execute if score tut_timer helper matches 3400 run tellraw @a [{"text":"[","color":"gray"},{"text":"Narrator","color":"white"},{"text":"]","color":"gray"},{"text":" In some rooms there are also ","color":"gray"},{"text":"secret passages","color":"aqua"},{"text":" that transport you to the other end of the villa. (","color":"gray"},{"text":"Work room","color":"aqua"},{"text":" <-> ","color":"gray"},{"text":"Kitchen","color":"aqua"},{"text":", ","color":"gray"},{"text":"Winter garden","color":"aqua"},{"text":" <-> ","color":"gray"},{"text":"Salon","color":"aqua"},{"text":")","color":"gray"}]

execute if score tut_timer helper matches 3600 run tellraw @a [{"text":"[","color":"gray"},{"text":"Narrator","color":"white"},{"text":"]","color":"gray"},{"text":" Here are some ","color":"gray"},{"text":"tips","color":"aqua"},{"text":":","color":"gray"}]

execute if score tut_timer helper matches 3700 run tellraw @a [{"text":"[","color":"gray"},{"text":"Narrator","color":"white"},{"text":"]","color":"gray"},{"text":" Think carefully about what ","color":"gray"},{"text":"information","color":"aqua"},{"text":" you want to draw from your suspicions. Even if nobody can show you an item, you can get information from it.","color":"gray"}]

execute if score tut_timer helper matches 3900 run tellraw @a [{"text":"[","color":"gray"},{"text":"Narrator","color":"white"},{"text":"]","color":"gray"},{"text":" Have fun! ","color":"gold"}]

scoreboard players add tut_timer helper 1

# execute if score tut_timer helper matches 1..33 run schedule function clueblo:tutorial/tutorial_english 5s