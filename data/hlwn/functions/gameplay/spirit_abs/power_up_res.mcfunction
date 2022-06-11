#Desc: Handles the Power Up Resistance
#
#

#Sends a message 
tellraw @a ["",{"selector":"@p[gamemode=survival]","bold":true,"italic":true,"color":"yellow"},{"text":"'s Spirit Ability Activates! - ","bold":true,"italic":true,"color":"yellow"},{"text":"Light Power UP↑ - Resistance!","bold":true,"italic":true,"color":"gold"},{"text":" ","bold":true,"italic":true,"color":"yellow"}]

#Gives 
effect give @p[gamemode=survival] minecraft:resistance 30 1 

#Resets the trigger
scoreboard players reset @s hlwn_power_up