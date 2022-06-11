#Desc: Handles entities with `isDiscord`
#
#

#Tps to random player
execute as @e[tag=isDiscord] at @s run tp @r

#Chat
tellraw @a ["",{"text":"[","color":"white"},{"text":"#","obfuscated":true,"color":"dark_red"},{"text":"Discord","bold":true,"color":"dark_red"},{"text":"#","bold":true,"obfuscated":true,"color":"dark_red"},{"text":"] ","color":"white"},{"text":"Salutations Compadrés! What fun and exciting things are you all upto now? Oooooh! Fighting the dark forces of the legion while struggling to survive? How enthralling! Mind if I join in?","bold":true,"italic":true,"color":"dark_green"}]

#particle
execute as @e[tag=isDiscord] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0.1 10 force
execute as @e[tag=isDiscord] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0.1 10 force

#AEC
execute as @e[tag=isDiscord] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"note",Radius:7f,Duration:4800,WaitTime:100,Tags:["isDAEC"],Effects:[{Id:9b,Amplifier:25b,Duration:400},{Id:15b,Amplifier:1b,Duration:100},{Id:19b,Amplifier:1b,Duration:100}]}
execute as @e[tag=isDAEC] at @s run data modify entity @s Owner set from entity @e[tag=isDiscord,limit=1,sort=nearest]


#Recurses Function if `isDiscord` Entity is still present
execute if entity @e[tag=isDiscord] run schedule function hlwn:toggle_handles/discord_handle_3 15s