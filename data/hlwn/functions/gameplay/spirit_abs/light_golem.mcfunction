#Desc: Handles the Light Golem ability
#
#

#Removes the 15 required points from the host
execute as @s at @s run scoreboard players remove @p[gamemode=survival] hlwn_kill_undead 15

#Sends a message 
tellraw @a ["",{"selector":"@p[gamemode=survival]","bold":true,"italic":true,"color":"yellow"},{"text":"'s Spirit Ability Activates! - ","bold":true,"italic":true,"color":"yellow"},{"text":"LIGHT GOLEM!","bold":true,"italic":true,"color":"gold"},{"text":" ","bold":true,"italic":true,"color":"yellow"}]

#tags the host player with LtGlm
execute as @s at @s run tag @p[gamemode=survival] add LtGlm

#Summons a Light Golem
execute as @s at @s run summon iron_golem ^ ^ ^-1 {NoGravity:1b,Glowing:1b,CustomNameVisible:1b,Team:"hlwn_last_light",PlayerCreated:1b,Tags:["isLtGlm","isDark"],CustomName:'{"text":"『Star Ironium』","color":"gold","bold":true,"italic":true}',ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b},{Id:19b,Amplifier:1b,Duration:999999}],Attributes:[{Name:generic.attack_damage,Base:25}]}

#runs the light golem aux funtion
execute as @s at @s run function hlwn:gameplay/spirit_abs/light_golem_aux
