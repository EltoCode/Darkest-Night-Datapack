#Desc: Handles the Power Up ability check
#
#

#Reset Trigger moved to the end of effect given because the value is needed

#Gives error message if host does not have enough light points
execute as @s at @s if score @p[gamemode=survival] hlwn_kill_undead matches ..1 run tellraw @s ["",{"text":"Your Host: ","color":"gold"},{"selector":"@p[gamemode=survival]","italic":true,"color":"yellow"},{"text":" does not have enough ","color":"gold"},{"text":"Light Points","bold":true,"italic":true,"color":"yellow"},{"text":" to use this ability! ","color":"gold"},{"text":"\n"},{"text":"2lP","bold":true,"italic":true,"color":"yellow"},{"text":" is required. \u0020","color":"gold"}]

#Reduces points and Function if enough heals points are availible
execute as @s at @s if score @p[gamemode=survival] hlwn_kill_undead matches 2.. run function hlwn:gameplay/spirit_abs/power_up

#Resets trigger if enough lp no availible
execute as @s at @s if score @p[gamemode=survival] hlwn_kill_undead matches ..1 run scoreboard players reset @s hlwn_power_up
