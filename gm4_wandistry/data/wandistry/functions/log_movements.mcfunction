#please note this is the work of bearb001 from Arqade: https://gaming.stackexchange.com/questions/353437
#I'm just using it for the system, all credit goes to him, aside from maybe the inspiration

#error correction right after logging in to the server, may result in one false input per sitting
execute as @a[scores={gm4_rotOne=..-1}] run scoreboard players add @s gm4_rotOne 36000

#prevent overflow, or underflow, where the rotation jumps from 35999 to 0, or 0 to 35999, because that's how circles work
execute as @a[scores={gm4_rotOne=..9000,gm4_lastRotOne=27000..}] run scoreboard players remove @s gm4_lastRotOne 36000
execute as @a[scores={gm4_rotOne=27000..,gm4_lastRotOne=..9000}] run scoreboard players add @s gm4_lastRotOne 36000

#calculate relative rotation compared to previous tick
execute as @a run scoreboard players operation @s gm4_lastRotOne -= @s gm4_rotOne
execute as @a run scoreboard players operation @s gm4_lastRotTwo -= @s gm4_rotTwo

#calculate the relative distance rotated (The square of the distance is used)
execute as @a run scoreboard players operation @s gm4_distance = @s gm4_lastRotOne
execute as @a run scoreboard players operation @s gm4_distance *= @s gm4_lastRotOne
execute as @a run scoreboard players operation @s gm4_placeholder = @s gm4_lastRotTwo
execute as @a run scoreboard players operation @s gm4_placeholder *= @s gm4_lastRotTwo
execute as @a run scoreboard players operation @s gm4_distance += @s gm4_placeholder

#determine the input
execute as @a run scoreboard players set @s gm4_input 0

#determine diagonals, gets the correct result for horizontal and vertical movement if you rotate very precisely
execute as @a[scores={gm4_lastRotTwo=1..}] if score @s gm4_distance >= speedRequired gm4_parameter run scoreboard players operation @s gm4_input += up gm4_constant
execute as @a[scores={gm4_lastRotOne=..-1}] if score @s gm4_distance >= speedRequired gm4_parameter run scoreboard players operation @s gm4_input += right gm4_constant
execute as @a[scores={gm4_lastRotTwo=..-1}] if score @s gm4_distance >= speedRequired gm4_parameter run scoreboard players operation @s gm4_input += down gm4_constant
execute as @a[scores={gm4_lastRotOne=1..}] if score @s gm4_distance >= speedRequired gm4_parameter run scoreboard players operation @s gm4_input += left gm4_constant

#error correction for input, less precision required for up/down
execute as @a run scoreboard players operation @s gm4_placeholder = @s gm4_lastRotOne
execute as @a if score detectDiagonals gm4_parameter matches 1 run scoreboard players operation @s gm4_placeholder += @s gm4_lastRotOne
execute as @a[scores={gm4_lastRotTwo=1..,gm4_lastRotOne=1..}] if score @s gm4_distance >= speedRequired gm4_parameter if score @s gm4_lastRotTwo >= @s gm4_placeholder run scoreboard players operation @s gm4_input = up gm4_constant
execute as @a[scores={gm4_lastRotTwo=..-1,gm4_lastRotOne=..-1}] if score @s gm4_distance >= speedRequired gm4_parameter if score @s gm4_lastRotTwo <= @s gm4_placeholder run scoreboard players operation @s gm4_input = down gm4_constant
execute as @a run scoreboard players operation @s gm4_placeholder *= minusOne gm4_constant
execute as @a[scores={gm4_lastRotTwo=1..,gm4_lastRotOne=..-1}] if score @s gm4_distance >= speedRequired gm4_parameter if score @s gm4_lastRotTwo >= @s gm4_placeholder run scoreboard players operation @s gm4_input = up gm4_constant
execute as @a[scores={gm4_lastRotTwo=..-1,gm4_lastRotOne=1..}] if score @s gm4_distance >= speedRequired gm4_parameter if score @s gm4_lastRotTwo <= @s gm4_placeholder run scoreboard players operation @s gm4_input = down gm4_constant

#error correction for input, less precision required for left/right
execute as @a run scoreboard players operation @s gm4_placeholder = @s gm4_lastRotTwo
execute as @a if score detectDiagonals gm4_parameter matches 1 run scoreboard players operation @s gm4_placeholder += @s gm4_lastRotTwo
execute as @a[scores={gm4_lastRotTwo=1..,gm4_lastRotOne=1..}] if score @s gm4_distance >= speedRequired gm4_parameter if score @s gm4_lastRotOne >= @s gm4_placeholder run scoreboard players operation @s gm4_input = left gm4_constant
execute as @a[scores={gm4_lastRotTwo=..-1,gm4_lastRotOne=..-1}] if score @s gm4_distance >= speedRequired gm4_parameter if score @s gm4_lastRotOne <= @s gm4_placeholder run scoreboard players operation @s gm4_input = right gm4_constant
execute as @a run scoreboard players operation @s gm4_placeholder *= minusOne gm4_constant
execute as @a[scores={gm4_lastRotTwo=1..,gm4_lastRotOne=..-1}] if score @s gm4_distance >= speedRequired gm4_parameter if score @s gm4_lastRotOne <= @s gm4_placeholder run scoreboard players operation @s gm4_input = right gm4_constant
execute as @a[scores={gm4_lastRotTwo=..-1,gm4_lastRotOne=1..}] if score @s gm4_distance >= speedRequired gm4_parameter if score @s gm4_lastRotOne >= @s gm4_placeholder run scoreboard players operation @s gm4_input = left gm4_constant

