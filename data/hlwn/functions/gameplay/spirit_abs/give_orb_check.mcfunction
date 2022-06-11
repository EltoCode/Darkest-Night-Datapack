#Desc: Handles the Soul-Light Surge ability check
#
#

#Resets the trigger
scoreboard players reset @s hlwn_light_orb

#Gives error message if host does not have enough light points
execute as @s at @s if score @p[gamemode=survival] hlwn_kill_undead matches ..99 run tellraw @s ["",{"text":"Your Host: ","color":"gold"},{"selector":"@p[gamemode=survival]","italic":true,"color":"yellow"},{"text":" does not have enough ","color":"gold"},{"text":"Light Points","bold":true,"italic":true,"color":"yellow"},{"text":" to use this ability! ","color":"gold"},{"text":"\n"},{"text":"100lP","bold":true,"italic":true,"color":"yellow"},{"text":" is required. \u0020","color":"gold"}]

#Reduces points and Executes Function if enough light points are availible
execute as @s at @s if score @p[gamemode=survival] hlwn_kill_undead matches 100.. run function hlwn:gameplay/spirit_abs/give_orb

