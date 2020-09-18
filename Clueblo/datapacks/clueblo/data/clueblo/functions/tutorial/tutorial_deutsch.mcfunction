# execute if score tut_timer helper matches 34.. run scoreboard players set tut_timer helper 1

execute if score tut_timer helper matches 1 run tellraw @a [{"text":"---------------------------------------------------","color":"gray"}]
execute if score tut_timer helper matches 1 run tellraw @a [{"text":"[","color":"gray"},{"text":"Erzähler","color":"white"},{"text":"]","color":"gray"},{"text":" In dieser ","color":"gray"},{"text":"Villa","color":"aqua"},{"text":" wurde ein Mord begangen!","color":"gray"}]

execute if score tut_timer helper matches 100 run tellraw @a [{"text":"[","color":"gray"},{"text":"Erzähler","color":"white"},{"text":"]","color":"gray"},{"text":" ","color":"gray"},{"text":"Ziel des Spieles","color":"aqua"},{"text":" ist es heraus zu finden wer der Mörder ist und wie genau das grausame Verbrechen begangen wurde.","color":"gray"}]

execute if score tut_timer helper matches 200 run tellraw @a [{"text":"[","color":"gray"},{"text":"Erzähler","color":"white"},{"text":"]","color":"gray"},{"text":" Zum Zeitpunkt des ","color":"gray"},{"text":"Mordes","color":"aqua"},{"text":" befanden sich ","color":"gray"},{"text":"6 Verdächtige","color":"aqua"},{"text":" im Gebäude.","color":"gray"}]

execute if score tut_timer helper matches 300 run tellraw @a [{"text":"[","color":"gray"},{"text":"Erzähler","color":"white"},{"text":"]","color":"gray"},{"text":" Zu dem wurden ","color":"gray"},{"text":"6 möglichen Waffen","color":"aqua"},{"text":" gefunden.","color":"gray"}]

execute if score tut_timer helper matches 400 run tellraw @a [{"text":"[","color":"gray"},{"text":"Erzähler","color":"white"},{"text":"]","color":"gray"},{"text":" Ihr müsst herausfinden ","color":"gray"},{"text":"wer","color":"aqua"},{"text":", mit ","color":"gray"},{"text":"welcher Waffe","color":"aqua"},{"text":" in ","color":"gray"},{"text":"welchem Raum","color":"aqua"},{"text":" den Mord begangen hat.","color":"gray"}]

execute if score tut_timer helper matches 500 run tellraw @a [{"text":"[","color":"gray"},{"text":"Erzähler","color":"white"},{"text":"]","color":"gray"},{"text":" Wählt im ","color":"gray"},{"text":"Speisesaal","color":"aqua"},{"text":" einen Charakter aus, in dem ihr euch auf seinen Platz setzt.","color":"gray"}]

execute if score tut_timer helper matches 600 run tellraw @a [{"text":"[","color":"gray"},{"text":"Narrator","color":"white"},{"text":"]","color":"gray"},{"text":" Wenn alle Spieler einen Charakter ausgewählt haben und bereit sind drückt den Knopf '","color":"gray"},{"text":"START GAME","color":"aqua"},{"text":"' um das Spiel zu starten.","color":"gray"}]

execute if score tut_timer helper matches 700 run tellraw @a [{"text":"[","color":"gray"},{"text":"Erzähler","color":"white"},{"text":"]","color":"gray"},{"text":" Mit eurem ausgewählten Charakter dürft ihr dann die Villa erkunden.","color":"gray"}]

execute if score tut_timer helper matches 800 run tellraw @a [{"text":"[","color":"gray"},{"text":"Erzähler","color":"white"},{"text":"]","color":"gray"},{"text":" Zu Begin des Spieles erhalten alle Spieler eine gewisse Menge an ","color":"gray"},{"text":"Items","color":"aqua"},{"text":" in ihre ","color":"gray"},{"text":"Hotbar","color":"aqua"},{"text":".","color":"gray"}]

execute if score tut_timer helper matches 900 run tellraw @a [{"text":"[","color":"gray"},{"text":"Erzähler","color":"white"},{"text":"]","color":"gray"},{"text":" Hierbei werden ","color":"gray"},{"text":"alle","color":"aqua"},{"text":" Räume, Waffen und Personen verteilt, ","color":"gray"},{"text":"ausgenommen","color":"aqua"},{"text":" den ","color":"gray"},{"text":"Mörder","color":"aqua"},{"text":", die ","color":"gray"},{"text":"Mordwaffe","color":"aqua"},{"text":" und den ","color":"gray"},{"text":"Mordraum","color":"aqua"},{"text":".","color":"gray"}]

