#Desc: Revives a dead player
#
#

#resets Death Score
scoreboard players reset @s hlwn_dead_light

#sets dead player to survial 
gamemode survival @s 

#displays a message
tellraw @a ["",{"selector":"@s","italic":true},{"text":" has been revived to light!","italic":true,"color":"yellow"}]

#Disables Triggers
execute as @s run function hlwn:gameplay/spirit_abs/disable_abs_triggers