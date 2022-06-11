#Desc: Handles the Give Light Orb ability
#
#

#Removes the 100 required points from the host
execute as @s at @s run scoreboard players remove @p[gamemode=survival] hlwn_kill_undead 100

#gives the item
execute as @p[gamemode=survival] run function hlwn:give/light_orb

#Sends a message 
tellraw @p[gamemode=survival] {"text":"You received an enigmatic item, as if from no where...","italic":true,"color":"gold"}