execute if score tut_timer helper matches 1100 run tellraw @a [{"text":"[","color":"gray"},{"text":"Erzähler","color":"white"},{"text":"]","color":"gray"},{"text":" Alle verteilten Items sind also ","color":"gray"},{"text":"NICHT","color":"aqua"},{"text":" die Mordwaffe, der Mörder oder der Mordraum.","color":"gray"}]

execute if score tut_timer helper matches 1200 run tellraw @a [{"text":"[","color":"gray"},{"text":"Erzähler","color":"white"},{"text":"]","color":"gray"},{"text":" Um zu gewinnen, sollten die eigenen Items ","color":"gray"},{"text":"geheim","color":"aqua"},{"text":" gehalten werden!","color":"gray"}]

execute if score tut_timer helper matches 1300 run tellraw @a [{"text":"[","color":"gray"},{"text":"Erzähler","color":"white"},{"text":"]","color":"gray"},{"text":" Alle möglichen Räume, Waffen und Charaktere befinden sich zudem im Inventar, als '","color":"gray"},{"text":"Notizzettel","color":"aqua"},{"text":"'.","color":"gray"}]

execute if score tut_timer helper matches 1400 run tellraw @a [{"text":"[","color":"gray"},{"text":"Erzähler","color":"white"},{"text":"]","color":"gray"},{"text":" Falls ihr denkt das ein Item nicht in Frage kommt (zum Beispiel weil ihr es selber besitzt), könnt ihr dieses im Inventar ","color":"gray"},{"text":"anklicken","color":"aqua"},{"text":" um es ","color":"gray"},{"text":"durchzustreichen","color":"aqua"},{"text":".","color":"gray"}]

execute if score tut_timer helper matches 1600 run tellraw @a [{"text":"[","color":"gray"},{"text":"Erzähler","color":"white"},{"text":"]","color":"gray"},{"text":" Seit ihr am Zug dürft ihr mit ","color":"gray"},{"text":"zwei Würfeln","color":"aqua"},{"text":" würfeln (werft diese aus eurem Inventar).","color":"gray"}]

execute if score tut_timer helper matches 1700 run tellraw @a [{"text":"[","color":"gray"},{"text":"Erzähler","color":"white"},{"text":"]","color":"gray"},{"text":" Mit der jeweils gewürfelten Zahl könnt ihr dann durch die Villa laufen. Eine Fliese entspricht dabei einem Würfelpunkt.","color":"gray"}]

execute if score tut_timer helper matches 1800 run tellraw @a [{"text":"[","color":"gray"},{"text":"Erzähler","color":"white"},{"text":"]","color":"gray"},{"text":" Diagonale Züge sind nicht erlaubt.","color":"gray"}]

execute if score tut_timer helper matches 1900 run tellraw @a [{"text":"[","color":"gray"},{"text":"Erzähler","color":"white"},{"text":"]","color":"gray"},{"text":" Betretet ihr einen Raum könnt ihr einen ","color":"gray"},{"text":"Verdacht","color":"aqua"},{"text":" äußern.","color":"gray"}]

execute if score tut_timer helper matches 2000 run tellraw @a [{"text":"[","color":"gray"},{"text":"Erzähler","color":"white"},{"text":"]","color":"gray"},{"text":" Dafür klickt ihr in eurem ","color":"gray"},{"text":"Inventar","color":"aqua"},{"text":" die ","color":"gray"},{"text":"Waffe","color":"aqua"},{"text":" und ","color":"gray"},{"text":"Person","color":"aqua"},{"text":" an die ihr im aktuellen Raum verdächtigen wollt. (Durchgestrichene Items können auch angeklickt werden!)","color":"gray"}]

execute if score tut_timer helper matches 2200 run tellraw @a [{"text":"[","color":"gray"},{"text":"Erzähler","color":"white"},{"text":"]","color":"gray"},{"text":" Darauf hin startet das ","color":"gray"},{"text":"Verhör","color":"aqua"},{"text":".","color":"gray"}]

execute if score tut_timer helper matches 2300 run tellraw @a [{"text":"[","color":"gray"},{"text":"Erzähler","color":"white"},{"text":"]","color":"gray"},{"text":" Wenn ihr den Knopf '","color":"gray"},{"text":"Nächster Spieler","color":"aqua"},{"text":"' klickt, kommt der erste Spieler den ihr verhört in den Raum.","color":"gray"}]

execute if score tut_timer helper matches 2400 run tellraw @a [{"text":"[","color":"gray"},{"text":"Erzähler","color":"white"},{"text":"]","color":"gray"},{"text":" Falls dieser Spieler eines der Items aus eurem ","color":"gray"},{"text":"Verdacht","color":"aqua"},{"text":" in seiner Hotbar hat ","color":"gray"},{"text":"MUSS","color":"aqua"},{"text":" er es euch zeigen.","color":"gray"}]

