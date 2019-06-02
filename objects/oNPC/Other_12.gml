/// @description Calling State

image_speed = 0.3;

_y = y;
isCalling = true;


t = (t + increment) mod 360;
shift = amplitute * dsin(t);
_y += vspeed;
curretnCallDuration += 1;

alarm[1] = maxCallDuration;