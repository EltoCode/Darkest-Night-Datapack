#DESC: Handles Mass Creeper Spawn
#
#


#Summons Creeper
execute as @a[tag=hlwn_DL] at @s if score @s hlwn_creeper_smn matches 1.. run summon minecraft:creeper ~ ~-2 ~

#Decrements trigger score
execute as @a[tag=hlwn_DL] if score @s hlwn_creeper_smn matches 1.. run scoreboard players remove @s hlwn_creeper_smn 1

#Recurs Command - Depreciated 
#execute as @a[tag=hlwn_DL] if score @s hlwn_creeper_smn matches 1.. run function hlwn:summons/summon_x_creeper