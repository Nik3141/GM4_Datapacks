#@s refers to all players
#run as @a from pulse_check

#1x1
execute as @e[type=zombie,distance=..60,tag=!gm4_zombie_stack] at @s if entity @e[type=zombie,distance=0.00000001..0.8,tag=!gm4_zombie_stack] run function zombie_stacking:1x1_stack

#2x1

#2x2

#3x1

#3x2

#4x1