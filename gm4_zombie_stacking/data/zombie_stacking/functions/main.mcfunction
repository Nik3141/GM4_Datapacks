#@s refers to all players
#run as @a at @s from pulse_check

#for reference:
#checks for Passengers, CustomName, NoGravity, Invulnerable, and NoAI
#This is an OR || check so it needs multiple terms
#unless data entity @s Passengers unless data entity @s CustomName unless entity @s[nbt={NoGravity:1b}] unless entity @s[nbt={Invulnerable:1b}] unless entity @s[nbt={NoAI:1b}]
#maybe it's possible to encapsulate it into another function, but I think it's not, or at least it isn't less complicated or more efficient

#1x1
execute as @e[type=zombie,distance=..60,tag=!gm4_zombie_stack] unless data entity @s Passengers unless data entity @s CustomName unless entity @s[nbt={NoGravity:1b}] unless entity @s[nbt={Invulnerable:1b}] unless entity @s[nbt={NoAI:1b}] at @s as @e[type=zombie,distance=0.00000001..0.8,tag=!gm4_zombie_stack] unless data entity @s Passengers unless data entity @s CustomName unless entity @s[nbt={NoGravity:1b}] unless entity @s[nbt={Invulnerable:1b}] unless entity @s[nbt={NoAI:1b}] if block ~ ~ ~ #zombie_stacking:stackable if block ~ ~1 ~ #zombie_stacking:stackable if block ~ ~2 ~ #zombie_stacking:stackable run function zombie_stacking:1x1_stack

#2x1

#2x2

#3x1

#3x2

#4x1