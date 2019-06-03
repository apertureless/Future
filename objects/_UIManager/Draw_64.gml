/// @description 

var guiWidth = display_get_gui_width();
var guiHeight = display_get_gui_height();
var paddingSmall = 4;
var paddingBig = 16;
var pollutionPercentage = global.pollutionLevel / global.maxPollutionLevel;

#region Pollution Level

	#region Pollution Bar
	var pollutionBarX = 0 + paddingBig;
	var pollutionBarY = 0 + paddingBig;
	var widthBarStart = 1;
	var totalBarWidth = 42;

	// Draw empty bar
	draw_sprite(s_healthbar_empty, 0, pollutionBarX, pollutionBarY);
	
	// If there is pollution draw the starting piece
	if (global.pollutionLevel > 0) {
		draw_sprite(s_healthbar_filling_start, 0, pollutionBarX, pollutionBarY)
		draw_sprite_ext(
			s_healthbar_filling, 
			0, 
			pollutionBarX + widthBarStart, 
			pollutionBarY, 
			(global.pollutionLevel / global.maxPollutionLevel) * totalBarWidth, 
			1, 
			0, 
			c_white, 
			1
		)
	
	}
		
	#endregion
	
	
/*
var pollutionString = "Pollution Level";

var textWidth = string_width(pollutionString);
var textX = 0 + paddingBig;
var textY = 0 + paddingBig * 2;

draw_text(textX - 8, textY -1, pollutionString);

textWidth = string_width(string(pollutionPercentage));
textX = 0 + paddingBig;
textY = paddingBig *3;     

draw_text(textX, textY, string(pollutionPercentage));



#endregion

*/

#region Collected Trash
#endregion