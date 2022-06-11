#DESC: Handles Mass Spawn
#
#

#Power Up
execute as @a[team=hlwn_last_light] if score @s hlwn_power_up matches 1.. run function hlwn:gameplay/spirit_abs/power_up_check

#Heal Pool
execute as @a[team=hlwn_last_light] if score @s hlwn_heal_pool matches 1.. run function hlwn:gameplay/spirit_abs/heal_pool_check

#Light Golem
execute as @a[team=hlwn_last_light] if score @s hlwn_light_golem matches 1.. run function hlwn:gameplay/spirit_abs/light_golem_check

#Pierce Light
execute as @a[team=hlwn_last_light] if score @s hlwn_pierc_light matches 1.. run function hlwn:gameplay/spirit_abs/pierce_light_check

#Soul-Light Surge
execute as @a[team=hlwn_last_light] if score @s hlwn_soul_surge matches 1.. run function hlwn:gameplay/spirit_abs/soul_surge_check

#Light Essence Orb
execute as @a[team=hlwn_last_light] if score @s hlwn_light_orb matches 1.. run function hlwn:gameplay/spirit_abs/give_orb_check
