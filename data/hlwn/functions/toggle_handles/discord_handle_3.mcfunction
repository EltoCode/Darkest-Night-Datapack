#Desc: Handles entities with `isDiscord`
#
#

#Tps to random player
execute as @e[tag=isDiscord] at @s run tp @r

#Chat
tellraw @a ["",{"text":"[","color":"white"},{"text":"#","obfuscated":true,"color":"dark_red"},{"text":"Discord","bold":true,"color":"dark_red"},{"text":"#","bold":true,"obfuscated":true,"color":"dark_red"},{"text":"] ","color":"white"},{"text":"Hello Hello Hello! How are my favrioute pathetically adorable light fighters today? Still struggling to vanquish that light I prrresume? Well do go on then, don't mind me! I'm just here to enjoy the sights!","bold":true,"italic":true,"color":"dark_purple"}]

#particle
execute as @e[tag=isDiscord] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0.1 10 force
execute as @e[tag=isDiscord] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0.1 10 force

#AEC
execute as @e[tag=isDiscord] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"sweep_attack",Radius:7f,Duration:4800,WaitTime:100,Tags:["isDAEC"],Effects:[{Id:9b,Amplifier:25b,Duration:4800},{Id:21b,Amplifier:2b,Duration:100},{Id:31b,Amplifier:6b,Duration:100}]}
execute as @e[tag=isDAEC] at @s run data modify entity @s Owner set from entity @e[tag=isDiscord,limit=1,sort=nearest]


#Recurses Function if `isDiscord` Entity is still present
execute if entity @e[tag=isDiscord] run schedule function hlwn:toggle_handles/discord_handle_1 15s