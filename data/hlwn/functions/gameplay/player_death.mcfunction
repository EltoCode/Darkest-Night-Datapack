#Desc: Revives a dead player
#
#

#sets mode to spectator
gamemode spectator @s

#makes them spectate nearest survival player
execute as @s at @s run spectate @p[gamemode=survival]

#Enables Spirit Triggers 
execute as @s run function hlwn:gameplay/spirit_abs/enable_abs_triggers