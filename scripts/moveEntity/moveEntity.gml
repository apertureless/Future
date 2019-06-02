///@arg direction
///@arg speed

var _directionArg = argument0;
var _speed = argument1;

var xSpeed = lengthdir_x(_speed, _directionArg);
var ySpeed = lengthdir_y(_speed, _directionArg);

var movementSpeed = min(1, abs(xSpeed) + abs(ySpeed));

#region Horizontal Movement
var targetX = x + (sign(xSpeed) * 4);

// Check if Player Collides with the collider
if (place_meeting(targetX, y, oSolid)) {
	show_debug_message("got stuck")
	
	/*
	while(!place_meeting((x + sign(xSpeed) * 2), y, oSolid)) {
		x += xSpeed;
	}
	
	
	if (place_meeting(targetX, y + 8, oSolid)) {
		y -= 2
	}
	
	if (place_meeting(targetX, y - 8, oSolid)) {
		y += 2
	}
	*/
	
	_direction = random(360);
	get_direction_facing(_direction);
	
	
} else {
	if (ySpeed != 0) {
		image_xscale = -sign(xSpeed);
	}
	get_direction_facing(_directionArg);
	x += lengthdir_x(movementSpeed * acceleration, _directionArg)
}
#endregion

#region Vertical Movement

if (place_meeting(x, y + (sign(ySpeed) * 4), oSolid)) {
	
	/*while(!place_meeting(x, y + (sign(ySpeed) * 2), oSolid)) {
		y += ySpeed;
	}
	
	if (place_meeting(x + 8, y + (sign(ySpeed) * 4), oSolid)) {
		x -= 2
	}
	
	if (place_meeting(x - 8, y + (sign(ySpeed) * 4), oSolid)) {
		x += 2
	}
	*/
	
	_direction = random(360)
	get_direction_facing(_direction);
	show_debug_message(_direction)
	show_debug_message(_directionArg)
	
} else {
	get_direction_facing(_directionArg);
	y += lengthdir_y(movementSpeed * acceleration, _directionArg)
}
#endregion
