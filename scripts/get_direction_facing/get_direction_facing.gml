///@arg direction_facing

var _dir = argument[0];

directionFacing = round(_dir / 90);

if (directionFacing == 4) {
	directionFacing = 0;
}