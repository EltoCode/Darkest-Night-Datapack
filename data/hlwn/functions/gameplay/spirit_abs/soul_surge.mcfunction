#Desc: Handles the Soul-Light Surge ability
#
#

#No Point Reduction is neccesary.


#Sends a message 
tellraw @a ["",{"selector":"@p[gamemode=survival]","bold":true,"italic":true,"color":"yellow"},{"text":"'s Spirit Ability Activates! - ","bold":true,"italic":true,"color":"yellow"},{"text":"SOUL-LIGHT SURGE!","bold":true,"italic":true,"color":"gold"},{"text":" ","bold":true,"italic":true,"color":"yellow"}]

#tags the host player with SlSrg
tag @p[gamemode=survival] add SlSrg

#runs the soul light aux funtion as the host
execute as @s at @s as @p[gamemode=survival] run function hlwn:gameplay/spirit_abs/soul_surge_aux
