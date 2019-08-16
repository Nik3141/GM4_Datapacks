
# up
# left
# right
# down

# up right
# up left
# down right
# down left

scoreboard players enable @s gm4_confDirect
execute anchored eyes if score @s gm4_input = up gm4_constant run particle minecraft:dust 0 1 1 1 ^ ^0.5 ^1 0 0 0 1 1 force @s
execute anchored eyes if score @s gm4_input = left gm4_constant run particle minecraft:dust 0 1 1 1 ^0.5 ^ ^1 0 0 0 1 1 force @s
execute anchored eyes if score @s gm4_input = right gm4_constant run particle minecraft:dust 0 1 1 1 ^-0.5 ^ ^1 0 0 0 1 1 force @s
execute anchored eyes if score @s gm4_input = down gm4_constant run particle minecraft:dust 0 1 1 1 ^ ^-0.5 ^1 0 0 0 1 1 force @s

execute anchored eyes if score @s gm4_input = upRight gm4_constant run particle minecraft:dust 0 1 1 1 ^-0.5 ^0.5 ^1 0 0 0 1 1 force @s
execute anchored eyes if score @s gm4_input = upLeft gm4_constant run particle minecraft:dust 0 1 1 1 ^0.5 ^0.5 ^1 0 0 0 1 1 force @s
execute anchored eyes if score @s gm4_input = downRight gm4_constant run particle minecraft:dust 0 1 1 1 ^-0.5 ^-0.5 ^1 0 0 0 1 1 force @s
execute anchored eyes if score @s gm4_input = downLeft gm4_constant run particle minecraft:dust 0 1 1 1 ^0.5 ^-0.5 ^1 0 0 0 1 1 force @s