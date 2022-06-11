#Desc: Handles the Soul-Light Surge ability aux
#
#


#forces the player forward via tp
execute as @s at @s run tp @s ^ ^ ^1 ~ 0

#Ensures the player is not stuck in blocks
execute as @s at @s unless block ~ ~ ~ minecraft:air run tp @s ~ ~1 ~

#kills nearby dark mobs
execute as @s at @s as @e[team=hlwn_dark_team,distance=0..2] at @s run summon arrow ~ ~2.5 ~ {life:1190,damage:20d,Motion:[0.0,-10.0,0.0],Tags:["SlSrgAr"]}

#sets arrows UUID
execute as @e[tag=SlSrgAr] run data modify entity @s Owner set from entity @p[tag=SlSrg] UUID

#Reduces a Light Point as cost
scoreboard players remove @s hlwn_kill_undead 1

#gives the player jump boost
effect give @s minecraft:jump_boost 2 2 true

#gives the player speed
effect give @s minecraft:speed 2 2 true

#Removes the SlSrg tag if player out of light points
execute as @s unless score @s hlwn_kill_undead matches 1.. run tag @a remove SlSrg

#recurses the function every 1 tick
execute as @s if score @s hlwn_kill_undead matches 1.. run schedule function hlwn:gameplay/spirit_abs/soul_surge_aux2 1t