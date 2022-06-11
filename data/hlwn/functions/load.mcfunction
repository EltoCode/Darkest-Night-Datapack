#Intialises Scoreboards and other requirements
#
#

#Last Light Team Setup#

team add hlwn_last_light {"text":"Last Light","color":"yellow"}
team modify hlwn_last_light prefix {"text":"Last of the Light ","color":"yellow","italic":true}
team modify hlwn_last_light color yellow

#Way for the Team to get Light Points
scoreboard objectives add hlwn_kill_undead teamkill.dark_gray {"text":"Time of Shining Light","bold":true,"italic":true,"underlined":true,"color":"gold"}

#Way to check for dead lights.
scoreboard objectives add hlwn_dead_light deathCount {"text":"The Light That Died","italic":true,"color":"gray"}

#Light Trigger abilities
scoreboard objectives add hlwn_power_up trigger {"text":"Light Power UP\u2191","italic":true,"color":"yellow"}
scoreboard objectives add hlwn_heal_pool trigger {"text":"Create a Heal Pool","italic":true,"color":"yellow"}
scoreboard objectives add hlwn_light_golem trigger {"text":"Light Guardian","italic":true,"color":"yellow"}
scoreboard objectives add hlwn_pierc_light trigger {"text":"Piercing Light","italic":true,"color":"yellow"}
scoreboard objectives add hlwn_soul_surge trigger {"text":"Soul-Light Surge!","italic":true,"color":"yellow"}
scoreboard objectives add hlwn_light_orb trigger {"text":"Light Essence Orb","italic":true,"color":"yellow"}


#Dark Legion Team Setup#
team add hlwn_dark_team {"text":"Dark Legion","color":"dark_gray","bold":true}
team modify hlwn_dark_team prefix [{"text":"D","color":"black","bold":true,"obfuscated":true},{"text":"Dark","color":"dark_gray","bold":true,"obfuscated":false},{"text":"E","color":"black","bold":true,"obfuscated":true},{"text":"Legion","color":"dark_gray","bold":true,"obfuscated":false},{"text":"D","color":"black","bold":true,"obfuscated":true}]
team modify hlwn_dark_team color dark_gray
team modify hlwn_dark_team friendlyFire false


#Summons#

#For Summon Zombies
scoreboard objectives add hlwn_zombie_smn trigger "Sumon X Zombies"

#For Summon Skeletons
scoreboard objectives add hlwn_skeletn_smn trigger "Sumon X Skeletons"

#For Summon Creepers
scoreboard objectives add hlwn_creeper_smn trigger "Sumon X Creepers"


#Misc#

#Creates a function Semaphore
scoreboard objectives add hlwn_func_lock_M dummy


#scoreboard objectives add afkDis.x1 dummy
#scoreboard objectives add afkDis.x2 dummy
#scoreboard objectives add afkDis.y1 dummy
#scoreboard objectives add afkDis.y2 dummy
#scoreboard objectives add afkDis.z1 dummy
#scoreboard objectives add afkDis.z2 dummy
#scoreboard objectives add afkDis.checkAFK dummy
#
#team add afkDis.afk "AFK Players"
#team modify afkDis.afk color gray
