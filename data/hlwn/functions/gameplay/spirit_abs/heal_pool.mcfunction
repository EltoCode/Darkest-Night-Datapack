#Desc: Handles the Heal Pool ability
#
#

#Removes the 10 required points from the host
execute as @s at @s run scoreboard players remove @p[gamemode=survival] hlwn_kill_undead 10

#Sends a message 
tellraw @a ["",{"selector":"@p[gamemode=survival]","bold":true,"italic":true,"color":"yellow"},{"text":"'s Spirit Ability Activates! - ","bold":true,"italic":true,"color":"yellow"},{"text":"HEAL POOL!","bold":true,"italic":true,"color":"gold"},{"text":" ","bold":true,"italic":true,"color":"yellow"}]

#Summons a Heal Pool
#execute as @s at @s run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Radius:7f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0f,Color:16717317,Tags:["isHealPool"]}
execute as @s at @s run summon area_effect_cloud ~ ~ ~ {Particle:"entity_effect",NoGravity:1b,Radius:5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:200,DurationOnUse:0f,Color:16717317,Tags:["isHealPool"],Potion:"minecraft:strong_healing"}

#Sets the Owner UUID of the field
execute as @s at @s run data modify entity @e[tag=isHealPoolM,sort=nearest,limit=1] Owner set from entity @p[gamemode=survival] UUID

#Runs the Aux command
#execute as @p[gamemode=survival] at @s run function hlwn:gameplay/spirit_abs/heal_pool_aux
execute as @s at @s run execute as @e[tag=isHealPool,sort=nearest,limit=1] run function hlwn:gameplay/spirit_abs/heal_pool_aux