#DESC: Summons Giant
#
#

#Summons Giant
summon giant ~ ~ ~ {CustomNameVisible:1b,Team:"hlwn_dark_team",Health:140f,Tags:["isDark","isGiant"],Passengers:[{id:"minecraft:zombie",Team:"hlwn_dark_team",CanPickUpLoot:1b,Health:30f,Tags:["isDark"],CustomName:'{"text":"Giant Core","color":"dark_red","italic":true}',Attributes:[{Name:generic.max_health,Base:30},{Name:generic.follow_range,Base:50}]}],CustomName:'{"text":"Dark Lord\'s Giant","color":"dark_red","bold":true}',Attributes:[{Name:generic.max_health,Base:140}]}

#Clears toggle handle schedule if exists
schedule clear hlwn:toggle_handles/giant_damage_handle

#Activates the toggle handler
function hlwn:toggle_handles/giant_damage_handle