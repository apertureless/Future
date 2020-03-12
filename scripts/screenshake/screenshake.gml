/// @desc Screenshake
/// @arg shake_intensity
/// @arg frames

var this_shakeIntensity = argument0;
var this_frames = argument1;

with (oCamera) {
	if (this_shakeIntensity > _shakeRemain) {
		_shakeIntensity = this_shakeIntensity;
		_shakeLength = this_frames;
		_shakeRemain = this_shakeIntensity;
	}
}