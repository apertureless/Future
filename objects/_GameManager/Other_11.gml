/// @description Playing

if (global.pollutionLevel >= global.maxPollutionLevel) {
	global.pollutionLevel = global.maxPollutionLevel;
	currentState = GAME.GAME_OVER;
}