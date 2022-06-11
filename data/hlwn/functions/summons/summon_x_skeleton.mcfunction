#DESC: Handles Mass Skeleton Spawn
#
#


#Summons Skeleton
execute as @a[tag=hlwn_DL] at @s if score @s hlwn_skeletn_smn matches 1.. run summon minecraft:skeleton ~ ~-2 ~

#Decrements trigger score
execute as @a[tag=hlwn_DL] if score @s hlwn_skeletn_smn matches 1.. run scoreboard players remove @s hlwn_skeletn_smn 1

#Recurs Command - Depreciated 
#execute as @a[tag=hlwn_DL] if score @s hlwn_skeletn_smn matches 1.. run function hlwn:summons/summon_x_skeleton