#Desc: Handles entities with `isArBen`
#
#

#Tags, Inverts the motion, and tps nearby arrows that are not shot by `isArBen` back to the player
execute as @e[type=arrow,tag=reflected] at @s unless entity @e[tag=isArBen,distance=..3] run tag @s remove reflected
execute at @e[tag=isArBen] anchored eyes positioned ^ ^ ^1 run tag @e[type=arrow,tag=!reflected,distance=0..5] add reflect_arrow
execute as @e[tag=reflect_arrow,nbt=!{Color:11250603}] store result entity @s Motion[0] double -0.000001 run data get entity @s Motion[0] 1000000
execute as @e[tag=reflect_arrow,nbt=!{Color:11250603}] store result entity @s Motion[1] double -0.000001 run data get entity @s Motion[1] 1000000
execute as @e[tag=reflect_arrow,nbt=!{Color:11250603}] store result entity @s Motion[2] double -0.000001 run data get entity @s Motion[2] 1000000
execute as @e[tag=isArBen] at @s as @e[type=minecraft:arrow,tag=reflect_arrow,distance=0..5] at @p run tp @s ^ ^1 ^1.5 facing entity @p eyes
tag @e[tag=reflect_arrow] add reflected
tag @e[tag=reflect_arrow] remove reflect_arrow

#Recurses Function if `isGiant` Entity is still present
execute if entity @e[tag=isArBen] run schedule function hlwn:toggle_handles/arrow_bend_handle 1t


#Depreciated
#tps arrows near `isArBend` to the nearest player
#Not This oneexecute as @e[tag=isArBen] at @s run execute as @e[type=minecraft:arrow,distance=0..5] at @p facing entity @p eyes run tp @s ^ ^-2 ^5 ~ ~180
#execute as @e[tag=isArBen] at @s as @e[type=minecraft:arrow,distance=0..5] at @p run tp @s ^ ^1 ^-1.5 facing entity @p eyes