#set gm4_regInput flag if valid input is detected
scoreboard players set @a gm4_regInput 0
execute as @a[scores={gm4_input=1..}] if score @s gm4_timer > timeBeforeRegisteringNewInput gm4_parameter run scoreboard players set @s gm4_regInput 1
execute as @a if score @s gm4_input = @s gm4_lastInput if score @s gm4_timer = repeatedInputTime gm4_parameter run scoreboard players set @s gm4_regInput 1

#increase timer
execute as @a if score @s gm4_distance <= maximalRotationWhenNotMoving gm4_parameter run scoreboard players add @s gm4_timer 1
#set timer to 0 if there was an input
execute as @a[scores={gm4_input=1..}] run scoreboard players set @s gm4_timer 0
#sets the gm4_regInput flag if the timer has reached the value for when "no movement" should be detected
execute as @a if score @s gm4_timer = gm4_timerTime gm4_parameter if score gm4_timerEnabled gm4_parameter matches 1 run scoreboard players set @s gm4_regInput 1

#forceZero if gm4_forceZero has been set (use '/scoreboard players set @a gm4_forceZero 1' to set this parameter; it is automatically reset)
execute as @a[scores={D_forceZero=1}] run scoreboard players set @s gm4_input 0
execute as @a[scores={gm4_forceZero=1}] run scoreboard players set @s gm4_regInput 1
scoreboard players set @a gm4_forceZero 0

#confirms input to players who have the scoreboard 'gm4_confDirect' set to 1, can be changed with a trigger command
scoreboard players enable @a gm4_confDirect
execute as @a[scores={gm4_regInput=1,gm4_confDirect=1}] if score @s gm4_input = up gm4_constant run msg @s I look up
execute as @a[scores={gm4_regInput=1,gm4_confDirect=1}] if score @s gm4_input = left gm4_constant run msg @s I look left
execute as @a[scores={gm4_regInput=1,gm4_confDirect=1}] if score @s gm4_input = right gm4_constant run msg @s I look right
execute as @a[scores={gm4_regInput=1,gm4_confDirect=1}] if score @s gm4_input = down gm4_constant run msg @s I look down
execute as @a[scores={gm4_regInput=1,gm4_confDirect=1}] if score @s gm4_input = upRight gm4_constant run msg @s I look upRight
execute as @a[scores={gm4_regInput=1,gm4_confDirect=1}] if score @s gm4_input = upLeft gm4_constant run msg @s I look upLeft
execute as @a[scores={gm4_regInput=1,gm4_confDirect=1}] if score @s gm4_input = downRight gm4_constant run msg @s I look downRight
execute as @a[scores={gm4_regInput=1,gm4_confDirect=1}] if score @s gm4_input = downLeft gm4_constant run msg @s I look downLeft
execute as @a[scores={gm4_regInput=1,gm4_confDirect=1}] if score @s gm4_input = noMovement gm4_constant run msg @s I stopped

#Record valid inputs, you can add more steps according to this pattern if you have enough scoreboard objetives
execute as @a[scores={gm4_regInput=1}] run scoreboard players operation @s gm4_stepOne = @s gm4_stepTwo
execute as @a[scores={gm4_regInput=1}] run scoreboard players operation @s gm4_stepTwo = @s gm4_stepThree
execute as @a[scores={gm4_regInput=1}] run scoreboard players operation @s gm4_stepThree = @s gm4_stepFour
execute as @a[scores={gm4_regInput=1}] run scoreboard players operation @s gm4_stepFour = @s gm4_input

#Do something if a chain of correct inputs has been made
#for the input chain 'right, left, up, down' you can use this command
execute as @a[scores={gm4_regInput=1}] if score @s gm4_stepOne = right gm4_constant if score @s gm4_stepTwo = left gm4_constant if score @s gm4_stepThree = up gm4_constant if score @s gm4_stepFour = down gm4_constant run say I activated skill one
#for the input chain 'upLeft, upRight, downLeft, downRight' you can use this command (the gm4_parameter 'detectDiagonals' has to be 1 for this to be possible 
execute as @a[scores={gm4_regInput=1}] if score @s gm4_stepOne = upLeft gm4_constant if score @s gm4_stepTwo = upRight gm4_constant if score @s gm4_stepThree = downLeft gm4_constant if score @s gm4_stepFour = downRight gm4_constant run say I activated skill two
#for the input chain 'left, no movement, left, left' you can use this command (the gm4_parameter 'detectDiagonals' has to be 1 for this to be possible 
execute as @a[scores={gm4_regInput=1}] if score @s gm4_stepOne = left gm4_constant if score @s gm4_stepTwo = left gm4_constant if score @s gm4_stepThree = left gm4_constant if score @s gm4_stepFour = left gm4_constant run say I activated skill three
#To make shorter input chains you would only use the last few steps, ignoring step one.
#This command would be for 'right, right'
execute as @a[scores={gm4_regInput=1}] if score @s gm4_stepThree = right gm4_constant if score @s gm4_stepFour = right gm4_constant run say I activated skill four