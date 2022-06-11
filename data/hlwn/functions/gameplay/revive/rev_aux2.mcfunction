#Desc: Handles searching for the gapple and runs aux
#
#

#runs the aux cmd
execute as @e[type=item,nbt={Item:{tag:{isEsOrb:2b}}},sort=nearest,limit=1] at @s run function hlwn:gameplay/revive/rev_aux