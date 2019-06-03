/// @description 

if (!assertSingleton()) exit;

enum GAME {
	START,
	PLAYING,
	GAME_OVER
}

currentState = GAME.PLAYING