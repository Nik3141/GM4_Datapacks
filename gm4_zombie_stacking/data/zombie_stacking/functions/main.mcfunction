#@s refers to all players
#run as @a at @s from pulse_check

#1x1
execute as @e[type=zombie,distance=..60,tag=!gm4_zombie_stack] unless data entity @s Passengers at @s as @e[type=zombie,distance=0.00000001..0.8,tag=!gm4_zombie_stack] unless data entity @s Passengers run function zombie_stacking:1x1_stack

#2x1

#2x2

#3x1

#3x2

#4x1