#Desc: Finishes Revival Process
#
#

#Revives the nearest spectator player
execute as @e[type=item,nbt={Item:{tag:{isEsOrb:2b}}},sort=nearest,limit=1] at @s run function hlwn:gameplay/revive/rev_fin