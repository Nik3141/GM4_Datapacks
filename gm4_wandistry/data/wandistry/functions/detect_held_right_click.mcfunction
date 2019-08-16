#@s refers to any player holding a wand
#run from pulse_check

#tag player
execute as @s[scores={gm4_hold_timer=1..}] run tag @s add gm4_casting_spell

#count the timer down
scoreboard players remove @s[scores={gm4_hold_timer=1..}] gm4_hold_timer 1

#reset the timer if the carrot on the stick was used
scoreboard players set @s[scores={gm4_carrot_click=1}] gm4_hold_timer 5

#reset the scoreboard that detects if the carrot on the stick was used
scoreboard players set @s gm4_carrot_click 0

#get player rotation (here for continutity when not holding right click)
execute store result score @s gm4_rotOne run data get entity @s Rotation[0] 100
execute store result score @s gm4_rotTwo run data get entity @s Rotation[1] 100

#log movements if player is holding right click
execute as @s[tag=!gm4_spell_confirmed,scores={gm4_hold_timer=1..}] at @s run function wandistry:log_movements
execute as @s[tag=gm4_casting_spell,scores={gm4_hold_timer=0}] at @s run function #wandistry:cast_spell
execute as @s[tag=gm4_casting_spell,scores={gm4_hold_timer=0}] at @s run function wandistry:clear_logged_movements
execute as @s[tag=gm4_casting_spell,scores={gm4_hold_timer=0}] run tag @s remove gm4_spell_confirmed
execute as @s[tag=gm4_casting_spell,scores={gm4_hold_timer=0}] run tag @s remove gm4_casting_spell

#remember values for next tick (here for continutity when not holding right click)
scoreboard players operation @s gm4_lastRotOne = @s gm4_rotOne
scoreboard players operation @s gm4_lastRotTwo = @s gm4_rotTwo
execute as @s[scores={gm4_regInput=1}] run scoreboard players operation @s gm4_lastInput = @s gm4_input



#function explanation:
#when the player is right clicking, they will receive the gm4_casting_spell tag.
#when their timer counts down, that tag as well as gm4_spell_confirmed is removed after all #wandistry:cast_spell functions are run


#in wandistry:log_movements, once the player stops moving all functions tagged #wandistry:check_spells (which check for successful matches) are run and the player is tagged gm4_spell_confirmed
#if a match is confirmed they will tag the player with a specific tag for that spell