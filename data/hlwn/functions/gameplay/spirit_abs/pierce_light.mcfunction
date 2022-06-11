#Desc: Handles the Light Golem ability
#
#

#Removes the 15 required points from the host
execute as @s at @s run scoreboard players remove @p[gamemode=survival] hlwn_kill_undead 30

#Sends a message 
tellraw @a ["",{"selector":"@p[gamemode=survival]","bold":true,"italic":true,"color":"yellow"},{"text":"'s Spirit Ability Activates! - ","bold":true,"italic":true,"color":"yellow"},{"text":"Piercing Light!","bold":true,"italic":true,"color":"gold"},{"text":" ","bold":true,"italic":true,"color":"yellow"}]

#Summons an AEC to be arrows parent
summon area_effect_cloud ~ ~ ~ {CustomName:'{"text":"PrcLiAEC"}',NoGravity:1b,Duration:300,Tags:["isPrcLi"]}

#tags the host player with PrcLi
execute as @s at @s run tag @p[gamemode=survival] add PrcLi

#runs the pierce light aux funtion
execute as @s at @s run function hlwn:gameplay/spirit_abs/pierce_light_aux
