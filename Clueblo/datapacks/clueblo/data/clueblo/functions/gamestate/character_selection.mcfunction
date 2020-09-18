# call setup function on new players
execute as @a[tag=!registered] run function clueblo:setup_player

# function that gets called if the player can select a character
execute as @a unless entity @s[gamemode=adventure,tag=white,x=149,y=64,z=130,dx=0,dy=2,dz=0] run tag @s remove white
execute as @a unless entity @s[gamemode=adventure,tag=green,x=152,y=64,z=130,dx=0,dy=2,dz=0] run tag @s remove green
execute as @a unless entity @s[gamemode=adventure,tag=blue,x=146,y=64,z=127,dx=0,dy=2,dz=0] run tag @s remove blue
execute as @a unless entity @s[gamemode=adventure,tag=purple,x=152,y=64,z=124,dx=0,dy=2,dz=0] run tag @s remove purple
execute as @a unless entity @s[gamemode=adventure,tag=red,x=149,y=64,z=124,dx=0,dy=2,dz=0] run tag @s remove red
execute as @a unless entity @s[gamemode=adventure,tag=yellow,x=155,y=64,z=127,dx=0,dy=2,dz=0] run tag @s remove yellow

execute as @a[team=grayTeam] unless entity @s[gamemode=adventure,tag=white,x=149,y=64,z=130,dx=0,dy=2,dz=0] run team leave @s
execute as @a[team=greenTeam] unless entity @s[gamemode=adventure,tag=green,x=152,y=64,z=130,dx=0,dy=2,dz=0] run team leave @s
execute as @a[team=blueTeam] unless entity @s[gamemode=adventure,tag=blue,x=146,y=64,z=127,dx=0,dy=2,dz=0] run team leave @s
execute as @a[team=purpTeam] unless entity @s[gamemode=adventure,tag=purple,x=152,y=64,z=124,dx=0,dy=2,dz=0] run team leave @s
execute as @a[team=redTeam] unless entity @s[gamemode=adventure,tag=red,x=149,y=64,z=124,dx=0,dy=2,dz=0] run team leave @s
execute as @a[team=yellowTeam] unless entity @s[gamemode=adventure,tag=yellow,x=155,y=64,z=127,dx=0,dy=2,dz=0] run team leave @s

execute unless entity @a[tag=white] run team join grayTeam @a[gamemode=adventure,tag=!white,tag=!green,tag=!blue,tag=!purple,tag=!red,tag=!yellow,x=149,y=64,z=130,dx=0,dy=2,dz=0,limit=1]
execute unless entity @a[tag=green] run team join greenTeam @a[gamemode=adventure,tag=!white,tag=!green,tag=!blue,tag=!purple,tag=!red,tag=!yellow,x=152,y=64,z=130,dx=0,dy=2,dz=0,limit=1]
execute unless entity @a[tag=blue] run team join blueTeam @a[gamemode=adventure,tag=!white,tag=!green,tag=!blue,tag=!purple,tag=!red,tag=!yellow,x=146,y=64,z=127,dx=0,dy=2,dz=0,limit=1]
execute unless entity @a[tag=purple] run team join purpTeam @a[gamemode=adventure,tag=!white,tag=!green,tag=!blue,tag=!purple,tag=!red,tag=!yellow,x=152,y=64,z=124,dx=0,dy=2,dz=0,limit=1]
execute unless entity @a[tag=red] run team join redTeam @a[gamemode=adventure,tag=!white,tag=!green,tag=!blue,tag=!purple,tag=!red,tag=!yellow,x=149,y=64,z=124,dx=0,dy=2,dz=0,limit=1]
execute unless entity @a[tag=yellow] run team join yellowTeam @a[gamemode=adventure,tag=!white,tag=!green,tag=!blue,tag=!purple,tag=!red,tag=!yellow,x=155,y=64,z=127,dx=0,dy=2,dz=0,limit=1]

execute unless entity @a[tag=white] run tag @a[gamemode=adventure,tag=!white,tag=!green,tag=!blue,tag=!purple,tag=!red,tag=!yellow,x=149,y=64,z=130,dx=0,dy=2,dz=0,limit=1] add white
execute unless entity @a[tag=green] run tag @a[gamemode=adventure,tag=!white,tag=!green,tag=!blue,tag=!purple,tag=!red,tag=!yellow,x=152,y=64,z=130,dx=0,dy=2,dz=0,limit=1] add green
execute unless entity @a[tag=blue] run tag @a[gamemode=adventure,tag=!white,tag=!green,tag=!blue,tag=!purple,tag=!red,tag=!yellow,x=146,y=64,z=127,dx=0,dy=2,dz=0,limit=1] add blue
execute unless entity @a[tag=purple] run tag @a[gamemode=adventure,tag=!white,tag=!green,tag=!blue,tag=!purple,tag=!red,tag=!yellow,x=152,y=64,z=124,dx=0,dy=2,dz=0,limit=1] add purple
execute unless entity @a[tag=red] run tag @a[gamemode=adventure,tag=!white,tag=!green,tag=!blue,tag=!purple,tag=!red,tag=!yellow,x=149,y=64,z=124,dx=0,dy=2,dz=0,limit=1] add red
execute unless entity @a[tag=yellow] run tag @a[gamemode=adventure,tag=!white,tag=!green,tag=!blue,tag=!purple,tag=!red,tag=!yellow,x=155,y=64,z=127,dx=0,dy=2,dz=0,limit=1] add yellow

# team leave @a[tag=!white,tag=!green,tag=!blue,tag=!purple,tag=!red,tag=!yellow]