#Desc: Handles entities with `isInvis` and `isInvisNT`
#
#

#Makes `isInvis` Invisible
effect give @e[tag=isInvis] minecraft:invisibility 10 1

#Kills `isInvisNT` when no entity is nearby
execute as @e[tag=isInvisNT] at @s unless entity @e[tag=!isInvisNT,distance=0..2] run kill @s