#compares assigned run tick to current tick and calls main
execute if score current_tick gm4_clock_tick = zombie_stacking gm4_clock_tick run function zombie_stacking:main
