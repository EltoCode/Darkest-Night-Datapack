#Desc: Finishes Revival Process
#
#Run as the gapple

#Revives the nearest spectator player
execute as @p[scores={hlwn_dead_light=1..}] run function hlwn:gameplay/player_revive 

#Particle Effect 
particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 1 300 force

#play sound
playsound minecraft:block.beacon.activate player @a[distance=0..10] ~ ~ ~ 10 2

#Kills the gapple
kill @s

#Unlocks the function
scoreboard players reset #hlwn_rev_func hlwn_func_lock_M