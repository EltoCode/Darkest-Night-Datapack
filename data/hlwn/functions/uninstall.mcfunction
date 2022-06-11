# Desc: Unistalls AFK
#
# Called by: Player

team remove hlwn_last_light
scoreboard objectives remove hlwn_kill_undead
scoreboard objectives remove hlwn_dead_light

scoreboard objectives remove hlwn_zombie_smn 
scoreboard objectives remove hlwn_skeletn_smn
scoreboard objectives remove hlwn_creeper_smn

scoreboard objectives remove hlwn_power_up
scoreboard objectives remove hlwn_heal_pool
scoreboard objectives remove hlwn_light_golem
scoreboard objectives remove hlwn_pierc_light
scoreboard objectives remove hlwn_soul_surge
scoreboard objectives remove hlwn_light_orb


scoreboard objectives remove hlwn_func_lock_M


#schedule clear afk_display:second

#scoreboard objectives remove afkDis.x1
#scoreboard objectives remove afkDis.x2
#scoreboard objectives remove afkDis.y1
#scoreboard objectives remove afkDis.y2
#scoreboard objectives remove afkDis.z1
#scoreboard objectives remove afkDis.z2
#scoreboard objectives remove afkDis.checkAFK
#team remove afkDis.afk
