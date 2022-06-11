#Desc: Checks for item at revive shrine
#
#

#checks if the function is unlocked, checks for an gapple, checks if the rev twr is active runs the fucntion
execute as @e[tag=isRevTwr] at @s unless score #hlwn_rev_func hlwn_func_lock_M matches 1 if entity @e[type=item,nbt={Item:{tag:{isEsOrb:1b}}},distance=0..2] unless entity @s[nbt={ActiveEffects:[{Id:15b,Amplifier:0b}]}] run function hlwn:gameplay/revive/rev_init

#checks if tower is deactivated
execute as @e[tag=isRevTwr] at @s unless score #hlwn_rev_func hlwn_func_lock_M matches 1 if entity @s[nbt={ActiveEffects:[{Id:15b,Amplifier:0b}]}] run title @a[distance=0..10] actionbar {"text":"This shrine is currently recharging. Try again later.","color":"gray"}