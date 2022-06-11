#Desc: Handles the Light Golem ability aux
#
#


#tps the AEC to nearest player
execute as @s at @s run tp @e[tag=isPrcLi,sort=nearest,limit=1] ~ ~ ~

#Rotates the AEC
execute as @e[tag=isPrcLi] at @s run tp @s ~ ~ ~ ~10 ~

#Summons arrow at front
execute as @e[tag=isPrcLi] at @s positioned ~ ~10 ~ run summon arrow ^ ^ ^3 {Glowing:1b,pickup:0b,life:1160,damage:7d,crit:1b,PierceLevel:3b,Motion:[0.0,-10.0,0.0],Tags:["isPrcLiArw"],Team:"hlwn_last_light",SoundEvent:"ui.toast.challenge_complete"}

#Summons arrow at back
execute as @e[tag=isPrcLi] at @s positioned ~ ~10 ~ run summon arrow ^ ^ ^-3 {Glowing:1b,pickup:0b,life:1160,damage:7d,crit:1b,PierceLevel:3b,Motion:[0.0,-10.0,0.0],Tags:["isPrcLiArw"],Team:"hlwn_last_light",SoundEvent:"ui.toast.challenge_complete"}

#Sets the owner
execute as @e[tag=isPrcLiArw] at @s run data modify entity @s Owner set from entity @p[tag=PrcLi]

#Makes the arrows join the team
team join hlwn_last_light @e[tag=isPrcLiArw]

#removes the tag if no isPrcLi is nearby
execute as @s[tag=PrcLi] at @s unless entity @e[tag=isPrcLi,distance=0..5] run tag @s remove PrcLi

#recurses the function every 1 tick
execute as @s at @s run schedule function hlwn:gameplay/spirit_abs/pierce_light_aux2 1t