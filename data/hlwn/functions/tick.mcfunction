# Desc: All commands here run every tick
#
# Called by: main:tick

#Recurses Function
schedule function hlwn:tick 1t

#Gameplay#
##########

#Handles Summoning Checks
function hlwn:summons/summon_main



#Ambient#
#########

#Creates Ambient Particles
function hlwn:ambient/ambient_particle

#scoreboard players add @a afkDis.checkAFK 1

#execute as @a[scores={afkDis.checkAFK=150..},team=!tg_tagged] at @s run function afk_display:check_afk
#execute as @a[team=afkDis.afk] at @s run function afk_display:remove_afk
