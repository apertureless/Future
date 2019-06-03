/// @description 

if (!assertSingleton()) exit;

enum GAME {
	START,
	PLAYING,
	GAME_OVER
}

currentState = GAME.PLAYING
gameOver = false;
screenShot = noone;
screenShotScale = display_get_gui_width() / view_wport[0];