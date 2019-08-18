#unless the module is already initialized
execute unless score zombie_stacking gm4_modules matches 1.. run function zombie_stacking:init
scoreboard players add installed_modules gm4_up_check 1
