tag @s add gm4_stack_base
tag @e[type=zombie,distance=0.00000001..0.8,tag=!gm4_zombie_stack,limit=1] add gm4_stack_addition
summon zombie ~ ~ ~ {Tags:["gm4_stack_size_2","gm4_temp_stack"],Passengers:[{id:"minecraft:zombie"}]}

say stack

#transfer base nbt
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] Fire set from entity @s Fire
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] Air set from entity @s Air
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] Silent set from entity @s Silent
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] Glowing set from entity @s Glowing
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] Tags set from entity @s Tags
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] Health set from entity @s Health
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] AbsorptionAmount set from entity @s AbsorptionAmount
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] Attributes set from entity @s Attributes
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] ActiveEffects set from entity @s ActiveEffects
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] HandItems set from entity @s HandItems
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] ArmorItems set from entity @s ArmorItems
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] HandDropChances set from entity @s HandDropChances
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] ArmorDropChances set from entity @s ArmorDropChances
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] DeathLootTable set from entity @s DeathLootTable
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] DeathLootTableSeed set from entity @s DeathLootTableSeed
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] PersistenceRequired set from entity @s PersistenceRequired
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] LeftHanded set from entity @s LeftHanded
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] IsBaby set from entity @s IsBaby
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] CanBreakDoors set from entity @s CanBreakDoors

#transfer addition nbt
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] Passengers[0].Fire set from entity @e[tag=gm4_stack_addition,distance=..0.1,limit=1] Fire
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] Passengers[0].Air set from entity @e[tag=gm4_stack_addition,distance=..0.1,limit=1] Air
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] Passengers[0].Silent set from entity @e[tag=gm4_stack_addition,distance=..0.1,limit=1] Silent
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] Passengers[0].Glowing set from entity @e[tag=gm4_stack_addition,distance=..0.1,limit=1] Glowing
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] Passengers[0].Tags set from entity @e[tag=gm4_stack_addition,distance=..0.1,limit=1] Tags
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] Passengers[0].Health set from entity @e[tag=gm4_stack_addition,distance=..0.1,limit=1] Health
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] Passengers[0].AbsorptionAmount set from entity @e[tag=gm4_stack_addition,distance=..0.1,limit=1] AbsorptionAmount
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] Passengers[0].Attributes set from entity @e[tag=gm4_stack_addition,distance=..0.1,limit=1] Attributes
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] Passengers[0].ActiveEffects set from entity @e[tag=gm4_stack_addition,distance=..0.1,limit=1] ActiveEffects
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] Passengers[0].HandItems set from entity @e[tag=gm4_stack_addition,distance=..0.1,limit=1] HandItems
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] Passengers[0].ArmorItems set from entity @e[tag=gm4_stack_addition,distance=..0.1,limit=1] ArmorItems
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] Passengers[0].HandDropChances set from entity @e[tag=gm4_stack_addition,distance=..0.1,limit=1] HandDropChances
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] Passengers[0].ArmorDropChances set from entity @e[tag=gm4_stack_addition,distance=..0.1,limit=1] ArmorDropChances
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] Passengers[0].DeathLootTable set from entity @e[tag=gm4_stack_addition,distance=..0.1,limit=1] DeathLootTable
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] Passengers[0].DeathLootTableSeed set from entity @e[tag=gm4_stack_addition,distance=..0.1,limit=1] DeathLootTableSeed
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] Passengers[0].PersistenceRequired set from entity @e[tag=gm4_stack_addition,distance=..0.1,limit=1] PersistenceRequired
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] Passengers[0].LeftHanded set from entity @e[tag=gm4_stack_addition,distance=..0.1,limit=1] LeftHanded
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] Passengers[0].IsBaby set from entity @e[tag=gm4_stack_addition,distance=..0.1,limit=1] IsBaby
data modify entity @e[tag=gm4_temp_stack,distance=..0.1,limit=1] Passengers[0].CanBreakDoors set from entity @e[tag=gm4_stack_addition,distance=..0.1,limit=1] CanBreakDoors

#remove base and addition tags
tag @e[tag=gm4_temp_stack,distance=..0.1,limit=1] remove gm4_stack_base
tag @e[tag=gm4_temp_stack,distance=..0.1,limit=1]

#remove gm4_temp_stack tag
tag @e[tag=gm4_temp_stack,distance=..0.1,limit=1] remove gm4_temp_stack

#tp zombies below bedrock
tp @e[tag=gm4_stack_addition,distance=..0.1,limit=1] ~ -70 ~
tp @s ~ -70 ~