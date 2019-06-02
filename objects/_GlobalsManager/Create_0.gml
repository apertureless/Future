/// @description GLOBALS
if (!assertSingleton()) exit;

global.oneSecond = game_get_speed(gamespeed_fps);

global.maxPollutionLevel = 100;
global.pollutionLevel = 0;
global.collectedTrash = 0;