/// @description FSM - Move

/// @description Movement

left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
top = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));

xDirection = right - left;
yDirection = down - top;

movementSpeed = min(1, abs(xDirection) + abs(yDirection));
_direction = point_direction(0, 0, xDirection, yDirection);


#region Horizontal Movement
var targetX = x + (sign(xDirection) * 4);

// Check if Player Collides with the collider
if (place_meeting(targetX, y, oSolid)) {
	
	while(!place_meeting((x + sign(xDirection) * 2), y, oSolid)) {
		x += xDirection;
	}
	
	
	if (place_meeting(targetX, y + 8, oSolid)) {
		y -= 2
	}
	
	if (place_meeting(targetX, y - 8, oSolid)) {
		y += 2
	}
	
} else {
	if (xDirection != 0) {
		image_xscale = -xDirection;
	}
	currentState = STATE.MOVE;
	image_speed = 0.7;
	get_direction_facing(_direction);
	x += lengthdir_x(movementSpeed * acceleration, _direction)
}
#endregion

#region Vertical Movement

if (place_meeting(x, y + (sign(yDirection) * 4), oSolid)) {
	
	while(!place_meeting(x, y + (sign(yDirection) * 2), oSolid)) {
		y += yDirection;
	}
	
	if (place_meeting(x + 8, y + (sign(yDirection) * 4), oSolid)) {
		x -= 2
	}
	
	if (place_meeting(x - 8, y + (sign(yDirection) * 4), oSolid)) {
		x += 2
	}
	
} else {
	y += lengthdir_y(movementSpeed * acceleration, _direction)
}
#endregion
