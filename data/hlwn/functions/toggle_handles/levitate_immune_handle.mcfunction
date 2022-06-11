#Desc: Handles entities with `isInvis` and `isLevImn`
#
#

#Removes Leviatation from mobs with `isLevImn`
effect clear @e[tag=isLevImn] minecraft:levitation

#Recurses Function if `isLevImn` Entity is still present
execute if entity @e[tag=isLevImn] run schedule function hlwn:toggle_handles/levitate_immune_handle 10t