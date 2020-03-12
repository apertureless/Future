/// @description Follow Camera

if (!instance_exists(_target)) exit;

x = lerp(x, _target.x, 0.1);
y = lerp(y, _target.y-8, 0.1);
x = round_n(x, 1/_scale);
y = round_n(y, 1/_scale);

x = clamp(x, (_width / 2), (room_width - _width / 2));
y = clamp(y, (_height / 2), (room_height - _height / 2));

#region ScreenShake
x += random_range(-_shakeRemain, _shakeRemain)
y += random_range(-_shakeRemain, _shakeRemain)

_shakeRemain = max(0, _shakeRemain - ((1/_shakeLength) * _shakeIntensity));

#endregion

camera_set_view_pos(view_camera[0], x - _width / 2, y - _height / 2);
