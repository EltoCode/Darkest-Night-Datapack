#Desc: Initializes Revive Process
#
#


#locks the function
scoreboard players set #hlwn_rev_func hlwn_func_lock_M 1

#disables the revive shrine by giving it blindness for 360 ticks
effect give @s minecraft:blindness 360 0

#Makes the Gapple, unpickable/undespawnable/glowing and floaty. Changes Tag to `isEsOrb:2b`
execute at @s as @e[type=item,nbt={Item:{tag:{isEsOrb:1b}}},sort=nearest,limit=1] run data merge entity @s {NoGravity:1b,Glowing:1b,Age:-32768,PickupDelay:32767,Motion:[0.0,0.05,0.0],Item:{id:"minecraft:enchanted_golden_apple",Count:1b,tag:{isEsOrb:2b}}}

#Makes the Gapple join the team
execute at @s run team join hlwn_last_light @e[type=item,nbt={Item:{tag:{isEsOrb:2b}}}]

#Particle Effect 
execute as @e[type=item,nbt={Item:{tag:{isEsOrb:2b}}},sort=nearest,limit=1] at @s run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 1 300 force

#play sound
playsound minecraft:block.bell.use player @a[distance=0..10] ~ ~ ~ 10 0.05

#Displays a Title
title @a[distance=0..10] actionbar ["",{"text":"Undergoing ","color":"gold"},{"text":"Revival","italic":true,"color":"yellow"},{"text":" - ","color":"gold"},{"text":"Do not leave the circle.","bold":true,"color":"gold"}]

#Runs the aux2 Function
schedule function hlwn:gameplay/revive/rev_aux2 3s

#Schedules end of function
schedule function hlwn:gameplay/revive/rev_fin_check 60s