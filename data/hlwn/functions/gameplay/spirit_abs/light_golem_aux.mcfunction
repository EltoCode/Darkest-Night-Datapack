#Desc: Handles the Light Golem ability aux
#
#


#tps the Golem behind the player
execute as @s at @s run tp @e[tag=isLtGlm,sort=nearest,limit=1] ^ ^ ^-0.7

#removes the tag if no LtGolem is nearby
execute as @s[tag=LtGlm] at @s unless entity @e[tag=isLtGlm,distance=0..10] run tag @s remove LtGlm

#recurses the function every 1 tick
execute as @s run schedule function hlwn:gameplay/spirit_abs/light_golem_aux2 1t