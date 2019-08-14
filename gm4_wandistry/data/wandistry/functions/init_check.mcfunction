#unless the module is already initialized
execute unless score wandistry gm4_modules matches 1.. run function wandistry:init
scoreboard players add installed_modules gm4_up_check 1
