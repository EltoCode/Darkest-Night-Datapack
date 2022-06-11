#Desc: Handles the giving of bottle of light points
#
#

#Gives points to nearby light players.
execute as @e[type=area_effect_cloud,nbt={Color:16777056}] at @s run scoreboard players add @p[distance=0..1,team=hlwn_last_light,limit=1,gamemode=!spectator] hlwn_kill_undead 1

#Summons a Dark Spectre unless there is a certain amount
execute as @e[type=area_effect_cloud,nbt={Color:16777056}] at @s as @p[distance=0..10,team=hlwn_last_light,limit=1] at @s unless entity @e[tag=isESpc,distance=0..6] positioned ~4 ~7 ~4 run function hlwn:simple_summon/elite_spectre

#Recurses Fucntion every half second if the cloud is there
execute as @e[type=area_effect_cloud,nbt={Color:16777056}] run schedule function hlwn:gameplay/light_bottle_points 1t


