#Desc: Handles entities with `isGiant`
#
#

#Deals Damage to nearby players
execute as @e[tag=isGiant] at @s run effect give @p[distance=0..3] minecraft:instant_damage 1 2

#Recurses Function if `isGiant` Entity is still present
execute if entity @e[tag=isGiant] run schedule function hlwn:toggle_handles/giant_damage_handle 10t