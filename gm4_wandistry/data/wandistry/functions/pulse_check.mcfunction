#compares assigned run tick to current tick and calls main
execute if score current_tick gm4_clock_tick = wandistry gm4_clock_tick run function wandistry:main

execute as @a[nbt={SelectedItem:{tag:{gm4_wand:1b}}}] run function wandistry:detect_held_right_click