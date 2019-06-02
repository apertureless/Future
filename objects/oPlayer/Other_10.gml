/// @description FSM - Idle

image_speed = 0.3;

if (keyboard_check(vk_anykey)) {
	currentState = STATE.MOVE;
}