#Desc: Handles the Heal Pool ability aux
#
#

#tps AEC nearest player
execute as @e[tag=isHealPool] at @s run tp @p[gamemode=survival]

#Summons new AEC
#summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Radius:7f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0f,Color:16717317,Tags:["isHealPool"],Potion:"minecraft:strong_healing"}

#recurses command every 0.5s
execute as @s run schedule function hlwn:gameplay/spirit_abs/heal_pool_aux 10t