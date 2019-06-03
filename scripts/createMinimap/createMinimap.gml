///@arg x
///@arg y
///@arg scale

var mX = argument0;
var mY = argument1;
var mScale = argument2;
var _factor = 6;

draw_set_color(c_white);
//draw_rectangle(mX,mY,mY + room_width / mScale, mY + room_height / mScale, 1);

with (oSolid) {
	draw_set_color(c_white)
	draw_rectangle(
		mX + x / mScale - sprite_width / (_factor * mScale),
		mY + y / mScale - sprite_width / (_factor * mScale),
		mX + x / mScale + sprite_width / (_factor * mScale),
		mY + y / mScale + sprite_width / (_factor * mScale),
		0
	)
}

with (oPlayer) {
	draw_set_color(c_olive)
	draw_rectangle(
		mX + x / mScale - sprite_width / (_factor * mScale),
		mY + y / mScale - sprite_width / (_factor * mScale),
		mX + x / mScale + sprite_width / (_factor * mScale),
		mY + y / mScale + sprite_width / (_factor * mScale),
		0
	);
}

with (oNPC) {
	if (isCalling) {
		draw_set_color(c_yellow)
	} else {
		draw_set_color(c_red)
	}
	
	draw_rectangle(
		mX + x / mScale - sprite_width / (_factor * mScale),
		mY + y / mScale - sprite_width / (_factor * mScale),
		mX + x / mScale + sprite_width / (_factor * mScale),
		mY + y / mScale + sprite_width / (_factor * mScale),
		0
	);
}