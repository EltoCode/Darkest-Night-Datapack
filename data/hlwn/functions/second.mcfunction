# Desc: All commands here run every second
#
# Called by: main:tick

#Recurs function
schedule function hlwn:second 1s

#Enables needed triggers
function hlwn:trigger_enables

#Remove point from Last Light Kills
execute as @a[team=hlwn_last_light,sort=nearest,scores={hlwn_kill_undead=1..}] run scoreboard players remove @s hlwn_kill_undead 1

#puts dark mobs on dark team and lets them pick up items
execute as @e[type=#hlwn:dark_mobs,tag=!isDark] run data merge entity @s {Team:"hlwn_dark_team",CanPickUpLoot:1b,Tags:["isDark"],AngerTime:2147483647}





#GamePlay#
##########

#Runs function to deal with players who died
execute as @a[team=hlwn_last_light] if score @s hlwn_dead_light matches 1.. run function hlwn:gameplay/player_death

#Runs function to revive players
#execute as @a[team=hlwn_last_light] at @s run execute as @p[team=hlwn_last_light] if score @s hlwn_dead_light matches 1.. run function hlwn:gameplay/player_revive

#Handles bottle o light points
function hlwn:gameplay/light_bottle_points

#Handles Light Sprit Abilities
function hlwn:gameplay/spirit_abs/abilities_main

#Checks for EsOrb at RevTwr
function hlwn:gameplay/revive/rev_itm_check


#Ambient#
#########

#Handles entities with `isInvis` and `isInvisNT`
function hlwn:ambient/invis_handle



#OLD#
#####

#scoreboard players add @a afkDis.checkAFK 1

#execute as @a[scores={afkDis.checkAFK=150..},team=!tg_tagged] at @s run function afk_display:check_afk
#execute as @a[team=afkDis.afk] at @s run function afk_display:remove_afk
