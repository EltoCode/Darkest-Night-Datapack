#DESC: Disables Summon Triggers
#
#

#Disables Triggers
execute as @s run trigger hlwn_power_up add 0
execute as @s run trigger hlwn_heal_pool add 0
execute as @s run trigger hlwn_light_golem add 0
execute as @s run trigger hlwn_pierc_light add 0
execute as @s run trigger hlwn_soul_surge add 0
execute as @s run trigger hlwn_light_orb add 0


#Resets Trigger Values
scoreboard players reset @s hlwn_power_up
scoreboard players reset @s hlwn_heal_pool
scoreboard players reset @s hlwn_light_golem
scoreboard players reset @s hlwn_pierc_light
scoreboard players reset @s hlwn_soul_surge
scoreboard players reset @s hlwn_light_orb