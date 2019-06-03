/// @description Calling State

image_speed = 0.5;

_y = y;
isCalling = true;


t = (t + increment) mod 360;
shift = amplitute * dsin(t);
_y += vspeed;
curretnCallDuration += 1;

// Reset Calling Alarm
if (alarm[1] < 0) {
	alarm[1] = maxCallDuration;
}
