#DESC: Handles Mass Zombie Spawn
#
#


#Summons Zombie
execute as @a[tag=hlwn_DL] at @s if score @s hlwn_zombie_smn matches 1.. run summon minecraft:zombie ~ ~-2 ~

#Decrements trigger score
execute as @a[tag=hlwn_DL] if score @s hlwn_zombie_smn matches 1.. run scoreboard players remove @s hlwn_zombie_smn 1

#Recurs Command - Depreciated 
#execute as @a[tag=hlwn_DL] if score @s hlwn_zombie_smn matches 1.. run function hlwn:summons/summon_x_zombie