execute if score tut_timer helper matches 2500 run tellraw @a [{"text":"[","color":"gray"},{"text":"Erzähler","color":"white"},{"text":"]","color":"gray"},{"text":" Besitzt er ","color":"gray"},{"text":"mehrere Items","color":"aqua"},{"text":" kann er sich ","color":"gray"},{"text":"aussuchen","color":"aqua"},{"text":" welches er euch zeigt.","color":"gray"}]

execute if score tut_timer helper matches 2600 run tellraw @a [{"text":"[","color":"gray"},{"text":"Erzähler","color":"white"},{"text":"]","color":"gray"},{"text":" Falls er kein Item aus dem Verdacht besitzt verlässt er den Raum und der nächste Spieler kann befragt werden.","color":"gray"}]

execute if score tut_timer helper matches 2700 run tellraw @a [{"text":"[","color":"gray"},{"text":"Erzähler","color":"white"},{"text":"]","color":"gray"},{"text":" Nachdem ihr ein Item gezeigt bekommen habt, müsst ihr euren Verdacht beenden. Drückt dafür den Knopf '","color":"gray"},{"text":"Befragung beenden","color":"aqua"},{"text":"'.","color":"gray"}]

execute if score tut_timer helper matches 2800 run tellraw @a [{"text":"[","color":"gray"},{"text":"Erzähler","color":"white"},{"text":"]","color":"gray"},{"text":" Der Zug ist damit vorbei und der nächste Spieler ist am Zug.","color":"gray"}]

execute if score tut_timer helper matches 2900 run tellraw @a [{"text":"[","color":"gray"},{"text":"Erzähler","color":"white"},{"text":"]","color":"gray"},{"text":" Falls ihr denkt zu wissen, wie der Mord abgelaufen ist, könnt ihr im ","color":"gray"},{"text":"Verdachtsraum","color":"aqua"},{"text":" an der Maschine euren Verdacht eingeben und den ","color":"gray"},{"text":"Hebel","color":"aqua"},{"text":" betätigen.","color":"gray"}]

execute if score tut_timer helper matches 3100 run tellraw @a [{"text":"[","color":"gray"},{"text":"Erzähler","color":"white"},{"text":"]","color":"gray"},{"text":" Liegt ihr richtig, habt ihr gewonnen! Liegt ihr falsch seid ihr raus und könnt ","color":"gray"},{"text":"keinen","color":"aqua"},{"text":" Verdacht mehr äußern und spielt nur noch mit um eure Items bei einem Verdacht zeigen zu können.","color":"gray"}]

execute if score tut_timer helper matches 3300 run tellraw @a [{"text":"[","color":"gray"},{"text":"Erzähler","color":"white"},{"text":"]","color":"gray"},{"text":" Räume können während eines Zuges ","color":"gray"},{"text":"nicht","color":"aqua"},{"text":" verlassen und ","color":"gray"},{"text":"wieder","color":"aqua"},{"text":" betreten werden.","color":"gray"}]

execute if score tut_timer helper matches 3400 run tellraw @a [{"text":"[","color":"gray"},{"text":"Erzähler","color":"white"},{"text":"]","color":"gray"},{"text":" In manchen Räumen gibt es zudem ","color":"gray"},{"text":"Geheimgänge","color":"aqua"},{"text":", die euch zum anderen Ende der Villa transportieren. (","color":"gray"},{"text":"Arbeitszimmer","color":"aqua"},{"text":" <-> ","color":"gray"},{"text":"Küche","color":"aqua"},{"text":", ","color":"gray"},{"text":"Wintergarten","color":"aqua"},{"text":" <-> ","color":"gray"},{"text":"Salon","color":"aqua"},{"text":")","color":"gray"}]

execute if score tut_timer helper matches 3600 run tellraw @a [{"text":"[","color":"gray"},{"text":"Erzähler","color":"white"},{"text":"]","color":"gray"},{"text":" Ein paar ","color":"gray"},{"text":"Tipps","color":"aqua"},{"text":":","color":"gray"}]

execute if score tut_timer helper matches 3700 run tellraw @a [{"text":"[","color":"gray"},{"text":"Erzähler","color":"white"},{"text":"]","color":"gray"},{"text":" Überlegt euch gut, welche ","color":"gray"},{"text":"Infos","color":"aqua"},{"text":" ihr aus euren Verdacht ziehen wollt. Selbst wenn euch niemand ein Item zeigen kann, könnt ihr daraus Informationen ziehen.","color":"gray"}]

execute if score tut_timer helper matches 3900 run tellraw @a [{"text":"[","color":"gray"},{"text":"Erzähler","color":"white"},{"text":"]","color":"gray"},{"text":" Viel Spaß! ","color":"gold"}]

scoreboard players add tut_timer helper 1

# execute if score tut_timer helper matches 1..33 run schedule function clueblo:tutorial/tutorial_deutsch 5s