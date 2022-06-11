#DESC: Handles Mass Spawn
#
#

#Zombies
execute as @a[tag=hlwn_DL] if score @s hlwn_zombie_smn matches 1.. run function hlwn:summons/summon_x_zombie

#Skeletons
execute as @a[tag=hlwn_DL] if score @s hlwn_skeletn_smn matches 1.. run function hlwn:summons/summon_x_skeleton

#Creepers
execute as @a[tag=hlwn_DL] if score @s hlwn_creeper_smn matches 1.. run function hlwn:summons/summon_x_creeper