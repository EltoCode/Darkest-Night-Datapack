#DESC: Summons Arrow Bender
#
#

#Summons Arrow Bender
summon skeleton ~ ~ ~ {Team:"hlwn_dark_team",Tags:["isDark","isArBen"],CustomName:'{"text":"Arrow Bender","color":"dark_red","italic":true}',HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:3s},{id:"minecraft:punch",lvl:10s}]}},{id:"minecraft:tipped_arrow",Count:1b,tag:{Enchantments:[{}],CustomPotionColor:11250603}}],HandDropChances:[-327.670F,-327.670F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:11579568},Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:10s},{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:8553090},Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:10s},{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:chainmail_chestplate",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:10s},{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{}]}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Health:60f,Attributes:[{Name:generic.max_health,Base:60},{Name:generic.follow_range,Base:40}]}

#Clears toggle handle schedule if exists
schedule clear hlwn:toggle_handles/arrow_bend_handle

#Activates the toggle handler
function hlwn:toggle_handles/arrow_bend_handle