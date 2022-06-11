#Desc: Handles Rev aux
#
#

#rotates gapple
tp @s ~ ~ ~ ~10 ~

#puts particle
particle minecraft:lava ^ ^ ^15 0 10 0 0 100 normal

#sends buh bye message if no player is near the shrine
execute unless entity @a[distance=0..15] run tellraw @a ["",{"selector":"@p[gamemode=survival]"},{"text":"'s Revive Attempt failed, as all players left the shrine.","italic":true,"color":"yellow"}]

#gapple commits sodoku out of lonliness
execute unless entity @a[distance=0..15] run kill @s

#unlocks the function if no players nearby
execute unless entity @a[distance=0..15] run scoreboard players reset #hlwn_rev_func hlwn_func_lock_M

#Schedules Aux 2
schedule function hlwn:gameplay/revive/rev_aux2 1t
