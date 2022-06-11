#Desc: Handles the Power Up Speed
#
#

#Sends a message 
tellraw @a ["",{"selector":"@p[gamemode=survival]","bold":true,"italic":true,"color":"yellow"},{"text":"'s Spirit Ability Activates! - ","bold":true,"italic":true,"color":"yellow"},{"text":"Light Power UP↑ - Speed!","bold":true,"italic":true,"color":"gold"},{"text":" ","bold":true,"italic":true,"color":"yellow"}]

#Gives 
effect give @p[gamemode=survival] minecraft:speed 30 1 

#Resets the trigger
scoreboard players reset @s hlwn_power_up