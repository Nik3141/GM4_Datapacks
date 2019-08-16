#unless the module is already initialized
execute unless score wandistry gm4_modules matches 1.. run function wandistry:init
scoreboard players add installed_modules gm4_up_check 1

#carrot hold scoreboards
scoreboard objectives add gm4_carrot_click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add gm4_hold_timer dummy

#please note this is the work of bearb001 from Arqade: https://gaming.stackexchange.com/questions/353437
#I'm just using it for the system, all credit goes to him, aside from maybe the inspiration

#wand movement detection scoreboards
#tracks horizontal rotation
scoreboard objectives add gm4_rotOne dummy

#tracks vertical rotation
scoreboard objectives add gm4_rotTwo dummy

#tracks the distance rotated within one tick
scoreboard objectives add gm4_distance dummy

#used for maths
scoreboard objectives add gm4_placeholder dummy

#hold the values from the previous tick, also used for maths
scoreboard objectives add gm4_lastRotOne dummy
scoreboard objectives add gm4_lastRotTwo dummy
scoreboard objectives add gm4_lastInput dummy

#flags when an input should be registered
scoreboard objectives add gm4_regInput dummy

#tracks the input in what direction the player moved
#is 0 if the player didn't move fast enough
scoreboard objectives add gm4_input dummy

#used as timer to know if a new gm4_input value should be registered
#and to detect if a player doesn't move for a while
scoreboard objectives add gm4_timer dummy

#use these to remember previous inputs, add as many as you need
scoreboard objectives add gm4_stepOne dummy
scoreboard objectives add gm4_stepTwo dummy
scoreboard objectives add gm4_stepThree dummy
scoreboard objectives add gm4_stepFour dummy

#add constant values, these should not be changed!
scoreboard objectives add gm4_constant dummy
scoreboard players set minusOne gm4_constant -1
scoreboard players set noMovement gm4_constant 0
scoreboard players set up gm4_constant 1
scoreboard players set down gm4_constant 2
scoreboard players set right gm4_constant 3
scoreboard players set upRight gm4_constant 4
scoreboard players set downRight gm4_constant 5
scoreboard players set left gm4_constant 6
scoreboard players set upLeft gm4_constant 7
scoreboard players set downLeft gm4_constant 8

#A trigger scoreboard objective that can be set to 1, or 0 by each individual player, 
#defaults to 0, confirms inputs in chat for players where it is set to 1
scoreboard objectives add gm4_confDirect trigger

#add parameters, these change how the log_movements function operates
scoreboard objectives add gm4_parameter dummy

#Defines how fast you have to rotate for it to count as an input
scoreboard players set speedRequired gm4_parameter 2500000

#Defines how fast you can maximally move before it counts as not moving
scoreboard players set maximalRotationWhenNotMoving gm4_parameter 1500000

#Defines how long you have to not move before it counts as an "input"
scoreboard players set timerTime gm4_parameter 10

#Defines how long you have to not move before you can make a new input
#this is used to prevent multiple inputs when the player only attempts to make one input
scoreboard players set timeBeforeRegisteringNewInput gm4_parameter 2

#enables the input for "not moving", set this to 0 to only allow directional inputs
scoreboard players set timerEnabled gm4_parameter 0

#disables the detection of diagonal movements when set to 0
scoreboard players set detectDiagonals gm4_parameter 1