/// @description 
var guiWidth = display_get_gui_width();
var guiHeight = display_get_gui_height();

if (gameOver) {
	draw_sprite_ext(screenShot, 0, 0, 0, screenShotScale, screenShotScale, 0, c_white, 1);
	draw_set_alpha(0.6);
	draw_rectangle_color(0, 0, guiWidth, guiHeight, c_black, c_black, c_black, c_black, 0);
	draw_set_alpha(1);
	var text = "Game Over"
	var textWidth = string_width(text);
	var textX = guiWidth / 2;
	var textY = guiHeight / 3;
	
	draw_set_color(c_white);
	draw_text(textX - (textWidth / 2), textY - 32, text)
	
	text = "Press R to restart"
	textWidth = string_width(text);
	
	draw_text(textX - (textWidth / 2), textY, text)
	
	text = "Trash collected: " + string(global.collectedTrash);
	textWidth = string_width(text);
	
	draw_text(textX - (textWidth / 2), textY + 32, text)
}