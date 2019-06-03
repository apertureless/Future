/// @description 

if (!assertSingleton()) exit;

#region Fonts
draw_set_font(global.font);
#endregion

#region HUD
var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);
display_set_gui_size(viewWidth, viewHeight);
#endregion