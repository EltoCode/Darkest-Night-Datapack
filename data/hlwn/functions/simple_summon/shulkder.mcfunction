#DESC: Summons Shulkder
#
#

#Summons Shulkder
summon spider ~ ~ ~ {Team:"hlwn_dark_team",Health:22f,Tags:["isDark","isLevImn"],Passengers:[{id:"minecraft:endermite",Team:"hlwn_dark_team",Tags:["isDark"],CustomName:'{"text":"Shulker Core","color":"dark_red","italic":true}'},{id:"minecraft:shulker",CustomNameVisible:1b,Team:"hlwn_dark_team",Health:22f,AttachFace:0b,Color:15b,Tags:["isDark"],CustomName:'{"text":"Shulkder","color":"dark_red","italic":true}',Attributes:[{Name:generic.max_health,Base:22}]}],CustomName:'{"text":"Shulkder","color":"dark_red","italic":true}',Attributes:[{Name:generic.max_health,Base:22},{Name:generic.armor,Base:10}]}

#Clears toggle handle schedule if exists
schedule clear hlwn:toggle_handles/levitate_immune_handle

#Activates the toggle handler
function hlwn:toggle_handles/levitate_immune_handle