/// @description Draw Calling Mark
draw_self();

if (alarm[1] > 0) {	
	var progressHeight = 24;
	draw_rectangle_color(
		x - 12,
		y - progressHeight,
		x - 12 + (floor(curretnCallDuration) / maxCallDuration) *24,
		y - (progressHeight - 2),
		c_white,
		c_white,
		c_white,
		c_white,
		false
	)
	
	draw_sprite(s_progressbar, 0, x - 12, y - progressHeight); 
	draw_sprite(s_quest_2, 0, x - 8, (_y + shift) - progressHeight - 4);
	
}