#@s refers to a zombie which is stacking eligible and next to another stacking eligible zombie
#run from zombie_stacking:main

#add tag to transfer NBT
tag @e[type=zombie,distance=0.00001..1,tag=!gm4_stack_base,tag=!gm4_stack_rider,tag=!gm4_addition,limit=1] add gm4_addition

#summon new zombie stack
summon zombie ~ ~0.5 ~ {Tags:["gm4_new_base"],Passengers:[{id:"minecraft:zombie",Tags:["gm4_new_rider_1"]}]}

#transfer base nbt
data modify entity @e[tag=gm4_new_base,distance=..1,limit=1] Fire set from entity @s Fire
data modify entity @e[tag=gm4_new_base,distance=..1,limit=1] Air set from entity @s Air
data modify entity @e[tag=gm4_new_base,distance=..1,limit=1] Silent set from entity @s Silent
data modify entity @e[tag=gm4_new_base,distance=..1,limit=1] Glowing set from entity @s Glowing
data modify entity @e[tag=gm4_new_base,distance=..1,limit=1] Health set from entity @s Health
data modify entity @e[tag=gm4_new_base,distance=..1,limit=1] AbsorptionAmount set from entity @s AbsorptionAmount
data modify entity @e[tag=gm4_new_base,distance=..1,limit=1] Attributes set from entity @s Attributes[]
data modify entity @e[tag=gm4_new_base,distance=..1,limit=1] ActiveEffects set from entity @s ActiveEffects[]
data modify entity @e[tag=gm4_new_base,distance=..1,limit=1] HandItems set from entity @s HandItems[]
data modify entity @e[tag=gm4_new_base,distance=..1,limit=1] ArmorItems set from entity @s ArmorItems[]
data modify entity @e[tag=gm4_new_base,distance=..1,limit=1] HandDropChances set from entity @s HandDropChances[]
data modify entity @e[tag=gm4_new_base,distance=..1,limit=1] ArmorDropChances set from entity @s ArmorDropChances[]
data modify entity @e[tag=gm4_new_base,distance=..1,limit=1] DeathLootTable set from entity @s DeathLootTable
data modify entity @e[tag=gm4_new_base,distance=..1,limit=1] DeathLootTableSeed set from entity @s DeathLootTableSeed
data modify entity @e[tag=gm4_new_base,distance=..1,limit=1] PersistenceRequired set from entity @s PersistenceRequired
data modify entity @e[tag=gm4_new_base,distance=..1,limit=1] LeftHanded set from entity @s LeftHanded
data modify entity @e[tag=gm4_new_base,distance=..1,limit=1] IsBaby set from entity @s IsBaby
data modify entity @e[tag=gm4_new_base,distance=..1,limit=1] CanBreakDoors set from entity @s CanBreakDoors

#transfer addition nbt
data modify entity @e[tag=gm4_new_rider_1,distance=..1,limit=1] Fire set from entity @e[tag=gm4_addition,distance=..1,limit=1] Fire
data modify entity @e[tag=gm4_new_rider_1,distance=..1,limit=1] Air set from entity @e[tag=gm4_addition,distance=..1,limit=1] Air
data modify entity @e[tag=gm4_new_rider_1,distance=..1,limit=1] Silent set from entity @e[tag=gm4_addition,distance=..1,limit=1] Silent
data modify entity @e[tag=gm4_new_rider_1,distance=..1,limit=1] Glowing set from entity @e[tag=gm4_addition,distance=..1,limit=1] Glowing
data modify entity @e[tag=gm4_new_rider_1,distance=..1,limit=1] Health set from entity @e[tag=gm4_addition,distance=..1,limit=1] Health
data modify entity @e[tag=gm4_new_rider_1,distance=..1,limit=1] AbsorptionAmount set from entity @e[tag=gm4_addition,distance=..1,limit=1] AbsorptionAmount
data modify entity @e[tag=gm4_new_rider_1,distance=..1,limit=1] Attributes set from entity @e[tag=gm4_addition,distance=..1,limit=1] Attributes[]
data modify entity @e[tag=gm4_new_rider_1,distance=..1,limit=1] ActiveEffects set from entity @e[tag=gm4_addition,distance=..1,limit=1] ActiveEffects[]
data modify entity @e[tag=gm4_new_rider_1,distance=..1,limit=1] HandItems set from entity @e[tag=gm4_addition,distance=..1,limit=1] HandItems[]
data modify entity @e[tag=gm4_new_rider_1,distance=..1,limit=1] ArmorItems set from entity @e[tag=gm4_addition,distance=..1,limit=1] ArmorItems[]
data modify entity @e[tag=gm4_new_rider_1,distance=..1,limit=1] HandDropChances set from entity @e[tag=gm4_addition,distance=..1,limit=1] HandDropChances[]
data modify entity @e[tag=gm4_new_rider_1,distance=..1,limit=1] ArmorDropChances set from entity @e[tag=gm4_addition,distance=..1,limit=1] ArmorDropChances[]
data modify entity @e[tag=gm4_new_rider_1,distance=..1,limit=1] DeathLootTable set from entity @e[tag=gm4_addition,distance=..1,limit=1] DeathLootTable
data modify entity @e[tag=gm4_new_rider_1,distance=..1,limit=1] DeathLootTableSeed set from entity @e[tag=gm4_addition,distance=..1,limit=1] DeathLootTableSeed
data modify entity @e[tag=gm4_new_rider_1,distance=..1,limit=1] PersistenceRequired set from entity @e[tag=gm4_addition,distance=..1,limit=1] PersistenceRequired
data modify entity @e[tag=gm4_new_rider_1,distance=..1,limit=1] LeftHanded set from entity @e[tag=gm4_addition,distance=..1,limit=1] LeftHanded
data modify entity @e[tag=gm4_new_rider_1,distance=..1,limit=1] IsBaby set from entity @e[tag=gm4_addition,distance=..1,limit=1] IsBaby
data modify entity @e[tag=gm4_new_rider_1,distance=..1,limit=1] CanBreakDoors set from entity @e[tag=gm4_addition,distance=..1,limit=1] CanBreakDoors

#transfer tags (appending)
data modify entity @e[tag=gm4_new_rider_1,distance=..1,limit=1] Tags append from entity @e[tag=gm4_addition,distance=..1,limit=1] Tags[]
data modify entity @e[tag=gm4_new_base,distance=..1,limit=1] Tags append from entity @s Tags[]

#add permanent tags
tag @e[tag=gm4_new_base,distance=..1,limit=1] add gm4_stack_base
tag @e[tag=gm4_new_rider_1,distance=..1,limit=1] add gm4_stack_rider_1
tag @e[tag=gm4_new_rider_1,distance=..1,limit=1] add gm4_stack_rider

#remove temporary tags
tag @e[tag=gm4_new_base,distance=..1,limit=1] remove gm4_new_base
tag @e[tag=gm4_new_rider_1,distance=..1,limit=1] remove gm4_new_rider_1

#tp zombies below bedrock
tp @e[tag=gm4_addition,distance=..1,limit=1] ~5 90 ~5
tp @s ~-5 90 ~-5