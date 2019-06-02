/// @description Trash Alarm
show_debug_message("Inside Trash Alarm");
dropTrash();
alarm[2] = random_range(2, 4) * global.oneSecond;