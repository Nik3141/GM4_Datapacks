#roped arrow
say recipe
#neither have been used
execute if score @s gm4_slot_count matches 2 if score @s gm4_stack_size matches ..1 if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:crossbow"},{Slot:4b,id:"minecraft:fishing_rod"}]} unless data block ~ ~ ~ Items[0].tag.Damage unless data block ~ ~ ~ Items[4].tag.Damage run data merge block ~ ~ ~ {Items:[{Slot:8,id:"minecraft:crossbow",Count:1b,tag:{gm4_spooled_crossbow:1b,gm4_custom_crafters:{multiplier:1},display:{Lore:["{\"text\":\"Use with string in the offhand\",\"color\":\"dark_aqua\",\"italic\":\"false\"}","{\"text\":\"to create lines of tripwire.\",\"color\":\"dark_aqua\",\"italic\":\"false\"}"],Name:"{\"text\":\"Spooled Crossbow\",\"italic\":\"false\"}"}}}]}

#both have been used and repaired
execute if score @s gm4_slot_count matches 2 if score @s gm4_stack_size matches ..1 if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:crossbow",tag:{Damage:0}},{Slot:4b,id:"minecraft:fishing_rod",tag:{Damage:0}}]} run data merge block ~ ~ ~ {Items:[{Slot:8,id:"minecraft:crossbow",Count:1b,tag:{gm4_spooled_crossbow:1b,gm4_custom_crafters:{multiplier:1},display:{Lore:["{\"text\":\"Use with string in the offhand\",\"color\":\"dark_aqua\",\"italic\":\"false\"}","{\"text\":\"to create lines of tripwire.\",\"color\":\"dark_aqua\",\"italic\":\"false\"}"],Name:"{\"text\":\"Spooled Crossbow\",\"italic\":\"false\"}"}}}]}

#only the crossbow has been used and repaired
execute if score @s gm4_slot_count matches 2 if score @s gm4_stack_size matches ..1 if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:crossbow",tag:{Damage:0}},{Slot:4b,id:"minecraft:fishing_rod"}]} unless data block ~ ~ ~ Items[4].tag.Damage run data merge block ~ ~ ~ {Items:[{Slot:8,id:"minecraft:crossbow",Count:1b,tag:{gm4_spooled_crossbow:1b,gm4_custom_crafters:{multiplier:1},display:{Lore:["{\"text\":\"Use with string in the offhand\",\"color\":\"dark_aqua\",\"italic\":\"false\"}","{\"text\":\"to create lines of tripwire.\",\"color\":\"dark_aqua\",\"italic\":\"false\"}"],Name:"{\"text\":\"Spooled Crossbow\",\"italic\":\"false\"}"}}}]}

#only the fishing rod been used and repaired
execute if score @s gm4_slot_count matches 2 if score @s gm4_stack_size matches ..1 if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:crossbow"},{Slot:4b,id:"minecraft:fishing_rod",tag:{Damage:0}}]} unless data block ~ ~ ~ Items[0].tag.Damage run data merge block ~ ~ ~ {Items:[{Slot:8,id:"minecraft:crossbow",Count:1b,tag:{gm4_spooled_crossbow:1b,gm4_custom_crafters:{multiplier:1},display:{Lore:["{\"text\":\"Use with string in the offhand\",\"color\":\"dark_aqua\",\"italic\":\"false\"}","{\"text\":\"to create lines of tripwire.\",\"color\":\"dark_aqua\",\"italic\":\"false\"}"],Name:"{\"text\":\"Spooled Crossbow\",\"italic\":\"false\"}"}}}]}
