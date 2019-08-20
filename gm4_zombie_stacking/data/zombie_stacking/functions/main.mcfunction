#@s refers to all players
#run as @a at @s from pulse_check

#-----
#for reference:
#checks for Passengers, CustomName, NoGravity, Invulnerable, and NoAI
#this is an OR || check so it needs multiple terms
#unless data entity @s Passengers unless data entity @s CustomName unless entity @s[nbt={NoGravity:1b}] unless entity @s[nbt={Invulnerable:1b}] unless entity @s[nbt={NoAI:1b}]
#-----

#-----
#tags used in the yxz_stack functions:
#gm4_base is the base of the bigger stack
#gm4_base_rider_x is a rider of the bigger stack
#gm4_addition is the base of the smaller stack
#gm4_addition_rider_x is a rider of the other stack

#gm4_base_rider_x and gm4_addition_rider_x are not present in 1x1

#gm4_new_base refers to the new stack's base. removed once NBT transfer is done
#gm4_new_rider_x refers to a rider of the new stack. removed once NBT transfer is done

#gm4_stack_base is the base of the new stack
#gm4_stack_size_x goes on the base and tells the size
#gm4_stack_rider_x is a rider of the new stack
#gm4_stack_rider is a rider of the new stack
#-----

#1x1
execute as @e[type=zombie,distance=..60,tag=!gm4_stack_base,tag=!gm4_stack_rider] unless data entity @s Passengers unless data entity @s CustomName unless entity @s[nbt={NoGravity:1b}] unless entity @s[nbt={Invulnerable:1b}] unless entity @s[nbt={NoAI:1b}] at @s as @e[type=zombie,distance=0.00001..1,tag=!gm4_stack_base,tag=!gm4_stack_rider] unless data entity @s Passengers unless data entity @s CustomName unless entity @s[nbt={NoGravity:1b}] unless entity @s[nbt={Invulnerable:1b}] unless entity @s[nbt={NoAI:1b}] run function zombie_stacking:1x1_stack

#2x1

#2x2

#3x1

#3x2

#4x1