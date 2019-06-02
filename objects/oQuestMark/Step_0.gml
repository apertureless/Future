/// @description Animate

t = (t + increment) mod 360;
shift = amplitute * dsin(t);


_y += vspeed;
y = _y + shift;