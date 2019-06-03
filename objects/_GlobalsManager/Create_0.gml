/// @description GLOBALS
if (!assertSingleton()) exit;

#region General
global.oneSecond = game_get_speed(gamespeed_fps);
#endregion

#region UI - Pollution
global.maxPollutionLevel = 10;
global.pollutionLevel = 0;
global.collectedTrash = 0;
#endregion

#region IU - Fonts
var _font_string = "ABCDEFGHIJKLMNOPQRSTUVWXYZ.abcdefghijklmnopqrstuvwxyz1234567890>,!':-+";
global.font = font_add_sprite_ext(s_font, _font_string, true, 1);
global.font_small = font_add("m5x7.ttf", 8, false, false, 32, 128);
#endregion