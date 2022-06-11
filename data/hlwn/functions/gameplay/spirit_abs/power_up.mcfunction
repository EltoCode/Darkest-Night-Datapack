#Desc: Handles the Power Up ability
#
#

#Removes the 2 required points from the host
execute as @s at @s run scoreboard players remove @p[gamemode=survival] hlwn_kill_undead 2

#Runs resistance if = 1
execute as @s at @s if score @s hlwn_power_up matches 1 run function hlwn:gameplay/spirit_abs/power_up_res

#Runs strenghth if = 2
execute as @s at @s if score @s hlwn_power_up matches 2 run function hlwn:gameplay/spirit_abs/power_up_str

#Runs speed if = 3
execute as @s at @s if score @s hlwn_power_up matches 3.. run function hlwn:gameplay/spirit_abs/power_up_spd