#Desc: Enables Triggers
#
#

#Checks and enable summon triggers
execute unless entity @a[team=hlwn_last_light,scores={KilledUndead=1..}] run function hlwn:summons/enable_smn_triggers